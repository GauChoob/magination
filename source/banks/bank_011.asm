SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    ldh a, [$F8]                                  ; $4000: $F0 $F8
    nop                                           ; $4002: $00
    ld b, $F0                                     ; $4003: $06 $F0
    nop                                           ; $4005: $00
    ld bc, $F806                                  ; $4006: $01 $06 $F8
    nop                                           ; $4009: $00
    ld [bc], a                                    ; $400A: $02
    ld b, $F8                                     ; $400B: $06 $F8
    ld hl, sp+$02                                 ; $400D: $F8 $02
    ld h, $00                                     ; $400F: $26 $00
    nop                                           ; $4011: $00
    ld [$0004], sp                                ; $4012: $08 $04 $00
    ld sp, hl                                     ; $4015: $F9
    ld [$8024], sp                                ; $4016: $08 $24 $80
    ldh a, [$F8]                                  ; $4019: $F0 $F8
    nop                                           ; $401B: $00
    ld b, $F0                                     ; $401C: $06 $F0
    nop                                           ; $401E: $00
    ld bc, $0006                                  ; $401F: $01 $06 $00
    ld sp, hl                                     ; $4022: $F9
    ld [$0024], sp                                ; $4023: $08 $24 $00
    nop                                           ; $4026: $00
    ld [$F804], sp                                ; $4027: $08 $04 $F8
    nop                                           ; $402A: $00
    inc bc                                        ; $402B: $03
    ld b, $F8                                     ; $402C: $06 $F8
    ld hl, sp+$03                                 ; $402E: $F8 $03
    ld h, $80                                     ; $4030: $26 $80
    ldh a, [$F8]                                  ; $4032: $F0 $F8
    nop                                           ; $4034: $00
    ld b, $F0                                     ; $4035: $06 $F0
    nop                                           ; $4037: $00
    ld bc, $0006                                  ; $4038: $01 $06 $00
    ld sp, hl                                     ; $403B: $F9
    ld [$0024], sp                                ; $403C: $08 $24 $00
    nop                                           ; $403F: $00
    ld [$F804], sp                                ; $4040: $08 $04 $F8
    nop                                           ; $4043: $00
    inc b                                         ; $4044: $04
    ld b, $F8                                     ; $4045: $06 $F8
    ld hl, sp+$04                                 ; $4047: $F8 $04
    ld h, $80                                     ; $4049: $26 $80
    ldh a, [$F8]                                  ; $404B: $F0 $F8
    nop                                           ; $404D: $00
    ld b, $F0                                     ; $404E: $06 $F0
    nop                                           ; $4050: $00
    ld bc, $0006                                  ; $4051: $01 $06 $00
    ld sp, hl                                     ; $4054: $F9
    ld [$0024], sp                                ; $4055: $08 $24 $00
    nop                                           ; $4058: $00
    ld [$F804], sp                                ; $4059: $08 $04 $F8
    ld hl, sp+$05                                 ; $405C: $F8 $05
    ld h, $F8                                     ; $405E: $26 $F8
    nop                                           ; $4060: $00
    dec b                                         ; $4061: $05
    ld b, $80                                     ; $4062: $06 $80
    ldh a, [$F8]                                  ; $4064: $F0 $F8
    nop                                           ; $4066: $00
    ld b, $F0                                     ; $4067: $06 $F0
    nop                                           ; $4069: $00
    ld bc, $0006                                  ; $406A: $01 $06 $00
    ld sp, hl                                     ; $406D: $F9
    ld [$0024], sp                                ; $406E: $08 $24 $00
    nop                                           ; $4071: $00
    ld [$F804], sp                                ; $4072: $08 $04 $F8
    ld hl, sp+$06                                 ; $4075: $F8 $06
    ld b, $F8                                     ; $4077: $06 $F8
    nop                                           ; $4079: $00
    rlca                                          ; $407A: $07
    ld b, $80                                     ; $407B: $06 $80
    ldh a, [$F8]                                  ; $407D: $F0 $F8
    nop                                           ; $407F: $00
    ld b, $F0                                     ; $4080: $06 $F0
    nop                                           ; $4082: $00
    ld bc, $0006                                  ; $4083: $01 $06 $00
    ld sp, hl                                     ; $4086: $F9
    ld [$0024], sp                                ; $4087: $08 $24 $00
    nop                                           ; $408A: $00
    ld [$F804], sp                                ; $408B: $08 $04 $F8
    nop                                           ; $408E: $00
    ld b, $26                                     ; $408F: $06 $26
    ld hl, sp-$08                                 ; $4091: $F8 $F8
    rlca                                          ; $4093: $07
    ld h, $80                                     ; $4094: $26 $80
    ldh a, [$F8]                                  ; $4096: $F0 $F8
    add hl, bc                                    ; $4098: $09
    ld b, $F0                                     ; $4099: $06 $F0
    nop                                           ; $409B: $00
    ld a, [bc]                                    ; $409C: $0A
    ld b, $F8                                     ; $409D: $06 $F8
    nop                                           ; $409F: $00
    dec bc                                        ; $40A0: $0B
    ld b, $00                                     ; $40A1: $06 $00
    nop                                           ; $40A3: $00
    ld [$0004], sp                                ; $40A4: $08 $04 $00
    ld sp, hl                                     ; $40A7: $F9
    ld [$F824], sp                                ; $40A8: $08 $24 $F8
    ld hl, sp+$02                                 ; $40AB: $F8 $02
    ld h, $80                                     ; $40AD: $26 $80
    ld c, h                                       ; $40AF: $4C
    inc b                                         ; $40B0: $04
    nop                                           ; $40B1: $00
    nop                                           ; $40B2: $00
    nop                                           ; $40B3: $00
    ld b, b                                       ; $40B4: $40
    inc b                                         ; $40B5: $04
    nop                                           ; $40B6: $00
    nop                                           ; $40B7: $00
    add hl, de                                    ; $40B8: $19
    ld b, b                                       ; $40B9: $40
    jr nz, jr_011_40BC                            ; $40BA: $20 $00

jr_011_40BC:
    nop                                           ; $40BC: $00
    ld [hl-], a                                   ; $40BD: $32
    ld b, b                                       ; $40BE: $40
    jr nz, jr_011_40C1                            ; $40BF: $20 $00

jr_011_40C1:
    nop                                           ; $40C1: $00
    ld c, e                                       ; $40C2: $4B
    ld b, b                                       ; $40C3: $40
    stop                                          ; $40C4: $10 $00
    nop                                           ; $40C6: $00
    ld h, h                                       ; $40C7: $64
    ld b, b                                       ; $40C8: $40
    stop                                          ; $40C9: $10 $00
    nop                                           ; $40CB: $00
    ld a, l                                       ; $40CC: $7D
    ld b, b                                       ; $40CD: $40
    ld [rRAMG], sp                                ; $40CE: $08 $00 $00
    ld h, h                                       ; $40D1: $64
    ld b, b                                       ; $40D2: $40
    ld [rRAMG], sp                                ; $40D3: $08 $00 $00
    ld a, l                                       ; $40D6: $7D
    ld b, b                                       ; $40D7: $40
    ld [rRAMG], sp                                ; $40D8: $08 $00 $00
    ld h, h                                       ; $40DB: $64
    ld b, b                                       ; $40DC: $40
    ld [rRAMG], sp                                ; $40DD: $08 $00 $00
    ld a, l                                       ; $40E0: $7D
    ld b, b                                       ; $40E1: $40
    inc b                                         ; $40E2: $04
    nop                                           ; $40E3: $00
    nop                                           ; $40E4: $00
    ld h, h                                       ; $40E5: $64
    ld b, b                                       ; $40E6: $40
    inc b                                         ; $40E7: $04
    nop                                           ; $40E8: $00
    nop                                           ; $40E9: $00
    ld a, l                                       ; $40EA: $7D
    ld b, b                                       ; $40EB: $40
    inc b                                         ; $40EC: $04
    nop                                           ; $40ED: $00
    nop                                           ; $40EE: $00
    ld h, h                                       ; $40EF: $64
    ld b, b                                       ; $40F0: $40
    inc b                                         ; $40F1: $04
    nop                                           ; $40F2: $00
    nop                                           ; $40F3: $00
    ld a, l                                       ; $40F4: $7D
    ld b, b                                       ; $40F5: $40
    inc b                                         ; $40F6: $04
    nop                                           ; $40F7: $00
    nop                                           ; $40F8: $00
    ld h, h                                       ; $40F9: $64
    ld b, b                                       ; $40FA: $40
    inc b                                         ; $40FB: $04
    nop                                           ; $40FC: $00
    nop                                           ; $40FD: $00
    ld a, l                                       ; $40FE: $7D
    ld b, b                                       ; $40FF: $40
    ld [bc], a                                    ; $4100: $02
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    ld h, h                                       ; $4103: $64
    ld b, b                                       ; $4104: $40
    ld [bc], a                                    ; $4105: $02
    nop                                           ; $4106: $00
    nop                                           ; $4107: $00
    ld a, l                                       ; $4108: $7D
    ld b, b                                       ; $4109: $40
    ld [bc], a                                    ; $410A: $02
    nop                                           ; $410B: $00
    nop                                           ; $410C: $00
    ld h, h                                       ; $410D: $64
    ld b, b                                       ; $410E: $40
    ld [bc], a                                    ; $410F: $02
    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    ld a, l                                       ; $4112: $7D
    ld b, b                                       ; $4113: $40
    ld [bc], a                                    ; $4114: $02
    nop                                           ; $4115: $00
    nop                                           ; $4116: $00
    ld h, h                                       ; $4117: $64
    ld b, b                                       ; $4118: $40
    ld [bc], a                                    ; $4119: $02
    nop                                           ; $411A: $00
    nop                                           ; $411B: $00
    ld a, l                                       ; $411C: $7D
    ld b, b                                       ; $411D: $40
    ld [bc], a                                    ; $411E: $02
    nop                                           ; $411F: $00
    nop                                           ; $4120: $00
    ld h, h                                       ; $4121: $64
    ld b, b                                       ; $4122: $40
    ld [bc], a                                    ; $4123: $02
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    ld a, l                                       ; $4126: $7D
    ld b, b                                       ; $4127: $40
    ld [bc], a                                    ; $4128: $02
    nop                                           ; $4129: $00
    nop                                           ; $412A: $00
    ld h, h                                       ; $412B: $64
    ld b, b                                       ; $412C: $40
    ld [bc], a                                    ; $412D: $02
    nop                                           ; $412E: $00
    nop                                           ; $412F: $00
    ld a, l                                       ; $4130: $7D
    ld b, b                                       ; $4131: $40
    jr jr_011_4134                                ; $4132: $18 $00

jr_011_4134:
    nop                                           ; $4134: $00
    ld c, e                                       ; $4135: $4B
    ld b, b                                       ; $4136: $40
    inc b                                         ; $4137: $04
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    ld [hl-], a                                   ; $413A: $32
    ld b, b                                       ; $413B: $40
    nop                                           ; $413C: $00
    ld c, h                                       ; $413D: $4C
    rst $38                                       ; $413E: $FF
    nop                                           ; $413F: $00
    nop                                           ; $4140: $00
    sub [hl]                                      ; $4141: $96
    ld b, b                                       ; $4142: $40
    nop                                           ; $4143: $00
    ld b, [hl]                                    ; $4144: $46
    dec a                                         ; $4145: $3D
    ld b, c                                       ; $4146: $41
    ld c, h                                       ; $4147: $4C
    rst $38                                       ; $4148: $FF
    nop                                           ; $4149: $00
    nop                                           ; $414A: $00
    nop                                           ; $414B: $00
    ld b, b                                       ; $414C: $40
    nop                                           ; $414D: $00
    ld b, [hl]                                    ; $414E: $46
    ld b, a                                       ; $414F: $47
    ld b, c                                       ; $4150: $41
    ldh a, [$F8]                                  ; $4151: $F0 $F8
    nop                                           ; $4153: $00
    inc b                                         ; $4154: $04
    ldh a, [rP1]                                  ; $4155: $F0 $00
    ld bc, $F804                                  ; $4157: $01 $04 $F8
    ld hl, sp+$0C                                 ; $415A: $F8 $0C
    inc b                                         ; $415C: $04
    ld hl, sp+$00                                 ; $415D: $F8 $00
    dec c                                         ; $415F: $0D
    inc b                                         ; $4160: $04
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    ld e, $02                                     ; $4163: $1E $02
    nop                                           ; $4165: $00
    ld sp, hl                                     ; $4166: $F9
    ld e, $22                                     ; $4167: $1E $22
    add b                                         ; $4169: $80
    ld hl, sp-$08                                 ; $416A: $F8 $F8
    ld c, $00                                     ; $416C: $0E $00
    ld hl, sp+$00                                 ; $416E: $F8 $00
    rrca                                          ; $4170: $0F
    inc b                                         ; $4171: $04
    ldh a, [$F8]                                  ; $4172: $F0 $F8
    ld [bc], a                                    ; $4174: $02
    inc b                                         ; $4175: $04
    ldh a, [rP1]                                  ; $4176: $F0 $00
    inc b                                         ; $4178: $04
    inc b                                         ; $4179: $04
    nop                                           ; $417A: $00
    nop                                           ; $417B: $00
    ld e, $02                                     ; $417C: $1E $02
    nop                                           ; $417E: $00
    ld sp, hl                                     ; $417F: $F9
    ld e, $22                                     ; $4180: $1E $22
    add b                                         ; $4182: $80
    ldh a, [$F8]                                  ; $4183: $F0 $F8
    inc bc                                        ; $4185: $03
    inc b                                         ; $4186: $04
    ldh a, [rP1]                                  ; $4187: $F0 $00
    inc b                                         ; $4189: $04
    inc b                                         ; $418A: $04
    ld hl, sp-$08                                 ; $418B: $F8 $F8
    db $10                                        ; $418D: $10
    inc b                                         ; $418E: $04
    ld hl, sp+$00                                 ; $418F: $F8 $00
    ld de, $0004                                  ; $4191: $11 $04 $00
    nop                                           ; $4194: $00
    ld e, $02                                     ; $4195: $1E $02
    nop                                           ; $4197: $00
    ld sp, hl                                     ; $4198: $F9
    ld e, $22                                     ; $4199: $1E $22
    add b                                         ; $419B: $80
    ldh a, [$F9]                                  ; $419C: $F0 $F9
    inc bc                                        ; $419E: $03
    inc b                                         ; $419F: $04
    ldh a, [rSB]                                  ; $41A0: $F0 $01
    inc b                                         ; $41A2: $04
    inc b                                         ; $41A3: $04
    ld hl, sp-$08                                 ; $41A4: $F8 $F8
    ld [de], a                                    ; $41A6: $12
    inc b                                         ; $41A7: $04
    ld hl, sp+$00                                 ; $41A8: $F8 $00
    inc de                                        ; $41AA: $13
    inc b                                         ; $41AB: $04
    nop                                           ; $41AC: $00
    ld hl, sp+$20                                 ; $41AD: $F8 $20
    ld [bc], a                                    ; $41AF: $02
    nop                                           ; $41B0: $00
    nop                                           ; $41B1: $00
    ld hl, $8002                                  ; $41B2: $21 $02 $80
    ldh a, [$F8]                                  ; $41B5: $F0 $F8
    dec b                                         ; $41B7: $05
    inc b                                         ; $41B8: $04
    ldh a, [rP1]                                  ; $41B9: $F0 $00
    ld b, $04                                     ; $41BB: $06 $04
    ld hl, sp-$08                                 ; $41BD: $F8 $F8
    inc d                                         ; $41BF: $14
    inc b                                         ; $41C0: $04
    ld hl, sp+$00                                 ; $41C1: $F8 $00
    dec d                                         ; $41C3: $15
    inc b                                         ; $41C4: $04
    nop                                           ; $41C5: $00
    db $FC                                        ; $41C6: $FC
    ld [hl+], a                                   ; $41C7: $22
    ld [bc], a                                    ; $41C8: $02
    add b                                         ; $41C9: $80
    ldh a, [$FA]                                  ; $41CA: $F0 $FA
    rlca                                          ; $41CC: $07
    inc b                                         ; $41CD: $04
    ldh a, [rSC]                                  ; $41CE: $F0 $02
    ld [$F804], sp                                ; $41D0: $08 $04 $F8
    db $FD                                        ; $41D3: $FD
    ld d, $04                                     ; $41D4: $16 $04
    nop                                           ; $41D6: $00
    ld a, [$0223]                                 ; $41D7: $FA $23 $02
    nop                                           ; $41DA: $00
    ld [bc], a                                    ; $41DB: $02
    inc h                                         ; $41DC: $24
    ld [bc], a                                    ; $41DD: $02
    add b                                         ; $41DE: $80
    nop                                           ; $41DF: $00
    nop                                           ; $41E0: $00
    rra                                           ; $41E1: $1F
    ld [bc], a                                    ; $41E2: $02
    nop                                           ; $41E3: $00
    ld sp, hl                                     ; $41E4: $F9
    rra                                           ; $41E5: $1F
    ld [hl+], a                                   ; $41E6: $22
    ld hl, sp-$08                                 ; $41E7: $F8 $F8
    rla                                           ; $41E9: $17
    inc b                                         ; $41EA: $04
    ld hl, sp+$00                                 ; $41EB: $F8 $00
    jr jr_011_41F3                                ; $41ED: $18 $04

    ldh a, [$F8]                                  ; $41EF: $F0 $F8
    add hl, bc                                    ; $41F1: $09
    inc b                                         ; $41F2: $04

jr_011_41F3:
    ldh a, [rP1]                                  ; $41F3: $F0 $00
    ld a, [bc]                                    ; $41F5: $0A
    inc b                                         ; $41F6: $04
    add b                                         ; $41F7: $80
    ldh a, [$F8]                                  ; $41F8: $F0 $F8
    add hl, bc                                    ; $41FA: $09
    inc b                                         ; $41FB: $04
    ldh a, [rP1]                                  ; $41FC: $F0 $00
    add hl, bc                                    ; $41FE: $09
    inc h                                         ; $41FF: $24
    ld hl, sp+$00                                 ; $4200: $F8 $00
    add hl, de                                    ; $4202: $19
    inc b                                         ; $4203: $04
    nop                                           ; $4204: $00
    ld sp, hl                                     ; $4205: $F9
    rra                                           ; $4206: $1F
    ld [hl+], a                                   ; $4207: $22
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    rra                                           ; $420A: $1F
    ld [bc], a                                    ; $420B: $02
    ld hl, sp-$08                                 ; $420C: $F8 $F8
    dec h                                         ; $420E: $25
    inc b                                         ; $420F: $04
    add b                                         ; $4210: $80
    ldh a, [$F8]                                  ; $4211: $F0 $F8
    add hl, bc                                    ; $4213: $09
    inc b                                         ; $4214: $04
    ldh a, [rP1]                                  ; $4215: $F0 $00
    add hl, bc                                    ; $4217: $09
    inc h                                         ; $4218: $24
    nop                                           ; $4219: $00
    ld sp, hl                                     ; $421A: $F9
    rra                                           ; $421B: $1F
    ld [hl+], a                                   ; $421C: $22
    nop                                           ; $421D: $00
    nop                                           ; $421E: $00
    rra                                           ; $421F: $1F
    ld [bc], a                                    ; $4220: $02
    ld hl, sp-$08                                 ; $4221: $F8 $F8
    ld a, [de]                                    ; $4223: $1A
    inc b                                         ; $4224: $04
    ld hl, sp+$00                                 ; $4225: $F8 $00
    dec de                                        ; $4227: $1B
    inc b                                         ; $4228: $04
    add b                                         ; $4229: $80
    ldh a, [$F8]                                  ; $422A: $F0 $F8
    dec bc                                        ; $422C: $0B
    inc b                                         ; $422D: $04
    ldh a, [rP1]                                  ; $422E: $F0 $00
    ld bc, $F804                                  ; $4230: $01 $04 $F8
    ld hl, sp+$1C                                 ; $4233: $F8 $1C
    inc b                                         ; $4235: $04
    ld hl, sp+$00                                 ; $4236: $F8 $00
    dec e                                         ; $4238: $1D
    inc b                                         ; $4239: $04
    nop                                           ; $423A: $00
    nop                                           ; $423B: $00
    ld e, $02                                     ; $423C: $1E $02
    nop                                           ; $423E: $00
    ld sp, hl                                     ; $423F: $F9
    ld e, $22                                     ; $4240: $1E $22
    add b                                         ; $4242: $80
    ld c, h                                       ; $4243: $4C
    inc b                                         ; $4244: $04
    nop                                           ; $4245: $00
    nop                                           ; $4246: $00
    add e                                         ; $4247: $83
    ld b, c                                       ; $4248: $41
    inc b                                         ; $4249: $04
    nop                                           ; $424A: $00
    nop                                           ; $424B: $00
    sbc h                                         ; $424C: $9C
    ld b, c                                       ; $424D: $41
    inc b                                         ; $424E: $04
    nop                                           ; $424F: $00
    nop                                           ; $4250: $00
    or l                                          ; $4251: $B5
    ld b, c                                       ; $4252: $41
    inc b                                         ; $4253: $04
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    jp z, $0841                                   ; $4256: $CA $41 $08

    nop                                           ; $4259: $00
    nop                                           ; $425A: $00
    rst $18                                       ; $425B: $DF
    ld b, c                                       ; $425C: $41
    ld bc, $0000                                  ; $425D: $01 $00 $00
    ld hl, sp+$41                                 ; $4260: $F8 $41
    ld [rRAMG], sp                                ; $4262: $08 $00 $00
    ld de, $0142                                  ; $4265: $11 $42 $01
    nop                                           ; $4268: $00
    nop                                           ; $4269: $00
    ld hl, sp+$41                                 ; $426A: $F8 $41
    inc b                                         ; $426C: $04
    nop                                           ; $426D: $00
    nop                                           ; $426E: $00
    ld de, $0442                                  ; $426F: $11 $42 $04
    nop                                           ; $4272: $00
    nop                                           ; $4273: $00
    ld hl, sp+$41                                 ; $4274: $F8 $41
    inc b                                         ; $4276: $04
    nop                                           ; $4277: $00
    nop                                           ; $4278: $00
    ld de, $0442                                  ; $4279: $11 $42 $04
    nop                                           ; $427C: $00
    nop                                           ; $427D: $00
    ld hl, sp+$41                                 ; $427E: $F8 $41
    ld [rRAMG], sp                                ; $4280: $08 $00 $00
    rst $18                                       ; $4283: $DF
    ld b, c                                       ; $4284: $41
    stop                                          ; $4285: $10 $00
    nop                                           ; $4287: $00
    ld hl, sp+$41                                 ; $4288: $F8 $41
    ld [rRAMG], sp                                ; $428A: $08 $00 $00
    ld de, $1042                                  ; $428D: $11 $42 $10
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    ld hl, sp+$41                                 ; $4292: $F8 $41
    ld [rRAMG], sp                                ; $4294: $08 $00 $00
    rst $18                                       ; $4297: $DF
    ld b, c                                       ; $4298: $41
    inc b                                         ; $4299: $04
    nop                                           ; $429A: $00
    nop                                           ; $429B: $00
    ld hl, sp+$41                                 ; $429C: $F8 $41
    ld [rRAMG], sp                                ; $429E: $08 $00 $00
    ld de, $0442                                  ; $42A1: $11 $42 $04
    nop                                           ; $42A4: $00
    nop                                           ; $42A5: $00
    ld hl, sp+$41                                 ; $42A6: $F8 $41
    inc b                                         ; $42A8: $04
    nop                                           ; $42A9: $00
    nop                                           ; $42AA: $00
    rst $18                                       ; $42AB: $DF
    ld b, c                                       ; $42AC: $41
    ld bc, $0000                                  ; $42AD: $01 $00 $00
    ld hl, sp+$41                                 ; $42B0: $F8 $41
    inc b                                         ; $42B2: $04
    nop                                           ; $42B3: $00
    nop                                           ; $42B4: $00
    ld de, $0142                                  ; $42B5: $11 $42 $01
    nop                                           ; $42B8: $00
    nop                                           ; $42B9: $00
    ld hl, sp+$41                                 ; $42BA: $F8 $41
    inc b                                         ; $42BC: $04
    nop                                           ; $42BD: $00
    nop                                           ; $42BE: $00
    rst $18                                       ; $42BF: $DF
    ld b, c                                       ; $42C0: $41
    inc b                                         ; $42C1: $04
    nop                                           ; $42C2: $00
    nop                                           ; $42C3: $00
    ld hl, sp+$41                                 ; $42C4: $F8 $41
    inc b                                         ; $42C6: $04
    nop                                           ; $42C7: $00
    nop                                           ; $42C8: $00
    rst $18                                       ; $42C9: $DF
    ld b, c                                       ; $42CA: $41
    inc b                                         ; $42CB: $04
    nop                                           ; $42CC: $00
    nop                                           ; $42CD: $00
    ld hl, sp+$41                                 ; $42CE: $F8 $41
    inc b                                         ; $42D0: $04
    nop                                           ; $42D1: $00
    nop                                           ; $42D2: $00
    jp z, $0441                                   ; $42D3: $CA $41 $04

    nop                                           ; $42D6: $00
    nop                                           ; $42D7: $00
    or l                                          ; $42D8: $B5
    ld b, c                                       ; $42D9: $41
    inc b                                         ; $42DA: $04
    nop                                           ; $42DB: $00
    nop                                           ; $42DC: $00
    sbc h                                         ; $42DD: $9C
    ld b, c                                       ; $42DE: $41
    inc b                                         ; $42DF: $04
    nop                                           ; $42E0: $00
    nop                                           ; $42E1: $00
    ld l, d                                       ; $42E2: $6A
    ld b, c                                       ; $42E3: $41
    nop                                           ; $42E4: $00
    ld c, h                                       ; $42E5: $4C
    rst $38                                       ; $42E6: $FF
    nop                                           ; $42E7: $00
    nop                                           ; $42E8: $00
    ld a, [hl+]                                   ; $42E9: $2A
    ld b, d                                       ; $42EA: $42
    nop                                           ; $42EB: $00
    ld b, [hl]                                    ; $42EC: $46
    push hl                                       ; $42ED: $E5
    ld b, d                                       ; $42EE: $42
    ld c, h                                       ; $42EF: $4C
    rst $38                                       ; $42F0: $FF
    nop                                           ; $42F1: $00
    nop                                           ; $42F2: $00
    ld d, c                                       ; $42F3: $51
    ld b, c                                       ; $42F4: $41
    nop                                           ; $42F5: $00
    ld b, [hl]                                    ; $42F6: $46
    rst $28                                       ; $42F7: $EF
    ld b, d                                       ; $42F8: $42
    ldh a, [$F8]                                  ; $42F9: $F0 $F8
    nop                                           ; $42FB: $00
    nop                                           ; $42FC: $00
    ldh a, [rP1]                                  ; $42FD: $F0 $00
    ld bc, $F800                                  ; $42FF: $01 $00 $F8
    ld hl, sp+$04                                 ; $4302: $F8 $04
    nop                                           ; $4304: $00
    ld hl, sp+$00                                 ; $4305: $F8 $00

jr_011_4307:
    dec b                                         ; $4307: $05
    nop                                           ; $4308: $00
    nop                                           ; $4309: $00
    ld hl, sp+$07                                 ; $430A: $F8 $07
    ld [bc], a                                    ; $430C: $02
    nop                                           ; $430D: $00
    nop                                           ; $430E: $00
    ld [$8002], sp                                ; $430F: $08 $02 $80
    ldh a, [rP1]                                  ; $4312: $F0 $00
    nop                                           ; $4314: $00
    jr nz, jr_011_4307                            ; $4315: $20 $F0

jr_011_4317:
    ld hl, sp+$01                                 ; $4317: $F8 $01
    jr nz, @-$06                                  ; $4319: $20 $F8

    nop                                           ; $431B: $00
    inc b                                         ; $431C: $04
    jr nz, jr_011_4317                            ; $431D: $20 $F8

    ld hl, sp+$05                                 ; $431F: $F8 $05
    jr nz, jr_011_4323                            ; $4321: $20 $00

jr_011_4323:
    nop                                           ; $4323: $00
    rlca                                          ; $4324: $07
    ld [hl+], a                                   ; $4325: $22
    nop                                           ; $4326: $00
    ld hl, sp+$08                                 ; $4327: $F8 $08
    ld [hl+], a                                   ; $4329: $22
    add b                                         ; $432A: $80
    ldh a, [$F8]                                  ; $432B: $F0 $F8
    dec bc                                        ; $432D: $0B
    nop                                           ; $432E: $00
    ldh a, [rP1]                                  ; $432F: $F0 $00
    inc c                                         ; $4331: $0C
    nop                                           ; $4332: $00
    ld hl, sp-$08                                 ; $4333: $F8 $F8
    ld c, $00                                     ; $4335: $0E $00
    ld hl, sp+$00                                 ; $4337: $F8 $00

jr_011_4339:
    rrca                                          ; $4339: $0F
    nop                                           ; $433A: $00
    nop                                           ; $433B: $00
    ld hl, sp+$11                                 ; $433C: $F8 $11
    ld [bc], a                                    ; $433E: $02
    nop                                           ; $433F: $00
    nop                                           ; $4340: $00
    ld [de], a                                    ; $4341: $12
    ld [bc], a                                    ; $4342: $02
    add b                                         ; $4343: $80
    ldh a, [rP1]                                  ; $4344: $F0 $00
    dec bc                                        ; $4346: $0B
    jr nz, jr_011_4339                            ; $4347: $20 $F0

    ld hl, sp+$0C                                 ; $4349: $F8 $0C
    jr nz, @-$06                                  ; $434B: $20 $F8

    nop                                           ; $434D: $00
    ld c, $20                                     ; $434E: $0E $20
    ld hl, sp-$08                                 ; $4350: $F8 $F8
    rrca                                          ; $4352: $0F
    jr nz, jr_011_4355                            ; $4353: $20 $00

jr_011_4355:
    nop                                           ; $4355: $00
    ld de, $0022                                  ; $4356: $11 $22 $00
    ld hl, sp+$12                                 ; $4359: $F8 $12
    ld [hl+], a                                   ; $435B: $22
    add b                                         ; $435C: $80
    pop af                                        ; $435D: $F1
    ld hl, sp+$02                                 ; $435E: $F8 $02
    nop                                           ; $4360: $00
    pop af                                        ; $4361: $F1
    nop                                           ; $4362: $00
    inc bc                                        ; $4363: $03
    nop                                           ; $4364: $00
    ld hl, sp-$08                                 ; $4365: $F8 $F8
    dec d                                         ; $4367: $15
    nop                                           ; $4368: $00
    ld hl, sp+$00                                 ; $4369: $F8 $00
    ld d, $00                                     ; $436B: $16 $00
    nop                                           ; $436D: $00
    ld hl, sp+$17                                 ; $436E: $F8 $17
    ld [bc], a                                    ; $4370: $02
    nop                                           ; $4371: $00
    nop                                           ; $4372: $00
    jr @+$04                                      ; $4373: $18 $02

    add b                                         ; $4375: $80
    ldh a, [$F8]                                  ; $4376: $F0 $F8
    ld [bc], a                                    ; $4378: $02
    nop                                           ; $4379: $00
    ldh a, [rP1]                                  ; $437A: $F0 $00
    inc bc                                        ; $437C: $03
    nop                                           ; $437D: $00
    nop                                           ; $437E: $00
    nop                                           ; $437F: $00
    add hl, bc                                    ; $4380: $09
    ld [bc], a                                    ; $4381: $02
    nop                                           ; $4382: $00
    ld sp, hl                                     ; $4383: $F9
    add hl, bc                                    ; $4384: $09
    ld [hl+], a                                   ; $4385: $22
    ld hl, sp+$00                                 ; $4386: $F8 $00
    ld b, $00                                     ; $4388: $06 $00
    ld hl, sp-$08                                 ; $438A: $F8 $F8
    ld b, $20                                     ; $438C: $06 $20
    add b                                         ; $438E: $80
    pop af                                        ; $438F: $F1
    ld hl, sp+$02                                 ; $4390: $F8 $02
    nop                                           ; $4392: $00
    pop af                                        ; $4393: $F1

jr_011_4394:
    nop                                           ; $4394: $00
    inc bc                                        ; $4395: $03
    nop                                           ; $4396: $00
    ld hl, sp+$00                                 ; $4397: $F8 $00
    dec d                                         ; $4399: $15
    jr nz, jr_011_4394                            ; $439A: $20 $F8

    ld hl, sp+$16                                 ; $439C: $F8 $16
    jr nz, jr_011_43A0                            ; $439E: $20 $00

jr_011_43A0:
    nop                                           ; $43A0: $00
    rla                                           ; $43A1: $17
    ld [hl+], a                                   ; $43A2: $22
    nop                                           ; $43A3: $00
    ld hl, sp+$18                                 ; $43A4: $F8 $18
    ld [hl+], a                                   ; $43A6: $22
    add b                                         ; $43A7: $80
    pop af                                        ; $43A8: $F1

jr_011_43A9:
    nop                                           ; $43A9: $00
    ld a, [bc]                                    ; $43AA: $0A
    nop                                           ; $43AB: $00
    pop af                                        ; $43AC: $F1
    ld sp, hl                                     ; $43AD: $F9
    ld a, [bc]                                    ; $43AE: $0A
    jr nz, jr_011_43A9                            ; $43AF: $20 $F8

    ld hl, sp+$1A                                 ; $43B1: $F8 $1A
    nop                                           ; $43B3: $00
    ld hl, sp+$00                                 ; $43B4: $F8 $00
    dec de                                        ; $43B6: $1B
    nop                                           ; $43B7: $00
    nop                                           ; $43B8: $00
    ld hl, sp+$1C                                 ; $43B9: $F8 $1C
    ld [bc], a                                    ; $43BB: $02
    nop                                           ; $43BC: $00
    nop                                           ; $43BD: $00
    dec e                                         ; $43BE: $1D
    ld [bc], a                                    ; $43BF: $02
    add b                                         ; $43C0: $80
    ldh a, [rP1]                                  ; $43C1: $F0 $00
    ld a, [bc]                                    ; $43C3: $0A
    nop                                           ; $43C4: $00
    ldh a, [$F9]                                  ; $43C5: $F0 $F9
    ld a, [bc]                                    ; $43C7: $0A
    jr nz, @-$06                                  ; $43C8: $20 $F8

    nop                                           ; $43CA: $00
    dec c                                         ; $43CB: $0D
    nop                                           ; $43CC: $00
    ld hl, sp-$07                                 ; $43CD: $F8 $F9
    dec c                                         ; $43CF: $0D
    jr nz, jr_011_43D2                            ; $43D0: $20 $00

jr_011_43D2:
    nop                                           ; $43D2: $00
    db $10                                        ; $43D3: $10
    ld [bc], a                                    ; $43D4: $02
    nop                                           ; $43D5: $00
    ld sp, hl                                     ; $43D6: $F9
    db $10                                        ; $43D7: $10
    ld [hl+], a                                   ; $43D8: $22
    add b                                         ; $43D9: $80
    pop af                                        ; $43DA: $F1

jr_011_43DB:
    nop                                           ; $43DB: $00
    ld a, [bc]                                    ; $43DC: $0A
    nop                                           ; $43DD: $00
    pop af                                        ; $43DE: $F1
    ld sp, hl                                     ; $43DF: $F9
    ld a, [bc]                                    ; $43E0: $0A
    jr nz, jr_011_43DB                            ; $43E1: $20 $F8

    ld bc, $201A                                  ; $43E3: $01 $1A $20
    ld hl, sp-$07                                 ; $43E6: $F8 $F9
    dec de                                        ; $43E8: $1B
    jr nz, jr_011_43EB                            ; $43E9: $20 $00

jr_011_43EB:
    ld bc, $221C                                  ; $43EB: $01 $1C $22
    nop                                           ; $43EE: $00
    ld sp, hl                                     ; $43EF: $F9
    dec e                                         ; $43F0: $1D
    ld [hl+], a                                   ; $43F1: $22
    add b                                         ; $43F2: $80
    pop af                                        ; $43F3: $F1
    ld hl, sp+$1E                                 ; $43F4: $F8 $1E
    nop                                           ; $43F6: $00
    pop af                                        ; $43F7: $F1
    nop                                           ; $43F8: $00
    rra                                           ; $43F9: $1F
    nop                                           ; $43FA: $00
    ld hl, sp-$08                                 ; $43FB: $F8 $F8
    jr nz, jr_011_43FF                            ; $43FD: $20 $00

jr_011_43FF:
    ld hl, sp+$00                                 ; $43FF: $F8 $00
    ld hl, $0000                                  ; $4401: $21 $00 $00
    ld hl, sp+$25                                 ; $4404: $F8 $25
    ld [bc], a                                    ; $4406: $02
    nop                                           ; $4407: $00
    nop                                           ; $4408: $00
    ld h, $02                                     ; $4409: $26 $02
    add b                                         ; $440B: $80
    ldh a, [$F8]                                  ; $440C: $F0 $F8
    ld e, $00                                     ; $440E: $1E $00
    ldh a, [rP1]                                  ; $4410: $F0 $00
    rra                                           ; $4412: $1F
    nop                                           ; $4413: $00
    ld hl, sp-$04                                 ; $4414: $F8 $FC
    ld [hl+], a                                   ; $4416: $22
    nop                                           ; $4417: $00
    nop                                           ; $4418: $00
    ld hl, sp+$27                                 ; $4419: $F8 $27
    ld [bc], a                                    ; $441B: $02
    nop                                           ; $441C: $00
    nop                                           ; $441D: $00
    jr z, jr_011_4422                             ; $441E: $28 $02

    add b                                         ; $4420: $80
    pop af                                        ; $4421: $F1

jr_011_4422:
    ld hl, sp+$1E                                 ; $4422: $F8 $1E
    nop                                           ; $4424: $00
    pop af                                        ; $4425: $F1
    nop                                           ; $4426: $00
    rra                                           ; $4427: $1F
    nop                                           ; $4428: $00
    ld hl, sp-$08                                 ; $4429: $F8 $F8
    inc hl                                        ; $442B: $23
    nop                                           ; $442C: $00
    ld hl, sp+$00                                 ; $442D: $F8 $00
    inc h                                         ; $442F: $24
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    ld hl, sp+$29                                 ; $4432: $F8 $29
    ld [bc], a                                    ; $4434: $02
    nop                                           ; $4435: $00
    nop                                           ; $4436: $00
    ld a, [hl+]                                   ; $4437: $2A
    ld [bc], a                                    ; $4438: $02
    add b                                         ; $4439: $80
    pop af                                        ; $443A: $F1

jr_011_443B:
    nop                                           ; $443B: $00
    ld e, $20                                     ; $443C: $1E $20
    pop af                                        ; $443E: $F1
    ld hl, sp+$1F                                 ; $443F: $F8 $1F
    jr nz, jr_011_443B                            ; $4441: $20 $F8

    nop                                           ; $4443: $00
    jr nz, jr_011_4466                            ; $4444: $20 $20

    ld hl, sp-$08                                 ; $4446: $F8 $F8
    ld hl, $0020                                  ; $4448: $21 $20 $00
    nop                                           ; $444B: $00
    dec h                                         ; $444C: $25
    ld [hl+], a                                   ; $444D: $22
    nop                                           ; $444E: $00
    ld hl, sp+$26                                 ; $444F: $F8 $26
    ld [hl+], a                                   ; $4451: $22
    add b                                         ; $4452: $80
    ldh a, [rP1]                                  ; $4453: $F0 $00
    ld e, $20                                     ; $4455: $1E $20
    ldh a, [$F8]                                  ; $4457: $F0 $F8
    rra                                           ; $4459: $1F
    jr nz, @-$06                                  ; $445A: $20 $F8

    db $FC                                        ; $445C: $FC
    ld [hl+], a                                   ; $445D: $22
    jr nz, jr_011_4460                            ; $445E: $20 $00

jr_011_4460:
    nop                                           ; $4460: $00
    daa                                           ; $4461: $27
    ld [hl+], a                                   ; $4462: $22
    nop                                           ; $4463: $00
    ld hl, sp+$28                                 ; $4464: $F8 $28

jr_011_4466:
    ld [hl+], a                                   ; $4466: $22
    add b                                         ; $4467: $80
    pop af                                        ; $4468: $F1

jr_011_4469:
    nop                                           ; $4469: $00
    ld e, $20                                     ; $446A: $1E $20
    pop af                                        ; $446C: $F1

jr_011_446D:
    ld hl, sp+$1F                                 ; $446D: $F8 $1F
    jr nz, jr_011_4469                            ; $446F: $20 $F8

    nop                                           ; $4471: $00
    inc hl                                        ; $4472: $23
    jr nz, jr_011_446D                            ; $4473: $20 $F8

    ld hl, sp+$24                                 ; $4475: $F8 $24
    jr nz, jr_011_4479                            ; $4477: $20 $00

jr_011_4479:
    nop                                           ; $4479: $00
    add hl, hl                                    ; $447A: $29
    ld [hl+], a                                   ; $447B: $22
    nop                                           ; $447C: $00
    ld hl, sp+$2A                                 ; $447D: $F8 $2A
    ld [hl+], a                                   ; $447F: $22
    add b                                         ; $4480: $80
    ld c, l                                       ; $4481: $4D
    ld [$0008], sp                                ; $4482: $08 $08 $00
    rst $38                                       ; $4485: $FF
    xor b                                         ; $4486: $A8
    ld b, e                                       ; $4487: $43
    pop bc                                        ; $4488: $C1
    ld b, e                                       ; $4489: $43
    jp c, $C143                                   ; $448A: $DA $43 $C1

    ld b, e                                       ; $448D: $43
    ld b, [hl]                                    ; $448E: $46
    add c                                         ; $448F: $81
    ld b, h                                       ; $4490: $44
    ld c, l                                       ; $4491: $4D
    ld [$0008], sp                                ; $4492: $08 $08 $00
    ld bc, $435D                                  ; $4495: $01 $5D $43
    halt                                          ; $4498: $76
    ld b, e                                       ; $4499: $43
    adc a                                         ; $449A: $8F
    ld b, e                                       ; $449B: $43
    halt                                          ; $449C: $76
    ld b, e                                       ; $449D: $43
    ld b, [hl]                                    ; $449E: $46
    sub c                                         ; $449F: $91
    ld b, h                                       ; $44A0: $44
    ld c, l                                       ; $44A1: $4D
    ld [$FF08], sp                                ; $44A2: $08 $08 $FF
    nop                                           ; $44A5: $00
    ld a, [hl-]                                   ; $44A6: $3A
    ld b, h                                       ; $44A7: $44
    ld d, e                                       ; $44A8: $53
    ld b, h                                       ; $44A9: $44
    ld l, b                                       ; $44AA: $68
    ld b, h                                       ; $44AB: $44
    ld d, e                                       ; $44AC: $53
    ld b, h                                       ; $44AD: $44
    ld b, [hl]                                    ; $44AE: $46
    and c                                         ; $44AF: $A1
    ld b, h                                       ; $44B0: $44
    ld c, l                                       ; $44B1: $4D
    ld [$0108], sp                                ; $44B2: $08 $08 $01
    nop                                           ; $44B5: $00
    di                                            ; $44B6: $F3
    ld b, e                                       ; $44B7: $43
    inc c                                         ; $44B8: $0C
    ld b, h                                       ; $44B9: $44
    ld hl, $0C44                                  ; $44BA: $21 $44 $0C
    ld b, h                                       ; $44BD: $44
    ld b, [hl]                                    ; $44BE: $46
    or c                                          ; $44BF: $B1
    ld b, h                                       ; $44C0: $44
    ld c, l                                       ; $44C1: $4D
    ld [$0008], sp                                ; $44C2: $08 $08 $00
    cp $A8                                        ; $44C5: $FE $A8
    ld b, e                                       ; $44C7: $43
    pop bc                                        ; $44C8: $C1
    ld b, e                                       ; $44C9: $43
    jp c, $C143                                   ; $44CA: $DA $43 $C1

    ld b, e                                       ; $44CD: $43
    ld b, [hl]                                    ; $44CE: $46
    pop bc                                        ; $44CF: $C1
    ld b, h                                       ; $44D0: $44
    ld c, l                                       ; $44D1: $4D
    ld [$0008], sp                                ; $44D2: $08 $08 $00
    ld [bc], a                                    ; $44D5: $02
    ld e, l                                       ; $44D6: $5D
    ld b, e                                       ; $44D7: $43
    halt                                          ; $44D8: $76
    ld b, e                                       ; $44D9: $43
    adc a                                         ; $44DA: $8F
    ld b, e                                       ; $44DB: $43
    halt                                          ; $44DC: $76
    ld b, e                                       ; $44DD: $43
    ld b, [hl]                                    ; $44DE: $46
    pop de                                        ; $44DF: $D1
    ld b, h                                       ; $44E0: $44
    ld c, l                                       ; $44E1: $4D
    ld [$FE08], sp                                ; $44E2: $08 $08 $FE
    nop                                           ; $44E5: $00
    ld a, [hl-]                                   ; $44E6: $3A
    ld b, h                                       ; $44E7: $44
    ld d, e                                       ; $44E8: $53
    ld b, h                                       ; $44E9: $44
    ld l, b                                       ; $44EA: $68
    ld b, h                                       ; $44EB: $44
    ld d, e                                       ; $44EC: $53
    ld b, h                                       ; $44ED: $44
    ld b, [hl]                                    ; $44EE: $46
    pop hl                                        ; $44EF: $E1
    ld b, h                                       ; $44F0: $44
    ld c, l                                       ; $44F1: $4D
    ld [$0208], sp                                ; $44F2: $08 $08 $02
    nop                                           ; $44F5: $00
    di                                            ; $44F6: $F3
    ld b, e                                       ; $44F7: $43
    inc c                                         ; $44F8: $0C
    ld b, h                                       ; $44F9: $44
    ld hl, $0C44                                  ; $44FA: $21 $44 $0C
    ld b, h                                       ; $44FD: $44
    ld b, [hl]                                    ; $44FE: $46
    pop af                                        ; $44FF: $F1
    ld b, h                                       ; $4500: $44
    ld c, h                                       ; $4501: $4C
    rst $38                                       ; $4502: $FF
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    pop bc                                        ; $4505: $C1
    ld b, e                                       ; $4506: $43
    nop                                           ; $4507: $00
    ld b, [hl]                                    ; $4508: $46
    ld bc, $4C45                                  ; $4509: $01 $45 $4C
    rst $38                                       ; $450C: $FF
    nop                                           ; $450D: $00
    nop                                           ; $450E: $00
    halt                                          ; $450F: $76
    ld b, e                                       ; $4510: $43
    nop                                           ; $4511: $00
    ld b, [hl]                                    ; $4512: $46
    dec bc                                        ; $4513: $0B
    ld b, l                                       ; $4514: $45
    ld c, h                                       ; $4515: $4C
    rst $38                                       ; $4516: $FF
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    ld d, e                                       ; $4519: $53
    ld b, h                                       ; $451A: $44
    nop                                           ; $451B: $00
    ld b, [hl]                                    ; $451C: $46
    dec d                                         ; $451D: $15
    ld b, l                                       ; $451E: $45
    ld c, h                                       ; $451F: $4C
    rst $38                                       ; $4520: $FF
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    inc c                                         ; $4523: $0C
    ld b, h                                       ; $4524: $44
    nop                                           ; $4525: $00
    ld b, [hl]                                    ; $4526: $46
    rra                                           ; $4527: $1F
    ld b, l                                       ; $4528: $45
    ld c, h                                       ; $4529: $4C
    rst $38                                       ; $452A: $FF
    nop                                           ; $452B: $00
    nop                                           ; $452C: $00
    ld b, h                                       ; $452D: $44
    ld b, e                                       ; $452E: $43
    nop                                           ; $452F: $00
    ld b, [hl]                                    ; $4530: $46
    add hl, hl                                    ; $4531: $29
    ld b, l                                       ; $4532: $45
    ld c, h                                       ; $4533: $4C
    rst $38                                       ; $4534: $FF
    nop                                           ; $4535: $00
    nop                                           ; $4536: $00
    dec hl                                        ; $4537: $2B
    ld b, e                                       ; $4538: $43
    nop                                           ; $4539: $00
    ld b, [hl]                                    ; $453A: $46
    inc sp                                        ; $453B: $33
    ld b, l                                       ; $453C: $45
    ld c, h                                       ; $453D: $4C
    rst $38                                       ; $453E: $FF
    nop                                           ; $453F: $00
    nop                                           ; $4540: $00
    ld [de], a                                    ; $4541: $12
    ld b, e                                       ; $4542: $43
    nop                                           ; $4543: $00
    ld b, [hl]                                    ; $4544: $46
    dec a                                         ; $4545: $3D
    ld b, l                                       ; $4546: $45
    ld c, h                                       ; $4547: $4C
    rst $38                                       ; $4548: $FF
    nop                                           ; $4549: $00
    nop                                           ; $454A: $00
    ld sp, hl                                     ; $454B: $F9
    ld b, d                                       ; $454C: $42
    nop                                           ; $454D: $00
    ld b, [hl]                                    ; $454E: $46
    ld b, a                                       ; $454F: $47
    ld b, l                                       ; $4550: $45
    ld c, e                                       ; $4551: $4B
    inc bc                                        ; $4552: $03
    ld de, $0000                                  ; $4553: $11 $00 $00
    ld l, b                                       ; $4556: $68
    ld b, l                                       ; $4557: $45
    ld de, $0003                                  ; $4558: $11 $03 $00
    ld l, a                                       ; $455B: $6F
    ld b, l                                       ; $455C: $45
    ld de, $0002                                  ; $455D: $11 $02 $00
    ld a, l                                       ; $4560: $7D
    ld b, l                                       ; $4561: $45
    ld de, $0001                                  ; $4562: $11 $01 $00
    halt                                          ; $4565: $76
    ld b, l                                       ; $4566: $45
    rst $38                                       ; $4567: $FF
    inc d                                         ; $4568: $14
    ld de, $4501                                  ; $4569: $11 $01 $45
    ld h, d                                       ; $456C: $62
    ld bc, $1412                                  ; $456D: $01 $12 $14
    ld de, $450B                                  ; $4570: $11 $0B $45
    ld h, d                                       ; $4573: $62
    ld bc, $1412                                  ; $4574: $01 $12 $14
    ld de, $4515                                  ; $4577: $11 $15 $45
    ld h, d                                       ; $457A: $62
    ld bc, $1412                                  ; $457B: $01 $12 $14
    ld de, $451F                                  ; $457E: $11 $1F $45
    ld h, d                                       ; $4581: $62
    ld bc, $F012                                  ; $4582: $01 $12 $F0
    ld hl, sp+$00                                 ; $4585: $F8 $00
    nop                                           ; $4587: $00
    ldh a, [rP1]                                  ; $4588: $F0 $00
    ld bc, $F800                                  ; $458A: $01 $00 $F8
    ld hl, sp+$04                                 ; $458D: $F8 $04
    nop                                           ; $458F: $00
    ld hl, sp+$00                                 ; $4590: $F8 $00

jr_011_4592:
    dec b                                         ; $4592: $05
    nop                                           ; $4593: $00
    nop                                           ; $4594: $00
    ld hl, sp+$07                                 ; $4595: $F8 $07
    ld [bc], a                                    ; $4597: $02
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    ld [$8002], sp                                ; $459A: $08 $02 $80
    ldh a, [rP1]                                  ; $459D: $F0 $00
    nop                                           ; $459F: $00
    jr nz, jr_011_4592                            ; $45A0: $20 $F0

jr_011_45A2:
    ld hl, sp+$01                                 ; $45A2: $F8 $01
    jr nz, @-$06                                  ; $45A4: $20 $F8

    nop                                           ; $45A6: $00
    inc b                                         ; $45A7: $04
    jr nz, jr_011_45A2                            ; $45A8: $20 $F8

    ld hl, sp+$05                                 ; $45AA: $F8 $05
    jr nz, jr_011_45AE                            ; $45AC: $20 $00

jr_011_45AE:
    nop                                           ; $45AE: $00
    rlca                                          ; $45AF: $07
    ld [hl+], a                                   ; $45B0: $22
    nop                                           ; $45B1: $00
    ld hl, sp+$08                                 ; $45B2: $F8 $08
    ld [hl+], a                                   ; $45B4: $22
    add b                                         ; $45B5: $80
    ldh a, [$F8]                                  ; $45B6: $F0 $F8
    dec bc                                        ; $45B8: $0B
    nop                                           ; $45B9: $00
    ldh a, [rP1]                                  ; $45BA: $F0 $00
    inc c                                         ; $45BC: $0C
    nop                                           ; $45BD: $00
    ld hl, sp-$08                                 ; $45BE: $F8 $F8
    ld c, $00                                     ; $45C0: $0E $00
    ld hl, sp+$00                                 ; $45C2: $F8 $00

jr_011_45C4:
    rrca                                          ; $45C4: $0F
    nop                                           ; $45C5: $00
    nop                                           ; $45C6: $00
    ld hl, sp+$11                                 ; $45C7: $F8 $11
    ld [bc], a                                    ; $45C9: $02
    nop                                           ; $45CA: $00
    nop                                           ; $45CB: $00
    ld [de], a                                    ; $45CC: $12
    ld [bc], a                                    ; $45CD: $02
    add b                                         ; $45CE: $80
    ldh a, [rP1]                                  ; $45CF: $F0 $00
    dec bc                                        ; $45D1: $0B
    jr nz, jr_011_45C4                            ; $45D2: $20 $F0

    ld hl, sp+$0C                                 ; $45D4: $F8 $0C
    jr nz, @-$06                                  ; $45D6: $20 $F8

    nop                                           ; $45D8: $00
    ld c, $20                                     ; $45D9: $0E $20
    ld hl, sp-$08                                 ; $45DB: $F8 $F8
    rrca                                          ; $45DD: $0F
    jr nz, jr_011_45E0                            ; $45DE: $20 $00

jr_011_45E0:
    nop                                           ; $45E0: $00
    ld de, $0022                                  ; $45E1: $11 $22 $00
    ld hl, sp+$12                                 ; $45E4: $F8 $12
    ld [hl+], a                                   ; $45E6: $22
    add b                                         ; $45E7: $80
    pop af                                        ; $45E8: $F1
    ld hl, sp+$02                                 ; $45E9: $F8 $02
    nop                                           ; $45EB: $00
    pop af                                        ; $45EC: $F1
    nop                                           ; $45ED: $00
    inc bc                                        ; $45EE: $03
    nop                                           ; $45EF: $00
    ld hl, sp-$08                                 ; $45F0: $F8 $F8
    dec d                                         ; $45F2: $15
    nop                                           ; $45F3: $00
    ld hl, sp+$00                                 ; $45F4: $F8 $00
    ld d, $00                                     ; $45F6: $16 $00
    nop                                           ; $45F8: $00
    ld hl, sp+$17                                 ; $45F9: $F8 $17
    ld [bc], a                                    ; $45FB: $02
    nop                                           ; $45FC: $00
    nop                                           ; $45FD: $00
    jr @+$04                                      ; $45FE: $18 $02

    add b                                         ; $4600: $80
    ldh a, [$F8]                                  ; $4601: $F0 $F8
    ld [bc], a                                    ; $4603: $02
    nop                                           ; $4604: $00
    ldh a, [rP1]                                  ; $4605: $F0 $00
    inc bc                                        ; $4607: $03
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    nop                                           ; $460A: $00
    add hl, bc                                    ; $460B: $09
    ld [bc], a                                    ; $460C: $02
    nop                                           ; $460D: $00
    ld sp, hl                                     ; $460E: $F9
    add hl, bc                                    ; $460F: $09
    ld [hl+], a                                   ; $4610: $22
    ld hl, sp+$00                                 ; $4611: $F8 $00
    ld b, $00                                     ; $4613: $06 $00
    ld hl, sp-$08                                 ; $4615: $F8 $F8
    ld b, $20                                     ; $4617: $06 $20
    add b                                         ; $4619: $80
    pop af                                        ; $461A: $F1
    ld hl, sp+$02                                 ; $461B: $F8 $02
    nop                                           ; $461D: $00
    pop af                                        ; $461E: $F1

jr_011_461F:
    nop                                           ; $461F: $00
    inc bc                                        ; $4620: $03
    nop                                           ; $4621: $00
    ld hl, sp+$00                                 ; $4622: $F8 $00
    dec d                                         ; $4624: $15
    jr nz, jr_011_461F                            ; $4625: $20 $F8

    ld hl, sp+$16                                 ; $4627: $F8 $16
    jr nz, jr_011_462B                            ; $4629: $20 $00

jr_011_462B:
    nop                                           ; $462B: $00
    rla                                           ; $462C: $17
    ld [hl+], a                                   ; $462D: $22
    nop                                           ; $462E: $00
    ld hl, sp+$18                                 ; $462F: $F8 $18
    ld [hl+], a                                   ; $4631: $22
    add b                                         ; $4632: $80
    pop af                                        ; $4633: $F1

jr_011_4634:
    nop                                           ; $4634: $00
    ld a, [bc]                                    ; $4635: $0A
    nop                                           ; $4636: $00
    pop af                                        ; $4637: $F1
    ld sp, hl                                     ; $4638: $F9
    ld a, [bc]                                    ; $4639: $0A
    jr nz, jr_011_4634                            ; $463A: $20 $F8

    ld hl, sp+$1A                                 ; $463C: $F8 $1A
    nop                                           ; $463E: $00
    ld hl, sp+$00                                 ; $463F: $F8 $00
    dec de                                        ; $4641: $1B
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    ld hl, sp+$1C                                 ; $4644: $F8 $1C
    ld [bc], a                                    ; $4646: $02
    nop                                           ; $4647: $00
    nop                                           ; $4648: $00
    dec e                                         ; $4649: $1D
    ld [bc], a                                    ; $464A: $02
    add b                                         ; $464B: $80
    ldh a, [rP1]                                  ; $464C: $F0 $00
    ld a, [bc]                                    ; $464E: $0A
    nop                                           ; $464F: $00
    ldh a, [$F9]                                  ; $4650: $F0 $F9
    ld a, [bc]                                    ; $4652: $0A
    jr nz, @-$06                                  ; $4653: $20 $F8

    nop                                           ; $4655: $00
    dec c                                         ; $4656: $0D
    nop                                           ; $4657: $00
    ld hl, sp-$07                                 ; $4658: $F8 $F9

Call_011_465A:
    dec c                                         ; $465A: $0D
    jr nz, jr_011_465D                            ; $465B: $20 $00

jr_011_465D:
    nop                                           ; $465D: $00
    db $10                                        ; $465E: $10
    ld [bc], a                                    ; $465F: $02
    nop                                           ; $4660: $00
    ld sp, hl                                     ; $4661: $F9
    db $10                                        ; $4662: $10
    ld [hl+], a                                   ; $4663: $22
    add b                                         ; $4664: $80
    pop af                                        ; $4665: $F1

jr_011_4666:
    nop                                           ; $4666: $00
    ld a, [bc]                                    ; $4667: $0A
    nop                                           ; $4668: $00
    pop af                                        ; $4669: $F1
    ld sp, hl                                     ; $466A: $F9
    ld a, [bc]                                    ; $466B: $0A
    jr nz, jr_011_4666                            ; $466C: $20 $F8

    ld bc, $201A                                  ; $466E: $01 $1A $20
    ld hl, sp-$07                                 ; $4671: $F8 $F9
    dec de                                        ; $4673: $1B
    jr nz, jr_011_4676                            ; $4674: $20 $00

jr_011_4676:
    ld bc, $221C                                  ; $4676: $01 $1C $22
    nop                                           ; $4679: $00
    ld sp, hl                                     ; $467A: $F9
    dec e                                         ; $467B: $1D
    ld [hl+], a                                   ; $467C: $22
    add b                                         ; $467D: $80
    pop af                                        ; $467E: $F1
    ld hl, sp+$1E                                 ; $467F: $F8 $1E
    nop                                           ; $4681: $00
    pop af                                        ; $4682: $F1
    nop                                           ; $4683: $00
    rra                                           ; $4684: $1F
    nop                                           ; $4685: $00
    ld hl, sp-$08                                 ; $4686: $F8 $F8
    jr nz, jr_011_468A                            ; $4688: $20 $00

jr_011_468A:
    ld hl, sp+$00                                 ; $468A: $F8 $00
    ld hl, $0000                                  ; $468C: $21 $00 $00
    ld hl, sp+$25                                 ; $468F: $F8 $25
    ld [bc], a                                    ; $4691: $02
    nop                                           ; $4692: $00
    nop                                           ; $4693: $00
    ld h, $02                                     ; $4694: $26 $02
    add b                                         ; $4696: $80
    ldh a, [$F8]                                  ; $4697: $F0 $F8
    ld e, $00                                     ; $4699: $1E $00
    ldh a, [rP1]                                  ; $469B: $F0 $00
    rra                                           ; $469D: $1F
    nop                                           ; $469E: $00
    ld hl, sp-$04                                 ; $469F: $F8 $FC
    ld [hl+], a                                   ; $46A1: $22
    nop                                           ; $46A2: $00
    nop                                           ; $46A3: $00
    ld hl, sp+$27                                 ; $46A4: $F8 $27
    ld [bc], a                                    ; $46A6: $02
    nop                                           ; $46A7: $00
    nop                                           ; $46A8: $00
    jr z, jr_011_46AD                             ; $46A9: $28 $02

    add b                                         ; $46AB: $80
    pop af                                        ; $46AC: $F1

jr_011_46AD:
    ld hl, sp+$1E                                 ; $46AD: $F8 $1E
    nop                                           ; $46AF: $00
    pop af                                        ; $46B0: $F1
    nop                                           ; $46B1: $00
    rra                                           ; $46B2: $1F
    nop                                           ; $46B3: $00
    ld hl, sp-$08                                 ; $46B4: $F8 $F8
    inc hl                                        ; $46B6: $23
    nop                                           ; $46B7: $00
    ld hl, sp+$00                                 ; $46B8: $F8 $00
    inc h                                         ; $46BA: $24
    nop                                           ; $46BB: $00
    nop                                           ; $46BC: $00
    ld hl, sp+$29                                 ; $46BD: $F8 $29
    ld [bc], a                                    ; $46BF: $02
    nop                                           ; $46C0: $00
    nop                                           ; $46C1: $00
    ld a, [hl+]                                   ; $46C2: $2A
    ld [bc], a                                    ; $46C3: $02
    add b                                         ; $46C4: $80
    pop af                                        ; $46C5: $F1

jr_011_46C6:
    nop                                           ; $46C6: $00
    ld e, $20                                     ; $46C7: $1E $20
    pop af                                        ; $46C9: $F1
    ld hl, sp+$1F                                 ; $46CA: $F8 $1F
    jr nz, jr_011_46C6                            ; $46CC: $20 $F8

    nop                                           ; $46CE: $00
    jr nz, jr_011_46F1                            ; $46CF: $20 $20

    ld hl, sp-$08                                 ; $46D1: $F8 $F8
    ld hl, $0020                                  ; $46D3: $21 $20 $00
    nop                                           ; $46D6: $00
    dec h                                         ; $46D7: $25
    ld [hl+], a                                   ; $46D8: $22
    nop                                           ; $46D9: $00
    ld hl, sp+$26                                 ; $46DA: $F8 $26
    ld [hl+], a                                   ; $46DC: $22
    add b                                         ; $46DD: $80
    ldh a, [rP1]                                  ; $46DE: $F0 $00
    ld e, $20                                     ; $46E0: $1E $20
    ldh a, [$F8]                                  ; $46E2: $F0 $F8
    rra                                           ; $46E4: $1F
    jr nz, @-$06                                  ; $46E5: $20 $F8

    db $FC                                        ; $46E7: $FC
    ld [hl+], a                                   ; $46E8: $22
    jr nz, jr_011_46EB                            ; $46E9: $20 $00

jr_011_46EB:
    nop                                           ; $46EB: $00
    daa                                           ; $46EC: $27
    ld [hl+], a                                   ; $46ED: $22
    nop                                           ; $46EE: $00
    ld hl, sp+$28                                 ; $46EF: $F8 $28

jr_011_46F1:
    ld [hl+], a                                   ; $46F1: $22
    add b                                         ; $46F2: $80
    pop af                                        ; $46F3: $F1

jr_011_46F4:
    nop                                           ; $46F4: $00
    ld e, $20                                     ; $46F5: $1E $20
    pop af                                        ; $46F7: $F1

jr_011_46F8:
    ld hl, sp+$1F                                 ; $46F8: $F8 $1F
    jr nz, jr_011_46F4                            ; $46FA: $20 $F8

    nop                                           ; $46FC: $00
    inc hl                                        ; $46FD: $23
    jr nz, jr_011_46F8                            ; $46FE: $20 $F8

    ld hl, sp+$24                                 ; $4700: $F8 $24
    jr nz, jr_011_4704                            ; $4702: $20 $00

jr_011_4704:
    nop                                           ; $4704: $00
    add hl, hl                                    ; $4705: $29
    ld [hl+], a                                   ; $4706: $22
    nop                                           ; $4707: $00
    ld hl, sp+$2A                                 ; $4708: $F8 $2A
    ld [hl+], a                                   ; $470A: $22
    add b                                         ; $470B: $80
    ld c, l                                       ; $470C: $4D
    ld [$0008], sp                                ; $470D: $08 $08 $00
    rst $38                                       ; $4710: $FF
    inc sp                                        ; $4711: $33
    ld b, [hl]                                    ; $4712: $46
    ld c, h                                       ; $4713: $4C
    ld b, [hl]                                    ; $4714: $46
    ld h, l                                       ; $4715: $65
    ld b, [hl]                                    ; $4716: $46
    ld c, h                                       ; $4717: $4C
    ld b, [hl]                                    ; $4718: $46
    ld b, [hl]                                    ; $4719: $46
    inc c                                         ; $471A: $0C
    ld b, a                                       ; $471B: $47
    ld c, l                                       ; $471C: $4D
    ld [$0008], sp                                ; $471D: $08 $08 $00
    ld bc, $45E8                                  ; $4720: $01 $E8 $45
    ld bc, $1A46                                  ; $4723: $01 $46 $1A
    ld b, [hl]                                    ; $4726: $46
    ld bc, $4646                                  ; $4727: $01 $46 $46
    inc e                                         ; $472A: $1C
    ld b, a                                       ; $472B: $47
    ld c, l                                       ; $472C: $4D
    ld [$FF08], sp                                ; $472D: $08 $08 $FF
    nop                                           ; $4730: $00
    push bc                                       ; $4731: $C5
    ld b, [hl]                                    ; $4732: $46
    sbc $46                                       ; $4733: $DE $46
    di                                            ; $4735: $F3
    ld b, [hl]                                    ; $4736: $46
    sbc $46                                       ; $4737: $DE $46
    ld b, [hl]                                    ; $4739: $46
    inc l                                         ; $473A: $2C
    ld b, a                                       ; $473B: $47
    ld c, l                                       ; $473C: $4D
    ld [$0108], sp                                ; $473D: $08 $08 $01
    nop                                           ; $4740: $00
    ld a, [hl]                                    ; $4741: $7E
    ld b, [hl]                                    ; $4742: $46
    sub a                                         ; $4743: $97
    ld b, [hl]                                    ; $4744: $46
    xor h                                         ; $4745: $AC
    ld b, [hl]                                    ; $4746: $46
    sub a                                         ; $4747: $97
    ld b, [hl]                                    ; $4748: $46
    ld b, [hl]                                    ; $4749: $46
    inc a                                         ; $474A: $3C
    ld b, a                                       ; $474B: $47
    ld c, l                                       ; $474C: $4D
    ld [$0008], sp                                ; $474D: $08 $08 $00
    cp $33                                        ; $4750: $FE $33
    ld b, [hl]                                    ; $4752: $46
    ld c, h                                       ; $4753: $4C
    ld b, [hl]                                    ; $4754: $46
    ld h, l                                       ; $4755: $65
    ld b, [hl]                                    ; $4756: $46
    ld c, h                                       ; $4757: $4C
    ld b, [hl]                                    ; $4758: $46
    ld b, [hl]                                    ; $4759: $46
    ld c, h                                       ; $475A: $4C
    ld b, a                                       ; $475B: $47
    ld c, l                                       ; $475C: $4D
    ld [$0008], sp                                ; $475D: $08 $08 $00
    ld [bc], a                                    ; $4760: $02
    add sp, $45                                   ; $4761: $E8 $45
    ld bc, $1A46                                  ; $4763: $01 $46 $1A
    ld b, [hl]                                    ; $4766: $46
    ld bc, $4646                                  ; $4767: $01 $46 $46
    ld e, h                                       ; $476A: $5C
    ld b, a                                       ; $476B: $47
    ld c, l                                       ; $476C: $4D
    ld [$FE08], sp                                ; $476D: $08 $08 $FE
    nop                                           ; $4770: $00
    push bc                                       ; $4771: $C5
    ld b, [hl]                                    ; $4772: $46
    sbc $46                                       ; $4773: $DE $46
    di                                            ; $4775: $F3
    ld b, [hl]                                    ; $4776: $46
    sbc $46                                       ; $4777: $DE $46
    ld b, [hl]                                    ; $4779: $46
    ld l, h                                       ; $477A: $6C
    ld b, a                                       ; $477B: $47
    ld c, l                                       ; $477C: $4D
    ld [$0208], sp                                ; $477D: $08 $08 $02
    nop                                           ; $4780: $00
    ld a, [hl]                                    ; $4781: $7E
    ld b, [hl]                                    ; $4782: $46
    sub a                                         ; $4783: $97
    ld b, [hl]                                    ; $4784: $46
    xor h                                         ; $4785: $AC
    ld b, [hl]                                    ; $4786: $46
    sub a                                         ; $4787: $97
    ld b, [hl]                                    ; $4788: $46
    ld b, [hl]                                    ; $4789: $46
    ld a, h                                       ; $478A: $7C
    ld b, a                                       ; $478B: $47
    ld c, h                                       ; $478C: $4C
    rst $38                                       ; $478D: $FF
    nop                                           ; $478E: $00
    nop                                           ; $478F: $00
    ld c, h                                       ; $4790: $4C
    ld b, [hl]                                    ; $4791: $46
    nop                                           ; $4792: $00
    ld b, [hl]                                    ; $4793: $46
    adc h                                         ; $4794: $8C
    ld b, a                                       ; $4795: $47
    ld c, h                                       ; $4796: $4C
    rst $38                                       ; $4797: $FF
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    ld bc, $0046                                  ; $479A: $01 $46 $00
    ld b, [hl]                                    ; $479D: $46
    sub [hl]                                      ; $479E: $96
    ld b, a                                       ; $479F: $47
    ld c, h                                       ; $47A0: $4C
    rst $38                                       ; $47A1: $FF
    nop                                           ; $47A2: $00
    nop                                           ; $47A3: $00
    sbc $46                                       ; $47A4: $DE $46
    nop                                           ; $47A6: $00
    ld b, [hl]                                    ; $47A7: $46
    and b                                         ; $47A8: $A0
    ld b, a                                       ; $47A9: $47
    ld c, h                                       ; $47AA: $4C
    rst $38                                       ; $47AB: $FF
    nop                                           ; $47AC: $00
    nop                                           ; $47AD: $00
    sub a                                         ; $47AE: $97
    ld b, [hl]                                    ; $47AF: $46
    nop                                           ; $47B0: $00
    ld b, [hl]                                    ; $47B1: $46
    xor d                                         ; $47B2: $AA
    ld b, a                                       ; $47B3: $47
    ld c, h                                       ; $47B4: $4C
    rst $38                                       ; $47B5: $FF
    nop                                           ; $47B6: $00
    nop                                           ; $47B7: $00
    rst $08                                       ; $47B8: $CF
    ld b, l                                       ; $47B9: $45
    nop                                           ; $47BA: $00
    ld b, [hl]                                    ; $47BB: $46
    or h                                          ; $47BC: $B4
    ld b, a                                       ; $47BD: $47
    ld c, h                                       ; $47BE: $4C
    rst $38                                       ; $47BF: $FF
    nop                                           ; $47C0: $00
    nop                                           ; $47C1: $00
    or [hl]                                       ; $47C2: $B6
    ld b, l                                       ; $47C3: $45
    nop                                           ; $47C4: $00
    ld b, [hl]                                    ; $47C5: $46
    cp [hl]                                       ; $47C6: $BE
    ld b, a                                       ; $47C7: $47
    ld c, h                                       ; $47C8: $4C
    rst $38                                       ; $47C9: $FF
    nop                                           ; $47CA: $00
    nop                                           ; $47CB: $00
    sbc l                                         ; $47CC: $9D
    ld b, l                                       ; $47CD: $45
    nop                                           ; $47CE: $00
    ld b, [hl]                                    ; $47CF: $46
    ret z                                         ; $47D0: $C8

    ld b, a                                       ; $47D1: $47
    ld c, h                                       ; $47D2: $4C
    rst $38                                       ; $47D3: $FF
    nop                                           ; $47D4: $00
    nop                                           ; $47D5: $00
    add h                                         ; $47D6: $84
    ld b, l                                       ; $47D7: $45
    nop                                           ; $47D8: $00
    ld b, [hl]                                    ; $47D9: $46
    jp nc, Jump_011_4B47                          ; $47DA: $D2 $47 $4B

    inc bc                                        ; $47DD: $03
    ld de, $0000                                  ; $47DE: $11 $00 $00
    di                                            ; $47E1: $F3
    ld b, a                                       ; $47E2: $47
    ld de, $0003                                  ; $47E3: $11 $03 $00
    ld a, [$1147]                                 ; $47E6: $FA $47 $11
    ld [bc], a                                    ; $47E9: $02
    nop                                           ; $47EA: $00
    ld [$1148], sp                                ; $47EB: $08 $48 $11
    ld bc, $0100                                  ; $47EE: $01 $00 $01
    ld c, b                                       ; $47F1: $48
    rst $38                                       ; $47F2: $FF
    inc d                                         ; $47F3: $14
    ld de, $478C                                  ; $47F4: $11 $8C $47
    ld h, d                                       ; $47F7: $62
    ld bc, $1412                                  ; $47F8: $01 $12 $14
    ld de, $4796                                  ; $47FB: $11 $96 $47
    ld h, d                                       ; $47FE: $62
    ld bc, $1412                                  ; $47FF: $01 $12 $14
    ld de, $47A0                                  ; $4802: $11 $A0 $47
    ld h, d                                       ; $4805: $62
    ld bc, $1412                                  ; $4806: $01 $12 $14
    ld de, $47AA                                  ; $4809: $11 $AA $47
    ld h, d                                       ; $480C: $62
    ld bc, $F012                                  ; $480D: $01 $12 $F0
    ld hl, sp+$00                                 ; $4810: $F8 $00
    inc bc                                        ; $4812: $03
    ldh a, [rP1]                                  ; $4813: $F0 $00
    ld bc, $F803                                  ; $4815: $01 $03 $F8
    ld hl, sp+$04                                 ; $4818: $F8 $04
    inc bc                                        ; $481A: $03
    ld hl, sp+$00                                 ; $481B: $F8 $00
    dec b                                         ; $481D: $05
    inc bc                                        ; $481E: $03
    nop                                           ; $481F: $00
    ld hl, sp+$07                                 ; $4820: $F8 $07
    ld [bc], a                                    ; $4822: $02
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    ld [$8002], sp                                ; $4825: $08 $02 $80
    ldh a, [rP1]                                  ; $4828: $F0 $00
    nop                                           ; $482A: $00
    inc hl                                        ; $482B: $23
    ldh a, [$F8]                                  ; $482C: $F0 $F8
    ld bc, $F823                                  ; $482E: $01 $23 $F8
    nop                                           ; $4831: $00
    inc b                                         ; $4832: $04
    inc hl                                        ; $4833: $23
    ld hl, sp-$08                                 ; $4834: $F8 $F8
    dec b                                         ; $4836: $05
    inc hl                                        ; $4837: $23
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    rlca                                          ; $483A: $07
    ld [hl+], a                                   ; $483B: $22
    nop                                           ; $483C: $00
    ld hl, sp+$08                                 ; $483D: $F8 $08
    ld [hl+], a                                   ; $483F: $22
    add b                                         ; $4840: $80
    ldh a, [$F8]                                  ; $4841: $F0 $F8
    dec bc                                        ; $4843: $0B
    inc bc                                        ; $4844: $03
    ldh a, [rP1]                                  ; $4845: $F0 $00
    inc c                                         ; $4847: $0C
    inc bc                                        ; $4848: $03
    ld hl, sp-$08                                 ; $4849: $F8 $F8
    ld c, $03                                     ; $484B: $0E $03
    ld hl, sp+$00                                 ; $484D: $F8 $00
    rrca                                          ; $484F: $0F
    inc bc                                        ; $4850: $03
    nop                                           ; $4851: $00
    ld hl, sp+$11                                 ; $4852: $F8 $11
    ld [bc], a                                    ; $4854: $02
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    ld [de], a                                    ; $4857: $12
    ld [bc], a                                    ; $4858: $02
    add b                                         ; $4859: $80
    ldh a, [rP1]                                  ; $485A: $F0 $00
    dec bc                                        ; $485C: $0B
    inc hl                                        ; $485D: $23
    ldh a, [$F8]                                  ; $485E: $F0 $F8
    inc c                                         ; $4860: $0C
    inc hl                                        ; $4861: $23
    ld hl, sp+$00                                 ; $4862: $F8 $00
    ld c, $23                                     ; $4864: $0E $23
    ld hl, sp-$08                                 ; $4866: $F8 $F8
    rrca                                          ; $4868: $0F
    inc hl                                        ; $4869: $23
    nop                                           ; $486A: $00
    nop                                           ; $486B: $00
    ld de, $0022                                  ; $486C: $11 $22 $00
    ld hl, sp+$12                                 ; $486F: $F8 $12
    ld [hl+], a                                   ; $4871: $22
    add b                                         ; $4872: $80
    pop af                                        ; $4873: $F1
    ld hl, sp+$02                                 ; $4874: $F8 $02
    inc bc                                        ; $4876: $03
    pop af                                        ; $4877: $F1
    nop                                           ; $4878: $00
    inc bc                                        ; $4879: $03
    inc bc                                        ; $487A: $03
    ld hl, sp-$08                                 ; $487B: $F8 $F8
    dec d                                         ; $487D: $15
    inc bc                                        ; $487E: $03
    ld hl, sp+$00                                 ; $487F: $F8 $00
    ld d, $03                                     ; $4881: $16 $03
    nop                                           ; $4883: $00
    ld hl, sp+$17                                 ; $4884: $F8 $17
    ld [bc], a                                    ; $4886: $02
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    jr @+$04                                      ; $4889: $18 $02

    add b                                         ; $488B: $80
    ldh a, [$F8]                                  ; $488C: $F0 $F8
    ld [bc], a                                    ; $488E: $02
    inc bc                                        ; $488F: $03
    ldh a, [rP1]                                  ; $4890: $F0 $00
    inc bc                                        ; $4892: $03
    inc bc                                        ; $4893: $03
    nop                                           ; $4894: $00
    nop                                           ; $4895: $00
    add hl, bc                                    ; $4896: $09
    ld [bc], a                                    ; $4897: $02
    nop                                           ; $4898: $00
    ld sp, hl                                     ; $4899: $F9
    add hl, bc                                    ; $489A: $09
    ld [hl+], a                                   ; $489B: $22
    ld hl, sp+$00                                 ; $489C: $F8 $00
    ld b, $03                                     ; $489E: $06 $03
    ld hl, sp-$08                                 ; $48A0: $F8 $F8
    ld b, $23                                     ; $48A2: $06 $23
    add b                                         ; $48A4: $80
    pop af                                        ; $48A5: $F1
    ld hl, sp+$02                                 ; $48A6: $F8 $02
    inc bc                                        ; $48A8: $03
    pop af                                        ; $48A9: $F1
    nop                                           ; $48AA: $00
    inc bc                                        ; $48AB: $03
    inc bc                                        ; $48AC: $03
    ld hl, sp+$00                                 ; $48AD: $F8 $00
    dec d                                         ; $48AF: $15
    inc hl                                        ; $48B0: $23
    ld hl, sp-$08                                 ; $48B1: $F8 $F8
    ld d, $23                                     ; $48B3: $16 $23
    nop                                           ; $48B5: $00
    nop                                           ; $48B6: $00
    rla                                           ; $48B7: $17
    ld [hl+], a                                   ; $48B8: $22
    nop                                           ; $48B9: $00
    ld hl, sp+$18                                 ; $48BA: $F8 $18
    ld [hl+], a                                   ; $48BC: $22
    add b                                         ; $48BD: $80
    pop af                                        ; $48BE: $F1
    nop                                           ; $48BF: $00
    ld a, [bc]                                    ; $48C0: $0A
    inc bc                                        ; $48C1: $03
    pop af                                        ; $48C2: $F1
    ld sp, hl                                     ; $48C3: $F9
    ld a, [bc]                                    ; $48C4: $0A
    inc hl                                        ; $48C5: $23
    ld hl, sp-$08                                 ; $48C6: $F8 $F8
    ld a, [de]                                    ; $48C8: $1A
    inc bc                                        ; $48C9: $03
    ld hl, sp+$00                                 ; $48CA: $F8 $00
    dec de                                        ; $48CC: $1B
    inc bc                                        ; $48CD: $03
    nop                                           ; $48CE: $00
    ld hl, sp+$1C                                 ; $48CF: $F8 $1C
    ld [bc], a                                    ; $48D1: $02
    nop                                           ; $48D2: $00
    nop                                           ; $48D3: $00
    dec e                                         ; $48D4: $1D
    ld [bc], a                                    ; $48D5: $02
    add b                                         ; $48D6: $80
    ldh a, [rP1]                                  ; $48D7: $F0 $00
    ld a, [bc]                                    ; $48D9: $0A
    inc bc                                        ; $48DA: $03
    ldh a, [$F9]                                  ; $48DB: $F0 $F9
    ld a, [bc]                                    ; $48DD: $0A
    inc hl                                        ; $48DE: $23
    ld hl, sp+$00                                 ; $48DF: $F8 $00
    dec c                                         ; $48E1: $0D
    inc bc                                        ; $48E2: $03
    ld hl, sp-$07                                 ; $48E3: $F8 $F9
    dec c                                         ; $48E5: $0D
    inc hl                                        ; $48E6: $23
    nop                                           ; $48E7: $00
    nop                                           ; $48E8: $00
    db $10                                        ; $48E9: $10
    ld [bc], a                                    ; $48EA: $02
    nop                                           ; $48EB: $00
    ld sp, hl                                     ; $48EC: $F9
    db $10                                        ; $48ED: $10
    ld [hl+], a                                   ; $48EE: $22
    add b                                         ; $48EF: $80
    pop af                                        ; $48F0: $F1
    nop                                           ; $48F1: $00
    ld a, [bc]                                    ; $48F2: $0A
    inc bc                                        ; $48F3: $03
    pop af                                        ; $48F4: $F1
    ld sp, hl                                     ; $48F5: $F9
    ld a, [bc]                                    ; $48F6: $0A
    inc hl                                        ; $48F7: $23
    ld hl, sp+$01                                 ; $48F8: $F8 $01
    ld a, [de]                                    ; $48FA: $1A
    inc hl                                        ; $48FB: $23
    ld hl, sp-$07                                 ; $48FC: $F8 $F9
    dec de                                        ; $48FE: $1B
    inc hl                                        ; $48FF: $23
    nop                                           ; $4900: $00
    ld bc, $221C                                  ; $4901: $01 $1C $22
    nop                                           ; $4904: $00
    ld sp, hl                                     ; $4905: $F9
    dec e                                         ; $4906: $1D
    ld [hl+], a                                   ; $4907: $22
    add b                                         ; $4908: $80
    pop af                                        ; $4909: $F1
    ld hl, sp+$1E                                 ; $490A: $F8 $1E
    inc bc                                        ; $490C: $03
    pop af                                        ; $490D: $F1
    nop                                           ; $490E: $00
    rra                                           ; $490F: $1F
    inc bc                                        ; $4910: $03
    ld hl, sp-$08                                 ; $4911: $F8 $F8
    jr nz, @+$05                                  ; $4913: $20 $03

    ld hl, sp+$00                                 ; $4915: $F8 $00
    ld hl, $0003                                  ; $4917: $21 $03 $00
    ld hl, sp+$25                                 ; $491A: $F8 $25
    ld [bc], a                                    ; $491C: $02
    nop                                           ; $491D: $00
    nop                                           ; $491E: $00
    ld h, $02                                     ; $491F: $26 $02
    add b                                         ; $4921: $80
    ldh a, [$F8]                                  ; $4922: $F0 $F8
    ld e, $03                                     ; $4924: $1E $03
    ldh a, [rP1]                                  ; $4926: $F0 $00
    rra                                           ; $4928: $1F
    inc bc                                        ; $4929: $03
    ld hl, sp-$04                                 ; $492A: $F8 $FC
    ld [hl+], a                                   ; $492C: $22
    inc bc                                        ; $492D: $03
    nop                                           ; $492E: $00
    ld hl, sp+$27                                 ; $492F: $F8 $27
    ld [bc], a                                    ; $4931: $02
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    jr z, jr_011_4938                             ; $4934: $28 $02

    add b                                         ; $4936: $80
    pop af                                        ; $4937: $F1

jr_011_4938:
    ld hl, sp+$1E                                 ; $4938: $F8 $1E
    inc bc                                        ; $493A: $03
    pop af                                        ; $493B: $F1
    nop                                           ; $493C: $00
    rra                                           ; $493D: $1F
    inc bc                                        ; $493E: $03
    ld hl, sp-$08                                 ; $493F: $F8 $F8
    inc hl                                        ; $4941: $23
    inc bc                                        ; $4942: $03
    ld hl, sp+$00                                 ; $4943: $F8 $00
    inc h                                         ; $4945: $24
    inc bc                                        ; $4946: $03
    nop                                           ; $4947: $00
    ld hl, sp+$29                                 ; $4948: $F8 $29
    ld [bc], a                                    ; $494A: $02
    nop                                           ; $494B: $00
    nop                                           ; $494C: $00
    ld a, [hl+]                                   ; $494D: $2A
    ld [bc], a                                    ; $494E: $02
    add b                                         ; $494F: $80
    pop af                                        ; $4950: $F1
    nop                                           ; $4951: $00
    ld e, $23                                     ; $4952: $1E $23
    pop af                                        ; $4954: $F1
    ld hl, sp+$1F                                 ; $4955: $F8 $1F
    inc hl                                        ; $4957: $23
    ld hl, sp+$00                                 ; $4958: $F8 $00
    jr nz, jr_011_497F                            ; $495A: $20 $23

    ld hl, sp-$08                                 ; $495C: $F8 $F8
    ld hl, $0023                                  ; $495E: $21 $23 $00
    nop                                           ; $4961: $00
    dec h                                         ; $4962: $25
    ld [hl+], a                                   ; $4963: $22
    nop                                           ; $4964: $00
    ld hl, sp+$26                                 ; $4965: $F8 $26
    ld [hl+], a                                   ; $4967: $22
    add b                                         ; $4968: $80
    ldh a, [rP1]                                  ; $4969: $F0 $00
    ld e, $23                                     ; $496B: $1E $23
    ldh a, [$F8]                                  ; $496D: $F0 $F8
    rra                                           ; $496F: $1F
    inc hl                                        ; $4970: $23
    ld hl, sp-$04                                 ; $4971: $F8 $FC
    ld [hl+], a                                   ; $4973: $22
    inc hl                                        ; $4974: $23
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    daa                                           ; $4977: $27
    ld [hl+], a                                   ; $4978: $22
    nop                                           ; $4979: $00
    ld hl, sp+$28                                 ; $497A: $F8 $28
    ld [hl+], a                                   ; $497C: $22
    add b                                         ; $497D: $80
    pop af                                        ; $497E: $F1

jr_011_497F:
    nop                                           ; $497F: $00
    ld e, $23                                     ; $4980: $1E $23
    pop af                                        ; $4982: $F1
    ld hl, sp+$1F                                 ; $4983: $F8 $1F
    inc hl                                        ; $4985: $23
    ld hl, sp+$00                                 ; $4986: $F8 $00
    inc hl                                        ; $4988: $23
    inc hl                                        ; $4989: $23
    ld hl, sp-$08                                 ; $498A: $F8 $F8
    inc h                                         ; $498C: $24
    inc hl                                        ; $498D: $23
    nop                                           ; $498E: $00
    nop                                           ; $498F: $00
    add hl, hl                                    ; $4990: $29
    ld [hl+], a                                   ; $4991: $22
    nop                                           ; $4992: $00
    ld hl, sp+$2A                                 ; $4993: $F8 $2A
    ld [hl+], a                                   ; $4995: $22
    add b                                         ; $4996: $80
    ld c, l                                       ; $4997: $4D
    ld [$0008], sp                                ; $4998: $08 $08 $00
    rst $38                                       ; $499B: $FF
    cp [hl]                                       ; $499C: $BE
    ld c, b                                       ; $499D: $48
    rst $10                                       ; $499E: $D7
    ld c, b                                       ; $499F: $48
    ldh a, [rOBP0]                                ; $49A0: $F0 $48
    rst $10                                       ; $49A2: $D7
    ld c, b                                       ; $49A3: $48
    ld b, [hl]                                    ; $49A4: $46
    sub a                                         ; $49A5: $97
    ld c, c                                       ; $49A6: $49
    ld c, l                                       ; $49A7: $4D
    ld [$0008], sp                                ; $49A8: $08 $08 $00
    ld bc, $4873                                  ; $49AB: $01 $73 $48
    adc h                                         ; $49AE: $8C
    ld c, b                                       ; $49AF: $48
    and l                                         ; $49B0: $A5
    ld c, b                                       ; $49B1: $48
    adc h                                         ; $49B2: $8C
    ld c, b                                       ; $49B3: $48
    ld b, [hl]                                    ; $49B4: $46
    and a                                         ; $49B5: $A7
    ld c, c                                       ; $49B6: $49
    ld c, l                                       ; $49B7: $4D
    ld [$FF08], sp                                ; $49B8: $08 $08 $FF
    nop                                           ; $49BB: $00
    ld d, b                                       ; $49BC: $50
    ld c, c                                       ; $49BD: $49
    ld l, c                                       ; $49BE: $69
    ld c, c                                       ; $49BF: $49
    ld a, [hl]                                    ; $49C0: $7E
    ld c, c                                       ; $49C1: $49
    ld l, c                                       ; $49C2: $69
    ld c, c                                       ; $49C3: $49
    ld b, [hl]                                    ; $49C4: $46
    or a                                          ; $49C5: $B7
    ld c, c                                       ; $49C6: $49
    ld c, l                                       ; $49C7: $4D
    ld [$0108], sp                                ; $49C8: $08 $08 $01
    nop                                           ; $49CB: $00
    add hl, bc                                    ; $49CC: $09
    ld c, c                                       ; $49CD: $49
    ld [hl+], a                                   ; $49CE: $22
    ld c, c                                       ; $49CF: $49
    scf                                           ; $49D0: $37
    ld c, c                                       ; $49D1: $49
    ld [hl+], a                                   ; $49D2: $22
    ld c, c                                       ; $49D3: $49
    ld b, [hl]                                    ; $49D4: $46
    rst $00                                       ; $49D5: $C7
    ld c, c                                       ; $49D6: $49
    ld c, l                                       ; $49D7: $4D
    ld [$0008], sp                                ; $49D8: $08 $08 $00
    cp $BE                                        ; $49DB: $FE $BE
    ld c, b                                       ; $49DD: $48
    rst $10                                       ; $49DE: $D7
    ld c, b                                       ; $49DF: $48
    ldh a, [rOBP0]                                ; $49E0: $F0 $48
    rst $10                                       ; $49E2: $D7
    ld c, b                                       ; $49E3: $48
    ld b, [hl]                                    ; $49E4: $46
    rst $10                                       ; $49E5: $D7
    ld c, c                                       ; $49E6: $49
    ld c, l                                       ; $49E7: $4D
    ld [$0008], sp                                ; $49E8: $08 $08 $00
    ld [bc], a                                    ; $49EB: $02
    ld [hl], e                                    ; $49EC: $73
    ld c, b                                       ; $49ED: $48
    adc h                                         ; $49EE: $8C
    ld c, b                                       ; $49EF: $48
    and l                                         ; $49F0: $A5
    ld c, b                                       ; $49F1: $48
    adc h                                         ; $49F2: $8C
    ld c, b                                       ; $49F3: $48
    ld b, [hl]                                    ; $49F4: $46
    rst $20                                       ; $49F5: $E7
    ld c, c                                       ; $49F6: $49
    ld c, l                                       ; $49F7: $4D
    ld [$FE08], sp                                ; $49F8: $08 $08 $FE
    nop                                           ; $49FB: $00
    ld d, b                                       ; $49FC: $50
    ld c, c                                       ; $49FD: $49
    ld l, c                                       ; $49FE: $69
    ld c, c                                       ; $49FF: $49
    ld a, [hl]                                    ; $4A00: $7E
    ld c, c                                       ; $4A01: $49
    ld l, c                                       ; $4A02: $69
    ld c, c                                       ; $4A03: $49
    ld b, [hl]                                    ; $4A04: $46
    rst $30                                       ; $4A05: $F7
    ld c, c                                       ; $4A06: $49
    ld c, l                                       ; $4A07: $4D
    ld [$0208], sp                                ; $4A08: $08 $08 $02
    nop                                           ; $4A0B: $00
    add hl, bc                                    ; $4A0C: $09
    ld c, c                                       ; $4A0D: $49
    ld [hl+], a                                   ; $4A0E: $22
    ld c, c                                       ; $4A0F: $49
    scf                                           ; $4A10: $37
    ld c, c                                       ; $4A11: $49
    ld [hl+], a                                   ; $4A12: $22
    ld c, c                                       ; $4A13: $49
    ld b, [hl]                                    ; $4A14: $46
    rlca                                          ; $4A15: $07
    ld c, d                                       ; $4A16: $4A
    ld c, h                                       ; $4A17: $4C
    rst $38                                       ; $4A18: $FF
    nop                                           ; $4A19: $00
    nop                                           ; $4A1A: $00
    rst $10                                       ; $4A1B: $D7
    ld c, b                                       ; $4A1C: $48
    nop                                           ; $4A1D: $00
    ld b, [hl]                                    ; $4A1E: $46
    rla                                           ; $4A1F: $17
    ld c, d                                       ; $4A20: $4A
    ld c, h                                       ; $4A21: $4C
    rst $38                                       ; $4A22: $FF
    nop                                           ; $4A23: $00
    nop                                           ; $4A24: $00
    adc h                                         ; $4A25: $8C
    ld c, b                                       ; $4A26: $48
    nop                                           ; $4A27: $00
    ld b, [hl]                                    ; $4A28: $46
    ld hl, $4C4A                                  ; $4A29: $21 $4A $4C
    rst $38                                       ; $4A2C: $FF
    nop                                           ; $4A2D: $00
    nop                                           ; $4A2E: $00
    ld l, c                                       ; $4A2F: $69
    ld c, c                                       ; $4A30: $49
    nop                                           ; $4A31: $00
    ld b, [hl]                                    ; $4A32: $46
    dec hl                                        ; $4A33: $2B
    ld c, d                                       ; $4A34: $4A
    ld c, h                                       ; $4A35: $4C
    rst $38                                       ; $4A36: $FF
    nop                                           ; $4A37: $00
    nop                                           ; $4A38: $00
    ld [hl+], a                                   ; $4A39: $22
    ld c, c                                       ; $4A3A: $49
    nop                                           ; $4A3B: $00
    ld b, [hl]                                    ; $4A3C: $46
    dec [hl]                                      ; $4A3D: $35
    ld c, d                                       ; $4A3E: $4A
    ld c, h                                       ; $4A3F: $4C
    rst $38                                       ; $4A40: $FF
    nop                                           ; $4A41: $00
    nop                                           ; $4A42: $00
    ld e, d                                       ; $4A43: $5A
    ld c, b                                       ; $4A44: $48
    nop                                           ; $4A45: $00
    ld b, [hl]                                    ; $4A46: $46
    ccf                                           ; $4A47: $3F
    ld c, d                                       ; $4A48: $4A
    ld c, h                                       ; $4A49: $4C
    rst $38                                       ; $4A4A: $FF
    nop                                           ; $4A4B: $00
    nop                                           ; $4A4C: $00
    ld b, c                                       ; $4A4D: $41
    ld c, b                                       ; $4A4E: $48
    nop                                           ; $4A4F: $00
    ld b, [hl]                                    ; $4A50: $46
    ld c, c                                       ; $4A51: $49
    ld c, d                                       ; $4A52: $4A
    ld c, h                                       ; $4A53: $4C
    rst $38                                       ; $4A54: $FF
    nop                                           ; $4A55: $00
    nop                                           ; $4A56: $00
    jr z, @+$4A                                   ; $4A57: $28 $48

    nop                                           ; $4A59: $00
    ld b, [hl]                                    ; $4A5A: $46
    ld d, e                                       ; $4A5B: $53
    ld c, d                                       ; $4A5C: $4A
    ld c, h                                       ; $4A5D: $4C
    rst $38                                       ; $4A5E: $FF
    nop                                           ; $4A5F: $00
    nop                                           ; $4A60: $00
    rrca                                          ; $4A61: $0F
    ld c, b                                       ; $4A62: $48
    nop                                           ; $4A63: $00
    ld b, [hl]                                    ; $4A64: $46
    ld e, l                                       ; $4A65: $5D
    ld c, d                                       ; $4A66: $4A
    ld c, e                                       ; $4A67: $4B
    inc bc                                        ; $4A68: $03
    ld de, $0000                                  ; $4A69: $11 $00 $00
    ld a, [hl]                                    ; $4A6C: $7E
    ld c, d                                       ; $4A6D: $4A
    ld de, $0003                                  ; $4A6E: $11 $03 $00
    add l                                         ; $4A71: $85
    ld c, d                                       ; $4A72: $4A
    ld de, $0002                                  ; $4A73: $11 $02 $00
    sub e                                         ; $4A76: $93
    ld c, d                                       ; $4A77: $4A
    ld de, $0001                                  ; $4A78: $11 $01 $00
    adc h                                         ; $4A7B: $8C
    ld c, d                                       ; $4A7C: $4A
    rst $38                                       ; $4A7D: $FF
    inc d                                         ; $4A7E: $14
    ld de, $4A17                                  ; $4A7F: $11 $17 $4A
    ld h, d                                       ; $4A82: $62
    ld bc, $1412                                  ; $4A83: $01 $12 $14
    ld de, $4A21                                  ; $4A86: $11 $21 $4A
    ld h, d                                       ; $4A89: $62
    ld bc, $1412                                  ; $4A8A: $01 $12 $14
    ld de, $4A2B                                  ; $4A8D: $11 $2B $4A
    ld h, d                                       ; $4A90: $62
    ld bc, $1412                                  ; $4A91: $01 $12 $14
    ld de, $4A35                                  ; $4A94: $11 $35 $4A
    ld h, d                                       ; $4A97: $62
    ld bc, $F012                                  ; $4A98: $01 $12 $F0
    ld hl, sp+$00                                 ; $4A9B: $F8 $00
    inc bc                                        ; $4A9D: $03
    ldh a, [rP1]                                  ; $4A9E: $F0 $00
    ld bc, $F803                                  ; $4AA0: $01 $03 $F8
    ld hl, sp+$04                                 ; $4AA3: $F8 $04
    inc bc                                        ; $4AA5: $03
    ld hl, sp+$00                                 ; $4AA6: $F8 $00
    dec b                                         ; $4AA8: $05
    inc bc                                        ; $4AA9: $03
    nop                                           ; $4AAA: $00
    ld hl, sp+$07                                 ; $4AAB: $F8 $07
    ld [bc], a                                    ; $4AAD: $02
    nop                                           ; $4AAE: $00
    nop                                           ; $4AAF: $00
    ld [$8002], sp                                ; $4AB0: $08 $02 $80
    ldh a, [rP1]                                  ; $4AB3: $F0 $00
    nop                                           ; $4AB5: $00
    inc hl                                        ; $4AB6: $23
    ldh a, [$F8]                                  ; $4AB7: $F0 $F8
    ld bc, $F823                                  ; $4AB9: $01 $23 $F8
    nop                                           ; $4ABC: $00
    inc b                                         ; $4ABD: $04
    inc hl                                        ; $4ABE: $23
    ld hl, sp-$08                                 ; $4ABF: $F8 $F8
    dec b                                         ; $4AC1: $05
    inc hl                                        ; $4AC2: $23
    nop                                           ; $4AC3: $00
    nop                                           ; $4AC4: $00
    rlca                                          ; $4AC5: $07
    ld [hl+], a                                   ; $4AC6: $22
    nop                                           ; $4AC7: $00
    ld hl, sp+$08                                 ; $4AC8: $F8 $08
    ld [hl+], a                                   ; $4ACA: $22
    add b                                         ; $4ACB: $80
    ldh a, [$F8]                                  ; $4ACC: $F0 $F8
    dec bc                                        ; $4ACE: $0B
    inc bc                                        ; $4ACF: $03
    ldh a, [rP1]                                  ; $4AD0: $F0 $00
    inc c                                         ; $4AD2: $0C
    inc bc                                        ; $4AD3: $03
    ld hl, sp-$08                                 ; $4AD4: $F8 $F8
    ld c, $03                                     ; $4AD6: $0E $03
    ld hl, sp+$00                                 ; $4AD8: $F8 $00
    rrca                                          ; $4ADA: $0F
    inc bc                                        ; $4ADB: $03
    nop                                           ; $4ADC: $00
    ld hl, sp+$11                                 ; $4ADD: $F8 $11
    ld [bc], a                                    ; $4ADF: $02
    nop                                           ; $4AE0: $00
    nop                                           ; $4AE1: $00
    ld [de], a                                    ; $4AE2: $12
    ld [bc], a                                    ; $4AE3: $02
    add b                                         ; $4AE4: $80
    ldh a, [rP1]                                  ; $4AE5: $F0 $00
    dec bc                                        ; $4AE7: $0B
    inc hl                                        ; $4AE8: $23
    ldh a, [$F8]                                  ; $4AE9: $F0 $F8
    inc c                                         ; $4AEB: $0C
    inc hl                                        ; $4AEC: $23
    ld hl, sp+$00                                 ; $4AED: $F8 $00
    ld c, $23                                     ; $4AEF: $0E $23
    ld hl, sp-$08                                 ; $4AF1: $F8 $F8
    rrca                                          ; $4AF3: $0F
    inc hl                                        ; $4AF4: $23
    nop                                           ; $4AF5: $00
    nop                                           ; $4AF6: $00
    ld de, $0022                                  ; $4AF7: $11 $22 $00
    ld hl, sp+$12                                 ; $4AFA: $F8 $12
    ld [hl+], a                                   ; $4AFC: $22
    add b                                         ; $4AFD: $80
    pop af                                        ; $4AFE: $F1
    ld hl, sp+$02                                 ; $4AFF: $F8 $02
    inc bc                                        ; $4B01: $03
    pop af                                        ; $4B02: $F1
    nop                                           ; $4B03: $00
    inc bc                                        ; $4B04: $03
    inc bc                                        ; $4B05: $03
    ld hl, sp-$08                                 ; $4B06: $F8 $F8
    dec d                                         ; $4B08: $15
    inc bc                                        ; $4B09: $03
    ld hl, sp+$00                                 ; $4B0A: $F8 $00
    ld d, $03                                     ; $4B0C: $16 $03
    nop                                           ; $4B0E: $00
    ld hl, sp+$17                                 ; $4B0F: $F8 $17
    ld [bc], a                                    ; $4B11: $02
    nop                                           ; $4B12: $00
    nop                                           ; $4B13: $00
    jr @+$04                                      ; $4B14: $18 $02

    add b                                         ; $4B16: $80
    ldh a, [$F8]                                  ; $4B17: $F0 $F8
    ld [bc], a                                    ; $4B19: $02
    inc bc                                        ; $4B1A: $03
    ldh a, [rP1]                                  ; $4B1B: $F0 $00
    inc bc                                        ; $4B1D: $03
    inc bc                                        ; $4B1E: $03
    nop                                           ; $4B1F: $00
    nop                                           ; $4B20: $00
    add hl, bc                                    ; $4B21: $09
    ld [bc], a                                    ; $4B22: $02
    nop                                           ; $4B23: $00
    ld sp, hl                                     ; $4B24: $F9
    add hl, bc                                    ; $4B25: $09
    ld [hl+], a                                   ; $4B26: $22
    ld hl, sp+$00                                 ; $4B27: $F8 $00
    ld b, $03                                     ; $4B29: $06 $03
    ld hl, sp-$08                                 ; $4B2B: $F8 $F8
    ld b, $23                                     ; $4B2D: $06 $23
    add b                                         ; $4B2F: $80
    pop af                                        ; $4B30: $F1
    ld hl, sp+$02                                 ; $4B31: $F8 $02
    inc bc                                        ; $4B33: $03
    pop af                                        ; $4B34: $F1
    nop                                           ; $4B35: $00
    inc bc                                        ; $4B36: $03
    inc bc                                        ; $4B37: $03
    ld hl, sp+$00                                 ; $4B38: $F8 $00
    dec d                                         ; $4B3A: $15
    inc hl                                        ; $4B3B: $23
    ld hl, sp-$08                                 ; $4B3C: $F8 $F8
    ld d, $23                                     ; $4B3E: $16 $23
    nop                                           ; $4B40: $00
    nop                                           ; $4B41: $00
    rla                                           ; $4B42: $17
    ld [hl+], a                                   ; $4B43: $22
    nop                                           ; $4B44: $00
    ld hl, sp+$18                                 ; $4B45: $F8 $18

Jump_011_4B47:
    ld [hl+], a                                   ; $4B47: $22
    add b                                         ; $4B48: $80
    pop af                                        ; $4B49: $F1
    nop                                           ; $4B4A: $00
    ld a, [bc]                                    ; $4B4B: $0A
    inc bc                                        ; $4B4C: $03
    pop af                                        ; $4B4D: $F1
    ld sp, hl                                     ; $4B4E: $F9
    ld a, [bc]                                    ; $4B4F: $0A
    inc hl                                        ; $4B50: $23
    ld hl, sp-$08                                 ; $4B51: $F8 $F8
    ld a, [de]                                    ; $4B53: $1A
    inc bc                                        ; $4B54: $03
    ld hl, sp+$00                                 ; $4B55: $F8 $00
    dec de                                        ; $4B57: $1B
    inc bc                                        ; $4B58: $03
    nop                                           ; $4B59: $00
    ld hl, sp+$1C                                 ; $4B5A: $F8 $1C
    ld [bc], a                                    ; $4B5C: $02
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    dec e                                         ; $4B5F: $1D
    ld [bc], a                                    ; $4B60: $02
    add b                                         ; $4B61: $80
    ldh a, [rP1]                                  ; $4B62: $F0 $00
    ld a, [bc]                                    ; $4B64: $0A
    inc bc                                        ; $4B65: $03
    ldh a, [$F9]                                  ; $4B66: $F0 $F9
    ld a, [bc]                                    ; $4B68: $0A
    inc hl                                        ; $4B69: $23
    ld hl, sp+$00                                 ; $4B6A: $F8 $00
    dec c                                         ; $4B6C: $0D
    inc bc                                        ; $4B6D: $03
    ld hl, sp-$07                                 ; $4B6E: $F8 $F9
    dec c                                         ; $4B70: $0D
    inc hl                                        ; $4B71: $23
    nop                                           ; $4B72: $00
    nop                                           ; $4B73: $00
    db $10                                        ; $4B74: $10
    ld [bc], a                                    ; $4B75: $02
    nop                                           ; $4B76: $00
    ld sp, hl                                     ; $4B77: $F9
    db $10                                        ; $4B78: $10
    ld [hl+], a                                   ; $4B79: $22
    add b                                         ; $4B7A: $80
    pop af                                        ; $4B7B: $F1
    nop                                           ; $4B7C: $00
    ld a, [bc]                                    ; $4B7D: $0A
    inc bc                                        ; $4B7E: $03
    pop af                                        ; $4B7F: $F1
    ld sp, hl                                     ; $4B80: $F9
    ld a, [bc]                                    ; $4B81: $0A
    inc hl                                        ; $4B82: $23
    ld hl, sp+$01                                 ; $4B83: $F8 $01
    ld a, [de]                                    ; $4B85: $1A
    inc hl                                        ; $4B86: $23
    ld hl, sp-$07                                 ; $4B87: $F8 $F9
    dec de                                        ; $4B89: $1B
    inc hl                                        ; $4B8A: $23
    nop                                           ; $4B8B: $00
    ld bc, $221C                                  ; $4B8C: $01 $1C $22
    nop                                           ; $4B8F: $00
    ld sp, hl                                     ; $4B90: $F9
    dec e                                         ; $4B91: $1D
    ld [hl+], a                                   ; $4B92: $22
    add b                                         ; $4B93: $80
    pop af                                        ; $4B94: $F1
    ld hl, sp+$1E                                 ; $4B95: $F8 $1E
    inc bc                                        ; $4B97: $03
    pop af                                        ; $4B98: $F1
    nop                                           ; $4B99: $00
    rra                                           ; $4B9A: $1F
    inc bc                                        ; $4B9B: $03
    ld hl, sp-$08                                 ; $4B9C: $F8 $F8
    jr nz, @+$05                                  ; $4B9E: $20 $03

    ld hl, sp+$00                                 ; $4BA0: $F8 $00
    ld hl, $0003                                  ; $4BA2: $21 $03 $00
    ld hl, sp+$25                                 ; $4BA5: $F8 $25
    ld [bc], a                                    ; $4BA7: $02
    nop                                           ; $4BA8: $00
    nop                                           ; $4BA9: $00
    ld h, $02                                     ; $4BAA: $26 $02
    add b                                         ; $4BAC: $80
    ldh a, [$F8]                                  ; $4BAD: $F0 $F8
    ld e, $03                                     ; $4BAF: $1E $03
    ldh a, [rP1]                                  ; $4BB1: $F0 $00
    rra                                           ; $4BB3: $1F
    inc bc                                        ; $4BB4: $03
    ld hl, sp-$04                                 ; $4BB5: $F8 $FC
    ld [hl+], a                                   ; $4BB7: $22
    inc bc                                        ; $4BB8: $03
    nop                                           ; $4BB9: $00
    ld hl, sp+$27                                 ; $4BBA: $F8 $27
    ld [bc], a                                    ; $4BBC: $02
    nop                                           ; $4BBD: $00
    nop                                           ; $4BBE: $00
    jr z, jr_011_4BC3                             ; $4BBF: $28 $02

    add b                                         ; $4BC1: $80
    pop af                                        ; $4BC2: $F1

jr_011_4BC3:
    ld hl, sp+$1E                                 ; $4BC3: $F8 $1E
    inc bc                                        ; $4BC5: $03
    pop af                                        ; $4BC6: $F1
    nop                                           ; $4BC7: $00
    rra                                           ; $4BC8: $1F
    inc bc                                        ; $4BC9: $03
    ld hl, sp-$08                                 ; $4BCA: $F8 $F8
    inc hl                                        ; $4BCC: $23
    inc bc                                        ; $4BCD: $03
    ld hl, sp+$00                                 ; $4BCE: $F8 $00
    inc h                                         ; $4BD0: $24
    inc bc                                        ; $4BD1: $03
    nop                                           ; $4BD2: $00
    ld hl, sp+$29                                 ; $4BD3: $F8 $29
    ld [bc], a                                    ; $4BD5: $02
    nop                                           ; $4BD6: $00
    nop                                           ; $4BD7: $00
    ld a, [hl+]                                   ; $4BD8: $2A
    ld [bc], a                                    ; $4BD9: $02
    add b                                         ; $4BDA: $80
    pop af                                        ; $4BDB: $F1
    nop                                           ; $4BDC: $00
    ld e, $23                                     ; $4BDD: $1E $23
    pop af                                        ; $4BDF: $F1
    ld hl, sp+$1F                                 ; $4BE0: $F8 $1F
    inc hl                                        ; $4BE2: $23
    ld hl, sp+$00                                 ; $4BE3: $F8 $00
    jr nz, jr_011_4C0A                            ; $4BE5: $20 $23

    ld hl, sp-$08                                 ; $4BE7: $F8 $F8
    ld hl, $0023                                  ; $4BE9: $21 $23 $00
    nop                                           ; $4BEC: $00
    dec h                                         ; $4BED: $25
    ld [hl+], a                                   ; $4BEE: $22
    nop                                           ; $4BEF: $00
    ld hl, sp+$26                                 ; $4BF0: $F8 $26
    ld [hl+], a                                   ; $4BF2: $22
    add b                                         ; $4BF3: $80
    ldh a, [rP1]                                  ; $4BF4: $F0 $00
    ld e, $23                                     ; $4BF6: $1E $23
    ldh a, [$F8]                                  ; $4BF8: $F0 $F8
    rra                                           ; $4BFA: $1F
    inc hl                                        ; $4BFB: $23
    ld hl, sp-$04                                 ; $4BFC: $F8 $FC
    ld [hl+], a                                   ; $4BFE: $22
    inc hl                                        ; $4BFF: $23
    nop                                           ; $4C00: $00
    nop                                           ; $4C01: $00
    daa                                           ; $4C02: $27
    ld [hl+], a                                   ; $4C03: $22
    nop                                           ; $4C04: $00
    ld hl, sp+$28                                 ; $4C05: $F8 $28
    ld [hl+], a                                   ; $4C07: $22
    add b                                         ; $4C08: $80
    pop af                                        ; $4C09: $F1

jr_011_4C0A:
    nop                                           ; $4C0A: $00
    ld e, $23                                     ; $4C0B: $1E $23
    pop af                                        ; $4C0D: $F1
    ld hl, sp+$1F                                 ; $4C0E: $F8 $1F
    inc hl                                        ; $4C10: $23
    ld hl, sp+$00                                 ; $4C11: $F8 $00
    inc hl                                        ; $4C13: $23
    inc hl                                        ; $4C14: $23
    ld hl, sp-$08                                 ; $4C15: $F8 $F8
    inc h                                         ; $4C17: $24
    inc hl                                        ; $4C18: $23
    nop                                           ; $4C19: $00
    nop                                           ; $4C1A: $00
    add hl, hl                                    ; $4C1B: $29
    ld [hl+], a                                   ; $4C1C: $22
    nop                                           ; $4C1D: $00
    ld hl, sp+$2A                                 ; $4C1E: $F8 $2A
    ld [hl+], a                                   ; $4C20: $22
    add b                                         ; $4C21: $80
    ld c, l                                       ; $4C22: $4D
    ld [$0008], sp                                ; $4C23: $08 $08 $00
    rst $38                                       ; $4C26: $FF
    ld c, c                                       ; $4C27: $49
    ld c, e                                       ; $4C28: $4B
    ld h, d                                       ; $4C29: $62
    ld c, e                                       ; $4C2A: $4B
    ld a, e                                       ; $4C2B: $7B
    ld c, e                                       ; $4C2C: $4B
    ld h, d                                       ; $4C2D: $62
    ld c, e                                       ; $4C2E: $4B
    ld b, [hl]                                    ; $4C2F: $46
    ld [hl+], a                                   ; $4C30: $22
    ld c, h                                       ; $4C31: $4C
    ld c, l                                       ; $4C32: $4D
    ld [$0008], sp                                ; $4C33: $08 $08 $00
    ld bc, $4AFE                                  ; $4C36: $01 $FE $4A
    rla                                           ; $4C39: $17
    ld c, e                                       ; $4C3A: $4B
    jr nc, jr_011_4C88                            ; $4C3B: $30 $4B

    rla                                           ; $4C3D: $17
    ld c, e                                       ; $4C3E: $4B
    ld b, [hl]                                    ; $4C3F: $46
    ld [hl-], a                                   ; $4C40: $32
    ld c, h                                       ; $4C41: $4C
    ld c, l                                       ; $4C42: $4D
    ld [$FF08], sp                                ; $4C43: $08 $08 $FF
    nop                                           ; $4C46: $00
    db $DB                                        ; $4C47: $DB
    ld c, e                                       ; $4C48: $4B
    db $F4                                        ; $4C49: $F4
    ld c, e                                       ; $4C4A: $4B
    add hl, bc                                    ; $4C4B: $09

Call_011_4C4C:
Jump_011_4C4C:
    ld c, h                                       ; $4C4C: $4C
    db $F4                                        ; $4C4D: $F4
    ld c, e                                       ; $4C4E: $4B
    ld b, [hl]                                    ; $4C4F: $46
    ld b, d                                       ; $4C50: $42
    ld c, h                                       ; $4C51: $4C
    ld c, l                                       ; $4C52: $4D
    ld [$0108], sp                                ; $4C53: $08 $08 $01
    nop                                           ; $4C56: $00
    sub h                                         ; $4C57: $94
    ld c, e                                       ; $4C58: $4B
    xor l                                         ; $4C59: $AD
    ld c, e                                       ; $4C5A: $4B
    jp nz, $AD4B                                  ; $4C5B: $C2 $4B $AD

    ld c, e                                       ; $4C5E: $4B
    ld b, [hl]                                    ; $4C5F: $46
    ld d, d                                       ; $4C60: $52
    ld c, h                                       ; $4C61: $4C
    ld c, l                                       ; $4C62: $4D
    ld [$0008], sp                                ; $4C63: $08 $08 $00
    cp $49                                        ; $4C66: $FE $49
    ld c, e                                       ; $4C68: $4B
    ld h, d                                       ; $4C69: $62
    ld c, e                                       ; $4C6A: $4B
    ld a, e                                       ; $4C6B: $7B
    ld c, e                                       ; $4C6C: $4B
    ld h, d                                       ; $4C6D: $62
    ld c, e                                       ; $4C6E: $4B
    ld b, [hl]                                    ; $4C6F: $46
    ld h, d                                       ; $4C70: $62
    ld c, h                                       ; $4C71: $4C
    ld c, l                                       ; $4C72: $4D
    ld [$0008], sp                                ; $4C73: $08 $08 $00
    ld [bc], a                                    ; $4C76: $02
    cp $4A                                        ; $4C77: $FE $4A
    rla                                           ; $4C79: $17
    ld c, e                                       ; $4C7A: $4B
    jr nc, jr_011_4CC8                            ; $4C7B: $30 $4B

    rla                                           ; $4C7D: $17
    ld c, e                                       ; $4C7E: $4B
    ld b, [hl]                                    ; $4C7F: $46
    ld [hl], d                                    ; $4C80: $72
    ld c, h                                       ; $4C81: $4C
    ld c, l                                       ; $4C82: $4D
    ld [$FE08], sp                                ; $4C83: $08 $08 $FE
    nop                                           ; $4C86: $00
    db $DB                                        ; $4C87: $DB

jr_011_4C88:
    ld c, e                                       ; $4C88: $4B
    db $F4                                        ; $4C89: $F4
    ld c, e                                       ; $4C8A: $4B
    add hl, bc                                    ; $4C8B: $09
    ld c, h                                       ; $4C8C: $4C
    db $F4                                        ; $4C8D: $F4
    ld c, e                                       ; $4C8E: $4B
    ld b, [hl]                                    ; $4C8F: $46
    add d                                         ; $4C90: $82
    ld c, h                                       ; $4C91: $4C
    ld c, l                                       ; $4C92: $4D
    ld [$0208], sp                                ; $4C93: $08 $08 $02
    nop                                           ; $4C96: $00
    sub h                                         ; $4C97: $94
    ld c, e                                       ; $4C98: $4B
    xor l                                         ; $4C99: $AD
    ld c, e                                       ; $4C9A: $4B
    jp nz, $AD4B                                  ; $4C9B: $C2 $4B $AD

    ld c, e                                       ; $4C9E: $4B
    ld b, [hl]                                    ; $4C9F: $46
    sub d                                         ; $4CA0: $92
    ld c, h                                       ; $4CA1: $4C
    ld c, h                                       ; $4CA2: $4C
    rst $38                                       ; $4CA3: $FF
    nop                                           ; $4CA4: $00
    nop                                           ; $4CA5: $00
    ld h, d                                       ; $4CA6: $62
    ld c, e                                       ; $4CA7: $4B
    nop                                           ; $4CA8: $00
    ld b, [hl]                                    ; $4CA9: $46
    and d                                         ; $4CAA: $A2
    ld c, h                                       ; $4CAB: $4C
    ld c, h                                       ; $4CAC: $4C
    rst $38                                       ; $4CAD: $FF
    nop                                           ; $4CAE: $00
    nop                                           ; $4CAF: $00
    rla                                           ; $4CB0: $17
    ld c, e                                       ; $4CB1: $4B
    nop                                           ; $4CB2: $00
    ld b, [hl]                                    ; $4CB3: $46
    xor h                                         ; $4CB4: $AC
    ld c, h                                       ; $4CB5: $4C
    ld c, h                                       ; $4CB6: $4C
    rst $38                                       ; $4CB7: $FF
    nop                                           ; $4CB8: $00
    nop                                           ; $4CB9: $00
    db $F4                                        ; $4CBA: $F4
    ld c, e                                       ; $4CBB: $4B
    nop                                           ; $4CBC: $00
    ld b, [hl]                                    ; $4CBD: $46
    or [hl]                                       ; $4CBE: $B6
    ld c, h                                       ; $4CBF: $4C
    ld c, h                                       ; $4CC0: $4C
    rst $38                                       ; $4CC1: $FF
    nop                                           ; $4CC2: $00
    nop                                           ; $4CC3: $00
    xor l                                         ; $4CC4: $AD
    ld c, e                                       ; $4CC5: $4B
    nop                                           ; $4CC6: $00
    ld b, [hl]                                    ; $4CC7: $46

jr_011_4CC8:
    ret nz                                        ; $4CC8: $C0

    ld c, h                                       ; $4CC9: $4C
    ld c, h                                       ; $4CCA: $4C
    rst $38                                       ; $4CCB: $FF
    nop                                           ; $4CCC: $00
    nop                                           ; $4CCD: $00
    push hl                                       ; $4CCE: $E5
    ld c, d                                       ; $4CCF: $4A
    nop                                           ; $4CD0: $00
    ld b, [hl]                                    ; $4CD1: $46
    jp z, Jump_011_4C4C                           ; $4CD2: $CA $4C $4C

    rst $38                                       ; $4CD5: $FF
    nop                                           ; $4CD6: $00
    nop                                           ; $4CD7: $00
    call z, $004A                                 ; $4CD8: $CC $4A $00
    ld b, [hl]                                    ; $4CDB: $46
    call nc, Call_011_4C4C                        ; $4CDC: $D4 $4C $4C
    rst $38                                       ; $4CDF: $FF
    nop                                           ; $4CE0: $00
    nop                                           ; $4CE1: $00
    or e                                          ; $4CE2: $B3
    ld c, d                                       ; $4CE3: $4A
    nop                                           ; $4CE4: $00
    ld b, [hl]                                    ; $4CE5: $46
    sbc $4C                                       ; $4CE6: $DE $4C
    ld c, h                                       ; $4CE8: $4C
    rst $38                                       ; $4CE9: $FF
    nop                                           ; $4CEA: $00
    nop                                           ; $4CEB: $00
    sbc d                                         ; $4CEC: $9A
    ld c, d                                       ; $4CED: $4A
    nop                                           ; $4CEE: $00
    ld b, [hl]                                    ; $4CEF: $46
    add sp, $4C                                   ; $4CF0: $E8 $4C
    ld c, h                                       ; $4CF2: $4C
    ld [bc], a                                    ; $4CF3: $02
    nop                                           ; $4CF4: $00
    db $FC                                        ; $4CF5: $FC
    db $F4                                        ; $4CF6: $F4
    ld c, e                                       ; $4CF7: $4B
    ld [bc], a                                    ; $4CF8: $02
    nop                                           ; $4CF9: $00
    db $FD                                        ; $4CFA: $FD
    db $F4                                        ; $4CFB: $F4
    ld c, e                                       ; $4CFC: $4B
    ld [bc], a                                    ; $4CFD: $02
    nop                                           ; $4CFE: $00
    cp $F4                                        ; $4CFF: $FE $F4
    ld c, e                                       ; $4D01: $4B
    ld [bc], a                                    ; $4D02: $02
    nop                                           ; $4D03: $00
    rst $38                                       ; $4D04: $FF
    db $F4                                        ; $4D05: $F4
    ld c, e                                       ; $4D06: $4B
    ld [bc], a                                    ; $4D07: $02
    nop                                           ; $4D08: $00
    nop                                           ; $4D09: $00
    db $F4                                        ; $4D0A: $F4
    ld c, e                                       ; $4D0B: $4B
    ld [bc], a                                    ; $4D0C: $02
    nop                                           ; $4D0D: $00
    ld bc, $4BF4                                  ; $4D0E: $01 $F4 $4B
    ld [bc], a                                    ; $4D11: $02
    nop                                           ; $4D12: $00
    ld [bc], a                                    ; $4D13: $02
    db $F4                                        ; $4D14: $F4
    ld c, e                                       ; $4D15: $4B
    ld [bc], a                                    ; $4D16: $02
    nop                                           ; $4D17: $00
    inc bc                                        ; $4D18: $03
    db $F4                                        ; $4D19: $F4
    ld c, e                                       ; $4D1A: $4B
    ld [bc], a                                    ; $4D1B: $02
    nop                                           ; $4D1C: $00
    inc b                                         ; $4D1D: $04
    db $F4                                        ; $4D1E: $F4
    ld c, e                                       ; $4D1F: $4B
    nop                                           ; $4D20: $00
    ld b, [hl]                                    ; $4D21: $46
    or [hl]                                       ; $4D22: $B6
    ld c, h                                       ; $4D23: $4C
    ld c, h                                       ; $4D24: $4C
    ld [bc], a                                    ; $4D25: $02
    nop                                           ; $4D26: $00
    db $FC                                        ; $4D27: $FC
    xor l                                         ; $4D28: $AD
    ld c, e                                       ; $4D29: $4B
    ld [bc], a                                    ; $4D2A: $02
    nop                                           ; $4D2B: $00
    db $FD                                        ; $4D2C: $FD
    xor l                                         ; $4D2D: $AD
    ld c, e                                       ; $4D2E: $4B
    ld [bc], a                                    ; $4D2F: $02
    nop                                           ; $4D30: $00
    cp $AD                                        ; $4D31: $FE $AD
    ld c, e                                       ; $4D33: $4B
    ld [bc], a                                    ; $4D34: $02
    nop                                           ; $4D35: $00
    rst $38                                       ; $4D36: $FF
    xor l                                         ; $4D37: $AD
    ld c, e                                       ; $4D38: $4B
    ld [bc], a                                    ; $4D39: $02
    nop                                           ; $4D3A: $00
    nop                                           ; $4D3B: $00
    xor l                                         ; $4D3C: $AD
    ld c, e                                       ; $4D3D: $4B
    ld [bc], a                                    ; $4D3E: $02
    nop                                           ; $4D3F: $00
    ld bc, $4BAD                                  ; $4D40: $01 $AD $4B
    ld [bc], a                                    ; $4D43: $02
    nop                                           ; $4D44: $00
    ld [bc], a                                    ; $4D45: $02
    xor l                                         ; $4D46: $AD
    ld c, e                                       ; $4D47: $4B
    ld [bc], a                                    ; $4D48: $02
    nop                                           ; $4D49: $00
    inc bc                                        ; $4D4A: $03
    xor l                                         ; $4D4B: $AD
    ld c, e                                       ; $4D4C: $4B
    ld [bc], a                                    ; $4D4D: $02
    nop                                           ; $4D4E: $00
    inc b                                         ; $4D4F: $04
    xor l                                         ; $4D50: $AD
    ld c, e                                       ; $4D51: $4B
    nop                                           ; $4D52: $00
    ld b, [hl]                                    ; $4D53: $46
    ret nz                                        ; $4D54: $C0

    ld c, h                                       ; $4D55: $4C
    ld c, l                                       ; $4D56: $4D
    ld [$FC02], sp                                ; $4D57: $08 $02 $FC
    nop                                           ; $4D5A: $00
    sbc d                                         ; $4D5B: $9A
    ld c, d                                       ; $4D5C: $4A
    call z, $E54A                                 ; $4D5D: $CC $4A $E5
    ld c, d                                       ; $4D60: $4A
    or e                                          ; $4D61: $B3
    ld c, d                                       ; $4D62: $4A
    ld b, [hl]                                    ; $4D63: $46
    ld d, [hl]                                    ; $4D64: $56
    ld c, l                                       ; $4D65: $4D
    ld c, e                                       ; $4D66: $4B
    inc bc                                        ; $4D67: $03
    ld de, $0000                                  ; $4D68: $11 $00 $00
    ld a, l                                       ; $4D6B: $7D
    ld c, l                                       ; $4D6C: $4D
    ld de, $0003                                  ; $4D6D: $11 $03 $00
    add h                                         ; $4D70: $84
    ld c, l                                       ; $4D71: $4D
    ld de, $0002                                  ; $4D72: $11 $02 $00
    sub d                                         ; $4D75: $92
    ld c, l                                       ; $4D76: $4D

Call_011_4D77:
Jump_011_4D77:
    ld de, $0001                                  ; $4D77: $11 $01 $00
    adc e                                         ; $4D7A: $8B
    ld c, l                                       ; $4D7B: $4D
    rst $38                                       ; $4D7C: $FF
    inc d                                         ; $4D7D: $14
    ld de, $4CA2                                  ; $4D7E: $11 $A2 $4C
    ld h, d                                       ; $4D81: $62
    ld bc, $1412                                  ; $4D82: $01 $12 $14
    ld de, $4CAC                                  ; $4D85: $11 $AC $4C
    ld h, d                                       ; $4D88: $62
    ld bc, $1412                                  ; $4D89: $01 $12 $14
    ld de, $4CB6                                  ; $4D8C: $11 $B6 $4C
    ld h, d                                       ; $4D8F: $62
    ld bc, $1412                                  ; $4D90: $01 $12 $14
    ld de, $4CC0                                  ; $4D93: $11 $C0 $4C
    ld h, d                                       ; $4D96: $62
    ld bc, $0012                                  ; $4D97: $01 $12 $00
    nop                                           ; $4D9A: $00
    inc bc                                        ; $4D9B: $03
    nop                                           ; $4D9C: $00
    nop                                           ; $4D9D: $00
    ld hl, sp+$02                                 ; $4D9E: $F8 $02
    nop                                           ; $4DA0: $00
    ld hl, sp+$00                                 ; $4DA1: $F8 $00
    ld bc, $F800                                  ; $4DA3: $01 $00 $F8
    ld hl, sp+$00                                 ; $4DA6: $F8 $00
    nop                                           ; $4DA8: $00
    add b                                         ; $4DA9: $80
    nop                                           ; $4DAA: $00
    nop                                           ; $4DAB: $00
    rlca                                          ; $4DAC: $07
    nop                                           ; $4DAD: $00
    nop                                           ; $4DAE: $00
    ld hl, sp+$06                                 ; $4DAF: $F8 $06
    nop                                           ; $4DB1: $00
    ld hl, sp+$00                                 ; $4DB2: $F8 $00
    dec b                                         ; $4DB4: $05
    nop                                           ; $4DB5: $00
    ld hl, sp-$08                                 ; $4DB6: $F8 $F8
    inc b                                         ; $4DB8: $04
    nop                                           ; $4DB9: $00
    add b                                         ; $4DBA: $80
    nop                                           ; $4DBB: $00
    db $FC                                        ; $4DBC: $FC
    add hl, bc                                    ; $4DBD: $09
    nop                                           ; $4DBE: $00
    ld hl, sp-$04                                 ; $4DBF: $F8 $FC
    ld [$8000], sp                                ; $4DC1: $08 $00 $80
    ld a, [$0AFC]                                 ; $4DC4: $FA $FC $0A
    nop                                           ; $4DC7: $00
    add b                                         ; $4DC8: $80
    nop                                           ; $4DC9: $00
    db $FC                                        ; $4DCA: $FC
    dec b                                         ; $4DCB: $05
    nop                                           ; $4DCC: $00
    ld hl, sp-$04                                 ; $4DCD: $F8 $FC
    inc b                                         ; $4DCF: $04
    nop                                           ; $4DD0: $00
    add b                                         ; $4DD1: $80
    ld hl, sp-$04                                 ; $4DD2: $F8 $FC
    ld [bc], a                                    ; $4DD4: $02
    nop                                           ; $4DD5: $00
    nop                                           ; $4DD6: $00
    db $FC                                        ; $4DD7: $FC
    inc bc                                        ; $4DD8: $03
    nop                                           ; $4DD9: $00
    add b                                         ; $4DDA: $80
    ld hl, sp-$04                                 ; $4DDB: $F8 $FC
    nop                                           ; $4DDD: $00
    nop                                           ; $4DDE: $00
    nop                                           ; $4DDF: $00
    db $FC                                        ; $4DE0: $FC
    ld bc, $8000                                  ; $4DE1: $01 $00 $80
    ld hl, sp-$04                                 ; $4DE4: $F8 $FC
    ld b, $00                                     ; $4DE6: $06 $00
    nop                                           ; $4DE8: $00
    db $FC                                        ; $4DE9: $FC
    rlca                                          ; $4DEA: $07
    nop                                           ; $4DEB: $00
    add b                                         ; $4DEC: $80
    nop                                           ; $4DED: $00
    db $FC                                        ; $4DEE: $FC
    dec b                                         ; $4DEF: $05
    ld bc, $FCF8                                  ; $4DF0: $01 $F8 $FC
    inc b                                         ; $4DF3: $04
    ld bc, $F880                                  ; $4DF4: $01 $80 $F8
    db $FC                                        ; $4DF7: $FC
    ld [bc], a                                    ; $4DF8: $02
    ld bc, $FC00                                  ; $4DF9: $01 $00 $FC
    inc bc                                        ; $4DFC: $03
    ld bc, $F880                                  ; $4DFD: $01 $80 $F8
    db $FC                                        ; $4E00: $FC
    nop                                           ; $4E01: $00
    ld bc, $FC00                                  ; $4E02: $01 $00 $FC
    ld bc, $8001                                  ; $4E05: $01 $01 $80
    ld hl, sp-$04                                 ; $4E08: $F8 $FC
    ld b, $01                                     ; $4E0A: $06 $01
    nop                                           ; $4E0C: $00
    db $FC                                        ; $4E0D: $FC
    rlca                                          ; $4E0E: $07
    ld bc, $0080                                  ; $4E0F: $01 $80 $00
    db $FC                                        ; $4E12: $FC
    dec b                                         ; $4E13: $05
    dec b                                         ; $4E14: $05
    ld hl, sp-$04                                 ; $4E15: $F8 $FC
    inc b                                         ; $4E17: $04
    dec b                                         ; $4E18: $05
    add b                                         ; $4E19: $80
    ld hl, sp-$04                                 ; $4E1A: $F8 $FC
    ld [bc], a                                    ; $4E1C: $02
    dec b                                         ; $4E1D: $05
    nop                                           ; $4E1E: $00
    db $FC                                        ; $4E1F: $FC
    inc bc                                        ; $4E20: $03
    dec b                                         ; $4E21: $05
    add b                                         ; $4E22: $80
    ld hl, sp-$04                                 ; $4E23: $F8 $FC
    nop                                           ; $4E25: $00
    dec b                                         ; $4E26: $05
    nop                                           ; $4E27: $00
    db $FC                                        ; $4E28: $FC
    ld bc, $8005                                  ; $4E29: $01 $05 $80
    ld hl, sp-$04                                 ; $4E2C: $F8 $FC
    ld b, $05                                     ; $4E2E: $06 $05
    nop                                           ; $4E30: $00
    db $FC                                        ; $4E31: $FC
    rlca                                          ; $4E32: $07
    dec b                                         ; $4E33: $05
    add b                                         ; $4E34: $80
    nop                                           ; $4E35: $00
    db $FC                                        ; $4E36: $FC
    dec b                                         ; $4E37: $05
    ld b, $F8                                     ; $4E38: $06 $F8
    db $FC                                        ; $4E3A: $FC
    inc b                                         ; $4E3B: $04
    ld b, $80                                     ; $4E3C: $06 $80
    ld hl, sp-$04                                 ; $4E3E: $F8 $FC
    ld [bc], a                                    ; $4E40: $02
    ld b, $00                                     ; $4E41: $06 $00
    db $FC                                        ; $4E43: $FC
    inc bc                                        ; $4E44: $03
    ld b, $80                                     ; $4E45: $06 $80
    ld hl, sp-$04                                 ; $4E47: $F8 $FC
    nop                                           ; $4E49: $00
    ld b, $00                                     ; $4E4A: $06 $00
    db $FC                                        ; $4E4C: $FC
    ld bc, $8006                                  ; $4E4D: $01 $06 $80
    ld hl, sp-$04                                 ; $4E50: $F8 $FC
    ld b, $06                                     ; $4E52: $06 $06
    nop                                           ; $4E54: $00
    db $FC                                        ; $4E55: $FC
    rlca                                          ; $4E56: $07
    ld b, $80                                     ; $4E57: $06 $80
    nop                                           ; $4E59: $00
    db $FC                                        ; $4E5A: $FC
    dec b                                         ; $4E5B: $05
    inc b                                         ; $4E5C: $04
    ld hl, sp-$04                                 ; $4E5D: $F8 $FC
    inc b                                         ; $4E5F: $04
    inc b                                         ; $4E60: $04
    add b                                         ; $4E61: $80
    ld hl, sp-$04                                 ; $4E62: $F8 $FC
    ld [bc], a                                    ; $4E64: $02
    inc b                                         ; $4E65: $04
    nop                                           ; $4E66: $00
    db $FC                                        ; $4E67: $FC
    inc bc                                        ; $4E68: $03
    inc b                                         ; $4E69: $04
    add b                                         ; $4E6A: $80
    ld hl, sp-$04                                 ; $4E6B: $F8 $FC
    nop                                           ; $4E6D: $00
    inc b                                         ; $4E6E: $04
    nop                                           ; $4E6F: $00
    db $FC                                        ; $4E70: $FC
    ld bc, $8004                                  ; $4E71: $01 $04 $80
    ld hl, sp-$04                                 ; $4E74: $F8 $FC
    ld b, $04                                     ; $4E76: $06 $04
    nop                                           ; $4E78: $00
    db $FC                                        ; $4E79: $FC
    rlca                                          ; $4E7A: $07
    inc b                                         ; $4E7B: $04
    add b                                         ; $4E7C: $80
    ret c                                         ; $4E7D: $D8

    nop                                           ; $4E7E: $00
    ld bc, $E406                                  ; $4E7F: $01 $06 $E4
    ld [bc], a                                    ; $4E82: $02
    ld bc, $F806                                  ; $4E83: $01 $06 $F8
    nop                                           ; $4E86: $00
    nop                                           ; $4E87: $00
    ld b, $80                                     ; $4E88: $06 $80
    pop hl                                        ; $4E8A: $E1
    ld bc, $0600                                  ; $4E8B: $01 $00 $06
    push af                                       ; $4E8E: $F5
    nop                                           ; $4E8F: $00
    nop                                           ; $4E90: $00
    ld b, $80                                     ; $4E91: $06 $80
    sbc $01                                       ; $4E93: $DE $01
    nop                                           ; $4E95: $00
    ld b, $F1                                     ; $4E96: $06 $F1
    cp $00                                        ; $4E98: $FE $00
    ld b, $80                                     ; $4E9A: $06 $80
    db $DB                                        ; $4E9C: $DB
    ld [bc], a                                    ; $4E9D: $02
    nop                                           ; $4E9E: $00
    ld b, $EB                                     ; $4E9F: $06 $EB
    rst $38                                       ; $4EA1: $FF
    ld bc, $8006                                  ; $4EA2: $01 $06 $80
    ld hl, sp+$00                                 ; $4EA5: $F8 $00
    nop                                           ; $4EA7: $00
    ld b, $E8                                     ; $4EA8: $06 $E8
    rst $38                                       ; $4EAA: $FF
    ld bc, $8006                                  ; $4EAB: $01 $06 $80
    ld a, [c]                                     ; $4EAE: $F2
    ld [bc], a                                    ; $4EAF: $02
    nop                                           ; $4EB0: $00
    ld b, $F8                                     ; $4EB1: $06 $F8
    nop                                           ; $4EB3: $00
    nop                                           ; $4EB4: $00
    ld b, $E5                                     ; $4EB5: $06 $E5
    cp $01                                        ; $4EB7: $FE $01
    ld b, $80                                     ; $4EB9: $06 $80
    xor $00                                       ; $4EBB: $EE $00
    ld bc, $F506                                  ; $4EBD: $01 $06 $F5
    ld [bc], a                                    ; $4EC0: $02
    nop                                           ; $4EC1: $00
    ld b, $E0                                     ; $4EC2: $06 $E0
    nop                                           ; $4EC4: $00
    ld [bc], a                                    ; $4EC5: $02
    ld b, $80                                     ; $4EC6: $06 $80
    add sp, $00                                   ; $4EC8: $E8 $00
    ld bc, $F106                                  ; $4ECA: $01 $06 $F1
    ld [bc], a                                    ; $4ECD: $02
    ld bc, $DC06                                  ; $4ECE: $01 $06 $DC
    rst $38                                       ; $4ED1: $FF
    ld [bc], a                                    ; $4ED2: $02
    ld b, $80                                     ; $4ED3: $06 $80
    db $E3                                        ; $4ED5: $E3
    cp $01                                        ; $4ED6: $FE $01
    ld b, $ED                                     ; $4ED8: $06 $ED
    ld bc, $0601                                  ; $4EDA: $01 $01 $06
    ret c                                         ; $4EDD: $D8

    nop                                           ; $4EDE: $00
    ld bc, $8006                                  ; $4EDF: $01 $06 $80
    sbc $00                                       ; $4EE2: $DE $00
    ld bc, $E906                                  ; $4EE4: $01 $06 $E9
    ld [bc], a                                    ; $4EE7: $02
    ld bc, $D406                                  ; $4EE8: $01 $06 $D4
    nop                                           ; $4EEB: $00
    nop                                           ; $4EEC: $00
    ld b, $80                                     ; $4EED: $06 $80
    ld hl, sp+$00                                 ; $4EEF: $F8 $00
    ld bc, $F800                                  ; $4EF1: $01 $00 $F8
    ld hl, sp+$00                                 ; $4EF4: $F8 $00
    dec b                                         ; $4EF6: $05
    add b                                         ; $4EF7: $80
    ld hl, sp+$08                                 ; $4EF8: $F8 $08
    ld bc, $F821                                  ; $4EFA: $01 $21 $F8
    stop                                          ; $4EFD: $10 $00
    dec h                                         ; $4EFF: $25
    add b                                         ; $4F00: $80
    rst $30                                       ; $4F01: $F7
    nop                                           ; $4F02: $00
    ld bc, $F700                                  ; $4F03: $01 $00 $F7
    ld hl, sp+$00                                 ; $4F06: $F8 $00
    dec b                                         ; $4F08: $05
    add b                                         ; $4F09: $80
    or $00                                        ; $4F0A: $F6 $00
    ld bc, $F600                                  ; $4F0C: $01 $00 $F6
    ld hl, sp+$00                                 ; $4F0F: $F8 $00
    dec b                                         ; $4F11: $05
    add b                                         ; $4F12: $80
    rst $30                                       ; $4F13: $F7
    ld [$2101], sp                                ; $4F14: $08 $01 $21
    rst $30                                       ; $4F17: $F7

jr_011_4F18:
    stop                                          ; $4F18: $10 $00
    dec h                                         ; $4F1A: $25
    add b                                         ; $4F1B: $80
    or $08                                        ; $4F1C: $F6 $08
    ld bc, $F621                                  ; $4F1E: $01 $21 $F6
    stop                                          ; $4F21: $10 $00
    dec h                                         ; $4F23: $25
    add b                                         ; $4F24: $80
    ld [$02FC], sp                                ; $4F25: $08 $FC $02
    nop                                           ; $4F28: $00
    nop                                           ; $4F29: $00
    db $FC                                        ; $4F2A: $FC
    ld bc, $F800                                  ; $4F2B: $01 $00 $F8
    db $FC                                        ; $4F2E: $FC
    nop                                           ; $4F2F: $00
    ld b, $80                                     ; $4F30: $06 $80
    ld [$03FC], sp                                ; $4F32: $08 $FC $03
    nop                                           ; $4F35: $00
    nop                                           ; $4F36: $00
    db $FC                                        ; $4F37: $FC
    ld bc, $F800                                  ; $4F38: $01 $00 $F8
    db $FC                                        ; $4F3B: $FC
    nop                                           ; $4F3C: $00
    ld b, $80                                     ; $4F3D: $06 $80
    ld [$02FC], sp                                ; $4F3F: $08 $FC $02
    nop                                           ; $4F42: $00
    nop                                           ; $4F43: $00
    db $FC                                        ; $4F44: $FC
    dec b                                         ; $4F45: $05
    ld b, $F8                                     ; $4F46: $06 $F8
    db $FC                                        ; $4F48: $FC
    inc b                                         ; $4F49: $04
    ld b, $80                                     ; $4F4A: $06 $80
    ld [$03FC], sp                                ; $4F4C: $08 $FC $03
    nop                                           ; $4F4F: $00
    nop                                           ; $4F50: $00
    db $FC                                        ; $4F51: $FC
    dec b                                         ; $4F52: $05
    ld b, $F8                                     ; $4F53: $06 $F8
    db $FC                                        ; $4F55: $FC
    inc b                                         ; $4F56: $04
    ld b, $80                                     ; $4F57: $06 $80
    ld [$0A00], sp                                ; $4F59: $08 $00 $0A
    nop                                           ; $4F5C: $00
    ld [$09F8], sp                                ; $4F5D: $08 $F8 $09
    nop                                           ; $4F60: $00
    nop                                           ; $4F61: $00
    nop                                           ; $4F62: $00
    ld [rRAMG], sp                                ; $4F63: $08 $00 $00
    ld hl, sp+$07                                 ; $4F66: $F8 $07
    nop                                           ; $4F68: $00
    ld hl, sp+$00                                 ; $4F69: $F8 $00
    ld b, $06                                     ; $4F6B: $06 $06
    add b                                         ; $4F6D: $80
    nop                                           ; $4F6E: $00
    ld hl, sp+$0B                                 ; $4F6F: $F8 $0B
    nop                                           ; $4F71: $00
    ld [$0CF8], sp                                ; $4F72: $08 $F8 $0C
    nop                                           ; $4F75: $00
    ld [$0A00], sp                                ; $4F76: $08 $00 $0A
    nop                                           ; $4F79: $00
    nop                                           ; $4F7A: $00
    nop                                           ; $4F7B: $00
    ld [$F800], sp                                ; $4F7C: $08 $00 $F8
    nop                                           ; $4F7F: $00
    ld b, $06                                     ; $4F80: $06 $06
    add b                                         ; $4F82: $80
    ld hl, sp-$08                                 ; $4F83: $F8 $F8
    dec c                                         ; $4F85: $0D
    ld b, $08                                     ; $4F86: $06 $08
    ld hl, sp+$0A                                 ; $4F88: $F8 $0A
    jr nz, jr_011_4F94                            ; $4F8A: $20 $08

    nop                                           ; $4F8C: $00
    add hl, bc                                    ; $4F8D: $09
    jr nz, jr_011_4F90                            ; $4F8E: $20 $00

jr_011_4F90:
    ld hl, sp+$08                                 ; $4F90: $F8 $08
    jr nz, jr_011_4F94                            ; $4F92: $20 $00

jr_011_4F94:
    nop                                           ; $4F94: $00
    rlca                                          ; $4F95: $07

jr_011_4F96:
    jr nz, jr_011_4F18                            ; $4F96: $20 $80

    ld hl, sp-$08                                 ; $4F98: $F8 $F8

jr_011_4F9A:
    dec c                                         ; $4F9A: $0D
    ld b, $00                                     ; $4F9B: $06 $00
    nop                                           ; $4F9D: $00
    dec bc                                        ; $4F9E: $0B
    jr nz, jr_011_4FA9                            ; $4F9F: $20 $08

    nop                                           ; $4FA1: $00
    inc c                                         ; $4FA2: $0C
    jr nz, jr_011_4FAD                            ; $4FA3: $20 $08

    ld hl, sp+$0A                                 ; $4FA5: $F8 $0A
    jr nz, jr_011_4FA9                            ; $4FA7: $20 $00

jr_011_4FA9:
    ld hl, sp+$08                                 ; $4FA9: $F8 $08
    jr nz, @-$7E                                  ; $4FAB: $20 $80

jr_011_4FAD:
    jr z, jr_011_4F96                             ; $4FAD: $28 $E7

    ld a, [bc]                                    ; $4FAF: $0A
    nop                                           ; $4FB0: $00
    jr jr_011_4F9A                                ; $4FB1: $18 $E7

jr_011_4FB3:
    add hl, bc                                    ; $4FB3: $09
    nop                                           ; $4FB4: $00
    jr nz, jr_011_4FB7                            ; $4FB5: $20 $00

jr_011_4FB7:
    inc bc                                        ; $4FB7: $03
    inc bc                                        ; $4FB8: $03
    jr nz, jr_011_4FB3                            ; $4FB9: $20 $F8

    inc bc                                        ; $4FBB: $03
    inc bc                                        ; $4FBC: $03
    ld hl, $0108                                  ; $4FBD: $21 $08 $01
    inc hl                                        ; $4FC0: $23
    rra                                           ; $4FC1: $1F
    ldh a, [rSB]                                  ; $4FC2: $F0 $01
    inc bc                                        ; $4FC4: $03
    jr jr_011_4FC7                                ; $4FC5: $18 $00

jr_011_4FC7:
    ld [bc], a                                    ; $4FC7: $02
    inc bc                                        ; $4FC8: $03
    jr @-$06                                      ; $4FC9: $18 $F8

    ld [bc], a                                    ; $4FCB: $02
    inc bc                                        ; $4FCC: $03
    add hl, hl                                    ; $4FCD: $29

jr_011_4FCE:
    ld [$0304], sp                                ; $4FCE: $08 $04 $03
    jr z, jr_011_4FD3                             ; $4FD1: $28 $00

jr_011_4FD3:
    inc b                                         ; $4FD3: $04
    inc bc                                        ; $4FD4: $03
    jr z, @-$06                                   ; $4FD5: $28 $F8

    inc b                                         ; $4FD7: $04
    inc bc                                        ; $4FD8: $03
    daa                                           ; $4FD9: $27
    ldh a, [rDIV]                                 ; $4FDA: $F0 $04
    inc bc                                        ; $4FDC: $03
    add hl, de                                    ; $4FDD: $19
    ld [$2300], sp                                ; $4FDE: $08 $00 $23
    rla                                           ; $4FE1: $17
    ldh a, [rP1]                                  ; $4FE2: $F0 $00
    inc bc                                        ; $4FE4: $03
    add b                                         ; $4FE5: $80
    jr z, jr_011_4FCE                             ; $4FE6: $28 $E6

    ld [$1800], sp                                ; $4FE8: $08 $00 $18
    and $07                                       ; $4FEB: $E6 $07
    nop                                           ; $4FED: $00
    jr nz, jr_011_4FF0                            ; $4FEE: $20 $00

jr_011_4FF0:
    inc bc                                        ; $4FF0: $03
    inc bc                                        ; $4FF1: $03
    jr nz, @-$06                                  ; $4FF2: $20 $F8

    inc bc                                        ; $4FF4: $03
    inc bc                                        ; $4FF5: $03
    jr nz, jr_011_5000                            ; $4FF6: $20 $08

    ld bc, $2023                                  ; $4FF8: $01 $23 $20
    ldh a, [rSB]                                  ; $4FFB: $F0 $01
    inc bc                                        ; $4FFD: $03
    jr jr_011_5000                                ; $4FFE: $18 $00

jr_011_5000:
    ld [bc], a                                    ; $5000: $02
    inc bc                                        ; $5001: $03
    jr @-$06                                      ; $5002: $18 $F8

jr_011_5004:
    ld [bc], a                                    ; $5004: $02
    inc bc                                        ; $5005: $03

jr_011_5006:
    jr z, jr_011_5010                             ; $5006: $28 $08

jr_011_5008:
    inc b                                         ; $5008: $04
    inc bc                                        ; $5009: $03

jr_011_500A:
    jr z, jr_011_500C                             ; $500A: $28 $00

jr_011_500C:
    inc b                                         ; $500C: $04
    inc bc                                        ; $500D: $03
    jr z, jr_011_5008                             ; $500E: $28 $F8

jr_011_5010:
    inc b                                         ; $5010: $04
    inc bc                                        ; $5011: $03
    jr z, jr_011_5004                             ; $5012: $28 $F0

    inc b                                         ; $5014: $04
    inc bc                                        ; $5015: $03
    jr @+$0A                                      ; $5016: $18 $08

    nop                                           ; $5018: $00
    inc hl                                        ; $5019: $23
    jr jr_011_500C                                ; $501A: $18 $F0

    nop                                           ; $501C: $00
    inc bc                                        ; $501D: $03
    add b                                         ; $501E: $80
    jr jr_011_5006                                ; $501F: $18 $E5

    dec b                                         ; $5021: $05
    nop                                           ; $5022: $00
    jr z, jr_011_500A                             ; $5023: $28 $E5

jr_011_5025:
    ld b, $00                                     ; $5025: $06 $00
    jr nz, jr_011_5029                            ; $5027: $20 $00

jr_011_5029:
    inc bc                                        ; $5029: $03
    inc bc                                        ; $502A: $03
    jr nz, jr_011_5025                            ; $502B: $20 $F8

    inc bc                                        ; $502D: $03
    inc bc                                        ; $502E: $03
    rra                                           ; $502F: $1F
    ld [$2301], sp                                ; $5030: $08 $01 $23
    ld hl, $01F0                                  ; $5033: $21 $F0 $01
    inc bc                                        ; $5036: $03
    jr jr_011_5039                                ; $5037: $18 $00

jr_011_5039:
    ld [bc], a                                    ; $5039: $02
    inc bc                                        ; $503A: $03
    jr @-$06                                      ; $503B: $18 $F8

    ld [bc], a                                    ; $503D: $02
    inc bc                                        ; $503E: $03
    daa                                           ; $503F: $27
    ld [$0304], sp                                ; $5040: $08 $04 $03
    jr z, jr_011_5045                             ; $5043: $28 $00

jr_011_5045:
    inc b                                         ; $5045: $04
    inc bc                                        ; $5046: $03
    jr z, @-$06                                   ; $5047: $28 $F8

    inc b                                         ; $5049: $04
    inc bc                                        ; $504A: $03
    add hl, hl                                    ; $504B: $29
    ldh a, [rDIV]                                 ; $504C: $F0 $04

jr_011_504E:
    inc bc                                        ; $504E: $03
    rla                                           ; $504F: $17
    ld [$2300], sp                                ; $5050: $08 $00 $23
    add hl, de                                    ; $5053: $19
    ldh a, [rP1]                                  ; $5054: $F0 $00
    inc bc                                        ; $5056: $03
    add b                                         ; $5057: $80
    jr nc, jr_011_506A                            ; $5058: $30 $10

jr_011_505A:
    inc c                                         ; $505A: $0C
    inc hl                                        ; $505B: $23
    jr z, jr_011_5066                             ; $505C: $28 $08

jr_011_505E:
    dec c                                         ; $505E: $0D
    inc hl                                        ; $505F: $23
    jr nc, jr_011_506A                            ; $5060: $30 $08

    ld c, $23                                     ; $5062: $0E $23
    jr z, jr_011_5076                             ; $5064: $28 $10

jr_011_5066:
    dec bc                                        ; $5066: $0B
    inc hl                                        ; $5067: $23
    jr nz, jr_011_505A                            ; $5068: $20 $F0

jr_011_506A:
    db $10                                        ; $506A: $10
    inc hl                                        ; $506B: $23
    jr nz, jr_011_504E                            ; $506C: $20 $E0

    inc d                                         ; $506E: $14
    inc hl                                        ; $506F: $23
    jr nz, jr_011_505A                            ; $5070: $20 $E8

    ld [de], a                                    ; $5072: $12
    inc hl                                        ; $5073: $23
    jr jr_011_5066                                ; $5074: $18 $F0

jr_011_5076:
    rrca                                          ; $5076: $0F
    jr nz, @+$1A                                  ; $5077: $20 $18

    add sp, $11                                   ; $5079: $E8 $11
    inc hl                                        ; $507B: $23
    jr jr_011_505E                                ; $507C: $18 $E0

    inc de                                        ; $507E: $13
    inc hl                                        ; $507F: $23
    jr jr_011_508A                                ; $5080: $18 $08

    rrca                                          ; $5082: $0F
    nop                                           ; $5083: $00
    jr nz, jr_011_508E                            ; $5084: $20 $08

    db $10                                        ; $5086: $10
    inc bc                                        ; $5087: $03
    jr nz, jr_011_509A                            ; $5088: $20 $10

jr_011_508A:
    ld [de], a                                    ; $508A: $12
    inc bc                                        ; $508B: $03
    jr nz, jr_011_50A6                            ; $508C: $20 $18

jr_011_508E:
    inc d                                         ; $508E: $14
    inc bc                                        ; $508F: $03
    jr jr_011_50A2                                ; $5090: $18 $10

    ld de, $1803                                  ; $5092: $11 $03 $18
    jr @+$15                                      ; $5095: $18 $13

    inc bc                                        ; $5097: $03
    jr nz, jr_011_509A                            ; $5098: $20 $00

jr_011_509A:
    dec c                                         ; $509A: $0D
    inc bc                                        ; $509B: $03
    jr z, @-$06                                   ; $509C: $28 $F8

jr_011_509E:
    inc c                                         ; $509E: $0C
    inc bc                                        ; $509F: $03
    jr z, jr_011_50A2                             ; $50A0: $28 $00

jr_011_50A2:
    ld c, $03                                     ; $50A2: $0E $03
    jr nz, jr_011_509E                            ; $50A4: $20 $F8

jr_011_50A6:
    dec bc                                        ; $50A6: $0B
    inc bc                                        ; $50A7: $03
    add b                                         ; $50A8: $80
    ld sp, $0C11                                  ; $50A9: $31 $11 $0C
    inc hl                                        ; $50AC: $23
    add hl, hl                                    ; $50AD: $29
    add hl, bc                                    ; $50AE: $09
    dec c                                         ; $50AF: $0D
    inc hl                                        ; $50B0: $23
    ld sp, $0E09                                  ; $50B1: $31 $09 $0E
    inc hl                                        ; $50B4: $23
    add hl, hl                                    ; $50B5: $29

jr_011_50B6:
    ld de, $230B                                  ; $50B6: $11 $0B $23
    jr nz, @-$0F                                  ; $50B9: $20 $EF

    db $10                                        ; $50BB: $10
    inc hl                                        ; $50BC: $23
    jr nz, jr_011_509E                            ; $50BD: $20 $DF

    inc d                                         ; $50BF: $14
    inc hl                                        ; $50C0: $23
    jr nz, @-$17                                  ; $50C1: $20 $E7

    ld [de], a                                    ; $50C3: $12
    inc hl                                        ; $50C4: $23
    jr jr_011_50B6                                ; $50C5: $18 $EF

    rrca                                          ; $50C7: $0F
    jr nz, jr_011_50E2                            ; $50C8: $20 $18

    rst $20                                       ; $50CA: $E7
    ld de, $1823                                  ; $50CB: $11 $23 $18
    rst $18                                       ; $50CE: $DF
    inc de                                        ; $50CF: $13
    inc hl                                        ; $50D0: $23
    rla                                           ; $50D1: $17
    add hl, bc                                    ; $50D2: $09
    rrca                                          ; $50D3: $0F
    nop                                           ; $50D4: $00
    rra                                           ; $50D5: $1F
    add hl, bc                                    ; $50D6: $09
    db $10                                        ; $50D7: $10
    inc bc                                        ; $50D8: $03
    rra                                           ; $50D9: $1F
    ld de, $0312                                  ; $50DA: $11 $12 $03
    rra                                           ; $50DD: $1F
    add hl, de                                    ; $50DE: $19
    inc d                                         ; $50DF: $14
    inc bc                                        ; $50E0: $03
    rla                                           ; $50E1: $17

jr_011_50E2:
    ld de, $0311                                  ; $50E2: $11 $11 $03
    rla                                           ; $50E5: $17
    add hl, de                                    ; $50E6: $19
    inc de                                        ; $50E7: $13
    inc bc                                        ; $50E8: $03
    ld hl, $0D00                                  ; $50E9: $21 $00 $0D
    inc bc                                        ; $50EC: $03
    add hl, hl                                    ; $50ED: $29

jr_011_50EE:
    ld hl, sp+$0C                                 ; $50EE: $F8 $0C
    inc bc                                        ; $50F0: $03
    add hl, hl                                    ; $50F1: $29
    nop                                           ; $50F2: $00
    ld c, $03                                     ; $50F3: $0E $03
    ld hl, $0BF8                                  ; $50F5: $21 $F8 $0B
    inc bc                                        ; $50F8: $03
    add b                                         ; $50F9: $80

jr_011_50FA:
    ld [hl-], a                                   ; $50FA: $32
    ld [de], a                                    ; $50FB: $12
    inc c                                         ; $50FC: $0C
    inc hl                                        ; $50FD: $23

jr_011_50FE:
    ld a, [hl+]                                   ; $50FE: $2A
    ld a, [bc]                                    ; $50FF: $0A
    dec c                                         ; $5100: $0D
    inc hl                                        ; $5101: $23
    ld [hl-], a                                   ; $5102: $32
    ld a, [bc]                                    ; $5103: $0A
    ld c, $23                                     ; $5104: $0E $23

jr_011_5106:
    ld a, [hl+]                                   ; $5106: $2A
    ld [de], a                                    ; $5107: $12
    dec bc                                        ; $5108: $0B
    inc hl                                        ; $5109: $23
    jr nz, jr_011_50FA                            ; $510A: $20 $EE

    db $10                                        ; $510C: $10
    inc hl                                        ; $510D: $23
    jr nz, jr_011_50EE                            ; $510E: $20 $DE

    inc d                                         ; $5110: $14
    inc hl                                        ; $5111: $23
    jr nz, jr_011_50FA                            ; $5112: $20 $E6

    ld [de], a                                    ; $5114: $12
    inc hl                                        ; $5115: $23
    jr jr_011_5106                                ; $5116: $18 $EE

    rrca                                          ; $5118: $0F
    jr nz, @+$1A                                  ; $5119: $20 $18

    and $11                                       ; $511B: $E6 $11
    inc hl                                        ; $511D: $23
    jr jr_011_50FE                                ; $511E: $18 $DE

    inc de                                        ; $5120: $13
    inc hl                                        ; $5121: $23
    ld d, $0A                                     ; $5122: $16 $0A
    rrca                                          ; $5124: $0F
    nop                                           ; $5125: $00
    ld e, $0A                                     ; $5126: $1E $0A
    db $10                                        ; $5128: $10
    inc bc                                        ; $5129: $03
    ld e, $12                                     ; $512A: $1E $12
    ld [de], a                                    ; $512C: $12
    inc bc                                        ; $512D: $03
    ld e, $1A                                     ; $512E: $1E $1A
    inc d                                         ; $5130: $14
    inc bc                                        ; $5131: $03
    ld d, $12                                     ; $5132: $16 $12
    ld de, $1603                                  ; $5134: $11 $03 $16
    ld a, [de]                                    ; $5137: $1A
    inc de                                        ; $5138: $13
    inc bc                                        ; $5139: $03
    ld [hl+], a                                   ; $513A: $22
    nop                                           ; $513B: $00
    dec c                                         ; $513C: $0D
    inc bc                                        ; $513D: $03
    ld a, [hl+]                                   ; $513E: $2A
    ld hl, sp+$0C                                 ; $513F: $F8 $0C
    inc bc                                        ; $5141: $03
    ld a, [hl+]                                   ; $5142: $2A
    nop                                           ; $5143: $00
    ld c, $03                                     ; $5144: $0E $03
    ld [hl+], a                                   ; $5146: $22
    ld hl, sp+$0B                                 ; $5147: $F8 $0B
    inc bc                                        ; $5149: $03
    add b                                         ; $514A: $80
    daa                                           ; $514B: $27
    ld de, $200A                                  ; $514C: $11 $0A $20
    rla                                           ; $514F: $17
    ld de, $2009                                  ; $5150: $11 $09 $20
    jr nz, jr_011_5155                            ; $5153: $20 $00

jr_011_5155:
    inc bc                                        ; $5155: $03
    inc bc                                        ; $5156: $03
    jr nz, @-$06                                  ; $5157: $20 $F8

    inc bc                                        ; $5159: $03
    inc bc                                        ; $515A: $03
    ld hl, $0108                                  ; $515B: $21 $08 $01
    inc hl                                        ; $515E: $23
    rra                                           ; $515F: $1F
    ldh a, [rSB]                                  ; $5160: $F0 $01
    inc bc                                        ; $5162: $03
    jr jr_011_5165                                ; $5163: $18 $00

jr_011_5165:
    ld [bc], a                                    ; $5165: $02
    inc bc                                        ; $5166: $03
    jr @-$06                                      ; $5167: $18 $F8

    ld [bc], a                                    ; $5169: $02
    inc bc                                        ; $516A: $03
    add hl, hl                                    ; $516B: $29
    ld [$0304], sp                                ; $516C: $08 $04 $03
    jr z, jr_011_5171                             ; $516F: $28 $00

jr_011_5171:
    inc b                                         ; $5171: $04
    inc bc                                        ; $5172: $03
    jr z, @-$06                                   ; $5173: $28 $F8

    inc b                                         ; $5175: $04
    inc bc                                        ; $5176: $03
    daa                                           ; $5177: $27
    ldh a, [rDIV]                                 ; $5178: $F0 $04
    inc bc                                        ; $517A: $03
    add hl, de                                    ; $517B: $19
    ld [$2300], sp                                ; $517C: $08 $00 $23
    rla                                           ; $517F: $17
    ldh a, [rP1]                                  ; $5180: $F0 $00
    inc bc                                        ; $5182: $03
    add b                                         ; $5183: $80
    daa                                           ; $5184: $27
    ld [de], a                                    ; $5185: $12
    ld [$1720], sp                                ; $5186: $08 $20 $17
    ld [de], a                                    ; $5189: $12

jr_011_518A:
    rlca                                          ; $518A: $07
    jr nz, @+$22                                  ; $518B: $20 $20

    nop                                           ; $518D: $00
    inc bc                                        ; $518E: $03
    inc bc                                        ; $518F: $03
    jr nz, jr_011_518A                            ; $5190: $20 $F8

    inc bc                                        ; $5192: $03
    inc bc                                        ; $5193: $03
    jr nz, jr_011_519E                            ; $5194: $20 $08

    ld bc, $2023                                  ; $5196: $01 $23 $20
    ldh a, [rSB]                                  ; $5199: $F0 $01
    inc bc                                        ; $519B: $03
    jr jr_011_519E                                ; $519C: $18 $00

jr_011_519E:
    ld [bc], a                                    ; $519E: $02
    inc bc                                        ; $519F: $03
    jr @-$06                                      ; $51A0: $18 $F8

jr_011_51A2:
    ld [bc], a                                    ; $51A2: $02
    inc bc                                        ; $51A3: $03
    jr z, jr_011_51AE                             ; $51A4: $28 $08

jr_011_51A6:
    inc b                                         ; $51A6: $04
    inc bc                                        ; $51A7: $03
    jr z, jr_011_51AA                             ; $51A8: $28 $00

jr_011_51AA:
    inc b                                         ; $51AA: $04
    inc bc                                        ; $51AB: $03
    jr z, jr_011_51A6                             ; $51AC: $28 $F8

jr_011_51AE:
    inc b                                         ; $51AE: $04
    inc bc                                        ; $51AF: $03
    jr z, jr_011_51A2                             ; $51B0: $28 $F0

    inc b                                         ; $51B2: $04
    inc bc                                        ; $51B3: $03
    jr jr_011_51BE                                ; $51B4: $18 $08

    nop                                           ; $51B6: $00
    inc hl                                        ; $51B7: $23
    jr jr_011_51AA                                ; $51B8: $18 $F0

    nop                                           ; $51BA: $00
    inc bc                                        ; $51BB: $03
    add b                                         ; $51BC: $80
    rla                                           ; $51BD: $17

jr_011_51BE:
    inc de                                        ; $51BE: $13
    dec b                                         ; $51BF: $05
    jr nz, jr_011_51E9                            ; $51C0: $20 $27

    inc de                                        ; $51C2: $13

jr_011_51C3:
    ld b, $20                                     ; $51C3: $06 $20
    jr nz, jr_011_51C7                            ; $51C5: $20 $00

jr_011_51C7:
    inc bc                                        ; $51C7: $03
    inc bc                                        ; $51C8: $03
    jr nz, jr_011_51C3                            ; $51C9: $20 $F8

    inc bc                                        ; $51CB: $03
    inc bc                                        ; $51CC: $03
    rra                                           ; $51CD: $1F
    ld [$2301], sp                                ; $51CE: $08 $01 $23
    ld hl, $01F0                                  ; $51D1: $21 $F0 $01
    inc bc                                        ; $51D4: $03
    jr jr_011_51D7                                ; $51D5: $18 $00

jr_011_51D7:
    ld [bc], a                                    ; $51D7: $02
    inc bc                                        ; $51D8: $03
    jr @-$06                                      ; $51D9: $18 $F8

    ld [bc], a                                    ; $51DB: $02
    inc bc                                        ; $51DC: $03
    daa                                           ; $51DD: $27
    ld [$0304], sp                                ; $51DE: $08 $04 $03
    jr z, jr_011_51E3                             ; $51E1: $28 $00

jr_011_51E3:
    inc b                                         ; $51E3: $04
    inc bc                                        ; $51E4: $03
    jr z, @-$06                                   ; $51E5: $28 $F8

    inc b                                         ; $51E7: $04
    inc bc                                        ; $51E8: $03

jr_011_51E9:
    add hl, hl                                    ; $51E9: $29
    ldh a, [rDIV]                                 ; $51EA: $F0 $04
    inc bc                                        ; $51EC: $03
    rla                                           ; $51ED: $17
    ld [$2300], sp                                ; $51EE: $08 $00 $23
    add hl, de                                    ; $51F1: $19
    ldh a, [rP1]                                  ; $51F2: $F0 $00
    inc bc                                        ; $51F4: $03
    add b                                         ; $51F5: $80
    nop                                           ; $51F6: $00
    nop                                           ; $51F7: $00
    ld [bc], a                                    ; $51F8: $02
    inc b                                         ; $51F9: $04
    nop                                           ; $51FA: $00
    ld hl, sp+$01                                 ; $51FB: $F8 $01
    inc b                                         ; $51FD: $04
    ld hl, sp-$08                                 ; $51FE: $F8 $F8
    nop                                           ; $5200: $00
    inc b                                         ; $5201: $04
    add b                                         ; $5202: $80
    cp $FC                                        ; $5203: $FE $FC
    nop                                           ; $5205: $00
    ld b, $80                                     ; $5206: $06 $80
    ld hl, sp+$00                                 ; $5208: $F8 $00
    add hl, bc                                    ; $520A: $09
    ld b, $F8                                     ; $520B: $06 $F8
    ld hl, sp+$08                                 ; $520D: $F8 $08
    ld b, $00                                     ; $520F: $06 $00
    nop                                           ; $5211: $00
    inc b                                         ; $5212: $04
    ld b, $00                                     ; $5213: $06 $00
    ld hl, sp+$03                                 ; $5215: $F8 $03
    ld b, $80                                     ; $5217: $06 $80
    ld hl, sp+$00                                 ; $5219: $F8 $00
    ld [bc], a                                    ; $521B: $02
    ld b, $F8                                     ; $521C: $06 $F8
    ld hl, sp+$01                                 ; $521E: $F8 $01
    ld b, $00                                     ; $5220: $06 $00
    nop                                           ; $5222: $00
    inc b                                         ; $5223: $04
    ld b, $00                                     ; $5224: $06 $00
    ld hl, sp+$03                                 ; $5226: $F8 $03
    ld b, $80                                     ; $5228: $06 $80
    ld hl, sp+$08                                 ; $522A: $F8 $08
    rlca                                          ; $522C: $07
    nop                                           ; $522D: $00
    ld hl, sp+$00                                 ; $522E: $F8 $00
    ld b, $06                                     ; $5230: $06 $06
    ld hl, sp-$08                                 ; $5232: $F8 $F8
    dec b                                         ; $5234: $05
    ld b, $00                                     ; $5235: $06 $00
    nop                                           ; $5237: $00
    inc b                                         ; $5238: $04
    ld b, $00                                     ; $5239: $06 $00
    ld hl, sp+$03                                 ; $523B: $F8 $03
    ld b, $80                                     ; $523D: $06 $80
    nop                                           ; $523F: $00
    ld [$0611], sp                                ; $5240: $08 $11 $06
    nop                                           ; $5243: $00
    nop                                           ; $5244: $00
    db $10                                        ; $5245: $10
    ld b, $00                                     ; $5246: $06 $00
    ld hl, sp+$0F                                 ; $5248: $F8 $0F
    ld b, $00                                     ; $524A: $06 $00
    ldh a, [$0E]                                  ; $524C: $F0 $0E
    ld b, $F8                                     ; $524E: $06 $F8
    ld [$060D], sp                                ; $5250: $08 $0D $06
    ld hl, sp+$00                                 ; $5253: $F8 $00
    inc c                                         ; $5255: $0C
    ld b, $F8                                     ; $5256: $06 $F8
    ld hl, sp+$0B                                 ; $5258: $F8 $0B
    ld b, $F8                                     ; $525A: $06 $F8
    ldh a, [$0A]                                  ; $525C: $F0 $0A
    ld b, $80                                     ; $525E: $06 $80
    cp $FC                                        ; $5260: $FE $FC
    nop                                           ; $5262: $00
    ld bc, $F880                                  ; $5263: $01 $80 $F8
    nop                                           ; $5266: $00
    add hl, bc                                    ; $5267: $09
    ld bc, $F8F8                                  ; $5268: $01 $F8 $F8
    ld [$0001], sp                                ; $526B: $08 $01 $00
    nop                                           ; $526E: $00
    inc b                                         ; $526F: $04
    ld bc, $F800                                  ; $5270: $01 $00 $F8
    inc bc                                        ; $5273: $03
    ld bc, $F880                                  ; $5274: $01 $80 $F8
    nop                                           ; $5277: $00
    ld [bc], a                                    ; $5278: $02
    ld bc, $F8F8                                  ; $5279: $01 $F8 $F8
    ld bc, $0001                                  ; $527C: $01 $01 $00
    nop                                           ; $527F: $00
    inc b                                         ; $5280: $04
    ld bc, $F800                                  ; $5281: $01 $00 $F8
    inc bc                                        ; $5284: $03
    ld bc, $F880                                  ; $5285: $01 $80 $F8
    ld [$0107], sp                                ; $5288: $08 $07 $01
    ld hl, sp+$00                                 ; $528B: $F8 $00
    ld b, $01                                     ; $528D: $06 $01
    ld hl, sp-$08                                 ; $528F: $F8 $F8
    dec b                                         ; $5291: $05
    ld bc, $0000                                  ; $5292: $01 $00 $00
    inc b                                         ; $5295: $04
    ld bc, $F800                                  ; $5296: $01 $00 $F8
    inc bc                                        ; $5299: $03
    ld bc, $0080                                  ; $529A: $01 $80 $00
    ld [$0111], sp                                ; $529D: $08 $11 $01
    nop                                           ; $52A0: $00
    nop                                           ; $52A1: $00
    db $10                                        ; $52A2: $10
    ld bc, $F800                                  ; $52A3: $01 $00 $F8
    rrca                                          ; $52A6: $0F
    ld bc, $F000                                  ; $52A7: $01 $00 $F0
    ld c, $01                                     ; $52AA: $0E $01
    ld hl, sp+$08                                 ; $52AC: $F8 $08
    dec c                                         ; $52AE: $0D
    ld bc, $00F8                                  ; $52AF: $01 $F8 $00
    inc c                                         ; $52B2: $0C
    ld bc, $F8F8                                  ; $52B3: $01 $F8 $F8
    dec bc                                        ; $52B6: $0B
    ld bc, $F0F8                                  ; $52B7: $01 $F8 $F0
    ld a, [bc]                                    ; $52BA: $0A
    ld bc, $0480                                  ; $52BB: $01 $80 $04
    ld hl, sp+$02                                 ; $52BE: $F8 $02
    inc b                                         ; $52C0: $04
    db $FC                                        ; $52C1: $FC
    ld hl, sp+$01                                 ; $52C2: $F8 $01
    inc b                                         ; $52C4: $04
    db $F4                                        ; $52C5: $F4
    ld hl, sp+$00                                 ; $52C6: $F8 $00
    inc b                                         ; $52C8: $04
    inc b                                         ; $52C9: $04
    nop                                           ; $52CA: $00
    ld [bc], a                                    ; $52CB: $02
    inc h                                         ; $52CC: $24
    db $FC                                        ; $52CD: $FC
    nop                                           ; $52CE: $00
    ld bc, $F424                                  ; $52CF: $01 $24 $F4
    nop                                           ; $52D2: $00
    nop                                           ; $52D3: $00
    inc h                                         ; $52D4: $24
    add b                                         ; $52D5: $80
    nop                                           ; $52D6: $00
    nop                                           ; $52D7: $00
    inc bc                                        ; $52D8: $03
    ld bc, $F800                                  ; $52D9: $01 $00 $F8
    ld [bc], a                                    ; $52DC: $02
    ld bc, $00F8                                  ; $52DD: $01 $F8 $00
    ld bc, $F801                                  ; $52E0: $01 $01 $F8
    ld hl, sp+$00                                 ; $52E3: $F8 $00
    ld bc, $0080                                  ; $52E5: $01 $80 $00
    nop                                           ; $52E8: $00
    rlca                                          ; $52E9: $07
    ld bc, $F800                                  ; $52EA: $01 $00 $F8
    ld b, $01                                     ; $52ED: $06 $01
    ld hl, sp+$00                                 ; $52EF: $F8 $00
    dec b                                         ; $52F1: $05
    ld bc, $F8F8                                  ; $52F2: $01 $F8 $F8
    inc b                                         ; $52F5: $04
    db $01                                        ; $52F6: $01
    add b                                         ; $52F7: $80

    db $00, $00, $03, $06, $00, $F8, $02, $06, $F8, $00, $01, $06, $F8, $F8, $00, $06
    db $80, $00, $00, $06, $06, $00, $F8, $02, $06, $F8, $00, $05, $06, $F8, $F8, $04
    db $06, $80, $F8, $00, $08, $06, $F8, $F8, $07, $06, $00, $00, $09, $06, $00, $F8
    db $02, $06, $80, $08, $00, $1E, $46, $F0, $F8, $1E, $26, $08, $F8, $1D, $66, $F0
    db $00, $1D, $06, $00, $F0, $1C, $06, $F8, $08, $1C, $66, $00, $08, $1A, $26, $F8
    db $F0, $1A, $46, $00, $F8, $12, $06, $00, $00, $13, $06, $F8, $00, $11, $06, $F8
    db $F8, $10, $06, $80, $08, $00, $1E, $46, $F0, $00, $1D, $06, $08, $F8, $1F, $46
    db $F0, $F8, $1F, $06, $00, $08, $1B, $26, $F8, $08, $1C, $26, $00, $F0, $1A, $06
    db $F8, $F0, $1C, $46, $F8, $00, $15, $06, $F8, $F8, $14, $06, $00, $00, $16, $06
    db $00, $F8, $12, $06, $80, $F0, $F8, $1F, $06, $08, $00, $1D, $46, $08, $F8, $1E
    db $46, $F0, $00, $1E, $06, $00, $08, $1A, $26, $F8, $08, $1C, $26, $00, $F0, $1B
    db $46, $F8, $F0, $1B, $06, $00, $00, $19, $06, $00, $F8, $12, $06, $F8, $00, $18
    db $06, $F8, $F8, $17, $06, $80, $08, $00, $0F, $26, $08, $08, $0E, $26, $08, $F8
    db $0F, $06, $08, $F0, $0E, $06, $00, $F0, $0D, $46, $00, $08, $0C, $66, $F8, $08
    db $0D, $26, $F8, $F0, $0C, $06, $F0, $00, $0B, $26, $F0, $08, $0A, $26, $F0, $F8
    db $0B, $06, $F0, $F0, $0A, $06, $00, $00, $19, $06, $00, $F8, $12, $06, $F8, $00
    db $18, $06, $F8, $F8, $17, $06, $80

    nop                                           ; $53FF: $00
    ld [$0402], sp                                ; $5400: $08 $02 $04
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    ld bc, $0004                                  ; $5405: $01 $04 $00
    ld hl, sp+$00                                 ; $5408: $F8 $00
    inc b                                         ; $540A: $04
    add b                                         ; $540B: $80
    nop                                           ; $540C: $00
    ld [$0405], sp                                ; $540D: $08 $05 $04
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    inc b                                         ; $5412: $04
    inc b                                         ; $5413: $04
    nop                                           ; $5414: $00
    ld hl, sp+$03                                 ; $5415: $F8 $03
    inc b                                         ; $5417: $04
    add b                                         ; $5418: $80
    ld hl, sp+$00                                 ; $5419: $F8 $00
    ld [$0004], sp                                ; $541B: $08 $04 $00
    nop                                           ; $541E: $00
    rlca                                          ; $541F: $07
    inc b                                         ; $5420: $04
    nop                                           ; $5421: $00
    ld hl, sp+$06                                 ; $5422: $F8 $06
    inc b                                         ; $5424: $04
    add b                                         ; $5425: $80
    nop                                           ; $5426: $00
    ldh a, [rSC]                                  ; $5427: $F0 $02
    inc h                                         ; $5429: $24
    nop                                           ; $542A: $00
    ld hl, sp+$01                                 ; $542B: $F8 $01
    inc h                                         ; $542D: $24
    nop                                           ; $542E: $00
    nop                                           ; $542F: $00
    nop                                           ; $5430: $00
    inc h                                         ; $5431: $24
    add b                                         ; $5432: $80
    nop                                           ; $5433: $00
    ldh a, [rTIMA]                                ; $5434: $F0 $05
    inc h                                         ; $5436: $24
    nop                                           ; $5437: $00
    ld hl, sp+$04                                 ; $5438: $F8 $04
    inc h                                         ; $543A: $24
    nop                                           ; $543B: $00
    nop                                           ; $543C: $00
    inc bc                                        ; $543D: $03
    inc h                                         ; $543E: $24
    add b                                         ; $543F: $80
    ld hl, sp-$08                                 ; $5440: $F8 $F8
    ld [$0024], sp                                ; $5442: $08 $24 $00
    ld hl, sp+$07                                 ; $5445: $F8 $07
    inc h                                         ; $5447: $24
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    ld b, $24                                     ; $544A: $06 $24
    add b                                         ; $544C: $80
    db $FC                                        ; $544D: $FC
    nop                                           ; $544E: $00
    ld bc, $FC06                                  ; $544F: $01 $06 $FC
    ld hl, sp+$00                                 ; $5452: $F8 $00
    ld b, $80                                     ; $5454: $06 $80

    db $E8, $00, $03, $03, $E8, $F8, $02, $03, $E0, $00, $01, $03, $E0, $F8, $00, $03
    db $80, $E0, $F8, $0C, $43, $D8, $08, $0C, $03, $D8, $F8, $0E, $03, $E8, $08, $0E
    db $23, $E0, $00, $0A, $03, $E8, $F8, $0A, $03, $80, $E8, $10, $0C, $43, $E0, $08
    db $0C, $23, $E8, $F8, $0C, $43, $D8, $00, $0C, $03, $E0, $F0, $0D, $03, $E8, $00
    db $0E, $03, $80, $E0, $F0, $0C, $43, $E8, $08, $0C, $03, $E8, $F8, $0A, $03, $80
    db $E8, $00, $0C, $03, $80, $E0, $00, $07, $03, $E0, $F8, $06, $03, $E8, $00, $05
    db $03, $E8, $F8, $04, $03, $80

    add sp, -$08                                  ; $54BC: $E8 $F8
    add hl, bc                                    ; $54BE: $09
    inc bc                                        ; $54BF: $03
    ldh [$F8], a                                  ; $54C0: $E0 $F8
    ld [$8003], sp                                ; $54C2: $08 $03 $80

    db $D8, $00, $0C, $03, $D0, $00, $0B, $03, $D8, $F8, $0F, $03, $E0, $00, $0E, $03
    db $E8, $F8, $0A, $03, $80, $E8, $F8, $0C, $63, $D8, $00, $0C, $03, $E0, $F8, $0D
    db $03, $E8, $00, $0F, $03, $80, $E0, $F8, $0C, $03, $E0, $00, $0D, $03, $E8, $F8
    db $0A, $03, $80

    nop                                           ; $54F8: $00

jr_011_54F9:
    ld hl, sp+$1F                                 ; $54F9: $F8 $1F
    jr nz, jr_011_54FD                            ; $54FB: $20 $00

jr_011_54FD:
    nop                                           ; $54FD: $00
    ld e, $20                                     ; $54FE: $1E $20
    ld hl, sp-$08                                 ; $5500: $F8 $F8
    dec e                                         ; $5502: $1D
    jr nz, jr_011_54FD                            ; $5503: $20 $F8

    nop                                           ; $5505: $00
    inc e                                         ; $5506: $1C
    jr nz, jr_011_54F9                            ; $5507: $20 $F0

    ld hl, sp+$1B                                 ; $5509: $F8 $1B
    jr nz, jr_011_54FD                            ; $550B: $20 $F0

    nop                                           ; $550D: $00
    ld a, [de]                                    ; $550E: $1A
    jr nz, jr_011_54F9                            ; $550F: $20 $E8

    ld hl, sp+$19                                 ; $5511: $F8 $19
    jr nz, jr_011_54FD                            ; $5513: $20 $E8

    nop                                           ; $5515: $00
    jr jr_011_5538                                ; $5516: $18 $20

    add b                                         ; $5518: $80
    nop                                           ; $5519: $00

jr_011_551A:
    ld hl, sp+$17                                 ; $551A: $F8 $17
    jr nz, jr_011_551E                            ; $551C: $20 $00

jr_011_551E:
    nop                                           ; $551E: $00
    ld d, $20                                     ; $551F: $16 $20
    ld hl, sp-$08                                 ; $5521: $F8 $F8
    dec d                                         ; $5523: $15
    jr nz, jr_011_551E                            ; $5524: $20 $F8

    nop                                           ; $5526: $00
    inc d                                         ; $5527: $14
    jr nz, jr_011_551A                            ; $5528: $20 $F0

    ld hl, sp+$13                                 ; $552A: $F8 $13
    jr nz, jr_011_551E                            ; $552C: $20 $F0

    nop                                           ; $552E: $00
    ld [de], a                                    ; $552F: $12
    jr nz, jr_011_551A                            ; $5530: $20 $E8

    ld hl, sp+$11                                 ; $5532: $F8 $11
    jr nz, jr_011_551E                            ; $5534: $20 $E8

    nop                                           ; $5536: $00
    db $10                                        ; $5537: $10

jr_011_5538:
    jr nz, @-$7E                                  ; $5538: $20 $80

    nop                                           ; $553A: $00

jr_011_553B:
    ld hl, sp+$0F                                 ; $553B: $F8 $0F
    jr nz, jr_011_553F                            ; $553D: $20 $00

jr_011_553F:
    nop                                           ; $553F: $00
    ld c, $20                                     ; $5540: $0E $20
    ld hl, sp-$08                                 ; $5542: $F8 $F8
    dec c                                         ; $5544: $0D
    jr nz, jr_011_553F                            ; $5545: $20 $F8

    nop                                           ; $5547: $00
    inc c                                         ; $5548: $0C
    jr nz, jr_011_553B                            ; $5549: $20 $F0

    ld hl, sp+$0B                                 ; $554B: $F8 $0B
    jr nz, jr_011_553F                            ; $554D: $20 $F0

    nop                                           ; $554F: $00
    ld a, [bc]                                    ; $5550: $0A
    jr nz, jr_011_553B                            ; $5551: $20 $E8

    ld hl, sp+$09                                 ; $5553: $F8 $09
    jr nz, jr_011_553F                            ; $5555: $20 $E8

    nop                                           ; $5557: $00
    ld [$8020], sp                                ; $5558: $08 $20 $80
    nop                                           ; $555B: $00

jr_011_555C:
    ld hl, sp+$07                                 ; $555C: $F8 $07
    jr nz, jr_011_5560                            ; $555E: $20 $00

jr_011_5560:
    nop                                           ; $5560: $00
    ld b, $20                                     ; $5561: $06 $20
    ld hl, sp-$08                                 ; $5563: $F8 $F8
    dec b                                         ; $5565: $05
    jr nz, jr_011_5560                            ; $5566: $20 $F8

    nop                                           ; $5568: $00
    inc b                                         ; $5569: $04
    jr nz, jr_011_555C                            ; $556A: $20 $F0

    ld hl, sp+$03                                 ; $556C: $F8 $03
    jr nz, jr_011_5560                            ; $556E: $20 $F0

    nop                                           ; $5570: $00
    ld [bc], a                                    ; $5571: $02
    jr nz, jr_011_555C                            ; $5572: $20 $E8

    ld hl, sp+$01                                 ; $5574: $F8 $01
    jr nz, jr_011_5560                            ; $5576: $20 $E8

    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    jr nz, @-$7E                                  ; $557A: $20 $80

    nop                                           ; $557C: $00
    nop                                           ; $557D: $00
    rra                                           ; $557E: $1F
    nop                                           ; $557F: $00
    nop                                           ; $5580: $00
    ld hl, sp+$1E                                 ; $5581: $F8 $1E
    nop                                           ; $5583: $00
    ldh a, [rP1]                                  ; $5584: $F0 $00
    dec e                                         ; $5586: $1D
    nop                                           ; $5587: $00
    ld hl, sp-$08                                 ; $5588: $F8 $F8
    inc e                                         ; $558A: $1C
    nop                                           ; $558B: $00
    ld hl, sp+$00                                 ; $558C: $F8 $00
    dec de                                        ; $558E: $1B
    nop                                           ; $558F: $00
    ldh a, [$F8]                                  ; $5590: $F0 $F8
    ld a, [de]                                    ; $5592: $1A
    nop                                           ; $5593: $00
    add sp, $00                                   ; $5594: $E8 $00
    add hl, de                                    ; $5596: $19
    nop                                           ; $5597: $00
    add sp, -$08                                  ; $5598: $E8 $F8
    jr jr_011_559C                                ; $559A: $18 $00

jr_011_559C:
    add b                                         ; $559C: $80
    nop                                           ; $559D: $00
    nop                                           ; $559E: $00
    rla                                           ; $559F: $17
    nop                                           ; $55A0: $00
    nop                                           ; $55A1: $00
    ld hl, sp+$16                                 ; $55A2: $F8 $16
    nop                                           ; $55A4: $00
    ld hl, sp+$00                                 ; $55A5: $F8 $00
    dec d                                         ; $55A7: $15
    nop                                           ; $55A8: $00
    ld hl, sp-$08                                 ; $55A9: $F8 $F8
    inc d                                         ; $55AB: $14
    nop                                           ; $55AC: $00
    ldh a, [rP1]                                  ; $55AD: $F0 $00
    inc de                                        ; $55AF: $13
    nop                                           ; $55B0: $00
    ldh a, [$F8]                                  ; $55B1: $F0 $F8
    ld [de], a                                    ; $55B3: $12
    nop                                           ; $55B4: $00
    add sp, $00                                   ; $55B5: $E8 $00
    ld de, $E800                                  ; $55B7: $11 $00 $E8
    ld hl, sp+$10                                 ; $55BA: $F8 $10
    nop                                           ; $55BC: $00
    add b                                         ; $55BD: $80
    nop                                           ; $55BE: $00
    nop                                           ; $55BF: $00
    rrca                                          ; $55C0: $0F
    nop                                           ; $55C1: $00
    nop                                           ; $55C2: $00
    ld hl, sp+$0E                                 ; $55C3: $F8 $0E
    nop                                           ; $55C5: $00
    ld hl, sp+$00                                 ; $55C6: $F8 $00
    dec c                                         ; $55C8: $0D
    nop                                           ; $55C9: $00
    ld hl, sp-$08                                 ; $55CA: $F8 $F8
    inc c                                         ; $55CC: $0C
    nop                                           ; $55CD: $00
    ldh a, [rP1]                                  ; $55CE: $F0 $00
    dec bc                                        ; $55D0: $0B
    nop                                           ; $55D1: $00
    ldh a, [$F8]                                  ; $55D2: $F0 $F8
    ld a, [bc]                                    ; $55D4: $0A
    nop                                           ; $55D5: $00
    add sp, $00                                   ; $55D6: $E8 $00
    add hl, bc                                    ; $55D8: $09
    nop                                           ; $55D9: $00
    add sp, -$08                                  ; $55DA: $E8 $F8
    ld [$8000], sp                                ; $55DC: $08 $00 $80
    nop                                           ; $55DF: $00
    nop                                           ; $55E0: $00
    rlca                                          ; $55E1: $07
    nop                                           ; $55E2: $00
    nop                                           ; $55E3: $00
    ld hl, sp+$06                                 ; $55E4: $F8 $06
    nop                                           ; $55E6: $00
    ld hl, sp+$00                                 ; $55E7: $F8 $00
    dec b                                         ; $55E9: $05
    nop                                           ; $55EA: $00
    ld hl, sp-$08                                 ; $55EB: $F8 $F8
    inc b                                         ; $55ED: $04
    nop                                           ; $55EE: $00
    ldh a, [rP1]                                  ; $55EF: $F0 $00
    inc bc                                        ; $55F1: $03
    nop                                           ; $55F2: $00
    ldh a, [$F8]                                  ; $55F3: $F0 $F8
    ld [bc], a                                    ; $55F5: $02
    nop                                           ; $55F6: $00
    add sp, $00                                   ; $55F7: $E8 $00
    ld bc, $E800                                  ; $55F9: $01 $00 $E8
    ld hl, sp+$00                                 ; $55FC: $F8 $00
    nop                                           ; $55FE: $00
    add b                                         ; $55FF: $80
    nop                                           ; $5600: $00
    db $10                                        ; $5601: $10
    dec de                                        ; $5602: $1B
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    ld [$001A], sp                                ; $5605: $08 $1A $00
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    add hl, de                                    ; $560A: $19
    nop                                           ; $560B: $00
    nop                                           ; $560C: $00
    ld hl, sp+$18                                 ; $560D: $F8 $18
    nop                                           ; $560F: $00
    ld hl, sp+$10                                 ; $5610: $F8 $10
    dec bc                                        ; $5612: $0B
    nop                                           ; $5613: $00
    ld hl, sp+$08                                 ; $5614: $F8 $08
    ld a, [bc]                                    ; $5616: $0A
    nop                                           ; $5617: $00
    ld hl, sp+$00                                 ; $5618: $F8 $00
    add hl, bc                                    ; $561A: $09
    nop                                           ; $561B: $00
    ld hl, sp-$08                                 ; $561C: $F8 $F8
    ld [$8000], sp                                ; $561E: $08 $00 $80
    nop                                           ; $5621: $00
    db $10                                        ; $5622: $10
    rra                                           ; $5623: $1F
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    ld [$001E], sp                                ; $5626: $08 $1E $00
    nop                                           ; $5629: $00
    nop                                           ; $562A: $00
    dec e                                         ; $562B: $1D
    nop                                           ; $562C: $00
    nop                                           ; $562D: $00
    ld hl, sp+$1C                                 ; $562E: $F8 $1C
    nop                                           ; $5630: $00
    ld hl, sp+$10                                 ; $5631: $F8 $10
    rrca                                          ; $5633: $0F
    nop                                           ; $5634: $00
    ld hl, sp+$08                                 ; $5635: $F8 $08
    ld c, $00                                     ; $5637: $0E $00
    ld hl, sp+$00                                 ; $5639: $F8 $00
    dec c                                         ; $563B: $0D
    nop                                           ; $563C: $00
    ld hl, sp-$08                                 ; $563D: $F8 $F8
    inc c                                         ; $563F: $0C
    nop                                           ; $5640: $00
    add b                                         ; $5641: $80
    nop                                           ; $5642: $00
    db $10                                        ; $5643: $10
    inc de                                        ; $5644: $13
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    ld [$0012], sp                                ; $5647: $08 $12 $00
    nop                                           ; $564A: $00
    nop                                           ; $564B: $00
    ld de, $0000                                  ; $564C: $11 $00 $00
    ld hl, sp+$10                                 ; $564F: $F8 $10
    nop                                           ; $5651: $00
    ld hl, sp+$10                                 ; $5652: $F8 $10
    inc bc                                        ; $5654: $03
    nop                                           ; $5655: $00
    ld hl, sp+$08                                 ; $5656: $F8 $08
    ld [bc], a                                    ; $5658: $02
    nop                                           ; $5659: $00
    ld hl, sp+$00                                 ; $565A: $F8 $00
    ld bc, $F800                                  ; $565C: $01 $00 $F8
    ld hl, sp+$00                                 ; $565F: $F8 $00
    nop                                           ; $5661: $00
    add b                                         ; $5662: $80
    nop                                           ; $5663: $00
    db $10                                        ; $5664: $10
    rla                                           ; $5665: $17
    nop                                           ; $5666: $00
    nop                                           ; $5667: $00
    ld [$0016], sp                                ; $5668: $08 $16 $00
    nop                                           ; $566B: $00
    nop                                           ; $566C: $00
    dec d                                         ; $566D: $15
    nop                                           ; $566E: $00
    nop                                           ; $566F: $00
    ld hl, sp+$14                                 ; $5670: $F8 $14
    nop                                           ; $5672: $00
    ld hl, sp+$10                                 ; $5673: $F8 $10
    rlca                                          ; $5675: $07
    nop                                           ; $5676: $00
    ld hl, sp+$08                                 ; $5677: $F8 $08
    ld b, $00                                     ; $5679: $06 $00
    ld hl, sp+$00                                 ; $567B: $F8 $00
    dec b                                         ; $567D: $05
    nop                                           ; $567E: $00
    ld hl, sp-$08                                 ; $567F: $F8 $F8
    inc b                                         ; $5681: $04
    nop                                           ; $5682: $00
    add b                                         ; $5683: $80
    ld [$00FC], sp                                ; $5684: $08 $FC $00
    ld bc, $FC10                                  ; $5687: $01 $10 $FC
    ld bc, $8001                                  ; $568A: $01 $01 $80
    db $10                                        ; $568D: $10
    ld hl, sp+$03                                 ; $568E: $F8 $03
    ld hl, $0010                                  ; $5690: $21 $10 $00
    inc bc                                        ; $5693: $03
    ld bc, $F808                                  ; $5694: $01 $08 $F8
    ld [bc], a                                    ; $5697: $02
    ld hl, $0008                                  ; $5698: $21 $08 $00
    ld [bc], a                                    ; $569B: $02
    ld bc, $1480                                  ; $569C: $01 $80 $14
    nop                                           ; $569F: $00
    rlca                                          ; $56A0: $07
    nop                                           ; $56A1: $00
    inc d                                         ; $56A2: $14
    ld hl, sp+$06                                 ; $56A3: $F8 $06
    nop                                           ; $56A5: $00
    inc c                                         ; $56A6: $0C
    nop                                           ; $56A7: $00
    dec b                                         ; $56A8: $05
    nop                                           ; $56A9: $00
    inc c                                         ; $56AA: $0C
    ld hl, sp+$04                                 ; $56AB: $F8 $04
    nop                                           ; $56AD: $00
    add b                                         ; $56AE: $80

    db $D0, $FC, $03, $06, $D8, $FC, $04, $06, $E0, $FC, $02, $00, $E8, $FC, $02, $00
    db $F0, $FC, $02, $00, $F8, $FC, $01, $01, $00, $FC, $00, $01, $80, $E0, $FC, $02
    db $00, $D0, $FC, $05, $06, $D8, $FC, $06, $06, $E8, $FC, $02, $00, $F0, $FC, $02
    db $00, $F8, $FC, $01, $01, $00, $FC, $00, $01, $80

    nop                                           ; $56E9: $00
    nop                                           ; $56EA: $00
    ld [bc], a                                    ; $56EB: $02
    daa                                           ; $56EC: $27
    nop                                           ; $56ED: $00
    ld hl, sp+$02                                 ; $56EE: $F8 $02
    rlca                                          ; $56F0: $07
    ld hl, sp+$00                                 ; $56F1: $F8 $00

jr_011_56F3:
    ld bc, $F827                                  ; $56F3: $01 $27 $F8
    ld hl, sp+$01                                 ; $56F6: $F8 $01

jr_011_56F8:
    rlca                                          ; $56F8: $07
    add b                                         ; $56F9: $80
    ld hl, sp+$00                                 ; $56FA: $F8 $00
    nop                                           ; $56FC: $00
    daa                                           ; $56FD: $27
    ld hl, sp-$08                                 ; $56FE: $F8 $F8
    nop                                           ; $5700: $00
    rlca                                          ; $5701: $07
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    ld [bc], a                                    ; $5704: $02
    daa                                           ; $5705: $27
    nop                                           ; $5706: $00
    ld hl, sp+$02                                 ; $5707: $F8 $02

jr_011_5709:
    rlca                                          ; $5709: $07
    add b                                         ; $570A: $80
    ld hl, sp+$00                                 ; $570B: $F8 $00
    nop                                           ; $570D: $00
    daa                                           ; $570E: $27
    ld hl, sp-$08                                 ; $570F: $F8 $F8
    nop                                           ; $5711: $00
    rlca                                          ; $5712: $07
    add b                                         ; $5713: $80
    ld hl, sp-$08                                 ; $5714: $F8 $F8
    ld bc, $F807                                  ; $5716: $01 $07 $F8
    nop                                           ; $5719: $00
    nop                                           ; $571A: $00
    daa                                           ; $571B: $27
    add b                                         ; $571C: $80
    ld hl, sp-$08                                 ; $571D: $F8 $F8
    ld [bc], a                                    ; $571F: $02
    rlca                                          ; $5720: $07
    ld hl, sp+$00                                 ; $5721: $F8 $00
    nop                                           ; $5723: $00
    daa                                           ; $5724: $27
    add b                                         ; $5725: $80
    ld hl, sp-$08                                 ; $5726: $F8 $F8
    nop                                           ; $5728: $00
    rlca                                          ; $5729: $07
    ld hl, sp+$00                                 ; $572A: $F8 $00
    inc bc                                        ; $572C: $03
    rlca                                          ; $572D: $07
    add b                                         ; $572E: $80
    nop                                           ; $572F: $00
    ld hl, sp+$04                                 ; $5730: $F8 $04
    inc b                                         ; $5732: $04
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
    ld bc, $8004                                  ; $5735: $01 $04 $80
    nop                                           ; $5738: $00
    ld hl, sp+$00                                 ; $5739: $F8 $00
    inc b                                         ; $573B: $04
    nop                                           ; $573C: $00
    nop                                           ; $573D: $00
    ld bc, $8004                                  ; $573E: $01 $04 $80
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    inc bc                                        ; $5743: $03
    inc b                                         ; $5744: $04
    nop                                           ; $5745: $00
    ld hl, sp+$02                                 ; $5746: $F8 $02
    inc b                                         ; $5748: $04
    add b                                         ; $5749: $80
    nop                                           ; $574A: $00
    nop                                           ; $574B: $00
    dec b                                         ; $574C: $05
    inc b                                         ; $574D: $04
    nop                                           ; $574E: $00
    ld hl, sp+$04                                 ; $574F: $F8 $04
    inc b                                         ; $5751: $04
    add b                                         ; $5752: $80
    rst $38                                       ; $5753: $FF
    ei                                            ; $5754: $FB
    dec b                                         ; $5755: $05
    nop                                           ; $5756: $00
    add b                                         ; $5757: $80
    nop                                           ; $5758: $00
    db $FC                                        ; $5759: $FC
    inc b                                         ; $575A: $04
    nop                                           ; $575B: $00
    add b                                         ; $575C: $80
    ld hl, sp+$00                                 ; $575D: $F8 $00
    ld bc, $F800                                  ; $575F: $01 $00 $F8
    ld hl, sp+$00                                 ; $5762: $F8 $00
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    nop                                           ; $5766: $00
    inc bc                                        ; $5767: $03
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    ld hl, sp+$02                                 ; $576A: $F8 $02
    nop                                           ; $576C: $00
    add b                                         ; $576D: $80
    rst $38                                       ; $576E: $FF
    db $FC                                        ; $576F: $FC
    dec b                                         ; $5770: $05
    jr nz, jr_011_56F3                            ; $5771: $20 $80

    nop                                           ; $5773: $00
    db $FC                                        ; $5774: $FC
    inc b                                         ; $5775: $04
    jr nz, jr_011_56F8                            ; $5776: $20 $80

    ld hl, sp-$08                                 ; $5778: $F8 $F8
    ld bc, $F820                                  ; $577A: $01 $20 $F8
    nop                                           ; $577D: $00
    nop                                           ; $577E: $00
    jr nz, jr_011_5781                            ; $577F: $20 $00

jr_011_5781:
    ld hl, sp+$03                                 ; $5781: $F8 $03
    jr nz, jr_011_5785                            ; $5783: $20 $00

jr_011_5785:
    nop                                           ; $5785: $00
    ld [bc], a                                    ; $5786: $02
    jr nz, jr_011_5709                            ; $5787: $20 $80

    nop                                           ; $5789: $00
    db $EC                                        ; $578A: $EC
    ld c, $48                                     ; $578B: $0E $48
    ld hl, sp-$14                                 ; $578D: $F8 $EC
    ld c, $08                                     ; $578F: $0E $08
    nop                                           ; $5791: $00
    inc b                                         ; $5792: $04
    dec b                                         ; $5793: $05
    add hl, bc                                    ; $5794: $09
    nop                                           ; $5795: $00
    db $FC                                        ; $5796: $FC
    inc b                                         ; $5797: $04
    add hl, bc                                    ; $5798: $09
    nop                                           ; $5799: $00
    db $F4                                        ; $579A: $F4
    inc bc                                        ; $579B: $03
    add hl, bc                                    ; $579C: $09
    ld hl, sp+$04                                 ; $579D: $F8 $04
    ld [bc], a                                    ; $579F: $02
    add hl, bc                                    ; $57A0: $09
    ld hl, sp-$04                                 ; $57A1: $F8 $FC
    ld bc, $F809                                  ; $57A3: $01 $09 $F8
    db $F4                                        ; $57A6: $F4
    nop                                           ; $57A7: $00
    add hl, bc                                    ; $57A8: $09
    add b                                         ; $57A9: $80
    rst $38                                       ; $57AA: $FF
    db $EB                                        ; $57AB: $EB
    ld c, $48                                     ; $57AC: $0E $48
    ld sp, hl                                     ; $57AE: $F9
    db $EB                                        ; $57AF: $EB
    ld c, $08                                     ; $57B0: $0E $08
    nop                                           ; $57B2: $00
    inc b                                         ; $57B3: $04
    dec b                                         ; $57B4: $05
    add hl, bc                                    ; $57B5: $09
    nop                                           ; $57B6: $00
    db $FC                                        ; $57B7: $FC
    inc b                                         ; $57B8: $04
    add hl, bc                                    ; $57B9: $09
    nop                                           ; $57BA: $00
    db $F4                                        ; $57BB: $F4
    inc bc                                        ; $57BC: $03
    add hl, bc                                    ; $57BD: $09
    ld hl, sp+$04                                 ; $57BE: $F8 $04
    ld [bc], a                                    ; $57C0: $02
    add hl, bc                                    ; $57C1: $09
    ld hl, sp-$04                                 ; $57C2: $F8 $FC
    ld bc, $F809                                  ; $57C4: $01 $09 $F8
    db $F4                                        ; $57C7: $F4
    nop                                           ; $57C8: $00
    add hl, bc                                    ; $57C9: $09
    add b                                         ; $57CA: $80
    cp $EA                                        ; $57CB: $FE $EA
    ld c, $48                                     ; $57CD: $0E $48
    ld a, [$0EEA]                                 ; $57CF: $FA $EA $0E
    ld [$0400], sp                                ; $57D2: $08 $00 $04
    dec b                                         ; $57D5: $05
    add hl, bc                                    ; $57D6: $09
    nop                                           ; $57D7: $00
    db $FC                                        ; $57D8: $FC
    inc b                                         ; $57D9: $04
    add hl, bc                                    ; $57DA: $09
    nop                                           ; $57DB: $00
    db $F4                                        ; $57DC: $F4
    inc bc                                        ; $57DD: $03
    add hl, bc                                    ; $57DE: $09
    ld hl, sp+$04                                 ; $57DF: $F8 $04
    ld [bc], a                                    ; $57E1: $02
    add hl, bc                                    ; $57E2: $09
    ld hl, sp-$04                                 ; $57E3: $F8 $FC
    ld bc, $F809                                  ; $57E5: $01 $09 $F8
    db $F4                                        ; $57E8: $F4
    nop                                           ; $57E9: $00
    add hl, bc                                    ; $57EA: $09
    add b                                         ; $57EB: $80
    nop                                           ; $57EC: $00
    dec c                                         ; $57ED: $0D
    ld c, $68                                     ; $57EE: $0E $68
    ld hl, sp+$0D                                 ; $57F0: $F8 $0D
    ld c, $28                                     ; $57F2: $0E $28
    nop                                           ; $57F4: $00
    push af                                       ; $57F5: $F5
    dec b                                         ; $57F6: $05
    add hl, hl                                    ; $57F7: $29
    nop                                           ; $57F8: $00
    db $FD                                        ; $57F9: $FD
    inc b                                         ; $57FA: $04
    add hl, hl                                    ; $57FB: $29
    nop                                           ; $57FC: $00
    dec b                                         ; $57FD: $05
    inc bc                                        ; $57FE: $03
    add hl, hl                                    ; $57FF: $29
    ld hl, sp-$0B                                 ; $5800: $F8 $F5
    ld [bc], a                                    ; $5802: $02
    add hl, hl                                    ; $5803: $29
    ld hl, sp-$03                                 ; $5804: $F8 $FD
    ld bc, $F829                                  ; $5806: $01 $29 $F8
    dec b                                         ; $5809: $05
    nop                                           ; $580A: $00
    add hl, hl                                    ; $580B: $29
    add b                                         ; $580C: $80
    rst $38                                       ; $580D: $FF
    ld c, $0E                                     ; $580E: $0E $0E
    ld l, b                                       ; $5810: $68
    ld sp, hl                                     ; $5811: $F9
    ld c, $0E                                     ; $5812: $0E $0E
    jr z, jr_011_5816                             ; $5814: $28 $00

jr_011_5816:
    push af                                       ; $5816: $F5
    dec b                                         ; $5817: $05
    add hl, hl                                    ; $5818: $29
    nop                                           ; $5819: $00
    db $FD                                        ; $581A: $FD
    inc b                                         ; $581B: $04
    add hl, hl                                    ; $581C: $29
    nop                                           ; $581D: $00
    dec b                                         ; $581E: $05
    inc bc                                        ; $581F: $03
    add hl, hl                                    ; $5820: $29
    ld hl, sp-$0B                                 ; $5821: $F8 $F5
    ld [bc], a                                    ; $5823: $02
    add hl, hl                                    ; $5824: $29
    ld hl, sp-$03                                 ; $5825: $F8 $FD
    ld bc, $F829                                  ; $5827: $01 $29 $F8
    dec b                                         ; $582A: $05
    nop                                           ; $582B: $00
    add hl, hl                                    ; $582C: $29
    add b                                         ; $582D: $80
    cp $0F                                        ; $582E: $FE $0F
    ld c, $68                                     ; $5830: $0E $68
    ld a, [$0E0F]                                 ; $5832: $FA $0F $0E
    jr z, jr_011_5837                             ; $5835: $28 $00

jr_011_5837:
    push af                                       ; $5837: $F5
    dec b                                         ; $5838: $05
    add hl, hl                                    ; $5839: $29
    nop                                           ; $583A: $00
    db $FD                                        ; $583B: $FD
    inc b                                         ; $583C: $04
    add hl, hl                                    ; $583D: $29
    nop                                           ; $583E: $00
    dec b                                         ; $583F: $05
    inc bc                                        ; $5840: $03
    add hl, hl                                    ; $5841: $29
    ld hl, sp-$0B                                 ; $5842: $F8 $F5
    ld [bc], a                                    ; $5844: $02
    add hl, hl                                    ; $5845: $29
    ld hl, sp-$03                                 ; $5846: $F8 $FD
    ld bc, $F829                                  ; $5848: $01 $29 $F8
    dec b                                         ; $584B: $05
    nop                                           ; $584C: $00
    add hl, hl                                    ; $584D: $29
    add b                                         ; $584E: $80
    db $EC                                        ; $584F: $EC
    ld hl, sp+$0D                                 ; $5850: $F8 $0D
    ld c, b                                       ; $5852: $48
    db $EB                                        ; $5853: $EB
    ld hl, sp+$06                                 ; $5854: $F8 $06
    add hl, bc                                    ; $5856: $09
    db $EC                                        ; $5857: $EC
    nop                                           ; $5858: $00
    dec c                                         ; $5859: $0D
    ld l, b                                       ; $585A: $68
    inc bc                                        ; $585B: $03
    nop                                           ; $585C: $00
    add hl, bc                                    ; $585D: $09
    add hl, hl                                    ; $585E: $29
    inc bc                                        ; $585F: $03
    ld hl, sp+$09                                 ; $5860: $F8 $09
    add hl, bc                                    ; $5862: $09
    ei                                            ; $5863: $FB
    nop                                           ; $5864: $00
    ld [$FB29], sp                                ; $5865: $08 $29 $FB
    ld hl, sp+$08                                 ; $5868: $F8 $08
    add hl, bc                                    ; $586A: $09
    di                                            ; $586B: $F3
    nop                                           ; $586C: $00
    rlca                                          ; $586D: $07
    add hl, hl                                    ; $586E: $29
    di                                            ; $586F: $F3
    ld hl, sp+$07                                 ; $5870: $F8 $07
    add hl, bc                                    ; $5872: $09
    db $EB                                        ; $5873: $EB
    nop                                           ; $5874: $00
    ld b, $29                                     ; $5875: $06 $29
    add b                                         ; $5877: $80
    db $EB                                        ; $5878: $EB
    ld sp, hl                                     ; $5879: $F9
    dec c                                         ; $587A: $0D
    ld c, b                                       ; $587B: $48
    db $EB                                        ; $587C: $EB
    ld hl, sp+$06                                 ; $587D: $F8 $06
    add hl, bc                                    ; $587F: $09
    db $EB                                        ; $5880: $EB
    rst $38                                       ; $5881: $FF
    dec c                                         ; $5882: $0D
    ld l, b                                       ; $5883: $68
    inc bc                                        ; $5884: $03
    nop                                           ; $5885: $00
    add hl, bc                                    ; $5886: $09
    add hl, hl                                    ; $5887: $29
    inc bc                                        ; $5888: $03
    ld hl, sp+$09                                 ; $5889: $F8 $09
    add hl, bc                                    ; $588B: $09
    ei                                            ; $588C: $FB
    nop                                           ; $588D: $00
    ld [$FB29], sp                                ; $588E: $08 $29 $FB
    ld hl, sp+$08                                 ; $5891: $F8 $08
    add hl, bc                                    ; $5893: $09
    di                                            ; $5894: $F3
    nop                                           ; $5895: $00
    rlca                                          ; $5896: $07
    add hl, hl                                    ; $5897: $29
    di                                            ; $5898: $F3
    ld hl, sp+$07                                 ; $5899: $F8 $07
    add hl, bc                                    ; $589B: $09
    db $EB                                        ; $589C: $EB
    nop                                           ; $589D: $00
    ld b, $29                                     ; $589E: $06 $29
    add b                                         ; $58A0: $80
    ld [$0DFA], a                                 ; $58A1: $EA $FA $0D
    ld c, b                                       ; $58A4: $48
    db $EB                                        ; $58A5: $EB
    ld hl, sp+$06                                 ; $58A6: $F8 $06
    add hl, bc                                    ; $58A8: $09
    ld [$0DFE], a                                 ; $58A9: $EA $FE $0D
    ld l, b                                       ; $58AC: $68
    inc bc                                        ; $58AD: $03
    nop                                           ; $58AE: $00
    add hl, bc                                    ; $58AF: $09
    add hl, hl                                    ; $58B0: $29
    inc bc                                        ; $58B1: $03
    ld hl, sp+$09                                 ; $58B2: $F8 $09
    add hl, bc                                    ; $58B4: $09
    ei                                            ; $58B5: $FB
    nop                                           ; $58B6: $00
    ld [$FB29], sp                                ; $58B7: $08 $29 $FB
    ld hl, sp+$08                                 ; $58BA: $F8 $08
    add hl, bc                                    ; $58BC: $09
    di                                            ; $58BD: $F3
    nop                                           ; $58BE: $00
    rlca                                          ; $58BF: $07
    add hl, hl                                    ; $58C0: $29
    di                                            ; $58C1: $F3
    ld hl, sp+$07                                 ; $58C2: $F8 $07
    add hl, bc                                    ; $58C4: $09
    db $EB                                        ; $58C5: $EB
    nop                                           ; $58C6: $00
    ld b, $29                                     ; $58C7: $06 $29
    add b                                         ; $58C9: $80
    rrca                                          ; $58CA: $0F
    nop                                           ; $58CB: $00
    dec c                                         ; $58CC: $0D
    jr z, jr_011_58DE                             ; $58CD: $28 $0F

    ld hl, sp+$0D                                 ; $58CF: $F8 $0D
    ld [$0008], sp                                ; $58D1: $08 $08 $00
    inc c                                         ; $58D4: $0C
    add hl, hl                                    ; $58D5: $29
    ld [$0CF8], sp                                ; $58D6: $08 $F8 $0C
    add hl, bc                                    ; $58D9: $09
    nop                                           ; $58DA: $00
    nop                                           ; $58DB: $00
    dec bc                                        ; $58DC: $0B
    add hl, hl                                    ; $58DD: $29

jr_011_58DE:
    nop                                           ; $58DE: $00
    ld hl, sp+$0B                                 ; $58DF: $F8 $0B
    add hl, bc                                    ; $58E1: $09
    ld hl, sp+$00                                 ; $58E2: $F8 $00
    ld a, [bc]                                    ; $58E4: $0A
    add hl, hl                                    ; $58E5: $29
    ld hl, sp-$08                                 ; $58E6: $F8 $F8
    ld a, [bc]                                    ; $58E8: $0A
    add hl, bc                                    ; $58E9: $09
    add b                                         ; $58EA: $80
    db $10                                        ; $58EB: $10
    rst $38                                       ; $58EC: $FF
    dec c                                         ; $58ED: $0D
    jr z, jr_011_5900                             ; $58EE: $28 $10

    ld sp, hl                                     ; $58F0: $F9
    dec c                                         ; $58F1: $0D
    ld [$0008], sp                                ; $58F2: $08 $08 $00
    inc c                                         ; $58F5: $0C
    add hl, hl                                    ; $58F6: $29
    ld [$0CF8], sp                                ; $58F7: $08 $F8 $0C
    add hl, bc                                    ; $58FA: $09
    nop                                           ; $58FB: $00
    nop                                           ; $58FC: $00
    dec bc                                        ; $58FD: $0B
    add hl, hl                                    ; $58FE: $29
    nop                                           ; $58FF: $00

jr_011_5900:
    ld hl, sp+$0B                                 ; $5900: $F8 $0B
    add hl, bc                                    ; $5902: $09
    ld hl, sp+$00                                 ; $5903: $F8 $00
    ld a, [bc]                                    ; $5905: $0A
    add hl, hl                                    ; $5906: $29
    ld hl, sp-$08                                 ; $5907: $F8 $F8
    ld a, [bc]                                    ; $5909: $0A
    add hl, bc                                    ; $590A: $09
    add b                                         ; $590B: $80
    ld de, $0DFE                                  ; $590C: $11 $FE $0D
    jr z, @+$13                                   ; $590F: $28 $11

    ld a, [$080D]                                 ; $5911: $FA $0D $08
    ld [$0C00], sp                                ; $5914: $08 $00 $0C
    add hl, hl                                    ; $5917: $29
    ld [$0CF8], sp                                ; $5918: $08 $F8 $0C
    add hl, bc                                    ; $591B: $09
    nop                                           ; $591C: $00
    nop                                           ; $591D: $00
    dec bc                                        ; $591E: $0B
    add hl, hl                                    ; $591F: $29
    nop                                           ; $5920: $00
    ld hl, sp+$0B                                 ; $5921: $F8 $0B
    add hl, bc                                    ; $5923: $09
    ld hl, sp+$00                                 ; $5924: $F8 $00
    ld a, [bc]                                    ; $5926: $0A
    add hl, hl                                    ; $5927: $29
    ld hl, sp-$08                                 ; $5928: $F8 $F8
    ld a, [bc]                                    ; $592A: $0A
    add hl, bc                                    ; $592B: $09
    add b                                         ; $592C: $80
    ld [$0700], sp                                ; $592D: $08 $00 $07
    cpl                                           ; $5930: $2F
    ld [$0608], sp                                ; $5931: $08 $08 $06
    cpl                                           ; $5934: $2F
    ld [$07F8], sp                                ; $5935: $08 $F8 $07
    rrca                                          ; $5938: $0F
    ld [$06F0], sp                                ; $5939: $08 $F0 $06
    rrca                                          ; $593C: $0F
    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    dec b                                         ; $593F: $05
    cpl                                           ; $5940: $2F
    nop                                           ; $5941: $00
    ld [$2F04], sp                                ; $5942: $08 $04 $2F
    nop                                           ; $5945: $00
    ld hl, sp+$05                                 ; $5946: $F8 $05
    rrca                                          ; $5948: $0F
    nop                                           ; $5949: $00
    ldh a, [rDIV]                                 ; $594A: $F0 $04
    rrca                                          ; $594C: $0F
    ld hl, sp+$00                                 ; $594D: $F8 $00
    inc bc                                        ; $594F: $03
    cpl                                           ; $5950: $2F
    ld hl, sp+$08                                 ; $5951: $F8 $08
    ld [bc], a                                    ; $5953: $02
    cpl                                           ; $5954: $2F
    ld hl, sp+$10                                 ; $5955: $F8 $10
    ld bc, $F82F                                  ; $5957: $01 $2F $F8
    ld hl, sp+$03                                 ; $595A: $F8 $03
    rrca                                          ; $595C: $0F
    ld hl, sp-$10                                 ; $595D: $F8 $F0
    ld [bc], a                                    ; $595F: $02
    rrca                                          ; $5960: $0F
    ld hl, sp-$18                                 ; $5961: $F8 $E8
    ld bc, $F00F                                  ; $5963: $01 $0F $F0
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    cpl                                           ; $5968: $2F
    ldh a, [$F8]                                  ; $5969: $F0 $F8
    nop                                           ; $596B: $00
    rrca                                          ; $596C: $0F
    add b                                         ; $596D: $80
    ld hl, sp+$00                                 ; $596E: $F8 $00
    inc bc                                        ; $5970: $03
    cpl                                           ; $5971: $2F
    ld hl, sp-$08                                 ; $5972: $F8 $F8
    inc bc                                        ; $5974: $03
    rrca                                          ; $5975: $0F
    nop                                           ; $5976: $00
    nop                                           ; $5977: $00
    ld a, [bc]                                    ; $5978: $0A
    cpl                                           ; $5979: $2F
    nop                                           ; $597A: $00
    ld hl, sp+$0A                                 ; $597B: $F8 $0A
    rrca                                          ; $597D: $0F
    stop                                          ; $597E: $10 $00
    inc c                                         ; $5980: $0C
    cpl                                           ; $5981: $2F
    db $10                                        ; $5982: $10
    ld hl, sp+$0C                                 ; $5983: $F8 $0C
    rrca                                          ; $5985: $0F
    ld [$0B00], sp                                ; $5986: $08 $00 $0B
    cpl                                           ; $5989: $2F
    ld [$0BF8], sp                                ; $598A: $08 $F8 $0B
    rrca                                          ; $598D: $0F
    nop                                           ; $598E: $00
    ldh a, [$09]                                  ; $598F: $F0 $09
    rrca                                          ; $5991: $0F
    nop                                           ; $5992: $00
    ld [$2F09], sp                                ; $5993: $08 $09 $2F
    ld hl, sp+$08                                 ; $5996: $F8 $08
    ld [$F82F], sp                                ; $5998: $08 $2F $F8
    ldh a, [$08]                                  ; $599B: $F0 $08
    rrca                                          ; $599D: $0F
    ldh a, [rP1]                                  ; $599E: $F0 $00
    nop                                           ; $59A0: $00
    cpl                                           ; $59A1: $2F
    ldh a, [$F8]                                  ; $59A2: $F0 $F8
    nop                                           ; $59A4: $00
    rrca                                          ; $59A5: $0F
    add b                                         ; $59A6: $80
    add sp, $00                                   ; $59A7: $E8 $00
    inc c                                         ; $59A9: $0C
    ld l, a                                       ; $59AA: $6F
    add sp, -$08                                  ; $59AB: $E8 $F8
    inc c                                         ; $59AD: $0C
    ld c, a                                       ; $59AE: $4F
    nop                                           ; $59AF: $00
    nop                                           ; $59B0: $00
    ld de, $002F                                  ; $59B1: $11 $2F $00
    ld [$2F10], sp                                ; $59B4: $08 $10 $2F
    nop                                           ; $59B7: $00
    ld hl, sp+$11                                 ; $59B8: $F8 $11
    rrca                                          ; $59BA: $0F
    nop                                           ; $59BB: $00
    ldh a, [rNR10]                                ; $59BC: $F0 $10
    rrca                                          ; $59BE: $0F
    ld hl, sp+$08                                 ; $59BF: $F8 $08
    ld c, $2F                                     ; $59C1: $0E $2F
    ld hl, sp-$10                                 ; $59C3: $F8 $F0
    ld c, $0F                                     ; $59C5: $0E $0F
    ldh a, [rP1]                                  ; $59C7: $F0 $00
    dec c                                         ; $59C9: $0D
    cpl                                           ; $59CA: $2F
    ldh a, [$F8]                                  ; $59CB: $F0 $F8
    dec c                                         ; $59CD: $0D
    rrca                                          ; $59CE: $0F
    ld hl, sp+$00                                 ; $59CF: $F8 $00
    rrca                                          ; $59D1: $0F
    cpl                                           ; $59D2: $2F
    ld hl, sp-$08                                 ; $59D3: $F8 $F8
    rrca                                          ; $59D5: $0F
    rrca                                          ; $59D6: $0F
    ld [rRAMG], sp                                ; $59D7: $08 $00 $00
    ld l, a                                       ; $59DA: $6F
    ld [$00F8], sp                                ; $59DB: $08 $F8 $00
    ld c, a                                       ; $59DE: $4F
    add b                                         ; $59DF: $80
    nop                                           ; $59E0: $00
    db $10                                        ; $59E1: $10
    daa                                           ; $59E2: $27
    cpl                                           ; $59E3: $2F
    nop                                           ; $59E4: $00
    add sp, $27                                   ; $59E5: $E8 $27
    rrca                                          ; $59E7: $0F
    ld hl, sp+$08                                 ; $59E8: $F8 $08
    dec d                                         ; $59EA: $15
    cpl                                           ; $59EB: $2F
    ld hl, sp-$10                                 ; $59EC: $F8 $F0
    dec d                                         ; $59EE: $15
    rrca                                          ; $59EF: $0F
    nop                                           ; $59F0: $00
    ld [$2F12], sp                                ; $59F1: $08 $12 $2F
    nop                                           ; $59F4: $00
    ldh a, [rNR12]                                ; $59F5: $F0 $12
    rrca                                          ; $59F7: $0F
    ldh a, [rP1]                                  ; $59F8: $F0 $00
    inc d                                         ; $59FA: $14
    cpl                                           ; $59FB: $2F
    ldh a, [$08]                                  ; $59FC: $F0 $08
    inc de                                        ; $59FE: $13
    cpl                                           ; $59FF: $2F
    ldh a, [$F8]                                  ; $5A00: $F0 $F8
    inc d                                         ; $5A02: $14
    rrca                                          ; $5A03: $0F
    ldh a, [$F0]                                  ; $5A04: $F0 $F0
    inc de                                        ; $5A06: $13
    rrca                                          ; $5A07: $0F
    nop                                           ; $5A08: $00
    nop                                           ; $5A09: $00
    ld de, $002F                                  ; $5A0A: $11 $2F $00
    ld hl, sp+$11                                 ; $5A0D: $F8 $11
    rrca                                          ; $5A0F: $0F
    ld hl, sp+$00                                 ; $5A10: $F8 $00
    rrca                                          ; $5A12: $0F
    cpl                                           ; $5A13: $2F
    ld hl, sp-$08                                 ; $5A14: $F8 $F8
    rrca                                          ; $5A16: $0F
    rrca                                          ; $5A17: $0F
    ld [rRAMG], sp                                ; $5A18: $08 $00 $00
    ld l, a                                       ; $5A1B: $6F
    ld [$00F8], sp                                ; $5A1C: $08 $F8 $00
    ld c, a                                       ; $5A1F: $4F
    add b                                         ; $5A20: $80
    add sp, $00                                   ; $5A21: $E8 $00
    inc hl                                        ; $5A23: $23
    ld l, a                                       ; $5A24: $6F
    ldh a, [rP1]                                  ; $5A25: $F0 $00
    ld [hl+], a                                   ; $5A27: $22
    ld c, a                                       ; $5A28: $4F
    ldh a, [$F8]                                  ; $5A29: $F0 $F8
    ld hl, $104F                                  ; $5A2B: $21 $4F $10
    nop                                           ; $5A2E: $00
    inc hl                                        ; $5A2F: $23
    cpl                                           ; $5A30: $2F
    ld [$2200], sp                                ; $5A31: $08 $00 $22
    rrca                                          ; $5A34: $0F
    ld [$21F8], sp                                ; $5A35: $08 $F8 $21
    rrca                                          ; $5A38: $0F
    ldh a, [$F0]                                  ; $5A39: $F0 $F0
    jr nz, jr_011_5A8C                            ; $5A3B: $20 $4F

    ld [$20F0], sp                                ; $5A3D: $08 $F0 $20
    rrca                                          ; $5A40: $0F
    ld hl, sp+$08                                 ; $5A41: $F8 $08
    rra                                           ; $5A43: $1F
    ld c, a                                       ; $5A44: $4F
    nop                                           ; $5A45: $00
    ld [$0F1F], sp                                ; $5A46: $08 $1F $0F
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    ld e, $0F                                     ; $5A4B: $1E $0F
    nop                                           ; $5A4D: $00
    ld hl, sp+$1D                                 ; $5A4E: $F8 $1D
    rrca                                          ; $5A50: $0F
    nop                                           ; $5A51: $00
    ldh a, [rNR32]                                ; $5A52: $F0 $1C
    rrca                                          ; $5A54: $0F
    ld hl, sp+$00                                 ; $5A55: $F8 $00
    dec de                                        ; $5A57: $1B
    rrca                                          ; $5A58: $0F
    ld hl, sp-$08                                 ; $5A59: $F8 $F8
    ld a, [de]                                    ; $5A5B: $1A
    rrca                                          ; $5A5C: $0F
    ld hl, sp-$10                                 ; $5A5D: $F8 $F0
    add hl, de                                    ; $5A5F: $19
    rrca                                          ; $5A60: $0F
    add b                                         ; $5A61: $80
    ldh a, [rP1]                                  ; $5A62: $F0 $00
    dec h                                         ; $5A64: $25
    rrca                                          ; $5A65: $0F
    ldh a, [$F8]                                  ; $5A66: $F0 $F8
    inc h                                         ; $5A68: $24
    rrca                                          ; $5A69: $0F
    ld [$2A00], sp                                ; $5A6A: $08 $00 $2A
    rrca                                          ; $5A6D: $0F
    ld [$29F8], sp                                ; $5A6E: $08 $F8 $29
    rrca                                          ; $5A71: $0F
    ld hl, sp-$18                                 ; $5A72: $F8 $E8
    daa                                           ; $5A74: $27
    rrca                                          ; $5A75: $0F
    nop                                           ; $5A76: $00
    ldh a, [$28]                                  ; $5A77: $F0 $28
    rrca                                          ; $5A79: $0F
    nop                                           ; $5A7A: $00
    add sp, $27                                   ; $5A7B: $E8 $27
    rrca                                          ; $5A7D: $0F
    ld hl, sp-$10                                 ; $5A7E: $F8 $F0
    ld h, $0F                                     ; $5A80: $26 $0F
    ld hl, sp+$08                                 ; $5A82: $F8 $08
    rra                                           ; $5A84: $1F
    ld c, a                                       ; $5A85: $4F
    nop                                           ; $5A86: $00
    ld [$0F1F], sp                                ; $5A87: $08 $1F $0F
    nop                                           ; $5A8A: $00
    nop                                           ; $5A8B: $00

jr_011_5A8C:
    ld e, $0F                                     ; $5A8C: $1E $0F
    nop                                           ; $5A8E: $00
    ld hl, sp+$1D                                 ; $5A8F: $F8 $1D
    rrca                                          ; $5A91: $0F
    ld hl, sp+$00                                 ; $5A92: $F8 $00
    dec de                                        ; $5A94: $1B
    rrca                                          ; $5A95: $0F
    ld hl, sp-$08                                 ; $5A96: $F8 $F8
    ld a, [de]                                    ; $5A98: $1A
    rrca                                          ; $5A99: $0F
    add b                                         ; $5A9A: $80
    add sp, -$08                                  ; $5A9B: $E8 $F8
    inc hl                                        ; $5A9D: $23
    ld c, a                                       ; $5A9E: $4F
    ldh a, [$F8]                                  ; $5A9F: $F0 $F8
    ld [hl+], a                                   ; $5AA1: $22
    ld l, a                                       ; $5AA2: $6F
    ldh a, [rP1]                                  ; $5AA3: $F0 $00
    ld hl, $106F                                  ; $5AA5: $21 $6F $10
    ld hl, sp+$23                                 ; $5AA8: $F8 $23
    rrca                                          ; $5AAA: $0F
    ld [$22F8], sp                                ; $5AAB: $08 $F8 $22
    cpl                                           ; $5AAE: $2F
    ld [$2100], sp                                ; $5AAF: $08 $00 $21
    cpl                                           ; $5AB2: $2F
    ldh a, [$08]                                  ; $5AB3: $F0 $08
    jr nz, @+$71                                  ; $5AB5: $20 $6F

    ld [$2008], sp                                ; $5AB7: $08 $08 $20
    cpl                                           ; $5ABA: $2F
    ld hl, sp-$10                                 ; $5ABB: $F8 $F0
    rra                                           ; $5ABD: $1F
    ld l, a                                       ; $5ABE: $6F
    nop                                           ; $5ABF: $00
    ldh a, [$1F]                                  ; $5AC0: $F0 $1F
    cpl                                           ; $5AC2: $2F
    nop                                           ; $5AC3: $00
    ld hl, sp+$1E                                 ; $5AC4: $F8 $1E
    cpl                                           ; $5AC6: $2F
    nop                                           ; $5AC7: $00
    nop                                           ; $5AC8: $00
    dec e                                         ; $5AC9: $1D
    cpl                                           ; $5ACA: $2F
    nop                                           ; $5ACB: $00
    ld [$2F1C], sp                                ; $5ACC: $08 $1C $2F
    ld hl, sp-$08                                 ; $5ACF: $F8 $F8
    dec de                                        ; $5AD1: $1B
    cpl                                           ; $5AD2: $2F
    ld hl, sp+$00                                 ; $5AD3: $F8 $00
    ld a, [de]                                    ; $5AD5: $1A
    cpl                                           ; $5AD6: $2F
    ld hl, sp+$08                                 ; $5AD7: $F8 $08
    add hl, de                                    ; $5AD9: $19
    cpl                                           ; $5ADA: $2F
    add b                                         ; $5ADB: $80
    ldh a, [$F8]                                  ; $5ADC: $F0 $F8
    dec h                                         ; $5ADE: $25
    cpl                                           ; $5ADF: $2F
    ldh a, [rP1]                                  ; $5AE0: $F0 $00
    inc h                                         ; $5AE2: $24
    cpl                                           ; $5AE3: $2F
    ld [$2AF8], sp                                ; $5AE4: $08 $F8 $2A
    cpl                                           ; $5AE7: $2F
    ld [$2900], sp                                ; $5AE8: $08 $00 $29
    cpl                                           ; $5AEB: $2F
    ld hl, sp+$10                                 ; $5AEC: $F8 $10
    daa                                           ; $5AEE: $27
    cpl                                           ; $5AEF: $2F
    nop                                           ; $5AF0: $00
    ld [$2F28], sp                                ; $5AF1: $08 $28 $2F
    nop                                           ; $5AF4: $00
    db $10                                        ; $5AF5: $10
    daa                                           ; $5AF6: $27
    cpl                                           ; $5AF7: $2F
    ld hl, sp+$08                                 ; $5AF8: $F8 $08
    ld h, $2F                                     ; $5AFA: $26 $2F
    ld hl, sp-$10                                 ; $5AFC: $F8 $F0
    rra                                           ; $5AFE: $1F
    ld l, a                                       ; $5AFF: $6F
    nop                                           ; $5B00: $00
    ldh a, [$1F]                                  ; $5B01: $F0 $1F
    cpl                                           ; $5B03: $2F
    nop                                           ; $5B04: $00
    ld hl, sp+$1E                                 ; $5B05: $F8 $1E
    cpl                                           ; $5B07: $2F
    nop                                           ; $5B08: $00
    nop                                           ; $5B09: $00
    dec e                                         ; $5B0A: $1D
    cpl                                           ; $5B0B: $2F
    ld hl, sp-$08                                 ; $5B0C: $F8 $F8
    dec de                                        ; $5B0E: $1B
    cpl                                           ; $5B0F: $2F
    ld hl, sp+$00                                 ; $5B10: $F8 $00
    ld a, [de]                                    ; $5B12: $1A
    cpl                                           ; $5B13: $2F
    add b                                         ; $5B14: $80
    ldh a, [$F0]                                  ; $5B15: $F0 $F0
    ld a, [de]                                    ; $5B17: $1A
    ld c, a                                       ; $5B18: $4F
    ldh a, [$E8]                                  ; $5B19: $F0 $E8
    add hl, de                                    ; $5B1B: $19
    ld c, b                                       ; $5B1C: $48
    ld [$1AF0], sp                                ; $5B1D: $08 $F0 $1A
    rrca                                          ; $5B20: $0F
    ld [$19E8], sp                                ; $5B21: $08 $E8 $19
    ld [$F0F8], sp                                ; $5B24: $08 $F8 $F0
    ld d, $0F                                     ; $5B27: $16 $0F
    nop                                           ; $5B29: $00
    ldh a, [rNR23]                                ; $5B2A: $F0 $18
    rrca                                          ; $5B2C: $0F
    ld hl, sp+$01                                 ; $5B2D: $F8 $01
    ld [hl], h                                    ; $5B2F: $74
    add hl, bc                                    ; $5B30: $09
    ldh a, [rSB]                                  ; $5B31: $F0 $01
    ld [hl], c                                    ; $5B33: $71
    ld [$10F8], sp                                ; $5B34: $08 $F8 $10
    ld l, a                                       ; $5B37: $6F
    rrca                                          ; $5B38: $0F
    ld hl, sp+$18                                 ; $5B39: $F8 $18
    ld [hl], b                                    ; $5B3B: $70
    rrca                                          ; $5B3C: $0F
    jp hl                                         ; $5B3D: $E9


    ld [$4F14], sp                                ; $5B3E: $08 $14 $4F
    pop hl                                        ; $5B41: $E1
    ld [$4F15], sp                                ; $5B42: $08 $15 $4F
    jr jr_011_5B4F                                ; $5B45: $18 $08

    dec d                                         ; $5B47: $15
    rrca                                          ; $5B48: $0F
    db $10                                        ; $5B49: $10
    ld [$0F14], sp                                ; $5B4A: $08 $14 $0F
    ldh a, [rNR10]                                ; $5B4D: $F0 $10

jr_011_5B4F:
    inc de                                        ; $5B4F: $13
    ld c, a                                       ; $5B50: $4F
    ld [$1310], sp                                ; $5B51: $08 $10 $13
    rrca                                          ; $5B54: $0F
    ld [$1208], sp                                ; $5B55: $08 $08 $12
    rrca                                          ; $5B58: $0F
    ld [$1100], sp                                ; $5B59: $08 $00 $11
    rrca                                          ; $5B5C: $0F
    ld [$10F8], sp                                ; $5B5D: $08 $F8 $10
    rrca                                          ; $5B60: $0F
    nop                                           ; $5B61: $00
    jr jr_011_5B72                                ; $5B62: $18 $0E

    rrca                                          ; $5B64: $0F
    nop                                           ; $5B65: $00
    db $10                                        ; $5B66: $10
    dec c                                         ; $5B67: $0D
    rrca                                          ; $5B68: $0F
    nop                                           ; $5B69: $00
    ld [$0F0C], sp                                ; $5B6A: $08 $0C $0F
    nop                                           ; $5B6D: $00
    nop                                           ; $5B6E: $00
    dec bc                                        ; $5B6F: $0B
    rrca                                          ; $5B70: $0F
    nop                                           ; $5B71: $00

jr_011_5B72:
    ld hl, sp+$0A                                 ; $5B72: $F8 $0A
    rrca                                          ; $5B74: $0F
    ld hl, sp+$08                                 ; $5B75: $F8 $08
    ld b, $0F                                     ; $5B77: $06 $0F
    ld hl, sp+$00                                 ; $5B79: $F8 $00
    dec b                                         ; $5B7B: $05
    rrca                                          ; $5B7C: $0F
    ld hl, sp-$08                                 ; $5B7D: $F8 $F8
    inc b                                         ; $5B7F: $04
    rrca                                          ; $5B80: $0F
    ldh a, [$08]                                  ; $5B81: $F0 $08
    ld [bc], a                                    ; $5B83: $02
    rrca                                          ; $5B84: $0F
    ldh a, [rP1]                                  ; $5B85: $F0 $00
    ld bc, $F00F                                  ; $5B87: $01 $0F $F0
    ld hl, sp+$00                                 ; $5B8A: $F8 $00
    rrca                                          ; $5B8C: $0F
    add b                                         ; $5B8D: $80
    ldh a, [$E9]                                  ; $5B8E: $F0 $E9
    ld hl, $F04F                                  ; $5B90: $21 $4F $F0
    pop af                                        ; $5B93: $F1
    ld [hl+], a                                   ; $5B94: $22
    ld c, a                                       ; $5B95: $4F
    ld hl, sp-$0F                                 ; $5B96: $F8 $F1
    ld e, $0F                                     ; $5B98: $1E $0F
    ld [$21E9], sp                                ; $5B9A: $08 $E9 $21
    rrca                                          ; $5B9D: $0F
    ld [$22F1], sp                                ; $5B9E: $08 $F1 $22
    rrca                                          ; $5BA1: $0F
    nop                                           ; $5BA2: $00
    pop af                                        ; $5BA3: $F1
    jr nz, jr_011_5BB5                            ; $5BA4: $20 $0F

    ldh a, [rSC]                                  ; $5BA6: $F0 $02
    ld [hl], c                                    ; $5BA8: $71
    ld [$02F8], sp                                ; $5BA9: $08 $F8 $02
    ld [hl], h                                    ; $5BAC: $74
    add hl, bc                                    ; $5BAD: $09
    add sp, $09                                   ; $5BAE: $E8 $09
    dec e                                         ; $5BB0: $1D
    ld c, a                                       ; $5BB1: $4F
    add sp, $01                                   ; $5BB2: $E8 $01
    inc e                                         ; $5BB4: $1C

jr_011_5BB5:
    ld c, a                                       ; $5BB5: $4F
    db $10                                        ; $5BB6: $10
    add hl, bc                                    ; $5BB7: $09
    dec e                                         ; $5BB8: $1D
    rrca                                          ; $5BB9: $0F
    db $10                                        ; $5BBA: $10
    ld bc, $0F1C                                  ; $5BBB: $01 $1C $0F
    ld [$1B09], sp                                ; $5BBE: $08 $09 $1B
    rrca                                          ; $5BC1: $0F
    ldh a, [$09]                                  ; $5BC2: $F0 $09
    rla                                           ; $5BC4: $17
    rrca                                          ; $5BC5: $0F
    ld hl, sp+$11                                 ; $5BC6: $F8 $11
    ld l, a                                       ; $5BC8: $6F
    rrca                                          ; $5BC9: $0F
    ld hl, sp+$19                                 ; $5BCA: $F8 $19
    ld [hl], b                                    ; $5BCC: $70
    rrca                                          ; $5BCD: $0F
    ldh a, [rNR11]                                ; $5BCE: $F0 $11
    inc de                                        ; $5BD0: $13
    ld c, a                                       ; $5BD1: $4F
    ld [$1311], sp                                ; $5BD2: $08 $11 $13
    rrca                                          ; $5BD5: $0F
    ld [$1101], sp                                ; $5BD6: $08 $01 $11
    rrca                                          ; $5BD9: $0F
    ld [$10F9], sp                                ; $5BDA: $08 $F9 $10
    rrca                                          ; $5BDD: $0F
    nop                                           ; $5BDE: $00
    add hl, de                                    ; $5BDF: $19
    ld c, $0F                                     ; $5BE0: $0E $0F
    nop                                           ; $5BE2: $00
    ld de, $0F0D                                  ; $5BE3: $11 $0D $0F
    nop                                           ; $5BE6: $00
    add hl, bc                                    ; $5BE7: $09
    inc c                                         ; $5BE8: $0C
    rrca                                          ; $5BE9: $0F
    nop                                           ; $5BEA: $00
    ld bc, $0F0B                                  ; $5BEB: $01 $0B $0F
    nop                                           ; $5BEE: $00
    ld sp, hl                                     ; $5BEF: $F9
    ld a, [bc]                                    ; $5BF0: $0A
    rrca                                          ; $5BF1: $0F
    ld hl, sp+$09                                 ; $5BF2: $F8 $09
    ld b, $0F                                     ; $5BF4: $06 $0F
    ld hl, sp+$01                                 ; $5BF6: $F8 $01
    dec b                                         ; $5BF8: $05
    rrca                                          ; $5BF9: $0F
    ld hl, sp-$07                                 ; $5BFA: $F8 $F9
    inc b                                         ; $5BFC: $04
    rrca                                          ; $5BFD: $0F
    ldh a, [rSB]                                  ; $5BFE: $F0 $01
    ld bc, $F00F                                  ; $5C00: $01 $0F $F0
    ld sp, hl                                     ; $5C03: $F9
    nop                                           ; $5C04: $00
    rrca                                          ; $5C05: $0F
    add b                                         ; $5C06: $80
    ld hl, sp-$0E                                 ; $5C07: $F8 $F2
    jr z, @+$11                                   ; $5C09: $28 $0F

    ldh a, [$F2]                                  ; $5C0B: $F0 $F2
    dec hl                                        ; $5C0D: $2B
    ld c, a                                       ; $5C0E: $4F
    db $F4                                        ; $5C0F: $F4
    ld [$4F29], a                                 ; $5C10: $EA $29 $4F
    ld [$2BF2], sp                                ; $5C13: $08 $F2 $2B
    rrca                                          ; $5C16: $0F
    inc b                                         ; $5C17: $04
    ld [$0F29], a                                 ; $5C18: $EA $29 $0F
    nop                                           ; $5C1B: $00
    ld a, [c]                                     ; $5C1C: $F2
    ld a, [hl+]                                   ; $5C1D: $2A
    rrca                                          ; $5C1E: $0F
    ld hl, sp+$03                                 ; $5C1F: $F8 $03
    ld [hl], h                                    ; $5C21: $74
    add hl, bc                                    ; $5C22: $09
    ldh a, [$03]                                  ; $5C23: $F0 $03
    ld [hl], c                                    ; $5C25: $71
    ld [$0AF0], sp                                ; $5C26: $08 $F0 $0A
    ld h, $0F                                     ; $5C29: $26 $0F
    add sp, $0A                                   ; $5C2B: $E8 $0A
    dec h                                         ; $5C2D: $25
    ld c, a                                       ; $5C2E: $4F
    add sp, $02                                   ; $5C2F: $E8 $02
    inc h                                         ; $5C31: $24
    ld c, a                                       ; $5C32: $4F
    db $10                                        ; $5C33: $10
    ld a, [bc]                                    ; $5C34: $0A
    dec h                                         ; $5C35: $25
    rrca                                          ; $5C36: $0F
    db $10                                        ; $5C37: $10
    ld [bc], a                                    ; $5C38: $02
    inc h                                         ; $5C39: $24
    rrca                                          ; $5C3A: $0F
    ld [$230A], sp                                ; $5C3B: $08 $0A $23
    rrca                                          ; $5C3E: $0F
    ld hl, sp+$12                                 ; $5C3F: $F8 $12
    ld l, a                                       ; $5C41: $6F
    rrca                                          ; $5C42: $0F
    ld hl, sp+$1A                                 ; $5C43: $F8 $1A
    ld [hl], b                                    ; $5C45: $70
    rrca                                          ; $5C46: $0F
    ldh a, [rNR12]                                ; $5C47: $F0 $12
    inc de                                        ; $5C49: $13
    ld c, a                                       ; $5C4A: $4F
    ld [$1312], sp                                ; $5C4B: $08 $12 $13
    rrca                                          ; $5C4E: $0F
    ld [$1102], sp                                ; $5C4F: $08 $02 $11
    rrca                                          ; $5C52: $0F
    ld [$10FA], sp                                ; $5C53: $08 $FA $10
    rrca                                          ; $5C56: $0F
    nop                                           ; $5C57: $00
    ld a, [de]                                    ; $5C58: $1A
    ld c, $0F                                     ; $5C59: $0E $0F
    nop                                           ; $5C5B: $00
    ld [de], a                                    ; $5C5C: $12
    dec c                                         ; $5C5D: $0D
    rrca                                          ; $5C5E: $0F
    nop                                           ; $5C5F: $00
    ld a, [bc]                                    ; $5C60: $0A
    inc c                                         ; $5C61: $0C
    rrca                                          ; $5C62: $0F
    nop                                           ; $5C63: $00
    ld [bc], a                                    ; $5C64: $02
    dec bc                                        ; $5C65: $0B
    rrca                                          ; $5C66: $0F
    nop                                           ; $5C67: $00
    ld a, [$0F0A]                                 ; $5C68: $FA $0A $0F
    ld hl, sp+$0A                                 ; $5C6B: $F8 $0A
    ld b, $0F                                     ; $5C6D: $06 $0F
    ld hl, sp+$02                                 ; $5C6F: $F8 $02
    dec b                                         ; $5C71: $05
    rrca                                          ; $5C72: $0F
    ld hl, sp-$06                                 ; $5C73: $F8 $FA
    inc b                                         ; $5C75: $04
    rrca                                          ; $5C76: $0F
    ldh a, [rSC]                                  ; $5C77: $F0 $02
    ld bc, $F00F                                  ; $5C79: $01 $0F $F0
    ld a, [$0F00]                                 ; $5C7C: $FA $00 $0F
    add b                                         ; $5C7F: $80
    ldh a, [$F2]                                  ; $5C80: $F0 $F2
    inc [hl]                                      ; $5C82: $34
    ld c, a                                       ; $5C83: $4F
    ldh a, [$EA]                                  ; $5C84: $F0 $EA
    inc sp                                        ; $5C86: $33
    ld c, a                                       ; $5C87: $4F
    ld [$33EA], sp                                ; $5C88: $08 $EA $33
    rrca                                          ; $5C8B: $0F
    ld [$34F2], sp                                ; $5C8C: $08 $F2 $34
    rrca                                          ; $5C8F: $0F
    ld hl, sp-$16                                 ; $5C90: $F8 $EA
    ld sp, $004F                                  ; $5C92: $31 $4F $00
    ld [$0F31], a                                 ; $5C95: $EA $31 $0F
    ld hl, sp-$0E                                 ; $5C98: $F8 $F2
    jr nc, jr_011_5CAB                            ; $5C9A: $30 $0F

    nop                                           ; $5C9C: $00
    ld a, [c]                                     ; $5C9D: $F2
    ld [hl-], a                                   ; $5C9E: $32
    rrca                                          ; $5C9F: $0F
    ldh a, [$03]                                  ; $5CA0: $F0 $03
    ld [hl], c                                    ; $5CA2: $71
    ld [$03F8], sp                                ; $5CA3: $08 $F8 $03
    ld [hl], h                                    ; $5CA6: $74
    add hl, bc                                    ; $5CA7: $09
    ldh a, [$0A]                                  ; $5CA8: $F0 $0A
    cpl                                           ; $5CAA: $2F

jr_011_5CAB:
    rrca                                          ; $5CAB: $0F
    add sp, $0E                                   ; $5CAC: $E8 $0E
    ld l, $4F                                     ; $5CAE: $2E $4F
    add sp, $06                                   ; $5CB0: $E8 $06
    dec l                                         ; $5CB2: $2D
    ld c, a                                       ; $5CB3: $4F
    db $10                                        ; $5CB4: $10
    ld c, $2E                                     ; $5CB5: $0E $2E
    rrca                                          ; $5CB7: $0F
    db $10                                        ; $5CB8: $10
    ld b, $2D                                     ; $5CB9: $06 $2D
    rrca                                          ; $5CBB: $0F
    ld [$2C0A], sp                                ; $5CBC: $08 $0A $2C
    rrca                                          ; $5CBF: $0F
    ld hl, sp+$12                                 ; $5CC0: $F8 $12
    ld l, a                                       ; $5CC2: $6F
    rrca                                          ; $5CC3: $0F
    ld hl, sp+$1A                                 ; $5CC4: $F8 $1A
    ld [hl], b                                    ; $5CC6: $70
    rrca                                          ; $5CC7: $0F
    ldh a, [rNR12]                                ; $5CC8: $F0 $12
    inc de                                        ; $5CCA: $13
    ld c, a                                       ; $5CCB: $4F
    ld [$1312], sp                                ; $5CCC: $08 $12 $13
    rrca                                          ; $5CCF: $0F
    ld [$1102], sp                                ; $5CD0: $08 $02 $11
    rrca                                          ; $5CD3: $0F
    ld [$10FA], sp                                ; $5CD4: $08 $FA $10
    rrca                                          ; $5CD7: $0F
    nop                                           ; $5CD8: $00
    ld a, [de]                                    ; $5CD9: $1A
    ld c, $0F                                     ; $5CDA: $0E $0F
    nop                                           ; $5CDC: $00
    ld [de], a                                    ; $5CDD: $12
    dec c                                         ; $5CDE: $0D
    rrca                                          ; $5CDF: $0F
    nop                                           ; $5CE0: $00
    ld a, [bc]                                    ; $5CE1: $0A
    inc c                                         ; $5CE2: $0C
    rrca                                          ; $5CE3: $0F
    nop                                           ; $5CE4: $00
    ld [bc], a                                    ; $5CE5: $02
    dec bc                                        ; $5CE6: $0B
    rrca                                          ; $5CE7: $0F
    nop                                           ; $5CE8: $00
    ld a, [$0F0A]                                 ; $5CE9: $FA $0A $0F
    ld hl, sp+$0A                                 ; $5CEC: $F8 $0A
    ld b, $0F                                     ; $5CEE: $06 $0F
    ld hl, sp+$02                                 ; $5CF0: $F8 $02
    dec b                                         ; $5CF2: $05
    rrca                                          ; $5CF3: $0F
    ld hl, sp-$06                                 ; $5CF4: $F8 $FA
    inc b                                         ; $5CF6: $04
    rrca                                          ; $5CF7: $0F
    ldh a, [rSC]                                  ; $5CF8: $F0 $02
    ld bc, $F00F                                  ; $5CFA: $01 $0F $F0
    ld a, [$0F00]                                 ; $5CFD: $FA $00 $0F
    add b                                         ; $5D00: $80
    push af                                       ; $5D01: $F5
    jp hl                                         ; $5D02: $E9


    ld [$024F], sp                                ; $5D03: $08 $4F $02
    jp hl                                         ; $5D06: $E9


    ld [$F00F], sp                                ; $5D07: $08 $0F $F0
    pop af                                        ; $5D0A: $F1
    rrca                                          ; $5D0B: $0F
    ld c, a                                       ; $5D0C: $4F
    ld [$0FF1], sp                                ; $5D0D: $08 $F1 $0F
    rrca                                          ; $5D10: $0F
    ld hl, sp-$0F                                 ; $5D11: $F8 $F1
    inc bc                                        ; $5D13: $03
    rrca                                          ; $5D14: $0F
    nop                                           ; $5D15: $00
    pop af                                        ; $5D16: $F1
    add hl, bc                                    ; $5D17: $09
    rrca                                          ; $5D18: $0F
    ld hl, sp+$02                                 ; $5D19: $F8 $02
    ld [hl], h                                    ; $5D1B: $74
    add hl, bc                                    ; $5D1C: $09
    ldh a, [rSC]                                  ; $5D1D: $F0 $02
    ld [hl], c                                    ; $5D1F: $71
    ld [$09F0], sp                                ; $5D20: $08 $F0 $09
    cpl                                           ; $5D23: $2F
    rrca                                          ; $5D24: $0F
    add sp, $0E                                   ; $5D25: $E8 $0E
    scf                                           ; $5D27: $37
    ld c, a                                       ; $5D28: $4F
    add sp, $06                                   ; $5D29: $E8 $06
    ld [hl], $4F                                  ; $5D2B: $36 $4F
    db $10                                        ; $5D2D: $10
    ld c, $37                                     ; $5D2E: $0E $37
    rrca                                          ; $5D30: $0F
    db $10                                        ; $5D31: $10
    ld b, $36                                     ; $5D32: $06 $36
    rrca                                          ; $5D34: $0F
    ld [$3509], sp                                ; $5D35: $08 $09 $35
    rrca                                          ; $5D38: $0F
    ld hl, sp+$11                                 ; $5D39: $F8 $11
    ld l, a                                       ; $5D3B: $6F
    rrca                                          ; $5D3C: $0F
    ld hl, sp+$19                                 ; $5D3D: $F8 $19
    ld [hl], b                                    ; $5D3F: $70
    rrca                                          ; $5D40: $0F
    ldh a, [rNR11]                                ; $5D41: $F0 $11
    inc de                                        ; $5D43: $13
    ld c, a                                       ; $5D44: $4F
    ld [$1311], sp                                ; $5D45: $08 $11 $13
    rrca                                          ; $5D48: $0F
    ld [$1101], sp                                ; $5D49: $08 $01 $11
    rrca                                          ; $5D4C: $0F
    ld [$10F9], sp                                ; $5D4D: $08 $F9 $10
    rrca                                          ; $5D50: $0F
    nop                                           ; $5D51: $00
    add hl, de                                    ; $5D52: $19
    ld c, $0F                                     ; $5D53: $0E $0F
    nop                                           ; $5D55: $00
    ld de, $0F0D                                  ; $5D56: $11 $0D $0F
    nop                                           ; $5D59: $00
    add hl, bc                                    ; $5D5A: $09
    inc c                                         ; $5D5B: $0C
    rrca                                          ; $5D5C: $0F
    nop                                           ; $5D5D: $00
    ld bc, $0F0B                                  ; $5D5E: $01 $0B $0F
    nop                                           ; $5D61: $00
    ld sp, hl                                     ; $5D62: $F9
    ld a, [bc]                                    ; $5D63: $0A
    rrca                                          ; $5D64: $0F
    ld hl, sp+$09                                 ; $5D65: $F8 $09
    ld b, $0F                                     ; $5D67: $06 $0F
    ld hl, sp+$01                                 ; $5D69: $F8 $01
    dec b                                         ; $5D6B: $05
    rrca                                          ; $5D6C: $0F
    ld hl, sp-$07                                 ; $5D6D: $F8 $F9
    inc b                                         ; $5D6F: $04
    rrca                                          ; $5D70: $0F
    ldh a, [rSB]                                  ; $5D71: $F0 $01
    ld bc, $F00F                                  ; $5D73: $01 $0F $F0
    ld sp, hl                                     ; $5D76: $F9
    nop                                           ; $5D77: $00
    rrca                                          ; $5D78: $0F
    add b                                         ; $5D79: $80
    ldh a, [$08]                                  ; $5D7A: $F0 $08
    ld a, [de]                                    ; $5D7C: $1A
    ld l, a                                       ; $5D7D: $6F
    ldh a, [rNR10]                                ; $5D7E: $F0 $10
    add hl, de                                    ; $5D80: $19
    ld l, b                                       ; $5D81: $68
    ld [$1A08], sp                                ; $5D82: $08 $08 $1A
    cpl                                           ; $5D85: $2F
    ld [$1910], sp                                ; $5D86: $08 $10 $19
    jr z, @-$06                                   ; $5D89: $28 $F8

    ld [$2F16], sp                                ; $5D8B: $08 $16 $2F
    nop                                           ; $5D8E: $00
    ld [$2F18], sp                                ; $5D8F: $08 $18 $2F
    ld hl, sp-$09                                 ; $5D92: $F8 $F7
    ld [hl], h                                    ; $5D94: $74
    add hl, hl                                    ; $5D95: $29
    ldh a, [$F7]                                  ; $5D96: $F0 $F7
    ld [hl], c                                    ; $5D98: $71
    jr z, @-$06                                   ; $5D99: $28 $F8

    add sp, $6F                                   ; $5D9B: $E8 $6F
    cpl                                           ; $5D9D: $2F
    ld hl, sp-$20                                 ; $5D9E: $F8 $E0
    ld [hl], b                                    ; $5DA0: $70
    cpl                                           ; $5DA1: $2F
    add sp, -$10                                  ; $5DA2: $E8 $F0
    inc d                                         ; $5DA4: $14
    ld l, a                                       ; $5DA5: $6F
    ldh [$F0], a                                  ; $5DA6: $E0 $F0
    dec d                                         ; $5DA8: $15
    ld l, a                                       ; $5DA9: $6F
    jr @-$0E                                      ; $5DAA: $18 $F0

    dec d                                         ; $5DAC: $15
    cpl                                           ; $5DAD: $2F
    db $10                                        ; $5DAE: $10
    ldh a, [rNR14]                                ; $5DAF: $F0 $14
    cpl                                           ; $5DB1: $2F
    ldh a, [$E8]                                  ; $5DB2: $F0 $E8
    inc de                                        ; $5DB4: $13
    ld l, a                                       ; $5DB5: $6F
    ld [$13E8], sp                                ; $5DB6: $08 $E8 $13
    cpl                                           ; $5DB9: $2F
    ld [$12F0], sp                                ; $5DBA: $08 $F0 $12
    cpl                                           ; $5DBD: $2F
    ld [$11F8], sp                                ; $5DBE: $08 $F8 $11
    cpl                                           ; $5DC1: $2F
    ld [$1000], sp                                ; $5DC2: $08 $00 $10
    cpl                                           ; $5DC5: $2F
    nop                                           ; $5DC6: $00
    ldh [$0E], a                                  ; $5DC7: $E0 $0E
    cpl                                           ; $5DC9: $2F
    nop                                           ; $5DCA: $00
    add sp, $0D                                   ; $5DCB: $E8 $0D
    cpl                                           ; $5DCD: $2F
    nop                                           ; $5DCE: $00
    ldh a, [$0C]                                  ; $5DCF: $F0 $0C
    cpl                                           ; $5DD1: $2F
    nop                                           ; $5DD2: $00
    ld hl, sp+$0B                                 ; $5DD3: $F8 $0B
    cpl                                           ; $5DD5: $2F
    nop                                           ; $5DD6: $00
    nop                                           ; $5DD7: $00
    ld a, [bc]                                    ; $5DD8: $0A
    cpl                                           ; $5DD9: $2F
    ld hl, sp-$10                                 ; $5DDA: $F8 $F0
    ld b, $2F                                     ; $5DDC: $06 $2F
    ld hl, sp-$08                                 ; $5DDE: $F8 $F8
    dec b                                         ; $5DE0: $05
    cpl                                           ; $5DE1: $2F
    ld hl, sp+$00                                 ; $5DE2: $F8 $00
    inc b                                         ; $5DE4: $04
    cpl                                           ; $5DE5: $2F
    ldh a, [$F0]                                  ; $5DE6: $F0 $F0
    ld [bc], a                                    ; $5DE8: $02
    cpl                                           ; $5DE9: $2F
    ldh a, [$F8]                                  ; $5DEA: $F0 $F8
    ld bc, $F02F                                  ; $5DEC: $01 $2F $F0
    nop                                           ; $5DEF: $00
    nop                                           ; $5DF0: $00
    cpl                                           ; $5DF1: $2F
    add b                                         ; $5DF2: $80
    ldh a, [rTAC]                                 ; $5DF3: $F0 $07
    ld [hl+], a                                   ; $5DF5: $22
    ld l, a                                       ; $5DF6: $6F
    ldh a, [rIF]                                  ; $5DF7: $F0 $0F
    ld hl, $086F                                  ; $5DF9: $21 $6F $08
    rlca                                          ; $5DFC: $07
    ld [hl+], a                                   ; $5DFD: $22
    cpl                                           ; $5DFE: $2F
    ld [$210F], sp                                ; $5DFF: $08 $0F $21
    cpl                                           ; $5E02: $2F
    ld hl, sp+$07                                 ; $5E03: $F8 $07
    ld e, $2F                                     ; $5E05: $1E $2F
    nop                                           ; $5E07: $00

jr_011_5E08:
    rlca                                          ; $5E08: $07
    jr nz, jr_011_5E3A                            ; $5E09: $20 $2F

    ldh a, [$F6]                                  ; $5E0B: $F0 $F6
    ld [hl], c                                    ; $5E0D: $71
    jr z, jr_011_5E08                             ; $5E0E: $28 $F8

    or $74                                        ; $5E10: $F6 $74
    add hl, hl                                    ; $5E12: $29
    add sp, -$11                                  ; $5E13: $E8 $EF
    dec e                                         ; $5E15: $1D
    ld l, a                                       ; $5E16: $6F
    add sp, -$09                                  ; $5E17: $E8 $F7
    inc e                                         ; $5E19: $1C
    ld l, a                                       ; $5E1A: $6F
    db $10                                        ; $5E1B: $10
    rst $28                                       ; $5E1C: $EF
    dec e                                         ; $5E1D: $1D
    cpl                                           ; $5E1E: $2F
    db $10                                        ; $5E1F: $10
    rst $30                                       ; $5E20: $F7
    inc e                                         ; $5E21: $1C
    cpl                                           ; $5E22: $2F
    ld [$1BEF], sp                                ; $5E23: $08 $EF $1B
    cpl                                           ; $5E26: $2F
    ldh a, [$EF]                                  ; $5E27: $F0 $EF
    rla                                           ; $5E29: $17
    cpl                                           ; $5E2A: $2F
    ld hl, sp-$19                                 ; $5E2B: $F8 $E7
    ld l, a                                       ; $5E2D: $6F
    cpl                                           ; $5E2E: $2F
    ld hl, sp-$21                                 ; $5E2F: $F8 $DF
    ld [hl], b                                    ; $5E31: $70
    cpl                                           ; $5E32: $2F
    ldh a, [$E7]                                  ; $5E33: $F0 $E7
    inc de                                        ; $5E35: $13
    ld l, a                                       ; $5E36: $6F
    ld [$13E7], sp                                ; $5E37: $08 $E7 $13

jr_011_5E3A:
    cpl                                           ; $5E3A: $2F
    ld [$11F7], sp                                ; $5E3B: $08 $F7 $11
    cpl                                           ; $5E3E: $2F
    ld [$10FF], sp                                ; $5E3F: $08 $FF $10
    cpl                                           ; $5E42: $2F
    nop                                           ; $5E43: $00
    rst $18                                       ; $5E44: $DF
    ld c, $2F                                     ; $5E45: $0E $2F
    nop                                           ; $5E47: $00
    rst $20                                       ; $5E48: $E7
    dec c                                         ; $5E49: $0D
    cpl                                           ; $5E4A: $2F
    nop                                           ; $5E4B: $00
    rst $28                                       ; $5E4C: $EF
    inc c                                         ; $5E4D: $0C
    cpl                                           ; $5E4E: $2F
    nop                                           ; $5E4F: $00
    rst $30                                       ; $5E50: $F7
    dec bc                                        ; $5E51: $0B
    cpl                                           ; $5E52: $2F
    nop                                           ; $5E53: $00
    rst $38                                       ; $5E54: $FF
    ld a, [bc]                                    ; $5E55: $0A
    cpl                                           ; $5E56: $2F
    ld hl, sp-$11                                 ; $5E57: $F8 $EF
    ld b, $2F                                     ; $5E59: $06 $2F
    ld hl, sp-$09                                 ; $5E5B: $F8 $F7
    dec b                                         ; $5E5D: $05
    cpl                                           ; $5E5E: $2F
    ld hl, sp-$01                                 ; $5E5F: $F8 $FF
    inc b                                         ; $5E61: $04
    cpl                                           ; $5E62: $2F
    ldh a, [$F7]                                  ; $5E63: $F0 $F7
    ld bc, $F02F                                  ; $5E65: $01 $2F $F0
    rst $38                                       ; $5E68: $FF
    nop                                           ; $5E69: $00
    cpl                                           ; $5E6A: $2F
    add b                                         ; $5E6B: $80
    ldh a, [rTMA]                                 ; $5E6C: $F0 $06
    dec hl                                        ; $5E6E: $2B
    ld l, a                                       ; $5E6F: $6F
    ld [$2B06], sp                                ; $5E70: $08 $06 $2B
    cpl                                           ; $5E73: $2F
    inc b                                         ; $5E74: $04
    ld c, $29                                     ; $5E75: $0E $29
    cpl                                           ; $5E77: $2F
    db $F4                                        ; $5E78: $F4
    ld c, $29                                     ; $5E79: $0E $29
    ld l, a                                       ; $5E7B: $6F
    ld hl, sp+$06                                 ; $5E7C: $F8 $06
    jr z, jr_011_5EAF                             ; $5E7E: $28 $2F

    nop                                           ; $5E80: $00
    ld b, $2A                                     ; $5E81: $06 $2A
    cpl                                           ; $5E83: $2F
    ld hl, sp-$0B                                 ; $5E84: $F8 $F5
    ld [hl], h                                    ; $5E86: $74
    add hl, hl                                    ; $5E87: $29
    ldh a, [$F5]                                  ; $5E88: $F0 $F5
    ld [hl], c                                    ; $5E8A: $71
    jr z, @-$0E                                   ; $5E8B: $28 $F0

    xor $26                                       ; $5E8D: $EE $26
    cpl                                           ; $5E8F: $2F
    add sp, -$12                                  ; $5E90: $E8 $EE
    dec h                                         ; $5E92: $25
    ld l, a                                       ; $5E93: $6F
    add sp, -$0A                                  ; $5E94: $E8 $F6
    inc h                                         ; $5E96: $24
    ld l, a                                       ; $5E97: $6F
    db $10                                        ; $5E98: $10
    xor $25                                       ; $5E99: $EE $25
    cpl                                           ; $5E9B: $2F
    db $10                                        ; $5E9C: $10
    or $24                                        ; $5E9D: $F6 $24
    cpl                                           ; $5E9F: $2F
    ld [$23EE], sp                                ; $5EA0: $08 $EE $23
    cpl                                           ; $5EA3: $2F
    ld hl, sp-$1A                                 ; $5EA4: $F8 $E6
    ld l, a                                       ; $5EA6: $6F
    cpl                                           ; $5EA7: $2F
    ld hl, sp-$22                                 ; $5EA8: $F8 $DE
    ld [hl], b                                    ; $5EAA: $70
    cpl                                           ; $5EAB: $2F
    ldh a, [$E6]                                  ; $5EAC: $F0 $E6
    inc de                                        ; $5EAE: $13

jr_011_5EAF:
    ld l, a                                       ; $5EAF: $6F
    ld [$13E6], sp                                ; $5EB0: $08 $E6 $13
    cpl                                           ; $5EB3: $2F
    ld [$11F6], sp                                ; $5EB4: $08 $F6 $11
    cpl                                           ; $5EB7: $2F
    ld [$10FE], sp                                ; $5EB8: $08 $FE $10
    cpl                                           ; $5EBB: $2F
    nop                                           ; $5EBC: $00
    sbc $0E                                       ; $5EBD: $DE $0E
    cpl                                           ; $5EBF: $2F
    nop                                           ; $5EC0: $00
    and $0D                                       ; $5EC1: $E6 $0D
    cpl                                           ; $5EC3: $2F
    nop                                           ; $5EC4: $00
    xor $0C                                       ; $5EC5: $EE $0C
    cpl                                           ; $5EC7: $2F
    nop                                           ; $5EC8: $00
    or $0B                                        ; $5EC9: $F6 $0B
    cpl                                           ; $5ECB: $2F
    nop                                           ; $5ECC: $00
    cp $0A                                        ; $5ECD: $FE $0A
    cpl                                           ; $5ECF: $2F
    ld hl, sp-$12                                 ; $5ED0: $F8 $EE
    ld b, $2F                                     ; $5ED2: $06 $2F
    ld hl, sp-$0A                                 ; $5ED4: $F8 $F6
    dec b                                         ; $5ED6: $05
    cpl                                           ; $5ED7: $2F
    ld hl, sp-$02                                 ; $5ED8: $F8 $FE
    inc b                                         ; $5EDA: $04
    cpl                                           ; $5EDB: $2F
    ldh a, [$F6]                                  ; $5EDC: $F0 $F6
    ld bc, $F02F                                  ; $5EDE: $01 $2F $F0
    cp $00                                        ; $5EE1: $FE $00
    cpl                                           ; $5EE3: $2F
    add b                                         ; $5EE4: $80
    ldh a, [rTMA]                                 ; $5EE5: $F0 $06
    inc [hl]                                      ; $5EE7: $34
    ld l, a                                       ; $5EE8: $6F
    ldh a, [$0E]                                  ; $5EE9: $F0 $0E
    inc sp                                        ; $5EEB: $33
    ld l, a                                       ; $5EEC: $6F
    ld [$3406], sp                                ; $5EED: $08 $06 $34
    cpl                                           ; $5EF0: $2F
    ld [$330E], sp                                ; $5EF1: $08 $0E $33
    cpl                                           ; $5EF4: $2F
    ld hl, sp+$0E                                 ; $5EF5: $F8 $0E
    ld sp, $F86F                                  ; $5EF7: $31 $6F $F8
    ld b, $30                                     ; $5EFA: $06 $30
    cpl                                           ; $5EFC: $2F
    nop                                           ; $5EFD: $00
    ld b, $32                                     ; $5EFE: $06 $32
    cpl                                           ; $5F00: $2F
    nop                                           ; $5F01: $00

jr_011_5F02:
    ld c, $31                                     ; $5F02: $0E $31
    cpl                                           ; $5F04: $2F
    ldh a, [$F5]                                  ; $5F05: $F0 $F5
    ld [hl], c                                    ; $5F07: $71
    jr z, jr_011_5F02                             ; $5F08: $28 $F8

    push af                                       ; $5F0A: $F5
    ld [hl], h                                    ; $5F0B: $74
    add hl, hl                                    ; $5F0C: $29
    ldh a, [$EE]                                  ; $5F0D: $F0 $EE
    cpl                                           ; $5F0F: $2F
    cpl                                           ; $5F10: $2F
    add sp, -$16                                  ; $5F11: $E8 $EA
    ld l, $6F                                     ; $5F13: $2E $6F
    add sp, -$0E                                  ; $5F15: $E8 $F2
    dec l                                         ; $5F17: $2D
    ld l, a                                       ; $5F18: $6F
    db $10                                        ; $5F19: $10
    ld [$2F2E], a                                 ; $5F1A: $EA $2E $2F
    db $10                                        ; $5F1D: $10
    ld a, [c]                                     ; $5F1E: $F2
    dec l                                         ; $5F1F: $2D
    cpl                                           ; $5F20: $2F
    ld [$2CEE], sp                                ; $5F21: $08 $EE $2C
    cpl                                           ; $5F24: $2F
    ld hl, sp-$1A                                 ; $5F25: $F8 $E6
    ld l, a                                       ; $5F27: $6F
    cpl                                           ; $5F28: $2F
    ld hl, sp-$22                                 ; $5F29: $F8 $DE
    ld [hl], b                                    ; $5F2B: $70
    cpl                                           ; $5F2C: $2F
    ldh a, [$E6]                                  ; $5F2D: $F0 $E6
    inc de                                        ; $5F2F: $13
    ld l, a                                       ; $5F30: $6F
    ld [$13E6], sp                                ; $5F31: $08 $E6 $13
    cpl                                           ; $5F34: $2F
    ld [$11F6], sp                                ; $5F35: $08 $F6 $11
    cpl                                           ; $5F38: $2F
    ld [$10FE], sp                                ; $5F39: $08 $FE $10
    cpl                                           ; $5F3C: $2F
    nop                                           ; $5F3D: $00
    sbc $0E                                       ; $5F3E: $DE $0E
    cpl                                           ; $5F40: $2F
    nop                                           ; $5F41: $00
    and $0D                                       ; $5F42: $E6 $0D
    cpl                                           ; $5F44: $2F
    nop                                           ; $5F45: $00
    xor $0C                                       ; $5F46: $EE $0C
    cpl                                           ; $5F48: $2F
    nop                                           ; $5F49: $00
    or $0B                                        ; $5F4A: $F6 $0B
    cpl                                           ; $5F4C: $2F
    nop                                           ; $5F4D: $00
    cp $0A                                        ; $5F4E: $FE $0A
    cpl                                           ; $5F50: $2F
    ld hl, sp-$12                                 ; $5F51: $F8 $EE
    ld b, $2F                                     ; $5F53: $06 $2F
    ld hl, sp-$0A                                 ; $5F55: $F8 $F6
    dec b                                         ; $5F57: $05
    cpl                                           ; $5F58: $2F
    ld hl, sp-$02                                 ; $5F59: $F8 $FE
    inc b                                         ; $5F5B: $04
    cpl                                           ; $5F5C: $2F
    ldh a, [$F6]                                  ; $5F5D: $F0 $F6
    ld bc, $F02F                                  ; $5F5F: $01 $2F $F0
    cp $00                                        ; $5F62: $FE $00
    cpl                                           ; $5F64: $2F
    add b                                         ; $5F65: $80
    ld [$0F07], sp                                ; $5F66: $08 $07 $0F
    cpl                                           ; $5F69: $2F
    ldh a, [rTAC]                                 ; $5F6A: $F0 $07
    rrca                                          ; $5F6C: $0F
    ld l, a                                       ; $5F6D: $6F
    inc bc                                        ; $5F6E: $03
    rrca                                          ; $5F6F: $0F
    ld [$F52F], sp                                ; $5F70: $08 $2F $F5
    rrca                                          ; $5F73: $0F
    ld [$006F], sp                                ; $5F74: $08 $6F $00

jr_011_5F77:
    rlca                                          ; $5F77: $07
    add hl, bc                                    ; $5F78: $09
    cpl                                           ; $5F79: $2F
    ld hl, sp+$07                                 ; $5F7A: $F8 $07
    inc bc                                        ; $5F7C: $03
    cpl                                           ; $5F7D: $2F
    ld hl, sp-$0A                                 ; $5F7E: $F8 $F6
    ld [hl], h                                    ; $5F80: $74
    add hl, hl                                    ; $5F81: $29
    ldh a, [$F6]                                  ; $5F82: $F0 $F6
    ld [hl], c                                    ; $5F84: $71
    jr z, jr_011_5F77                             ; $5F85: $28 $F0

    rst $28                                       ; $5F87: $EF
    cpl                                           ; $5F88: $2F
    cpl                                           ; $5F89: $2F
    add sp, -$16                                  ; $5F8A: $E8 $EA
    scf                                           ; $5F8C: $37
    ld l, a                                       ; $5F8D: $6F
    add sp, -$0E                                  ; $5F8E: $E8 $F2
    ld [hl], $6F                                  ; $5F90: $36 $6F
    db $10                                        ; $5F92: $10
    ld [$2F37], a                                 ; $5F93: $EA $37 $2F
    db $10                                        ; $5F96: $10
    ld a, [c]                                     ; $5F97: $F2
    ld [hl], $2F                                  ; $5F98: $36 $2F
    ld [$35EF], sp                                ; $5F9A: $08 $EF $35
    cpl                                           ; $5F9D: $2F
    ld hl, sp-$19                                 ; $5F9E: $F8 $E7
    ld l, a                                       ; $5FA0: $6F
    cpl                                           ; $5FA1: $2F
    ld hl, sp-$21                                 ; $5FA2: $F8 $DF
    ld [hl], b                                    ; $5FA4: $70
    cpl                                           ; $5FA5: $2F
    ldh a, [$E7]                                  ; $5FA6: $F0 $E7
    inc de                                        ; $5FA8: $13
    ld l, a                                       ; $5FA9: $6F
    ld [$13E7], sp                                ; $5FAA: $08 $E7 $13
    cpl                                           ; $5FAD: $2F
    ld [$11F7], sp                                ; $5FAE: $08 $F7 $11
    cpl                                           ; $5FB1: $2F
    ld [$10FF], sp                                ; $5FB2: $08 $FF $10
    cpl                                           ; $5FB5: $2F
    nop                                           ; $5FB6: $00
    rst $18                                       ; $5FB7: $DF
    ld c, $2F                                     ; $5FB8: $0E $2F
    nop                                           ; $5FBA: $00
    rst $20                                       ; $5FBB: $E7
    dec c                                         ; $5FBC: $0D
    cpl                                           ; $5FBD: $2F
    nop                                           ; $5FBE: $00
    rst $28                                       ; $5FBF: $EF
    inc c                                         ; $5FC0: $0C
    cpl                                           ; $5FC1: $2F
    nop                                           ; $5FC2: $00
    rst $30                                       ; $5FC3: $F7
    dec bc                                        ; $5FC4: $0B
    cpl                                           ; $5FC5: $2F
    nop                                           ; $5FC6: $00
    rst $38                                       ; $5FC7: $FF
    ld a, [bc]                                    ; $5FC8: $0A
    cpl                                           ; $5FC9: $2F
    ld hl, sp-$11                                 ; $5FCA: $F8 $EF
    ld b, $2F                                     ; $5FCC: $06 $2F
    ld hl, sp-$09                                 ; $5FCE: $F8 $F7
    dec b                                         ; $5FD0: $05
    cpl                                           ; $5FD1: $2F
    ld hl, sp-$01                                 ; $5FD2: $F8 $FF
    inc b                                         ; $5FD4: $04
    cpl                                           ; $5FD5: $2F
    ldh a, [$F7]                                  ; $5FD6: $F0 $F7
    ld bc, $F02F                                  ; $5FD8: $01 $2F $F0
    rst $38                                       ; $5FDB: $FF
    nop                                           ; $5FDC: $00
    cpl                                           ; $5FDD: $2F
    add b                                         ; $5FDE: $80
    db $10                                        ; $5FDF: $10
    ld [$084B], sp                                ; $5FE0: $08 $4B $08
    db $10                                        ; $5FE3: $10
    ldh a, [rWX]                                  ; $5FE4: $F0 $4B
    jr z, @+$0A                                   ; $5FE6: $28 $08

    ldh a, [rWY]                                  ; $5FE8: $F0 $4A
    cpl                                           ; $5FEA: $2F
    ld [$49F8], sp                                ; $5FEB: $08 $F8 $49
    cpl                                           ; $5FEE: $2F
    ld [$4A08], sp                                ; $5FEF: $08 $08 $4A
    rrca                                          ; $5FF2: $0F
    ld [$4900], sp                                ; $5FF3: $08 $00 $49
    rrca                                          ; $5FF6: $0F
    di                                            ; $5FF7: $F3
    db $FC                                        ; $5FF8: $FC
    ld [hl], l                                    ; $5FF9: $75
    add hl, bc                                    ; $5FFA: $09
    db $EB                                        ; $5FFB: $EB
    db $FC                                        ; $5FFC: $FC
    ld [hl], e                                    ; $5FFD: $73
    ld [$F8F8], sp                                ; $5FFE: $08 $F8 $F8
    ccf                                           ; $6001: $3F
    cpl                                           ; $6002: $2F
    ld hl, sp+$00                                 ; $6003: $F8 $00
    ccf                                           ; $6005: $3F
    rrca                                          ; $6006: $0F
    nop                                           ; $6007: $00
    ldh a, [rSCY]                                 ; $6008: $F0 $42
    cpl                                           ; $600A: $2F
    nop                                           ; $600B: $00
    ld hl, sp+$41                                 ; $600C: $F8 $41
    cpl                                           ; $600E: $2F
    nop                                           ; $600F: $00
    ld [$0F42], sp                                ; $6010: $08 $42 $0F
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    ld b, c                                       ; $6015: $41
    rrca                                          ; $6016: $0F
    ld hl, sp-$10                                 ; $6017: $F8 $F0
    ld b, b                                       ; $6019: $40
    cpl                                           ; $601A: $2F
    ld hl, sp+$08                                 ; $601B: $F8 $08
    ld b, b                                       ; $601D: $40
    rrca                                          ; $601E: $0F
    ldh a, [$E0]                                  ; $601F: $F0 $E0
    ld a, $2F                                     ; $6021: $3E $2F
    ldh a, [$E8]                                  ; $6023: $F0 $E8
    dec a                                         ; $6025: $3D
    cpl                                           ; $6026: $2F
    ldh a, [$F0]                                  ; $6027: $F0 $F0
    inc a                                         ; $6029: $3C
    cpl                                           ; $602A: $2F
    ldh a, [$F8]                                  ; $602B: $F0 $F8
    dec sp                                        ; $602D: $3B
    cpl                                           ; $602E: $2F
    ldh a, [rNR23]                                ; $602F: $F0 $18
    ld a, $0F                                     ; $6031: $3E $0F
    ldh a, [rNR10]                                ; $6033: $F0 $10
    dec a                                         ; $6035: $3D
    rrca                                          ; $6036: $0F
    ldh a, [$08]                                  ; $6037: $F0 $08
    inc a                                         ; $6039: $3C
    rrca                                          ; $603A: $0F
    ldh a, [rP1]                                  ; $603B: $F0 $00
    dec sp                                        ; $603D: $3B
    rrca                                          ; $603E: $0F
    ldh [$F8], a                                  ; $603F: $E0 $F8
    jr c, @+$31                                   ; $6041: $38 $2F

    ldh [rP1], a                                  ; $6043: $E0 $00
    jr c, jr_011_6056                             ; $6045: $38 $0F

    add sp, -$10                                  ; $6047: $E8 $F0
    ld a, [hl-]                                   ; $6049: $3A
    cpl                                           ; $604A: $2F
    add sp, -$08                                  ; $604B: $E8 $F8
    add hl, sp                                    ; $604D: $39
    cpl                                           ; $604E: $2F
    add sp, $08                                   ; $604F: $E8 $08
    ld a, [hl-]                                   ; $6051: $3A
    rrca                                          ; $6052: $0F
    add sp, $00                                   ; $6053: $E8 $00
    add hl, sp                                    ; $6055: $39

jr_011_6056:
    rrca                                          ; $6056: $0F
    add b                                         ; $6057: $80
    rlca                                          ; $6058: $07
    ld hl, sp+$4F                                 ; $6059: $F8 $4F
    cpl                                           ; $605B: $2F
    rlca                                          ; $605C: $07
    ldh a, [$50]                                  ; $605D: $F0 $50
    cpl                                           ; $605F: $2F
    rrca                                          ; $6060: $0F
    ldh a, [rHDMA1]                               ; $6061: $F0 $51
    cpl                                           ; $6063: $2F
    rrca                                          ; $6064: $0F
    ld [$0F51], sp                                ; $6065: $08 $51 $0F
    rlca                                          ; $6068: $07
    ld [$0F50], sp                                ; $6069: $08 $50 $0F
    rlca                                          ; $606C: $07
    nop                                           ; $606D: $00
    ld c, a                                       ; $606E: $4F
    rrca                                          ; $606F: $0F
    ld [$73FC], a                                 ; $6070: $EA $FC $73
    ld [$FCF2], sp                                ; $6073: $08 $F2 $FC
    ld [hl], l                                    ; $6076: $75
    add hl, bc                                    ; $6077: $09
    rst $28                                       ; $6078: $EF
    add sp, $47                                   ; $6079: $E8 $47
    cpl                                           ; $607B: $2F
    rst $28                                       ; $607C: $EF
    ldh a, [rDMA]                                 ; $607D: $F0 $46
    cpl                                           ; $607F: $2F
    rst $30                                       ; $6080: $F7
    add sp, $48                                   ; $6081: $E8 $48
    cpl                                           ; $6083: $2F
    rst $30                                       ; $6084: $F7
    db $10                                        ; $6085: $10
    ld c, b                                       ; $6086: $48
    rrca                                          ; $6087: $0F
    rst $28                                       ; $6088: $EF
    db $10                                        ; $6089: $10
    ld b, a                                       ; $608A: $47
    rrca                                          ; $608B: $0F
    rst $28                                       ; $608C: $EF
    ld [$0F46], sp                                ; $608D: $08 $46 $0F
    rst $30                                       ; $6090: $F7
    ld hl, sp+$3F                                 ; $6091: $F8 $3F
    cpl                                           ; $6093: $2F
    rst $30                                       ; $6094: $F7
    nop                                           ; $6095: $00
    ccf                                           ; $6096: $3F
    rrca                                          ; $6097: $0F
    rst $38                                       ; $6098: $FF
    ldh a, [rSCY]                                 ; $6099: $F0 $42
    cpl                                           ; $609B: $2F
    rst $38                                       ; $609C: $FF
    ld hl, sp+$41                                 ; $609D: $F8 $41
    cpl                                           ; $609F: $2F
    rst $38                                       ; $60A0: $FF
    ld [$0F42], sp                                ; $60A1: $08 $42 $0F
    rst $38                                       ; $60A4: $FF
    nop                                           ; $60A5: $00
    ld b, c                                       ; $60A6: $41
    rrca                                          ; $60A7: $0F
    rst $30                                       ; $60A8: $F7
    ldh a, [rLCDC]                                ; $60A9: $F0 $40
    cpl                                           ; $60AB: $2F
    rst $30                                       ; $60AC: $F7
    ld [$0F40], sp                                ; $60AD: $08 $40 $0F
    rst $28                                       ; $60B0: $EF
    ld hl, sp+$3B                                 ; $60B1: $F8 $3B
    cpl                                           ; $60B3: $2F
    rst $28                                       ; $60B4: $EF
    nop                                           ; $60B5: $00
    dec sp                                        ; $60B6: $3B
    rrca                                          ; $60B7: $0F
    rst $18                                       ; $60B8: $DF
    ld hl, sp+$38                                 ; $60B9: $F8 $38
    cpl                                           ; $60BB: $2F
    rst $18                                       ; $60BC: $DF
    nop                                           ; $60BD: $00
    jr c, jr_011_60CF                             ; $60BE: $38 $0F

    rst $20                                       ; $60C0: $E7
    ldh a, [$3A]                                  ; $60C1: $F0 $3A
    cpl                                           ; $60C3: $2F
    rst $20                                       ; $60C4: $E7
    ld hl, sp+$39                                 ; $60C5: $F8 $39
    cpl                                           ; $60C7: $2F
    rst $20                                       ; $60C8: $E7
    ld [$0F3A], sp                                ; $60C9: $08 $3A $0F
    rst $20                                       ; $60CC: $E7
    nop                                           ; $60CD: $00
    add hl, sp                                    ; $60CE: $39

jr_011_60CF:
    rrca                                          ; $60CF: $0F
    add b                                         ; $60D0: $80
    ld c, $F4                                     ; $60D1: $0E $F4
    ld d, a                                       ; $60D3: $57
    cpl                                           ; $60D4: $2F
    ld c, $04                                     ; $60D5: $0E $04
    ld d, a                                       ; $60D7: $57
    rrca                                          ; $60D8: $0F
    ld b, $F0                                     ; $60D9: $06 $F0
    ld d, [hl]                                    ; $60DB: $56
    cpl                                           ; $60DC: $2F
    ld b, $F8                                     ; $60DD: $06 $F8
    ld d, l                                       ; $60DF: $55
    cpl                                           ; $60E0: $2F
    ld b, $08                                     ; $60E1: $06 $08
    ld d, [hl]                                    ; $60E3: $56
    rrca                                          ; $60E4: $0F
    ld b, $00                                     ; $60E5: $06 $00
    ld d, l                                       ; $60E7: $55
    rrca                                          ; $60E8: $0F
    pop af                                        ; $60E9: $F1
    db $FC                                        ; $60EA: $FC
    ld [hl], l                                    ; $60EB: $75
    add hl, bc                                    ; $60EC: $09
    jp hl                                         ; $60ED: $E9


    db $FC                                        ; $60EE: $FC
    ld [hl], e                                    ; $60EF: $73
    ld [$E8F6], sp                                ; $60F0: $08 $F6 $E8
    ld c, [hl]                                    ; $60F3: $4E
    cpl                                           ; $60F4: $2F
    or $10                                        ; $60F5: $F6 $10
    ld c, [hl]                                    ; $60F7: $4E
    rrca                                          ; $60F8: $0F
    xor $E8                                       ; $60F9: $EE $E8
    ld c, l                                       ; $60FB: $4D
    cpl                                           ; $60FC: $2F
    xor $F0                                       ; $60FD: $EE $F0
    ld c, h                                       ; $60FF: $4C
    cpl                                           ; $6100: $2F
    xor $10                                       ; $6101: $EE $10
    ld c, l                                       ; $6103: $4D
    rrca                                          ; $6104: $0F
    xor $08                                       ; $6105: $EE $08
    ld c, h                                       ; $6107: $4C
    rrca                                          ; $6108: $0F
    or $F8                                        ; $6109: $F6 $F8
    ccf                                           ; $610B: $3F
    cpl                                           ; $610C: $2F
    or $00                                        ; $610D: $F6 $00
    ccf                                           ; $610F: $3F
    rrca                                          ; $6110: $0F
    cp $F0                                        ; $6111: $FE $F0
    ld b, d                                       ; $6113: $42
    cpl                                           ; $6114: $2F
    cp $F8                                        ; $6115: $FE $F8
    ld b, c                                       ; $6117: $41
    cpl                                           ; $6118: $2F
    cp $08                                        ; $6119: $FE $08
    ld b, d                                       ; $611B: $42
    rrca                                          ; $611C: $0F
    cp $00                                        ; $611D: $FE $00
    ld b, c                                       ; $611F: $41
    rrca                                          ; $6120: $0F
    or $F0                                        ; $6121: $F6 $F0
    ld b, b                                       ; $6123: $40
    cpl                                           ; $6124: $2F
    or $08                                        ; $6125: $F6 $08
    ld b, b                                       ; $6127: $40
    rrca                                          ; $6128: $0F
    xor $F8                                       ; $6129: $EE $F8
    dec sp                                        ; $612B: $3B
    cpl                                           ; $612C: $2F
    xor $00                                       ; $612D: $EE $00
    dec sp                                        ; $612F: $3B
    rrca                                          ; $6130: $0F
    sbc $F8                                       ; $6131: $DE $F8
    jr c, jr_011_6164                             ; $6133: $38 $2F

    sbc $00                                       ; $6135: $DE $00
    jr c, jr_011_6148                             ; $6137: $38 $0F

    rst $20                                       ; $6139: $E7
    ldh a, [$3A]                                  ; $613A: $F0 $3A
    cpl                                           ; $613C: $2F
    and $F8                                       ; $613D: $E6 $F8
    add hl, sp                                    ; $613F: $39
    cpl                                           ; $6140: $2F
    rst $20                                       ; $6141: $E7
    ld [$0F3A], sp                                ; $6142: $08 $3A $0F
    and $00                                       ; $6145: $E6 $00
    add hl, sp                                    ; $6147: $39

jr_011_6148:
    rrca                                          ; $6148: $0F
    add b                                         ; $6149: $80
    ld c, $F0                                     ; $614A: $0E $F0
    ld e, l                                       ; $614C: $5D
    cpl                                           ; $614D: $2F
    ld c, $F8                                     ; $614E: $0E $F8
    ld e, h                                       ; $6150: $5C
    cpl                                           ; $6151: $2F
    ld c, $08                                     ; $6152: $0E $08
    ld e, l                                       ; $6154: $5D
    rrca                                          ; $6155: $0F
    ld c, $00                                     ; $6156: $0E $00
    ld e, h                                       ; $6158: $5C
    rrca                                          ; $6159: $0F
    ld b, $F0                                     ; $615A: $06 $F0
    ld e, e                                       ; $615C: $5B
    cpl                                           ; $615D: $2F
    ld b, $F8                                     ; $615E: $06 $F8
    ld e, d                                       ; $6160: $5A
    cpl                                           ; $6161: $2F
    ld b, $08                                     ; $6162: $06 $08

jr_011_6164:
    ld e, e                                       ; $6164: $5B
    rrca                                          ; $6165: $0F
    ld b, $00                                     ; $6166: $06 $00
    ld e, d                                       ; $6168: $5A
    rrca                                          ; $6169: $0F
    jp hl                                         ; $616A: $E9


    db $FC                                        ; $616B: $FC
    ld [hl], e                                    ; $616C: $73
    ld [$FCF1], sp                                ; $616D: $08 $F1 $FC
    ld [hl], l                                    ; $6170: $75
    add hl, bc                                    ; $6171: $09
    di                                            ; $6172: $F3
    add sp, $54                                   ; $6173: $E8 $54
    cpl                                           ; $6175: $2F
    di                                            ; $6176: $F3
    db $10                                        ; $6177: $10
    ld d, h                                       ; $6178: $54
    rrca                                          ; $6179: $0F
    db $EB                                        ; $617A: $EB
    add sp, $53                                   ; $617B: $E8 $53
    cpl                                           ; $617D: $2F
    db $EB                                        ; $617E: $EB
    db $10                                        ; $617F: $10
    ld d, e                                       ; $6180: $53
    rrca                                          ; $6181: $0F
    xor $F0                                       ; $6182: $EE $F0
    ld d, d                                       ; $6184: $52
    cpl                                           ; $6185: $2F
    xor $08                                       ; $6186: $EE $08
    ld d, d                                       ; $6188: $52
    rrca                                          ; $6189: $0F
    or $F8                                        ; $618A: $F6 $F8
    ccf                                           ; $618C: $3F
    cpl                                           ; $618D: $2F
    or $00                                        ; $618E: $F6 $00
    ccf                                           ; $6190: $3F
    rrca                                          ; $6191: $0F
    cp $F0                                        ; $6192: $FE $F0
    ld b, d                                       ; $6194: $42
    cpl                                           ; $6195: $2F
    cp $F8                                        ; $6196: $FE $F8
    ld b, c                                       ; $6198: $41
    cpl                                           ; $6199: $2F
    cp $08                                        ; $619A: $FE $08
    ld b, d                                       ; $619C: $42
    rrca                                          ; $619D: $0F
    cp $00                                        ; $619E: $FE $00
    ld b, c                                       ; $61A0: $41
    rrca                                          ; $61A1: $0F
    or $F0                                        ; $61A2: $F6 $F0
    ld b, b                                       ; $61A4: $40
    cpl                                           ; $61A5: $2F
    or $08                                        ; $61A6: $F6 $08
    ld b, b                                       ; $61A8: $40
    rrca                                          ; $61A9: $0F
    xor $F8                                       ; $61AA: $EE $F8
    dec sp                                        ; $61AC: $3B
    cpl                                           ; $61AD: $2F
    xor $00                                       ; $61AE: $EE $00
    dec sp                                        ; $61B0: $3B
    rrca                                          ; $61B1: $0F
    sbc $F8                                       ; $61B2: $DE $F8
    jr c, jr_011_61E5                             ; $61B4: $38 $2F

    sbc $00                                       ; $61B6: $DE $00
    jr c, jr_011_61C9                             ; $61B8: $38 $0F

    and $F0                                       ; $61BA: $E6 $F0
    ld a, [hl-]                                   ; $61BC: $3A
    cpl                                           ; $61BD: $2F
    and $F8                                       ; $61BE: $E6 $F8
    add hl, sp                                    ; $61C0: $39
    cpl                                           ; $61C1: $2F
    and $08                                       ; $61C2: $E6 $08
    ld a, [hl-]                                   ; $61C4: $3A
    rrca                                          ; $61C5: $0F
    and $00                                       ; $61C6: $E6 $00
    add hl, sp                                    ; $61C8: $39

jr_011_61C9:
    rrca                                          ; $61C9: $0F
    add b                                         ; $61CA: $80
    rrca                                          ; $61CB: $0F
    push af                                       ; $61CC: $F5
    ld b, l                                       ; $61CD: $45
    cpl                                           ; $61CE: $2F
    rrca                                          ; $61CF: $0F
    inc bc                                        ; $61D0: $03
    ld b, l                                       ; $61D1: $45
    rrca                                          ; $61D2: $0F
    rlca                                          ; $61D3: $07
    ldh a, [rLY]                                  ; $61D4: $F0 $44
    cpl                                           ; $61D6: $2F
    rlca                                          ; $61D7: $07
    ld hl, sp+$43                                 ; $61D8: $F8 $43
    cpl                                           ; $61DA: $2F
    rlca                                          ; $61DB: $07
    ld [$0F44], sp                                ; $61DC: $08 $44 $0F
    rlca                                          ; $61DF: $07
    nop                                           ; $61E0: $00
    ld b, e                                       ; $61E1: $43
    rrca                                          ; $61E2: $0F
    ld a, [c]                                     ; $61E3: $F2
    db $FC                                        ; $61E4: $FC

jr_011_61E5:
    ld [hl], l                                    ; $61E5: $75
    add hl, bc                                    ; $61E6: $09
    ld [$73FC], a                                 ; $61E7: $EA $FC $73
    ld [$E8E9], sp                                ; $61EA: $08 $E9 $E8
    ld e, b                                       ; $61ED: $58
    cpl                                           ; $61EE: $2F
    jp hl                                         ; $61EF: $E9


    db $10                                        ; $61F0: $10
    ld e, b                                       ; $61F1: $58
    rrca                                          ; $61F2: $0F
    pop af                                        ; $61F3: $F1
    add sp, $59                                   ; $61F4: $E8 $59
    cpl                                           ; $61F6: $2F
    pop af                                        ; $61F7: $F1
    db $10                                        ; $61F8: $10
    ld e, c                                       ; $61F9: $59
    rrca                                          ; $61FA: $0F
    rst $28                                       ; $61FB: $EF
    ldh a, [rHDMA2]                               ; $61FC: $F0 $52
    cpl                                           ; $61FE: $2F
    rst $28                                       ; $61FF: $EF
    ld [$0F52], sp                                ; $6200: $08 $52 $0F
    rst $30                                       ; $6203: $F7
    ld hl, sp+$3F                                 ; $6204: $F8 $3F
    cpl                                           ; $6206: $2F
    rst $30                                       ; $6207: $F7
    nop                                           ; $6208: $00
    ccf                                           ; $6209: $3F
    rrca                                          ; $620A: $0F
    rst $38                                       ; $620B: $FF
    ldh a, [rSCY]                                 ; $620C: $F0 $42
    cpl                                           ; $620E: $2F
    rst $38                                       ; $620F: $FF
    ld hl, sp+$41                                 ; $6210: $F8 $41
    cpl                                           ; $6212: $2F
    rst $38                                       ; $6213: $FF
    ld [$0F42], sp                                ; $6214: $08 $42 $0F
    rst $38                                       ; $6217: $FF
    nop                                           ; $6218: $00
    ld b, c                                       ; $6219: $41
    rrca                                          ; $621A: $0F
    rst $30                                       ; $621B: $F7
    ldh a, [rLCDC]                                ; $621C: $F0 $40
    cpl                                           ; $621E: $2F
    rst $30                                       ; $621F: $F7
    ld [$0F40], sp                                ; $6220: $08 $40 $0F
    rst $28                                       ; $6223: $EF
    ld hl, sp+$3B                                 ; $6224: $F8 $3B
    cpl                                           ; $6226: $2F
    rst $28                                       ; $6227: $EF
    nop                                           ; $6228: $00
    dec sp                                        ; $6229: $3B
    rrca                                          ; $622A: $0F
    rst $18                                       ; $622B: $DF
    ld hl, sp+$38                                 ; $622C: $F8 $38
    cpl                                           ; $622E: $2F
    rst $18                                       ; $622F: $DF
    nop                                           ; $6230: $00
    jr c, jr_011_6242                             ; $6231: $38 $0F

    rst $20                                       ; $6233: $E7
    ldh a, [$3A]                                  ; $6234: $F0 $3A
    cpl                                           ; $6236: $2F
    rst $20                                       ; $6237: $E7
    ld hl, sp+$39                                 ; $6238: $F8 $39
    cpl                                           ; $623A: $2F
    rst $20                                       ; $623B: $E7
    ld [$0F3A], sp                                ; $623C: $08 $3A $0F
    rst $20                                       ; $623F: $E7
    nop                                           ; $6240: $00
    add hl, sp                                    ; $6241: $39

jr_011_6242:
    rrca                                          ; $6242: $0F
    add b                                         ; $6243: $80
    add sp, -$10                                  ; $6244: $E8 $F0
    ld c, e                                       ; $6246: $4B
    ld l, b                                       ; $6247: $68
    add sp, $08                                   ; $6248: $E8 $08
    ld c, e                                       ; $624A: $4B
    ld c, b                                       ; $624B: $48
    ldh a, [$F0]                                  ; $624C: $F0 $F0
    ld h, l                                       ; $624E: $65
    cpl                                           ; $624F: $2F
    ldh a, [$F8]                                  ; $6250: $F0 $F8
    ld h, h                                       ; $6252: $64
    cpl                                           ; $6253: $2F
    ldh a, [$08]                                  ; $6254: $F0 $08
    ld h, l                                       ; $6256: $65
    rrca                                          ; $6257: $0F
    ldh a, [rP1]                                  ; $6258: $F0 $00
    ld h, h                                       ; $625A: $64
    rrca                                          ; $625B: $0F
    push af                                       ; $625C: $F5
    db $FC                                        ; $625D: $FC
    ld [hl], d                                    ; $625E: $72
    ld [$FCFD], sp                                ; $625F: $08 $FD $FC
    ld [hl], l                                    ; $6262: $75
    add hl, bc                                    ; $6263: $09
    ld hl, sp-$10                                 ; $6264: $F8 $F0
    ld h, b                                       ; $6266: $60
    cpl                                           ; $6267: $2F
    ld hl, sp+$08                                 ; $6268: $F8 $08
    ld h, b                                       ; $626A: $60
    rrca                                          ; $626B: $0F
    ld [$66F0], sp                                ; $626C: $08 $F0 $66
    cpl                                           ; $626F: $2F
    ld [$6608], sp                                ; $6270: $08 $08 $66
    rrca                                          ; $6273: $0F
    db $10                                        ; $6274: $10
    ldh a, [$63]                                  ; $6275: $F0 $63
    jr z, jr_011_6289                             ; $6277: $28 $10

    ld hl, sp+$62                                 ; $6279: $F8 $62
    cpl                                           ; $627B: $2F
    db $10                                        ; $627C: $10
    ld [$0863], sp                                ; $627D: $08 $63 $08
    stop                                          ; $6280: $10 $00
    ld h, d                                       ; $6282: $62
    rrca                                          ; $6283: $0F
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    ccf                                           ; $6286: $3F
    rrca                                          ; $6287: $0F
    nop                                           ; $6288: $00

jr_011_6289:
    ld hl, sp+$3F                                 ; $6289: $F8 $3F
    cpl                                           ; $628B: $2F
    ld [$41F8], sp                                ; $628C: $08 $F8 $41
    cpl                                           ; $628F: $2F
    ld [$4100], sp                                ; $6290: $08 $00 $41
    rrca                                          ; $6293: $0F
    nop                                           ; $6294: $00
    ldh a, [rLCDC]                                ; $6295: $F0 $40
    cpl                                           ; $6297: $2F
    nop                                           ; $6298: $00
    ld [$0F40], sp                                ; $6299: $08 $40 $0F
    ld [$3EE0], sp                                ; $629C: $08 $E0 $3E
    ld l, a                                       ; $629F: $6F
    ld [$3DE8], sp                                ; $62A0: $08 $E8 $3D
    ld l, a                                       ; $62A3: $6F
    ld hl, sp-$08                                 ; $62A4: $F8 $F8
    dec sp                                        ; $62A6: $3B
    cpl                                           ; $62A7: $2F
    ld [$3E18], sp                                ; $62A8: $08 $18 $3E
    ld c, a                                       ; $62AB: $4F
    ld [$3D10], sp                                ; $62AC: $08 $10 $3D
    ld c, a                                       ; $62AF: $4F
    ld hl, sp+$00                                 ; $62B0: $F8 $00
    dec sp                                        ; $62B2: $3B
    rrca                                          ; $62B3: $0F
    jr @-$06                                      ; $62B4: $18 $F8

    jr c, @+$71                                   ; $62B6: $38 $6F

    jr jr_011_62BA                                ; $62B8: $18 $00

jr_011_62BA:
    jr c, jr_011_630B                             ; $62BA: $38 $4F

    add b                                         ; $62BC: $80
    jp hl                                         ; $62BD: $E9


    ldh a, [rHDMA1]                               ; $62BE: $F0 $51
    ld l, a                                       ; $62C0: $6F
    jp hl                                         ; $62C1: $E9


    ld [$4F51], sp                                ; $62C2: $08 $51 $4F
    pop af                                        ; $62C5: $F1
    ldh a, [rBCPS]                                ; $62C6: $F0 $68
    cpl                                           ; $62C8: $2F
    pop af                                        ; $62C9: $F1
    ld hl, sp+$67                                 ; $62CA: $F8 $67
    cpl                                           ; $62CC: $2F
    pop af                                        ; $62CD: $F1
    ld [$0F68], sp                                ; $62CE: $08 $68 $0F
    pop af                                        ; $62D1: $F1
    nop                                           ; $62D2: $00
    ld h, a                                       ; $62D3: $67
    rrca                                          ; $62D4: $0F
    cp $FC                                        ; $62D5: $FE $FC
    ld [hl], l                                    ; $62D7: $75
    add hl, bc                                    ; $62D8: $09
    or $FC                                        ; $62D9: $F6 $FC
    ld [hl], d                                    ; $62DB: $72
    ld [$F009], sp                                ; $62DC: $08 $09 $F0
    ld h, c                                       ; $62DF: $61
    cpl                                           ; $62E0: $2F
    add hl, bc                                    ; $62E1: $09
    ld [$0F61], sp                                ; $62E2: $08 $61 $0F
    ld de, $63F0                                  ; $62E5: $11 $F0 $63
    jr z, @+$13                                   ; $62E8: $28 $11

    ld hl, sp+$62                                 ; $62EA: $F8 $62
    cpl                                           ; $62EC: $2F
    ld de, $6308                                  ; $62ED: $11 $08 $63
    ld [$0011], sp                                ; $62F0: $08 $11 $00
    ld h, d                                       ; $62F3: $62
    rrca                                          ; $62F4: $0F
    ld sp, hl                                     ; $62F5: $F9
    ldh a, [$60]                                  ; $62F6: $F0 $60
    cpl                                           ; $62F8: $2F
    ld sp, hl                                     ; $62F9: $F9
    ld [$0F60], sp                                ; $62FA: $08 $60 $0F
    add hl, bc                                    ; $62FD: $09
    add sp, $47                                   ; $62FE: $E8 $47
    ld l, a                                       ; $6300: $6F
    ld bc, $48E8                                  ; $6301: $01 $E8 $48
    ld l, a                                       ; $6304: $6F
    ld bc, $4810                                  ; $6305: $01 $10 $48
    ld c, a                                       ; $6308: $4F
    add hl, bc                                    ; $6309: $09
    db $10                                        ; $630A: $10

jr_011_630B:
    ld b, a                                       ; $630B: $47
    ld c, a                                       ; $630C: $4F
    ld bc, $3FF8                                  ; $630D: $01 $F8 $3F
    cpl                                           ; $6310: $2F
    ld bc, $3F00                                  ; $6311: $01 $00 $3F
    rrca                                          ; $6314: $0F
    add hl, bc                                    ; $6315: $09
    ld hl, sp+$41                                 ; $6316: $F8 $41
    cpl                                           ; $6318: $2F
    add hl, bc                                    ; $6319: $09
    nop                                           ; $631A: $00
    ld b, c                                       ; $631B: $41
    rrca                                          ; $631C: $0F
    ld bc, $40F0                                  ; $631D: $01 $F0 $40
    cpl                                           ; $6320: $2F
    ld bc, $4008                                  ; $6321: $01 $08 $40
    rrca                                          ; $6324: $0F
    ld sp, hl                                     ; $6325: $F9
    ld hl, sp+$3B                                 ; $6326: $F8 $3B
    cpl                                           ; $6328: $2F
    ld sp, hl                                     ; $6329: $F9
    nop                                           ; $632A: $00
    dec sp                                        ; $632B: $3B
    rrca                                          ; $632C: $0F
    add hl, de                                    ; $632D: $19
    ld hl, sp+$38                                 ; $632E: $F8 $38
    ld l, a                                       ; $6330: $6F
    add hl, de                                    ; $6331: $19
    nop                                           ; $6332: $00
    jr c, jr_011_6384                             ; $6333: $38 $4F

    add b                                         ; $6335: $80
    ld a, [c]                                     ; $6336: $F2
    ldh a, [rOCPD]                                ; $6337: $F0 $6B
    cpl                                           ; $6339: $2F
    ld a, [c]                                     ; $633A: $F2
    ld hl, sp+$6A                                 ; $633B: $F8 $6A
    cpl                                           ; $633D: $2F
    ld a, [c]                                     ; $633E: $F2
    ld [$0F6B], sp                                ; $633F: $08 $6B $0F
    ld a, [c]                                     ; $6342: $F2
    nop                                           ; $6343: $00
    ld l, d                                       ; $6344: $6A
    rrca                                          ; $6345: $0F
    ld [$57F4], a                                 ; $6346: $EA $F4 $57
    ld l, a                                       ; $6349: $6F
    ld [$5704], a                                 ; $634A: $EA $04 $57
    ld c, a                                       ; $634D: $4F
    rst $30                                       ; $634E: $F7
    db $FC                                        ; $634F: $FC
    ld [hl], d                                    ; $6350: $72
    ld [$FCFF], sp                                ; $6351: $08 $FF $FC
    ld [hl], l                                    ; $6354: $75
    add hl, bc                                    ; $6355: $09
    ld a, [$60F0]                                 ; $6356: $FA $F0 $60
    cpl                                           ; $6359: $2F
    ld a, [$6008]                                 ; $635A: $FA $08 $60
    rrca                                          ; $635D: $0F
    ld a, [bc]                                    ; $635E: $0A
    ldh a, [$61]                                  ; $635F: $F0 $61
    cpl                                           ; $6361: $2F
    ld a, [bc]                                    ; $6362: $0A
    ld [$0F61], sp                                ; $6363: $08 $61 $0F
    ld [de], a                                    ; $6366: $12
    ldh a, [$63]                                  ; $6367: $F0 $63
    cpl                                           ; $6369: $2F
    ld [de], a                                    ; $636A: $12
    ld hl, sp+$62                                 ; $636B: $F8 $62
    cpl                                           ; $636D: $2F
    ld [de], a                                    ; $636E: $12
    ld [$0863], sp                                ; $636F: $08 $63 $08
    ld [de], a                                    ; $6372: $12
    nop                                           ; $6373: $00
    ld h, d                                       ; $6374: $62
    rrca                                          ; $6375: $0F
    ld [bc], a                                    ; $6376: $02
    add sp, $4E                                   ; $6377: $E8 $4E
    ld l, a                                       ; $6379: $6F
    ld [bc], a                                    ; $637A: $02
    db $10                                        ; $637B: $10
    ld c, [hl]                                    ; $637C: $4E
    ld c, a                                       ; $637D: $4F
    ld a, [bc]                                    ; $637E: $0A
    add sp, $4D                                   ; $637F: $E8 $4D
    ld l, a                                       ; $6381: $6F
    ld a, [bc]                                    ; $6382: $0A
    db $10                                        ; $6383: $10

jr_011_6384:
    ld c, l                                       ; $6384: $4D
    ld c, a                                       ; $6385: $4F
    ld [bc], a                                    ; $6386: $02
    ld hl, sp+$3F                                 ; $6387: $F8 $3F
    cpl                                           ; $6389: $2F
    ld [bc], a                                    ; $638A: $02
    nop                                           ; $638B: $00
    ccf                                           ; $638C: $3F
    rrca                                          ; $638D: $0F
    ld a, [bc]                                    ; $638E: $0A
    ld hl, sp+$41                                 ; $638F: $F8 $41
    cpl                                           ; $6391: $2F
    ld a, [bc]                                    ; $6392: $0A
    nop                                           ; $6393: $00
    ld b, c                                       ; $6394: $41
    rrca                                          ; $6395: $0F
    ld [bc], a                                    ; $6396: $02
    ldh a, [rLCDC]                                ; $6397: $F0 $40
    cpl                                           ; $6399: $2F
    ld [bc], a                                    ; $639A: $02
    ld [$0F40], sp                                ; $639B: $08 $40 $0F
    ld a, [$3BF8]                                 ; $639E: $FA $F8 $3B
    cpl                                           ; $63A1: $2F
    ld a, [$3B00]                                 ; $63A2: $FA $00 $3B
    rrca                                          ; $63A5: $0F
    ld a, [de]                                    ; $63A6: $1A
    ld hl, sp+$38                                 ; $63A7: $F8 $38
    ld l, a                                       ; $63A9: $6F
    ld a, [de]                                    ; $63AA: $1A
    nop                                           ; $63AB: $00
    jr c, jr_011_63FD                             ; $63AC: $38 $4F

    add b                                         ; $63AE: $80
    ld [$5DF0], a                                 ; $63AF: $EA $F0 $5D
    ld l, a                                       ; $63B2: $6F
    ld [$5CF8], a                                 ; $63B3: $EA $F8 $5C
    ld l, a                                       ; $63B6: $6F
    ld [$5D08], a                                 ; $63B7: $EA $08 $5D
    ld c, a                                       ; $63BA: $4F
    ld [$5C00], a                                 ; $63BB: $EA $00 $5C
    ld c, a                                       ; $63BE: $4F
    ld a, [c]                                     ; $63BF: $F2
    ldh a, [$6E]                                  ; $63C0: $F0 $6E
    cpl                                           ; $63C2: $2F
    ld a, [c]                                     ; $63C3: $F2
    ld hl, sp+$6D                                 ; $63C4: $F8 $6D
    cpl                                           ; $63C6: $2F
    ld a, [c]                                     ; $63C7: $F2
    ld [$0F6E], sp                                ; $63C8: $08 $6E $0F
    ld a, [c]                                     ; $63CB: $F2
    nop                                           ; $63CC: $00
    ld l, l                                       ; $63CD: $6D
    rrca                                          ; $63CE: $0F
    rst $38                                       ; $63CF: $FF
    db $FC                                        ; $63D0: $FC
    ld [hl], l                                    ; $63D1: $75
    add hl, bc                                    ; $63D2: $09
    rst $30                                       ; $63D3: $F7
    db $FC                                        ; $63D4: $FC
    ld [hl], d                                    ; $63D5: $72
    ld [$F80A], sp                                ; $63D6: $08 $0A $F8
    ld b, c                                       ; $63D9: $41
    cpl                                           ; $63DA: $2F
    ld a, [bc]                                    ; $63DB: $0A
    nop                                           ; $63DC: $00
    ld b, c                                       ; $63DD: $41
    rrca                                          ; $63DE: $0F
    ld a, [$60F0]                                 ; $63DF: $FA $F0 $60
    cpl                                           ; $63E2: $2F
    ld a, [$6008]                                 ; $63E3: $FA $08 $60
    rrca                                          ; $63E6: $0F
    ld a, [bc]                                    ; $63E7: $0A
    ldh a, [rBCPD]                                ; $63E8: $F0 $69
    cpl                                           ; $63EA: $2F
    ld a, [bc]                                    ; $63EB: $0A
    ld [$0F69], sp                                ; $63EC: $08 $69 $0F
    ld [de], a                                    ; $63EF: $12
    ldh a, [$63]                                  ; $63F0: $F0 $63
    jr z, jr_011_6406                             ; $63F2: $28 $12

    ld hl, sp+$62                                 ; $63F4: $F8 $62
    cpl                                           ; $63F6: $2F
    ld [de], a                                    ; $63F7: $12
    ld [$0863], sp                                ; $63F8: $08 $63 $08
    ld [de], a                                    ; $63FB: $12
    nop                                           ; $63FC: $00

jr_011_63FD:
    ld h, d                                       ; $63FD: $62
    rrca                                          ; $63FE: $0F
    dec b                                         ; $63FF: $05
    add sp, $54                                   ; $6400: $E8 $54
    ld l, a                                       ; $6402: $6F
    dec b                                         ; $6403: $05
    db $10                                        ; $6404: $10
    ld d, h                                       ; $6405: $54

jr_011_6406:
    ld c, a                                       ; $6406: $4F
    dec c                                         ; $6407: $0D
    add sp, $53                                   ; $6408: $E8 $53
    ld l, a                                       ; $640A: $6F
    dec c                                         ; $640B: $0D
    db $10                                        ; $640C: $10
    ld d, e                                       ; $640D: $53
    ld c, a                                       ; $640E: $4F
    ld [bc], a                                    ; $640F: $02
    ld hl, sp+$3F                                 ; $6410: $F8 $3F
    cpl                                           ; $6412: $2F
    ld [bc], a                                    ; $6413: $02
    nop                                           ; $6414: $00
    ccf                                           ; $6415: $3F
    rrca                                          ; $6416: $0F
    ld [bc], a                                    ; $6417: $02
    ldh a, [rLCDC]                                ; $6418: $F0 $40
    cpl                                           ; $641A: $2F
    ld [bc], a                                    ; $641B: $02
    ld [$0F40], sp                                ; $641C: $08 $40 $0F
    ld a, [$3BF8]                                 ; $641F: $FA $F8 $3B
    cpl                                           ; $6422: $2F
    ld a, [$3B00]                                 ; $6423: $FA $00 $3B
    rrca                                          ; $6426: $0F
    ld a, [de]                                    ; $6427: $1A
    ld hl, sp+$38                                 ; $6428: $F8 $38
    ld l, a                                       ; $642A: $6F
    ld a, [de]                                    ; $642B: $1A
    nop                                           ; $642C: $00
    jr c, jr_011_647E                             ; $642D: $38 $4F

    add b                                         ; $642F: $80
    jp hl                                         ; $6430: $E9


    push af                                       ; $6431: $F5
    ld b, l                                       ; $6432: $45
    ld l, a                                       ; $6433: $6F
    jp hl                                         ; $6434: $E9


    inc bc                                        ; $6435: $03
    ld b, l                                       ; $6436: $45
    ld c, a                                       ; $6437: $4F
    pop af                                        ; $6438: $F1
    ldh a, [$5F]                                  ; $6439: $F0 $5F
    cpl                                           ; $643B: $2F
    pop af                                        ; $643C: $F1
    ld hl, sp+$5E                                 ; $643D: $F8 $5E
    cpl                                           ; $643F: $2F
    pop af                                        ; $6440: $F1
    ld [$0F5F], sp                                ; $6441: $08 $5F $0F
    pop af                                        ; $6444: $F1
    nop                                           ; $6445: $00
    ld e, [hl]                                    ; $6446: $5E
    rrca                                          ; $6447: $0F
    or $FC                                        ; $6448: $F6 $FC
    ld [hl], d                                    ; $644A: $72
    ld [$FCFE], sp                                ; $644B: $08 $FE $FC
    ld [hl], l                                    ; $644E: $75
    add hl, bc                                    ; $644F: $09
    ld sp, hl                                     ; $6450: $F9
    ldh a, [$60]                                  ; $6451: $F0 $60
    cpl                                           ; $6453: $2F
    ld sp, hl                                     ; $6454: $F9
    ld [$0F60], sp                                ; $6455: $08 $60 $0F
    add hl, bc                                    ; $6458: $09
    ldh a, [$61]                                  ; $6459: $F0 $61
    cpl                                           ; $645B: $2F
    add hl, bc                                    ; $645C: $09
    ld [$0F61], sp                                ; $645D: $08 $61 $0F
    ld de, $63F0                                  ; $6460: $11 $F0 $63
    cpl                                           ; $6463: $2F
    ld de, $62F8                                  ; $6464: $11 $F8 $62
    cpl                                           ; $6467: $2F
    ld de, $6308                                  ; $6468: $11 $08 $63
    rrca                                          ; $646B: $0F
    ld de, $6200                                  ; $646C: $11 $00 $62
    rrca                                          ; $646F: $0F
    rrca                                          ; $6470: $0F
    add sp, $58                                   ; $6471: $E8 $58
    ld l, a                                       ; $6473: $6F
    rrca                                          ; $6474: $0F
    db $10                                        ; $6475: $10
    ld e, b                                       ; $6476: $58
    ld c, a                                       ; $6477: $4F
    rlca                                          ; $6478: $07
    add sp, $59                                   ; $6479: $E8 $59
    ld l, a                                       ; $647B: $6F
    rlca                                          ; $647C: $07
    db $10                                        ; $647D: $10

jr_011_647E:
    ld e, c                                       ; $647E: $59
    ld c, a                                       ; $647F: $4F
    ld bc, $3FF8                                  ; $6480: $01 $F8 $3F
    cpl                                           ; $6483: $2F
    ld bc, $3F00                                  ; $6484: $01 $00 $3F
    rrca                                          ; $6487: $0F
    add hl, bc                                    ; $6488: $09
    ld hl, sp+$41                                 ; $6489: $F8 $41
    cpl                                           ; $648B: $2F
    add hl, bc                                    ; $648C: $09
    nop                                           ; $648D: $00
    ld b, c                                       ; $648E: $41
    rrca                                          ; $648F: $0F
    ld bc, $40F0                                  ; $6490: $01 $F0 $40
    cpl                                           ; $6493: $2F
    ld bc, $4008                                  ; $6494: $01 $08 $40
    rrca                                          ; $6497: $0F
    ld sp, hl                                     ; $6498: $F9
    ld hl, sp+$3B                                 ; $6499: $F8 $3B
    cpl                                           ; $649B: $2F
    ld sp, hl                                     ; $649C: $F9
    nop                                           ; $649D: $00
    dec sp                                        ; $649E: $3B
    rrca                                          ; $649F: $0F
    add hl, de                                    ; $64A0: $19
    ld hl, sp+$38                                 ; $64A1: $F8 $38
    ld l, a                                       ; $64A3: $6F
    add hl, de                                    ; $64A4: $19
    nop                                           ; $64A5: $00
    jr c, jr_011_64F7                             ; $64A6: $38 $4F

    add b                                         ; $64A8: $80

    ; $64A9
sPressStart::
    db $00, $10, $06, $07
    db $00, $08, $04, $07
    db $00, $00, $01, $07
    db $00, $F8, $05, $07
    db $00, $F0, $04, $07
    db $00, $E8, $03, $07
    db $F0, $0B, $03, $07
    db $F0, $03, $03, $07
    db $F0, $FB, $02, $07
    db $F0, $F3, $01, $07
    db $F0, $EB, $00, $07
    db $80

    db $FC                                        ; $64D6: $FC
    db $FC                                        ; $64D7: $FC
    rlca                                          ; $64D8: $07
    ld b, $80                                     ; $64D9: $06 $80
    nop                                           ; $64DB: $00
    ld hl, sp+$06                                 ; $64DC: $F8 $06
    ld b, [hl]                                    ; $64DE: $46
    nop                                           ; $64DF: $00
    nop                                           ; $64E0: $00
    ld b, $66                                     ; $64E1: $06 $66
    ld hl, sp+$00                                 ; $64E3: $F8 $00
    ld b, $26                                     ; $64E5: $06 $26
    ld hl, sp-$08                                 ; $64E7: $F8 $F8
    ld b, $06                                     ; $64E9: $06 $06
    add b                                         ; $64EB: $80
    nop                                           ; $64EC: $00
    nop                                           ; $64ED: $00
    dec b                                         ; $64EE: $05
    ld h, [hl]                                    ; $64EF: $66
    nop                                           ; $64F0: $00
    ld [$6604], sp                                ; $64F1: $08 $04 $66
    nop                                           ; $64F4: $00
    ld hl, sp+$05                                 ; $64F5: $F8 $05

jr_011_64F7:
    ld b, [hl]                                    ; $64F7: $46
    nop                                           ; $64F8: $00
    ldh a, [rDIV]                                 ; $64F9: $F0 $04
    ld b, [hl]                                    ; $64FB: $46
    ld hl, sp+$00                                 ; $64FC: $F8 $00
    dec b                                         ; $64FE: $05
    ld h, $F8                                     ; $64FF: $26 $F8
    ld [$2604], sp                                ; $6501: $08 $04 $26
    ld hl, sp-$08                                 ; $6504: $F8 $F8
    dec b                                         ; $6506: $05
    ld b, $F8                                     ; $6507: $06 $F8
    ldh a, [rDIV]                                 ; $6509: $F0 $04
    ld b, $80                                     ; $650B: $06 $80
    ld [$03F8], sp                                ; $650D: $08 $F8 $03
    ld b, [hl]                                    ; $6510: $46
    ld [$02F0], sp                                ; $6511: $08 $F0 $02
    ld b, [hl]                                    ; $6514: $46
    ld [$01E8], sp                                ; $6515: $08 $E8 $01
    ld b, [hl]                                    ; $6518: $46
    nop                                           ; $6519: $00
    add sp, $00                                   ; $651A: $E8 $00
    ld b, [hl]                                    ; $651C: $46
    ld [$0300], sp                                ; $651D: $08 $00 $03
    ld h, [hl]                                    ; $6520: $66
    ld [$0208], sp                                ; $6521: $08 $08 $02
    ld h, [hl]                                    ; $6524: $66
    ld [$0110], sp                                ; $6525: $08 $10 $01
    ld h, [hl]                                    ; $6528: $66
    nop                                           ; $6529: $00
    stop                                          ; $652A: $10 $00
    ld h, [hl]                                    ; $652C: $66
    ldh a, [rP1]                                  ; $652D: $F0 $00
    inc bc                                        ; $652F: $03
    ld h, $F0                                     ; $6530: $26 $F0
    ld [$2602], sp                                ; $6532: $08 $02 $26
    ldh a, [rNR10]                                ; $6535: $F0 $10
    ld bc, $F826                                  ; $6537: $01 $26 $F8
    stop                                          ; $653A: $10 $00
    ld h, $F0                                     ; $653C: $26 $F0
    ld hl, sp+$03                                 ; $653E: $F8 $03
    ld b, $F0                                     ; $6540: $06 $F0
    ldh a, [rSC]                                  ; $6542: $F0 $02
    ld b, $F0                                     ; $6544: $06 $F0
    add sp, $01                                   ; $6546: $E8 $01
    ld b, $F8                                     ; $6548: $06 $F8
    add sp, $00                                   ; $654A: $E8 $00
    ld b, $80                                     ; $654C: $06 $80

    db $FD, $FD, $1A, $06, $80, $FD, $FC, $00, $06, $80, $00, $00, $04, $06, $00, $F8
    db $03, $06, $F8, $00, $02, $06, $F8, $F8, $01, $06, $80, $05, $F7, $1A, $06, $F5
    db $FD, $1A, $06, $00, $00, $08, $06, $00, $F8, $07, $06, $F8, $00, $06, $06, $F8
    db $F8, $05, $06, $80

    inc b                                         ; $6582: $04
    db $F4                                        ; $6583: $F4
    ld a, [de]                                    ; $6584: $1A
    ld b, $08                                     ; $6585: $06 $08
    nop                                           ; $6587: $00
    ld a, [de]                                    ; $6588: $1A
    ld b, $F2                                     ; $6589: $06 $F2
    ld hl, sp+$1A                                 ; $658B: $F8 $1A
    ld b, $04                                     ; $658D: $06 $04
    inc b                                         ; $658F: $04
    ld de, $0406                                  ; $6590: $11 $06 $04
    db $FC                                        ; $6593: $FC
    db $10                                        ; $6594: $10
    ld b, $04                                     ; $6595: $06 $04
    db $F4                                        ; $6597: $F4
    rrca                                          ; $6598: $0F
    ld b, $FC                                     ; $6599: $06 $FC
    inc b                                         ; $659B: $04
    ld c, $06                                     ; $659C: $0E $06
    db $FC                                        ; $659E: $FC
    db $FC                                        ; $659F: $FC
    dec c                                         ; $65A0: $0D
    nop                                           ; $65A1: $00
    db $FC                                        ; $65A2: $FC
    db $F4                                        ; $65A3: $F4
    inc c                                         ; $65A4: $0C
    ld b, $F4                                     ; $65A5: $06 $F4
    inc b                                         ; $65A7: $04
    dec bc                                        ; $65A8: $0B
    ld b, $F4                                     ; $65A9: $06 $F4
    db $FC                                        ; $65AB: $FC
    ld a, [bc]                                    ; $65AC: $0A
    ld b, $F4                                     ; $65AD: $06 $F4
    db $F4                                        ; $65AF: $F4
    add hl, bc                                    ; $65B0: $09
    ld b, $80                                     ; $65B1: $06 $80
    rst $38                                       ; $65B3: $FF
    ld a, [c]                                     ; $65B4: $F2
    ld a, [de]                                    ; $65B5: $1A
    ld b, $F8                                     ; $65B6: $06 $F8
    ld [$061A], sp                                ; $65B8: $08 $1A $06
    db $F4                                        ; $65BB: $F4
    inc b                                         ; $65BC: $04
    ld de, $F446                                  ; $65BD: $11 $46 $F4
    db $FC                                        ; $65C0: $FC
    db $10                                        ; $65C1: $10
    ld b, [hl]                                    ; $65C2: $46
    db $F4                                        ; $65C3: $F4
    db $F4                                        ; $65C4: $F4
    rrca                                          ; $65C5: $0F
    ld b, [hl]                                    ; $65C6: $46
    db $FC                                        ; $65C7: $FC
    inc b                                         ; $65C8: $04
    ld c, $46                                     ; $65C9: $0E $46
    db $FC                                        ; $65CB: $FC
    db $FC                                        ; $65CC: $FC
    dec c                                         ; $65CD: $0D
    ld b, b                                       ; $65CE: $40
    db $FC                                        ; $65CF: $FC
    db $F4                                        ; $65D0: $F4
    inc c                                         ; $65D1: $0C
    ld b, [hl]                                    ; $65D2: $46
    inc b                                         ; $65D3: $04
    inc b                                         ; $65D4: $04
    dec bc                                        ; $65D5: $0B
    ld b, [hl]                                    ; $65D6: $46
    inc b                                         ; $65D7: $04
    db $FC                                        ; $65D8: $FC
    ld a, [bc]                                    ; $65D9: $0A
    ld b, [hl]                                    ; $65DA: $46
    inc b                                         ; $65DB: $04
    db $F4                                        ; $65DC: $F4
    add hl, bc                                    ; $65DD: $09
    ld b, [hl]                                    ; $65DE: $46
    add b                                         ; $65DF: $80
    ld [$1AF8], sp                                ; $65E0: $08 $F8 $1A
    ld b, $F3                                     ; $65E3: $06 $F3
    nop                                           ; $65E5: $00
    ld a, [de]                                    ; $65E6: $1A
    ld b, $04                                     ; $65E7: $06 $04
    inc b                                         ; $65E9: $04
    add hl, de                                    ; $65EA: $19
    ld b, $04                                     ; $65EB: $06 $04
    db $FC                                        ; $65ED: $FC
    jr jr_011_65F6                                ; $65EE: $18 $06

    inc b                                         ; $65F0: $04
    db $F4                                        ; $65F1: $F4
    rla                                           ; $65F2: $17
    ld b, $FC                                     ; $65F3: $06 $FC
    inc b                                         ; $65F5: $04

jr_011_65F6:
    ld d, $06                                     ; $65F6: $16 $06
    db $FC                                        ; $65F8: $FC
    db $FC                                        ; $65F9: $FC
    dec d                                         ; $65FA: $15
    ld b, $FC                                     ; $65FB: $06 $FC
    db $F4                                        ; $65FD: $F4
    inc d                                         ; $65FE: $14
    ld b, $F4                                     ; $65FF: $06 $F4
    db $FC                                        ; $6601: $FC
    inc de                                        ; $6602: $13
    ld b, $F4                                     ; $6603: $06 $F4
    db $F4                                        ; $6605: $F4
    ld [de], a                                    ; $6606: $12
    ld b, $80                                     ; $6607: $06 $80
    ld [$1A00], sp                                ; $6609: $08 $00 $1A
    ld b, $F8                                     ; $660C: $06 $F8
    rlca                                          ; $660E: $07
    ld a, [de]                                    ; $660F: $1A
    ld b, $F0                                     ; $6610: $06 $F0
    ld hl, sp+$1A                                 ; $6612: $F8 $1A
    ld b, $F4                                     ; $6614: $06 $F4
    inc b                                         ; $6616: $04
    add hl, de                                    ; $6617: $19
    ld b, [hl]                                    ; $6618: $46
    db $F4                                        ; $6619: $F4
    db $FC                                        ; $661A: $FC
    jr jr_011_6663                                ; $661B: $18 $46

    db $F4                                        ; $661D: $F4
    db $F4                                        ; $661E: $F4
    rla                                           ; $661F: $17
    ld b, [hl]                                    ; $6620: $46
    db $FC                                        ; $6621: $FC
    inc b                                         ; $6622: $04
    ld d, $46                                     ; $6623: $16 $46
    db $FC                                        ; $6625: $FC
    db $FC                                        ; $6626: $FC
    dec d                                         ; $6627: $15
    ld b, [hl]                                    ; $6628: $46
    db $FC                                        ; $6629: $FC
    db $F4                                        ; $662A: $F4
    inc d                                         ; $662B: $14
    ld b, [hl]                                    ; $662C: $46
    inc b                                         ; $662D: $04
    db $FC                                        ; $662E: $FC
    inc de                                        ; $662F: $13
    ld b, [hl]                                    ; $6630: $46
    inc b                                         ; $6631: $04
    db $F4                                        ; $6632: $F4
    ld [de], a                                    ; $6633: $12
    ld b, [hl]                                    ; $6634: $46
    add b                                         ; $6635: $80
    ld [$1AF8], sp                                ; $6636: $08 $F8 $1A
    ld b, $F0                                     ; $6639: $06 $F0
    ld hl, sp+$1A                                 ; $663B: $F8 $1A
    ld b, $F5                                     ; $663D: $06 $F5
    dec b                                         ; $663F: $05
    ld a, [de]                                    ; $6640: $1A
    ld b, $F4                                     ; $6641: $06 $F4
    db $F4                                        ; $6643: $F4
    ld de, $F466                                  ; $6644: $11 $66 $F4
    db $FC                                        ; $6647: $FC
    db $10                                        ; $6648: $10
    ld h, [hl]                                    ; $6649: $66
    db $F4                                        ; $664A: $F4
    inc b                                         ; $664B: $04
    rrca                                          ; $664C: $0F
    ld h, [hl]                                    ; $664D: $66
    db $FC                                        ; $664E: $FC
    db $F4                                        ; $664F: $F4
    ld c, $66                                     ; $6650: $0E $66
    db $FC                                        ; $6652: $FC
    db $FC                                        ; $6653: $FC
    dec c                                         ; $6654: $0D
    ld h, b                                       ; $6655: $60
    db $FC                                        ; $6656: $FC
    inc b                                         ; $6657: $04
    inc c                                         ; $6658: $0C
    ld h, [hl]                                    ; $6659: $66
    inc b                                         ; $665A: $04
    db $F4                                        ; $665B: $F4
    dec bc                                        ; $665C: $0B
    ld h, [hl]                                    ; $665D: $66
    inc b                                         ; $665E: $04
    db $FC                                        ; $665F: $FC
    ld a, [bc]                                    ; $6660: $0A
    ld h, [hl]                                    ; $6661: $66
    inc b                                         ; $6662: $04

jr_011_6663:
    inc b                                         ; $6663: $04
    add hl, bc                                    ; $6664: $09
    ld h, [hl]                                    ; $6665: $66
    add b                                         ; $6666: $80
    ld [$1AF8], sp                                ; $6667: $08 $F8 $1A
    ld b, $F0                                     ; $666A: $06 $F0
    nop                                           ; $666C: $00
    ld a, [de]                                    ; $666D: $1A
    ld b, $04                                     ; $666E: $06 $04
    di                                            ; $6670: $F3
    add hl, de                                    ; $6671: $19
    ld h, $04                                     ; $6672: $26 $04
    ei                                            ; $6674: $FB
    jr jr_011_669D                                ; $6675: $18 $26

    inc b                                         ; $6677: $04
    inc bc                                        ; $6678: $03
    rla                                           ; $6679: $17
    ld h, $FC                                     ; $667A: $26 $FC
    db $F4                                        ; $667C: $F4
    ld d, $26                                     ; $667D: $16 $26
    db $FC                                        ; $667F: $FC
    db $FC                                        ; $6680: $FC
    dec d                                         ; $6681: $15
    ld h, $FC                                     ; $6682: $26 $FC
    inc b                                         ; $6684: $04
    inc d                                         ; $6685: $14
    ld h, $F4                                     ; $6686: $26 $F4
    db $FC                                        ; $6688: $FC
    inc de                                        ; $6689: $13
    ld h, $F4                                     ; $668A: $26 $F4
    inc b                                         ; $668C: $04
    ld [de], a                                    ; $668D: $12
    ld h, $80                                     ; $668E: $26 $80
    db $ED                                        ; $6690: $ED
    ei                                            ; $6691: $FB
    ld a, [hl+]                                   ; $6692: $2A
    ld b, $F1                                     ; $6693: $06 $F1
    cp $2A                                        ; $6695: $FE $2A
    ld b, $F4                                     ; $6697: $06 $F4
    db $FC                                        ; $6699: $FC
    dec de                                        ; $669A: $1B
    ld b, $FC                                     ; $669B: $06 $FC

jr_011_669D:
    db $FC                                        ; $669D: $FC
    inc e                                         ; $669E: $1C
    ld b, $80                                     ; $669F: $06 $80
    di                                            ; $66A1: $F3
    db $FC                                        ; $66A2: $FC
    ld a, [hl+]                                   ; $66A3: $2A
    ld b, $F7                                     ; $66A4: $06 $F7
    db $FD                                        ; $66A6: $FD
    ld a, [hl+]                                   ; $66A7: $2A
    ld b, $F9                                     ; $66A8: $06 $F9
    ei                                            ; $66AA: $FB
    ld a, [hl+]                                   ; $66AB: $2A
    ld b, $FD                                     ; $66AC: $06 $FD
    db $FD                                        ; $66AE: $FD
    ld a, [de]                                    ; $66AF: $1A
    ld b, $80                                     ; $66B0: $06 $80
    ld a, [$2AFC]                                 ; $66B2: $FA $FC $2A
    ld b, $F8                                     ; $66B5: $06 $F8
    db $FD                                        ; $66B7: $FD
    ld a, [hl+]                                   ; $66B8: $2A
    ld b, $80                                     ; $66B9: $06 $80
    stop                                          ; $66BB: $10 $00
    ld a, [de]                                    ; $66BD: $1A
    ld b, $F0                                     ; $66BE: $06 $F0
    ld hl, sp+$1A                                 ; $66C0: $F8 $1A
    ld b, $F0                                     ; $66C2: $06 $F0
    ld [$061A], sp                                ; $66C4: $08 $1A $06
    ld [$1AF0], sp                                ; $66C7: $08 $F0 $1A
    ld b, $00                                     ; $66CA: $06 $00
    ld [$061A], sp                                ; $66CC: $08 $1A $06
    ld hl, sp-$18                                 ; $66CF: $F8 $E8
    ld a, [de]                                    ; $66D1: $1A
    ld b, $E8                                     ; $66D2: $06 $E8
    ld hl, sp+$1A                                 ; $66D4: $F8 $1A
    ld b, $FA                                     ; $66D6: $06 $FA
    nop                                           ; $66D8: $00
    dec c                                         ; $66D9: $0D
    nop                                           ; $66DA: $00
    ld a, [$0DF8]                                 ; $66DB: $FA $F8 $0D
    nop                                           ; $66DE: $00
    ld a, [bc]                                    ; $66DF: $0A
    nop                                           ; $66E0: $00
    jr z, @+$08                                   ; $66E1: $28 $06

    ld a, [bc]                                    ; $66E3: $0A
    ld hl, sp+$27                                 ; $66E4: $F8 $27
    ld b, $0A                                     ; $66E6: $06 $0A
    ld [$0629], sp                                ; $66E8: $08 $29 $06
    ld [bc], a                                    ; $66EB: $02
    nop                                           ; $66EC: $00
    dec h                                         ; $66ED: $25
    ld b, $02                                     ; $66EE: $06 $02
    ld hl, sp+$24                                 ; $66F0: $F8 $24
    ld b, $02                                     ; $66F2: $06 $02
    ldh a, [rNR44]                                ; $66F4: $F0 $23
    ld b, $FA                                     ; $66F6: $06 $FA
    ld [$0622], sp                                ; $66F8: $08 $22 $06
    ld a, [$21F0]                                 ; $66FB: $FA $F0 $21
    ld b, $F2                                     ; $66FE: $06 $F2
    ld [$0620], sp                                ; $6700: $08 $20 $06
    ld a, [c]                                     ; $6703: $F2
    nop                                           ; $6704: $00
    rra                                           ; $6705: $1F
    ld b, $F2                                     ; $6706: $06 $F2
    ld hl, sp+$1E                                 ; $6708: $F8 $1E
    ld b, $F2                                     ; $670A: $06 $F2
    ldh a, [rNR33]                                ; $670C: $F0 $1D
    ld b, $80                                     ; $670E: $06 $80

    db $F8, $06, $1A, $06, $FF, $F4, $1A, $06, $F2, $FA, $1A, $06, $F4, $F3, $1A, $06
    db $05, $FA, $1A, $06, $01, $06, $1A, $06, $FA, $F4, $1A, $06, $F3, $FF, $1A, $06
    db $00, $00, $2E, $06, $00, $F8, $2D, $06, $F8, $00, $2C, $06, $F8, $F8, $2B, $06
    db $80

    rst $28                                       ; $6741: $EF
    add hl, bc                                    ; $6742: $09
    ld a, [de]                                    ; $6743: $1A
    ld b, $EC                                     ; $6744: $06 $EC
    di                                            ; $6746: $F3
    ld a, [de]                                    ; $6747: $1A
    ld b, $00                                     ; $6748: $06 $00
    ldh a, [rNR30]                                ; $674A: $F0 $1A
    ld b, $FA                                     ; $674C: $06 $FA
    di                                            ; $674E: $F3
    ld a, [de]                                    ; $674F: $1A
    ld b, $F8                                     ; $6750: $06 $F8
    ld [$061A], sp                                ; $6752: $08 $1A $06
    pop af                                        ; $6755: $F1
    nop                                           ; $6756: $00
    ld a, [de]                                    ; $6757: $1A
    ld b, $F0                                     ; $6758: $06 $F0
    ldh a, [rNR30]                                ; $675A: $F0 $1A
    ld b, $02                                     ; $675C: $06 $02
    inc bc                                        ; $675E: $03
    inc sp                                        ; $675F: $33
    ld b, $03                                     ; $6760: $06 $03
    push af                                       ; $6762: $F5
    ld [hl-], a                                   ; $6763: $32
    ld b, $F5                                     ; $6764: $06 $F5
    inc bc                                        ; $6766: $03
    ld sp, $F406                                  ; $6767: $31 $06 $F4
    push af                                       ; $676A: $F5
    jr nc, jr_011_6773                            ; $676B: $30 $06

    add b                                         ; $676D: $80
    pop af                                        ; $676E: $F1
    ld a, [bc]                                    ; $676F: $0A
    ld a, [de]                                    ; $6770: $1A
    ld b, $EF                                     ; $6771: $06 $EF

jr_011_6773:
    ld a, [c]                                     ; $6773: $F2
    ld a, [de]                                    ; $6774: $1A
    ld b, $03                                     ; $6775: $06 $03
    rst $28                                       ; $6777: $EF
    ld a, [de]                                    ; $6778: $1A
    ld b, $FB                                     ; $6779: $06 $FB
    ldh a, [rNR30]                                ; $677B: $F0 $1A
    ld b, $FB                                     ; $677D: $06 $FB
    add hl, bc                                    ; $677F: $09
    ld a, [de]                                    ; $6780: $1A
    ld b, $F3                                     ; $6781: $06 $F3
    ld bc, $061A                                  ; $6783: $01 $1A $06
    di                                            ; $6786: $F3
    rst $28                                       ; $6787: $EF
    ld a, [de]                                    ; $6788: $1A
    ld b, $04                                     ; $6789: $06 $04
    dec b                                         ; $678B: $05
    inc sp                                        ; $678C: $33
    ld b, $06                                     ; $678D: $06 $06
    or $32                                        ; $678F: $F6 $32
    ld b, $F5                                     ; $6791: $06 $F5
    inc bc                                        ; $6793: $03
    ld sp, $F406                                  ; $6794: $31 $06 $F4
    push af                                       ; $6797: $F5
    jr nc, jr_011_67A0                            ; $6798: $30 $06

    add b                                         ; $679A: $80
    db $F4                                        ; $679B: $F4
    ld a, [bc]                                    ; $679C: $0A
    ld a, [de]                                    ; $679D: $1A
    ld b, $F6                                     ; $679E: $06 $F6

jr_011_67A0:
    xor $1A                                       ; $67A0: $EE $1A
    ld b, $06                                     ; $67A2: $06 $06
    xor $1A                                       ; $67A4: $EE $1A
    ld b, $FE                                     ; $67A6: $06 $FE
    rst $28                                       ; $67A8: $EF
    ld a, [de]                                    ; $67A9: $1A
    ld b, $FE                                     ; $67AA: $06 $FE
    ld a, [bc]                                    ; $67AC: $0A
    ld a, [de]                                    ; $67AD: $1A
    ld b, $F6                                     ; $67AE: $06 $F6
    nop                                           ; $67B0: $00
    ld a, [de]                                    ; $67B1: $1A
    ld b, $FA                                     ; $67B2: $06 $FA
    db $EC                                        ; $67B4: $EC
    ld a, [de]                                    ; $67B5: $1A
    ld b, $04                                     ; $67B6: $06 $04
    dec b                                         ; $67B8: $05
    inc sp                                        ; $67B9: $33
    ld b, $07                                     ; $67BA: $06 $07
    or $32                                        ; $67BC: $F6 $32
    ld b, $F8                                     ; $67BE: $06 $F8
    inc bc                                        ; $67C0: $03
    ld sp, $F806                                  ; $67C1: $31 $06 $F8
    or $30                                        ; $67C4: $F6 $30
    ld b, $80                                     ; $67C6: $06 $80
    nop                                           ; $67C8: $00
    nop                                           ; $67C9: $00
    cpl                                           ; $67CA: $2F
    ld b, $FE                                     ; $67CB: $06 $FE
    ld hl, sp+$1A                                 ; $67CD: $F8 $1A
    ld b, $04                                     ; $67CF: $06 $04
    pop af                                        ; $67D1: $F1
    ld a, [de]                                    ; $67D2: $1A
    ld b, $06                                     ; $67D3: $06 $06
    ld b, $1A                                     ; $67D5: $06 $1A
    ld b, $F8                                     ; $67D7: $06 $F8
    nop                                           ; $67D9: $00
    ld a, [de]                                    ; $67DA: $1A
    ld b, $80                                     ; $67DB: $06 $80
    ld [bc], a                                    ; $67DD: $02
    cp $1A                                        ; $67DE: $FE $1A
    ld b, $80                                     ; $67E0: $06 $80
    nop                                           ; $67E2: $00
    ld hl, sp+$1A                                 ; $67E3: $F8 $1A
    ld b, $F8                                     ; $67E5: $06 $F8
    nop                                           ; $67E7: $00
    ld a, [de]                                    ; $67E8: $1A
    ld b, $FC                                     ; $67E9: $06 $FC
    db $FC                                        ; $67EB: $FC
    nop                                           ; $67EC: $00
    ld b, [hl]                                    ; $67ED: $46
    add b                                         ; $67EE: $80
    cp $F8                                        ; $67EF: $FE $F8
    ld a, [de]                                    ; $67F1: $1A
    ld b, $02                                     ; $67F2: $06 $02
    db $FD                                        ; $67F4: $FD
    ld a, [de]                                    ; $67F5: $1A
    ld b, $F9                                     ; $67F6: $06 $F9
    db $FD                                        ; $67F8: $FD
    ld a, [de]                                    ; $67F9: $1A
    ld b, $FD                                     ; $67FA: $06 $FD
    db $FD                                        ; $67FC: $FD
    nop                                           ; $67FD: $00
    ld h, $80                                     ; $67FE: $26 $80
    ld bc, $1AF8                                  ; $6800: $01 $F8 $1A
    ld b, $F8                                     ; $6803: $06 $F8
    nop                                           ; $6805: $00
    ld a, [de]                                    ; $6806: $1A
    ld b, $FD                                     ; $6807: $06 $FD
    db $FC                                        ; $6809: $FC
    nop                                           ; $680A: $00
    ld b, $80                                     ; $680B: $06 $80
    or $F9                                        ; $680D: $F6 $F9
    ld a, [de]                                    ; $680F: $1A
    ld b, $02                                     ; $6810: $06 $02
    rst $30                                       ; $6812: $F7
    ld a, [de]                                    ; $6813: $1A
    ld b, $F8                                     ; $6814: $06 $F8
    nop                                           ; $6816: $00
    inc b                                         ; $6817: $04
    ld b, [hl]                                    ; $6818: $46
    rst $30                                       ; $6819: $F7
    inc bc                                        ; $681A: $03
    ld a, [de]                                    ; $681B: $1A
    ld b, $F8                                     ; $681C: $06 $F8
    ld hl, sp+$03                                 ; $681E: $F8 $03
    ld b, [hl]                                    ; $6820: $46
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    ld [bc], a                                    ; $6823: $02
    ld b, [hl]                                    ; $6824: $46
    nop                                           ; $6825: $00
    ld hl, sp+$01                                 ; $6826: $F8 $01
    ld b, [hl]                                    ; $6828: $46
    add b                                         ; $6829: $80
    dec b                                         ; $682A: $05
    rst $30                                       ; $682B: $F7
    ld a, [de]                                    ; $682C: $1A
    ld b, $F5                                     ; $682D: $06 $F5
    db $FD                                        ; $682F: $FD
    ld a, [de]                                    ; $6830: $1A
    ld b, $00                                     ; $6831: $06 $00
    nop                                           ; $6833: $00
    ld [$0006], sp                                ; $6834: $08 $06 $00
    ld hl, sp+$07                                 ; $6837: $F8 $07
    ld b, $F8                                     ; $6839: $06 $F8
    nop                                           ; $683B: $00
    ld b, $06                                     ; $683C: $06 $06
    ld hl, sp-$08                                 ; $683E: $F8 $F8
    dec b                                         ; $6840: $05
    ld b, $80                                     ; $6841: $06 $80
    ld a, [$1AF5]                                 ; $6843: $FA $F5 $1A
    ld b, $04                                     ; $6846: $06 $04
    nop                                           ; $6848: $00
    ld a, [de]                                    ; $6849: $1A
    ld b, $F7                                     ; $684A: $06 $F7
    inc bc                                        ; $684C: $03
    ld a, [de]                                    ; $684D: $1A
    ld b, $00                                     ; $684E: $06 $00
    ld hl, sp+$04                                 ; $6850: $F8 $04
    ld h, $00                                     ; $6852: $26 $00
    nop                                           ; $6854: $00
    inc bc                                        ; $6855: $03
    ld h, $F8                                     ; $6856: $26 $F8
    ld hl, sp+$02                                 ; $6858: $F8 $02
    ld h, $F8                                     ; $685A: $26 $F8
    nop                                           ; $685C: $00
    ld bc, $8026                                  ; $685D: $01 $26 $80
    dec b                                         ; $6860: $05
    rst $30                                       ; $6861: $F7
    ld a, [de]                                    ; $6862: $1A
    ld h, $F5                                     ; $6863: $26 $F5
    ld hl, sp+$1A                                 ; $6865: $F8 $1A
    ld h, $F8                                     ; $6867: $26 $F8
    nop                                           ; $6869: $00
    ld [$F846], sp                                ; $686A: $08 $46 $F8
    ld hl, sp+$07                                 ; $686D: $F8 $07
    ld b, [hl]                                    ; $686F: $46
    nop                                           ; $6870: $00
    ld hl, sp+$06                                 ; $6871: $F8 $06
    ld h, [hl]                                    ; $6873: $66
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    dec b                                         ; $6876: $05
    ld h, [hl]                                    ; $6877: $66
    add b                                         ; $6878: $80
    db $FD                                        ; $6879: $FD
    db $FC                                        ; $687A: $FC
    nop                                           ; $687B: $00
    nop                                           ; $687C: $00
    add b                                         ; $687D: $80
    db $FD                                        ; $687E: $FD
    db $FC                                        ; $687F: $FC
    ld bc, $8000                                  ; $6880: $01 $00 $80
    ld sp, hl                                     ; $6883: $F9
    nop                                           ; $6884: $00
    inc bc                                        ; $6885: $03
    nop                                           ; $6886: $00
    db $FD                                        ; $6887: $FD
    inc b                                         ; $6888: $04
    inc bc                                        ; $6889: $03
    nop                                           ; $688A: $00
    db $FD                                        ; $688B: $FD
    db $FC                                        ; $688C: $FC
    ld [bc], a                                    ; $688D: $02
    nop                                           ; $688E: $00
    add b                                         ; $688F: $80
    ld hl, sp+$00                                 ; $6890: $F8 $00
    ld bc, $8000                                  ; $6892: $01 $00 $80
    ld hl, sp+$05                                 ; $6895: $F8 $05
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    ld hl, sp+$03                                 ; $6899: $F8 $03
    ld bc, $F900                                  ; $689B: $01 $00 $F9
    ld bc, $0001                                  ; $689E: $01 $01 $00
    ld hl, sp+$00                                 ; $68A1: $F8 $00
    ld bc, $8000                                  ; $68A3: $01 $00 $80
    ld hl, sp+$08                                 ; $68A6: $F8 $08
    inc bc                                        ; $68A8: $03
    nop                                           ; $68A9: $00
    ld hl, sp+$00                                 ; $68AA: $F8 $00
    ld [bc], a                                    ; $68AC: $02
    nop                                           ; $68AD: $00
    add b                                         ; $68AE: $80
    ld a, [$0106]                                 ; $68AF: $FA $06 $01
    nop                                           ; $68B2: $00
    ld a, [$010B]                                 ; $68B3: $FA $0B $01
    nop                                           ; $68B6: $00
    ei                                            ; $68B7: $FB
    ld [$0001], sp                                ; $68B8: $08 $01 $00

jr_011_68BB:
    ei                                            ; $68BB: $FB
    ld a, [bc]                                    ; $68BC: $0A
    ld bc, $FC00                                  ; $68BD: $01 $00 $FC
    ld b, $01                                     ; $68C0: $06 $01
    nop                                           ; $68C2: $00
    db $FC                                        ; $68C3: $FC
    add hl, bc                                    ; $68C4: $09
    ld bc, $8000                                  ; $68C5: $01 $00 $80
    db $FC                                        ; $68C8: $FC
    add hl, bc                                    ; $68C9: $09
    ld bc, $FB00                                  ; $68CA: $01 $00 $FB
    inc c                                         ; $68CD: $0C
    ld bc, $FB00                                  ; $68CE: $01 $00 $FB
    ld [$0001], sp                                ; $68D1: $08 $01 $00
    db $FD                                        ; $68D4: $FD
    rlca                                          ; $68D5: $07
    ld bc, $FD00                                  ; $68D6: $01 $00 $FD
    inc b                                         ; $68D9: $04
    ld bc, $FD00                                  ; $68DA: $01 $00 $FD
    dec bc                                        ; $68DD: $0B
    ld bc, $FE00                                  ; $68DE: $01 $00 $FE
    ld [$0001], sp                                ; $68E1: $08 $01 $00
    db $FC                                        ; $68E4: $FC
    ld b, $01                                     ; $68E5: $06 $01
    nop                                           ; $68E7: $00
    add b                                         ; $68E8: $80
    cp $01                                        ; $68E9: $FE $01
    inc bc                                        ; $68EB: $03

jr_011_68EC:
    jr nz, jr_011_68EC                            ; $68EC: $20 $FE

    add hl, bc                                    ; $68EE: $09
    ld [bc], a                                    ; $68EF: $02
    jr nz, @-$7E                                  ; $68F0: $20 $80

    rst $38                                       ; $68F2: $FF
    ld b, $01                                     ; $68F3: $06 $01
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00
    ld [$0001], sp                                ; $68F7: $08 $01 $00
    ld bc, $010A                                  ; $68FA: $01 $0A $01
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    dec b                                         ; $68FF: $05
    ld bc, $0100                                  ; $6900: $01 $00 $01
    ld b, $01                                     ; $6903: $06 $01
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    ld b, $03                                     ; $6907: $06 $03
    nop                                           ; $6909: $00
    nop                                           ; $690A: $00
    nop                                           ; $690B: $00
    ld [bc], a                                    ; $690C: $02
    nop                                           ; $690D: $00
    add b                                         ; $690E: $80
    nop                                           ; $690F: $00
    ld [bc], a                                    ; $6910: $02
    inc bc                                        ; $6911: $03
    jr nz, jr_011_6914                            ; $6912: $20 $00

jr_011_6914:
    db $FD                                        ; $6914: $FD
    ld [bc], a                                    ; $6915: $02
    nop                                           ; $6916: $00
    add b                                         ; $6917: $80
    rst $38                                       ; $6918: $FF
    rst $38                                       ; $6919: $FF
    inc bc                                        ; $691A: $03
    nop                                           ; $691B: $00
    rst $38                                       ; $691C: $FF
    rst $30                                       ; $691D: $F7
    ld [bc], a                                    ; $691E: $02
    nop                                           ; $691F: $00
    add b                                         ; $6920: $80
    db $FD                                        ; $6921: $FD
    rst $38                                       ; $6922: $FF
    ld bc, $FC00                                  ; $6923: $01 $00 $FC
    cp $01                                        ; $6926: $FE $01
    nop                                           ; $6928: $00
    db $FD                                        ; $6929: $FD
    ld hl, sp+$03                                 ; $692A: $F8 $03

jr_011_692C:
    jr nz, jr_011_692C                            ; $692C: $20 $FE

    rst $30                                       ; $692E: $F7
    ld [bc], a                                    ; $692F: $02
    nop                                           ; $6930: $00
    add b                                         ; $6931: $80
    ld sp, hl                                     ; $6932: $F9
    db $FD                                        ; $6933: $FD
    inc bc                                        ; $6934: $03
    nop                                           ; $6935: $00
    ld sp, hl                                     ; $6936: $F9
    ld [bc], a                                    ; $6937: $02
    ld [bc], a                                    ; $6938: $02
    jr nz, jr_011_68BB                            ; $6939: $20 $80

    ld sp, hl                                     ; $693B: $F9
    inc bc                                        ; $693C: $03
    nop                                           ; $693D: $00
    nop                                           ; $693E: $00
    ld hl, sp+$01                                 ; $693F: $F8 $01
    ld bc, $F900                                  ; $6941: $01 $00 $F9
    nop                                           ; $6944: $00
    ld bc, $F800                                  ; $6945: $01 $00 $F8
    rst $38                                       ; $6948: $FF
    ld bc, $F900                                  ; $6949: $01 $00 $F9
    db $FD                                        ; $694C: $FD
    ld bc, $8000                                  ; $694D: $01 $00 $80
    ld hl, sp+$00                                 ; $6950: $F8 $00
    nop                                           ; $6952: $00
    ld b, $80                                     ; $6953: $06 $80
    ld hl, sp+$00                                 ; $6955: $F8 $00
    ld [bc], a                                    ; $6957: $02
    ld b, $F8                                     ; $6958: $06 $F8
    ld hl, sp+$01                                 ; $695A: $F8 $01
    ld b, $80                                     ; $695C: $06 $80
    ld hl, sp+$00                                 ; $695E: $F8 $00
    inc b                                         ; $6960: $04
    ld b, $F8                                     ; $6961: $06 $F8
    ld hl, sp+$03                                 ; $6963: $F8 $03
    ld b, $80                                     ; $6965: $06 $80
    ld hl, sp+$00                                 ; $6967: $F8 $00
    ld b, $06                                     ; $6969: $06 $06
    ld hl, sp-$08                                 ; $696B: $F8 $F8
    dec b                                         ; $696D: $05
    ld b, $80                                     ; $696E: $06 $80
    ld hl, sp+$00                                 ; $6970: $F8 $00
    ld [$F806], sp                                ; $6972: $08 $06 $F8
    ld hl, sp+$07                                 ; $6975: $F8 $07
    ld b, $80                                     ; $6977: $06 $80
    ld hl, sp-$08                                 ; $6979: $F8 $F8
    ld b, $26                                     ; $697B: $06 $26
    ld hl, sp+$00                                 ; $697D: $F8 $00
    dec b                                         ; $697F: $05
    ld h, $80                                     ; $6980: $26 $80
    ld hl, sp-$08                                 ; $6982: $F8 $F8
    inc b                                         ; $6984: $04
    ld h, $F8                                     ; $6985: $26 $F8
    nop                                           ; $6987: $00
    inc bc                                        ; $6988: $03
    ld h, $80                                     ; $6989: $26 $80
    ld hl, sp-$06                                 ; $698B: $F8 $FA
    nop                                           ; $698D: $00
    ld h, $80                                     ; $698E: $26 $80
    ldh a, [rP1]                                  ; $6990: $F0 $00
    dec bc                                        ; $6992: $0B
    ld h, $F8                                     ; $6993: $26 $F8
    db $F4                                        ; $6995: $F4
    ld c, $26                                     ; $6996: $0E $26
    ld hl, sp-$04                                 ; $6998: $F8 $FC
    dec c                                         ; $699A: $0D
    ld h, $F8                                     ; $699B: $26 $F8
    inc b                                         ; $699D: $04
    inc c                                         ; $699E: $0C
    ld h, $80                                     ; $699F: $26 $80
    ldh a, [$FD]                                  ; $69A1: $F0 $FD
    rrca                                          ; $69A3: $0F
    ld b, $F8                                     ; $69A4: $06 $F8
    dec b                                         ; $69A6: $05
    ld [de], a                                    ; $69A7: $12
    ld b, $F8                                     ; $69A8: $06 $F8
    db $FD                                        ; $69AA: $FD
    ld de, $F806                                  ; $69AB: $11 $06 $F8
    push af                                       ; $69AE: $F5
    db $10                                        ; $69AF: $10
    ld b, $80                                     ; $69B0: $06 $80
    ldh a, [$F8]                                  ; $69B2: $F0 $F8
    dec bc                                        ; $69B4: $0B
    ld b, $F8                                     ; $69B5: $06 $F8
    inc b                                         ; $69B7: $04
    ld c, $06                                     ; $69B8: $0E $06
    ld hl, sp-$04                                 ; $69BA: $F8 $FC
    dec c                                         ; $69BC: $0D
    ld b, $F8                                     ; $69BD: $06 $F8
    db $F4                                        ; $69BF: $F4
    inc c                                         ; $69C0: $0C
    ld b, $80                                     ; $69C1: $06 $80
    ldh a, [$F0]                                  ; $69C3: $F0 $F0
    ccf                                           ; $69C5: $3F
    ld h, h                                       ; $69C6: $64
    ldh a, [$F8]                                  ; $69C7: $F0 $F8
    ld a, $64                                     ; $69C9: $3E $64
    ldh a, [rP1]                                  ; $69CB: $F0 $00
    dec a                                         ; $69CD: $3D
    ld h, h                                       ; $69CE: $64
    ldh a, [$08]                                  ; $69CF: $F0 $08
    inc a                                         ; $69D1: $3C
    ld h, h                                       ; $69D2: $64
    ld hl, sp-$10                                 ; $69D3: $F8 $F0
    cpl                                           ; $69D5: $2F
    ld h, h                                       ; $69D6: $64
    ld hl, sp-$08                                 ; $69D7: $F8 $F8
    ld l, $64                                     ; $69D9: $2E $64
    ld hl, sp+$00                                 ; $69DB: $F8 $00
    dec l                                         ; $69DD: $2D
    ld h, h                                       ; $69DE: $64
    ld hl, sp+$08                                 ; $69DF: $F8 $08
    inc l                                         ; $69E1: $2C
    ld h, h                                       ; $69E2: $64
    nop                                           ; $69E3: $00
    ldh a, [$1F]                                  ; $69E4: $F0 $1F
    ld h, h                                       ; $69E6: $64
    nop                                           ; $69E7: $00
    ld hl, sp+$1E                                 ; $69E8: $F8 $1E
    ld h, h                                       ; $69EA: $64
    nop                                           ; $69EB: $00
    nop                                           ; $69EC: $00
    dec e                                         ; $69ED: $1D
    ld h, h                                       ; $69EE: $64
    nop                                           ; $69EF: $00
    ld [$641C], sp                                ; $69F0: $08 $1C $64
    ld [$0FF0], sp                                ; $69F3: $08 $F0 $0F
    ld h, h                                       ; $69F6: $64
    ld [$0EF8], sp                                ; $69F7: $08 $F8 $0E
    ld h, h                                       ; $69FA: $64
    ld [$0D00], sp                                ; $69FB: $08 $00 $0D
    ld h, h                                       ; $69FE: $64
    ld [$0C08], sp                                ; $69FF: $08 $08 $0C
    ld h, h                                       ; $6A02: $64
    add b                                         ; $6A03: $80
    ldh a, [$F0]                                  ; $6A04: $F0 $F0
    dec sp                                        ; $6A06: $3B
    ld h, h                                       ; $6A07: $64
    ldh a, [$F8]                                  ; $6A08: $F0 $F8
    ld a, [hl-]                                   ; $6A0A: $3A
    ld h, h                                       ; $6A0B: $64
    ldh a, [rP1]                                  ; $6A0C: $F0 $00
    add hl, sp                                    ; $6A0E: $39
    ld h, h                                       ; $6A0F: $64
    ldh a, [$08]                                  ; $6A10: $F0 $08
    jr c, jr_011_6A78                             ; $6A12: $38 $64

    ld hl, sp-$10                                 ; $6A14: $F8 $F0
    dec hl                                        ; $6A16: $2B
    ld h, h                                       ; $6A17: $64
    ld hl, sp-$08                                 ; $6A18: $F8 $F8
    ld a, [hl+]                                   ; $6A1A: $2A
    ld h, h                                       ; $6A1B: $64
    ld hl, sp+$00                                 ; $6A1C: $F8 $00
    add hl, hl                                    ; $6A1E: $29
    ld h, h                                       ; $6A1F: $64
    ld hl, sp+$08                                 ; $6A20: $F8 $08
    jr z, jr_011_6A88                             ; $6A22: $28 $64

    nop                                           ; $6A24: $00
    ldh a, [rNR31]                                ; $6A25: $F0 $1B
    ld h, h                                       ; $6A27: $64
    nop                                           ; $6A28: $00
    ld hl, sp+$1A                                 ; $6A29: $F8 $1A
    ld h, h                                       ; $6A2B: $64
    nop                                           ; $6A2C: $00
    nop                                           ; $6A2D: $00
    add hl, de                                    ; $6A2E: $19
    ld h, h                                       ; $6A2F: $64
    nop                                           ; $6A30: $00
    ld [$6418], sp                                ; $6A31: $08 $18 $64
    ld [$0BF0], sp                                ; $6A34: $08 $F0 $0B
    ld h, h                                       ; $6A37: $64
    ld [$0AF8], sp                                ; $6A38: $08 $F8 $0A
    ld h, h                                       ; $6A3B: $64
    ld [$0900], sp                                ; $6A3C: $08 $00 $09
    ld h, h                                       ; $6A3F: $64
    ld [$0808], sp                                ; $6A40: $08 $08 $08
    ld h, h                                       ; $6A43: $64
    add b                                         ; $6A44: $80
    ldh a, [$F0]                                  ; $6A45: $F0 $F0
    scf                                           ; $6A47: $37
    ld h, h                                       ; $6A48: $64
    ldh a, [$F8]                                  ; $6A49: $F0 $F8
    ld [hl], $64                                  ; $6A4B: $36 $64
    ldh a, [rP1]                                  ; $6A4D: $F0 $00
    dec [hl]                                      ; $6A4F: $35
    ld h, h                                       ; $6A50: $64
    ldh a, [$08]                                  ; $6A51: $F0 $08
    inc [hl]                                      ; $6A53: $34
    ld h, h                                       ; $6A54: $64
    ld hl, sp-$10                                 ; $6A55: $F8 $F0
    daa                                           ; $6A57: $27
    ld h, h                                       ; $6A58: $64
    ld hl, sp-$08                                 ; $6A59: $F8 $F8
    ld h, $64                                     ; $6A5B: $26 $64
    ld hl, sp+$00                                 ; $6A5D: $F8 $00
    dec h                                         ; $6A5F: $25
    ld h, h                                       ; $6A60: $64
    ld hl, sp+$08                                 ; $6A61: $F8 $08
    inc h                                         ; $6A63: $24
    ld h, h                                       ; $6A64: $64
    nop                                           ; $6A65: $00
    ldh a, [rNR22]                                ; $6A66: $F0 $17
    ld h, h                                       ; $6A68: $64
    nop                                           ; $6A69: $00
    ld hl, sp+$16                                 ; $6A6A: $F8 $16
    ld h, h                                       ; $6A6C: $64
    nop                                           ; $6A6D: $00
    nop                                           ; $6A6E: $00
    dec d                                         ; $6A6F: $15
    ld h, h                                       ; $6A70: $64
    nop                                           ; $6A71: $00
    ld [$6414], sp                                ; $6A72: $08 $14 $64
    ld [$07F0], sp                                ; $6A75: $08 $F0 $07

jr_011_6A78:
    ld h, h                                       ; $6A78: $64
    ld [$06F8], sp                                ; $6A79: $08 $F8 $06
    ld h, h                                       ; $6A7C: $64
    ld [$0500], sp                                ; $6A7D: $08 $00 $05
    ld h, h                                       ; $6A80: $64
    ld [$0408], sp                                ; $6A81: $08 $08 $04
    ld h, h                                       ; $6A84: $64
    add b                                         ; $6A85: $80
    ldh a, [$F0]                                  ; $6A86: $F0 $F0

jr_011_6A88:
    inc sp                                        ; $6A88: $33
    ld h, h                                       ; $6A89: $64
    ldh a, [$F8]                                  ; $6A8A: $F0 $F8
    ld [hl-], a                                   ; $6A8C: $32
    ld h, h                                       ; $6A8D: $64
    ldh a, [rP1]                                  ; $6A8E: $F0 $00
    ld sp, $F064                                  ; $6A90: $31 $64 $F0
    ld [$6430], sp                                ; $6A93: $08 $30 $64
    ld hl, sp-$10                                 ; $6A96: $F8 $F0
    inc hl                                        ; $6A98: $23
    ld h, h                                       ; $6A99: $64
    ld hl, sp-$08                                 ; $6A9A: $F8 $F8
    ld [hl+], a                                   ; $6A9C: $22
    ld h, h                                       ; $6A9D: $64
    ld hl, sp+$00                                 ; $6A9E: $F8 $00
    ld hl, $F864                                  ; $6AA0: $21 $64 $F8
    ld [$6420], sp                                ; $6AA3: $08 $20 $64
    nop                                           ; $6AA6: $00
    ldh a, [rNR13]                                ; $6AA7: $F0 $13
    ld h, h                                       ; $6AA9: $64
    nop                                           ; $6AAA: $00
    ld hl, sp+$12                                 ; $6AAB: $F8 $12
    ld h, h                                       ; $6AAD: $64
    nop                                           ; $6AAE: $00
    nop                                           ; $6AAF: $00
    ld de, $0064                                  ; $6AB0: $11 $64 $00
    ld [$6410], sp                                ; $6AB3: $08 $10 $64
    ld [$03F0], sp                                ; $6AB6: $08 $F0 $03
    ld h, h                                       ; $6AB9: $64
    ld [$02F8], sp                                ; $6ABA: $08 $F8 $02
    ld h, h                                       ; $6ABD: $64
    ld [$0100], sp                                ; $6ABE: $08 $00 $01
    ld h, h                                       ; $6AC1: $64
    ld [$0008], sp                                ; $6AC2: $08 $08 $00
    ld h, h                                       ; $6AC5: $64
    add b                                         ; $6AC6: $80
    ld [$3F08], sp                                ; $6AC7: $08 $08 $3F
    inc b                                         ; $6ACA: $04
    ld [$3E00], sp                                ; $6ACB: $08 $00 $3E
    inc b                                         ; $6ACE: $04
    ld [$3DF8], sp                                ; $6ACF: $08 $F8 $3D
    inc b                                         ; $6AD2: $04
    ld [$3CF0], sp                                ; $6AD3: $08 $F0 $3C
    inc b                                         ; $6AD6: $04
    nop                                           ; $6AD7: $00
    ld [$042F], sp                                ; $6AD8: $08 $2F $04
    nop                                           ; $6ADB: $00
    nop                                           ; $6ADC: $00
    ld l, $04                                     ; $6ADD: $2E $04
    nop                                           ; $6ADF: $00
    ld hl, sp+$2D                                 ; $6AE0: $F8 $2D
    inc b                                         ; $6AE2: $04
    nop                                           ; $6AE3: $00
    ldh a, [$2C]                                  ; $6AE4: $F0 $2C
    inc b                                         ; $6AE6: $04
    ld hl, sp+$08                                 ; $6AE7: $F8 $08
    rra                                           ; $6AE9: $1F
    inc b                                         ; $6AEA: $04
    ld hl, sp+$00                                 ; $6AEB: $F8 $00
    ld e, $04                                     ; $6AED: $1E $04
    ld hl, sp-$08                                 ; $6AEF: $F8 $F8
    dec e                                         ; $6AF1: $1D
    inc b                                         ; $6AF2: $04
    ld hl, sp-$10                                 ; $6AF3: $F8 $F0
    inc e                                         ; $6AF5: $1C
    inc b                                         ; $6AF6: $04
    ldh a, [$08]                                  ; $6AF7: $F0 $08
    rrca                                          ; $6AF9: $0F
    inc b                                         ; $6AFA: $04
    ldh a, [rP1]                                  ; $6AFB: $F0 $00
    ld c, $04                                     ; $6AFD: $0E $04
    ldh a, [$F8]                                  ; $6AFF: $F0 $F8
    dec c                                         ; $6B01: $0D
    inc b                                         ; $6B02: $04
    ldh a, [$F0]                                  ; $6B03: $F0 $F0
    inc c                                         ; $6B05: $0C
    inc b                                         ; $6B06: $04
    add b                                         ; $6B07: $80
    ld [$3B08], sp                                ; $6B08: $08 $08 $3B
    inc b                                         ; $6B0B: $04
    ld [$3A00], sp                                ; $6B0C: $08 $00 $3A
    inc b                                         ; $6B0F: $04
    ld [$39F8], sp                                ; $6B10: $08 $F8 $39
    inc b                                         ; $6B13: $04
    ld [$38F0], sp                                ; $6B14: $08 $F0 $38
    inc b                                         ; $6B17: $04
    nop                                           ; $6B18: $00
    ld [$042B], sp                                ; $6B19: $08 $2B $04
    nop                                           ; $6B1C: $00
    nop                                           ; $6B1D: $00
    ld a, [hl+]                                   ; $6B1E: $2A
    inc b                                         ; $6B1F: $04
    nop                                           ; $6B20: $00
    ld hl, sp+$29                                 ; $6B21: $F8 $29
    inc b                                         ; $6B23: $04
    nop                                           ; $6B24: $00
    ldh a, [$28]                                  ; $6B25: $F0 $28
    inc b                                         ; $6B27: $04
    ld hl, sp+$08                                 ; $6B28: $F8 $08
    dec de                                        ; $6B2A: $1B
    inc b                                         ; $6B2B: $04
    ld hl, sp+$00                                 ; $6B2C: $F8 $00
    ld a, [de]                                    ; $6B2E: $1A
    inc b                                         ; $6B2F: $04
    ld hl, sp-$08                                 ; $6B30: $F8 $F8
    add hl, de                                    ; $6B32: $19
    inc b                                         ; $6B33: $04
    ld hl, sp-$10                                 ; $6B34: $F8 $F0
    jr jr_011_6B3C                                ; $6B36: $18 $04

    ldh a, [$08]                                  ; $6B38: $F0 $08
    dec bc                                        ; $6B3A: $0B
    inc b                                         ; $6B3B: $04

jr_011_6B3C:
    ldh a, [rP1]                                  ; $6B3C: $F0 $00
    ld a, [bc]                                    ; $6B3E: $0A
    inc b                                         ; $6B3F: $04
    ldh a, [$F8]                                  ; $6B40: $F0 $F8
    add hl, bc                                    ; $6B42: $09
    inc b                                         ; $6B43: $04
    ldh a, [$F0]                                  ; $6B44: $F0 $F0
    ld [$8004], sp                                ; $6B46: $08 $04 $80
    ld [$3708], sp                                ; $6B49: $08 $08 $37
    inc b                                         ; $6B4C: $04
    ld [$3600], sp                                ; $6B4D: $08 $00 $36
    inc b                                         ; $6B50: $04
    ld [$35F8], sp                                ; $6B51: $08 $F8 $35
    inc b                                         ; $6B54: $04
    ld [$34F0], sp                                ; $6B55: $08 $F0 $34
    inc b                                         ; $6B58: $04
    nop                                           ; $6B59: $00
    ld [$0427], sp                                ; $6B5A: $08 $27 $04
    nop                                           ; $6B5D: $00
    nop                                           ; $6B5E: $00
    ld h, $04                                     ; $6B5F: $26 $04
    nop                                           ; $6B61: $00
    ld hl, sp+$25                                 ; $6B62: $F8 $25
    inc b                                         ; $6B64: $04
    nop                                           ; $6B65: $00
    ldh a, [rNR50]                                ; $6B66: $F0 $24
    inc b                                         ; $6B68: $04
    ld hl, sp+$08                                 ; $6B69: $F8 $08
    rla                                           ; $6B6B: $17
    inc b                                         ; $6B6C: $04
    ld hl, sp+$00                                 ; $6B6D: $F8 $00
    ld d, $04                                     ; $6B6F: $16 $04
    ld hl, sp-$08                                 ; $6B71: $F8 $F8
    dec d                                         ; $6B73: $15
    inc b                                         ; $6B74: $04
    ld hl, sp-$10                                 ; $6B75: $F8 $F0
    inc d                                         ; $6B77: $14
    inc b                                         ; $6B78: $04
    ldh a, [$08]                                  ; $6B79: $F0 $08
    rlca                                          ; $6B7B: $07
    inc b                                         ; $6B7C: $04
    ldh a, [rP1]                                  ; $6B7D: $F0 $00
    ld b, $04                                     ; $6B7F: $06 $04
    ldh a, [$F8]                                  ; $6B81: $F0 $F8
    dec b                                         ; $6B83: $05
    inc b                                         ; $6B84: $04
    ldh a, [$F0]                                  ; $6B85: $F0 $F0
    inc b                                         ; $6B87: $04
    inc b                                         ; $6B88: $04
    add b                                         ; $6B89: $80
    ld [$3308], sp                                ; $6B8A: $08 $08 $33
    inc b                                         ; $6B8D: $04
    ld [$3200], sp                                ; $6B8E: $08 $00 $32
    inc b                                         ; $6B91: $04
    ld [$31F8], sp                                ; $6B92: $08 $F8 $31
    inc b                                         ; $6B95: $04
    ld [$30F0], sp                                ; $6B96: $08 $F0 $30
    inc b                                         ; $6B99: $04
    nop                                           ; $6B9A: $00
    ld [$0423], sp                                ; $6B9B: $08 $23 $04
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    ld [hl+], a                                   ; $6BA0: $22
    inc b                                         ; $6BA1: $04
    nop                                           ; $6BA2: $00
    ld hl, sp+$21                                 ; $6BA3: $F8 $21
    inc b                                         ; $6BA5: $04
    nop                                           ; $6BA6: $00
    ldh a, [rNR41]                                ; $6BA7: $F0 $20
    inc b                                         ; $6BA9: $04
    ld hl, sp+$08                                 ; $6BAA: $F8 $08
    inc de                                        ; $6BAC: $13
    inc b                                         ; $6BAD: $04
    ld hl, sp+$00                                 ; $6BAE: $F8 $00
    ld [de], a                                    ; $6BB0: $12
    inc b                                         ; $6BB1: $04
    ld hl, sp-$08                                 ; $6BB2: $F8 $F8
    ld de, $F804                                  ; $6BB4: $11 $04 $F8
    ldh a, [rNR10]                                ; $6BB7: $F0 $10
    inc b                                         ; $6BB9: $04
    ldh a, [$08]                                  ; $6BBA: $F0 $08
    inc bc                                        ; $6BBC: $03
    inc b                                         ; $6BBD: $04
    ldh a, [rP1]                                  ; $6BBE: $F0 $00
    ld [bc], a                                    ; $6BC0: $02
    inc b                                         ; $6BC1: $04
    ldh a, [$F8]                                  ; $6BC2: $F0 $F8
    ld bc, $F004                                  ; $6BC4: $01 $04 $F0
    ldh a, [rP1]                                  ; $6BC7: $F0 $00
    inc b                                         ; $6BC9: $04
    add b                                         ; $6BCA: $80
    ld [bc], a                                    ; $6BCB: $02
    db $FC                                        ; $6BCC: $FC

jr_011_6BCD:
    ld [bc], a                                    ; $6BCD: $02
    rlca                                          ; $6BCE: $07
    ld a, [$01FC]                                 ; $6BCF: $FA $FC $01
    nop                                           ; $6BD2: $00
    di                                            ; $6BD3: $F3
    db $FC                                        ; $6BD4: $FC
    nop                                           ; $6BD5: $00
    ld b, $80                                     ; $6BD6: $06 $80
    ld a, [$03FC]                                 ; $6BD8: $FA $FC $03
    nop                                           ; $6BDB: $00
    ld [bc], a                                    ; $6BDC: $02
    db $FC                                        ; $6BDD: $FC
    inc b                                         ; $6BDE: $04
    rlca                                          ; $6BDF: $07
    ld a, [c]                                     ; $6BE0: $F2

jr_011_6BE1:
    db $FC                                        ; $6BE1: $FC
    nop                                           ; $6BE2: $00
    ld b, $80                                     ; $6BE3: $06 $80
    ld [bc], a                                    ; $6BE5: $02
    db $FD                                        ; $6BE6: $FD

jr_011_6BE7:
    ld [bc], a                                    ; $6BE7: $02
    daa                                           ; $6BE8: $27
    ld a, [$01FD]                                 ; $6BE9: $FA $FD $01
    jr nz, jr_011_6BE1                            ; $6BEC: $20 $F3

    db $FC                                        ; $6BEE: $FC
    nop                                           ; $6BEF: $00
    ld b, $80                                     ; $6BF0: $06 $80
    ld [bc], a                                    ; $6BF2: $02
    db $FC                                        ; $6BF3: $FC
    ld [bc], a                                    ; $6BF4: $02
    rlca                                          ; $6BF5: $07
    ld a, [$07FD]                                 ; $6BF6: $FA $FD $07
    ld h, $F3                                     ; $6BF9: $26 $F3
    db $FC                                        ; $6BFB: $FC
    dec b                                         ; $6BFC: $05
    ld b, $80                                     ; $6BFD: $06 $80
    ld [bc], a                                    ; $6BFF: $02
    db $FC                                        ; $6C00: $FC
    inc b                                         ; $6C01: $04
    rlca                                          ; $6C02: $07
    ld a, [$06FC]                                 ; $6C03: $FA $FC $06
    ld b, $F2                                     ; $6C06: $06 $F2
    db $FC                                        ; $6C08: $FC
    dec b                                         ; $6C09: $05
    ld b, $80                                     ; $6C0A: $06 $80
    ld [bc], a                                    ; $6C0C: $02
    db $FD                                        ; $6C0D: $FD
    ld [bc], a                                    ; $6C0E: $02
    daa                                           ; $6C0F: $27
    ld a, [$07FC]                                 ; $6C10: $FA $FC $07
    ld b, $F3                                     ; $6C13: $06 $F3
    db $FC                                        ; $6C15: $FC
    dec b                                         ; $6C16: $05
    ld b, $80                                     ; $6C17: $06 $80
    ld [bc], a                                    ; $6C19: $02
    db $FC                                        ; $6C1A: $FC
    ld a, [bc]                                    ; $6C1B: $0A
    rlca                                          ; $6C1C: $07
    ld a, [$09FC]                                 ; $6C1D: $FA $FC $09
    nop                                           ; $6C20: $00
    di                                            ; $6C21: $F3
    db $FC                                        ; $6C22: $FC
    ld [$8006], sp                                ; $6C23: $08 $06 $80
    ld [bc], a                                    ; $6C26: $02
    db $FC                                        ; $6C27: $FC
    inc c                                         ; $6C28: $0C
    rlca                                          ; $6C29: $07
    ld a, [$0BFC]                                 ; $6C2A: $FA $FC $0B
    nop                                           ; $6C2D: $00
    ld a, [c]                                     ; $6C2E: $F2
    db $FC                                        ; $6C2F: $FC
    ld [$8006], sp                                ; $6C30: $08 $06 $80
    ld [bc], a                                    ; $6C33: $02
    db $FC                                        ; $6C34: $FC
    ld c, $07                                     ; $6C35: $0E $07
    ld a, [$0DFC]                                 ; $6C37: $FA $FC $0D
    nop                                           ; $6C3A: $00
    di                                            ; $6C3B: $F3
    db $FC                                        ; $6C3C: $FC
    ld [$8006], sp                                ; $6C3D: $08 $06 $80
    di                                            ; $6C40: $F3
    db $FC                                        ; $6C41: $FC
    rrca                                          ; $6C42: $0F
    ld b, $02                                     ; $6C43: $06 $02
    db $FC                                        ; $6C45: $FC
    ld a, [bc]                                    ; $6C46: $0A
    daa                                           ; $6C47: $27
    ld a, [$09FC]                                 ; $6C48: $FA $FC $09
    jr nz, jr_011_6BCD                            ; $6C4B: $20 $80

    ld a, [c]                                     ; $6C4D: $F2
    db $FC                                        ; $6C4E: $FC
    rrca                                          ; $6C4F: $0F
    ld b, $02                                     ; $6C50: $06 $02
    db $FC                                        ; $6C52: $FC
    inc c                                         ; $6C53: $0C
    daa                                           ; $6C54: $27
    ld a, [$0BFC]                                 ; $6C55: $FA $FC $0B
    jr nz, @-$7E                                  ; $6C58: $20 $80

    di                                            ; $6C5A: $F3
    db $FC                                        ; $6C5B: $FC
    rrca                                          ; $6C5C: $0F
    ld b, $02                                     ; $6C5D: $06 $02
    db $FC                                        ; $6C5F: $FC
    ld c, $27                                     ; $6C60: $0E $27
    ld a, [$0DFC]                                 ; $6C62: $FA $FC $0D
    jr nz, jr_011_6BE7                            ; $6C65: $20 $80

    nop                                           ; $6C67: $00
    nop                                           ; $6C68: $00
    ld bc, $F824                                  ; $6C69: $01 $24 $F8
    nop                                           ; $6C6C: $00
    nop                                           ; $6C6D: $00
    inc h                                         ; $6C6E: $24
    nop                                           ; $6C6F: $00
    ld hl, sp+$01                                 ; $6C70: $F8 $01
    inc b                                         ; $6C72: $04
    ld hl, sp-$08                                 ; $6C73: $F8 $F8
    nop                                           ; $6C75: $00
    inc b                                         ; $6C76: $04
    add b                                         ; $6C77: $80
    nop                                           ; $6C78: $00
    nop                                           ; $6C79: $00
    inc b                                         ; $6C7A: $04
    inc h                                         ; $6C7B: $24
    nop                                           ; $6C7C: $00
    ld [$2003], sp                                ; $6C7D: $08 $03 $20
    nop                                           ; $6C80: $00
    ld hl, sp+$04                                 ; $6C81: $F8 $04
    inc b                                         ; $6C83: $04
    nop                                           ; $6C84: $00
    ldh a, [$03]                                  ; $6C85: $F0 $03
    nop                                           ; $6C87: $00
    ld hl, sp+$00                                 ; $6C88: $F8 $00
    ld [bc], a                                    ; $6C8A: $02
    inc h                                         ; $6C8B: $24
    ld hl, sp-$08                                 ; $6C8C: $F8 $F8
    ld [bc], a                                    ; $6C8E: $02
    inc b                                         ; $6C8F: $04
    add b                                         ; $6C90: $80
    ld a, [$14FF]                                 ; $6C91: $FA $FF $14
    nop                                           ; $6C94: $00
    ei                                            ; $6C95: $FB
    ld bc, $0017                                  ; $6C96: $01 $17 $00
    cp $00                                        ; $6C99: $FE $00
    dec bc                                        ; $6C9B: $0B
    nop                                           ; $6C9C: $00
    cp $F8                                        ; $6C9D: $FE $F8
    ld a, [bc]                                    ; $6C9F: $0A
    nop                                           ; $6CA0: $00
    or $FC                                        ; $6CA1: $F6 $FC
    add hl, bc                                    ; $6CA3: $09
    nop                                           ; $6CA4: $00
    nop                                           ; $6CA5: $00
    ld [bc], a                                    ; $6CA6: $02
    ld [$0100], sp                                ; $6CA7: $08 $00 $01
    rst $30                                       ; $6CAA: $F7
    rlca                                          ; $6CAB: $07
    nop                                           ; $6CAC: $00
    push af                                       ; $6CAD: $F5
    inc bc                                        ; $6CAE: $03
    ld b, $00                                     ; $6CAF: $06 $00
    push af                                       ; $6CB1: $F5
    or $05                                        ; $6CB2: $F6 $05
    nop                                           ; $6CB4: $00
    add b                                         ; $6CB5: $80
    cp $FF                                        ; $6CB6: $FE $FF
    ld d, $00                                     ; $6CB8: $16 $00
    ld hl, sp-$08                                 ; $6CBA: $F8 $F8
    ld d, $00                                     ; $6CBC: $16 $00
    ld hl, sp+$00                                 ; $6CBE: $F8 $00
    ld d, $20                                     ; $6CC0: $16 $20
    cp $00                                        ; $6CC2: $FE $00
    dec bc                                        ; $6CC4: $0B
    nop                                           ; $6CC5: $00
    cp $F8                                        ; $6CC6: $FE $F8
    ld a, [bc]                                    ; $6CC8: $0A
    nop                                           ; $6CC9: $00
    or $FC                                        ; $6CCA: $F6 $FC
    add hl, bc                                    ; $6CCC: $09
    nop                                           ; $6CCD: $00
    add b                                         ; $6CCE: $80
    or $FC                                        ; $6CCF: $F6 $FC
    dec c                                         ; $6CD1: $0D
    nop                                           ; $6CD2: $00
    xor $FC                                       ; $6CD3: $EE $FC
    inc c                                         ; $6CD5: $0C
    nop                                           ; $6CD6: $00
    cp $00                                        ; $6CD7: $FE $00
    rrca                                          ; $6CD9: $0F
    nop                                           ; $6CDA: $00
    cp $F8                                        ; $6CDB: $FE $F8
    ld c, $00                                     ; $6CDD: $0E $00
    add b                                         ; $6CDF: $80
    or $FC                                        ; $6CE0: $F6 $FC
    ld de, $EE00                                  ; $6CE2: $11 $00 $EE
    db $FC                                        ; $6CE5: $FC
    stop                                          ; $6CE6: $10 $00
    cp $00                                        ; $6CE8: $FE $00
    inc de                                        ; $6CEA: $13
    nop                                           ; $6CEB: $00
    cp $F8                                        ; $6CEC: $FE $F8
    ld [de], a                                    ; $6CEE: $12
    nop                                           ; $6CEF: $00
    add b                                         ; $6CF0: $80
    ldh a, [rP1]                                  ; $6CF1: $F0 $00
    dec d                                         ; $6CF3: $15
    nop                                           ; $6CF4: $00
    ldh a, [$F8]                                  ; $6CF5: $F0 $F8
    inc d                                         ; $6CF7: $14
    nop                                           ; $6CF8: $00
    ld hl, sp+$00                                 ; $6CF9: $F8 $00
    rla                                           ; $6CFB: $17
    nop                                           ; $6CFC: $00
    ld hl, sp-$08                                 ; $6CFD: $F8 $F8
    ld d, $00                                     ; $6CFF: $16 $00
    nop                                           ; $6D01: $00
    nop                                           ; $6D02: $00
    add hl, de                                    ; $6D03: $19
    nop                                           ; $6D04: $00
    nop                                           ; $6D05: $00
    ld hl, sp+$18                                 ; $6D06: $F8 $18
    nop                                           ; $6D08: $00
    add b                                         ; $6D09: $80
    ldh a, [$FC]                                  ; $6D0A: $F0 $FC
    ld a, [de]                                    ; $6D0C: $1A
    nop                                           ; $6D0D: $00
    ld hl, sp+$00                                 ; $6D0E: $F8 $00
    ld e, $00                                     ; $6D10: $1E $00
    ld hl, sp-$08                                 ; $6D12: $F8 $F8
    dec e                                         ; $6D14: $1D
    nop                                           ; $6D15: $00
    nop                                           ; $6D16: $00
    nop                                           ; $6D17: $00
    inc e                                         ; $6D18: $1C
    nop                                           ; $6D19: $00
    nop                                           ; $6D1A: $00
    ld hl, sp+$1B                                 ; $6D1B: $F8 $1B
    nop                                           ; $6D1D: $00
    add b                                         ; $6D1E: $80
    ei                                            ; $6D1F: $FB
    nop                                           ; $6D20: $00
    add hl, de                                    ; $6D21: $19
    nop                                           ; $6D22: $00
    nop                                           ; $6D23: $00
    ld hl, sp+$1D                                 ; $6D24: $F8 $1D
    nop                                           ; $6D26: $00
    add b                                         ; $6D27: $80
    rst $38                                       ; $6D28: $FF
    cp $1F                                        ; $6D29: $FE $1F
    ld h, b                                       ; $6D2B: $60
    rst $38                                       ; $6D2C: $FF
    ld a, [$001F]                                 ; $6D2D: $FA $1F $00
    add b                                         ; $6D30: $80
    nop                                           ; $6D31: $00
    db $FC                                        ; $6D32: $FC
    ld [rRAMG], sp                                ; $6D33: $08 $00 $00
    nop                                           ; $6D36: $00
    rlca                                          ; $6D37: $07
    ld [bc], a                                    ; $6D38: $02
    nop                                           ; $6D39: $00
    ld hl, sp+$06                                 ; $6D3A: $F8 $06
    ld [bc], a                                    ; $6D3C: $02
    ld hl, sp+$00                                 ; $6D3D: $F8 $00
    ld [bc], a                                    ; $6D3F: $02
    ld hl, $F8F8                                  ; $6D40: $21 $F8 $F8
    ld [bc], a                                    ; $6D43: $02
    ld bc, $00F0                                  ; $6D44: $01 $F0 $00
    ld bc, $F000                                  ; $6D47: $01 $00 $F0
    ld hl, sp+$00                                 ; $6D4A: $F8 $00
    nop                                           ; $6D4C: $00
    add b                                         ; $6D4D: $80
    ldh a, [rP1]                                  ; $6D4E: $F0 $00
    inc b                                         ; $6D50: $04
    nop                                           ; $6D51: $00
    ldh a, [$F8]                                  ; $6D52: $F0 $F8
    inc bc                                        ; $6D54: $03
    nop                                           ; $6D55: $00
    ld hl, sp+$00                                 ; $6D56: $F8 $00
    dec b                                         ; $6D58: $05
    ld hl, $F8F8                                  ; $6D59: $21 $F8 $F8
    dec b                                         ; $6D5C: $05
    ld bc, $FC00                                  ; $6D5D: $01 $00 $FC
    ld [rRAMG], sp                                ; $6D60: $08 $00 $00
    nop                                           ; $6D63: $00
    rlca                                          ; $6D64: $07
    ld [bc], a                                    ; $6D65: $02
    nop                                           ; $6D66: $00
    ld hl, sp+$06                                 ; $6D67: $F8 $06
    ld [bc], a                                    ; $6D69: $02
    add b                                         ; $6D6A: $80
    nop                                           ; $6D6B: $00
    nop                                           ; $6D6C: $00
    inc bc                                        ; $6D6D: $03
    dec b                                         ; $6D6E: $05
    nop                                           ; $6D6F: $00
    ld hl, sp+$02                                 ; $6D70: $F8 $02
    dec b                                         ; $6D72: $05
    ld hl, sp+$00                                 ; $6D73: $F8 $00
    ld bc, $F805                                  ; $6D75: $01 $05 $F8
    ld hl, sp+$00                                 ; $6D78: $F8 $00
    dec b                                         ; $6D7A: $05
    add b                                         ; $6D7B: $80
    cp $00                                        ; $6D7C: $FE $00
    dec b                                         ; $6D7E: $05
    dec h                                         ; $6D7F: $25
    cp $08                                        ; $6D80: $FE $08
    inc b                                         ; $6D82: $04
    dec h                                         ; $6D83: $25
    cp $F8                                        ; $6D84: $FE $F8
    dec b                                         ; $6D86: $05
    dec b                                         ; $6D87: $05
    cp $F0                                        ; $6D88: $FE $F0
    inc b                                         ; $6D8A: $04
    dec b                                         ; $6D8B: $05
    add b                                         ; $6D8C: $80
    nop                                           ; $6D8D: $00
    nop                                           ; $6D8E: $00
    ld [$F825], sp                                ; $6D8F: $08 $25 $F8
    nop                                           ; $6D92: $00
    rlca                                          ; $6D93: $07
    dec h                                         ; $6D94: $25
    cp $08                                        ; $6D95: $FE $08
    ld b, $25                                     ; $6D97: $06 $25
    nop                                           ; $6D99: $00
    ld hl, sp+$08                                 ; $6D9A: $F8 $08
    dec b                                         ; $6D9C: $05
    ld hl, sp-$08                                 ; $6D9D: $F8 $F8
    rlca                                          ; $6D9F: $07
    dec b                                         ; $6DA0: $05
    cp $F0                                        ; $6DA1: $FE $F0
    ld b, $05                                     ; $6DA3: $06 $05
    add b                                         ; $6DA5: $80
    nop                                           ; $6DA6: $00
    nop                                           ; $6DA7: $00
    inc c                                         ; $6DA8: $0C
    dec h                                         ; $6DA9: $25
    nop                                           ; $6DAA: $00
    ld [$250B], sp                                ; $6DAB: $08 $0B $25
    ld hl, sp+$00                                 ; $6DAE: $F8 $00
    ld a, [bc]                                    ; $6DB0: $0A
    dec h                                         ; $6DB1: $25
    ld hl, sp+$08                                 ; $6DB2: $F8 $08
    add hl, bc                                    ; $6DB4: $09
    dec h                                         ; $6DB5: $25
    nop                                           ; $6DB6: $00
    ld hl, sp+$0C                                 ; $6DB7: $F8 $0C
    dec b                                         ; $6DB9: $05
    nop                                           ; $6DBA: $00
    ldh a, [$0B]                                  ; $6DBB: $F0 $0B
    dec b                                         ; $6DBD: $05
    ld hl, sp-$08                                 ; $6DBE: $F8 $F8
    ld a, [bc]                                    ; $6DC0: $0A
    dec b                                         ; $6DC1: $05
    ld hl, sp-$10                                 ; $6DC2: $F8 $F0
    add hl, bc                                    ; $6DC4: $09
    dec b                                         ; $6DC5: $05
    add b                                         ; $6DC6: $80
    ld [bc], a                                    ; $6DC7: $02
    ld hl, sp+$10                                 ; $6DC8: $F8 $10
    dec b                                         ; $6DCA: $05
    ld [bc], a                                    ; $6DCB: $02
    nop                                           ; $6DCC: $00
    db $10                                        ; $6DCD: $10
    dec h                                         ; $6DCE: $25
    nop                                           ; $6DCF: $00
    ld [$250F], sp                                ; $6DD0: $08 $0F $25
    ld a, [$0E00]                                 ; $6DD3: $FA $00 $0E
    dec h                                         ; $6DD6: $25
    ld a, [$0D08]                                 ; $6DD7: $FA $08 $0D
    dec h                                         ; $6DDA: $25
    ld [bc], a                                    ; $6DDB: $02
    ldh a, [rIF]                                  ; $6DDC: $F0 $0F
    dec b                                         ; $6DDE: $05
    ld a, [$0EF8]                                 ; $6DDF: $FA $F8 $0E
    dec b                                         ; $6DE2: $05
    ld a, [$0DF0]                                 ; $6DE3: $FA $F0 $0D
    dec b                                         ; $6DE6: $05
    add b                                         ; $6DE7: $80
    dec b                                         ; $6DE8: $05
    ld [$2514], sp                                ; $6DE9: $08 $14 $25
    inc b                                         ; $6DEC: $04
    nop                                           ; $6DED: $00
    inc de                                        ; $6DEE: $13
    ld b, l                                       ; $6DEF: $45
    db $FD                                        ; $6DF0: $FD
    ld [$2512], sp                                ; $6DF1: $08 $12 $25
    push af                                       ; $6DF4: $F5
    nop                                           ; $6DF5: $00
    ld de, $0525                                  ; $6DF6: $11 $25 $05
    ld hl, sp+$14                                 ; $6DF9: $F8 $14
    dec b                                         ; $6DFB: $05
    dec b                                         ; $6DFC: $05
    ldh a, [rNR13]                                ; $6DFD: $F0 $13
    dec b                                         ; $6DFF: $05
    db $FD                                        ; $6E00: $FD
    ldh a, [rNR12]                                ; $6E01: $F0 $12
    dec b                                         ; $6E03: $05
    or $F8                                        ; $6E04: $F6 $F8
    ld de, $8005                                  ; $6E06: $11 $05 $80
    ld hl, sp-$04                                 ; $6E09: $F8 $FC
    ld [bc], a                                    ; $6E0B: $02
    nop                                           ; $6E0C: $00
    nop                                           ; $6E0D: $00
    nop                                           ; $6E0E: $00
    ld bc, $0000                                  ; $6E0F: $01 $00 $00
    ld hl, sp+$00                                 ; $6E12: $F8 $00
    nop                                           ; $6E14: $00
    add b                                         ; $6E15: $80
    nop                                           ; $6E16: $00
    ld sp, hl                                     ; $6E17: $F9
    inc bc                                        ; $6E18: $03
    inc h                                         ; $6E19: $24
    nop                                           ; $6E1A: $00
    nop                                           ; $6E1B: $00

jr_011_6E1C:
    inc bc                                        ; $6E1C: $03
    inc b                                         ; $6E1D: $04
    ld hl, sp-$08                                 ; $6E1E: $F8 $F8
    ld [bc], a                                    ; $6E20: $02
    inc h                                         ; $6E21: $24
    ld hl, sp+$00                                 ; $6E22: $F8 $00
    ld [bc], a                                    ; $6E24: $02
    inc b                                         ; $6E25: $04
    ldh a, [rP1]                                  ; $6E26: $F0 $00
    ld bc, $F004                                  ; $6E28: $01 $04 $F0
    ld hl, sp+$00                                 ; $6E2B: $F8 $00
    inc b                                         ; $6E2D: $04
    add b                                         ; $6E2E: $80
    nop                                           ; $6E2F: $00
    ld sp, hl                                     ; $6E30: $F9
    inc b                                         ; $6E31: $04
    inc h                                         ; $6E32: $24
    nop                                           ; $6E33: $00
    nop                                           ; $6E34: $00
    inc b                                         ; $6E35: $04
    inc b                                         ; $6E36: $04
    ld hl, sp+$00                                 ; $6E37: $F8 $00
    inc bc                                        ; $6E39: $03
    inc b                                         ; $6E3A: $04
    ld hl, sp-$08                                 ; $6E3B: $F8 $F8
    ld [bc], a                                    ; $6E3D: $02
    inc b                                         ; $6E3E: $04
    ldh a, [rP1]                                  ; $6E3F: $F0 $00
    ld bc, $F004                                  ; $6E41: $01 $04 $F0
    ld hl, sp+$00                                 ; $6E44: $F8 $00
    inc b                                         ; $6E46: $04
    add b                                         ; $6E47: $80
    nop                                           ; $6E48: $00
    ld sp, hl                                     ; $6E49: $F9
    inc bc                                        ; $6E4A: $03
    inc h                                         ; $6E4B: $24
    ld hl, sp-$08                                 ; $6E4C: $F8 $F8
    ld [bc], a                                    ; $6E4E: $02
    inc h                                         ; $6E4F: $24
    nop                                           ; $6E50: $00
    nop                                           ; $6E51: $00
    inc bc                                        ; $6E52: $03
    inc b                                         ; $6E53: $04
    ld hl, sp+$00                                 ; $6E54: $F8 $00
    ld [bc], a                                    ; $6E56: $02
    inc b                                         ; $6E57: $04
    ldh a, [rP1]                                  ; $6E58: $F0 $00
    ld bc, $F004                                  ; $6E5A: $01 $04 $F0
    ld hl, sp+$00                                 ; $6E5D: $F8 $00
    inc b                                         ; $6E5F: $04
    add b                                         ; $6E60: $80
    nop                                           ; $6E61: $00
    ld sp, hl                                     ; $6E62: $F9
    inc bc                                        ; $6E63: $03
    inc h                                         ; $6E64: $24
    ld hl, sp-$08                                 ; $6E65: $F8 $F8
    ld [bc], a                                    ; $6E67: $02
    inc h                                         ; $6E68: $24
    nop                                           ; $6E69: $00
    nop                                           ; $6E6A: $00
    inc bc                                        ; $6E6B: $03
    inc b                                         ; $6E6C: $04
    ld hl, sp+$00                                 ; $6E6D: $F8 $00
    ld [bc], a                                    ; $6E6F: $02
    inc b                                         ; $6E70: $04
    ldh a, [rP1]                                  ; $6E71: $F0 $00
    ld bc, $F004                                  ; $6E73: $01 $04 $F0
    ld hl, sp+$00                                 ; $6E76: $F8 $00
    inc b                                         ; $6E78: $04
    add b                                         ; $6E79: $80
    nop                                           ; $6E7A: $00
    nop                                           ; $6E7B: $00
    ld bc, $0020                                  ; $6E7C: $01 $20 $00

jr_011_6E7F:
    ld sp, hl                                     ; $6E7F: $F9
    ld bc, $F800                                  ; $6E80: $01 $00 $F8
    nop                                           ; $6E83: $00
    nop                                           ; $6E84: $00
    jr nz, jr_011_6E7F                            ; $6E85: $20 $F8

    ld sp, hl                                     ; $6E87: $F9
    nop                                           ; $6E88: $00
    nop                                           ; $6E89: $00
    add b                                         ; $6E8A: $80
    nop                                           ; $6E8B: $00
    ld sp, hl                                     ; $6E8C: $F9
    inc bc                                        ; $6E8D: $03
    nop                                           ; $6E8E: $00
    ld hl, sp-$07                                 ; $6E8F: $F8 $F9
    ld [bc], a                                    ; $6E91: $02
    nop                                           ; $6E92: $00
    nop                                           ; $6E93: $00
    nop                                           ; $6E94: $00
    ld bc, $F820                                  ; $6E95: $01 $20 $F8
    nop                                           ; $6E98: $00
    nop                                           ; $6E99: $00
    jr nz, jr_011_6E1C                            ; $6E9A: $20 $80

    nop                                           ; $6E9C: $00
    ld bc, $0007                                  ; $6E9D: $01 $07 $00
    ld hl, sp+$01                                 ; $6EA0: $F8 $01
    ld b, $00                                     ; $6EA2: $06 $00
    nop                                           ; $6EA4: $00
    ld sp, hl                                     ; $6EA5: $F9
    dec b                                         ; $6EA6: $05
    nop                                           ; $6EA7: $00
    ld hl, sp-$07                                 ; $6EA8: $F8 $F9
    inc b                                         ; $6EAA: $04
    nop                                           ; $6EAB: $00
    add b                                         ; $6EAC: $80
    nop                                           ; $6EAD: $00
    ld sp, hl                                     ; $6EAE: $F9
    ld bc, $F800                                  ; $6EAF: $01 $00 $F8
    ld sp, hl                                     ; $6EB2: $F9
    nop                                           ; $6EB3: $00
    nop                                           ; $6EB4: $00
    nop                                           ; $6EB5: $00
    ld bc, $0009                                  ; $6EB6: $01 $09 $00
    ld hl, sp+$01                                 ; $6EB9: $F8 $01
    ld [$8000], sp                                ; $6EBB: $08 $00 $80
    inc b                                         ; $6EBE: $04
    db $FD                                        ; $6EBF: $FD
    ld b, $01                                     ; $6EC0: $06 $01
    db $FC                                        ; $6EC2: $FC
    db $FD                                        ; $6EC3: $FD
    dec b                                         ; $6EC4: $05
    ld bc, $F5FC                                  ; $6EC5: $01 $FC $F5
    inc b                                         ; $6EC8: $04
    ld bc, $0000                                  ; $6EC9: $01 $00 $00
    inc bc                                        ; $6ECC: $03
    nop                                           ; $6ECD: $00
    nop                                           ; $6ECE: $00
    ld hl, sp+$02                                 ; $6ECF: $F8 $02
    nop                                           ; $6ED1: $00
    ld hl, sp+$00                                 ; $6ED2: $F8 $00
    ld bc, $F800                                  ; $6ED4: $01 $00 $F8
    ld hl, sp+$00                                 ; $6ED7: $F8 $00
    nop                                           ; $6ED9: $00
    add b                                         ; $6EDA: $80
    di                                            ; $6EDB: $F3
    ld bc, $0402                                  ; $6EDC: $01 $02 $04
    ld hl, sp+$00                                 ; $6EDF: $F8 $00
    ld bc, $F805                                  ; $6EE1: $01 $05 $F8
    ld hl, sp+$00                                 ; $6EE4: $F8 $00
    dec b                                         ; $6EE6: $05
    add b                                         ; $6EE7: $80
    nop                                           ; $6EE8: $00
    ld [$0003], sp                                ; $6EE9: $08 $03 $00
    nop                                           ; $6EEC: $00
    nop                                           ; $6EED: $00
    ld [bc], a                                    ; $6EEE: $02
    ld [bc], a                                    ; $6EEF: $02
    ld hl, sp+$08                                 ; $6EF0: $F8 $08
    ld bc, $F802                                  ; $6EF2: $01 $02 $F8
    nop                                           ; $6EF5: $00
    nop                                           ; $6EF6: $00
    ld [bc], a                                    ; $6EF7: $02
    nop                                           ; $6EF8: $00
    ld hl, sp+$02                                 ; $6EF9: $F8 $02
    ld [hl+], a                                   ; $6EFB: $22
    ld hl, sp-$10                                 ; $6EFC: $F8 $F0
    ld bc, $F822                                  ; $6EFE: $01 $22 $F8
    ld hl, sp+$00                                 ; $6F01: $F8 $00
    ld [hl+], a                                   ; $6F03: $22
    add b                                         ; $6F04: $80
    ld sp, hl                                     ; $6F05: $F9
    db $FC                                        ; $6F06: $FC
    ld [bc], a                                    ; $6F07: $02
    ld bc, $F800                                  ; $6F08: $01 $00 $F8
    ld bc, $F823                                  ; $6F0B: $01 $23 $F8
    ld hl, sp+$00                                 ; $6F0E: $F8 $00
    inc hl                                        ; $6F10: $23
    nop                                           ; $6F11: $00
    nop                                           ; $6F12: $00
    ld bc, $F803                                  ; $6F13: $01 $03 $F8
    nop                                           ; $6F16: $00
    nop                                           ; $6F17: $00
    inc bc                                        ; $6F18: $03
    add b                                         ; $6F19: $80
    nop                                           ; $6F1A: $00
    ld hl, sp+$03                                 ; $6F1B: $F8 $03
    inc hl                                        ; $6F1D: $23
    inc b                                         ; $6F1E: $04
    db $FC                                        ; $6F1F: $FC
    inc b                                         ; $6F20: $04
    ld bc, $0000                                  ; $6F21: $01 $00 $00
    inc bc                                        ; $6F24: $03
    inc bc                                        ; $6F25: $03
    add b                                         ; $6F26: $80
    nop                                           ; $6F27: $00
    db $FC                                        ; $6F28: $FC
    dec b                                         ; $6F29: $05
    ld bc, $FCF8                                  ; $6F2A: $01 $F8 $FC
    inc b                                         ; $6F2D: $04
    nop                                           ; $6F2E: $00
    nop                                           ; $6F2F: $00
    ld hl, sp+$03                                 ; $6F30: $F8 $03
    inc hl                                        ; $6F32: $23
    nop                                           ; $6F33: $00
    nop                                           ; $6F34: $00
    inc bc                                        ; $6F35: $03
    inc bc                                        ; $6F36: $03
    ld hl, sp-$08                                 ; $6F37: $F8 $F8
    ld [bc], a                                    ; $6F39: $02
    inc hl                                        ; $6F3A: $23
    ld hl, sp+$00                                 ; $6F3B: $F8 $00
    ld [bc], a                                    ; $6F3D: $02
    inc bc                                        ; $6F3E: $03
    add b                                         ; $6F3F: $80
    nop                                           ; $6F40: $00
    nop                                           ; $6F41: $00
    ld bc, $F803                                  ; $6F42: $01 $03 $F8
    ld hl, sp+$00                                 ; $6F45: $F8 $00
    inc hl                                        ; $6F47: $23
    nop                                           ; $6F48: $00
    ld hl, sp+$01                                 ; $6F49: $F8 $01
    inc hl                                        ; $6F4B: $23
    ld hl, sp+$00                                 ; $6F4C: $F8 $00
    nop                                           ; $6F4E: $00
    inc bc                                        ; $6F4F: $03
    add b                                         ; $6F50: $80
    nop                                           ; $6F51: $00
    db $FC                                        ; $6F52: $FC
    dec b                                         ; $6F53: $05
    ld bc, $FCF8                                  ; $6F54: $01 $F8 $FC
    inc b                                         ; $6F57: $04
    nop                                           ; $6F58: $00
    add b                                         ; $6F59: $80
    nop                                           ; $6F5A: $00
    db $FC                                        ; $6F5B: $FC
    dec b                                         ; $6F5C: $05
    ld bc, $0080                                  ; $6F5D: $01 $80 $00
    nop                                           ; $6F60: $00
    inc bc                                        ; $6F61: $03
    inc b                                         ; $6F62: $04
    nop                                           ; $6F63: $00
    ld hl, sp+$02                                 ; $6F64: $F8 $02
    inc b                                         ; $6F66: $04
    ld hl, sp+$00                                 ; $6F67: $F8 $00
    ld bc, $F804                                  ; $6F69: $01 $04 $F8
    ld hl, sp+$00                                 ; $6F6C: $F8 $00
    inc b                                         ; $6F6E: $04
    add b                                         ; $6F6F: $80
    nop                                           ; $6F70: $00
    nop                                           ; $6F71: $00
    inc bc                                        ; $6F72: $03
    ld b, $00                                     ; $6F73: $06 $00
    ld hl, sp+$02                                 ; $6F75: $F8 $02
    ld b, $F8                                     ; $6F77: $06 $F8
    nop                                           ; $6F79: $00
    ld bc, $F806                                  ; $6F7A: $01 $06 $F8
    ld hl, sp+$00                                 ; $6F7D: $F8 $00
    ld b, $80                                     ; $6F7F: $06 $80
    nop                                           ; $6F81: $00
    nop                                           ; $6F82: $00
    rlca                                          ; $6F83: $07
    ld b, $00                                     ; $6F84: $06 $00
    ld hl, sp+$06                                 ; $6F86: $F8 $06
    ld b, $F8                                     ; $6F88: $06 $F8
    nop                                           ; $6F8A: $00
    dec b                                         ; $6F8B: $05
    ld b, $F8                                     ; $6F8C: $06 $F8
    ld hl, sp+$04                                 ; $6F8E: $F8 $04
    ld b, $80                                     ; $6F90: $06 $80
    nop                                           ; $6F92: $00
    nop                                           ; $6F93: $00
    dec bc                                        ; $6F94: $0B
    ld b, $00                                     ; $6F95: $06 $00
    ld hl, sp+$0A                                 ; $6F97: $F8 $0A
    ld b, $F8                                     ; $6F99: $06 $F8
    nop                                           ; $6F9B: $00
    add hl, bc                                    ; $6F9C: $09
    ld b, $F8                                     ; $6F9D: $06 $F8
    ld hl, sp+$08                                 ; $6F9F: $F8 $08
    ld b, $80                                     ; $6FA1: $06 $80
    nop                                           ; $6FA3: $00
    nop                                           ; $6FA4: $00
    rrca                                          ; $6FA5: $0F
    ld b, $00                                     ; $6FA6: $06 $00
    ld hl, sp+$0E                                 ; $6FA8: $F8 $0E
    ld b, $F8                                     ; $6FAA: $06 $F8
    nop                                           ; $6FAC: $00
    dec c                                         ; $6FAD: $0D
    ld b, $F8                                     ; $6FAE: $06 $F8
    ld hl, sp+$0C                                 ; $6FB0: $F8 $0C
    ld b, $80                                     ; $6FB2: $06 $80
    ld hl, sp-$08                                 ; $6FB4: $F8 $F8
    inc bc                                        ; $6FB6: $03
    ld h, [hl]                                    ; $6FB7: $66
    ld hl, sp+$00                                 ; $6FB8: $F8 $00
    ld [bc], a                                    ; $6FBA: $02
    ld h, [hl]                                    ; $6FBB: $66
    nop                                           ; $6FBC: $00
    ld hl, sp+$01                                 ; $6FBD: $F8 $01
    ld h, [hl]                                    ; $6FBF: $66
    nop                                           ; $6FC0: $00
    nop                                           ; $6FC1: $00
    nop                                           ; $6FC2: $00
    ld h, [hl]                                    ; $6FC3: $66
    add b                                         ; $6FC4: $80
    ld hl, sp-$08                                 ; $6FC5: $F8 $F8
    rlca                                          ; $6FC7: $07
    ld h, [hl]                                    ; $6FC8: $66
    ld hl, sp+$00                                 ; $6FC9: $F8 $00
    ld b, $66                                     ; $6FCB: $06 $66
    nop                                           ; $6FCD: $00
    ld hl, sp+$05                                 ; $6FCE: $F8 $05
    ld h, [hl]                                    ; $6FD0: $66
    nop                                           ; $6FD1: $00
    nop                                           ; $6FD2: $00
    inc b                                         ; $6FD3: $04
    ld h, [hl]                                    ; $6FD4: $66
    add b                                         ; $6FD5: $80
    ld hl, sp-$08                                 ; $6FD6: $F8 $F8
    dec bc                                        ; $6FD8: $0B
    ld h, [hl]                                    ; $6FD9: $66
    ld hl, sp+$00                                 ; $6FDA: $F8 $00
    ld a, [bc]                                    ; $6FDC: $0A
    ld h, [hl]                                    ; $6FDD: $66
    nop                                           ; $6FDE: $00
    ld hl, sp+$09                                 ; $6FDF: $F8 $09
    ld h, [hl]                                    ; $6FE1: $66
    nop                                           ; $6FE2: $00
    nop                                           ; $6FE3: $00
    ld [$8066], sp                                ; $6FE4: $08 $66 $80
    ld hl, sp-$08                                 ; $6FE7: $F8 $F8
    rrca                                          ; $6FE9: $0F
    ld h, [hl]                                    ; $6FEA: $66
    ld hl, sp+$00                                 ; $6FEB: $F8 $00
    ld c, $66                                     ; $6FED: $0E $66
    nop                                           ; $6FEF: $00
    ld hl, sp+$0D                                 ; $6FF0: $F8 $0D
    ld h, [hl]                                    ; $6FF2: $66
    nop                                           ; $6FF3: $00
    nop                                           ; $6FF4: $00
    inc c                                         ; $6FF5: $0C
    ld h, [hl]                                    ; $6FF6: $66
    add b                                         ; $6FF7: $80
    ld [bc], a                                    ; $6FF8: $02
    nop                                           ; $6FF9: $00
    ld [$FA26], sp                                ; $6FFA: $08 $26 $FA
    nop                                           ; $6FFD: $00
    rlca                                          ; $6FFE: $07
    ld h, $F2                                     ; $6FFF: $26 $F2
    nop                                           ; $7001: $00
    ld b, $20                                     ; $7002: $06 $20
    ld [bc], a                                    ; $7004: $02
    ld hl, sp+$08                                 ; $7005: $F8 $08
    ld b, $FA                                     ; $7007: $06 $FA
    ld hl, sp+$07                                 ; $7009: $F8 $07
    ld b, $F2                                     ; $700B: $06 $F2
    ld hl, sp+$06                                 ; $700D: $F8 $06
    nop                                           ; $700F: $00
    nop                                           ; $7010: $00
    inc b                                         ; $7011: $04
    dec b                                         ; $7012: $05
    ld hl, $04F8                                  ; $7013: $21 $F8 $04
    inc b                                         ; $7016: $04
    ld hl, $F400                                  ; $7017: $21 $00 $F4
    dec b                                         ; $701A: $05
    ld bc, $F4F8                                  ; $701B: $01 $F8 $F4
    inc b                                         ; $701E: $04
    ld bc, $04F0                                  ; $701F: $01 $F0 $04
    ld [bc], a                                    ; $7022: $02
    ld hl, $FCF0                                  ; $7023: $21 $F0 $FC
    inc bc                                        ; $7026: $03
    nop                                           ; $7027: $00
    ldh a, [$F4]                                  ; $7028: $F0 $F4
    ld [bc], a                                    ; $702A: $02
    ld bc, $04E8                                  ; $702B: $01 $E8 $04
    nop                                           ; $702E: $00
    ld hl, $FCE8                                  ; $702F: $21 $E8 $FC
    ld bc, $E801                                  ; $7032: $01 $01 $E8
    db $F4                                        ; $7035: $F4
    nop                                           ; $7036: $00
    ld bc, $4780                                  ; $7037: $01 $80 $47
    ld b, $11                                     ; $703A: $06 $11
    ld c, l                                       ; $703C: $4D
    ld [hl], b                                    ; $703D: $70
    ld de, $7069                                  ; $703E: $11 $69 $70
    ld de, $7085                                  ; $7041: $11 $85 $70
    ld de, $704D                                  ; $7044: $11 $4D $70
    ld de, $7069                                  ; $7047: $11 $69 $70
    ld de, $7085                                  ; $704A: $11 $85 $70
    ld c, l                                       ; $704D: $4D
    inc d                                         ; $704E: $14
    rlca                                          ; $704F: $07
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    ld a, l                                       ; $7052: $7D
    ld c, [hl]                                    ; $7053: $4E
    adc d                                         ; $7054: $8A
    ld c, [hl]                                    ; $7055: $4E
    sub e                                         ; $7056: $93
    ld c, [hl]                                    ; $7057: $4E
    sbc h                                         ; $7058: $9C
    ld c, [hl]                                    ; $7059: $4E
    and l                                         ; $705A: $A5
    ld c, [hl]                                    ; $705B: $4E
    xor [hl]                                      ; $705C: $AE
    ld c, [hl]                                    ; $705D: $4E
    cp e                                          ; $705E: $BB
    ld c, [hl]                                    ; $705F: $4E
    ret z                                         ; $7060: $C8

    ld c, [hl]                                    ; $7061: $4E
    push de                                       ; $7062: $D5
    ld c, [hl]                                    ; $7063: $4E
    ld [c], a                                     ; $7064: $E2
    ld c, [hl]                                    ; $7065: $4E
    ld b, [hl]                                    ; $7066: $46
    add hl, sp                                    ; $7067: $39
    ld [hl], b                                    ; $7068: $70
    ld c, l                                       ; $7069: $4D
    inc d                                         ; $706A: $14
    add hl, bc                                    ; $706B: $09
    nop                                           ; $706C: $00
    nop                                           ; $706D: $00
    ld a, l                                       ; $706E: $7D
    ld c, [hl]                                    ; $706F: $4E
    adc d                                         ; $7070: $8A
    ld c, [hl]                                    ; $7071: $4E
    sub e                                         ; $7072: $93
    ld c, [hl]                                    ; $7073: $4E
    sbc h                                         ; $7074: $9C
    ld c, [hl]                                    ; $7075: $4E
    and l                                         ; $7076: $A5
    ld c, [hl]                                    ; $7077: $4E
    xor [hl]                                      ; $7078: $AE
    ld c, [hl]                                    ; $7079: $4E
    cp e                                          ; $707A: $BB
    ld c, [hl]                                    ; $707B: $4E
    ret z                                         ; $707C: $C8

    ld c, [hl]                                    ; $707D: $4E
    push de                                       ; $707E: $D5
    ld c, [hl]                                    ; $707F: $4E
    ld [c], a                                     ; $7080: $E2
    ld c, [hl]                                    ; $7081: $4E
    ld b, [hl]                                    ; $7082: $46
    add hl, sp                                    ; $7083: $39
    ld [hl], b                                    ; $7084: $70
    ld c, l                                       ; $7085: $4D
    inc d                                         ; $7086: $14
    dec bc                                        ; $7087: $0B
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    ld a, l                                       ; $708A: $7D
    ld c, [hl]                                    ; $708B: $4E
    adc d                                         ; $708C: $8A
    ld c, [hl]                                    ; $708D: $4E
    sub e                                         ; $708E: $93
    ld c, [hl]                                    ; $708F: $4E
    sbc h                                         ; $7090: $9C
    ld c, [hl]                                    ; $7091: $4E
    and l                                         ; $7092: $A5
    ld c, [hl]                                    ; $7093: $4E
    xor [hl]                                      ; $7094: $AE
    ld c, [hl]                                    ; $7095: $4E
    cp e                                          ; $7096: $BB
    ld c, [hl]                                    ; $7097: $4E
    ret z                                         ; $7098: $C8

    ld c, [hl]                                    ; $7099: $4E
    push de                                       ; $709A: $D5
    ld c, [hl]                                    ; $709B: $4E
    ld [c], a                                     ; $709C: $E2
    ld c, [hl]                                    ; $709D: $4E
    ld b, [hl]                                    ; $709E: $46
    add hl, sp                                    ; $709F: $39
    ld [hl], b                                    ; $70A0: $70
    ld c, h                                       ; $70A1: $4C
    rst $38                                       ; $70A2: $FF
    nop                                           ; $70A3: $00
    nop                                           ; $70A4: $00
    daa                                           ; $70A5: $27
    ld l, a                                       ; $70A6: $6F
    nop                                           ; $70A7: $00
    ld b, [hl]                                    ; $70A8: $46
    and c                                         ; $70A9: $A1
    ld [hl], b                                    ; $70AA: $70
    ld c, h                                       ; $70AB: $4C
    rst $38                                       ; $70AC: $FF
    nop                                           ; $70AD: $00
    nop                                           ; $70AE: $00
    ld b, b                                       ; $70AF: $40
    ld l, a                                       ; $70B0: $6F
    nop                                           ; $70B1: $00
    ld b, [hl]                                    ; $70B2: $46
    xor e                                         ; $70B3: $AB
    ld [hl], b                                    ; $70B4: $70
    ld c, h                                       ; $70B5: $4C
    stop                                          ; $70B6: $10 $00
    db $FD                                        ; $70B8: $FD
    ld d, c                                       ; $70B9: $51
    ld l, a                                       ; $70BA: $6F
    nop                                           ; $70BB: $00
    ld b, [hl]                                    ; $70BC: $46
    or l                                          ; $70BD: $B5
    ld [hl], b                                    ; $70BE: $70
    ld c, h                                       ; $70BF: $4C
    rst $38                                       ; $70C0: $FF
    nop                                           ; $70C1: $00
    nop                                           ; $70C2: $00
    ld e, d                                       ; $70C3: $5A
    ld l, a                                       ; $70C4: $6F
    nop                                           ; $70C5: $00
    ld b, [hl]                                    ; $70C6: $46
    cp a                                          ; $70C7: $BF
    ld [hl], b                                    ; $70C8: $70
    ld c, h                                       ; $70C9: $4C
    rst $38                                       ; $70CA: $FF
    nop                                           ; $70CB: $00
    nop                                           ; $70CC: $00
    ld e, a                                       ; $70CD: $5F
    ld l, a                                       ; $70CE: $6F
    nop                                           ; $70CF: $00
    ld b, [hl]                                    ; $70D0: $46
    ret                                           ; $70D1: $C9


    ld [hl], b                                    ; $70D2: $70
    ld c, h                                       ; $70D3: $4C
    db $10                                        ; $70D4: $10
    ld bc, $0500                                  ; $70D5: $01 $00 $05
    ld l, a                                       ; $70D8: $6F
    nop                                           ; $70D9: $00
    ld b, [hl]                                    ; $70DA: $46
    db $D3                                        ; $70DB: $D3
    ld [hl], b                                    ; $70DC: $70
    ld c, h                                       ; $70DD: $4C
    db $10                                        ; $70DE: $10
    ld [bc], a                                    ; $70DF: $02
    nop                                           ; $70E0: $00
    dec b                                         ; $70E1: $05
    ld l, a                                       ; $70E2: $6F
    nop                                           ; $70E3: $00
    ld b, [hl]                                    ; $70E4: $46
    db $DD                                        ; $70E5: $DD
    ld [hl], b                                    ; $70E6: $70
    ld c, h                                       ; $70E7: $4C
    db $10                                        ; $70E8: $10
    inc bc                                        ; $70E9: $03
    nop                                           ; $70EA: $00
    dec b                                         ; $70EB: $05
    ld l, a                                       ; $70EC: $6F
    nop                                           ; $70ED: $00
    ld b, [hl]                                    ; $70EE: $46
    rst $20                                       ; $70EF: $E7
    ld [hl], b                                    ; $70F0: $70
    ld c, h                                       ; $70F1: $4C
    db $10                                        ; $70F2: $10
    rst $38                                       ; $70F3: $FF
    nop                                           ; $70F4: $00
    dec b                                         ; $70F5: $05
    ld l, a                                       ; $70F6: $6F
    nop                                           ; $70F7: $00
    ld b, [hl]                                    ; $70F8: $46
    pop af                                        ; $70F9: $F1
    ld [hl], b                                    ; $70FA: $70
    ld c, h                                       ; $70FB: $4C
    db $10                                        ; $70FC: $10
    cp $00                                        ; $70FD: $FE $00
    dec b                                         ; $70FF: $05
    ld l, a                                       ; $7100: $6F
    nop                                           ; $7101: $00
    ld b, [hl]                                    ; $7102: $46
    ei                                            ; $7103: $FB
    ld [hl], b                                    ; $7104: $70
    ld c, h                                       ; $7105: $4C
    db $10                                        ; $7106: $10
    db $FD                                        ; $7107: $FD
    nop                                           ; $7108: $00
    dec b                                         ; $7109: $05
    ld l, a                                       ; $710A: $6F
    nop                                           ; $710B: $00
    ld b, [hl]                                    ; $710C: $46
    dec b                                         ; $710D: $05
    ld [hl], c                                    ; $710E: $71
    ld c, h                                       ; $710F: $4C
    rst $38                                       ; $7110: $FF
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    ld a, [de]                                    ; $7113: $1A
    ld l, a                                       ; $7114: $6F
    nop                                           ; $7115: $00
    ld b, [hl]                                    ; $7116: $46
    rrca                                          ; $7117: $0F
    ld [hl], c                                    ; $7118: $71
    ld c, h                                       ; $7119: $4C
    inc b                                         ; $711A: $04
    nop                                           ; $711B: $00
    nop                                           ; $711C: $00
    ld [hl], b                                    ; $711D: $70
    ld l, a                                       ; $711E: $6F
    inc b                                         ; $711F: $04
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    add c                                         ; $7122: $81
    ld l, a                                       ; $7123: $6F
    inc b                                         ; $7124: $04
    nop                                           ; $7125: $00
    nop                                           ; $7126: $00
    sub d                                         ; $7127: $92
    ld l, a                                       ; $7128: $6F
    inc b                                         ; $7129: $04
    nop                                           ; $712A: $00
    nop                                           ; $712B: $00
    and e                                         ; $712C: $A3
    ld l, a                                       ; $712D: $6F
    inc b                                         ; $712E: $04
    nop                                           ; $712F: $00
    nop                                           ; $7130: $00
    or h                                          ; $7131: $B4
    ld l, a                                       ; $7132: $6F
    inc b                                         ; $7133: $04
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    push bc                                       ; $7136: $C5
    ld l, a                                       ; $7137: $6F
    inc b                                         ; $7138: $04
    nop                                           ; $7139: $00
    nop                                           ; $713A: $00
    sub $6F                                       ; $713B: $D6 $6F
    inc b                                         ; $713D: $04
    nop                                           ; $713E: $00
    nop                                           ; $713F: $00
    rst $20                                       ; $7140: $E7
    ld l, a                                       ; $7141: $6F
    nop                                           ; $7142: $00
    ld b, [hl]                                    ; $7143: $46
    add hl, de                                    ; $7144: $19
    ld [hl], c                                    ; $7145: $71
    ld c, h                                       ; $7146: $4C
    db $10                                        ; $7147: $10
    ld bc, $F800                                  ; $7148: $01 $00 $F8
    ld d, d                                       ; $714B: $52
    nop                                           ; $714C: $00
    ld b, [hl]                                    ; $714D: $46
    ld b, [hl]                                    ; $714E: $46
    ld [hl], c                                    ; $714F: $71
    ld c, h                                       ; $7150: $4C
    db $10                                        ; $7151: $10
    rst $38                                       ; $7152: $FF
    nop                                           ; $7153: $00
    ld hl, sp+$52                                 ; $7154: $F8 $52
    nop                                           ; $7156: $00
    ld b, [hl]                                    ; $7157: $46
    ld d, b                                       ; $7158: $50
    ld [hl], c                                    ; $7159: $71
    ld c, h                                       ; $715A: $4C
    db $10                                        ; $715B: $10
    ld [bc], a                                    ; $715C: $02
    nop                                           ; $715D: $00
    ld hl, sp+$52                                 ; $715E: $F8 $52
    nop                                           ; $7160: $00
    ld b, [hl]                                    ; $7161: $46
    ld e, d                                       ; $7162: $5A
    ld [hl], c                                    ; $7163: $71
    ld c, h                                       ; $7164: $4C
    db $10                                        ; $7165: $10
    cp $00                                        ; $7166: $FE $00
    ld hl, sp+$52                                 ; $7168: $F8 $52
    nop                                           ; $716A: $00
    ld b, [hl]                                    ; $716B: $46
    ld h, h                                       ; $716C: $64
    ld [hl], c                                    ; $716D: $71
    ld c, h                                       ; $716E: $4C
    db $10                                        ; $716F: $10
    inc bc                                        ; $7170: $03
    nop                                           ; $7171: $00
    ld hl, sp+$52                                 ; $7172: $F8 $52
    nop                                           ; $7174: $00
    ld b, [hl]                                    ; $7175: $46
    ld l, [hl]                                    ; $7176: $6E
    ld [hl], c                                    ; $7177: $71
    ld c, h                                       ; $7178: $4C
    db $10                                        ; $7179: $10
    db $FD                                        ; $717A: $FD
    nop                                           ; $717B: $00
    ld hl, sp+$52                                 ; $717C: $F8 $52
    nop                                           ; $717E: $00
    ld b, [hl]                                    ; $717F: $46
    ld a, b                                       ; $7180: $78
    ld [hl], c                                    ; $7181: $71
    ld c, l                                       ; $7182: $4D
    inc b                                         ; $7183: $04
    ld h, b                                       ; $7184: $60
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    sbc c                                         ; $7187: $99
    ld c, l                                       ; $7188: $4D
    xor d                                         ; $7189: $AA
    ld c, l                                       ; $718A: $4D
    ld b, [hl]                                    ; $718B: $46
    add d                                         ; $718C: $82
    ld [hl], c                                    ; $718D: $71
    ld c, h                                       ; $718E: $4C
    add b                                         ; $718F: $80
    nop                                           ; $7190: $00
    nop                                           ; $7191: $00
    ld de, $084E                                  ; $7192: $11 $4E $08
    nop                                           ; $7195: $00
    nop                                           ; $7196: $00
    ld a, [de]                                    ; $7197: $1A
    ld c, [hl]                                    ; $7198: $4E
    ld [rRAMG], sp                                ; $7199: $08 $00 $00
    inc hl                                        ; $719C: $23
    ld c, [hl]                                    ; $719D: $4E
    ld [rRAMG], sp                                ; $719E: $08 $00 $00
    inc l                                         ; $71A1: $2C
    ld c, [hl]                                    ; $71A2: $4E
    nop                                           ; $71A3: $00
    ld b, [hl]                                    ; $71A4: $46
    adc [hl]                                      ; $71A5: $8E
    ld [hl], c                                    ; $71A6: $71
    ld c, h                                       ; $71A7: $4C
    ld bc, $0400                                  ; $71A8: $01 $00 $04
    ld de, $004E                                  ; $71AB: $11 $4E $00
    ld b, [hl]                                    ; $71AE: $46
    and a                                         ; $71AF: $A7
    ld [hl], c                                    ; $71B0: $71
    ld c, h                                       ; $71B1: $4C
    ld bc, $0004                                  ; $71B2: $01 $04 $00
    rst $28                                       ; $71B5: $EF
    ld c, [hl]                                    ; $71B6: $4E
    nop                                           ; $71B7: $00
    ld b, [hl]                                    ; $71B8: $46
    or c                                          ; $71B9: $B1
    ld [hl], c                                    ; $71BA: $71
    ld c, h                                       ; $71BB: $4C
    ld bc, $0000                                  ; $71BC: $01 $00 $00
    rst $28                                       ; $71BF: $EF
    ld c, [hl]                                    ; $71C0: $4E
    ld bc, $FF00                                  ; $71C1: $01 $00 $FF
    rst $28                                       ; $71C4: $EF
    ld c, [hl]                                    ; $71C5: $4E
    ld bc, $0000                                  ; $71C6: $01 $00 $00
    rst $28                                       ; $71C9: $EF
    ld c, [hl]                                    ; $71CA: $4E
    ld bc, $0100                                  ; $71CB: $01 $00 $01
    rst $28                                       ; $71CE: $EF
    ld c, [hl]                                    ; $71CF: $4E
    ld bc, $0000                                  ; $71D0: $01 $00 $00
    rst $28                                       ; $71D3: $EF
    ld c, [hl]                                    ; $71D4: $4E
    ld bc, $FF00                                  ; $71D5: $01 $00 $FF
    rst $28                                       ; $71D8: $EF
    ld c, [hl]                                    ; $71D9: $4E
    ld bc, $0000                                  ; $71DA: $01 $00 $00
    rst $28                                       ; $71DD: $EF
    ld c, [hl]                                    ; $71DE: $4E
    ld bc, $0100                                  ; $71DF: $01 $00 $01
    rst $28                                       ; $71E2: $EF
    ld c, [hl]                                    ; $71E3: $4E
    nop                                           ; $71E4: $00
    ld c, h                                       ; $71E5: $4C
    rst $38                                       ; $71E6: $FF
    nop                                           ; $71E7: $00
    nop                                           ; $71E8: $00
    rst $28                                       ; $71E9: $EF
    ld c, [hl]                                    ; $71EA: $4E
    nop                                           ; $71EB: $00
    ld b, [hl]                                    ; $71EC: $46
    push hl                                       ; $71ED: $E5
    ld [hl], c                                    ; $71EE: $71
    ld c, l                                       ; $71EF: $4D
    ld [$0008], sp                                ; $71F0: $08 $08 $00
    nop                                           ; $71F3: $00
    ld a, [bc]                                    ; $71F4: $0A
    ld c, a                                       ; $71F5: $4F
    ld bc, $EF4F                                  ; $71F6: $01 $4F $EF
    ld c, [hl]                                    ; $71F9: $4E
    ld bc, $464F                                  ; $71FA: $01 $4F $46
    rst $28                                       ; $71FD: $EF
    ld [hl], c                                    ; $71FE: $71
    ld c, h                                       ; $71FF: $4C
    inc b                                         ; $7200: $04
    nop                                           ; $7201: $00
    ld bc, $4EEF                                  ; $7202: $01 $EF $4E
    ld b, $00                                     ; $7205: $06 $00
    ld [bc], a                                    ; $7207: $02
    rst $28                                       ; $7208: $EF
    ld c, [hl]                                    ; $7209: $4E
    inc b                                         ; $720A: $04
    nop                                           ; $720B: $00
    inc bc                                        ; $720C: $03
    rst $28                                       ; $720D: $EF
    ld c, [hl]                                    ; $720E: $4E
    ld [bc], a                                    ; $720F: $02
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    rst $28                                       ; $7212: $EF
    ld c, [hl]                                    ; $7213: $4E
    ld [bc], a                                    ; $7214: $02
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    ld bc, $004F                                  ; $7217: $01 $4F $00
    ld b, [hl]                                    ; $721A: $46
    push hl                                       ; $721B: $E5
    ld [hl], c                                    ; $721C: $71
    ld c, l                                       ; $721D: $4D
    ld [$0008], sp                                ; $721E: $08 $08 $00
    nop                                           ; $7221: $00
    inc e                                         ; $7222: $1C
    ld c, a                                       ; $7223: $4F
    inc de                                        ; $7224: $13
    ld c, a                                       ; $7225: $4F
    ld hl, sp+$4E                                 ; $7226: $F8 $4E
    inc de                                        ; $7228: $13
    ld c, a                                       ; $7229: $4F
    ld b, [hl]                                    ; $722A: $46
    dec e                                         ; $722B: $1D
    ld [hl], d                                    ; $722C: $72
    ld c, h                                       ; $722D: $4C
    ld bc, $0004                                  ; $722E: $01 $04 $00
    ld hl, sp+$4E                                 ; $7231: $F8 $4E
    nop                                           ; $7233: $00
    ld b, [hl]                                    ; $7234: $46
    dec l                                         ; $7235: $2D
    ld [hl], d                                    ; $7236: $72
    ld c, h                                       ; $7237: $4C
    rst $38                                       ; $7238: $FF
    nop                                           ; $7239: $00
    nop                                           ; $723A: $00
    ld hl, sp+$4E                                 ; $723B: $F8 $4E
    nop                                           ; $723D: $00
    ld b, [hl]                                    ; $723E: $46
    scf                                           ; $723F: $37
    ld [hl], d                                    ; $7240: $72
    ld c, h                                       ; $7241: $4C
    rst $38                                       ; $7242: $FF
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    add hl, bc                                    ; $7245: $09
    ld l, [hl]                                    ; $7246: $6E
    nop                                           ; $7247: $00
    ld b, [hl]                                    ; $7248: $46
    ld b, c                                       ; $7249: $41
    ld [hl], d                                    ; $724A: $72
    ld c, l                                       ; $724B: $4D
    ld [$0010], sp                                ; $724C: $08 $10 $00
    nop                                           ; $724F: $00
    xor l                                         ; $7250: $AD
    ld c, a                                       ; $7251: $4F
    and $4F                                       ; $7252: $E6 $4F
    xor l                                         ; $7254: $AD
    ld c, a                                       ; $7255: $4F
    rra                                           ; $7256: $1F
    ld d, b                                       ; $7257: $50
    ld b, [hl]                                    ; $7258: $46
    ld c, e                                       ; $7259: $4B
    ld [hl], d                                    ; $725A: $72
    ld c, l                                       ; $725B: $4D
    ld [$0010], sp                                ; $725C: $08 $10 $00
    nop                                           ; $725F: $00
    ld c, e                                       ; $7260: $4B
    ld d, c                                       ; $7261: $51
    add h                                         ; $7262: $84
    ld d, c                                       ; $7263: $51
    ld c, e                                       ; $7264: $4B
    ld d, c                                       ; $7265: $51
    cp l                                          ; $7266: $BD
    ld d, c                                       ; $7267: $51
    ld b, [hl]                                    ; $7268: $46
    ld e, e                                       ; $7269: $5B
    ld [hl], d                                    ; $726A: $72
    ld c, l                                       ; $726B: $4D
    ld [$0110], sp                                ; $726C: $08 $10 $01
    nop                                           ; $726F: $00
    xor l                                         ; $7270: $AD
    ld c, a                                       ; $7271: $4F
    and $4F                                       ; $7272: $E6 $4F
    xor l                                         ; $7274: $AD
    ld c, a                                       ; $7275: $4F
    rra                                           ; $7276: $1F
    ld d, b                                       ; $7277: $50
    ld b, [hl]                                    ; $7278: $46
    ld l, e                                       ; $7279: $6B
    ld [hl], d                                    ; $727A: $72
    ld c, l                                       ; $727B: $4D
    ld [$FF10], sp                                ; $727C: $08 $10 $FF
    nop                                           ; $727F: $00
    ld c, e                                       ; $7280: $4B
    ld d, c                                       ; $7281: $51
    add h                                         ; $7282: $84
    ld d, c                                       ; $7283: $51
    ld c, e                                       ; $7284: $4B
    ld d, c                                       ; $7285: $51
    cp l                                          ; $7286: $BD
    ld d, c                                       ; $7287: $51
    ld b, [hl]                                    ; $7288: $46
    ld a, e                                       ; $7289: $7B
    ld [hl], d                                    ; $728A: $72
    ld c, h                                       ; $728B: $4C
    jr nz, jr_011_728E                            ; $728C: $20 $00

jr_011_728E:
    nop                                           ; $728E: $00
    ld e, b                                       ; $728F: $58
    ld d, b                                       ; $7290: $50
    jr nc, jr_011_7293                            ; $7291: $30 $00

jr_011_7293:
    nop                                           ; $7293: $00
    xor c                                         ; $7294: $A9
    ld d, b                                       ; $7295: $50
    nop                                           ; $7296: $00
    ld c, h                                       ; $7297: $4C
    ld bc, $0000                                  ; $7298: $01 $00 $00
    ld a, [$0050]                                 ; $729B: $FA $50 $00
    ld b, [hl]                                    ; $729E: $46
    sub a                                         ; $729F: $97
    ld [hl], d                                    ; $72A0: $72
    ld c, h                                       ; $72A1: $4C
    rst $38                                       ; $72A2: $FF
    nop                                           ; $72A3: $00
    nop                                           ; $72A4: $00
    or $51                                        ; $72A5: $F6 $51
    nop                                           ; $72A7: $00
    ld b, [hl]                                    ; $72A8: $46
    and c                                         ; $72A9: $A1
    ld [hl], d                                    ; $72AA: $72
    ld c, h                                       ; $72AB: $4C
    jr nz, jr_011_72AE                            ; $72AC: $20 $00

jr_011_72AE:
    nop                                           ; $72AE: $00
    inc bc                                        ; $72AF: $03
    ld d, d                                       ; $72B0: $52
    nop                                           ; $72B1: $00
    ld c, l                                       ; $72B2: $4D
    inc c                                         ; $72B3: $0C
    ld [rRAMG], sp                                ; $72B4: $08 $00 $00
    ld [$1952], sp                                ; $72B7: $08 $52 $19
    ld d, d                                       ; $72BA: $52
    ld a, [hl+]                                   ; $72BB: $2A
    ld d, d                                       ; $72BC: $52
    add hl, de                                    ; $72BD: $19
    ld d, d                                       ; $72BE: $52
    inc bc                                        ; $72BF: $03
    ld d, d                                       ; $72C0: $52
    inc bc                                        ; $72C1: $03
    ld d, d                                       ; $72C2: $52
    ld b, d                                       ; $72C3: $42
    ld c, h                                       ; $72C4: $4C
    jr nz, jr_011_72C7                            ; $72C5: $20 $00

jr_011_72C7:
    nop                                           ; $72C7: $00
    ccf                                           ; $72C8: $3F
    ld d, d                                       ; $72C9: $52
    nop                                           ; $72CA: $00
    ld c, b                                       ; $72CB: $48
    ld c, h                                       ; $72CC: $4C
    ld bc, $0000                                  ; $72CD: $01 $00 $00
    ccf                                           ; $72D0: $3F
    ld d, d                                       ; $72D1: $52
    nop                                           ; $72D2: $00
    ld c, b                                       ; $72D3: $48
    ld c, h                                       ; $72D4: $4C
    ld bc, $0000                                  ; $72D5: $01 $00 $00
    ccf                                           ; $72D8: $3F
    ld d, d                                       ; $72D9: $52
    nop                                           ; $72DA: $00
    ld c, b                                       ; $72DB: $48
    ld c, h                                       ; $72DC: $4C
    ld bc, $0000                                  ; $72DD: $01 $00 $00
    ccf                                           ; $72E0: $3F
    ld d, d                                       ; $72E1: $52
    nop                                           ; $72E2: $00
    ld c, b                                       ; $72E3: $48
    ld c, h                                       ; $72E4: $4C
    ld bc, $0000                                  ; $72E5: $01 $00 $00
    ccf                                           ; $72E8: $3F
    ld d, d                                       ; $72E9: $52
    nop                                           ; $72EA: $00
    ld c, b                                       ; $72EB: $48
    ld c, h                                       ; $72EC: $4C
    ld bc, $0000                                  ; $72ED: $01 $00 $00
    ccf                                           ; $72F0: $3F
    ld d, d                                       ; $72F1: $52
    nop                                           ; $72F2: $00
    ld c, b                                       ; $72F3: $48
    ld c, h                                       ; $72F4: $4C
    ld bc, $0000                                  ; $72F5: $01 $00 $00
    ccf                                           ; $72F8: $3F
    ld d, d                                       ; $72F9: $52
    nop                                           ; $72FA: $00
    ld c, b                                       ; $72FB: $48
    ld c, h                                       ; $72FC: $4C
    ld bc, $0000                                  ; $72FD: $01 $00 $00
    ccf                                           ; $7300: $3F
    ld d, d                                       ; $7301: $52
    nop                                           ; $7302: $00
    ld c, b                                       ; $7303: $48
    ld c, h                                       ; $7304: $4C
    ld bc, $0000                                  ; $7305: $01 $00 $00
    ccf                                           ; $7308: $3F
    ld d, d                                       ; $7309: $52
    nop                                           ; $730A: $00
    ld b, d                                       ; $730B: $42
    ld c, h                                       ; $730C: $4C
    jr nz, jr_011_730F                            ; $730D: $20 $00

jr_011_730F:
    nop                                           ; $730F: $00
    ld h, b                                       ; $7310: $60
    ld d, d                                       ; $7311: $52
    nop                                           ; $7312: $00
    ld c, l                                       ; $7313: $4D
    inc c                                         ; $7314: $0C
    ld [rRAMG], sp                                ; $7315: $08 $00 $00
    ld h, l                                       ; $7318: $65
    ld d, d                                       ; $7319: $52
    halt                                          ; $731A: $76
    ld d, d                                       ; $731B: $52
    add a                                         ; $731C: $87
    ld d, d                                       ; $731D: $52
    halt                                          ; $731E: $76
    ld d, d                                       ; $731F: $52
    ld h, b                                       ; $7320: $60
    ld d, d                                       ; $7321: $52
    ld h, b                                       ; $7322: $60
    ld d, d                                       ; $7323: $52
    ld b, d                                       ; $7324: $42
    ld c, h                                       ; $7325: $4C
    jr nz, jr_011_7328                            ; $7326: $20 $00

jr_011_7328:
    nop                                           ; $7328: $00
    sbc h                                         ; $7329: $9C
    ld d, d                                       ; $732A: $52
    nop                                           ; $732B: $00
    ld c, b                                       ; $732C: $48
    ld c, h                                       ; $732D: $4C
    ld bc, $0000                                  ; $732E: $01 $00 $00
    sbc h                                         ; $7331: $9C
    ld d, d                                       ; $7332: $52
    nop                                           ; $7333: $00
    ld c, b                                       ; $7334: $48
    ld c, h                                       ; $7335: $4C
    ld bc, $0000                                  ; $7336: $01 $00 $00
    sbc h                                         ; $7339: $9C
    ld d, d                                       ; $733A: $52
    nop                                           ; $733B: $00
    ld c, b                                       ; $733C: $48
    ld c, h                                       ; $733D: $4C
    ld bc, $0000                                  ; $733E: $01 $00 $00
    sbc h                                         ; $7341: $9C
    ld d, d                                       ; $7342: $52
    nop                                           ; $7343: $00
    ld c, b                                       ; $7344: $48
    ld c, h                                       ; $7345: $4C
    ld bc, $0000                                  ; $7346: $01 $00 $00
    sbc h                                         ; $7349: $9C
    ld d, d                                       ; $734A: $52
    nop                                           ; $734B: $00
    ld c, b                                       ; $734C: $48
    ld c, h                                       ; $734D: $4C
    ld bc, $0000                                  ; $734E: $01 $00 $00
    sbc h                                         ; $7351: $9C
    ld d, d                                       ; $7352: $52
    nop                                           ; $7353: $00
    ld c, b                                       ; $7354: $48
    ld c, h                                       ; $7355: $4C
    ld bc, $0000                                  ; $7356: $01 $00 $00
    sbc h                                         ; $7359: $9C
    ld d, d                                       ; $735A: $52
    nop                                           ; $735B: $00
    ld c, b                                       ; $735C: $48
    ld c, h                                       ; $735D: $4C
    ld bc, $0000                                  ; $735E: $01 $00 $00
    sbc h                                         ; $7361: $9C
    ld d, d                                       ; $7362: $52
    nop                                           ; $7363: $00
    ld c, b                                       ; $7364: $48
    ld c, h                                       ; $7365: $4C
    ld bc, $0000                                  ; $7366: $01 $00 $00
    sbc h                                         ; $7369: $9C
    ld d, d                                       ; $736A: $52
    nop                                           ; $736B: $00
    ld b, d                                       ; $736C: $42
    ld c, h                                       ; $736D: $4C
    rst $38                                       ; $736E: $FF
    nop                                           ; $736F: $00
    nop                                           ; $7370: $00
    cp l                                          ; $7371: $BD
    ld d, d                                       ; $7372: $52
    nop                                           ; $7373: $00
    ld b, [hl]                                    ; $7374: $46
    ld l, l                                       ; $7375: $6D
    ld [hl], e                                    ; $7376: $73
    ld c, h                                       ; $7377: $4C
    ld bc, $0100                                  ; $7378: $01 $00 $01
    cp l                                          ; $737B: $BD
    ld d, d                                       ; $737C: $52
    ld bc, $0000                                  ; $737D: $01 $00 $00
    cp l                                          ; $7380: $BD
    ld d, d                                       ; $7381: $52
    nop                                           ; $7382: $00
    ld b, [hl]                                    ; $7383: $46
    ld [hl], a                                    ; $7384: $77
    ld [hl], e                                    ; $7385: $73
    ld c, h                                       ; $7386: $4C
    ld bc, $0101                                  ; $7387: $01 $01 $01
    cp l                                          ; $738A: $BD
    ld d, d                                       ; $738B: $52
    ld bc, $0000                                  ; $738C: $01 $00 $00
    cp l                                          ; $738F: $BD
    ld d, d                                       ; $7390: $52
    nop                                           ; $7391: $00
    ld b, [hl]                                    ; $7392: $46
    add [hl]                                      ; $7393: $86
    ld [hl], e                                    ; $7394: $73
    ld c, h                                       ; $7395: $4C
    ld bc, $01FF                                  ; $7396: $01 $FF $01
    cp l                                          ; $7399: $BD
    ld d, d                                       ; $739A: $52
    ld bc, $0000                                  ; $739B: $01 $00 $00
    cp l                                          ; $739E: $BD
    ld d, d                                       ; $739F: $52
    nop                                           ; $73A0: $00
    ld b, [hl]                                    ; $73A1: $46
    sub l                                         ; $73A2: $95
    ld [hl], e                                    ; $73A3: $73
    ld c, h                                       ; $73A4: $4C
    add b                                         ; $73A5: $80
    nop                                           ; $73A6: $00
    nop                                           ; $73A7: $00
    sub $52                                       ; $73A8: $D6 $52
    ld [rRAMG], sp                                ; $73AA: $08 $00 $00
    rst $20                                       ; $73AD: $E7
    ld d, d                                       ; $73AE: $52
    nop                                           ; $73AF: $00
    ld b, [hl]                                    ; $73B0: $46
    and h                                         ; $73B1: $A4
    ld [hl], e                                    ; $73B2: $73
    ld c, h                                       ; $73B3: $4C
    rst $38                                       ; $73B4: $FF
    nop                                           ; $73B5: $00
    nop                                           ; $73B6: $00
    sub $52                                       ; $73B7: $D6 $52
    nop                                           ; $73B9: $00
    ld b, [hl]                                    ; $73BA: $46
    or e                                          ; $73BB: $B3
    ld [hl], e                                    ; $73BC: $73
    ld c, h                                       ; $73BD: $4C
    jr nz, jr_011_73C0                            ; $73BE: $20 $00

jr_011_73C0:
    db $FC                                        ; $73C0: $FC
    sub $52                                       ; $73C1: $D6 $52
    stop                                          ; $73C3: $10 $00
    db $FD                                        ; $73C5: $FD
    sub $52                                       ; $73C6: $D6 $52
    ld [$FE00], sp                                ; $73C8: $08 $00 $FE
    sub $52                                       ; $73CB: $D6 $52
    inc b                                         ; $73CD: $04
    nop                                           ; $73CE: $00
    rst $38                                       ; $73CF: $FF
    sub $52                                       ; $73D0: $D6 $52
    ld [bc], a                                    ; $73D2: $02
    nop                                           ; $73D3: $00
    nop                                           ; $73D4: $00
    sub $52                                       ; $73D5: $D6 $52
    ld bc, $0100                                  ; $73D7: $01 $00 $01
    sub $52                                       ; $73DA: $D6 $52
    nop                                           ; $73DC: $00
    ld b, d                                       ; $73DD: $42

    db $4C, $80, $00, $00, $F8, $52, $08, $00, $00, $09, $53, $08, $00, $00, $1A, $53
    db $00, $46, $DE, $73, $4C, $10, $00, $FF, $F8, $52

    ld [rRAMG], sp                                ; $73F8: $08 $00 $00
    add hl, bc                                    ; $73FB: $09
    ld d, e                                       ; $73FC: $53
    ld [rRAMG], sp                                ; $73FD: $08 $00 $00
    ld a, [de]                                    ; $7400: $1A
    ld d, e                                       ; $7401: $53
    jr nz, jr_011_7404                            ; $7402: $20 $00

jr_011_7404:
    nop                                           ; $7404: $00
    ld hl, sp+$52                                 ; $7405: $F8 $52
    nop                                           ; $7407: $00

    db $4D, $14, $04, $00, $00, $2B, $53, $5C, $53, $8D, $53, $5C, $53, $2B, $53, $5C
    db $53, $BE, $53, $2B, $53, $8D, $53, $5C, $53, $46, $08, $74

    ld c, h                                       ; $7424: $4C
    ld [$0200], sp                                ; $7425: $08 $00 $02
    ld hl, sp+$52                                 ; $7428: $F8 $52
    nop                                           ; $742A: $00
    ld b, [hl]                                    ; $742B: $46
    sbc $73                                       ; $742C: $DE $73
    ld c, h                                       ; $742E: $4C
    rst $38                                       ; $742F: $FF
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    ld hl, sp+$52                                 ; $7432: $F8 $52
    nop                                           ; $7434: $00
    ld b, [hl]                                    ; $7435: $46
    ld l, $74                                     ; $7436: $2E $74

    db $4D, $08, $02, $00, $00, $4E, $65, $53, $65, $58, $65, $69, $65, $4D, $0C, $01
    db $00, $00, $4E, $65, $53, $65, $58, $65, $69, $65, $58, $65, $53, $65, $46, $45
    db $74

    ld c, l                                       ; $7459: $4D
    ld c, $02                                     ; $745A: $0E $02
    nop                                           ; $745C: $00
    nop                                           ; $745D: $00
    cp e                                          ; $745E: $BB
    ld h, [hl]                                    ; $745F: $66
    db $10                                        ; $7460: $10
    ld h, a                                       ; $7461: $67
    ld b, c                                       ; $7462: $41
    ld h, a                                       ; $7463: $67
    ld l, [hl]                                    ; $7464: $6E
    ld h, a                                       ; $7465: $67
    sbc e                                         ; $7466: $9B
    ld h, a                                       ; $7467: $67
    ret z                                         ; $7468: $C8

    ld h, a                                       ; $7469: $67
    db $DD                                        ; $746A: $DD
    ld h, a                                       ; $746B: $67
    ld b, d                                       ; $746C: $42

    db $4D

    inc b                                         ; $746E: $04

    db $02, $00, $00, $10, $67

    cp e                                          ; $7474: $BB
    ld h, [hl]                                    ; $7475: $66
    ld c, l                                       ; $7476: $4D
    inc c                                         ; $7477: $0C
    ld bc, $0000                                  ; $7478: $01 $00 $00
    add d                                         ; $747B: $82
    ld h, l                                       ; $747C: $65
    or e                                          ; $747D: $B3
    ld h, l                                       ; $747E: $65
    ldh [$65], a                                  ; $747F: $E0 $65
    add hl, bc                                    ; $7481: $09
    ld h, [hl]                                    ; $7482: $66
    ld [hl], $66                                  ; $7483: $36 $66
    ld h, a                                       ; $7485: $67
    ld h, [hl]                                    ; $7486: $66
    ld b, [hl]                                    ; $7487: $46
    halt                                          ; $7488: $76
    ld [hl], h                                    ; $7489: $74
    ld c, l                                       ; $748A: $4D
    inc b                                         ; $748B: $04
    ld [bc], a                                    ; $748C: $02
    nop                                           ; $748D: $00
    nop                                           ; $748E: $00
    db $10                                        ; $748F: $10
    ld h, a                                       ; $7490: $67
    cp e                                          ; $7491: $BB
    ld h, [hl]                                    ; $7492: $66
    ld c, l                                       ; $7493: $4D
    ld [$0001], sp                                ; $7494: $08 $01 $00
    nop                                           ; $7497: $00
    dec c                                         ; $7498: $0D
    ld l, b                                       ; $7499: $68
    ld a, [hl+]                                   ; $749A: $2A
    ld l, b                                       ; $749B: $68
    ld b, e                                       ; $749C: $43
    ld l, b                                       ; $749D: $68
    ld h, b                                       ; $749E: $60
    ld l, b                                       ; $749F: $68
    ld b, [hl]                                    ; $74A0: $46
    sub e                                         ; $74A1: $93
    ld [hl], h                                    ; $74A2: $74
    ld c, l                                       ; $74A3: $4D
    inc b                                         ; $74A4: $04
    ld [$00FF], sp                                ; $74A5: $08 $FF $00
    ld h, $54                                     ; $74A8: $26 $54
    inc sp                                        ; $74AA: $33
    ld d, h                                       ; $74AB: $54
    ld b, [hl]                                    ; $74AC: $46
    and e                                         ; $74AD: $A3
    ld [hl], h                                    ; $74AE: $74
    ld c, l                                       ; $74AF: $4D
    inc b                                         ; $74B0: $04
    ld [$0001], sp                                ; $74B1: $08 $01 $00
    rst $38                                       ; $74B4: $FF
    ld d, e                                       ; $74B5: $53
    inc c                                         ; $74B6: $0C
    ld d, h                                       ; $74B7: $54
    ld b, [hl]                                    ; $74B8: $46
    xor a                                         ; $74B9: $AF
    ld [hl], h                                    ; $74BA: $74
    ld c, h                                       ; $74BB: $4C
    rst $38                                       ; $74BC: $FF
    nop                                           ; $74BD: $00
    nop                                           ; $74BE: $00
    ld b, b                                       ; $74BF: $40
    ld d, h                                       ; $74C0: $54
    nop                                           ; $74C1: $00
    ld b, [hl]                                    ; $74C2: $46
    cp e                                          ; $74C3: $BB
    ld [hl], h                                    ; $74C4: $74
    ld c, h                                       ; $74C5: $4C
    rst $38                                       ; $74C6: $FF
    nop                                           ; $74C7: $00
    nop                                           ; $74C8: $00
    add hl, de                                    ; $74C9: $19
    ld d, h                                       ; $74CA: $54
    nop                                           ; $74CB: $00
    ld b, [hl]                                    ; $74CC: $46
    push bc                                       ; $74CD: $C5
    ld [hl], h                                    ; $74CE: $74
    ld c, e                                       ; $74CF: $4B
    inc bc                                        ; $74D0: $03
    ld de, $0000                                  ; $74D1: $11 $00 $00
    and $74                                       ; $74D4: $E6 $74
    ld de, $0003                                  ; $74D6: $11 $03 $00
    db $ED                                        ; $74D9: $ED
    ld [hl], h                                    ; $74DA: $74
    ld de, $0002                                  ; $74DB: $11 $02 $00
    db $ED                                        ; $74DE: $ED
    ld [hl], h                                    ; $74DF: $74
    ld de, $0001                                  ; $74E0: $11 $01 $00
    and $74                                       ; $74E3: $E6 $74
    rst $38                                       ; $74E5: $FF
    inc d                                         ; $74E6: $14
    ld de, $74BB                                  ; $74E7: $11 $BB $74
    ld h, d                                       ; $74EA: $62
    ld bc, $1412                                  ; $74EB: $01 $12 $14
    ld de, $74C5                                  ; $74EE: $11 $C5 $74
    ld h, d                                       ; $74F1: $62
    db $01                                        ; $74F2: $01
    ld [de], a                                    ; $74F3: $12

    db $4E, $0A, $00, $F0, $4C, $01, $00, $04, $BC, $54, $04, $00, $00, $67, $54, $04
    db $00, $00, $80, $54, $04, $00, $00, $99, $54

    inc b                                         ; $750D: $04
    nop                                           ; $750E: $00
    nop                                           ; $750F: $00
    and [hl]                                      ; $7510: $A6
    ld d, h                                       ; $7511: $54
    nop                                           ; $7512: $00
    ld b, d                                       ; $7513: $42
    ld c, h                                       ; $7514: $4C
    rst $38                                       ; $7515: $FF
    nop                                           ; $7516: $00
    nop                                           ; $7517: $00
    cp h                                          ; $7518: $BC
    ld d, h                                       ; $7519: $54
    nop                                           ; $751A: $00
    ld b, [hl]                                    ; $751B: $46
    inc d                                         ; $751C: $14
    ld [hl], l                                    ; $751D: $75
    ld c, h                                       ; $751E: $4C
    rst $38                                       ; $751F: $FF
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    ld d, [hl]                                    ; $7522: $56
    ld d, h                                       ; $7523: $54
    nop                                           ; $7524: $00
    ld b, [hl]                                    ; $7525: $46
    ld e, $75                                     ; $7526: $1E $75
    ld c, h                                       ; $7528: $4C
    rst $38                                       ; $7529: $FF
    nop                                           ; $752A: $00
    nop                                           ; $752B: $00
    jp c, $0054                                   ; $752C: $DA $54 $00

    ld b, [hl]                                    ; $752F: $46
    jr z, jr_011_75A7                             ; $7530: $28 $75

    db $4E, $0A, $00, $F0, $4C, $28, $00, $04, $C5, $54, $00, $42, $4E, $0A, $00, $F0
    db $4C, $28, $00, $04, $DA, $54, $00, $42, $4E, $0A, $00, $F0, $4C, $28, $00, $04
    db $EB, $54, $00, $42, $4E, $0A, $00, $F0, $4C, $28, $00, $04, $56, $54, $04, $00
    db $00, $67, $54, $04, $00, $00, $80, $54, $04, $00, $00, $99, $54, $04, $00, $00
    db $A6, $54, $00, $42, $4E, $0A, $00, $F0, $4C, $28, $00, $04, $AB, $54, $04, $00
    db $00, $67, $54, $04, $00, $00, $80, $54, $04, $00, $00, $99, $54, $04, $00, $00
    db $A6, $54, $00, $42

    ld c, h                                       ; $7596: $4C
    rst $38                                       ; $7597: $FF
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    ld sp, $106D                                  ; $759A: $31 $6D $10
    nop                                           ; $759D: $00
    nop                                           ; $759E: $00
    ld c, [hl]                                    ; $759F: $4E
    ld l, l                                       ; $75A0: $6D
    nop                                           ; $75A1: $00
    ld b, l                                       ; $75A2: $45
    ld de, $7596                                  ; $75A3: $11 $96 $75
    ld c, h                                       ; $75A6: $4C

jr_011_75A7:
    rst $38                                       ; $75A7: $FF
    nop                                           ; $75A8: $00
    nop                                           ; $75A9: $00
    ld c, l                                       ; $75AA: $4D
    ld d, h                                       ; $75AB: $54
    nop                                           ; $75AC: $00
    ld b, [hl]                                    ; $75AD: $46
    and [hl]                                      ; $75AE: $A6
    ld [hl], l                                    ; $75AF: $75
    ld c, l                                       ; $75B0: $4D
    db $10                                        ; $75B1: $10
    ld [rRAMG], sp                                ; $75B2: $08 $00 $00
    ld hl, sp+$54                                 ; $75B5: $F8 $54
    add hl, de                                    ; $75B7: $19
    ld d, l                                       ; $75B8: $55
    ld a, [hl-]                                   ; $75B9: $3A
    ld d, l                                       ; $75BA: $55
    ld e, e                                       ; $75BB: $5B
    ld d, l                                       ; $75BC: $55
    ld a, h                                       ; $75BD: $7C
    ld d, l                                       ; $75BE: $55
    sbc l                                         ; $75BF: $9D
    ld d, l                                       ; $75C0: $55
    cp [hl]                                       ; $75C1: $BE
    ld d, l                                       ; $75C2: $55
    rst $18                                       ; $75C3: $DF
    ld d, l                                       ; $75C4: $55
    ld b, [hl]                                    ; $75C5: $46
    or b                                          ; $75C6: $B0
    ld [hl], l                                    ; $75C7: $75
    ld c, h                                       ; $75C8: $4C
    inc b                                         ; $75C9: $04
    nop                                           ; $75CA: $00
    nop                                           ; $75CB: $00
    nop                                           ; $75CC: $00
    ld d, [hl]                                    ; $75CD: $56
    nop                                           ; $75CE: $00
    ld c, b                                       ; $75CF: $48
    ld c, h                                       ; $75D0: $4C
    inc b                                         ; $75D1: $04
    nop                                           ; $75D2: $00
    nop                                           ; $75D3: $00
    ld hl, $0056                                  ; $75D4: $21 $56 $00
    ld c, b                                       ; $75D7: $48
    ld c, h                                       ; $75D8: $4C
    inc b                                         ; $75D9: $04
    nop                                           ; $75DA: $00
    nop                                           ; $75DB: $00
    ld b, d                                       ; $75DC: $42
    ld d, [hl]                                    ; $75DD: $56
    nop                                           ; $75DE: $00
    ld c, b                                       ; $75DF: $48
    ld c, h                                       ; $75E0: $4C
    inc b                                         ; $75E1: $04
    nop                                           ; $75E2: $00
    nop                                           ; $75E3: $00
    ld h, e                                       ; $75E4: $63
    ld d, [hl]                                    ; $75E5: $56
    nop                                           ; $75E6: $00
    ld c, b                                       ; $75E7: $48
    ld b, [hl]                                    ; $75E8: $46
    ret z                                         ; $75E9: $C8

    ld [hl], l                                    ; $75EA: $75
    ld c, h                                       ; $75EB: $4C
    ld h, b                                       ; $75EC: $60
    nop                                           ; $75ED: $00
    nop                                           ; $75EE: $00
    cpl                                           ; $75EF: $2F
    ld d, a                                       ; $75F0: $57
    inc b                                         ; $75F1: $04
    nop                                           ; $75F2: $00
    nop                                           ; $75F3: $00
    jr c, jr_011_764D                             ; $75F4: $38 $57

    inc b                                         ; $75F6: $04
    nop                                           ; $75F7: $00
    nop                                           ; $75F8: $00
    ld b, c                                       ; $75F9: $41
    ld d, a                                       ; $75FA: $57
    inc b                                         ; $75FB: $04
    nop                                           ; $75FC: $00
    nop                                           ; $75FD: $00
    ld c, d                                       ; $75FE: $4A
    ld d, a                                       ; $75FF: $57
    nop                                           ; $7600: $00
    ld b, [hl]                                    ; $7601: $46
    db $EB                                        ; $7602: $EB
    ld [hl], l                                    ; $7603: $75

    db $4D, $04, $01, $00, $00, $AF, $56, $CC, $56, $46, $04, $76

    ld c, h                                       ; $7610: $4C
    stop                                          ; $7611: $10 $00
    nop                                           ; $7613: $00
    add h                                         ; $7614: $84
    ld d, [hl]                                    ; $7615: $56
    inc b                                         ; $7616: $04
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    adc l                                         ; $7619: $8D
    ld d, [hl]                                    ; $761A: $56
    inc b                                         ; $761B: $04
    nop                                           ; $761C: $00
    nop                                           ; $761D: $00
    add h                                         ; $761E: $84
    ld d, [hl]                                    ; $761F: $56
    inc b                                         ; $7620: $04
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    adc l                                         ; $7623: $8D
    ld d, [hl]                                    ; $7624: $56
    inc b                                         ; $7625: $04
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    add h                                         ; $7628: $84
    ld d, [hl]                                    ; $7629: $56
    ld [rRAMG], sp                                ; $762A: $08 $00 $00
    adc l                                         ; $762D: $8D
    ld d, [hl]                                    ; $762E: $56
    ld [rRAMG], sp                                ; $762F: $08 $00 $00
    add h                                         ; $7632: $84
    ld d, [hl]                                    ; $7633: $56
    ld [rRAMG], sp                                ; $7634: $08 $00 $00
    adc l                                         ; $7637: $8D
    ld d, [hl]                                    ; $7638: $56
    ld [rRAMG], sp                                ; $7639: $08 $00 $00
    add h                                         ; $763C: $84
    ld d, [hl]                                    ; $763D: $56
    ld [rRAMG], sp                                ; $763E: $08 $00 $00
    adc l                                         ; $7641: $8D
    ld d, [hl]                                    ; $7642: $56
    nop                                           ; $7643: $00
    ld b, [hl]                                    ; $7644: $46
    db $10                                        ; $7645: $10
    halt                                          ; $7646: $76
    ld c, h                                       ; $7647: $4C
    ld h, b                                       ; $7648: $60
    nop                                           ; $7649: $00
    nop                                           ; $764A: $00
    sbc [hl]                                      ; $764B: $9E
    ld d, [hl]                                    ; $764C: $56

jr_011_764D:
    nop                                           ; $764D: $00
    ld c, b                                       ; $764E: $48
    ld c, h                                       ; $764F: $4C
    ld bc, $0000                                  ; $7650: $01 $00 $00
    sbc [hl]                                      ; $7653: $9E
    ld d, [hl]                                    ; $7654: $56
    nop                                           ; $7655: $00
    ld c, b                                       ; $7656: $48
    ld c, h                                       ; $7657: $4C
    ld bc, $0000                                  ; $7658: $01 $00 $00
    sbc [hl]                                      ; $765B: $9E
    ld d, [hl]                                    ; $765C: $56
    nop                                           ; $765D: $00
    ld c, b                                       ; $765E: $48
    ld c, h                                       ; $765F: $4C
    ld bc, $0000                                  ; $7660: $01 $00 $00
    sbc [hl]                                      ; $7663: $9E
    ld d, [hl]                                    ; $7664: $56
    nop                                           ; $7665: $00
    ld c, b                                       ; $7666: $48
    ld c, h                                       ; $7667: $4C
    ld bc, $0000                                  ; $7668: $01 $00 $00
    sbc [hl]                                      ; $766B: $9E
    ld d, [hl]                                    ; $766C: $56
    nop                                           ; $766D: $00
    ld c, b                                       ; $766E: $48
    ld c, h                                       ; $766F: $4C
    ld bc, $0000                                  ; $7670: $01 $00 $00
    sbc [hl]                                      ; $7673: $9E
    ld d, [hl]                                    ; $7674: $56
    nop                                           ; $7675: $00
    ld c, b                                       ; $7676: $48
    ld c, h                                       ; $7677: $4C
    ld bc, $0000                                  ; $7678: $01 $00 $00
    sbc [hl]                                      ; $767B: $9E
    ld d, [hl]                                    ; $767C: $56
    nop                                           ; $767D: $00
    ld c, b                                       ; $767E: $48
    ld c, h                                       ; $767F: $4C
    ld bc, $0000                                  ; $7680: $01 $00 $00
    sbc [hl]                                      ; $7683: $9E
    ld d, [hl]                                    ; $7684: $56
    nop                                           ; $7685: $00
    ld c, b                                       ; $7686: $48
    ld c, h                                       ; $7687: $4C
    ld bc, $0000                                  ; $7688: $01 $00 $00
    sbc [hl]                                      ; $768B: $9E
    ld d, [hl]                                    ; $768C: $56
    nop                                           ; $768D: $00
    ld b, d                                       ; $768E: $42
    ld c, h                                       ; $768F: $4C
    rst $38                                       ; $7690: $FF
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    add h                                         ; $7693: $84
    ld d, [hl]                                    ; $7694: $56
    nop                                           ; $7695: $00
    ld b, [hl]                                    ; $7696: $46
    adc a                                         ; $7697: $8F
    halt                                          ; $7698: $76
    ld c, h                                       ; $7699: $4C
    rst $38                                       ; $769A: $FF
    nop                                           ; $769B: $00
    nop                                           ; $769C: $00
    jp hl                                         ; $769D: $E9


    ld d, [hl]                                    ; $769E: $56
    nop                                           ; $769F: $00
    ld b, [hl]                                    ; $76A0: $46
    sbc c                                         ; $76A1: $99
    halt                                          ; $76A2: $76
    ld c, h                                       ; $76A3: $4C
    ld h, b                                       ; $76A4: $60
    nop                                           ; $76A5: $00
    nop                                           ; $76A6: $00
    dec bc                                        ; $76A7: $0B
    ld d, a                                       ; $76A8: $57
    stop                                          ; $76A9: $10 $00
    nop                                           ; $76AB: $00
    inc d                                         ; $76AC: $14
    ld d, a                                       ; $76AD: $57
    stop                                          ; $76AE: $10 $00
    nop                                           ; $76B0: $00
    dec e                                         ; $76B1: $1D
    ld d, a                                       ; $76B2: $57
    stop                                          ; $76B3: $10 $00
    nop                                           ; $76B5: $00
    ld h, $57                                     ; $76B6: $26 $57
    nop                                           ; $76B8: $00
    ld b, [hl]                                    ; $76B9: $46
    and e                                         ; $76BA: $A3
    halt                                          ; $76BB: $76
    ld c, h                                       ; $76BC: $4C
    rst $38                                       ; $76BD: $FF
    nop                                           ; $76BE: $00
    nop                                           ; $76BF: $00
    ld a, [$0056]                                 ; $76C0: $FA $56 $00
    ld b, [hl]                                    ; $76C3: $46
    cp h                                          ; $76C4: $BC
    halt                                          ; $76C5: $76
    ld c, h                                       ; $76C6: $4C
    rst $38                                       ; $76C7: $FF
    nop                                           ; $76C8: $00
    nop                                           ; $76C9: $00
    ld hl, sp+$6F                                 ; $76CA: $F8 $6F
    nop                                           ; $76CC: $00
    ld b, [hl]                                    ; $76CD: $46
    add $76                                       ; $76CE: $C6 $76
    ld c, h                                       ; $76D0: $4C
    ld [rRAMG], sp                                ; $76D1: $08 $00 $00
    ld e, b                                       ; $76D4: $58
    ld d, a                                       ; $76D5: $57
    stop                                          ; $76D6: $10 $00
    nop                                           ; $76D8: $00
    ld e, l                                       ; $76D9: $5D
    ld d, a                                       ; $76DA: $57
    ld [rRAMG], sp                                ; $76DB: $08 $00 $00
    ld d, e                                       ; $76DE: $53
    ld d, a                                       ; $76DF: $57
    nop                                           ; $76E0: $00
    ld c, d                                       ; $76E1: $4A
    ld de, $76D0                                  ; $76E2: $11 $D0 $76
    ld c, h                                       ; $76E5: $4C
    inc b                                         ; $76E6: $04
    nop                                           ; $76E7: $00
    nop                                           ; $76E8: $00
    ld [hl], e                                    ; $76E9: $73
    ld d, a                                       ; $76EA: $57
    ld [rRAMG], sp                                ; $76EB: $08 $00 $00
    ld a, b                                       ; $76EE: $78
    ld d, a                                       ; $76EF: $57
    inc b                                         ; $76F0: $04
    nop                                           ; $76F1: $00
    nop                                           ; $76F2: $00
    ld l, [hl]                                    ; $76F3: $6E
    ld d, a                                       ; $76F4: $57
    nop                                           ; $76F5: $00
    ld c, d                                       ; $76F6: $4A
    ld de, $76E5                                  ; $76F7: $11 $E5 $76
    ld c, l                                       ; $76FA: $4D
    ld [$0010], sp                                ; $76FB: $08 $10 $00
    nop                                           ; $76FE: $00
    rst $38                                       ; $76FF: $FF
    ld l, e                                       ; $7700: $6B
    ld a, [c]                                     ; $7701: $F2
    ld l, e                                       ; $7702: $6B
    rst $38                                       ; $7703: $FF
    ld l, e                                       ; $7704: $6B
    inc c                                         ; $7705: $0C
    ld l, h                                       ; $7706: $6C
    ld b, [hl]                                    ; $7707: $46
    ld a, [$4D76]                                 ; $7708: $FA $76 $4D
    ld [$0010], sp                                ; $770B: $08 $10 $00
    nop                                           ; $770E: $00
    ret c                                         ; $770F: $D8

    ld l, e                                       ; $7710: $6B
    bit 5, e                                      ; $7711: $CB $6B
    ret c                                         ; $7713: $D8

    ld l, e                                       ; $7714: $6B
    push hl                                       ; $7715: $E5
    ld l, e                                       ; $7716: $6B
    ld b, [hl]                                    ; $7717: $46
    ld a, [bc]                                    ; $7718: $0A
    ld [hl], a                                    ; $7719: $77
    ld c, l                                       ; $771A: $4D
    ld [$0010], sp                                ; $771B: $08 $10 $00
    nop                                           ; $771E: $00
    ld c, l                                       ; $771F: $4D
    ld l, h                                       ; $7720: $6C
    ld b, b                                       ; $7721: $40
    ld l, h                                       ; $7722: $6C
    ld c, l                                       ; $7723: $4D
    ld l, h                                       ; $7724: $6C
    ld e, d                                       ; $7725: $5A
    ld l, h                                       ; $7726: $6C
    ld b, [hl]                                    ; $7727: $46
    ld a, [de]                                    ; $7728: $1A
    ld [hl], a                                    ; $7729: $77
    ld c, l                                       ; $772A: $4D
    ld [$0010], sp                                ; $772B: $08 $10 $00
    nop                                           ; $772E: $00
    ld h, $6C                                     ; $772F: $26 $6C
    add hl, de                                    ; $7731: $19
    ld l, h                                       ; $7732: $6C
    ld h, $6C                                     ; $7733: $26 $6C
    inc sp                                        ; $7735: $33
    ld l, h                                       ; $7736: $6C
    ld b, [hl]                                    ; $7737: $46
    ld a, [hl+]                                   ; $7738: $2A
    ld [hl], a                                    ; $7739: $77
    ld c, l                                       ; $773A: $4D
    inc b                                         ; $773B: $04
    stop                                          ; $773C: $10 $00
    nop                                           ; $773E: $00
    ccf                                           ; $773F: $3F
    ld c, a                                       ; $7740: $4F
    ld c, h                                       ; $7741: $4C
    ld c, a                                       ; $7742: $4F
    ld b, [hl]                                    ; $7743: $46
    ld a, [hl-]                                   ; $7744: $3A
    ld [hl], a                                    ; $7745: $77
    ld c, l                                       ; $7746: $4D
    inc b                                         ; $7747: $04
    stop                                          ; $7748: $10 $00
    nop                                           ; $774A: $00
    dec h                                         ; $774B: $25
    ld c, a                                       ; $774C: $4F
    ld [hl-], a                                   ; $774D: $32
    ld c, a                                       ; $774E: $4F
    ld b, [hl]                                    ; $774F: $46
    ld b, [hl]                                    ; $7750: $46
    ld [hl], a                                    ; $7751: $77
    ld c, l                                       ; $7752: $4D
    inc b                                         ; $7753: $04
    stop                                          ; $7754: $10 $00
    nop                                           ; $7756: $00
    add e                                         ; $7757: $83
    ld c, a                                       ; $7758: $4F
    sbc b                                         ; $7759: $98
    ld c, a                                       ; $775A: $4F
    ld b, [hl]                                    ; $775B: $46
    ld d, d                                       ; $775C: $52
    ld [hl], a                                    ; $775D: $77
    ld c, l                                       ; $775E: $4D
    inc b                                         ; $775F: $04
    stop                                          ; $7760: $10 $00
    nop                                           ; $7762: $00
    ld e, c                                       ; $7763: $59
    ld c, a                                       ; $7764: $4F
    ld l, [hl]                                    ; $7765: $6E
    ld c, a                                       ; $7766: $4F
    ld b, [hl]                                    ; $7767: $46
    ld e, [hl]                                    ; $7768: $5E
    ld [hl], a                                    ; $7769: $77
    ld c, l                                       ; $776A: $4D
    ld b, $08                                     ; $776B: $06 $08
    rst $38                                       ; $776D: $FF
    nop                                           ; $776E: $00
    db $EC                                        ; $776F: $EC
    ld d, a                                       ; $7770: $57
    dec c                                         ; $7771: $0D
    ld e, b                                       ; $7772: $58
    ld l, $58                                     ; $7773: $2E $58
    ld b, [hl]                                    ; $7775: $46
    ld l, d                                       ; $7776: $6A
    ld [hl], a                                    ; $7777: $77
    ld c, l                                       ; $7778: $4D
    ld b, $08                                     ; $7779: $06 $08
    ld bc, $8900                                  ; $777B: $01 $00 $89
    ld d, a                                       ; $777E: $57
    xor d                                         ; $777F: $AA
    ld d, a                                       ; $7780: $57
    bit 2, a                                      ; $7781: $CB $57
    ld b, [hl]                                    ; $7783: $46
    ld a, b                                       ; $7784: $78
    ld [hl], a                                    ; $7785: $77
    ld c, l                                       ; $7786: $4D
    ld b, $08                                     ; $7787: $06 $08
    nop                                           ; $7789: $00
    rst $38                                       ; $778A: $FF
    jp z, $EB58                                   ; $778B: $CA $58 $EB

    ld e, b                                       ; $778E: $58
    inc c                                         ; $778F: $0C
    ld e, c                                       ; $7790: $59
    ld b, [hl]                                    ; $7791: $46
    add [hl]                                      ; $7792: $86
    ld [hl], a                                    ; $7793: $77
    ld c, l                                       ; $7794: $4D
    ld b, $08                                     ; $7795: $06 $08
    nop                                           ; $7797: $00
    ld bc, $584F                                  ; $7798: $01 $4F $58
    ld a, b                                       ; $779B: $78
    ld e, b                                       ; $779C: $58
    and c                                         ; $779D: $A1
    ld e, b                                       ; $779E: $58
    ld b, [hl]                                    ; $779F: $46
    sub h                                         ; $77A0: $94
    ld [hl], a                                    ; $77A1: $77
    ld c, l                                       ; $77A2: $4D
    ld b, $08                                     ; $77A3: $06 $08
    nop                                           ; $77A5: $00
    nop                                           ; $77A6: $00
    db $EC                                        ; $77A7: $EC
    ld d, a                                       ; $77A8: $57
    dec c                                         ; $77A9: $0D
    ld e, b                                       ; $77AA: $58
    ld l, $58                                     ; $77AB: $2E $58
    ld b, [hl]                                    ; $77AD: $46
    and d                                         ; $77AE: $A2
    ld [hl], a                                    ; $77AF: $77
    ld c, l                                       ; $77B0: $4D
    ld b, $08                                     ; $77B1: $06 $08
    nop                                           ; $77B3: $00
    nop                                           ; $77B4: $00
    adc c                                         ; $77B5: $89
    ld d, a                                       ; $77B6: $57
    xor d                                         ; $77B7: $AA
    ld d, a                                       ; $77B8: $57
    bit 2, a                                      ; $77B9: $CB $57
    ld b, [hl]                                    ; $77BB: $46
    or b                                          ; $77BC: $B0
    ld [hl], a                                    ; $77BD: $77
    ld c, l                                       ; $77BE: $4D
    ld b, $08                                     ; $77BF: $06 $08
    nop                                           ; $77C1: $00
    nop                                           ; $77C2: $00
    jp z, $EB58                                   ; $77C3: $CA $58 $EB

    ld e, b                                       ; $77C6: $58
    inc c                                         ; $77C7: $0C
    ld e, c                                       ; $77C8: $59
    ld b, [hl]                                    ; $77C9: $46
    cp [hl]                                       ; $77CA: $BE
    ld [hl], a                                    ; $77CB: $77
    ld c, l                                       ; $77CC: $4D
    ld b, $08                                     ; $77CD: $06 $08
    nop                                           ; $77CF: $00
    nop                                           ; $77D0: $00
    ld c, a                                       ; $77D1: $4F
    ld e, b                                       ; $77D2: $58
    ld a, b                                       ; $77D3: $78
    ld e, b                                       ; $77D4: $58
    and c                                         ; $77D5: $A1
    ld e, b                                       ; $77D6: $58
    ld b, [hl]                                    ; $77D7: $46
    call z, Call_011_4D77                         ; $77D8: $CC $77 $4D
    inc b                                         ; $77DB: $04
    ld [$FF00], sp                                ; $77DC: $08 $00 $FF
    dec l                                         ; $77DF: $2D
    ld e, c                                       ; $77E0: $59
    ld l, [hl]                                    ; $77E1: $6E
    ld e, c                                       ; $77E2: $59
    ld b, [hl]                                    ; $77E3: $46
    jp c, Jump_011_4D77                           ; $77E4: $DA $77 $4D

    inc b                                         ; $77E7: $04
    ld [$0100], sp                                ; $77E8: $08 $00 $01
    ldh [$59], a                                  ; $77EB: $E0 $59
    and a                                         ; $77ED: $A7
    ld e, c                                       ; $77EE: $59
    ld b, [hl]                                    ; $77EF: $46
    and $77                                       ; $77F0: $E6 $77
    ld c, l                                       ; $77F2: $4D
    inc b                                         ; $77F3: $04
    ld [$00FF], sp                                ; $77F4: $08 $FF $00
    sbc e                                         ; $77F7: $9B
    ld e, d                                       ; $77F8: $5A
    call c, Call_011_465A                         ; $77F9: $DC $5A $46
    ld a, [c]                                     ; $77FC: $F2
    ld [hl], a                                    ; $77FD: $77
    ld c, l                                       ; $77FE: $4D
    inc b                                         ; $77FF: $04
    ld [$0001], sp                                ; $7800: $08 $01 $00
    ld hl, $625A                                  ; $7803: $21 $5A $62
    ld e, d                                       ; $7806: $5A
    ld b, [hl]                                    ; $7807: $46
    cp $77                                        ; $7808: $FE $77
    ld c, l                                       ; $780A: $4D
    inc b                                         ; $780B: $04
    stop                                          ; $780C: $10 $00
    nop                                           ; $780E: $00
    dec l                                         ; $780F: $2D
    ld e, c                                       ; $7810: $59
    ld l, [hl]                                    ; $7811: $6E
    ld e, c                                       ; $7812: $59
    ld b, [hl]                                    ; $7813: $46
    ld a, [bc]                                    ; $7814: $0A
    ld a, b                                       ; $7815: $78
    ld c, l                                       ; $7816: $4D
    inc b                                         ; $7817: $04
    stop                                          ; $7818: $10 $00
    nop                                           ; $781A: $00
    ldh [$59], a                                  ; $781B: $E0 $59
    and a                                         ; $781D: $A7
    ld e, c                                       ; $781E: $59
    ld b, [hl]                                    ; $781F: $46
    ld d, $78                                     ; $7820: $16 $78
    ld c, l                                       ; $7822: $4D
    inc b                                         ; $7823: $04
    stop                                          ; $7824: $10 $00
    nop                                           ; $7826: $00
    sbc e                                         ; $7827: $9B
    ld e, d                                       ; $7828: $5A
    call c, Call_011_465A                         ; $7829: $DC $5A $46
    ld [hl+], a                                   ; $782C: $22
    ld a, b                                       ; $782D: $78
    ld c, l                                       ; $782E: $4D
    inc b                                         ; $782F: $04
    stop                                          ; $7830: $10 $00
    nop                                           ; $7832: $00
    ld hl, $625A                                  ; $7833: $21 $5A $62
    ld e, d                                       ; $7836: $5A
    ld b, [hl]                                    ; $7837: $46
    ld l, $78                                     ; $7838: $2E $78
    ld c, l                                       ; $783A: $4D
    inc b                                         ; $783B: $04
    stop                                          ; $783C: $10 $00
    nop                                           ; $783E: $00
    ld c, d                                       ; $783F: $4A
    ld h, c                                       ; $7840: $61
    bit 4, c                                      ; $7841: $CB $61
    ld b, [hl]                                    ; $7843: $46
    ld a, [hl-]                                   ; $7844: $3A
    ld a, b                                       ; $7845: $78
    ld c, l                                       ; $7846: $4D
    inc b                                         ; $7847: $04
    stop                                          ; $7848: $10 $00
    nop                                           ; $784A: $00
    xor a                                         ; $784B: $AF
    ld h, e                                       ; $784C: $63
    jr nc, @+$66                                  ; $784D: $30 $64

    ld b, [hl]                                    ; $784F: $46
    ld b, [hl]                                    ; $7850: $46
    ld a, b                                       ; $7851: $78
    ld c, l                                       ; $7852: $4D
    inc b                                         ; $7853: $04
    stop                                          ; $7854: $10 $00
    nop                                           ; $7856: $00
    push hl                                       ; $7857: $E5
    ld e, [hl]                                    ; $7858: $5E
    ld h, [hl]                                    ; $7859: $66
    ld e, a                                       ; $785A: $5F
    ld b, [hl]                                    ; $785B: $46
    ld d, d                                       ; $785C: $52
    ld a, b                                       ; $785D: $78
    ld c, l                                       ; $785E: $4D
    inc b                                         ; $785F: $04
    stop                                          ; $7860: $10 $00
    nop                                           ; $7862: $00
    add b                                         ; $7863: $80
    ld e, h                                       ; $7864: $5C
    ld bc, $465D                                  ; $7865: $01 $5D $46
    ld e, [hl]                                    ; $7868: $5E
    ld a, b                                       ; $7869: $78
    ld c, h                                       ; $786A: $4C
    ld [$FF00], sp                                ; $786B: $08 $00 $FF
    rst $18                                       ; $786E: $DF
    ld e, a                                       ; $786F: $5F
    inc c                                         ; $7870: $0C
    nop                                           ; $7871: $00
    cp $58                                        ; $7872: $FE $58
    ld h, b                                       ; $7874: $60
    ld b, $00                                     ; $7875: $06 $00
    cp $D1                                        ; $7877: $FE $D1
    ld h, b                                       ; $7879: $60
    ld b, $00                                     ; $787A: $06 $00
    rst $38                                       ; $787C: $FF
    pop de                                        ; $787D: $D1
    ld h, b                                       ; $787E: $60
    ld [$FF00], sp                                ; $787F: $08 $00 $FF
    ld c, d                                       ; $7882: $4A
    ld h, c                                       ; $7883: $61
    ld [$FF00], sp                                ; $7884: $08 $00 $FF
    bit 4, c                                      ; $7887: $CB $61
    nop                                           ; $7889: $00
    ld b, [hl]                                    ; $788A: $46
    ld l, d                                       ; $788B: $6A
    ld a, b                                       ; $788C: $78
    ld c, h                                       ; $788D: $4C
    ld [$0100], sp                                ; $788E: $08 $00 $01
    ld b, h                                       ; $7891: $44
    ld h, d                                       ; $7892: $62
    inc c                                         ; $7893: $0C
    nop                                           ; $7894: $00
    ld [bc], a                                    ; $7895: $02
    cp l                                          ; $7896: $BD
    ld h, d                                       ; $7897: $62
    ld b, $00                                     ; $7898: $06 $00
    ld [bc], a                                    ; $789A: $02
    ld [hl], $63                                  ; $789B: $36 $63
    ld b, $00                                     ; $789D: $06 $00
    ld bc, $6336                                  ; $789F: $01 $36 $63
    ld [$0100], sp                                ; $78A2: $08 $00 $01
    xor a                                         ; $78A5: $AF
    ld h, e                                       ; $78A6: $63
    ld [$0100], sp                                ; $78A7: $08 $00 $01
    jr nc, jr_011_7910                            ; $78AA: $30 $64

    nop                                           ; $78AC: $00
    ld b, [hl]                                    ; $78AD: $46
    adc l                                         ; $78AE: $8D
    ld a, b                                       ; $78AF: $78
    ld c, h                                       ; $78B0: $4C
    ld [$00FF], sp                                ; $78B1: $08 $FF $00
    ld a, d                                       ; $78B4: $7A
    ld e, l                                       ; $78B5: $5D
    inc c                                         ; $78B6: $0C
    cp $00                                        ; $78B7: $FE $00
    di                                            ; $78B9: $F3
    ld e, l                                       ; $78BA: $5D
    ld b, $FE                                     ; $78BB: $06 $FE
    nop                                           ; $78BD: $00
    ld l, h                                       ; $78BE: $6C
    ld e, [hl]                                    ; $78BF: $5E
    ld b, $FF                                     ; $78C0: $06 $FF
    nop                                           ; $78C2: $00
    ld l, h                                       ; $78C3: $6C
    ld e, [hl]                                    ; $78C4: $5E
    ld [$00FF], sp                                ; $78C5: $08 $FF $00
    push hl                                       ; $78C8: $E5
    ld e, [hl]                                    ; $78C9: $5E
    ld [$00FF], sp                                ; $78CA: $08 $FF $00
    ld h, [hl]                                    ; $78CD: $66
    ld e, a                                       ; $78CE: $5F
    nop                                           ; $78CF: $00
    ld b, [hl]                                    ; $78D0: $46
    or b                                          ; $78D1: $B0
    ld a, b                                       ; $78D2: $78
    ld c, h                                       ; $78D3: $4C
    ld [$0001], sp                                ; $78D4: $08 $01 $00
    dec d                                         ; $78D7: $15
    ld e, e                                       ; $78D8: $5B
    inc c                                         ; $78D9: $0C
    ld [bc], a                                    ; $78DA: $02
    nop                                           ; $78DB: $00
    adc [hl]                                      ; $78DC: $8E
    ld e, e                                       ; $78DD: $5B
    ld b, $02                                     ; $78DE: $06 $02
    nop                                           ; $78E0: $00
    rlca                                          ; $78E1: $07
    ld e, h                                       ; $78E2: $5C
    ld b, $01                                     ; $78E3: $06 $01
    nop                                           ; $78E5: $00
    rlca                                          ; $78E6: $07
    ld e, h                                       ; $78E7: $5C
    ld [$0001], sp                                ; $78E8: $08 $01 $00
    add b                                         ; $78EB: $80
    ld e, h                                       ; $78EC: $5C
    ld [$0001], sp                                ; $78ED: $08 $01 $00
    ld bc, $005D                                  ; $78F0: $01 $5D $00
    ld b, [hl]                                    ; $78F3: $46
    db $D3                                        ; $78F4: $D3
    ld a, b                                       ; $78F5: $78
    
    ; $78F6
INCLUDE "autogenerated/magiscript/boot/11_ObjectPressStart.mgi.asm"

    ld c, l                                       ; $790C: $4D
    ld [$0008], sp                                ; $790D: $08 $08 $00

jr_011_7910:
    nop                                           ; $7910: $00
    sub $64                                       ; $7911: $D6 $64
    db $DB                                        ; $7913: $DB
    ld h, h                                       ; $7914: $64
    db $EC                                        ; $7915: $EC
    ld h, h                                       ; $7916: $64
    dec c                                         ; $7917: $0D
    ld h, l                                       ; $7918: $65
    ld b, d                                       ; $7919: $42
    ld c, h                                       ; $791A: $4C
    rst $38                                       ; $791B: $FF
    nop                                           ; $791C: $00
    nop                                           ; $791D: $00
    ld l, e                                       ; $791E: $6B
    ld l, l                                       ; $791F: $6D
    nop                                           ; $7920: $00
    ld b, [hl]                                    ; $7921: $46
    ld a, [de]                                    ; $7922: $1A
    ld a, c                                       ; $7923: $79
    ld c, l                                       ; $7924: $4D
    inc c                                         ; $7925: $0C
    ld [rRAMG], sp                                ; $7926: $08 $00 $00
    ld l, e                                       ; $7929: $6B
    ld l, l                                       ; $792A: $6D
    ld a, h                                       ; $792B: $7C
    ld l, l                                       ; $792C: $6D
    adc l                                         ; $792D: $8D
    ld l, l                                       ; $792E: $6D
    and [hl]                                      ; $792F: $A6
    ld l, l                                       ; $7930: $6D
    rst $00                                       ; $7931: $C7
    ld l, l                                       ; $7932: $6D
    add sp, $6D                                   ; $7933: $E8 $6D
    ld b, d                                       ; $7935: $42
    ld c, l                                       ; $7936: $4D
    ld [$0008], sp                                ; $7937: $08 $08 $00
    nop                                           ; $793A: $00
    ld a, c                                       ; $793B: $79
    ld l, b                                       ; $793C: $68
    ld a, [hl]                                    ; $793D: $7E
    ld l, b                                       ; $793E: $68
    add e                                         ; $793F: $83
    ld l, b                                       ; $7940: $68
    ld a, [hl]                                    ; $7941: $7E
    ld l, b                                       ; $7942: $68
    ld b, [hl]                                    ; $7943: $46
    ld [hl], $79                                  ; $7944: $36 $79
    ld c, h                                       ; $7946: $4C
    rst $38                                       ; $7947: $FF
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    ld d, $6E                                     ; $794A: $16 $6E
    nop                                           ; $794C: $00
    ld b, [hl]                                    ; $794D: $46
    ld b, [hl]                                    ; $794E: $46
    ld a, c                                       ; $794F: $79
    ld c, h                                       ; $7950: $4C
    rst $38                                       ; $7951: $FF
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    cpl                                           ; $7954: $2F
    ld l, [hl]                                    ; $7955: $6E
    nop                                           ; $7956: $00
    ld b, [hl]                                    ; $7957: $46
    ld d, b                                       ; $7958: $50
    ld a, c                                       ; $7959: $79
    ld c, h                                       ; $795A: $4C
    rst $38                                       ; $795B: $FF
    nop                                           ; $795C: $00
    nop                                           ; $795D: $00
    ld c, b                                       ; $795E: $48
    ld l, [hl]                                    ; $795F: $6E
    nop                                           ; $7960: $00
    ld b, [hl]                                    ; $7961: $46
    ld e, d                                       ; $7962: $5A
    ld a, c                                       ; $7963: $79
    ld c, h                                       ; $7964: $4C
    rst $38                                       ; $7965: $FF
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    ld h, c                                       ; $7968: $61
    ld l, [hl]                                    ; $7969: $6E
    nop                                           ; $796A: $00
    ld b, [hl]                                    ; $796B: $46
    ld h, h                                       ; $796C: $64
    ld a, c                                       ; $796D: $79
    ld c, h                                       ; $796E: $4C
    rst $38                                       ; $796F: $FF
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    ld h, a                                       ; $7972: $67
    ld l, h                                       ; $7973: $6C
    nop                                           ; $7974: $00
    ld b, [hl]                                    ; $7975: $46
    ld l, [hl]                                    ; $7976: $6E
    ld a, c                                       ; $7977: $79
    ld c, h                                       ; $7978: $4C
    jr nz, jr_011_797B                            ; $7979: $20 $00

jr_011_797B:
    nop                                           ; $797B: $00
    ld a, b                                       ; $797C: $78
    ld l, h                                       ; $797D: $6C
    nop                                           ; $797E: $00
    ld c, l                                       ; $797F: $4D
    db $10                                        ; $7980: $10
    inc b                                         ; $7981: $04
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    sub c                                         ; $7984: $91
    ld l, h                                       ; $7985: $6C
    or [hl]                                       ; $7986: $B6
    ld l, h                                       ; $7987: $6C
    rst $08                                       ; $7988: $CF
    ld l, h                                       ; $7989: $6C
    ldh [$6C], a                                  ; $798A: $E0 $6C
    pop af                                        ; $798C: $F1
    ld l, h                                       ; $798D: $6C
    ld a, [bc]                                    ; $798E: $0A
    ld l, l                                       ; $798F: $6D
    rra                                           ; $7990: $1F
    ld l, l                                       ; $7991: $6D
    jr z, jr_011_7A01                             ; $7992: $28 $6D

    ld b, d                                       ; $7994: $42
    ld c, l                                       ; $7995: $4D
    jr jr_011_799A                                ; $7996: $18 $02

    nop                                           ; $7998: $00
    nop                                           ; $7999: $00

jr_011_799A:
    sub b                                         ; $799A: $90
    ld l, b                                       ; $799B: $68
    sub l                                         ; $799C: $95
    ld l, b                                       ; $799D: $68
    and [hl]                                      ; $799E: $A6
    ld l, b                                       ; $799F: $68
    xor a                                         ; $79A0: $AF
    ld l, b                                       ; $79A1: $68
    ret z                                         ; $79A2: $C8

    ld l, b                                       ; $79A3: $68
    jp hl                                         ; $79A4: $E9


    ld l, b                                       ; $79A5: $68
    ld a, [c]                                     ; $79A6: $F2
    ld l, b                                       ; $79A7: $68
    rrca                                          ; $79A8: $0F
    ld l, c                                       ; $79A9: $69
    jr jr_011_7A15                                ; $79AA: $18 $69

    ld hl, $3269                                  ; $79AC: $21 $69 $32
    ld l, c                                       ; $79AF: $69
    dec sp                                        ; $79B0: $3B
    ld l, c                                       ; $79B1: $69
    ld b, d                                       ; $79B2: $42
    ld c, l                                       ; $79B3: $4D
    ld a, [hl+]                                   ; $79B4: $2A
    ld bc, $0000                                  ; $79B5: $01 $00 $00
    sub b                                         ; $79B8: $90
    ld l, b                                       ; $79B9: $68
    and [hl]                                      ; $79BA: $A6
    ld l, b                                       ; $79BB: $68
    sub l                                         ; $79BC: $95
    ld l, b                                       ; $79BD: $68
    xor a                                         ; $79BE: $AF
    ld l, b                                       ; $79BF: $68
    and [hl]                                      ; $79C0: $A6
    ld l, b                                       ; $79C1: $68
    ret z                                         ; $79C2: $C8

    ld l, b                                       ; $79C3: $68
    xor a                                         ; $79C4: $AF
    ld l, b                                       ; $79C5: $68
    jp hl                                         ; $79C6: $E9


    ld l, b                                       ; $79C7: $68
    ret z                                         ; $79C8: $C8

    ld l, b                                       ; $79C9: $68
    ld a, [c]                                     ; $79CA: $F2
    ld l, b                                       ; $79CB: $68
    jp hl                                         ; $79CC: $E9


    ld l, b                                       ; $79CD: $68
    rrca                                          ; $79CE: $0F
    ld l, c                                       ; $79CF: $69
    ld a, [c]                                     ; $79D0: $F2
    ld l, b                                       ; $79D1: $68
    jr jr_011_7A3D                                ; $79D2: $18 $69

    rrca                                          ; $79D4: $0F
    ld l, c                                       ; $79D5: $69
    ld hl, $1869                                  ; $79D6: $21 $69 $18
    ld l, c                                       ; $79D9: $69
    ld [hl-], a                                   ; $79DA: $32
    ld l, c                                       ; $79DB: $69
    ld hl, $3B69                                  ; $79DC: $21 $69 $3B
    ld l, c                                       ; $79DF: $69
    ld [hl-], a                                   ; $79E0: $32
    ld l, c                                       ; $79E1: $69
    ld b, d                                       ; $79E2: $42
    ld c, l                                       ; $79E3: $4D
    ld a, [bc]                                    ; $79E4: $0A
    inc b                                         ; $79E5: $04
    nop                                           ; $79E6: $00
    nop                                           ; $79E7: $00
    ld d, b                                       ; $79E8: $50
    ld l, c                                       ; $79E9: $69
    ld d, l                                       ; $79EA: $55
    ld l, c                                       ; $79EB: $69
    ld e, [hl]                                    ; $79EC: $5E
    ld l, c                                       ; $79ED: $69
    add d                                         ; $79EE: $82
    ld l, c                                       ; $79EF: $69
    adc e                                         ; $79F0: $8B
    ld l, c                                       ; $79F1: $69
    ld b, d                                       ; $79F2: $42
    ld c, l                                       ; $79F3: $4D
    db $10                                        ; $79F4: $10
    inc b                                         ; $79F5: $04
    nop                                           ; $79F6: $00
    nop                                           ; $79F7: $00
    ld d, b                                       ; $79F8: $50
    ld l, c                                       ; $79F9: $69
    ld d, l                                       ; $79FA: $55
    ld l, c                                       ; $79FB: $69
    ld e, [hl]                                    ; $79FC: $5E
    ld l, c                                       ; $79FD: $69
    ld h, a                                       ; $79FE: $67
    ld l, c                                       ; $79FF: $69
    ld [hl], b                                    ; $7A00: $70

jr_011_7A01:
    ld l, c                                       ; $7A01: $69
    ld a, c                                       ; $7A02: $79
    ld l, c                                       ; $7A03: $69
    add d                                         ; $7A04: $82
    ld l, c                                       ; $7A05: $69
    adc e                                         ; $7A06: $8B
    ld l, c                                       ; $7A07: $69
    ld b, d                                       ; $7A08: $42
    ld c, l                                       ; $7A09: $4D
    db $10                                        ; $7A0A: $10
    inc b                                         ; $7A0B: $04
    nop                                           ; $7A0C: $00
    nop                                           ; $7A0D: $00
    ld d, b                                       ; $7A0E: $50
    ld l, c                                       ; $7A0F: $69
    ld d, l                                       ; $7A10: $55
    ld l, c                                       ; $7A11: $69
    ld e, [hl]                                    ; $7A12: $5E
    ld l, c                                       ; $7A13: $69
    sub b                                         ; $7A14: $90

jr_011_7A15:
    ld l, c                                       ; $7A15: $69
    and c                                         ; $7A16: $A1
    ld l, c                                       ; $7A17: $69
    or d                                          ; $7A18: $B2
    ld l, c                                       ; $7A19: $69
    add d                                         ; $7A1A: $82
    ld l, c                                       ; $7A1B: $69
    adc e                                         ; $7A1C: $8B
    ld l, c                                       ; $7A1D: $69
    ld b, d                                       ; $7A1E: $42
    ld c, l                                       ; $7A1F: $4D
    db $10                                        ; $7A20: $10
    inc b                                         ; $7A21: $04
    nop                                           ; $7A22: $00
    nop                                           ; $7A23: $00
    jp $0469                                      ; $7A24: $C3 $69 $04


    ld l, d                                       ; $7A27: $6A
    ld b, l                                       ; $7A28: $45
    ld l, d                                       ; $7A29: $6A
    add [hl]                                      ; $7A2A: $86
    ld l, d                                       ; $7A2B: $6A
    rst $00                                       ; $7A2C: $C7
    ld l, d                                       ; $7A2D: $6A
    ld [$496B], sp                                ; $7A2E: $08 $6B $49
    ld l, e                                       ; $7A31: $6B
    adc d                                         ; $7A32: $8A
    ld l, e                                       ; $7A33: $6B
    ld b, [hl]                                    ; $7A34: $46
    rra                                           ; $7A35: $1F
    ld a, d                                       ; $7A36: $7A
    ld c, h                                       ; $7A37: $4C
    rst $38                                       ; $7A38: $FF
    nop                                           ; $7A39: $00
    nop                                           ; $7A3A: $00
    cp [hl]                                       ; $7A3B: $BE
    ld l, [hl]                                    ; $7A3C: $6E

jr_011_7A3D:
    nop                                           ; $7A3D: $00
    ld b, [hl]                                    ; $7A3E: $46
    scf                                           ; $7A3F: $37
    ld a, d                                       ; $7A40: $7A
    ld c, h                                       ; $7A41: $4C
    add b                                         ; $7A42: $80
    nop                                           ; $7A43: $00
    nop                                           ; $7A44: $00
    ld a, d                                       ; $7A45: $7A
    ld l, [hl]                                    ; $7A46: $6E
    inc b                                         ; $7A47: $04
    nop                                           ; $7A48: $00
    nop                                           ; $7A49: $00
    adc e                                         ; $7A4A: $8B
    ld l, [hl]                                    ; $7A4B: $6E
    inc b                                         ; $7A4C: $04
    nop                                           ; $7A4D: $00
    nop                                           ; $7A4E: $00
    sbc h                                         ; $7A4F: $9C
    ld l, [hl]                                    ; $7A50: $6E
    inc b                                         ; $7A51: $04
    nop                                           ; $7A52: $00
    nop                                           ; $7A53: $00
    xor l                                         ; $7A54: $AD
    ld l, [hl]                                    ; $7A55: $6E
    nop                                           ; $7A56: $00
    ld b, [hl]                                    ; $7A57: $46
    ld b, c                                       ; $7A58: $41
    ld a, d                                       ; $7A59: $7A
    ld c, h                                       ; $7A5A: $4C
    rst $38                                       ; $7A5B: $FF
    nop                                           ; $7A5C: $00
    nop                                           ; $7A5D: $00
    add sp, $6E                                   ; $7A5E: $E8 $6E
    nop                                           ; $7A60: $00
    ld b, [hl]                                    ; $7A61: $46
    ld e, d                                       ; $7A62: $5A
    ld a, d                                       ; $7A63: $7A
    ld c, h                                       ; $7A64: $4C
    rst $38                                       ; $7A65: $FF
    nop                                           ; $7A66: $00
    nop                                           ; $7A67: $00
    db $DB                                        ; $7A68: $DB
    ld l, [hl]                                    ; $7A69: $6E
    nop                                           ; $7A6A: $00
    ld b, [hl]                                    ; $7A6B: $46

jr_011_7A6C:
    ld h, h                                       ; $7A6C: $64
    ld a, d                                       ; $7A6D: $7A
    ld sp, hl                                     ; $7A6E: $F9
    ei                                            ; $7A6F: $FB
    ld [bc], a                                    ; $7A70: $02
    ld b, b                                       ; $7A71: $40
    jp hl                                         ; $7A72: $E9


    ei                                            ; $7A73: $FB
    ld [bc], a                                    ; $7A74: $02
    nop                                           ; $7A75: $00
    pop af                                        ; $7A76: $F1
    inc bc                                        ; $7A77: $03
    nop                                           ; $7A78: $00
    jr nz, jr_011_7A6C                            ; $7A79: $20 $F1

    ei                                            ; $7A7B: $FB
    ld bc, $F100                                  ; $7A7C: $01 $00 $F1
    di                                            ; $7A7F: $F3
    nop                                           ; $7A80: $00
    nop                                           ; $7A81: $00
    add b                                         ; $7A82: $80
    pop af                                        ; $7A83: $F1
    ei                                            ; $7A84: $FB

jr_011_7A85:
    inc bc                                        ; $7A85: $03
    nop                                           ; $7A86: $00
    add b                                         ; $7A87: $80
    db $F4                                        ; $7A88: $F4
    rst $38                                       ; $7A89: $FF
    inc b                                         ; $7A8A: $04
    ld h, b                                       ; $7A8B: $60
    db $EC                                        ; $7A8C: $EC
    rst $38                                       ; $7A8D: $FF
    inc b                                         ; $7A8E: $04
    jr nz, jr_011_7A85                            ; $7A8F: $20 $F4

    rst $30                                       ; $7A91: $F7
    inc b                                         ; $7A92: $04
    ld b, b                                       ; $7A93: $40
    db $EC                                        ; $7A94: $EC
    rst $30                                       ; $7A95: $F7
    inc b                                         ; $7A96: $04
    nop                                           ; $7A97: $00
    add b                                         ; $7A98: $80
    pop af                                        ; $7A99: $F1
    ld hl, sp+$08                                 ; $7A9A: $F8 $08
    nop                                           ; $7A9C: $00
    pop af                                        ; $7A9D: $F1
    ld [$2007], sp                                ; $7A9E: $08 $07 $20
    pop af                                        ; $7AA1: $F1
    ldh a, [rTAC]                                 ; $7AA2: $F0 $07
    nop                                           ; $7AA4: $00
    pop af                                        ; $7AA5: $F1
    nop                                           ; $7AA6: $00
    ld [$F900], sp                                ; $7AA7: $08 $00 $F9
    nop                                           ; $7AAA: $00
    ld b, $60                                     ; $7AAB: $06 $60
    ld sp, hl                                     ; $7AAD: $F9
    ld [$6005], sp                                ; $7AAE: $08 $05 $60
    ld sp, hl                                     ; $7AB1: $F9
    ld hl, sp+$06                                 ; $7AB2: $F8 $06
    ld b, b                                       ; $7AB4: $40
    ld sp, hl                                     ; $7AB5: $F9
    ldh a, [rTIMA]                                ; $7AB6: $F0 $05
    ld b, b                                       ; $7AB8: $40
    jp hl                                         ; $7AB9: $E9


    nop                                           ; $7ABA: $00
    ld b, $20                                     ; $7ABB: $06 $20
    jp hl                                         ; $7ABD: $E9


    ld [$2005], sp                                ; $7ABE: $08 $05 $20
    jp hl                                         ; $7AC1: $E9


    ld hl, sp+$06                                 ; $7AC2: $F8 $06
    nop                                           ; $7AC4: $00
    jp hl                                         ; $7AC5: $E9


    ldh a, [rTIMA]                                ; $7AC6: $F0 $05
    nop                                           ; $7AC8: $00
    add b                                         ; $7AC9: $80
    ld sp, hl                                     ; $7ACA: $F9
    db $FC                                        ; $7ACB: $FC
    dec bc                                        ; $7ACC: $0B
    nop                                           ; $7ACD: $00
    jp hl                                         ; $7ACE: $E9


    db $FC                                        ; $7ACF: $FC

jr_011_7AD0:
    dec bc                                        ; $7AD0: $0B
    nop                                           ; $7AD1: $00
    pop af                                        ; $7AD2: $F1
    inc bc                                        ; $7AD3: $03

jr_011_7AD4:
    dec bc                                        ; $7AD4: $0B
    jr nz, jr_011_7AD0                            ; $7AD5: $20 $F9

    inc bc                                        ; $7AD7: $03
    add hl, bc                                    ; $7AD8: $09
    ld h, b                                       ; $7AD9: $60
    ld sp, hl                                     ; $7ADA: $F9
    or $09                                        ; $7ADB: $F6 $09
    ld b, b                                       ; $7ADD: $40
    jp hl                                         ; $7ADE: $E9


    inc b                                         ; $7ADF: $04

jr_011_7AE0:
    add hl, bc                                    ; $7AE0: $09
    jr nz, jr_011_7AD4                            ; $7AE1: $20 $F1

    or $0B                                        ; $7AE3: $F6 $0B
    nop                                           ; $7AE5: $00
    pop af                                        ; $7AE6: $F1
    db $FD                                        ; $7AE7: $FD
    dec bc                                        ; $7AE8: $0B
    ld b, b                                       ; $7AE9: $40
    pop af                                        ; $7AEA: $F1
    dec bc                                        ; $7AEB: $0B
    ld a, [bc]                                    ; $7AEC: $0A
    jr nz, jr_011_7AE0                            ; $7AED: $20 $F1

    xor $0A                                       ; $7AEF: $EE $0A

jr_011_7AF1:
    nop                                           ; $7AF1: $00
    jp hl                                         ; $7AF2: $E9


    db $F4                                        ; $7AF3: $F4
    add hl, bc                                    ; $7AF4: $09
    nop                                           ; $7AF5: $00
    add b                                         ; $7AF6: $80
    pop af                                        ; $7AF7: $F1
    inc b                                         ; $7AF8: $04
    rrca                                          ; $7AF9: $0F
    ld b, b                                       ; $7AFA: $40
    ld sp, hl                                     ; $7AFB: $F9
    db $FC                                        ; $7AFC: $FC
    dec c                                         ; $7AFD: $0D
    ld b, b                                       ; $7AFE: $40
    jp hl                                         ; $7AFF: $E9


    db $FC                                        ; $7B00: $FC
    dec c                                         ; $7B01: $0D
    nop                                           ; $7B02: $00
    ld sp, hl                                     ; $7B03: $F9
    inc b                                         ; $7B04: $04
    db $10                                        ; $7B05: $10
    jr nz, jr_011_7AF1                            ; $7B06: $20 $E9

    inc b                                         ; $7B08: $04
    db $10                                        ; $7B09: $10
    ld h, b                                       ; $7B0A: $60
    jp hl                                         ; $7B0B: $E9


    db $F4                                        ; $7B0C: $F4
    db $10                                        ; $7B0D: $10
    ld b, b                                       ; $7B0E: $40
    ld sp, hl                                     ; $7B0F: $F9
    db $F4                                        ; $7B10: $F4
    stop                                          ; $7B11: $10 $00
    pop af                                        ; $7B13: $F1
    inc c                                         ; $7B14: $0C
    ld c, $20                                     ; $7B15: $0E $20
    pop af                                        ; $7B17: $F1
    db $EC                                        ; $7B18: $EC
    ld c, $00                                     ; $7B19: $0E $00
    pop af                                        ; $7B1B: $F1
    db $FC                                        ; $7B1C: $FC
    rrca                                          ; $7B1D: $0F
    nop                                           ; $7B1E: $00
    pop af                                        ; $7B1F: $F1
    db $F4                                        ; $7B20: $F4
    rrca                                          ; $7B21: $0F
    nop                                           ; $7B22: $00
    add b                                         ; $7B23: $80
    pop af                                        ; $7B24: $F1
    inc bc                                        ; $7B25: $03
    inc de                                        ; $7B26: $13
    jr nz, @-$15                                  ; $7B27: $20 $E9

    inc b                                         ; $7B29: $04
    inc d                                         ; $7B2A: $14
    ld h, b                                       ; $7B2B: $60
    jp hl                                         ; $7B2C: $E9


    db $FC                                        ; $7B2D: $FC
    inc d                                         ; $7B2E: $14
    ld h, b                                       ; $7B2F: $60
    jp hl                                         ; $7B30: $E9


    db $F4                                        ; $7B31: $F4
    inc d                                         ; $7B32: $14
    ld b, b                                       ; $7B33: $40
    ld sp, hl                                     ; $7B34: $F9
    inc b                                         ; $7B35: $04

jr_011_7B36:
    inc d                                         ; $7B36: $14
    nop                                           ; $7B37: $00
    ld sp, hl                                     ; $7B38: $F9
    db $FC                                        ; $7B39: $FC
    inc d                                         ; $7B3A: $14
    jr nz, jr_011_7B36                            ; $7B3B: $20 $F9

    db $F4                                        ; $7B3D: $F4

jr_011_7B3E:
    inc d                                         ; $7B3E: $14
    nop                                           ; $7B3F: $00
    pop af                                        ; $7B40: $F1
    db $FC                                        ; $7B41: $FC
    inc de                                        ; $7B42: $13
    ld b, b                                       ; $7B43: $40
    pop af                                        ; $7B44: $F1
    db $F4                                        ; $7B45: $F4
    inc de                                        ; $7B46: $13
    nop                                           ; $7B47: $00
    pop af                                        ; $7B48: $F1
    inc c                                         ; $7B49: $0C
    ld [de], a                                    ; $7B4A: $12
    jr nz, jr_011_7B3E                            ; $7B4B: $20 $F1

    db $EC                                        ; $7B4D: $EC
    ld [de], a                                    ; $7B4E: $12
    nop                                           ; $7B4F: $00
    add b                                         ; $7B50: $80
    ld sp, hl                                     ; $7B51: $F9
    ld hl, sp+$17                                 ; $7B52: $F8 $17
    nop                                           ; $7B54: $00
    pop af                                        ; $7B55: $F1
    ld [$0017], sp                                ; $7B56: $08 $17 $00
    pop af                                        ; $7B59: $F1
    ldh a, [rNR22]                                ; $7B5A: $F0 $17
    nop                                           ; $7B5C: $00
    pop af                                        ; $7B5D: $F1
    nop                                           ; $7B5E: $00
    rla                                           ; $7B5F: $17
    nop                                           ; $7B60: $00
    pop af                                        ; $7B61: $F1
    ld hl, sp+$16                                 ; $7B62: $F8 $16
    nop                                           ; $7B64: $00
    jp hl                                         ; $7B65: $E9


    nop                                           ; $7B66: $00
    ld d, $00                                     ; $7B67: $16 $00
    ld sp, hl                                     ; $7B69: $F9
    nop                                           ; $7B6A: $00
    dec d                                         ; $7B6B: $15
    nop                                           ; $7B6C: $00
    jp hl                                         ; $7B6D: $E9


    ld hl, sp+$15                                 ; $7B6E: $F8 $15
    nop                                           ; $7B70: $00
    add b                                         ; $7B71: $80
    ei                                            ; $7B72: $FB
    ld hl, sp+$17                                 ; $7B73: $F8 $17
    nop                                           ; $7B75: $00
    di                                            ; $7B76: $F3
    nop                                           ; $7B77: $00
    rla                                           ; $7B78: $17
    nop                                           ; $7B79: $00
    di                                            ; $7B7A: $F3
    ld hl, sp+$16                                 ; $7B7B: $F8 $16
    nop                                           ; $7B7D: $00
    ei                                            ; $7B7E: $FB
    nop                                           ; $7B7F: $00
    dec d                                         ; $7B80: $15
    nop                                           ; $7B81: $00
    db $EB                                        ; $7B82: $EB
    ld hl, sp+$15                                 ; $7B83: $F8 $15
    nop                                           ; $7B85: $00
    add b                                         ; $7B86: $80
    di                                            ; $7B87: $F3
    rst $38                                       ; $7B88: $FF
    ld bc, $F000                                  ; $7B89: $01 $00 $F0
    ld hl, sp+$00                                 ; $7B8C: $F8 $00
    nop                                           ; $7B8E: $00
    add b                                         ; $7B8F: $80
    pop af                                        ; $7B90: $F1
    or $01                                        ; $7B91: $F6 $01
    nop                                           ; $7B93: $00
    ld a, [c]                                     ; $7B94: $F2
    ei                                            ; $7B95: $FB
    nop                                           ; $7B96: $00
    ld h, b                                       ; $7B97: $60
    add b                                         ; $7B98: $80
    nop                                           ; $7B99: $00
    db $FC                                        ; $7B9A: $FC
    ld [bc], a                                    ; $7B9B: $02
    ld b, a                                       ; $7B9C: $47
    ld hl, sp-$04                                 ; $7B9D: $F8 $FC
    inc bc                                        ; $7B9F: $03
    ld b, a                                       ; $7BA0: $47
    add b                                         ; $7BA1: $80
    nop                                           ; $7BA2: $00
    db $FC                                        ; $7BA3: $FC
    ld [bc], a                                    ; $7BA4: $02
    ld b, a                                       ; $7BA5: $47
    ld hl, sp-$04                                 ; $7BA6: $F8 $FC
    inc bc                                        ; $7BA8: $03
    ld h, a                                       ; $7BA9: $67
    add b                                         ; $7BAA: $80
    ld hl, sp-$04                                 ; $7BAB: $F8 $FC
    ld [bc], a                                    ; $7BAD: $02
    rlca                                          ; $7BAE: $07
    nop                                           ; $7BAF: $00
    db $FC                                        ; $7BB0: $FC
    inc bc                                        ; $7BB1: $03
    rlca                                          ; $7BB2: $07
    add b                                         ; $7BB3: $80
    ld hl, sp-$04                                 ; $7BB4: $F8 $FC
    ld [bc], a                                    ; $7BB6: $02
    rlca                                          ; $7BB7: $07
    nop                                           ; $7BB8: $00
    db $FC                                        ; $7BB9: $FC
    inc bc                                        ; $7BBA: $03
    daa                                           ; $7BBB: $27
    add b                                         ; $7BBC: $80
    ld hl, sp-$08                                 ; $7BBD: $F8 $F8
    nop                                           ; $7BBF: $00
    rlca                                          ; $7BC0: $07
    ld hl, sp+$00                                 ; $7BC1: $F8 $00
    ld bc, $8007                                  ; $7BC3: $01 $07 $80
    ld hl, sp-$08                                 ; $7BC6: $F8 $F8
    nop                                           ; $7BC8: $00
    ld b, a                                       ; $7BC9: $47
    ld hl, sp+$00                                 ; $7BCA: $F8 $00
    ld bc, $8007                                  ; $7BCC: $01 $07 $80
    ld hl, sp+$00                                 ; $7BCF: $F8 $00
    nop                                           ; $7BD1: $00
    daa                                           ; $7BD2: $27
    ld hl, sp-$08                                 ; $7BD3: $F8 $F8
    ld bc, $8027                                  ; $7BD5: $01 $27 $80
    ld hl, sp+$00                                 ; $7BD8: $F8 $00
    nop                                           ; $7BDA: $00
    ld h, a                                       ; $7BDB: $67
    ld hl, sp-$08                                 ; $7BDC: $F8 $F8
    ld bc, $8027                                  ; $7BDE: $01 $27 $80
    nop                                           ; $7BE1: $00
    ld hl, sp+$00                                 ; $7BE2: $F8 $00
    jr nz, jr_011_7BE6                            ; $7BE4: $20 $00

jr_011_7BE6:
    nop                                           ; $7BE6: $00
    nop                                           ; $7BE7: $00
    nop                                           ; $7BE8: $00
    add b                                         ; $7BE9: $80
    nop                                           ; $7BEA: $00
    ld hl, sp+$01                                 ; $7BEB: $F8 $01
    jr nz, jr_011_7BEF                            ; $7BED: $20 $00

jr_011_7BEF:
    nop                                           ; $7BEF: $00
    ld bc, $8000                                  ; $7BF0: $01 $00 $80
    nop                                           ; $7BF3: $00
    ld hl, sp+$03                                 ; $7BF4: $F8 $03
    jr nz, jr_011_7BF8                            ; $7BF6: $20 $00

jr_011_7BF8:
    nop                                           ; $7BF8: $00
    inc bc                                        ; $7BF9: $03
    nop                                           ; $7BFA: $00
    ld hl, sp-$08                                 ; $7BFB: $F8 $F8
    ld [bc], a                                    ; $7BFD: $02
    jr nz, jr_011_7BF8                            ; $7BFE: $20 $F8

    nop                                           ; $7C00: $00
    ld [bc], a                                    ; $7C01: $02
    nop                                           ; $7C02: $00
    add b                                         ; $7C03: $80
    nop                                           ; $7C04: $00
    ld hl, sp+$06                                 ; $7C05: $F8 $06
    jr nz, jr_011_7C09                            ; $7C07: $20 $00

jr_011_7C09:
    nop                                           ; $7C09: $00
    ld b, $00                                     ; $7C0A: $06 $00
    ld hl, sp-$08                                 ; $7C0C: $F8 $F8
    dec b                                         ; $7C0E: $05
    jr nz, jr_011_7C09                            ; $7C0F: $20 $F8

    nop                                           ; $7C11: $00
    dec b                                         ; $7C12: $05
    nop                                           ; $7C13: $00
    ldh a, [$F8]                                  ; $7C14: $F0 $F8
    inc b                                         ; $7C16: $04
    jr nz, jr_011_7C09                            ; $7C17: $20 $F0

    nop                                           ; $7C19: $00
    inc b                                         ; $7C1A: $04
    nop                                           ; $7C1B: $00
    add b                                         ; $7C1C: $80
    nop                                           ; $7C1D: $00
    ld hl, sp+$09                                 ; $7C1E: $F8 $09
    jr nz, jr_011_7C22                            ; $7C20: $20 $00

jr_011_7C22:
    nop                                           ; $7C22: $00
    add hl, bc                                    ; $7C23: $09
    nop                                           ; $7C24: $00
    ld hl, sp-$08                                 ; $7C25: $F8 $F8
    ld [$F820], sp                                ; $7C27: $08 $20 $F8
    nop                                           ; $7C2A: $00
    ld [$F000], sp                                ; $7C2B: $08 $00 $F0
    ld hl, sp+$07                                 ; $7C2E: $F8 $07
    jr nz, jr_011_7C22                            ; $7C30: $20 $F0

    nop                                           ; $7C32: $00
    rlca                                          ; $7C33: $07
    nop                                           ; $7C34: $00
    add b                                         ; $7C35: $80
    ldh a, [rP1]                                  ; $7C36: $F0 $00
    ld c, $00                                     ; $7C38: $0E $00
    ld hl, sp-$08                                 ; $7C3A: $F8 $F8
    ld c, $20                                     ; $7C3C: $0E $20
    ldh a, [$F8]                                  ; $7C3E: $F0 $F8
    dec c                                         ; $7C40: $0D
    nop                                           ; $7C41: $00
    ld hl, sp+$00                                 ; $7C42: $F8 $00
    dec c                                         ; $7C44: $0D
    nop                                           ; $7C45: $00
    nop                                           ; $7C46: $00
    nop                                           ; $7C47: $00
    inc c                                         ; $7C48: $0C
    jr nz, jr_011_7C4B                            ; $7C49: $20 $00

jr_011_7C4B:
    ld hl, sp+$0C                                 ; $7C4B: $F8 $0C
    nop                                           ; $7C4D: $00
    add b                                         ; $7C4E: $80
    ld hl, sp+$00                                 ; $7C4F: $F8 $00
    ld c, $00                                     ; $7C51: $0E $00
    nop                                           ; $7C53: $00
    ld hl, sp+$0E                                 ; $7C54: $F8 $0E
    nop                                           ; $7C56: $00
    nop                                           ; $7C57: $00
    nop                                           ; $7C58: $00
    dec c                                         ; $7C59: $0D
    nop                                           ; $7C5A: $00
    ld hl, sp-$08                                 ; $7C5B: $F8 $F8
    dec c                                         ; $7C5D: $0D
    nop                                           ; $7C5E: $00
    add b                                         ; $7C5F: $80
    nop                                           ; $7C60: $00
    db $FD                                        ; $7C61: $FD
    ld c, $00                                     ; $7C62: $0E $00
    add b                                         ; $7C64: $80
    nop                                           ; $7C65: $00
    ld hl, sp+$00                                 ; $7C66: $F8 $00
    ld h, $00                                     ; $7C68: $26 $00
    nop                                           ; $7C6A: $00
    nop                                           ; $7C6B: $00
    ld b, $80                                     ; $7C6C: $06 $80
    nop                                           ; $7C6E: $00
    ld hl, sp+$01                                 ; $7C6F: $F8 $01
    ld h, $00                                     ; $7C71: $26 $00
    nop                                           ; $7C73: $00
    ld bc, $8006                                  ; $7C74: $01 $06 $80
    nop                                           ; $7C77: $00
    ld hl, sp+$03                                 ; $7C78: $F8 $03
    ld h, $00                                     ; $7C7A: $26 $00
    nop                                           ; $7C7C: $00
    inc bc                                        ; $7C7D: $03
    ld b, $F8                                     ; $7C7E: $06 $F8
    ld hl, sp+$02                                 ; $7C80: $F8 $02
    ld h, $F8                                     ; $7C82: $26 $F8
    nop                                           ; $7C84: $00
    ld [bc], a                                    ; $7C85: $02
    ld b, $80                                     ; $7C86: $06 $80
    nop                                           ; $7C88: $00
    ld hl, sp+$06                                 ; $7C89: $F8 $06
    ld h, $00                                     ; $7C8B: $26 $00
    nop                                           ; $7C8D: $00
    ld b, $06                                     ; $7C8E: $06 $06
    ld hl, sp-$08                                 ; $7C90: $F8 $F8
    dec b                                         ; $7C92: $05
    ld h, $F8                                     ; $7C93: $26 $F8
    nop                                           ; $7C95: $00
    dec b                                         ; $7C96: $05
    ld b, $F0                                     ; $7C97: $06 $F0
    ld hl, sp+$04                                 ; $7C99: $F8 $04
    ld h, $F0                                     ; $7C9B: $26 $F0
    nop                                           ; $7C9D: $00
    inc b                                         ; $7C9E: $04
    ld b, $80                                     ; $7C9F: $06 $80
    nop                                           ; $7CA1: $00
    ld hl, sp+$09                                 ; $7CA2: $F8 $09
    ld h, $00                                     ; $7CA4: $26 $00
    nop                                           ; $7CA6: $00
    add hl, bc                                    ; $7CA7: $09
    ld b, $F8                                     ; $7CA8: $06 $F8
    ld hl, sp+$08                                 ; $7CAA: $F8 $08
    ld h, $F8                                     ; $7CAC: $26 $F8
    nop                                           ; $7CAE: $00
    ld [$F006], sp                                ; $7CAF: $08 $06 $F0
    ld hl, sp+$07                                 ; $7CB2: $F8 $07
    ld h, $F0                                     ; $7CB4: $26 $F0
    nop                                           ; $7CB6: $00
    rlca                                          ; $7CB7: $07
    ld b, $80                                     ; $7CB8: $06 $80
    ldh a, [rP1]                                  ; $7CBA: $F0 $00
    ld c, $06                                     ; $7CBC: $0E $06
    ld hl, sp-$08                                 ; $7CBE: $F8 $F8
    ld c, $26                                     ; $7CC0: $0E $26
    ldh a, [$F8]                                  ; $7CC2: $F0 $F8
    dec c                                         ; $7CC4: $0D
    ld b, $F8                                     ; $7CC5: $06 $F8
    nop                                           ; $7CC7: $00
    dec c                                         ; $7CC8: $0D
    ld b, $00                                     ; $7CC9: $06 $00
    nop                                           ; $7CCB: $00
    inc c                                         ; $7CCC: $0C
    ld h, $00                                     ; $7CCD: $26 $00
    ld hl, sp+$0C                                 ; $7CCF: $F8 $0C
    ld b, $80                                     ; $7CD1: $06 $80
    ld hl, sp+$00                                 ; $7CD3: $F8 $00
    ld c, $06                                     ; $7CD5: $0E $06
    nop                                           ; $7CD7: $00
    ld hl, sp+$0E                                 ; $7CD8: $F8 $0E
    ld b, $00                                     ; $7CDA: $06 $00
    nop                                           ; $7CDC: $00
    dec c                                         ; $7CDD: $0D
    ld b, $F8                                     ; $7CDE: $06 $F8
    ld hl, sp+$0D                                 ; $7CE0: $F8 $0D
    ld b, $80                                     ; $7CE2: $06 $80
    nop                                           ; $7CE4: $00
    db $FD                                        ; $7CE5: $FD
    ld c, $06                                     ; $7CE6: $0E $06
    add b                                         ; $7CE8: $80
    ld c, l                                       ; $7CE9: $4D
    inc b                                         ; $7CEA: $04
    inc b                                         ; $7CEB: $04
    nop                                           ; $7CEC: $00
    nop                                           ; $7CED: $00
    add a                                         ; $7CEE: $87
    ld a, e                                       ; $7CEF: $7B
    sub b                                         ; $7CF0: $90
    ld a, e                                       ; $7CF1: $7B
    ld b, [hl]                                    ; $7CF2: $46
    jp hl                                         ; $7CF3: $E9


    ld a, h                                       ; $7CF4: $7C
    ld c, l                                       ; $7CF5: $4D
    inc b                                         ; $7CF6: $04
    inc b                                         ; $7CF7: $04
    nop                                           ; $7CF8: $00
    cp $87                                        ; $7CF9: $FE $87
    ld a, e                                       ; $7CFB: $7B
    sub b                                         ; $7CFC: $90
    ld a, e                                       ; $7CFD: $7B
    ld b, [hl]                                    ; $7CFE: $46
    push af                                       ; $7CFF: $F5
    ld a, h                                       ; $7D00: $7C
    ld c, l                                       ; $7D01: $4D
    inc b                                         ; $7D02: $04
    inc b                                         ; $7D03: $04
    nop                                           ; $7D04: $00
    ld [bc], a                                    ; $7D05: $02
    add a                                         ; $7D06: $87
    ld a, e                                       ; $7D07: $7B
    sub b                                         ; $7D08: $90
    ld a, e                                       ; $7D09: $7B
    ld b, [hl]                                    ; $7D0A: $46
    ld bc, $4D7D                                  ; $7D0B: $01 $7D $4D
    inc b                                         ; $7D0E: $04
    inc b                                         ; $7D0F: $04
    cp $00                                        ; $7D10: $FE $00
    add a                                         ; $7D12: $87
    ld a, e                                       ; $7D13: $7B
    sub b                                         ; $7D14: $90
    ld a, e                                       ; $7D15: $7B
    ld b, [hl]                                    ; $7D16: $46
    dec c                                         ; $7D17: $0D
    ld a, l                                       ; $7D18: $7D
    ld c, l                                       ; $7D19: $4D
    inc b                                         ; $7D1A: $04
    inc b                                         ; $7D1B: $04
    ld [bc], a                                    ; $7D1C: $02
    nop                                           ; $7D1D: $00
    add a                                         ; $7D1E: $87
    ld a, e                                       ; $7D1F: $7B
    sub b                                         ; $7D20: $90
    ld a, e                                       ; $7D21: $7B
    ld b, [hl]                                    ; $7D22: $46
    add hl, de                                    ; $7D23: $19
    ld a, l                                       ; $7D24: $7D
    ld c, l                                       ; $7D25: $4D
    db $10                                        ; $7D26: $10
    ld [rRAMG], sp                                ; $7D27: $08 $00 $00
    pop hl                                        ; $7D2A: $E1
    ld a, e                                       ; $7D2B: $7B
    ld [$F37B], a                                 ; $7D2C: $EA $7B $F3
    ld a, e                                       ; $7D2F: $7B
    inc b                                         ; $7D30: $04
    ld a, h                                       ; $7D31: $7C
    dec e                                         ; $7D32: $1D
    ld a, h                                       ; $7D33: $7C
    ld [hl], $7C                                  ; $7D34: $36 $7C
    ld c, a                                       ; $7D36: $4F
    ld a, h                                       ; $7D37: $7C
    ld h, b                                       ; $7D38: $60
    ld a, h                                       ; $7D39: $7C
    ld b, d                                       ; $7D3A: $42
    ld c, l                                       ; $7D3B: $4D
    db $10                                        ; $7D3C: $10
    ld [rRAMG], sp                                ; $7D3D: $08 $00 $00
    ld h, l                                       ; $7D40: $65
    ld a, h                                       ; $7D41: $7C
    ld l, [hl]                                    ; $7D42: $6E
    ld a, h                                       ; $7D43: $7C
    ld [hl], a                                    ; $7D44: $77
    ld a, h                                       ; $7D45: $7C
    adc b                                         ; $7D46: $88
    ld a, h                                       ; $7D47: $7C
    and c                                         ; $7D48: $A1
    ld a, h                                       ; $7D49: $7C
    cp d                                          ; $7D4A: $BA
    ld a, h                                       ; $7D4B: $7C
    db $D3                                        ; $7D4C: $D3
    ld a, h                                       ; $7D4D: $7C
    db $E4                                        ; $7D4E: $E4
    ld a, h                                       ; $7D4F: $7C
    ld b, d                                       ; $7D50: $42
    ld c, l                                       ; $7D51: $4D
    ld [de], a                                    ; $7D52: $12
    ld [rRAMG], sp                                ; $7D53: $08 $00 $00
    ld l, [hl]                                    ; $7D56: $6E
    ld a, d                                       ; $7D57: $7A
    add e                                         ; $7D58: $83
    ld a, d                                       ; $7D59: $7A
    adc b                                         ; $7D5A: $88
    ld a, d                                       ; $7D5B: $7A
    sbc c                                         ; $7D5C: $99
    ld a, d                                       ; $7D5D: $7A
    jp z, $F77A                                   ; $7D5E: $CA $7A $F7

    ld a, d                                       ; $7D61: $7A
    inc h                                         ; $7D62: $24
    ld a, e                                       ; $7D63: $7B
    ld d, c                                       ; $7D64: $51
    ld a, e                                       ; $7D65: $7B
    ld [hl], d                                    ; $7D66: $72
    ld a, e                                       ; $7D67: $7B
    ld b, d                                       ; $7D68: $42
    ld c, l                                       ; $7D69: $4D
    inc b                                         ; $7D6A: $04
    inc b                                         ; $7D6B: $04
    cp $00                                        ; $7D6C: $FE $00
    rst $08                                       ; $7D6E: $CF
    ld a, e                                       ; $7D6F: $7B
    ret c                                         ; $7D70: $D8

    ld a, e                                       ; $7D71: $7B
    ld b, [hl]                                    ; $7D72: $46
    ld l, c                                       ; $7D73: $69
    ld a, l                                       ; $7D74: $7D
    ld c, l                                       ; $7D75: $4D
    inc b                                         ; $7D76: $04
    inc b                                         ; $7D77: $04
    ld [bc], a                                    ; $7D78: $02
    nop                                           ; $7D79: $00
    cp l                                          ; $7D7A: $BD
    ld a, e                                       ; $7D7B: $7B
    add $7B                                       ; $7D7C: $C6 $7B
    ld b, [hl]                                    ; $7D7E: $46
    ld [hl], l                                    ; $7D7F: $75
    ld a, l                                       ; $7D80: $7D
    ld c, l                                       ; $7D81: $4D
    inc b                                         ; $7D82: $04
    inc b                                         ; $7D83: $04
    nop                                           ; $7D84: $00
    cp $AB                                        ; $7D85: $FE $AB
    ld a, e                                       ; $7D87: $7B
    or h                                          ; $7D88: $B4
    ld a, e                                       ; $7D89: $7B
    ld b, [hl]                                    ; $7D8A: $46
    add c                                         ; $7D8B: $81
    ld a, l                                       ; $7D8C: $7D
    ld c, l                                       ; $7D8D: $4D
    inc b                                         ; $7D8E: $04
    inc b                                         ; $7D8F: $04
    nop                                           ; $7D90: $00
    ld [bc], a                                    ; $7D91: $02
    sbc c                                         ; $7D92: $99
    ld a, e                                       ; $7D93: $7B
    and d                                         ; $7D94: $A2
    ld a, e                                       ; $7D95: $7B
    ld b, [hl]                                    ; $7D96: $46
    adc l                                         ; $7D97: $8D
    ld a, l                                       ; $7D98: $7D
    nop                                           ; $7D99: $00
    nop                                           ; $7D9A: $00
    nop                                           ; $7D9B: $00
    nop                                           ; $7D9C: $00
   