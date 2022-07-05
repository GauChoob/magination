SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    ldh a, [$F8]                                  ; $4000: $F0 $F8
    nop                                           ; $4002: $00
    inc b                                         ; $4003: $04
    ldh a, [rP1]                                  ; $4004: $F0 $00
    ld bc, $F804                                  ; $4006: $01 $04 $F8
    ld hl, sp+$06                                 ; $4009: $F8 $06
    inc b                                         ; $400B: $04
    ld hl, sp+$00                                 ; $400C: $F8 $00
    rlca                                          ; $400E: $07
    inc b                                         ; $400F: $04
    nop                                           ; $4010: $00
    ld hl, sp+$0F                                 ; $4011: $F8 $0F
    ld [bc], a                                    ; $4013: $02
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    db $10                                        ; $4016: $10
    ld [bc], a                                    ; $4017: $02
    add b                                         ; $4018: $80
    ldh a, [rP1]                                  ; $4019: $F0 $00
    nop                                           ; $401B: $00
    inc h                                         ; $401C: $24
    ldh a, [$F8]                                  ; $401D: $F0 $F8
    ld bc, $F824                                  ; $401F: $01 $24 $F8
    nop                                           ; $4022: $00
    ld b, $24                                     ; $4023: $06 $24
    ld hl, sp-$08                                 ; $4025: $F8 $F8
    rlca                                          ; $4027: $07
    inc h                                         ; $4028: $24
    nop                                           ; $4029: $00
    nop                                           ; $402A: $00
    rrca                                          ; $402B: $0F
    ld [hl+], a                                   ; $402C: $22
    nop                                           ; $402D: $00
    ld hl, sp+$10                                 ; $402E: $F8 $10
    ld [hl+], a                                   ; $4030: $22
    add b                                         ; $4031: $80
    ldh a, [$F8]                                  ; $4032: $F0 $F8
    inc b                                         ; $4034: $04
    inc b                                         ; $4035: $04
    ldh a, [rP1]                                  ; $4036: $F0 $00
    dec b                                         ; $4038: $05
    inc b                                         ; $4039: $04
    ld hl, sp-$08                                 ; $403A: $F8 $F8
    add hl, bc                                    ; $403C: $09
    inc b                                         ; $403D: $04
    ld hl, sp+$00                                 ; $403E: $F8 $00
    ld a, [bc]                                    ; $4040: $0A
    inc b                                         ; $4041: $04
    nop                                           ; $4042: $00
    ld hl, sp+$12                                 ; $4043: $F8 $12
    ld [bc], a                                    ; $4045: $02
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    inc de                                        ; $4048: $13
    ld [bc], a                                    ; $4049: $02
    add b                                         ; $404A: $80
    ldh a, [rP1]                                  ; $404B: $F0 $00
    inc b                                         ; $404D: $04
    inc h                                         ; $404E: $24
    ldh a, [$F8]                                  ; $404F: $F0 $F8
    dec b                                         ; $4051: $05
    inc h                                         ; $4052: $24
    ld hl, sp+$00                                 ; $4053: $F8 $00
    add hl, bc                                    ; $4055: $09
    inc h                                         ; $4056: $24
    ld hl, sp-$08                                 ; $4057: $F8 $F8
    ld a, [bc]                                    ; $4059: $0A
    inc h                                         ; $405A: $24
    nop                                           ; $405B: $00
    nop                                           ; $405C: $00
    ld [de], a                                    ; $405D: $12
    ld [hl+], a                                   ; $405E: $22
    nop                                           ; $405F: $00
    ld hl, sp+$13                                 ; $4060: $F8 $13
    ld [hl+], a                                   ; $4062: $22
    add b                                         ; $4063: $80
    pop af                                        ; $4064: $F1
    ld hl, sp+$02                                 ; $4065: $F8 $02
    inc b                                         ; $4067: $04
    pop af                                        ; $4068: $F1
    nop                                           ; $4069: $00
    ld [bc], a                                    ; $406A: $02
    inc h                                         ; $406B: $24
    ld hl, sp-$08                                 ; $406C: $F8 $F8
    dec bc                                        ; $406E: $0B
    inc b                                         ; $406F: $04
    ld hl, sp+$00                                 ; $4070: $F8 $00
    inc c                                         ; $4072: $0C
    inc b                                         ; $4073: $04
    nop                                           ; $4074: $00
    ld hl, sp+$14                                 ; $4075: $F8 $14
    ld [bc], a                                    ; $4077: $02
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    dec d                                         ; $407A: $15
    ld [bc], a                                    ; $407B: $02
    add b                                         ; $407C: $80
    ldh a, [$F8]                                  ; $407D: $F0 $F8
    ld [bc], a                                    ; $407F: $02
    inc b                                         ; $4080: $04
    ldh a, [rP1]                                  ; $4081: $F0 $00
    ld [bc], a                                    ; $4083: $02
    inc h                                         ; $4084: $24
    ld hl, sp-$08                                 ; $4085: $F8 $F8
    ld [$F804], sp                                ; $4087: $08 $04 $F8
    nop                                           ; $408A: $00
    ld [$0024], sp                                ; $408B: $08 $24 $00
    ld hl, sp+$11                                 ; $408E: $F8 $11
    ld [bc], a                                    ; $4090: $02
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    ld de, $8022                                  ; $4093: $11 $22 $80
    pop af                                        ; $4096: $F1
    ld hl, sp+$02                                 ; $4097: $F8 $02
    inc b                                         ; $4099: $04
    pop af                                        ; $409A: $F1
    nop                                           ; $409B: $00
    ld [bc], a                                    ; $409C: $02
    inc h                                         ; $409D: $24
    ld hl, sp+$00                                 ; $409E: $F8 $00
    dec bc                                        ; $40A0: $0B
    inc h                                         ; $40A1: $24
    ld hl, sp-$08                                 ; $40A2: $F8 $F8
    inc c                                         ; $40A4: $0C
    inc h                                         ; $40A5: $24
    nop                                           ; $40A6: $00
    nop                                           ; $40A7: $00
    inc d                                         ; $40A8: $14
    ld [hl+], a                                   ; $40A9: $22
    nop                                           ; $40AA: $00
    ld hl, sp+$15                                 ; $40AB: $F8 $15
    ld [hl+], a                                   ; $40AD: $22
    add b                                         ; $40AE: $80
    pop af                                        ; $40AF: $F1
    ld hl, sp+$03                                 ; $40B0: $F8 $03
    inc b                                         ; $40B2: $04
    pop af                                        ; $40B3: $F1
    nop                                           ; $40B4: $00
    inc bc                                        ; $40B5: $03
    inc h                                         ; $40B6: $24
    ld hl, sp-$08                                 ; $40B7: $F8 $F8
    dec c                                         ; $40B9: $0D
    inc b                                         ; $40BA: $04
    ld hl, sp+$00                                 ; $40BB: $F8 $00
    ld c, $04                                     ; $40BD: $0E $04
    nop                                           ; $40BF: $00
    ld hl, sp+$14                                 ; $40C0: $F8 $14
    ld [bc], a                                    ; $40C2: $02
    nop                                           ; $40C3: $00
    nop                                           ; $40C4: $00
    dec d                                         ; $40C5: $15
    ld [bc], a                                    ; $40C6: $02
    add b                                         ; $40C7: $80
    ldh a, [$F8]                                  ; $40C8: $F0 $F8
    inc bc                                        ; $40CA: $03
    inc b                                         ; $40CB: $04
    ldh a, [rP1]                                  ; $40CC: $F0 $00
    inc bc                                        ; $40CE: $03
    inc h                                         ; $40CF: $24
    ld hl, sp-$08                                 ; $40D0: $F8 $F8
    ld [$F804], sp                                ; $40D2: $08 $04 $F8
    nop                                           ; $40D5: $00
    ld [$0024], sp                                ; $40D6: $08 $24 $00
    ld hl, sp+$11                                 ; $40D9: $F8 $11
    ld [bc], a                                    ; $40DB: $02
    nop                                           ; $40DC: $00
    nop                                           ; $40DD: $00
    ld de, $8022                                  ; $40DE: $11 $22 $80
    pop af                                        ; $40E1: $F1
    ld hl, sp+$03                                 ; $40E2: $F8 $03
    inc b                                         ; $40E4: $04
    pop af                                        ; $40E5: $F1
    nop                                           ; $40E6: $00
    inc bc                                        ; $40E7: $03
    inc h                                         ; $40E8: $24
    ld hl, sp+$00                                 ; $40E9: $F8 $00
    dec c                                         ; $40EB: $0D
    inc h                                         ; $40EC: $24
    ld hl, sp-$08                                 ; $40ED: $F8 $F8
    ld c, $24                                     ; $40EF: $0E $24
    nop                                           ; $40F1: $00
    ld hl, sp+$14                                 ; $40F2: $F8 $14
    ld [bc], a                                    ; $40F4: $02
    nop                                           ; $40F5: $00
    nop                                           ; $40F6: $00
    dec d                                         ; $40F7: $15
    ld [bc], a                                    ; $40F8: $02
    add b                                         ; $40F9: $80
    pop af                                        ; $40FA: $F1
    ld hl, sp+$16                                 ; $40FB: $F8 $16
    inc b                                         ; $40FD: $04
    pop af                                        ; $40FE: $F1
    nop                                           ; $40FF: $00
    rla                                           ; $4100: $17
    inc b                                         ; $4101: $04
    ld hl, sp-$08                                 ; $4102: $F8 $F8
    jr jr_00F_410A                                ; $4104: $18 $04

    ld hl, sp+$00                                 ; $4106: $F8 $00
    add hl, de                                    ; $4108: $19
    inc b                                         ; $4109: $04

jr_00F_410A:
    nop                                           ; $410A: $00
    ld hl, sp+$1E                                 ; $410B: $F8 $1E
    ld [bc], a                                    ; $410D: $02
    nop                                           ; $410E: $00
    nop                                           ; $410F: $00
    rra                                           ; $4110: $1F
    ld [bc], a                                    ; $4111: $02
    add b                                         ; $4112: $80
    ldh a, [$F8]                                  ; $4113: $F0 $F8
    ld d, $04                                     ; $4115: $16 $04
    ldh a, [rP1]                                  ; $4117: $F0 $00
    rla                                           ; $4119: $17
    inc b                                         ; $411A: $04
    ld hl, sp-$08                                 ; $411B: $F8 $F8
    ld a, [de]                                    ; $411D: $1A
    inc b                                         ; $411E: $04
    ld hl, sp+$00                                 ; $411F: $F8 $00
    dec de                                        ; $4121: $1B
    inc b                                         ; $4122: $04
    nop                                           ; $4123: $00
    ld hl, sp+$20                                 ; $4124: $F8 $20
    ld [bc], a                                    ; $4126: $02
    nop                                           ; $4127: $00
    nop                                           ; $4128: $00
    ld hl, $8002                                  ; $4129: $21 $02 $80
    pop af                                        ; $412C: $F1
    ld hl, sp+$16                                 ; $412D: $F8 $16
    inc b                                         ; $412F: $04
    pop af                                        ; $4130: $F1
    nop                                           ; $4131: $00
    rla                                           ; $4132: $17
    inc b                                         ; $4133: $04
    ld hl, sp-$08                                 ; $4134: $F8 $F8
    inc e                                         ; $4136: $1C
    inc b                                         ; $4137: $04
    ld hl, sp+$00                                 ; $4138: $F8 $00
    dec e                                         ; $413A: $1D
    inc b                                         ; $413B: $04
    nop                                           ; $413C: $00
    ld hl, sp+$1E                                 ; $413D: $F8 $1E
    ld [bc], a                                    ; $413F: $02
    nop                                           ; $4140: $00
    nop                                           ; $4141: $00
    rra                                           ; $4142: $1F
    ld [bc], a                                    ; $4143: $02
    add b                                         ; $4144: $80
    pop af                                        ; $4145: $F1
    nop                                           ; $4146: $00
    ld d, $24                                     ; $4147: $16 $24
    pop af                                        ; $4149: $F1
    ld hl, sp+$17                                 ; $414A: $F8 $17
    inc h                                         ; $414C: $24
    ld hl, sp+$00                                 ; $414D: $F8 $00
    jr jr_00F_4175                                ; $414F: $18 $24

    ld hl, sp-$08                                 ; $4151: $F8 $F8
    add hl, de                                    ; $4153: $19
    inc h                                         ; $4154: $24
    nop                                           ; $4155: $00
    nop                                           ; $4156: $00
    ld e, $22                                     ; $4157: $1E $22
    nop                                           ; $4159: $00
    ld hl, sp+$1F                                 ; $415A: $F8 $1F
    ld [hl+], a                                   ; $415C: $22
    add b                                         ; $415D: $80
    ldh a, [rP1]                                  ; $415E: $F0 $00
    ld d, $24                                     ; $4160: $16 $24
    ldh a, [$F8]                                  ; $4162: $F0 $F8
    rla                                           ; $4164: $17
    inc h                                         ; $4165: $24
    ld hl, sp+$00                                 ; $4166: $F8 $00
    ld a, [de]                                    ; $4168: $1A
    inc h                                         ; $4169: $24
    ld hl, sp-$08                                 ; $416A: $F8 $F8
    dec de                                        ; $416C: $1B
    inc h                                         ; $416D: $24
    nop                                           ; $416E: $00
    nop                                           ; $416F: $00
    jr nz, jr_00F_4194                            ; $4170: $20 $22

    nop                                           ; $4172: $00
    ld hl, sp+$21                                 ; $4173: $F8 $21

jr_00F_4175:
    ld [hl+], a                                   ; $4175: $22
    add b                                         ; $4176: $80
    pop af                                        ; $4177: $F1
    nop                                           ; $4178: $00
    ld d, $24                                     ; $4179: $16 $24
    pop af                                        ; $417B: $F1
    ld hl, sp+$17                                 ; $417C: $F8 $17
    inc h                                         ; $417E: $24
    ld hl, sp+$00                                 ; $417F: $F8 $00
    inc e                                         ; $4181: $1C
    inc h                                         ; $4182: $24
    ld hl, sp-$08                                 ; $4183: $F8 $F8
    dec e                                         ; $4185: $1D
    inc h                                         ; $4186: $24
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    ld e, $22                                     ; $4189: $1E $22
    nop                                           ; $418B: $00
    ld hl, sp+$1F                                 ; $418C: $F8 $1F
    ld [hl+], a                                   ; $418E: $22
    add b                                         ; $418F: $80
    ld c, l                                       ; $4190: $4D
    ld [$0008], sp                                ; $4191: $08 $08 $00

jr_00F_4194:
    rst $38                                       ; $4194: $FF
    xor a                                         ; $4195: $AF
    ld b, b                                       ; $4196: $40
    ret z                                         ; $4197: $C8

    ld b, b                                       ; $4198: $40
    pop hl                                        ; $4199: $E1
    ld b, b                                       ; $419A: $40
    ret z                                         ; $419B: $C8

    ld b, b                                       ; $419C: $40
    ld b, [hl]                                    ; $419D: $46
    sub b                                         ; $419E: $90
    ld b, c                                       ; $419F: $41
    ld c, l                                       ; $41A0: $4D
    ld [$0008], sp                                ; $41A1: $08 $08 $00
    ld bc, $4064                                  ; $41A4: $01 $64 $40
    ld a, l                                       ; $41A7: $7D
    ld b, b                                       ; $41A8: $40
    sub [hl]                                      ; $41A9: $96
    ld b, b                                       ; $41AA: $40
    ld a, l                                       ; $41AB: $7D
    ld b, b                                       ; $41AC: $40
    ld b, [hl]                                    ; $41AD: $46
    and b                                         ; $41AE: $A0
    ld b, c                                       ; $41AF: $41
    ld c, l                                       ; $41B0: $4D
    ld [$FF08], sp                                ; $41B1: $08 $08 $FF
    nop                                           ; $41B4: $00
    ld b, l                                       ; $41B5: $45
    ld b, c                                       ; $41B6: $41
    ld e, [hl]                                    ; $41B7: $5E
    ld b, c                                       ; $41B8: $41
    ld [hl], a                                    ; $41B9: $77
    ld b, c                                       ; $41BA: $41
    ld e, [hl]                                    ; $41BB: $5E
    ld b, c                                       ; $41BC: $41
    ld b, [hl]                                    ; $41BD: $46
    or b                                          ; $41BE: $B0
    ld b, c                                       ; $41BF: $41
    ld c, l                                       ; $41C0: $4D
    ld [$0108], sp                                ; $41C1: $08 $08 $01
    nop                                           ; $41C4: $00
    ld a, [$1340]                                 ; $41C5: $FA $40 $13
    ld b, c                                       ; $41C8: $41
    inc l                                         ; $41C9: $2C
    ld b, c                                       ; $41CA: $41
    inc de                                        ; $41CB: $13
    ld b, c                                       ; $41CC: $41
    ld b, [hl]                                    ; $41CD: $46
    ret nz                                        ; $41CE: $C0

    ld b, c                                       ; $41CF: $41
    ld c, l                                       ; $41D0: $4D
    ld [$0008], sp                                ; $41D1: $08 $08 $00
    cp $AF                                        ; $41D4: $FE $AF
    ld b, b                                       ; $41D6: $40
    ret z                                         ; $41D7: $C8

    ld b, b                                       ; $41D8: $40
    pop hl                                        ; $41D9: $E1
    ld b, b                                       ; $41DA: $40
    ret z                                         ; $41DB: $C8

    ld b, b                                       ; $41DC: $40
    ld b, [hl]                                    ; $41DD: $46
    ret nc                                        ; $41DE: $D0

    ld b, c                                       ; $41DF: $41
    ld c, l                                       ; $41E0: $4D
    ld [$0008], sp                                ; $41E1: $08 $08 $00
    ld [bc], a                                    ; $41E4: $02
    ld h, h                                       ; $41E5: $64
    ld b, b                                       ; $41E6: $40
    ld a, l                                       ; $41E7: $7D
    ld b, b                                       ; $41E8: $40
    sub [hl]                                      ; $41E9: $96
    ld b, b                                       ; $41EA: $40
    ld a, l                                       ; $41EB: $7D
    ld b, b                                       ; $41EC: $40
    ld b, [hl]                                    ; $41ED: $46
    ldh [rSTAT], a                                ; $41EE: $E0 $41
    ld c, l                                       ; $41F0: $4D
    ld [$FE08], sp                                ; $41F1: $08 $08 $FE
    nop                                           ; $41F4: $00
    ld b, l                                       ; $41F5: $45
    ld b, c                                       ; $41F6: $41
    ld e, [hl]                                    ; $41F7: $5E
    ld b, c                                       ; $41F8: $41
    ld [hl], a                                    ; $41F9: $77
    ld b, c                                       ; $41FA: $41
    ld e, [hl]                                    ; $41FB: $5E
    ld b, c                                       ; $41FC: $41
    ld b, [hl]                                    ; $41FD: $46
    ldh a, [rSTAT]                                ; $41FE: $F0 $41
    ld c, l                                       ; $4200: $4D
    ld [$0208], sp                                ; $4201: $08 $08 $02
    nop                                           ; $4204: $00
    ld a, [$1340]                                 ; $4205: $FA $40 $13
    ld b, c                                       ; $4208: $41
    inc l                                         ; $4209: $2C
    ld b, c                                       ; $420A: $41
    inc de                                        ; $420B: $13
    ld b, c                                       ; $420C: $41
    ld b, [hl]                                    ; $420D: $46
    nop                                           ; $420E: $00
    ld b, d                                       ; $420F: $42
    ld c, h                                       ; $4210: $4C
    rst $38                                       ; $4211: $FF
    nop                                           ; $4212: $00
    nop                                           ; $4213: $00
    ret z                                         ; $4214: $C8

    ld b, b                                       ; $4215: $40
    nop                                           ; $4216: $00
    ld b, [hl]                                    ; $4217: $46
    db $10                                        ; $4218: $10
    ld b, d                                       ; $4219: $42
    ld c, h                                       ; $421A: $4C
    rst $38                                       ; $421B: $FF
    nop                                           ; $421C: $00
    nop                                           ; $421D: $00
    ld a, l                                       ; $421E: $7D
    ld b, b                                       ; $421F: $40
    nop                                           ; $4220: $00
    ld b, [hl]                                    ; $4221: $46
    ld a, [de]                                    ; $4222: $1A
    ld b, d                                       ; $4223: $42
    ld c, h                                       ; $4224: $4C
    rst $38                                       ; $4225: $FF
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    ld e, [hl]                                    ; $4228: $5E
    ld b, c                                       ; $4229: $41
    nop                                           ; $422A: $00
    ld b, [hl]                                    ; $422B: $46
    inc h                                         ; $422C: $24
    ld b, d                                       ; $422D: $42
    ld c, h                                       ; $422E: $4C
    rst $38                                       ; $422F: $FF
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    inc de                                        ; $4232: $13
    ld b, c                                       ; $4233: $41

jr_00F_4234:
    nop                                           ; $4234: $00
    ld b, [hl]                                    ; $4235: $46
    ld l, $42                                     ; $4236: $2E $42
    ld c, h                                       ; $4238: $4C
    rst $38                                       ; $4239: $FF
    nop                                           ; $423A: $00
    nop                                           ; $423B: $00
    ld c, e                                       ; $423C: $4B
    ld b, b                                       ; $423D: $40
    nop                                           ; $423E: $00
    ld b, [hl]                                    ; $423F: $46
    jr c, @+$44                                   ; $4240: $38 $42

    ld c, h                                       ; $4242: $4C
    rst $38                                       ; $4243: $FF
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    ld [hl-], a                                   ; $4246: $32
    ld b, b                                       ; $4247: $40
    nop                                           ; $4248: $00
    ld b, [hl]                                    ; $4249: $46
    ld b, d                                       ; $424A: $42
    ld b, d                                       ; $424B: $42
    ld c, h                                       ; $424C: $4C
    rst $38                                       ; $424D: $FF
    nop                                           ; $424E: $00
    nop                                           ; $424F: $00
    add hl, de                                    ; $4250: $19
    ld b, b                                       ; $4251: $40
    nop                                           ; $4252: $00
    ld b, [hl]                                    ; $4253: $46
    ld c, h                                       ; $4254: $4C
    ld b, d                                       ; $4255: $42
    ld c, h                                       ; $4256: $4C
    rst $38                                       ; $4257: $FF
    nop                                           ; $4258: $00
    nop                                           ; $4259: $00
    nop                                           ; $425A: $00
    ld b, b                                       ; $425B: $40
    nop                                           ; $425C: $00
    ld b, [hl]                                    ; $425D: $46
    ld d, [hl]                                    ; $425E: $56
    ld b, d                                       ; $425F: $42
    ld c, e                                       ; $4260: $4B
    inc bc                                        ; $4261: $03
    rrca                                          ; $4262: $0F
    nop                                           ; $4263: $00
    nop                                           ; $4264: $00
    ld [hl], a                                    ; $4265: $77
    ld b, d                                       ; $4266: $42
    rrca                                          ; $4267: $0F
    inc bc                                        ; $4268: $03
    nop                                           ; $4269: $00
    ld a, [hl]                                    ; $426A: $7E
    ld b, d                                       ; $426B: $42
    rrca                                          ; $426C: $0F
    ld [bc], a                                    ; $426D: $02
    nop                                           ; $426E: $00
    adc h                                         ; $426F: $8C
    ld b, d                                       ; $4270: $42
    rrca                                          ; $4271: $0F
    ld bc, $8500                                  ; $4272: $01 $00 $85
    ld b, d                                       ; $4275: $42

jr_00F_4276:
    rst $38                                       ; $4276: $FF
    inc d                                         ; $4277: $14
    rrca                                          ; $4278: $0F
    db $10                                        ; $4279: $10
    ld b, d                                       ; $427A: $42
    ld h, d                                       ; $427B: $62
    ld bc, $1412                                  ; $427C: $01 $12 $14
    rrca                                          ; $427F: $0F
    ld a, [de]                                    ; $4280: $1A
    ld b, d                                       ; $4281: $42
    ld h, d                                       ; $4282: $62
    ld bc, $1412                                  ; $4283: $01 $12 $14
    rrca                                          ; $4286: $0F
    inc h                                         ; $4287: $24
    ld b, d                                       ; $4288: $42
    ld h, d                                       ; $4289: $62
    ld bc, $1412                                  ; $428A: $01 $12 $14
    rrca                                          ; $428D: $0F
    ld l, $42                                     ; $428E: $2E $42
    ld h, d                                       ; $4290: $62
    ld bc, $E612                                  ; $4291: $01 $12 $E6
    ld hl, sp+$00                                 ; $4294: $F8 $00
    ld bc, $00E6                                  ; $4296: $01 $E6 $00
    ld bc, $EE01                                  ; $4299: $01 $01 $EE
    ld hl, sp+$02                                 ; $429C: $F8 $02
    rlca                                          ; $429E: $07
    xor $00                                       ; $429F: $EE $00
    ld [bc], a                                    ; $42A1: $02
    daa                                           ; $42A2: $27
    or $F8                                        ; $42A3: $F6 $F8
    inc bc                                        ; $42A5: $03
    rlca                                          ; $42A6: $07
    or $00                                        ; $42A7: $F6 $00
    inc b                                         ; $42A9: $04
    rlca                                          ; $42AA: $07
    nop                                           ; $42AB: $00
    ld hl, sp+$1F                                 ; $42AC: $F8 $1F
    nop                                           ; $42AE: $00
    nop                                           ; $42AF: $00
    nop                                           ; $42B0: $00
    rra                                           ; $42B1: $1F
    jr nz, jr_00F_4234                            ; $42B2: $20 $80

    rst $20                                       ; $42B4: $E7
    ld hl, sp+$00                                 ; $42B5: $F8 $00
    ld bc, $00E7                                  ; $42B7: $01 $E7 $00
    ld bc, $EF01                                  ; $42BA: $01 $01 $EF
    ld hl, sp+$02                                 ; $42BD: $F8 $02
    rlca                                          ; $42BF: $07
    rst $28                                       ; $42C0: $EF
    nop                                           ; $42C1: $00
    ld [bc], a                                    ; $42C2: $02
    daa                                           ; $42C3: $27
    rst $30                                       ; $42C4: $F7
    ld hl, sp+$05                                 ; $42C5: $F8 $05
    rlca                                          ; $42C7: $07
    rst $30                                       ; $42C8: $F7
    nop                                           ; $42C9: $00
    ld b, $07                                     ; $42CA: $06 $07
    nop                                           ; $42CC: $00
    ld hl, sp+$1E                                 ; $42CD: $F8 $1E
    nop                                           ; $42CF: $00
    nop                                           ; $42D0: $00
    nop                                           ; $42D1: $00
    ld e, $20                                     ; $42D2: $1E $20
    add b                                         ; $42D4: $80
    add sp, -$08                                  ; $42D5: $E8 $F8
    nop                                           ; $42D7: $00
    ld bc, $00E8                                  ; $42D8: $01 $E8 $00
    ld bc, $F001                                  ; $42DB: $01 $01 $F0
    ld hl, sp+$02                                 ; $42DE: $F8 $02
    rlca                                          ; $42E0: $07
    ldh a, [rP1]                                  ; $42E1: $F0 $00
    ld [bc], a                                    ; $42E3: $02
    daa                                           ; $42E4: $27
    ld hl, sp-$08                                 ; $42E5: $F8 $F8
    rlca                                          ; $42E7: $07
    rlca                                          ; $42E8: $07
    ld hl, sp+$00                                 ; $42E9: $F8 $00
    ld [$0007], sp                                ; $42EB: $08 $07 $00
    ld hl, sp+$1D                                 ; $42EE: $F8 $1D
    nop                                           ; $42F0: $00
    nop                                           ; $42F1: $00
    nop                                           ; $42F2: $00
    dec e                                         ; $42F3: $1D
    jr nz, jr_00F_4276                            ; $42F4: $20 $80

    and $F8                                       ; $42F6: $E6 $F8
    add hl, bc                                    ; $42F8: $09
    ld bc, $00E6                                  ; $42F9: $01 $E6 $00
    ld a, [bc]                                    ; $42FC: $0A
    ld bc, $F8EE                                  ; $42FD: $01 $EE $F8
    dec bc                                        ; $4300: $0B
    rlca                                          ; $4301: $07
    xor $00                                       ; $4302: $EE $00
    inc c                                         ; $4304: $0C
    rlca                                          ; $4305: $07
    or $F8                                        ; $4306: $F6 $F8
    dec c                                         ; $4308: $0D
    rlca                                          ; $4309: $07
    or $00                                        ; $430A: $F6 $00
    ld c, $07                                     ; $430C: $0E $07
    nop                                           ; $430E: $00
    ld hl, sp+$1F                                 ; $430F: $F8 $1F
    nop                                           ; $4311: $00
    nop                                           ; $4312: $00
    nop                                           ; $4313: $00
    rra                                           ; $4314: $1F
    jr nz, @-$7E                                  ; $4315: $20 $80

    rst $20                                       ; $4317: $E7
    ld hl, sp+$09                                 ; $4318: $F8 $09
    ld bc, $00E7                                  ; $431A: $01 $E7 $00
    ld a, [bc]                                    ; $431D: $0A
    ld bc, $F8EF                                  ; $431E: $01 $EF $F8
    dec bc                                        ; $4321: $0B
    rlca                                          ; $4322: $07
    rst $28                                       ; $4323: $EF
    nop                                           ; $4324: $00
    inc c                                         ; $4325: $0C
    rlca                                          ; $4326: $07
    rst $30                                       ; $4327: $F7
    ld hl, sp+$0F                                 ; $4328: $F8 $0F
    rlca                                          ; $432A: $07
    rst $30                                       ; $432B: $F7
    nop                                           ; $432C: $00
    db $10                                        ; $432D: $10
    rlca                                          ; $432E: $07
    nop                                           ; $432F: $00
    ld hl, sp+$1E                                 ; $4330: $F8 $1E
    nop                                           ; $4332: $00
    nop                                           ; $4333: $00
    nop                                           ; $4334: $00
    ld e, $20                                     ; $4335: $1E $20
    add b                                         ; $4337: $80
    add sp, -$08                                  ; $4338: $E8 $F8
    add hl, bc                                    ; $433A: $09
    ld bc, $00E8                                  ; $433B: $01 $E8 $00
    ld a, [bc]                                    ; $433E: $0A
    ld bc, $F8F0                                  ; $433F: $01 $F0 $F8
    dec bc                                        ; $4342: $0B
    rlca                                          ; $4343: $07
    ld hl, sp-$08                                 ; $4344: $F8 $F8
    ld de, $F807                                  ; $4346: $11 $07 $F8
    nop                                           ; $4349: $00
    ld [de], a                                    ; $434A: $12
    rlca                                          ; $434B: $07
    ldh a, [rP1]                                  ; $434C: $F0 $00
    inc c                                         ; $434E: $0C
    rlca                                          ; $434F: $07
    nop                                           ; $4350: $00
    ld hl, sp+$1D                                 ; $4351: $F8 $1D
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    nop                                           ; $4355: $00
    dec e                                         ; $4356: $1D
    jr nz, @-$7E                                  ; $4357: $20 $80

    and $00                                       ; $4359: $E6 $00
    add hl, bc                                    ; $435B: $09
    ld hl, $F8E6                                  ; $435C: $21 $E6 $F8
    ld a, [bc]                                    ; $435F: $0A
    ld hl, $00EE                                  ; $4360: $21 $EE $00
    dec bc                                        ; $4363: $0B
    daa                                           ; $4364: $27
    xor $F8                                       ; $4365: $EE $F8
    inc c                                         ; $4367: $0C
    daa                                           ; $4368: $27
    or $00                                        ; $4369: $F6 $00
    dec c                                         ; $436B: $0D
    daa                                           ; $436C: $27
    or $F8                                        ; $436D: $F6 $F8
    ld c, $27                                     ; $436F: $0E $27
    nop                                           ; $4371: $00
    ld hl, sp+$1F                                 ; $4372: $F8 $1F
    nop                                           ; $4374: $00
    nop                                           ; $4375: $00
    nop                                           ; $4376: $00
    rra                                           ; $4377: $1F
    jr nz, @-$7E                                  ; $4378: $20 $80

    rst $20                                       ; $437A: $E7
    nop                                           ; $437B: $00
    add hl, bc                                    ; $437C: $09
    ld hl, $F8E7                                  ; $437D: $21 $E7 $F8
    ld a, [bc]                                    ; $4380: $0A
    ld hl, $00EF                                  ; $4381: $21 $EF $00
    dec bc                                        ; $4384: $0B
    daa                                           ; $4385: $27
    rst $28                                       ; $4386: $EF
    ld hl, sp+$0C                                 ; $4387: $F8 $0C
    daa                                           ; $4389: $27
    rst $30                                       ; $438A: $F7
    nop                                           ; $438B: $00
    rrca                                          ; $438C: $0F
    daa                                           ; $438D: $27
    rst $30                                       ; $438E: $F7
    ld hl, sp+$10                                 ; $438F: $F8 $10
    daa                                           ; $4391: $27
    nop                                           ; $4392: $00
    ld hl, sp+$1E                                 ; $4393: $F8 $1E
    nop                                           ; $4395: $00
    nop                                           ; $4396: $00
    nop                                           ; $4397: $00
    ld e, $20                                     ; $4398: $1E $20
    add b                                         ; $439A: $80
    add sp, $00                                   ; $439B: $E8 $00
    add hl, bc                                    ; $439D: $09
    ld hl, $F8E8                                  ; $439E: $21 $E8 $F8
    ld a, [bc]                                    ; $43A1: $0A
    ld hl, $00F0                                  ; $43A2: $21 $F0 $00
    dec bc                                        ; $43A5: $0B
    daa                                           ; $43A6: $27
    ld hl, sp+$00                                 ; $43A7: $F8 $00
    ld de, $F827                                  ; $43A9: $11 $27 $F8
    ld hl, sp+$12                                 ; $43AC: $F8 $12
    daa                                           ; $43AE: $27
    ldh a, [$F8]                                  ; $43AF: $F0 $F8
    inc c                                         ; $43B1: $0C
    daa                                           ; $43B2: $27
    nop                                           ; $43B3: $00
    ld hl, sp+$1D                                 ; $43B4: $F8 $1D
    nop                                           ; $43B6: $00
    nop                                           ; $43B7: $00
    nop                                           ; $43B8: $00
    dec e                                         ; $43B9: $1D
    jr nz, @-$7E                                  ; $43BA: $20 $80

    and $F8                                       ; $43BC: $E6 $F8
    inc de                                        ; $43BE: $13
    ld bc, $00E6                                  ; $43BF: $01 $E6 $00
    inc d                                         ; $43C2: $14
    ld bc, $F8EE                                  ; $43C3: $01 $EE $F8
    dec d                                         ; $43C6: $15
    rlca                                          ; $43C7: $07
    xor $00                                       ; $43C8: $EE $00
    ld d, $07                                     ; $43CA: $16 $07
    or $F8                                        ; $43CC: $F6 $F8
    rla                                           ; $43CE: $17
    rlca                                          ; $43CF: $07
    or $00                                        ; $43D0: $F6 $00
    jr jr_00F_43DB                                ; $43D2: $18 $07

    nop                                           ; $43D4: $00
    ld hl, sp+$1F                                 ; $43D5: $F8 $1F
    nop                                           ; $43D7: $00
    nop                                           ; $43D8: $00
    nop                                           ; $43D9: $00
    rra                                           ; $43DA: $1F

jr_00F_43DB:
    jr nz, @-$7E                                  ; $43DB: $20 $80

    rst $20                                       ; $43DD: $E7
    ld hl, sp+$13                                 ; $43DE: $F8 $13
    ld bc, $00E7                                  ; $43E0: $01 $E7 $00
    inc d                                         ; $43E3: $14
    ld bc, $F8EF                                  ; $43E4: $01 $EF $F8
    dec d                                         ; $43E7: $15
    rlca                                          ; $43E8: $07
    rst $28                                       ; $43E9: $EF
    nop                                           ; $43EA: $00
    ld d, $07                                     ; $43EB: $16 $07
    rst $30                                       ; $43ED: $F7
    ld hl, sp+$19                                 ; $43EE: $F8 $19
    rlca                                          ; $43F0: $07
    rst $30                                       ; $43F1: $F7
    nop                                           ; $43F2: $00
    ld a, [de]                                    ; $43F3: $1A
    rlca                                          ; $43F4: $07
    nop                                           ; $43F5: $00
    ld hl, sp+$1E                                 ; $43F6: $F8 $1E
    nop                                           ; $43F8: $00
    nop                                           ; $43F9: $00
    nop                                           ; $43FA: $00
    ld e, $20                                     ; $43FB: $1E $20
    add b                                         ; $43FD: $80
    add sp, -$08                                  ; $43FE: $E8 $F8
    inc de                                        ; $4400: $13
    ld bc, $00E8                                  ; $4401: $01 $E8 $00
    inc d                                         ; $4404: $14
    ld bc, $F8F0                                  ; $4405: $01 $F0 $F8
    dec d                                         ; $4408: $15
    rlca                                          ; $4409: $07
    ldh a, [rP1]                                  ; $440A: $F0 $00
    ld d, $07                                     ; $440C: $16 $07
    ld hl, sp-$08                                 ; $440E: $F8 $F8
    dec de                                        ; $4410: $1B
    rlca                                          ; $4411: $07
    ld hl, sp+$00                                 ; $4412: $F8 $00
    inc e                                         ; $4414: $1C
    rlca                                          ; $4415: $07
    nop                                           ; $4416: $00
    ld hl, sp+$1D                                 ; $4417: $F8 $1D
    nop                                           ; $4419: $00
    nop                                           ; $441A: $00
    nop                                           ; $441B: $00
    dec e                                         ; $441C: $1D
    jr nz, @-$7E                                  ; $441D: $20 $80

    and $00                                       ; $441F: $E6 $00
    inc de                                        ; $4421: $13
    ld hl, $F8E6                                  ; $4422: $21 $E6 $F8
    inc d                                         ; $4425: $14
    ld hl, $00EE                                  ; $4426: $21 $EE $00
    dec d                                         ; $4429: $15
    daa                                           ; $442A: $27
    xor $F8                                       ; $442B: $EE $F8
    ld d, $27                                     ; $442D: $16 $27
    or $00                                        ; $442F: $F6 $00
    rla                                           ; $4431: $17
    daa                                           ; $4432: $27
    or $F8                                        ; $4433: $F6 $F8
    jr jr_00F_445E                                ; $4435: $18 $27

    nop                                           ; $4437: $00
    ld hl, sp+$1F                                 ; $4438: $F8 $1F
    nop                                           ; $443A: $00
    nop                                           ; $443B: $00
    nop                                           ; $443C: $00
    rra                                           ; $443D: $1F
    jr nz, @-$7E                                  ; $443E: $20 $80

    rst $20                                       ; $4440: $E7
    nop                                           ; $4441: $00
    inc de                                        ; $4442: $13
    ld hl, $F8E7                                  ; $4443: $21 $E7 $F8
    inc d                                         ; $4446: $14
    ld hl, $00EF                                  ; $4447: $21 $EF $00
    dec d                                         ; $444A: $15
    daa                                           ; $444B: $27
    rst $28                                       ; $444C: $EF
    ld hl, sp+$16                                 ; $444D: $F8 $16
    daa                                           ; $444F: $27
    rst $30                                       ; $4450: $F7
    nop                                           ; $4451: $00
    add hl, de                                    ; $4452: $19
    daa                                           ; $4453: $27
    rst $30                                       ; $4454: $F7
    ld hl, sp+$1A                                 ; $4455: $F8 $1A
    daa                                           ; $4457: $27
    nop                                           ; $4458: $00
    ld hl, sp+$1E                                 ; $4459: $F8 $1E
    nop                                           ; $445B: $00
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00

jr_00F_445E:
    ld e, $20                                     ; $445E: $1E $20
    add b                                         ; $4460: $80
    add sp, $00                                   ; $4461: $E8 $00
    inc de                                        ; $4463: $13
    ld hl, $F8E8                                  ; $4464: $21 $E8 $F8
    inc d                                         ; $4467: $14
    ld hl, $00F0                                  ; $4468: $21 $F0 $00
    dec d                                         ; $446B: $15
    daa                                           ; $446C: $27
    ldh a, [$F8]                                  ; $446D: $F0 $F8
    ld d, $27                                     ; $446F: $16 $27
    ld hl, sp+$00                                 ; $4471: $F8 $00
    dec de                                        ; $4473: $1B
    daa                                           ; $4474: $27
    ld hl, sp-$08                                 ; $4475: $F8 $F8
    inc e                                         ; $4477: $1C
    daa                                           ; $4478: $27
    nop                                           ; $4479: $00
    ld hl, sp+$1D                                 ; $447A: $F8 $1D
    nop                                           ; $447C: $00
    nop                                           ; $447D: $00
    nop                                           ; $447E: $00
    dec e                                         ; $447F: $1D
    jr nz, @-$7E                                  ; $4480: $20 $80

    and $F8                                       ; $4482: $E6 $F8
    jr nz, @+$03                                  ; $4484: $20 $01

    and $00                                       ; $4486: $E6 $00
    ld hl, $F601                                  ; $4488: $21 $01 $F6
    ld hl, sp+$23                                 ; $448B: $F8 $23
    rlca                                          ; $448D: $07
    or $00                                        ; $448E: $F6 $00
    inc h                                         ; $4490: $24
    rlca                                          ; $4491: $07
    nop                                           ; $4492: $00
    ld hl, sp+$1F                                 ; $4493: $F8 $1F
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    nop                                           ; $4497: $00
    rra                                           ; $4498: $1F
    jr nz, @-$10                                  ; $4499: $20 $EE

    ld hl, sp+$22                                 ; $449B: $F8 $22
    rlca                                          ; $449D: $07
    xor $00                                       ; $449E: $EE $00
    ld [hl+], a                                   ; $44A0: $22
    daa                                           ; $44A1: $27
    add b                                         ; $44A2: $80
    rst $20                                       ; $44A3: $E7
    ld hl, sp+$20                                 ; $44A4: $F8 $20
    ld bc, $00E7                                  ; $44A6: $01 $E7 $00
    ld hl, $F701                                  ; $44A9: $21 $01 $F7
    ld hl, sp+$25                                 ; $44AC: $F8 $25
    rlca                                          ; $44AE: $07
    rst $30                                       ; $44AF: $F7
    nop                                           ; $44B0: $00
    ld h, $07                                     ; $44B1: $26 $07
    nop                                           ; $44B3: $00
    ld hl, sp+$1E                                 ; $44B4: $F8 $1E
    nop                                           ; $44B6: $00
    nop                                           ; $44B7: $00
    nop                                           ; $44B8: $00
    ld e, $20                                     ; $44B9: $1E $20
    rst $28                                       ; $44BB: $EF
    ld hl, sp+$22                                 ; $44BC: $F8 $22
    rlca                                          ; $44BE: $07
    rst $28                                       ; $44BF: $EF
    nop                                           ; $44C0: $00
    ld [hl+], a                                   ; $44C1: $22
    daa                                           ; $44C2: $27
    add b                                         ; $44C3: $80
    add sp, -$08                                  ; $44C4: $E8 $F8
    jr nz, @+$03                                  ; $44C6: $20 $01

    add sp, $00                                   ; $44C8: $E8 $00
    ld hl, $F001                                  ; $44CA: $21 $01 $F0
    ld hl, sp+$22                                 ; $44CD: $F8 $22
    rlca                                          ; $44CF: $07
    ldh a, [rP1]                                  ; $44D0: $F0 $00
    ld [hl+], a                                   ; $44D2: $22
    daa                                           ; $44D3: $27
    ld hl, sp-$08                                 ; $44D4: $F8 $F8
    daa                                           ; $44D6: $27
    rlca                                          ; $44D7: $07
    ld hl, sp+$00                                 ; $44D8: $F8 $00
    jr z, jr_00F_44E3                             ; $44DA: $28 $07

    nop                                           ; $44DC: $00
    ld hl, sp+$1D                                 ; $44DD: $F8 $1D
    nop                                           ; $44DF: $00
    nop                                           ; $44E0: $00
    nop                                           ; $44E1: $00
    dec e                                         ; $44E2: $1D

jr_00F_44E3:
    jr nz, @-$7E                                  ; $44E3: $20 $80

    nop                                           ; $44E5: $00
    nop                                           ; $44E6: $00
    inc a                                         ; $44E7: $3C
    nop                                           ; $44E8: $00
    nop                                           ; $44E9: $00
    ld hl, sp+$3C                                 ; $44EA: $F8 $3C
    jr nz, @-$08                                  ; $44EC: $20 $F6

    nop                                           ; $44EE: $00
    jr c, jr_00F_44F8                             ; $44EF: $38 $07

    rst $30                                       ; $44F1: $F7
    ld hl, sp+$37                                 ; $44F2: $F8 $37
    rlca                                          ; $44F4: $07
    rst $28                                       ; $44F5: $EF
    nop                                           ; $44F6: $00
    inc [hl]                                      ; $44F7: $34

jr_00F_44F8:
    rlca                                          ; $44F8: $07
    rst $28                                       ; $44F9: $EF
    ld hl, sp+$33                                 ; $44FA: $F8 $33
    rlca                                          ; $44FC: $07
    rst $20                                       ; $44FD: $E7
    nop                                           ; $44FE: $00
    ld sp, $E701                                  ; $44FF: $31 $01 $E7
    ld sp, hl                                     ; $4502: $F9
    jr nc, jr_00F_4506                            ; $4503: $30 $01

    add b                                         ; $4505: $80

jr_00F_4506:
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    inc a                                         ; $4508: $3C
    nop                                           ; $4509: $00
    nop                                           ; $450A: $00
    ld hl, sp+$3C                                 ; $450B: $F8 $3C
    jr nz, @-$09                                  ; $450D: $20 $F5

    nop                                           ; $450F: $00
    jr c, jr_00F_4519                             ; $4510: $38 $07

    or $F8                                        ; $4512: $F6 $F8
    scf                                           ; $4514: $37
    rlca                                          ; $4515: $07
    xor $00                                       ; $4516: $EE $00
    inc [hl]                                      ; $4518: $34

jr_00F_4519:
    rlca                                          ; $4519: $07
    xor $F8                                       ; $451A: $EE $F8
    inc sp                                        ; $451C: $33
    rlca                                          ; $451D: $07
    and $00                                       ; $451E: $E6 $00
    ld sp, $E601                                  ; $4520: $31 $01 $E6
    ld sp, hl                                     ; $4523: $F9

jr_00F_4524:
    jr nc, jr_00F_4527                            ; $4524: $30 $01

    add b                                         ; $4526: $80

jr_00F_4527:
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    inc a                                         ; $4529: $3C
    nop                                           ; $452A: $00
    nop                                           ; $452B: $00
    ld hl, sp+$3C                                 ; $452C: $F8 $3C
    jr nz, jr_00F_4524                            ; $452E: $20 $F4

    nop                                           ; $4530: $00
    jr c, jr_00F_453A                             ; $4531: $38 $07

    push af                                       ; $4533: $F5
    ld hl, sp+$37                                 ; $4534: $F8 $37
    rlca                                          ; $4536: $07
    db $ED                                        ; $4537: $ED
    nop                                           ; $4538: $00
    inc [hl]                                      ; $4539: $34

jr_00F_453A:
    rlca                                          ; $453A: $07
    db $ED                                        ; $453B: $ED
    ld hl, sp+$33                                 ; $453C: $F8 $33
    rlca                                          ; $453E: $07
    push hl                                       ; $453F: $E5
    nop                                           ; $4540: $00
    ld sp, $E501                                  ; $4541: $31 $01 $E5
    ld sp, hl                                     ; $4544: $F9
    jr nc, jr_00F_4548                            ; $4545: $30 $01

jr_00F_4547:
    add b                                         ; $4547: $80

jr_00F_4548:
    nop                                           ; $4548: $00
    nop                                           ; $4549: $00
    inc a                                         ; $454A: $3C
    nop                                           ; $454B: $00
    nop                                           ; $454C: $00
    ld hl, sp+$3C                                 ; $454D: $F8 $3C
    jr nz, jr_00F_4547                            ; $454F: $20 $F6

    nop                                           ; $4551: $00
    jr c, jr_00F_455B                             ; $4552: $38 $07

    rst $30                                       ; $4554: $F7
    ld hl, sp+$37                                 ; $4555: $F8 $37
    rlca                                          ; $4557: $07
    rst $28                                       ; $4558: $EF
    nop                                           ; $4559: $00
    inc [hl]                                      ; $455A: $34

jr_00F_455B:
    rlca                                          ; $455B: $07
    rst $28                                       ; $455C: $EF
    ld hl, sp+$33                                 ; $455D: $F8 $33
    rlca                                          ; $455F: $07
    rst $20                                       ; $4560: $E7
    ld a, [$2131]                                 ; $4561: $FA $31 $21
    rst $20                                       ; $4564: $E7
    ld [bc], a                                    ; $4565: $02
    jr nc, jr_00F_4589                            ; $4566: $30 $21

    add b                                         ; $4568: $80
    nop                                           ; $4569: $00
    nop                                           ; $456A: $00
    inc a                                         ; $456B: $3C
    nop                                           ; $456C: $00
    nop                                           ; $456D: $00
    ld hl, sp+$3C                                 ; $456E: $F8 $3C
    jr nz, @-$09                                  ; $4570: $20 $F5

    nop                                           ; $4572: $00
    jr c, jr_00F_457C                             ; $4573: $38 $07

    or $F8                                        ; $4575: $F6 $F8
    scf                                           ; $4577: $37
    rlca                                          ; $4578: $07
    xor $00                                       ; $4579: $EE $00
    inc [hl]                                      ; $457B: $34

jr_00F_457C:
    rlca                                          ; $457C: $07
    xor $F8                                       ; $457D: $EE $F8
    inc sp                                        ; $457F: $33
    rlca                                          ; $4580: $07
    and $FA                                       ; $4581: $E6 $FA
    ld sp, $E621                                  ; $4583: $31 $21 $E6
    ld [bc], a                                    ; $4586: $02

jr_00F_4587:
    jr nc, jr_00F_45AA                            ; $4587: $30 $21

jr_00F_4589:
    add b                                         ; $4589: $80
    nop                                           ; $458A: $00
    nop                                           ; $458B: $00
    inc a                                         ; $458C: $3C
    nop                                           ; $458D: $00
    nop                                           ; $458E: $00
    ld hl, sp+$3C                                 ; $458F: $F8 $3C
    jr nz, jr_00F_4587                            ; $4591: $20 $F4

    nop                                           ; $4593: $00
    jr c, jr_00F_459D                             ; $4594: $38 $07

    push af                                       ; $4596: $F5
    ld hl, sp+$37                                 ; $4597: $F8 $37
    rlca                                          ; $4599: $07
    db $ED                                        ; $459A: $ED
    nop                                           ; $459B: $00
    inc [hl]                                      ; $459C: $34

jr_00F_459D:
    rlca                                          ; $459D: $07
    db $ED                                        ; $459E: $ED
    ld hl, sp+$33                                 ; $459F: $F8 $33
    rlca                                          ; $45A1: $07
    push hl                                       ; $45A2: $E5
    ld a, [$2131]                                 ; $45A3: $FA $31 $21
    push hl                                       ; $45A6: $E5
    ld [bc], a                                    ; $45A7: $02
    jr nc, jr_00F_45CB                            ; $45A8: $30 $21

jr_00F_45AA:
    add b                                         ; $45AA: $80
    nop                                           ; $45AB: $00

jr_00F_45AC:
    nop                                           ; $45AC: $00
    dec sp                                        ; $45AD: $3B
    nop                                           ; $45AE: $00
    nop                                           ; $45AF: $00
    ld hl, sp+$3B                                 ; $45B0: $F8 $3B
    jr nz, jr_00F_45AC                            ; $45B2: $20 $F8

    nop                                           ; $45B4: $00
    ld a, [hl-]                                   ; $45B5: $3A
    rlca                                          ; $45B6: $07
    ld hl, sp-$08                                 ; $45B7: $F8 $F8
    add hl, sp                                    ; $45B9: $39
    rlca                                          ; $45BA: $07
    ldh a, [rP1]                                  ; $45BB: $F0 $00
    ld [hl], $07                                  ; $45BD: $36 $07
    ldh a, [$F8]                                  ; $45BF: $F0 $F8
    dec [hl]                                      ; $45C1: $35
    rlca                                          ; $45C2: $07
    add sp, $00                                   ; $45C3: $E8 $00
    ld [hl-], a                                   ; $45C5: $32
    ld bc, $F8E8                                  ; $45C6: $01 $E8 $F8
    jr nc, jr_00F_45CC                            ; $45C9: $30 $01

jr_00F_45CB:
    add b                                         ; $45CB: $80

jr_00F_45CC:
    nop                                           ; $45CC: $00
    nop                                           ; $45CD: $00
    ld [hl], $20                                  ; $45CE: $36 $20
    nop                                           ; $45D0: $00
    ld hl, sp+$36                                 ; $45D1: $F8 $36
    nop                                           ; $45D3: $00
    ld hl, sp+$00                                 ; $45D4: $F8 $00
    dec [hl]                                      ; $45D6: $35
    rlca                                          ; $45D7: $07
    ld hl, sp-$08                                 ; $45D8: $F8 $F8
    inc [hl]                                      ; $45DA: $34
    rlca                                          ; $45DB: $07
    ldh a, [rP1]                                  ; $45DC: $F0 $00
    inc sp                                        ; $45DE: $33
    rlca                                          ; $45DF: $07
    ldh a, [$F8]                                  ; $45E0: $F0 $F8
    ld [hl-], a                                   ; $45E2: $32
    rlca                                          ; $45E3: $07
    add sp, $00                                   ; $45E4: $E8 $00
    ld sp, $E801                                  ; $45E6: $31 $01 $E8
    ld hl, sp+$30                                 ; $45E9: $F8 $30
    ld bc, $0080                                  ; $45EB: $01 $80 $00
    nop                                           ; $45EE: $00
    ld [hl], $20                                  ; $45EF: $36 $20
    nop                                           ; $45F1: $00
    ld hl, sp+$36                                 ; $45F2: $F8 $36
    nop                                           ; $45F4: $00
    ld hl, sp-$08                                 ; $45F5: $F8 $F8
    dec [hl]                                      ; $45F7: $35
    daa                                           ; $45F8: $27
    ld hl, sp+$00                                 ; $45F9: $F8 $00
    inc [hl]                                      ; $45FB: $34
    daa                                           ; $45FC: $27
    ldh a, [$F8]                                  ; $45FD: $F0 $F8
    inc sp                                        ; $45FF: $33
    daa                                           ; $4600: $27
    ldh a, [rP1]                                  ; $4601: $F0 $00
    ld [hl-], a                                   ; $4603: $32
    daa                                           ; $4604: $27
    add sp, -$08                                  ; $4605: $E8 $F8
    ld sp, $E821                                  ; $4607: $31 $21 $E8
    nop                                           ; $460A: $00
    jr nc, jr_00F_462E                            ; $460B: $30 $21

    add b                                         ; $460D: $80
    ld hl, sp+$00                                 ; $460E: $F8 $00
    add hl, bc                                    ; $4610: $09
    rlca                                          ; $4611: $07
    ld hl, sp-$08                                 ; $4612: $F8 $F8
    ld [$F007], sp                                ; $4614: $08 $07 $F0
    ld hl, sp+$02                                 ; $4617: $F8 $02
    daa                                           ; $4619: $27
    ldh a, [rP1]                                  ; $461A: $F0 $00
    ld [bc], a                                    ; $461C: $02
    rlca                                          ; $461D: $07
    add sp, -$08                                  ; $461E: $E8 $F8
    ld bc, $E821                                  ; $4620: $01 $21 $E8
    nop                                           ; $4623: $00
    ld bc, $0001                                  ; $4624: $01 $01 $00
    ld hl, sp+$00                                 ; $4627: $F8 $00
    jr nz, jr_00F_462B                            ; $4629: $20 $00

jr_00F_462B:
    nop                                           ; $462B: $00
    nop                                           ; $462C: $00
    nop                                           ; $462D: $00

jr_00F_462E:
    add b                                         ; $462E: $80
    ldh a, [rP1]                                  ; $462F: $F0 $00
    inc b                                         ; $4631: $04
    rlca                                          ; $4632: $07
    ldh a, [$F8]                                  ; $4633: $F0 $F8
    inc bc                                        ; $4635: $03
    rlca                                          ; $4636: $07
    ld hl, sp+$00                                 ; $4637: $F8 $00
    add hl, bc                                    ; $4639: $09
    rlca                                          ; $463A: $07
    ld hl, sp-$08                                 ; $463B: $F8 $F8
    ld [$E807], sp                                ; $463D: $08 $07 $E8
    ld hl, sp+$01                                 ; $4640: $F8 $01
    ld hl, $00E8                                  ; $4642: $21 $E8 $00
    ld bc, $0001                                  ; $4645: $01 $01 $00
    ld hl, sp+$00                                 ; $4648: $F8 $00
    jr nz, jr_00F_464C                            ; $464A: $20 $00

jr_00F_464C:
    nop                                           ; $464C: $00
    nop                                           ; $464D: $00
    nop                                           ; $464E: $00
    add b                                         ; $464F: $80
    ldh a, [rP1]                                  ; $4650: $F0 $00
    ld b, $07                                     ; $4652: $06 $07
    ldh a, [$F8]                                  ; $4654: $F0 $F8
    dec b                                         ; $4656: $05

Jump_00F_4657:
    rlca                                          ; $4657: $07
    ld hl, sp+$00                                 ; $4658: $F8 $00
    add hl, bc                                    ; $465A: $09
    rlca                                          ; $465B: $07
    ld hl, sp-$08                                 ; $465C: $F8 $F8
    ld [$E807], sp                                ; $465E: $08 $07 $E8
    ld hl, sp+$01                                 ; $4661: $F8 $01
    ld hl, $00E8                                  ; $4663: $21 $E8 $00
    ld bc, $0001                                  ; $4666: $01 $01 $00
    ld hl, sp+$00                                 ; $4669: $F8 $00
    jr nz, jr_00F_466D                            ; $466B: $20 $00

jr_00F_466D:
    nop                                           ; $466D: $00
    nop                                           ; $466E: $00
    nop                                           ; $466F: $00
    add b                                         ; $4670: $80
    ldh a, [rP1]                                  ; $4671: $F0 $00
    ld [bc], a                                    ; $4673: $02
    rlca                                          ; $4674: $07
    ldh a, [$F8]                                  ; $4675: $F0 $F8
    rlca                                          ; $4677: $07
    rlca                                          ; $4678: $07
    ld hl, sp+$00                                 ; $4679: $F8 $00
    add hl, bc                                    ; $467B: $09
    rlca                                          ; $467C: $07
    ld hl, sp-$08                                 ; $467D: $F8 $F8
    ld [$E807], sp                                ; $467F: $08 $07 $E8
    ld hl, sp+$01                                 ; $4682: $F8 $01
    ld hl, $00E8                                  ; $4684: $21 $E8 $00
    ld bc, $0001                                  ; $4687: $01 $01 $00
    ld hl, sp+$00                                 ; $468A: $F8 $00
    jr nz, jr_00F_468E                            ; $468C: $20 $00

jr_00F_468E:
    nop                                           ; $468E: $00
    nop                                           ; $468F: $00
    nop                                           ; $4690: $00
    add b                                         ; $4691: $80
    ld [bc], a                                    ; $4692: $02
    ldh a, [rNR51]                                ; $4693: $F0 $25
    nop                                           ; $4695: $00
    ld [bc], a                                    ; $4696: $02
    nop                                           ; $4697: $00
    inc e                                         ; $4698: $1C
    rlca                                          ; $4699: $07
    ld [bc], a                                    ; $469A: $02
    ld hl, sp+$1B                                 ; $469B: $F8 $1B
    rlca                                          ; $469D: $07
    db $FC                                        ; $469E: $FC
    cp $1A                                        ; $469F: $FE $1A
    ld bc, $F6FC                                  ; $46A1: $01 $FC $F6
    add hl, de                                    ; $46A4: $19
    ld bc, $F680                                  ; $46A5: $01 $80 $F6
    nop                                           ; $46A8: $00
    jr jr_00F_46B2                                ; $46A9: $18 $07

    or $F8                                        ; $46AB: $F6 $F8
    rla                                           ; $46AD: $17
    rlca                                          ; $46AE: $07
    xor $00                                       ; $46AF: $EE $00
    dec e                                         ; $46B1: $1D

jr_00F_46B2:
    rlca                                          ; $46B2: $07
    xor $F8                                       ; $46B3: $EE $F8
    inc de                                        ; $46B5: $13
    rlca                                          ; $46B6: $07
    nop                                           ; $46B7: $00
    ld hl, sp+$22                                 ; $46B8: $F8 $22
    jr nz, jr_00F_46BC                            ; $46BA: $20 $00

jr_00F_46BC:
    nop                                           ; $46BC: $00
    ld [hl+], a                                   ; $46BD: $22
    nop                                           ; $46BE: $00
    and $F8                                       ; $46BF: $E6 $F8
    rrca                                          ; $46C1: $0F
    ld bc, $00E6                                  ; $46C2: $01 $E6 $00
    ld [de], a                                    ; $46C5: $12
    ld bc, $0080                                  ; $46C6: $01 $80 $00
    nop                                           ; $46C9: $00
    inc hl                                        ; $46CA: $23
    nop                                           ; $46CB: $00
    nop                                           ; $46CC: $00
    ld hl, sp+$23                                 ; $46CD: $F8 $23
    jr nz, @-$07                                  ; $46CF: $20 $F7

    nop                                           ; $46D1: $00
    rra                                           ; $46D2: $1F
    rlca                                          ; $46D3: $07
    rst $30                                       ; $46D4: $F7
    ld hl, sp+$1E                                 ; $46D5: $F8 $1E
    rlca                                          ; $46D7: $07
    rst $28                                       ; $46D8: $EF
    nop                                           ; $46D9: $00
    dec e                                         ; $46DA: $1D
    rlca                                          ; $46DB: $07
    rst $28                                       ; $46DC: $EF
    ld hl, sp+$13                                 ; $46DD: $F8 $13
    rlca                                          ; $46DF: $07
    rst $20                                       ; $46E0: $E7
    ld hl, sp+$0F                                 ; $46E1: $F8 $0F
    ld bc, $00E7                                  ; $46E3: $01 $E7 $00
    ld [de], a                                    ; $46E6: $12
    ld bc, $F880                                  ; $46E7: $01 $80 $F8

jr_00F_46EA:
    nop                                           ; $46EA: $00
    ld hl, $F807                                  ; $46EB: $21 $07 $F8
    ld hl, sp+$20                                 ; $46EE: $F8 $20
    rlca                                          ; $46F0: $07
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    nop                                           ; $46F4: $00
    nop                                           ; $46F5: $00
    ld hl, sp+$00                                 ; $46F6: $F8 $00
    jr nz, jr_00F_46EA                            ; $46F8: $20 $F0

    nop                                           ; $46FA: $00
    dec e                                         ; $46FB: $1D
    rlca                                          ; $46FC: $07
    ldh a, [$F8]                                  ; $46FD: $F0 $F8
    inc de                                        ; $46FF: $13
    rlca                                          ; $4700: $07
    add sp, -$08                                  ; $4701: $E8 $F8
    rrca                                          ; $4703: $0F
    ld bc, $00E8                                  ; $4704: $01 $E8 $00
    ld [de], a                                    ; $4707: $12
    ld bc, $F680                                  ; $4708: $01 $80 $F6
    ld hl, sp+$18                                 ; $470B: $F8 $18
    daa                                           ; $470D: $27
    or $00                                        ; $470E: $F6 $00
    rla                                           ; $4710: $17
    daa                                           ; $4711: $27
    xor $F8                                       ; $4712: $EE $F8
    dec e                                         ; $4714: $1D
    daa                                           ; $4715: $27
    xor $00                                       ; $4716: $EE $00
    inc de                                        ; $4718: $13
    daa                                           ; $4719: $27
    nop                                           ; $471A: $00
    ld hl, sp+$22                                 ; $471B: $F8 $22
    jr nz, jr_00F_471F                            ; $471D: $20 $00

jr_00F_471F:
    nop                                           ; $471F: $00
    ld [hl+], a                                   ; $4720: $22
    nop                                           ; $4721: $00
    and $00                                       ; $4722: $E6 $00
    rrca                                          ; $4724: $0F
    ld hl, $F8E6                                  ; $4725: $21 $E6 $F8
    ld [de], a                                    ; $4728: $12
    ld hl, $0080                                  ; $4729: $21 $80 $00
    nop                                           ; $472C: $00
    inc hl                                        ; $472D: $23
    nop                                           ; $472E: $00
    nop                                           ; $472F: $00
    ld hl, sp+$23                                 ; $4730: $F8 $23
    jr nz, @-$07                                  ; $4732: $20 $F7

    ld hl, sp+$1F                                 ; $4734: $F8 $1F
    daa                                           ; $4736: $27
    rst $30                                       ; $4737: $F7
    nop                                           ; $4738: $00
    ld e, $27                                     ; $4739: $1E $27
    rst $28                                       ; $473B: $EF
    ld hl, sp+$1D                                 ; $473C: $F8 $1D
    daa                                           ; $473E: $27
    rst $28                                       ; $473F: $EF
    nop                                           ; $4740: $00
    inc de                                        ; $4741: $13
    daa                                           ; $4742: $27
    rst $20                                       ; $4743: $E7
    nop                                           ; $4744: $00
    rrca                                          ; $4745: $0F
    ld hl, $F8E7                                  ; $4746: $21 $E7 $F8
    ld [de], a                                    ; $4749: $12
    ld hl, $F880                                  ; $474A: $21 $80 $F8

jr_00F_474D:
    ld hl, sp+$21                                 ; $474D: $F8 $21
    daa                                           ; $474F: $27
    ld hl, sp+$00                                 ; $4750: $F8 $00
    jr nz, jr_00F_477B                            ; $4752: $20 $27

    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    ld hl, sp+$00                                 ; $4759: $F8 $00
    jr nz, jr_00F_474D                            ; $475B: $20 $F0

    ld hl, sp+$1D                                 ; $475D: $F8 $1D
    daa                                           ; $475F: $27
    ldh a, [rP1]                                  ; $4760: $F0 $00
    inc de                                        ; $4762: $13
    daa                                           ; $4763: $27
    add sp, $00                                   ; $4764: $E8 $00
    rrca                                          ; $4766: $0F
    ld hl, $F8E8                                  ; $4767: $21 $E8 $F8
    ld [de], a                                    ; $476A: $12
    ld hl, $0080                                  ; $476B: $21 $80 $00

jr_00F_476E:
    nop                                           ; $476E: $00
    inc hl                                        ; $476F: $23
    nop                                           ; $4770: $00
    nop                                           ; $4771: $00
    ld hl, sp+$23                                 ; $4772: $F8 $23
    jr nz, jr_00F_476E                            ; $4774: $20 $F8

    nop                                           ; $4776: $00
    jr jr_00F_4780                                ; $4777: $18 $07

    ld hl, sp-$08                                 ; $4779: $F8 $F8

jr_00F_477B:
    rla                                           ; $477B: $17
    rlca                                          ; $477C: $07
    ldh a, [rP1]                                  ; $477D: $F0 $00
    inc d                                         ; $477F: $14

jr_00F_4780:
    rlca                                          ; $4780: $07
    ldh a, [$F8]                                  ; $4781: $F0 $F8
    inc de                                        ; $4783: $13
    rlca                                          ; $4784: $07
    add sp, -$08                                  ; $4785: $E8 $F8
    rrca                                          ; $4787: $0F
    ld bc, $00E8                                  ; $4788: $01 $E8 $00
    ld [de], a                                    ; $478B: $12
    ld bc, $E880                                  ; $478C: $01 $80 $E8
    nop                                           ; $478F: $00
    ld de, $F001                                  ; $4790: $11 $01 $F0
    rlca                                          ; $4793: $07
    ld d, $00                                     ; $4794: $16 $00
    nop                                           ; $4796: $00

jr_00F_4797:
    nop                                           ; $4797: $00
    inc hl                                        ; $4798: $23
    nop                                           ; $4799: $00
    nop                                           ; $479A: $00
    ld hl, sp+$23                                 ; $479B: $F8 $23
    jr nz, jr_00F_4797                            ; $479D: $20 $F8

    nop                                           ; $479F: $00
    jr jr_00F_47A9                                ; $47A0: $18 $07

    ld hl, sp-$08                                 ; $47A2: $F8 $F8
    rla                                           ; $47A4: $17
    rlca                                          ; $47A5: $07
    ldh a, [rP1]                                  ; $47A6: $F0 $00
    inc d                                         ; $47A8: $14

jr_00F_47A9:
    rlca                                          ; $47A9: $07
    ldh a, [$F8]                                  ; $47AA: $F0 $F8
    inc de                                        ; $47AC: $13
    rlca                                          ; $47AD: $07
    add sp, -$08                                  ; $47AE: $E8 $F8
    rrca                                          ; $47B0: $0F
    ld bc, $E880                                  ; $47B1: $01 $80 $E8
    nop                                           ; $47B4: $00
    db $10                                        ; $47B5: $10
    ld bc, $07EC                                  ; $47B6: $01 $EC $07
    dec d                                         ; $47B9: $15
    nop                                           ; $47BA: $00
    nop                                           ; $47BB: $00

jr_00F_47BC:
    nop                                           ; $47BC: $00
    inc hl                                        ; $47BD: $23
    nop                                           ; $47BE: $00
    nop                                           ; $47BF: $00
    ld hl, sp+$23                                 ; $47C0: $F8 $23
    jr nz, jr_00F_47BC                            ; $47C2: $20 $F8

    nop                                           ; $47C4: $00
    jr jr_00F_47CE                                ; $47C5: $18 $07

    ld hl, sp-$08                                 ; $47C7: $F8 $F8
    rla                                           ; $47C9: $17
    rlca                                          ; $47CA: $07
    ldh a, [rP1]                                  ; $47CB: $F0 $00
    inc d                                         ; $47CD: $14

jr_00F_47CE:
    rlca                                          ; $47CE: $07
    ldh a, [$F8]                                  ; $47CF: $F0 $F8
    inc de                                        ; $47D1: $13
    rlca                                          ; $47D2: $07
    add sp, -$08                                  ; $47D3: $E8 $F8
    rrca                                          ; $47D5: $0F
    ld bc, $0080                                  ; $47D6: $01 $80 $00
    ld hl, sp+$23                                 ; $47D9: $F8 $23
    jr nz, jr_00F_47DD                            ; $47DB: $20 $00

jr_00F_47DD:
    nop                                           ; $47DD: $00
    inc hl                                        ; $47DE: $23
    nop                                           ; $47DF: $00
    rst $30                                       ; $47E0: $F7
    nop                                           ; $47E1: $00
    ld c, $07                                     ; $47E2: $0E $07
    rst $30                                       ; $47E4: $F7
    ld hl, sp+$0D                                 ; $47E5: $F8 $0D
    rlca                                          ; $47E7: $07
    rst $28                                       ; $47E8: $EF
    nop                                           ; $47E9: $00
    dec bc                                        ; $47EA: $0B
    rlca                                          ; $47EB: $07
    rst $28                                       ; $47EC: $EF
    ld hl, sp+$0A                                 ; $47ED: $F8 $0A
    rlca                                          ; $47EF: $07
    rst $20                                       ; $47F0: $E7
    ld hl, sp+$0C                                 ; $47F1: $F8 $0C
    ld hl, $00E7                                  ; $47F3: $21 $E7 $00
    inc c                                         ; $47F6: $0C
    ld bc, $E780                                  ; $47F7: $01 $80 $E7
    ld hl, sp+$01                                 ; $47FA: $F8 $01
    ld hl, $00E7                                  ; $47FC: $21 $E7 $00
    ld bc, $0001                                  ; $47FF: $01 $01 $00
    ld hl, sp+$23                                 ; $4802: $F8 $23
    jr nz, jr_00F_4806                            ; $4804: $20 $00

jr_00F_4806:
    nop                                           ; $4806: $00
    inc hl                                        ; $4807: $23
    nop                                           ; $4808: $00
    rst $30                                       ; $4809: $F7
    nop                                           ; $480A: $00
    ld c, $07                                     ; $480B: $0E $07
    rst $30                                       ; $480D: $F7
    ld hl, sp+$0D                                 ; $480E: $F8 $0D
    rlca                                          ; $4810: $07
    rst $28                                       ; $4811: $EF
    nop                                           ; $4812: $00
    dec bc                                        ; $4813: $0B
    rlca                                          ; $4814: $07
    rst $28                                       ; $4815: $EF
    ld hl, sp+$0A                                 ; $4816: $F8 $0A
    rlca                                          ; $4818: $07
    add b                                         ; $4819: $80
    rst $20                                       ; $481A: $E7
    ld hl, sp+$24                                 ; $481B: $F8 $24
    ld hl, $00E7                                  ; $481D: $21 $E7 $00
    inc h                                         ; $4820: $24
    ld bc, $F800                                  ; $4821: $01 $00 $F8
    inc hl                                        ; $4824: $23
    jr nz, jr_00F_4827                            ; $4825: $20 $00

jr_00F_4827:
    nop                                           ; $4827: $00
    inc hl                                        ; $4828: $23
    nop                                           ; $4829: $00
    rst $30                                       ; $482A: $F7
    nop                                           ; $482B: $00
    ld c, $07                                     ; $482C: $0E $07
    rst $30                                       ; $482E: $F7
    ld hl, sp+$0D                                 ; $482F: $F8 $0D
    rlca                                          ; $4831: $07
    rst $28                                       ; $4832: $EF
    nop                                           ; $4833: $00
    dec bc                                        ; $4834: $0B
    rlca                                          ; $4835: $07
    rst $28                                       ; $4836: $EF
    ld hl, sp+$0A                                 ; $4837: $F8 $0A
    rlca                                          ; $4839: $07
    add b                                         ; $483A: $80
    rst $30                                       ; $483B: $F7
    nop                                           ; $483C: $00
    add hl, bc                                    ; $483D: $09
    rlca                                          ; $483E: $07
    rst $30                                       ; $483F: $F7
    ld hl, sp+$08                                 ; $4840: $F8 $08
    rlca                                          ; $4842: $07
    rst $28                                       ; $4843: $EF
    ld hl, sp+$02                                 ; $4844: $F8 $02
    daa                                           ; $4846: $27
    rst $28                                       ; $4847: $EF
    nop                                           ; $4848: $00
    ld [bc], a                                    ; $4849: $02
    rlca                                          ; $484A: $07
    rst $20                                       ; $484B: $E7
    ld hl, sp+$01                                 ; $484C: $F8 $01
    ld hl, $00E7                                  ; $484E: $21 $E7 $00
    ld bc, $0001                                  ; $4851: $01 $01 $00
    ld sp, hl                                     ; $4854: $F9
    nop                                           ; $4855: $00
    jr nz, jr_00F_4858                            ; $4856: $20 $00

jr_00F_4858:
    rst $38                                       ; $4858: $FF
    nop                                           ; $4859: $00
    nop                                           ; $485A: $00

jr_00F_485B:
    add b                                         ; $485B: $80
    or $00                                        ; $485C: $F6 $00
    ld c, $07                                     ; $485E: $0E $07
    or $F8                                        ; $4860: $F6 $F8
    dec c                                         ; $4862: $0D
    rlca                                          ; $4863: $07
    nop                                           ; $4864: $00
    nop                                           ; $4865: $00
    ld [hl+], a                                   ; $4866: $22
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    ld hl, sp+$22                                 ; $4869: $F8 $22
    jr nz, jr_00F_485B                            ; $486B: $20 $EE

    ld hl, sp+$02                                 ; $486D: $F8 $02
    daa                                           ; $486F: $27
    xor $00                                       ; $4870: $EE $00
    ld [bc], a                                    ; $4872: $02
    rlca                                          ; $4873: $07
    and $F8                                       ; $4874: $E6 $F8
    ld bc, $E621                                  ; $4876: $01 $21 $E6
    nop                                           ; $4879: $00
    ld bc, $8001                                  ; $487A: $01 $01 $80
    ld c, l                                       ; $487D: $4D
    ld [$0008], sp                                ; $487E: $08 $08 $00
    nop                                           ; $4881: $00
    sub e                                         ; $4882: $93
    ld b, d                                       ; $4883: $42
    or h                                          ; $4884: $B4
    ld b, d                                       ; $4885: $42
    push de                                       ; $4886: $D5
    ld b, d                                       ; $4887: $42
    or h                                          ; $4888: $B4
    ld b, d                                       ; $4889: $42
    ld b, [hl]                                    ; $488A: $46
    ld a, l                                       ; $488B: $7D
    ld c, b                                       ; $488C: $48
    ld c, h                                       ; $488D: $4C
    rst $38                                       ; $488E: $FF
    nop                                           ; $488F: $00
    nop                                           ; $4890: $00
    sub e                                         ; $4891: $93
    ld b, d                                       ; $4892: $42
    nop                                           ; $4893: $00
    ld b, [hl]                                    ; $4894: $46
    adc l                                         ; $4895: $8D
    ld c, b                                       ; $4896: $48
    ld c, l                                       ; $4897: $4D
    ld [$0008], sp                                ; $4898: $08 $08 $00
    nop                                           ; $489B: $00
    add d                                         ; $489C: $82
    ld b, h                                       ; $489D: $44
    and e                                         ; $489E: $A3
    ld b, h                                       ; $489F: $44
    call nz, $A344                                ; $48A0: $C4 $44 $A3
    ld b, h                                       ; $48A3: $44
    ld b, [hl]                                    ; $48A4: $46
    sub a                                         ; $48A5: $97
    ld c, b                                       ; $48A6: $48
    ld c, l                                       ; $48A7: $4D
    ld [$0008], sp                                ; $48A8: $08 $08 $00
    nop                                           ; $48AB: $00
    ld e, c                                       ; $48AC: $59
    ld b, e                                       ; $48AD: $43
    ld a, d                                       ; $48AE: $7A
    ld b, e                                       ; $48AF: $43
    sbc e                                         ; $48B0: $9B
    ld b, e                                       ; $48B1: $43
    ld a, d                                       ; $48B2: $7A
    ld b, e                                       ; $48B3: $43
    ld b, [hl]                                    ; $48B4: $46
    and a                                         ; $48B5: $A7
    ld c, b                                       ; $48B6: $48
    ld c, l                                       ; $48B7: $4D
    ld [$0008], sp                                ; $48B8: $08 $08 $00
    nop                                           ; $48BB: $00
    or $42                                        ; $48BC: $F6 $42
    rla                                           ; $48BE: $17
    ld b, e                                       ; $48BF: $43
    jr c, jr_00F_4905                             ; $48C0: $38 $43

    rla                                           ; $48C2: $17
    ld b, e                                       ; $48C3: $43
    ld b, [hl]                                    ; $48C4: $46
    or a                                          ; $48C5: $B7
    ld c, b                                       ; $48C6: $48
    ld c, l                                       ; $48C7: $4D
    ld [$0008], sp                                ; $48C8: $08 $08 $00
    nop                                           ; $48CB: $00
    rra                                           ; $48CC: $1F
    ld b, h                                       ; $48CD: $44
    ld b, b                                       ; $48CE: $40
    ld b, h                                       ; $48CF: $44
    ld h, c                                       ; $48D0: $61
    ld b, h                                       ; $48D1: $44
    ld b, b                                       ; $48D2: $40
    ld b, h                                       ; $48D3: $44
    ld b, [hl]                                    ; $48D4: $46
    rst $00                                       ; $48D5: $C7
    ld c, b                                       ; $48D6: $48
    ld c, l                                       ; $48D7: $4D
    ld [$0008], sp                                ; $48D8: $08 $08 $00
    nop                                           ; $48DB: $00
    cp h                                          ; $48DC: $BC
    ld b, e                                       ; $48DD: $43
    db $DD                                        ; $48DE: $DD
    ld b, e                                       ; $48DF: $43
    cp $43                                        ; $48E0: $FE $43
    db $DD                                        ; $48E2: $DD
    ld b, e                                       ; $48E3: $43
    ld b, [hl]                                    ; $48E4: $46
    rst $10                                       ; $48E5: $D7
    ld c, b                                       ; $48E6: $48
    ld c, l                                       ; $48E7: $4D
    ld [$0008], sp                                ; $48E8: $08 $08 $00
    rst $38                                       ; $48EB: $FF
    add d                                         ; $48EC: $82
    ld b, h                                       ; $48ED: $44
    and e                                         ; $48EE: $A3
    ld b, h                                       ; $48EF: $44
    call nz, $A344                                ; $48F0: $C4 $44 $A3
    ld b, h                                       ; $48F3: $44
    ld b, [hl]                                    ; $48F4: $46
    rst $20                                       ; $48F5: $E7
    ld c, b                                       ; $48F6: $48
    ld c, l                                       ; $48F7: $4D
    ld [$0008], sp                                ; $48F8: $08 $08 $00
    ld bc, $4293                                  ; $48FB: $01 $93 $42
    or h                                          ; $48FE: $B4
    ld b, d                                       ; $48FF: $42
    push de                                       ; $4900: $D5
    ld b, d                                       ; $4901: $42
    or h                                          ; $4902: $B4
    ld b, d                                       ; $4903: $42
    ld b, [hl]                                    ; $4904: $46

jr_00F_4905:
    rst $30                                       ; $4905: $F7
    ld c, b                                       ; $4906: $48
    ld c, l                                       ; $4907: $4D
    ld [$0108], sp                                ; $4908: $08 $08 $01
    nop                                           ; $490B: $00
    or $42                                        ; $490C: $F6 $42
    rla                                           ; $490E: $17
    ld b, e                                       ; $490F: $43
    jr c, jr_00F_4955                             ; $4910: $38 $43

    rla                                           ; $4912: $17
    ld b, e                                       ; $4913: $43
    ld b, [hl]                                    ; $4914: $46
    rlca                                          ; $4915: $07
    ld c, c                                       ; $4916: $49
    ld c, l                                       ; $4917: $4D
    ld [$FF08], sp                                ; $4918: $08 $08 $FF
    nop                                           ; $491B: $00
    ld e, c                                       ; $491C: $59
    ld b, e                                       ; $491D: $43
    ld a, d                                       ; $491E: $7A
    ld b, e                                       ; $491F: $43
    sbc e                                         ; $4920: $9B
    ld b, e                                       ; $4921: $43
    ld a, d                                       ; $4922: $7A
    ld b, e                                       ; $4923: $43
    ld b, [hl]                                    ; $4924: $46
    rla                                           ; $4925: $17
    ld c, c                                       ; $4926: $49
    ld c, l                                       ; $4927: $4D
    ld [$FF08], sp                                ; $4928: $08 $08 $FF
    ld bc, $4359                                  ; $492B: $01 $59 $43
    ld a, d                                       ; $492E: $7A
    ld b, e                                       ; $492F: $43
    sbc e                                         ; $4930: $9B
    ld b, e                                       ; $4931: $43
    ld a, d                                       ; $4932: $7A
    ld b, e                                       ; $4933: $43
    ld b, [hl]                                    ; $4934: $46
    daa                                           ; $4935: $27
    ld c, c                                       ; $4936: $49
    ld c, l                                       ; $4937: $4D
    ld [$0108], sp                                ; $4938: $08 $08 $01
    ld bc, $42F6                                  ; $493B: $01 $F6 $42
    rla                                           ; $493E: $17
    ld b, e                                       ; $493F: $43
    jr c, jr_00F_4985                             ; $4940: $38 $43

    rla                                           ; $4942: $17
    ld b, e                                       ; $4943: $43
    ld b, [hl]                                    ; $4944: $46
    scf                                           ; $4945: $37
    ld c, c                                       ; $4946: $49
    ld c, l                                       ; $4947: $4D
    ld [$FF08], sp                                ; $4948: $08 $08 $FF
    rst $38                                       ; $494B: $FF
    rra                                           ; $494C: $1F
    ld b, h                                       ; $494D: $44
    ld b, b                                       ; $494E: $40
    ld b, h                                       ; $494F: $44
    ld h, c                                       ; $4950: $61
    ld b, h                                       ; $4951: $44
    ld b, b                                       ; $4952: $40
    ld b, h                                       ; $4953: $44
    ld b, [hl]                                    ; $4954: $46

jr_00F_4955:
    ld b, a                                       ; $4955: $47
    ld c, c                                       ; $4956: $49
    ld c, l                                       ; $4957: $4D
    ld [$0108], sp                                ; $4958: $08 $08 $01
    rst $38                                       ; $495B: $FF
    cp h                                          ; $495C: $BC
    ld b, e                                       ; $495D: $43
    db $DD                                        ; $495E: $DD
    ld b, e                                       ; $495F: $43
    cp $43                                        ; $4960: $FE $43
    db $DD                                        ; $4962: $DD
    ld b, e                                       ; $4963: $43
    ld b, [hl]                                    ; $4964: $46
    ld d, a                                       ; $4965: $57
    ld c, c                                       ; $4966: $49
    ld c, l                                       ; $4967: $4D
    ld [$0008], sp                                ; $4968: $08 $08 $00
    nop                                           ; $496B: $00
    push hl                                       ; $496C: $E5
    ld b, h                                       ; $496D: $44
    ld b, $45                                     ; $496E: $06 $45
    daa                                           ; $4970: $27
    ld b, l                                       ; $4971: $45
    ld b, $45                                     ; $4972: $06 $45
    ld b, [hl]                                    ; $4974: $46
    ld h, a                                       ; $4975: $67
    ld c, c                                       ; $4976: $49
    ld c, l                                       ; $4977: $4D
    ld [$0008], sp                                ; $4978: $08 $08 $00
    rst $38                                       ; $497B: $FF
    push hl                                       ; $497C: $E5
    ld b, h                                       ; $497D: $44
    ld b, $45                                     ; $497E: $06 $45
    daa                                           ; $4980: $27
    ld b, l                                       ; $4981: $45
    ld b, $45                                     ; $4982: $06 $45
    ld b, [hl]                                    ; $4984: $46

jr_00F_4985:
    ld [hl], a                                    ; $4985: $77
    ld c, c                                       ; $4986: $49
    ld c, l                                       ; $4987: $4D
    ld [$0008], sp                                ; $4988: $08 $08 $00
    nop                                           ; $498B: $00
    ld c, b                                       ; $498C: $48
    ld b, l                                       ; $498D: $45
    ld l, c                                       ; $498E: $69
    ld b, l                                       ; $498F: $45
    adc d                                         ; $4990: $8A
    ld b, l                                       ; $4991: $45
    ld l, c                                       ; $4992: $69
    ld b, l                                       ; $4993: $45
    ld b, [hl]                                    ; $4994: $46
    add a                                         ; $4995: $87
    ld c, c                                       ; $4996: $49
    ld c, h                                       ; $4997: $4C
    rst $38                                       ; $4998: $FF
    nop                                           ; $4999: $00
    nop                                           ; $499A: $00
    ld l, c                                       ; $499B: $69
    ld b, l                                       ; $499C: $45
    nop                                           ; $499D: $00
    ld b, [hl]                                    ; $499E: $46
    sub a                                         ; $499F: $97
    ld c, c                                       ; $49A0: $49
    ld c, h                                       ; $49A1: $4C
    rst $38                                       ; $49A2: $FF
    nop                                           ; $49A3: $00
    nop                                           ; $49A4: $00
    xor e                                         ; $49A5: $AB
    ld b, l                                       ; $49A6: $45
    nop                                           ; $49A7: $00
    ld b, [hl]                                    ; $49A8: $46
    and c                                         ; $49A9: $A1
    ld c, c                                       ; $49AA: $49
    ld c, h                                       ; $49AB: $4C
    ld bc, $0000                                  ; $49AC: $01 $00 $00
    or h                                          ; $49AF: $B4
    ld b, d                                       ; $49B0: $42
    nop                                           ; $49B1: $00
    ld c, b                                       ; $49B2: $48
    ld b, [hl]                                    ; $49B3: $46
    xor e                                         ; $49B4: $AB
    ld c, c                                       ; $49B5: $49
    ld c, h                                       ; $49B6: $4C
    ld bc, $0000                                  ; $49B7: $01 $00 $00
    db $ED                                        ; $49BA: $ED
    ld b, l                                       ; $49BB: $45
    ld bc, $FF00                                  ; $49BC: $01 $00 $FF
    db $ED                                        ; $49BF: $ED
    ld b, l                                       ; $49C0: $45
    ld bc, $0000                                  ; $49C1: $01 $00 $00
    db $ED                                        ; $49C4: $ED
    ld b, l                                       ; $49C5: $45
    ld bc, $0100                                  ; $49C6: $01 $00 $01
    db $ED                                        ; $49C9: $ED
    ld b, l                                       ; $49CA: $45
    ld bc, $0000                                  ; $49CB: $01 $00 $00
    db $ED                                        ; $49CE: $ED
    ld b, l                                       ; $49CF: $45
    ld bc, $FF00                                  ; $49D0: $01 $00 $FF
    db $ED                                        ; $49D3: $ED
    ld b, l                                       ; $49D4: $45
    ld bc, $0000                                  ; $49D5: $01 $00 $00
    db $ED                                        ; $49D8: $ED
    ld b, l                                       ; $49D9: $45
    ld bc, $0100                                  ; $49DA: $01 $00 $01
    db $ED                                        ; $49DD: $ED
    ld b, l                                       ; $49DE: $45
    nop                                           ; $49DF: $00
    ld c, h                                       ; $49E0: $4C
    rst $38                                       ; $49E1: $FF
    nop                                           ; $49E2: $00
    nop                                           ; $49E3: $00
    db $ED                                        ; $49E4: $ED
    ld b, l                                       ; $49E5: $45
    nop                                           ; $49E6: $00
    ld b, [hl]                                    ; $49E7: $46
    ldh [rOBP1], a                                ; $49E8: $E0 $49
    ld c, h                                       ; $49EA: $4C
    ld bc, $0000                                  ; $49EB: $01 $00 $00
    call z, $0145                                 ; $49EE: $CC $45 $01
    nop                                           ; $49F1: $00
    rst $38                                       ; $49F2: $FF
    call z, $0145                                 ; $49F3: $CC $45 $01
    nop                                           ; $49F6: $00
    nop                                           ; $49F7: $00
    call z, $0145                                 ; $49F8: $CC $45 $01
    nop                                           ; $49FB: $00
    ld bc, $45CC                                  ; $49FC: $01 $CC $45
    ld bc, $0000                                  ; $49FF: $01 $00 $00
    call z, $0145                                 ; $4A02: $CC $45 $01
    nop                                           ; $4A05: $00
    rst $38                                       ; $4A06: $FF
    call z, $0145                                 ; $4A07: $CC $45 $01
    nop                                           ; $4A0A: $00
    nop                                           ; $4A0B: $00
    call z, $0145                                 ; $4A0C: $CC $45 $01
    nop                                           ; $4A0F: $00
    ld bc, $45CC                                  ; $4A10: $01 $CC $45
    nop                                           ; $4A13: $00
    ld c, h                                       ; $4A14: $4C
    rst $38                                       ; $4A15: $FF
    nop                                           ; $4A16: $00
    nop                                           ; $4A17: $00
    call z, $0045                                 ; $4A18: $CC $45 $00
    ld b, [hl]                                    ; $4A1B: $46
    inc d                                         ; $4A1C: $14
    ld c, d                                       ; $4A1D: $4A
    ld c, l                                       ; $4A1E: $4D
    jr jr_00F_4A29                                ; $4A1F: $18 $08

    nop                                           ; $4A21: $00
    nop                                           ; $4A22: $00
    ld e, h                                       ; $4A23: $5C
    ld c, b                                       ; $4A24: $48
    dec sp                                        ; $4A25: $3B
    ld c, b                                       ; $4A26: $48
    ld c, $46                                     ; $4A27: $0E $46

jr_00F_4A29:
    dec sp                                        ; $4A29: $3B
    ld c, b                                       ; $4A2A: $48
    ld e, h                                       ; $4A2B: $5C
    ld c, b                                       ; $4A2C: $48
    dec sp                                        ; $4A2D: $3B
    ld c, b                                       ; $4A2E: $48
    ld c, $46                                     ; $4A2F: $0E $46
    dec sp                                        ; $4A31: $3B
    ld c, b                                       ; $4A32: $48
    ld e, h                                       ; $4A33: $5C
    ld c, b                                       ; $4A34: $48
    dec sp                                        ; $4A35: $3B
    ld c, b                                       ; $4A36: $48
    ld c, $46                                     ; $4A37: $0E $46
    dec sp                                        ; $4A39: $3B
    ld c, b                                       ; $4A3A: $48
    ld b, a                                       ; $4A3B: $47
    ld [bc], a                                    ; $4A3C: $02
    rrca                                          ; $4A3D: $0F
    ld b, e                                       ; $4A3E: $43
    ld c, d                                       ; $4A3F: $4A
    rrca                                          ; $4A40: $0F
    ld h, e                                       ; $4A41: $63
    ld c, d                                       ; $4A42: $4A
    ld c, l                                       ; $4A43: $4D
    jr jr_00F_4A4E                                ; $4A44: $18 $08

    nop                                           ; $4A46: $00
    nop                                           ; $4A47: $00
    ld a, [bc]                                    ; $4A48: $0A
    ld b, a                                       ; $4A49: $47
    dec hl                                        ; $4A4A: $2B
    ld b, a                                       ; $4A4B: $47
    ld c, h                                       ; $4A4C: $4C
    ld b, a                                       ; $4A4D: $47

jr_00F_4A4E:
    dec hl                                        ; $4A4E: $2B
    ld b, a                                       ; $4A4F: $47
    ld a, [bc]                                    ; $4A50: $0A
    ld b, a                                       ; $4A51: $47
    dec hl                                        ; $4A52: $2B
    ld b, a                                       ; $4A53: $47
    ld c, h                                       ; $4A54: $4C
    ld b, a                                       ; $4A55: $47
    dec hl                                        ; $4A56: $2B
    ld b, a                                       ; $4A57: $47
    ld a, [bc]                                    ; $4A58: $0A
    ld b, a                                       ; $4A59: $47
    dec hl                                        ; $4A5A: $2B
    ld b, a                                       ; $4A5B: $47
    ld c, h                                       ; $4A5C: $4C
    ld b, a                                       ; $4A5D: $47
    dec hl                                        ; $4A5E: $2B
    ld b, a                                       ; $4A5F: $47
    ld b, [hl]                                    ; $4A60: $46
    ld e, $4A                                     ; $4A61: $1E $4A
    ld c, l                                       ; $4A63: $4D
    jr jr_00F_4A6E                                ; $4A64: $18 $08

    nop                                           ; $4A66: $00
    nop                                           ; $4A67: $00
    and a                                         ; $4A68: $A7
    ld b, [hl]                                    ; $4A69: $46
    ret z                                         ; $4A6A: $C8

    ld b, [hl]                                    ; $4A6B: $46
    jp hl                                         ; $4A6C: $E9


    ld b, [hl]                                    ; $4A6D: $46

jr_00F_4A6E:
    ret z                                         ; $4A6E: $C8

    ld b, [hl]                                    ; $4A6F: $46
    and a                                         ; $4A70: $A7
    ld b, [hl]                                    ; $4A71: $46
    ret z                                         ; $4A72: $C8

    ld b, [hl]                                    ; $4A73: $46
    jp hl                                         ; $4A74: $E9


    ld b, [hl]                                    ; $4A75: $46
    ret z                                         ; $4A76: $C8

    ld b, [hl]                                    ; $4A77: $46
    and a                                         ; $4A78: $A7
    ld b, [hl]                                    ; $4A79: $46
    ret z                                         ; $4A7A: $C8

    ld b, [hl]                                    ; $4A7B: $46
    jp hl                                         ; $4A7C: $E9


    ld b, [hl]                                    ; $4A7D: $46
    ret z                                         ; $4A7E: $C8

    ld b, [hl]                                    ; $4A7F: $46
    ld b, [hl]                                    ; $4A80: $46
    ld e, $4A                                     ; $4A81: $1E $4A
    ld c, h                                       ; $4A83: $4C
    ld [rRAMG], sp                                ; $4A84: $08 $00 $00
    ld c, $46                                     ; $4A87: $0E $46
    jr nz, jr_00F_4A8B                            ; $4A89: $20 $00

jr_00F_4A8B:
    nop                                           ; $4A8B: $00
    cpl                                           ; $4A8C: $2F
    ld b, [hl]                                    ; $4A8D: $46
    jr nz, jr_00F_4A90                            ; $4A8E: $20 $00

jr_00F_4A90:
    nop                                           ; $4A90: $00
    ld d, b                                       ; $4A91: $50
    ld b, [hl]                                    ; $4A92: $46
    jr nz, jr_00F_4A95                            ; $4A93: $20 $00

jr_00F_4A95:
    nop                                           ; $4A95: $00
    ld [hl], c                                    ; $4A96: $71
    ld b, [hl]                                    ; $4A97: $46
    nop                                           ; $4A98: $00
    ld b, [hl]                                    ; $4A99: $46
    ld e, $4A                                     ; $4A9A: $1E $4A
    ld c, l                                       ; $4A9C: $4D
    jr nz, jr_00F_4AA3                            ; $4A9D: $20 $04

    nop                                           ; $4A9F: $00
    nop                                           ; $4AA0: $00
    ld l, l                                       ; $4AA1: $6D
    ld b, a                                       ; $4AA2: $47

jr_00F_4AA3:
    adc [hl]                                      ; $4AA3: $8E
    ld b, a                                       ; $4AA4: $47
    or e                                          ; $4AA5: $B3
    ld b, a                                       ; $4AA6: $47
    adc [hl]                                      ; $4AA7: $8E
    ld b, a                                       ; $4AA8: $47
    ld l, l                                       ; $4AA9: $6D
    ld b, a                                       ; $4AAA: $47
    adc [hl]                                      ; $4AAB: $8E
    ld b, a                                       ; $4AAC: $47
    or e                                          ; $4AAD: $B3
    ld b, a                                       ; $4AAE: $47
    adc [hl]                                      ; $4AAF: $8E
    ld b, a                                       ; $4AB0: $47
    ld l, l                                       ; $4AB1: $6D
    ld b, a                                       ; $4AB2: $47
    adc [hl]                                      ; $4AB3: $8E
    ld b, a                                       ; $4AB4: $47
    or e                                          ; $4AB5: $B3
    ld b, a                                       ; $4AB6: $47
    adc [hl]                                      ; $4AB7: $8E
    ld b, a                                       ; $4AB8: $47
    ld l, l                                       ; $4AB9: $6D
    ld b, a                                       ; $4ABA: $47
    adc [hl]                                      ; $4ABB: $8E
    ld b, a                                       ; $4ABC: $47
    or e                                          ; $4ABD: $B3
    ld b, a                                       ; $4ABE: $47
    adc [hl]                                      ; $4ABF: $8E
    ld b, a                                       ; $4AC0: $47
    ld c, h                                       ; $4AC1: $4C
    jr nz, jr_00F_4AC4                            ; $4AC2: $20 $00

jr_00F_4AC4:
    nop                                           ; $4AC4: $00
    ld l, l                                       ; $4AC5: $6D
    ld b, a                                       ; $4AC6: $47
    nop                                           ; $4AC7: $00
    ld b, [hl]                                    ; $4AC8: $46
    ld e, $4A                                     ; $4AC9: $1E $4A
    ld c, h                                       ; $4ACB: $4C
    ld [rRAMG], sp                                ; $4ACC: $08 $00 $00
    ld c, $46                                     ; $4ACF: $0E $46
    jr nz, jr_00F_4AD3                            ; $4AD1: $20 $00

jr_00F_4AD3:
    nop                                           ; $4AD3: $00
    ld sp, hl                                     ; $4AD4: $F9
    ld b, a                                       ; $4AD5: $47
    ld [rRAMG], sp                                ; $4AD6: $08 $00 $00
    ret c                                         ; $4AD9: $D8

    ld b, a                                       ; $4ADA: $47
    ld [rRAMG], sp                                ; $4ADB: $08 $00 $00
    ld sp, hl                                     ; $4ADE: $F9
    ld b, a                                       ; $4ADF: $47
    ld [rRAMG], sp                                ; $4AE0: $08 $00 $00
    ret c                                         ; $4AE3: $D8

    ld b, a                                       ; $4AE4: $47
    ld [rRAMG], sp                                ; $4AE5: $08 $00 $00
    ld sp, hl                                     ; $4AE8: $F9
    ld b, a                                       ; $4AE9: $47
    ld [rRAMG], sp                                ; $4AEA: $08 $00 $00
    ret c                                         ; $4AED: $D8

    ld b, a                                       ; $4AEE: $47
    ld [rRAMG], sp                                ; $4AEF: $08 $00 $00
    ld sp, hl                                     ; $4AF2: $F9
    ld b, a                                       ; $4AF3: $47
    nop                                           ; $4AF4: $00
    ld c, l                                       ; $4AF5: $4D
    inc b                                         ; $4AF6: $04
    ld [rRAMG], sp                                ; $4AF7: $08 $00 $00
    ld a, [de]                                    ; $4AFA: $1A
    ld c, b                                       ; $4AFB: $48
    ld sp, hl                                     ; $4AFC: $F9
    ld b, a                                       ; $4AFD: $47
    ld b, [hl]                                    ; $4AFE: $46
    push af                                       ; $4AFF: $F5
    ld c, d                                       ; $4B00: $4A
    ld c, h                                       ; $4B01: $4C
    ld b, b                                       ; $4B02: $40
    nop                                           ; $4B03: $00
    nop                                           ; $4B04: $00
    sub d                                         ; $4B05: $92
    ld b, [hl]                                    ; $4B06: $46
    nop                                           ; $4B07: $00
    ld c, b                                       ; $4B08: $48
    ld c, h                                       ; $4B09: $4C
    ld bc, $0000                                  ; $4B0A: $01 $00 $00
    sub d                                         ; $4B0D: $92
    ld b, [hl]                                    ; $4B0E: $46
    nop                                           ; $4B0F: $00
    ld c, b                                       ; $4B10: $48
    ld c, h                                       ; $4B11: $4C
    ld bc, $0000                                  ; $4B12: $01 $00 $00
    sub d                                         ; $4B15: $92
    ld b, [hl]                                    ; $4B16: $46
    nop                                           ; $4B17: $00
    ld c, b                                       ; $4B18: $48
    ld c, h                                       ; $4B19: $4C
    ld bc, $0000                                  ; $4B1A: $01 $00 $00
    sub d                                         ; $4B1D: $92
    ld b, [hl]                                    ; $4B1E: $46
    nop                                           ; $4B1F: $00
    ld c, b                                       ; $4B20: $48
    ld c, h                                       ; $4B21: $4C
    ld bc, $0000                                  ; $4B22: $01 $00 $00
    sub d                                         ; $4B25: $92
    ld b, [hl]                                    ; $4B26: $46
    nop                                           ; $4B27: $00
    ld c, b                                       ; $4B28: $48
    ld c, h                                       ; $4B29: $4C
    ld bc, $0000                                  ; $4B2A: $01 $00 $00
    sub d                                         ; $4B2D: $92
    ld b, [hl]                                    ; $4B2E: $46
    nop                                           ; $4B2F: $00
    ld c, b                                       ; $4B30: $48
    ld c, h                                       ; $4B31: $4C
    ld bc, $0000                                  ; $4B32: $01 $00 $00
    sub d                                         ; $4B35: $92
    ld b, [hl]                                    ; $4B36: $46
    nop                                           ; $4B37: $00
    ld c, b                                       ; $4B38: $48
    ld c, h                                       ; $4B39: $4C
    ld bc, $0000                                  ; $4B3A: $01 $00 $00
    sub d                                         ; $4B3D: $92
    ld b, [hl]                                    ; $4B3E: $46
    nop                                           ; $4B3F: $00
    ld c, b                                       ; $4B40: $48
    ld c, h                                       ; $4B41: $4C
    ld bc, $0000                                  ; $4B42: $01 $00 $00
    sub d                                         ; $4B45: $92
    ld b, [hl]                                    ; $4B46: $46
    nop                                           ; $4B47: $00
    ld b, d                                       ; $4B48: $42
    ldh a, [$F8]                                  ; $4B49: $F0 $F8
    nop                                           ; $4B4B: $00
    rlca                                          ; $4B4C: $07
    ldh a, [rP1]                                  ; $4B4D: $F0 $00
    ld bc, $F807                                  ; $4B4F: $01 $07 $F8
    ld hl, sp+$07                                 ; $4B52: $F8 $07
    rlca                                          ; $4B54: $07
    ld hl, sp+$00                                 ; $4B55: $F8 $00
    ld [$0007], sp                                ; $4B57: $08 $07 $00
    ld hl, sp+$17                                 ; $4B5A: $F8 $17
    rlca                                          ; $4B5C: $07
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    jr jr_00F_4B68                                ; $4B5F: $18 $07

    add b                                         ; $4B61: $80
    ldh a, [rP1]                                  ; $4B62: $F0 $00
    nop                                           ; $4B64: $00
    daa                                           ; $4B65: $27
    ldh a, [$F8]                                  ; $4B66: $F0 $F8

jr_00F_4B68:
    ld bc, $F827                                  ; $4B68: $01 $27 $F8
    nop                                           ; $4B6B: $00
    rlca                                          ; $4B6C: $07
    daa                                           ; $4B6D: $27
    ld hl, sp-$08                                 ; $4B6E: $F8 $F8
    ld [$0027], sp                                ; $4B70: $08 $27 $00
    nop                                           ; $4B73: $00
    rla                                           ; $4B74: $17
    daa                                           ; $4B75: $27
    nop                                           ; $4B76: $00
    ld hl, sp+$18                                 ; $4B77: $F8 $18
    daa                                           ; $4B79: $27
    add b                                         ; $4B7A: $80
    ldh a, [$F8]                                  ; $4B7B: $F0 $F8
    dec b                                         ; $4B7D: $05
    rlca                                          ; $4B7E: $07
    ldh a, [rP1]                                  ; $4B7F: $F0 $00
    ld b, $07                                     ; $4B81: $06 $07
    ld hl, sp-$08                                 ; $4B83: $F8 $F8
    dec c                                         ; $4B85: $0D
    rlca                                          ; $4B86: $07
    ld hl, sp+$00                                 ; $4B87: $F8 $00
    ld c, $07                                     ; $4B89: $0E $07
    nop                                           ; $4B8B: $00
    cp $1B                                        ; $4B8C: $FE $1B
    rlca                                          ; $4B8E: $07
    add b                                         ; $4B8F: $80
    ldh a, [rSB]                                  ; $4B90: $F0 $01
    dec b                                         ; $4B92: $05
    daa                                           ; $4B93: $27
    ldh a, [$F9]                                  ; $4B94: $F0 $F9
    ld b, $27                                     ; $4B96: $06 $27
    ld hl, sp+$01                                 ; $4B98: $F8 $01
    dec c                                         ; $4B9A: $0D
    daa                                           ; $4B9B: $27
    ld hl, sp-$07                                 ; $4B9C: $F8 $F9
    ld c, $27                                     ; $4B9E: $0E $27
    nop                                           ; $4BA0: $00
    ei                                            ; $4BA1: $FB
    dec de                                        ; $4BA2: $1B
    daa                                           ; $4BA3: $27
    add b                                         ; $4BA4: $80
    pop af                                        ; $4BA5: $F1
    ld hl, sp+$02                                 ; $4BA6: $F8 $02
    rlca                                          ; $4BA8: $07
    pop af                                        ; $4BA9: $F1
    nop                                           ; $4BAA: $00
    inc bc                                        ; $4BAB: $03
    rlca                                          ; $4BAC: $07
    ld hl, sp-$08                                 ; $4BAD: $F8 $F8
    rrca                                          ; $4BAF: $0F
    rlca                                          ; $4BB0: $07
    ld hl, sp+$00                                 ; $4BB1: $F8 $00
    db $10                                        ; $4BB3: $10
    rlca                                          ; $4BB4: $07
    nop                                           ; $4BB5: $00
    db $FC                                        ; $4BB6: $FC
    inc e                                         ; $4BB7: $1C
    rlca                                          ; $4BB8: $07
    add b                                         ; $4BB9: $80
    ldh a, [$F8]                                  ; $4BBA: $F0 $F8
    ld [bc], a                                    ; $4BBC: $02
    rlca                                          ; $4BBD: $07
    ldh a, [rP1]                                  ; $4BBE: $F0 $00
    inc bc                                        ; $4BC0: $03
    rlca                                          ; $4BC1: $07
    ld hl, sp-$08                                 ; $4BC2: $F8 $F8
    add hl, bc                                    ; $4BC4: $09
    rlca                                          ; $4BC5: $07
    ld hl, sp+$00                                 ; $4BC6: $F8 $00
    ld a, [bc]                                    ; $4BC8: $0A
    rlca                                          ; $4BC9: $07
    nop                                           ; $4BCA: $00
    ld sp, hl                                     ; $4BCB: $F9
    add hl, de                                    ; $4BCC: $19
    daa                                           ; $4BCD: $27
    nop                                           ; $4BCE: $00
    nop                                           ; $4BCF: $00
    add hl, de                                    ; $4BD0: $19
    rlca                                          ; $4BD1: $07
    add b                                         ; $4BD2: $80
    pop af                                        ; $4BD3: $F1
    ld hl, sp+$02                                 ; $4BD4: $F8 $02
    rlca                                          ; $4BD6: $07
    pop af                                        ; $4BD7: $F1
    nop                                           ; $4BD8: $00
    inc bc                                        ; $4BD9: $03
    rlca                                          ; $4BDA: $07
    ld hl, sp-$08                                 ; $4BDB: $F8 $F8
    ld de, $F807                                  ; $4BDD: $11 $07 $F8
    nop                                           ; $4BE0: $00
    ld [de], a                                    ; $4BE1: $12
    rlca                                          ; $4BE2: $07
    nop                                           ; $4BE3: $00
    db $FC                                        ; $4BE4: $FC
    inc e                                         ; $4BE5: $1C
    daa                                           ; $4BE6: $27
    add b                                         ; $4BE7: $80
    pop af                                        ; $4BE8: $F1
    ld hl, sp+$04                                 ; $4BE9: $F8 $04
    rlca                                          ; $4BEB: $07
    pop af                                        ; $4BEC: $F1
    nop                                           ; $4BED: $00
    inc b                                         ; $4BEE: $04
    daa                                           ; $4BEF: $27
    ld hl, sp-$08                                 ; $4BF0: $F8 $F8
    inc de                                        ; $4BF2: $13
    rlca                                          ; $4BF3: $07
    ld hl, sp+$00                                 ; $4BF4: $F8 $00
    inc d                                         ; $4BF6: $14
    rlca                                          ; $4BF7: $07
    nop                                           ; $4BF8: $00
    db $FC                                        ; $4BF9: $FC
    dec e                                         ; $4BFA: $1D
    rlca                                          ; $4BFB: $07
    add b                                         ; $4BFC: $80
    ldh a, [$F8]                                  ; $4BFD: $F0 $F8
    inc b                                         ; $4BFF: $04
    rlca                                          ; $4C00: $07
    ldh a, [rP1]                                  ; $4C01: $F0 $00
    inc b                                         ; $4C03: $04
    daa                                           ; $4C04: $27
    ld hl, sp-$08                                 ; $4C05: $F8 $F8
    dec bc                                        ; $4C07: $0B
    rlca                                          ; $4C08: $07
    ld hl, sp+$00                                 ; $4C09: $F8 $00
    inc c                                         ; $4C0B: $0C
    rlca                                          ; $4C0C: $07
    nop                                           ; $4C0D: $00
    ld sp, hl                                     ; $4C0E: $F9
    ld a, [de]                                    ; $4C0F: $1A
    daa                                           ; $4C10: $27
    nop                                           ; $4C11: $00
    nop                                           ; $4C12: $00
    ld a, [de]                                    ; $4C13: $1A
    rlca                                          ; $4C14: $07
    add b                                         ; $4C15: $80
    pop af                                        ; $4C16: $F1
    ld hl, sp+$04                                 ; $4C17: $F8 $04
    rlca                                          ; $4C19: $07
    pop af                                        ; $4C1A: $F1
    nop                                           ; $4C1B: $00
    inc b                                         ; $4C1C: $04
    daa                                           ; $4C1D: $27
    ld hl, sp-$08                                 ; $4C1E: $F8 $F8
    dec d                                         ; $4C20: $15
    rlca                                          ; $4C21: $07
    ld hl, sp+$00                                 ; $4C22: $F8 $00
    ld d, $07                                     ; $4C24: $16 $07
    nop                                           ; $4C26: $00
    db $FC                                        ; $4C27: $FC
    dec e                                         ; $4C28: $1D
    daa                                           ; $4C29: $27
    add b                                         ; $4C2A: $80
    pop af                                        ; $4C2B: $F1
    ld hl, sp+$1E                                 ; $4C2C: $F8 $1E
    rlca                                          ; $4C2E: $07
    pop af                                        ; $4C2F: $F1
    nop                                           ; $4C30: $00
    rra                                           ; $4C31: $1F
    rlca                                          ; $4C32: $07
    ld hl, sp-$08                                 ; $4C33: $F8 $F8
    jr nz, jr_00F_4C3E                            ; $4C35: $20 $07

    ld hl, sp+$00                                 ; $4C37: $F8 $00
    ld hl, $0007                                  ; $4C39: $21 $07 $00
    ld hl, sp+$26                                 ; $4C3C: $F8 $26

jr_00F_4C3E:
    rlca                                          ; $4C3E: $07
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    daa                                           ; $4C41: $27
    rlca                                          ; $4C42: $07
    add b                                         ; $4C43: $80
    ldh a, [$F8]                                  ; $4C44: $F0 $F8
    ld e, $07                                     ; $4C46: $1E $07
    ldh a, [rP1]                                  ; $4C48: $F0 $00
    rra                                           ; $4C4A: $1F
    rlca                                          ; $4C4B: $07
    nop                                           ; $4C4C: $00
    db $FD                                        ; $4C4D: $FD
    jr z, jr_00F_4C57                             ; $4C4E: $28 $07

    ld hl, sp-$08                                 ; $4C50: $F8 $F8
    ld [hl+], a                                   ; $4C52: $22
    rlca                                          ; $4C53: $07
    ld hl, sp+$00                                 ; $4C54: $F8 $00

Jump_00F_4C56:
    inc hl                                        ; $4C56: $23

jr_00F_4C57:
    rlca                                          ; $4C57: $07
    add b                                         ; $4C58: $80
    pop af                                        ; $4C59: $F1
    ld hl, sp+$1E                                 ; $4C5A: $F8 $1E
    rlca                                          ; $4C5C: $07
    pop af                                        ; $4C5D: $F1
    nop                                           ; $4C5E: $00
    rra                                           ; $4C5F: $1F
    rlca                                          ; $4C60: $07
    ld hl, sp+$00                                 ; $4C61: $F8 $00
    dec h                                         ; $4C63: $25
    rlca                                          ; $4C64: $07
    ld hl, sp-$08                                 ; $4C65: $F8 $F8

Call_00F_4C67:
    inc h                                         ; $4C67: $24
    rlca                                          ; $4C68: $07
    nop                                           ; $4C69: $00
    ld hl, sp+$26                                 ; $4C6A: $F8 $26
    rlca                                          ; $4C6C: $07
    nop                                           ; $4C6D: $00
    nop                                           ; $4C6E: $00
    daa                                           ; $4C6F: $27
    rlca                                          ; $4C70: $07
    add b                                         ; $4C71: $80
    pop af                                        ; $4C72: $F1

Call_00F_4C73:
Jump_00F_4C73:
    nop                                           ; $4C73: $00
    ld e, $27                                     ; $4C74: $1E $27

Call_00F_4C76:
    pop af                                        ; $4C76: $F1
    ld hl, sp+$1F                                 ; $4C77: $F8 $1F
    daa                                           ; $4C79: $27
    ld hl, sp+$00                                 ; $4C7A: $F8 $00
    jr nz, jr_00F_4CA5                            ; $4C7C: $20 $27

    ld hl, sp-$08                                 ; $4C7E: $F8 $F8
    ld hl, $0027                                  ; $4C80: $21 $27 $00
    nop                                           ; $4C83: $00
    ld h, $27                                     ; $4C84: $26 $27
    nop                                           ; $4C86: $00
    ld hl, sp+$27                                 ; $4C87: $F8 $27
    daa                                           ; $4C89: $27
    add b                                         ; $4C8A: $80
    ldh a, [rP1]                                  ; $4C8B: $F0 $00
    ld e, $27                                     ; $4C8D: $1E $27
    ldh a, [$F8]                                  ; $4C8F: $F0 $F8
    rra                                           ; $4C91: $1F
    daa                                           ; $4C92: $27
    nop                                           ; $4C93: $00
    ei                                            ; $4C94: $FB
    jr z, @+$29                                   ; $4C95: $28 $27

    ld hl, sp+$00                                 ; $4C97: $F8 $00
    ld [hl+], a                                   ; $4C99: $22
    daa                                           ; $4C9A: $27
    ld hl, sp-$08                                 ; $4C9B: $F8 $F8
    inc hl                                        ; $4C9D: $23
    daa                                           ; $4C9E: $27
    add b                                         ; $4C9F: $80
    pop af                                        ; $4CA0: $F1
    nop                                           ; $4CA1: $00
    ld e, $27                                     ; $4CA2: $1E $27
    pop af                                        ; $4CA4: $F1

jr_00F_4CA5:
    ld hl, sp+$1F                                 ; $4CA5: $F8 $1F
    daa                                           ; $4CA7: $27
    ld hl, sp+$00                                 ; $4CA8: $F8 $00
    inc h                                         ; $4CAA: $24
    daa                                           ; $4CAB: $27
    ld hl, sp-$08                                 ; $4CAC: $F8 $F8
    dec h                                         ; $4CAE: $25
    daa                                           ; $4CAF: $27
    nop                                           ; $4CB0: $00
    nop                                           ; $4CB1: $00
    ld h, $27                                     ; $4CB2: $26 $27
    nop                                           ; $4CB4: $00
    ld hl, sp+$27                                 ; $4CB5: $F8 $27
    daa                                           ; $4CB7: $27
    add b                                         ; $4CB8: $80
    ldh a, [rP1]                                  ; $4CB9: $F0 $00
    inc d                                         ; $4CBB: $14
    rlca                                          ; $4CBC: $07
    ldh a, [$F8]                                  ; $4CBD: $F0 $F8
    inc de                                        ; $4CBF: $13
    rlca                                          ; $4CC0: $07
    ld hl, sp+$00                                 ; $4CC1: $F8 $00
    ld d, $07                                     ; $4CC3: $16 $07
    ld hl, sp-$08                                 ; $4CC5: $F8 $F8
    dec d                                         ; $4CC7: $15
    rlca                                          ; $4CC8: $07
    nop                                           ; $4CC9: $00
    nop                                           ; $4CCA: $00
    jr jr_00F_4CD4                                ; $4CCB: $18 $07

    nop                                           ; $4CCD: $00
    ld hl, sp+$17                                 ; $4CCE: $F8 $17
    rlca                                          ; $4CD0: $07
    add b                                         ; $4CD1: $80
    ldh a, [$F8]                                  ; $4CD2: $F0 $F8

jr_00F_4CD4:
    inc d                                         ; $4CD4: $14
    daa                                           ; $4CD5: $27
    ldh a, [rP1]                                  ; $4CD6: $F0 $00
    inc de                                        ; $4CD8: $13
    daa                                           ; $4CD9: $27
    ld hl, sp-$08                                 ; $4CDA: $F8 $F8
    ld d, $27                                     ; $4CDC: $16 $27
    ld hl, sp+$00                                 ; $4CDE: $F8 $00
    dec d                                         ; $4CE0: $15
    daa                                           ; $4CE1: $27
    nop                                           ; $4CE2: $00
    ld hl, sp+$18                                 ; $4CE3: $F8 $18
    daa                                           ; $4CE5: $27
    nop                                           ; $4CE6: $00
    nop                                           ; $4CE7: $00
    rla                                           ; $4CE8: $17
    daa                                           ; $4CE9: $27
    add b                                         ; $4CEA: $80
    nop                                           ; $4CEB: $00
    db $FD                                        ; $4CEC: $FD
    inc c                                         ; $4CED: $0C
    rlca                                          ; $4CEE: $07
    ld hl, sp+$00                                 ; $4CEF: $F8 $00
    dec bc                                        ; $4CF1: $0B
    rlca                                          ; $4CF2: $07
    ld hl, sp-$08                                 ; $4CF3: $F8 $F8
    ld a, [bc]                                    ; $4CF5: $0A
    rlca                                          ; $4CF6: $07
    ldh a, [rP1]                                  ; $4CF7: $F0 $00
    add hl, bc                                    ; $4CF9: $09
    rlca                                          ; $4CFA: $07
    ldh a, [$F8]                                  ; $4CFB: $F0 $F8
    ld [$8007], sp                                ; $4CFD: $08 $07 $80
    pop af                                        ; $4D00: $F1
    cp $0D                                        ; $4D01: $FE $0D
    daa                                           ; $4D03: $27
    pop af                                        ; $4D04: $F1
    or $0D                                        ; $4D05: $F6 $0D
    rlca                                          ; $4D07: $07
    ld sp, hl                                     ; $4D08: $F9
    inc b                                         ; $4D09: $04
    ld [de], a                                    ; $4D0A: $12
    rlca                                          ; $4D0B: $07
    ld sp, hl                                     ; $4D0C: $F9
    db $FC                                        ; $4D0D: $FC
    ld de, $F907                                  ; $4D0E: $11 $07 $F9
    db $F4                                        ; $4D11: $F4
    db $10                                        ; $4D12: $10
    rlca                                          ; $4D13: $07
    ld bc, $0F04                                  ; $4D14: $01 $04 $0F
    rlca                                          ; $4D17: $07
    ld bc, $0EFC                                  ; $4D18: $01 $FC $0E
    rlca                                          ; $4D1B: $07
    add b                                         ; $4D1C: $80
    nop                                           ; $4D1D: $00
    db $FC                                        ; $4D1E: $FC
    rra                                           ; $4D1F: $1F
    rlca                                          ; $4D20: $07
    ld hl, sp+$00                                 ; $4D21: $F8 $00
    dec de                                        ; $4D23: $1B
    rlca                                          ; $4D24: $07
    ld hl, sp-$08                                 ; $4D25: $F8 $F8
    ld a, [de]                                    ; $4D27: $1A
    rlca                                          ; $4D28: $07
    ldh a, [rP1]                                  ; $4D29: $F0 $00
    add hl, bc                                    ; $4D2B: $09
    rlca                                          ; $4D2C: $07
    ldh a, [$F8]                                  ; $4D2D: $F0 $F8
    ld [$8007], sp                                ; $4D2F: $08 $07 $80
    ld hl, sp+$00                                 ; $4D32: $F8 $00
    inc e                                         ; $4D34: $1C
    rlca                                          ; $4D35: $07
    nop                                           ; $4D36: $00
    db $FC                                        ; $4D37: $FC
    rra                                           ; $4D38: $1F
    rlca                                          ; $4D39: $07
    ld hl, sp-$08                                 ; $4D3A: $F8 $F8
    ld a, [de]                                    ; $4D3C: $1A
    rlca                                          ; $4D3D: $07
    ldh a, [rP1]                                  ; $4D3E: $F0 $00
    add hl, bc                                    ; $4D40: $09
    rlca                                          ; $4D41: $07
    ldh a, [$F8]                                  ; $4D42: $F0 $F8
    ld [$8007], sp                                ; $4D44: $08 $07 $80
    ldh a, [rP1]                                  ; $4D47: $F0 $00
    add hl, de                                    ; $4D49: $19
    rlca                                          ; $4D4A: $07
    ld hl, sp+$00                                 ; $4D4B: $F8 $00

Call_00F_4D4D:
    dec e                                         ; $4D4D: $1D
    rlca                                          ; $4D4E: $07
    nop                                           ; $4D4F: $00
    db $FC                                        ; $4D50: $FC
    rra                                           ; $4D51: $1F
    rlca                                          ; $4D52: $07
    ld hl, sp-$08                                 ; $4D53: $F8 $F8
    ld a, [de]                                    ; $4D55: $1A
    rlca                                          ; $4D56: $07
    ldh a, [$F8]                                  ; $4D57: $F0 $F8
    ld [$8007], sp                                ; $4D59: $08 $07 $80
    ld hl, sp-$08                                 ; $4D5C: $F8 $F8
    ld a, [de]                                    ; $4D5E: $1A
    rlca                                          ; $4D5F: $07
    ldh a, [rP1]                                  ; $4D60: $F0 $00
    add hl, bc                                    ; $4D62: $09
    rlca                                          ; $4D63: $07
    ld hl, sp+$00                                 ; $4D64: $F8 $00
    ld e, $07                                     ; $4D66: $1E $07
    nop                                           ; $4D68: $00
    db $FC                                        ; $4D69: $FC
    rra                                           ; $4D6A: $1F
    rlca                                          ; $4D6B: $07
    ldh a, [$F8]                                  ; $4D6C: $F0 $F8
    ld [$8007], sp                                ; $4D6E: $08 $07 $80
    nop                                           ; $4D71: $00
    nop                                           ; $4D72: $00
    dec b                                         ; $4D73: $05
    rlca                                          ; $4D74: $07
    nop                                           ; $4D75: $00
    ld hl, sp+$04                                 ; $4D76: $F8 $04
    rlca                                          ; $4D78: $07
    ld hl, sp+$00                                 ; $4D79: $F8 $00
    ld bc, $F807                                  ; $4D7B: $01 $07 $F8
    ld hl, sp+$00                                 ; $4D7E: $F8 $00
    rlca                                          ; $4D80: $07
    ldh a, [rP1]                                  ; $4D81: $F0 $00
    inc bc                                        ; $4D83: $03
    rlca                                          ; $4D84: $07
    ldh a, [$F8]                                  ; $4D85: $F0 $F8
    ld [bc], a                                    ; $4D87: $02
    rlca                                          ; $4D88: $07
    add b                                         ; $4D89: $80
    ld hl, sp+$00                                 ; $4D8A: $F8 $00
    ld b, $00                                     ; $4D8C: $06 $00
    nop                                           ; $4D8E: $00
    nop                                           ; $4D8F: $00
    dec b                                         ; $4D90: $05
    rlca                                          ; $4D91: $07
    nop                                           ; $4D92: $00
    ld hl, sp+$04                                 ; $4D93: $F8 $04
    rlca                                          ; $4D95: $07
    ld hl, sp+$00                                 ; $4D96: $F8 $00
    ld bc, $F807                                  ; $4D98: $01 $07 $F8
    ld hl, sp+$00                                 ; $4D9B: $F8 $00
    rlca                                          ; $4D9D: $07
    ldh a, [rP1]                                  ; $4D9E: $F0 $00
    inc bc                                        ; $4DA0: $03
    rlca                                          ; $4DA1: $07
    ldh a, [$F8]                                  ; $4DA2: $F0 $F8
    ld [bc], a                                    ; $4DA4: $02
    rlca                                          ; $4DA5: $07
    add b                                         ; $4DA6: $80
    ld hl, sp+$04                                 ; $4DA7: $F8 $04
    rlca                                          ; $4DA9: $07
    nop                                           ; $4DAA: $00
    nop                                           ; $4DAB: $00
    nop                                           ; $4DAC: $00
    dec b                                         ; $4DAD: $05
    rlca                                          ; $4DAE: $07
    nop                                           ; $4DAF: $00
    ld hl, sp+$04                                 ; $4DB0: $F8 $04
    rlca                                          ; $4DB2: $07
    ld hl, sp+$00                                 ; $4DB3: $F8 $00
    ld bc, $F807                                  ; $4DB5: $01 $07 $F8
    ld hl, sp+$00                                 ; $4DB8: $F8 $00
    rlca                                          ; $4DBA: $07
    ldh a, [rP1]                                  ; $4DBB: $F0 $00
    inc bc                                        ; $4DBD: $03
    rlca                                          ; $4DBE: $07
    ldh a, [$F8]                                  ; $4DBF: $F0 $F8
    ld [bc], a                                    ; $4DC1: $02
    rlca                                          ; $4DC2: $07
    add b                                         ; $4DC3: $80
    ld c, l                                       ; $4DC4: $4D
    ld [$0008], sp                                ; $4DC5: $08 $08 $00
    rst $38                                       ; $4DC8: $FF
    add sp, $4B                                   ; $4DC9: $E8 $4B
    db $FD                                        ; $4DCB: $FD
    ld c, e                                       ; $4DCC: $4B
    ld d, $4C                                     ; $4DCD: $16 $4C
    db $FD                                        ; $4DCF: $FD
    ld c, e                                       ; $4DD0: $4B
    ld b, [hl]                                    ; $4DD1: $46
    call nz, Call_00F_4D4D                        ; $4DD2: $C4 $4D $4D
    ld [$0008], sp                                ; $4DD5: $08 $08 $00
    ld bc, $4BA5                                  ; $4DD8: $01 $A5 $4B
    cp d                                          ; $4DDB: $BA
    ld c, e                                       ; $4DDC: $4B
    db $D3                                        ; $4DDD: $D3
    ld c, e                                       ; $4DDE: $4B
    cp d                                          ; $4DDF: $BA
    ld c, e                                       ; $4DE0: $4B
    ld b, [hl]                                    ; $4DE1: $46
    call nc, Call_00F_4D4D                        ; $4DE2: $D4 $4D $4D
    ld [$FF08], sp                                ; $4DE5: $08 $08 $FF
    nop                                           ; $4DE8: $00
    ld [hl], d                                    ; $4DE9: $72
    ld c, h                                       ; $4DEA: $4C
    adc e                                         ; $4DEB: $8B
    ld c, h                                       ; $4DEC: $4C
    and b                                         ; $4DED: $A0
    ld c, h                                       ; $4DEE: $4C
    adc e                                         ; $4DEF: $8B
    ld c, h                                       ; $4DF0: $4C
    ld b, [hl]                                    ; $4DF1: $46
    db $E4                                        ; $4DF2: $E4
    ld c, l                                       ; $4DF3: $4D
    ld c, l                                       ; $4DF4: $4D
    ld [$0108], sp                                ; $4DF5: $08 $08 $01
    nop                                           ; $4DF8: $00
    dec hl                                        ; $4DF9: $2B
    ld c, h                                       ; $4DFA: $4C
    ld b, h                                       ; $4DFB: $44
    ld c, h                                       ; $4DFC: $4C
    ld e, c                                       ; $4DFD: $59
    ld c, h                                       ; $4DFE: $4C
    ld b, h                                       ; $4DFF: $44
    ld c, h                                       ; $4E00: $4C
    ld b, [hl]                                    ; $4E01: $46
    db $F4                                        ; $4E02: $F4
    ld c, l                                       ; $4E03: $4D
    ld c, l                                       ; $4E04: $4D
    ld [$0008], sp                                ; $4E05: $08 $08 $00
    cp $E8                                        ; $4E08: $FE $E8
    ld c, e                                       ; $4E0A: $4B
    db $FD                                        ; $4E0B: $FD
    ld c, e                                       ; $4E0C: $4B
    ld d, $4C                                     ; $4E0D: $16 $4C
    db $FD                                        ; $4E0F: $FD
    ld c, e                                       ; $4E10: $4B
    ld b, [hl]                                    ; $4E11: $46
    inc b                                         ; $4E12: $04
    ld c, [hl]                                    ; $4E13: $4E
    ld c, l                                       ; $4E14: $4D
    ld [$0008], sp                                ; $4E15: $08 $08 $00
    ld [bc], a                                    ; $4E18: $02
    and l                                         ; $4E19: $A5
    ld c, e                                       ; $4E1A: $4B
    cp d                                          ; $4E1B: $BA
    ld c, e                                       ; $4E1C: $4B
    db $D3                                        ; $4E1D: $D3
    ld c, e                                       ; $4E1E: $4B
    cp d                                          ; $4E1F: $BA
    ld c, e                                       ; $4E20: $4B
    ld b, [hl]                                    ; $4E21: $46
    inc d                                         ; $4E22: $14
    ld c, [hl]                                    ; $4E23: $4E
    ld c, l                                       ; $4E24: $4D
    ld [$FE08], sp                                ; $4E25: $08 $08 $FE
    nop                                           ; $4E28: $00
    ld [hl], d                                    ; $4E29: $72
    ld c, h                                       ; $4E2A: $4C
    adc e                                         ; $4E2B: $8B
    ld c, h                                       ; $4E2C: $4C
    and b                                         ; $4E2D: $A0
    ld c, h                                       ; $4E2E: $4C
    adc e                                         ; $4E2F: $8B
    ld c, h                                       ; $4E30: $4C
    ld b, [hl]                                    ; $4E31: $46
    inc h                                         ; $4E32: $24
    ld c, [hl]                                    ; $4E33: $4E
    ld c, l                                       ; $4E34: $4D
    ld [$0208], sp                                ; $4E35: $08 $08 $02
    nop                                           ; $4E38: $00
    dec hl                                        ; $4E39: $2B
    ld c, h                                       ; $4E3A: $4C
    ld b, h                                       ; $4E3B: $44
    ld c, h                                       ; $4E3C: $4C
    ld e, c                                       ; $4E3D: $59
    ld c, h                                       ; $4E3E: $4C
    ld b, h                                       ; $4E3F: $44
    ld c, h                                       ; $4E40: $4C
    ld b, [hl]                                    ; $4E41: $46
    inc [hl]                                      ; $4E42: $34
    ld c, [hl]                                    ; $4E43: $4E
    ld c, h                                       ; $4E44: $4C
    rst $38                                       ; $4E45: $FF
    nop                                           ; $4E46: $00
    nop                                           ; $4E47: $00
    db $FD                                        ; $4E48: $FD
    ld c, e                                       ; $4E49: $4B
    nop                                           ; $4E4A: $00
    ld b, [hl]                                    ; $4E4B: $46
    ld b, h                                       ; $4E4C: $44
    ld c, [hl]                                    ; $4E4D: $4E
    ld c, h                                       ; $4E4E: $4C
    rst $38                                       ; $4E4F: $FF
    nop                                           ; $4E50: $00
    nop                                           ; $4E51: $00
    cp d                                          ; $4E52: $BA
    ld c, e                                       ; $4E53: $4B
    nop                                           ; $4E54: $00
    ld b, [hl]                                    ; $4E55: $46
    ld c, [hl]                                    ; $4E56: $4E
    ld c, [hl]                                    ; $4E57: $4E
    ld c, h                                       ; $4E58: $4C
    rst $38                                       ; $4E59: $FF
    nop                                           ; $4E5A: $00
    nop                                           ; $4E5B: $00
    adc e                                         ; $4E5C: $8B
    ld c, h                                       ; $4E5D: $4C
    nop                                           ; $4E5E: $00
    ld b, [hl]                                    ; $4E5F: $46
    ld e, b                                       ; $4E60: $58
    ld c, [hl]                                    ; $4E61: $4E
    ld c, h                                       ; $4E62: $4C
    rst $38                                       ; $4E63: $FF
    nop                                           ; $4E64: $00
    nop                                           ; $4E65: $00
    ld b, h                                       ; $4E66: $44
    ld c, h                                       ; $4E67: $4C
    nop                                           ; $4E68: $00
    ld b, [hl]                                    ; $4E69: $46
    ld h, d                                       ; $4E6A: $62
    ld c, [hl]                                    ; $4E6B: $4E
    ld c, h                                       ; $4E6C: $4C
    rst $38                                       ; $4E6D: $FF
    nop                                           ; $4E6E: $00
    nop                                           ; $4E6F: $00
    sub b                                         ; $4E70: $90
    ld c, e                                       ; $4E71: $4B
    nop                                           ; $4E72: $00
    ld b, [hl]                                    ; $4E73: $46
    ld l, h                                       ; $4E74: $6C
    ld c, [hl]                                    ; $4E75: $4E
    ld c, h                                       ; $4E76: $4C
    rst $38                                       ; $4E77: $FF
    nop                                           ; $4E78: $00
    nop                                           ; $4E79: $00
    ld a, e                                       ; $4E7A: $7B
    ld c, e                                       ; $4E7B: $4B
    nop                                           ; $4E7C: $00
    ld b, [hl]                                    ; $4E7D: $46
    halt                                          ; $4E7E: $76
    ld c, [hl]                                    ; $4E7F: $4E
    ld c, h                                       ; $4E80: $4C
    rst $38                                       ; $4E81: $FF
    nop                                           ; $4E82: $00
    nop                                           ; $4E83: $00
    ld h, d                                       ; $4E84: $62
    ld c, e                                       ; $4E85: $4B
    nop                                           ; $4E86: $00
    ld b, [hl]                                    ; $4E87: $46
    add b                                         ; $4E88: $80
    ld c, [hl]                                    ; $4E89: $4E
    ld c, h                                       ; $4E8A: $4C
    rst $38                                       ; $4E8B: $FF
    nop                                           ; $4E8C: $00
    nop                                           ; $4E8D: $00
    ld c, c                                       ; $4E8E: $49
    ld c, e                                       ; $4E8F: $4B
    nop                                           ; $4E90: $00
    ld b, [hl]                                    ; $4E91: $46
    adc d                                         ; $4E92: $8A
    ld c, [hl]                                    ; $4E93: $4E
    ld c, h                                       ; $4E94: $4C
    ld h, b                                       ; $4E95: $60
    nop                                           ; $4E96: $00
    nop                                           ; $4E97: $00
    ld e, h                                       ; $4E98: $5C
    ld c, l                                       ; $4E99: $4D
    ld h, b                                       ; $4E9A: $60
    nop                                           ; $4E9B: $00
    nop                                           ; $4E9C: $00
    jp nc, $804C                                  ; $4E9D: $D2 $4C $80

    nop                                           ; $4EA0: $00
    nop                                           ; $4EA1: $00
    ld e, h                                       ; $4EA2: $5C
    ld c, l                                       ; $4EA3: $4D
    ld h, b                                       ; $4EA4: $60
    nop                                           ; $4EA5: $00
    nop                                           ; $4EA6: $00
    cp c                                          ; $4EA7: $B9
    ld c, h                                       ; $4EA8: $4C
    nop                                           ; $4EA9: $00
    ld b, [hl]                                    ; $4EAA: $46
    sub h                                         ; $4EAB: $94
    ld c, [hl]                                    ; $4EAC: $4E
    ld c, h                                       ; $4EAD: $4C
    jr nz, jr_00F_4EB0                            ; $4EAE: $20 $00

jr_00F_4EB0:
    nop                                           ; $4EB0: $00
    ld e, h                                       ; $4EB1: $5C
    ld c, l                                       ; $4EB2: $4D
    ld [rRAMG], sp                                ; $4EB3: $08 $00 $00
    dec e                                         ; $4EB6: $1D
    ld c, l                                       ; $4EB7: $4D
    ld [rRAMG], sp                                ; $4EB8: $08 $00 $00
    ld [hl-], a                                   ; $4EBB: $32
    ld c, l                                       ; $4EBC: $4D
    ld [rRAMG], sp                                ; $4EBD: $08 $00 $00
    ld b, a                                       ; $4EC0: $47
    ld c, l                                       ; $4EC1: $4D
    jr nz, jr_00F_4EC4                            ; $4EC2: $20 $00

jr_00F_4EC4:
    nop                                           ; $4EC4: $00
    ld e, h                                       ; $4EC5: $5C
    ld c, l                                       ; $4EC6: $4D
    nop                                           ; $4EC7: $00
    ld b, [hl]                                    ; $4EC8: $46
    sub h                                         ; $4EC9: $94
    ld c, [hl]                                    ; $4ECA: $4E
    ld c, l                                       ; $4ECB: $4D
    jr nz, jr_00F_4ED2                            ; $4ECC: $20 $04

    nop                                           ; $4ECE: $00
    nop                                           ; $4ECF: $00
    ld [hl], c                                    ; $4ED0: $71
    ld c, l                                       ; $4ED1: $4D

jr_00F_4ED2:
    adc d                                         ; $4ED2: $8A
    ld c, l                                       ; $4ED3: $4D
    and a                                         ; $4ED4: $A7
    ld c, l                                       ; $4ED5: $4D
    adc d                                         ; $4ED6: $8A
    ld c, l                                       ; $4ED7: $4D
    ld [hl], c                                    ; $4ED8: $71
    ld c, l                                       ; $4ED9: $4D
    adc d                                         ; $4EDA: $8A
    ld c, l                                       ; $4EDB: $4D
    and a                                         ; $4EDC: $A7
    ld c, l                                       ; $4EDD: $4D
    adc d                                         ; $4EDE: $8A
    ld c, l                                       ; $4EDF: $4D
    ld [hl], c                                    ; $4EE0: $71
    ld c, l                                       ; $4EE1: $4D
    adc d                                         ; $4EE2: $8A
    ld c, l                                       ; $4EE3: $4D
    and a                                         ; $4EE4: $A7
    ld c, l                                       ; $4EE5: $4D
    adc d                                         ; $4EE6: $8A
    ld c, l                                       ; $4EE7: $4D
    ld [hl], c                                    ; $4EE8: $71
    ld c, l                                       ; $4EE9: $4D
    adc d                                         ; $4EEA: $8A
    ld c, l                                       ; $4EEB: $4D
    and a                                         ; $4EEC: $A7
    ld c, l                                       ; $4EED: $4D
    adc d                                         ; $4EEE: $8A
    ld c, l                                       ; $4EEF: $4D
    ld c, h                                       ; $4EF0: $4C
    jr nz, jr_00F_4EF3                            ; $4EF1: $20 $00

jr_00F_4EF3:
    nop                                           ; $4EF3: $00
    ld [hl], c                                    ; $4EF4: $71
    ld c, l                                       ; $4EF5: $4D
    nop                                           ; $4EF6: $00
    ld b, [hl]                                    ; $4EF7: $46
    sub h                                         ; $4EF8: $94
    ld c, [hl]                                    ; $4EF9: $4E
    ld c, h                                       ; $4EFA: $4C
    rst $38                                       ; $4EFB: $FF
    nop                                           ; $4EFC: $00
    nop                                           ; $4EFD: $00
    db $EB                                        ; $4EFE: $EB
    ld c, h                                       ; $4EFF: $4C
    nop                                           ; $4F00: $00
    ld b, [hl]                                    ; $4F01: $46
    ld a, [$4C4E]                                 ; $4F02: $FA $4E $4C
    ld bc, $FF00                                  ; $4F05: $01 $00 $FF
    nop                                           ; $4F08: $00
    ld c, l                                       ; $4F09: $4D
    ld bc, $0000                                  ; $4F0A: $01 $00 $00
    nop                                           ; $4F0D: $00
    ld c, l                                       ; $4F0E: $4D
    ld bc, $0100                                  ; $4F0F: $01 $00 $01
    nop                                           ; $4F12: $00
    ld c, l                                       ; $4F13: $4D
    ld bc, $0000                                  ; $4F14: $01 $00 $00
    nop                                           ; $4F17: $00
    ld c, l                                       ; $4F18: $4D
    ld bc, $FF00                                  ; $4F19: $01 $00 $FF
    nop                                           ; $4F1C: $00
    ld c, l                                       ; $4F1D: $4D
    ld bc, $0000                                  ; $4F1E: $01 $00 $00
    nop                                           ; $4F21: $00
    ld c, l                                       ; $4F22: $4D
    ld bc, $0100                                  ; $4F23: $01 $00 $01
    nop                                           ; $4F26: $00
    ld c, l                                       ; $4F27: $4D
    ld bc, $0000                                  ; $4F28: $01 $00 $00
    nop                                           ; $4F2B: $00
    ld c, l                                       ; $4F2C: $4D
    ld bc, $FF00                                  ; $4F2D: $01 $00 $FF
    nop                                           ; $4F30: $00
    ld c, l                                       ; $4F31: $4D
    ld bc, $0000                                  ; $4F32: $01 $00 $00
    nop                                           ; $4F35: $00
    ld c, l                                       ; $4F36: $4D
    ld bc, $0100                                  ; $4F37: $01 $00 $01
    nop                                           ; $4F3A: $00
    ld c, l                                       ; $4F3B: $4D
    ld bc, $0000                                  ; $4F3C: $01 $00 $00
    nop                                           ; $4F3F: $00
    ld c, l                                       ; $4F40: $4D
    ld bc, $FF00                                  ; $4F41: $01 $00 $FF
    nop                                           ; $4F44: $00
    ld c, l                                       ; $4F45: $4D
    ld bc, $0000                                  ; $4F46: $01 $00 $00
    nop                                           ; $4F49: $00
    ld c, l                                       ; $4F4A: $4D
    ld bc, $0100                                  ; $4F4B: $01 $00 $01
    nop                                           ; $4F4E: $00
    ld c, l                                       ; $4F4F: $4D
    ld bc, $0000                                  ; $4F50: $01 $00 $00
    nop                                           ; $4F53: $00
    ld c, l                                       ; $4F54: $4D
    nop                                           ; $4F55: $00
    ld c, h                                       ; $4F56: $4C
    rst $38                                       ; $4F57: $FF
    nop                                           ; $4F58: $00
    nop                                           ; $4F59: $00
    nop                                           ; $4F5A: $00
    ld c, l                                       ; $4F5B: $4D
    nop                                           ; $4F5C: $00
    ld b, [hl]                                    ; $4F5D: $46
    ld d, [hl]                                    ; $4F5E: $56
    ld c, a                                       ; $4F5F: $4F
    ld c, e                                       ; $4F60: $4B
    inc bc                                        ; $4F61: $03
    rrca                                          ; $4F62: $0F
    nop                                           ; $4F63: $00
    nop                                           ; $4F64: $00
    ld [hl], a                                    ; $4F65: $77
    ld c, a                                       ; $4F66: $4F
    rrca                                          ; $4F67: $0F
    inc bc                                        ; $4F68: $03
    nop                                           ; $4F69: $00
    ld a, [hl]                                    ; $4F6A: $7E
    ld c, a                                       ; $4F6B: $4F
    rrca                                          ; $4F6C: $0F
    ld [bc], a                                    ; $4F6D: $02
    nop                                           ; $4F6E: $00
    adc h                                         ; $4F6F: $8C
    ld c, a                                       ; $4F70: $4F
    rrca                                          ; $4F71: $0F
    ld bc, $8500                                  ; $4F72: $01 $00 $85
    ld c, a                                       ; $4F75: $4F
    rst $38                                       ; $4F76: $FF
    inc d                                         ; $4F77: $14
    rrca                                          ; $4F78: $0F
    ld b, h                                       ; $4F79: $44
    ld c, [hl]                                    ; $4F7A: $4E
    ld h, d                                       ; $4F7B: $62
    ld bc, $1412                                  ; $4F7C: $01 $12 $14
    rrca                                          ; $4F7F: $0F
    ld c, [hl]                                    ; $4F80: $4E
    ld c, [hl]                                    ; $4F81: $4E
    ld h, d                                       ; $4F82: $62
    ld bc, $1412                                  ; $4F83: $01 $12 $14
    rrca                                          ; $4F86: $0F
    ld e, b                                       ; $4F87: $58
    ld c, [hl]                                    ; $4F88: $4E
    ld h, d                                       ; $4F89: $62
    ld bc, $1412                                  ; $4F8A: $01 $12 $14
    rrca                                          ; $4F8D: $0F
    ld h, d                                       ; $4F8E: $62
    ld c, [hl]                                    ; $4F8F: $4E
    ld h, d                                       ; $4F90: $62
    ld bc, $F012                                  ; $4F91: $01 $12 $F0
    ld hl, sp+$00                                 ; $4F94: $F8 $00
    dec b                                         ; $4F96: $05
    ldh a, [rP1]                                  ; $4F97: $F0 $00
    ld bc, $F805                                  ; $4F99: $01 $05 $F8
    ld hl, sp+$08                                 ; $4F9C: $F8 $08
    dec b                                         ; $4F9E: $05
    ld hl, sp+$00                                 ; $4F9F: $F8 $00
    add hl, bc                                    ; $4FA1: $09
    dec b                                         ; $4FA2: $05
    nop                                           ; $4FA3: $00
    ld hl, sp+$13                                 ; $4FA4: $F8 $13
    inc bc                                        ; $4FA6: $03
    nop                                           ; $4FA7: $00
    nop                                           ; $4FA8: $00
    inc d                                         ; $4FA9: $14
    inc bc                                        ; $4FAA: $03
    add b                                         ; $4FAB: $80
    ldh a, [rP1]                                  ; $4FAC: $F0 $00
    nop                                           ; $4FAE: $00
    dec h                                         ; $4FAF: $25
    ldh a, [$F8]                                  ; $4FB0: $F0 $F8
    ld bc, $F825                                  ; $4FB2: $01 $25 $F8
    nop                                           ; $4FB5: $00
    ld [$F825], sp                                ; $4FB6: $08 $25 $F8
    ld hl, sp+$09                                 ; $4FB9: $F8 $09
    dec h                                         ; $4FBB: $25
    nop                                           ; $4FBC: $00
    nop                                           ; $4FBD: $00
    inc de                                        ; $4FBE: $13
    inc hl                                        ; $4FBF: $23
    nop                                           ; $4FC0: $00
    ld hl, sp+$14                                 ; $4FC1: $F8 $14
    inc hl                                        ; $4FC3: $23
    add b                                         ; $4FC4: $80
    ldh a, [$F8]                                  ; $4FC5: $F0 $F8
    ld b, $05                                     ; $4FC7: $06 $05
    ldh a, [rP1]                                  ; $4FC9: $F0 $00
    rlca                                          ; $4FCB: $07
    dec b                                         ; $4FCC: $05
    ld hl, sp-$08                                 ; $4FCD: $F8 $F8
    dec c                                         ; $4FCF: $0D
    dec b                                         ; $4FD0: $05
    ld hl, sp+$00                                 ; $4FD1: $F8 $00
    ld c, $05                                     ; $4FD3: $0E $05
    nop                                           ; $4FD5: $00
    ld hl, sp+$17                                 ; $4FD6: $F8 $17
    inc bc                                        ; $4FD8: $03
    nop                                           ; $4FD9: $00
    nop                                           ; $4FDA: $00
    jr jr_00F_4FE0                                ; $4FDB: $18 $03

    add b                                         ; $4FDD: $80
    ldh a, [rP1]                                  ; $4FDE: $F0 $00

jr_00F_4FE0:
    ld b, $25                                     ; $4FE0: $06 $25
    ldh a, [$F8]                                  ; $4FE2: $F0 $F8
    rlca                                          ; $4FE4: $07
    dec h                                         ; $4FE5: $25
    ld hl, sp+$00                                 ; $4FE6: $F8 $00
    dec c                                         ; $4FE8: $0D
    dec h                                         ; $4FE9: $25
    ld hl, sp-$08                                 ; $4FEA: $F8 $F8
    ld c, $25                                     ; $4FEC: $0E $25
    nop                                           ; $4FEE: $00
    nop                                           ; $4FEF: $00
    rla                                           ; $4FF0: $17
    inc hl                                        ; $4FF1: $23
    nop                                           ; $4FF2: $00
    ld hl, sp+$18                                 ; $4FF3: $F8 $18
    inc hl                                        ; $4FF5: $23
    add b                                         ; $4FF6: $80
    pop af                                        ; $4FF7: $F1
    ld hl, sp+$02                                 ; $4FF8: $F8 $02
    dec b                                         ; $4FFA: $05
    pop af                                        ; $4FFB: $F1
    nop                                           ; $4FFC: $00
    inc bc                                        ; $4FFD: $03
    dec b                                         ; $4FFE: $05
    ld hl, sp-$08                                 ; $4FFF: $F8 $F8
    rrca                                          ; $5001: $0F
    dec b                                         ; $5002: $05
    ld hl, sp+$00                                 ; $5003: $F8 $00
    db $10                                        ; $5005: $10
    dec b                                         ; $5006: $05
    nop                                           ; $5007: $00
    db $FC                                        ; $5008: $FC
    add hl, de                                    ; $5009: $19
    inc bc                                        ; $500A: $03
    add b                                         ; $500B: $80
    ldh a, [$F8]                                  ; $500C: $F0 $F8
    ld [bc], a                                    ; $500E: $02
    dec b                                         ; $500F: $05
    ldh a, [rP1]                                  ; $5010: $F0 $00
    inc bc                                        ; $5012: $03
    dec b                                         ; $5013: $05
    ld hl, sp-$08                                 ; $5014: $F8 $F8
    ld a, [bc]                                    ; $5016: $0A
    dec h                                         ; $5017: $25
    ld hl, sp+$00                                 ; $5018: $F8 $00
    ld a, [bc]                                    ; $501A: $0A
    dec b                                         ; $501B: $05
    nop                                           ; $501C: $00
    nop                                           ; $501D: $00
    dec d                                         ; $501E: $15
    inc bc                                        ; $501F: $03
    nop                                           ; $5020: $00
    ld sp, hl                                     ; $5021: $F9
    dec d                                         ; $5022: $15
    inc hl                                        ; $5023: $23
    add b                                         ; $5024: $80
    pop af                                        ; $5025: $F1
    ld hl, sp+$02                                 ; $5026: $F8 $02
    dec b                                         ; $5028: $05
    pop af                                        ; $5029: $F1
    nop                                           ; $502A: $00
    inc bc                                        ; $502B: $03
    dec b                                         ; $502C: $05
    ld hl, sp+$00                                 ; $502D: $F8 $00
    rrca                                          ; $502F: $0F
    dec h                                         ; $5030: $25
    ld hl, sp-$08                                 ; $5031: $F8 $F8
    db $10                                        ; $5033: $10
    dec h                                         ; $5034: $25
    nop                                           ; $5035: $00
    db $FC                                        ; $5036: $FC
    add hl, de                                    ; $5037: $19
    inc hl                                        ; $5038: $23
    add b                                         ; $5039: $80
    pop af                                        ; $503A: $F1
    ld hl, sp+$04                                 ; $503B: $F8 $04
    dec b                                         ; $503D: $05
    pop af                                        ; $503E: $F1
    nop                                           ; $503F: $00
    dec b                                         ; $5040: $05
    dec b                                         ; $5041: $05
    ld hl, sp-$08                                 ; $5042: $F8 $F8
    ld de, $F805                                  ; $5044: $11 $05 $F8
    nop                                           ; $5047: $00
    ld [de], a                                    ; $5048: $12
    dec b                                         ; $5049: $05
    nop                                           ; $504A: $00
    ld hl, sp+$1A                                 ; $504B: $F8 $1A
    inc bc                                        ; $504D: $03
    nop                                           ; $504E: $00
    nop                                           ; $504F: $00
    dec de                                        ; $5050: $1B
    inc bc                                        ; $5051: $03
    add b                                         ; $5052: $80
    ldh a, [$F8]                                  ; $5053: $F0 $F8
    inc b                                         ; $5055: $04
    dec b                                         ; $5056: $05
    ldh a, [rP1]                                  ; $5057: $F0 $00
    dec b                                         ; $5059: $05
    dec b                                         ; $505A: $05
    ld hl, sp-$08                                 ; $505B: $F8 $F8
    dec bc                                        ; $505D: $0B
    dec b                                         ; $505E: $05
    ld hl, sp+$00                                 ; $505F: $F8 $00
    inc c                                         ; $5061: $0C
    dec b                                         ; $5062: $05
    nop                                           ; $5063: $00
    nop                                           ; $5064: $00
    ld d, $03                                     ; $5065: $16 $03
    nop                                           ; $5067: $00
    ld sp, hl                                     ; $5068: $F9
    ld d, $23                                     ; $5069: $16 $23
    add b                                         ; $506B: $80
    pop af                                        ; $506C: $F1
    ld hl, sp+$04                                 ; $506D: $F8 $04
    dec b                                         ; $506F: $05
    pop af                                        ; $5070: $F1
    nop                                           ; $5071: $00
    dec b                                         ; $5072: $05
    dec b                                         ; $5073: $05
    ld hl, sp+$00                                 ; $5074: $F8 $00
    ld de, $F825                                  ; $5076: $11 $25 $F8
    ld hl, sp+$12                                 ; $5079: $F8 $12
    dec h                                         ; $507B: $25
    nop                                           ; $507C: $00
    nop                                           ; $507D: $00
    ld a, [de]                                    ; $507E: $1A
    inc hl                                        ; $507F: $23
    nop                                           ; $5080: $00
    ld hl, sp+$1B                                 ; $5081: $F8 $1B
    inc hl                                        ; $5083: $23
    add b                                         ; $5084: $80
    pop af                                        ; $5085: $F1
    ld hl, sp+$1C                                 ; $5086: $F8 $1C
    dec b                                         ; $5088: $05
    pop af                                        ; $5089: $F1
    nop                                           ; $508A: $00
    dec e                                         ; $508B: $1D
    dec b                                         ; $508C: $05
    ld hl, sp-$08                                 ; $508D: $F8 $F8
    ld e, $05                                     ; $508F: $1E $05
    ld hl, sp+$00                                 ; $5091: $F8 $00
    rra                                           ; $5093: $1F
    dec b                                         ; $5094: $05
    nop                                           ; $5095: $00
    ld hl, sp+$24                                 ; $5096: $F8 $24
    inc bc                                        ; $5098: $03
    nop                                           ; $5099: $00
    nop                                           ; $509A: $00
    dec h                                         ; $509B: $25
    inc bc                                        ; $509C: $03
    add b                                         ; $509D: $80
    ldh a, [$F8]                                  ; $509E: $F0 $F8
    inc e                                         ; $50A0: $1C
    dec b                                         ; $50A1: $05
    ldh a, [rP1]                                  ; $50A2: $F0 $00
    dec e                                         ; $50A4: $1D
    dec b                                         ; $50A5: $05
    ld hl, sp-$08                                 ; $50A6: $F8 $F8
    jr nz, jr_00F_50AF                            ; $50A8: $20 $05

    ld hl, sp+$00                                 ; $50AA: $F8 $00
    ld hl, $0005                                  ; $50AC: $21 $05 $00

jr_00F_50AF:
    ld hl, sp+$26                                 ; $50AF: $F8 $26
    inc bc                                        ; $50B1: $03
    nop                                           ; $50B2: $00
    nop                                           ; $50B3: $00
    daa                                           ; $50B4: $27
    inc bc                                        ; $50B5: $03
    add b                                         ; $50B6: $80
    pop af                                        ; $50B7: $F1
    ld hl, sp+$1C                                 ; $50B8: $F8 $1C
    dec b                                         ; $50BA: $05
    pop af                                        ; $50BB: $F1
    nop                                           ; $50BC: $00
    dec e                                         ; $50BD: $1D
    dec b                                         ; $50BE: $05
    ld hl, sp-$08                                 ; $50BF: $F8 $F8
    ld [hl+], a                                   ; $50C1: $22
    dec b                                         ; $50C2: $05
    ld hl, sp+$00                                 ; $50C3: $F8 $00
    inc hl                                        ; $50C5: $23
    dec b                                         ; $50C6: $05
    nop                                           ; $50C7: $00
    ld hl, sp+$28                                 ; $50C8: $F8 $28
    inc bc                                        ; $50CA: $03
    nop                                           ; $50CB: $00
    nop                                           ; $50CC: $00
    add hl, hl                                    ; $50CD: $29
    inc bc                                        ; $50CE: $03
    add b                                         ; $50CF: $80
    pop af                                        ; $50D0: $F1
    nop                                           ; $50D1: $00
    inc e                                         ; $50D2: $1C
    dec h                                         ; $50D3: $25
    pop af                                        ; $50D4: $F1
    ld hl, sp+$1D                                 ; $50D5: $F8 $1D
    dec h                                         ; $50D7: $25
    ld hl, sp+$00                                 ; $50D8: $F8 $00
    ld e, $25                                     ; $50DA: $1E $25
    ld hl, sp-$08                                 ; $50DC: $F8 $F8
    rra                                           ; $50DE: $1F
    dec h                                         ; $50DF: $25
    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    inc h                                         ; $50E2: $24
    inc hl                                        ; $50E3: $23
    nop                                           ; $50E4: $00
    ld hl, sp+$25                                 ; $50E5: $F8 $25
    inc hl                                        ; $50E7: $23
    add b                                         ; $50E8: $80
    ldh a, [rP1]                                  ; $50E9: $F0 $00
    inc e                                         ; $50EB: $1C
    dec h                                         ; $50EC: $25
    ldh a, [$F8]                                  ; $50ED: $F0 $F8
    dec e                                         ; $50EF: $1D
    dec h                                         ; $50F0: $25
    ld hl, sp+$00                                 ; $50F1: $F8 $00
    jr nz, jr_00F_511A                            ; $50F3: $20 $25

    ld hl, sp-$08                                 ; $50F5: $F8 $F8
    ld hl, $0025                                  ; $50F7: $21 $25 $00
    nop                                           ; $50FA: $00
    ld h, $23                                     ; $50FB: $26 $23
    nop                                           ; $50FD: $00
    ld hl, sp+$27                                 ; $50FE: $F8 $27
    inc hl                                        ; $5100: $23
    add b                                         ; $5101: $80
    pop af                                        ; $5102: $F1
    nop                                           ; $5103: $00
    inc e                                         ; $5104: $1C
    dec h                                         ; $5105: $25
    pop af                                        ; $5106: $F1
    ld hl, sp+$1D                                 ; $5107: $F8 $1D
    dec h                                         ; $5109: $25
    ld hl, sp+$00                                 ; $510A: $F8 $00
    ld [hl+], a                                   ; $510C: $22
    dec h                                         ; $510D: $25
    ld hl, sp-$08                                 ; $510E: $F8 $F8
    inc hl                                        ; $5110: $23
    dec h                                         ; $5111: $25
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    jr z, jr_00F_5139                             ; $5114: $28 $23

    nop                                           ; $5116: $00
    ld hl, sp+$29                                 ; $5117: $F8 $29
    inc hl                                        ; $5119: $23

jr_00F_511A:
    add b                                         ; $511A: $80
    nop                                           ; $511B: $00
    nop                                           ; $511C: $00
    ld d, e                                       ; $511D: $53
    inc bc                                        ; $511E: $03
    nop                                           ; $511F: $00
    ld hl, sp+$52                                 ; $5120: $F8 $52
    inc bc                                        ; $5122: $03
    ld hl, sp-$08                                 ; $5123: $F8 $F8
    ld a, $25                                     ; $5125: $3E $25
    ld hl, sp+$00                                 ; $5127: $F8 $00
    ld a, $05                                     ; $5129: $3E $05
    ldh a, [rP1]                                  ; $512B: $F0 $00
    ld sp, $F005                                  ; $512D: $31 $05 $F0
    ld hl, sp+$30                                 ; $5130: $F8 $30
    dec b                                         ; $5132: $05
    add b                                         ; $5133: $80
    nop                                           ; $5134: $00
    nop                                           ; $5135: $00
    ld d, e                                       ; $5136: $53
    inc bc                                        ; $5137: $03
    nop                                           ; $5138: $00

jr_00F_5139:
    ld hl, sp+$52                                 ; $5139: $F8 $52
    inc bc                                        ; $513B: $03
    ld hl, sp+$00                                 ; $513C: $F8 $00
    ld b, b                                       ; $513E: $40
    dec b                                         ; $513F: $05
    ld hl, sp-$08                                 ; $5140: $F8 $F8
    ccf                                           ; $5142: $3F
    dec h                                         ; $5143: $25
    ldh a, [rP1]                                  ; $5144: $F0 $00
    inc sp                                        ; $5146: $33
    dec b                                         ; $5147: $05
    ldh a, [$F8]                                  ; $5148: $F0 $F8
    ld [hl-], a                                   ; $514A: $32
    dec b                                         ; $514B: $05
    add b                                         ; $514C: $80
    ld hl, sp-$08                                 ; $514D: $F8 $F8
    ld a, $25                                     ; $514F: $3E $25
    ld hl, sp+$00                                 ; $5151: $F8 $00
    ld b, c                                       ; $5153: $41
    dec b                                         ; $5154: $05
    nop                                           ; $5155: $00
    ld hl, sp+$52                                 ; $5156: $F8 $52
    inc bc                                        ; $5158: $03
    ldh a, [$F8]                                  ; $5159: $F0 $F8
    jr nc, jr_00F_5162                            ; $515B: $30 $05

    ldh a, [rP1]                                  ; $515D: $F0 $00
    inc [hl]                                      ; $515F: $34
    dec b                                         ; $5160: $05
    nop                                           ; $5161: $00

jr_00F_5162:
    nop                                           ; $5162: $00
    ld d, e                                       ; $5163: $53
    inc bc                                        ; $5164: $03
    add b                                         ; $5165: $80
    ld hl, sp+$08                                 ; $5166: $F8 $08
    ld b, h                                       ; $5168: $44
    nop                                           ; $5169: $00
    ld hl, sp+$00                                 ; $516A: $F8 $00
    ld b, e                                       ; $516C: $43
    dec b                                         ; $516D: $05
    ldh a, [rP1]                                  ; $516E: $F0 $00
    dec a                                         ; $5170: $3D
    dec b                                         ; $5171: $05
    nop                                           ; $5172: $00
    nop                                           ; $5173: $00
    ld d, e                                       ; $5174: $53
    inc bc                                        ; $5175: $03
    nop                                           ; $5176: $00
    ld hl, sp+$52                                 ; $5177: $F8 $52
    inc bc                                        ; $5179: $03
    ld hl, sp-$08                                 ; $517A: $F8 $F8
    ccf                                           ; $517C: $3F
    dec h                                         ; $517D: $25
    ldh a, [$F8]                                  ; $517E: $F0 $F8
    ld [hl-], a                                   ; $5180: $32
    dec b                                         ; $5181: $05
    add b                                         ; $5182: $80
    ld hl, sp+$00                                 ; $5183: $F8 $00
    ccf                                           ; $5185: $3F
    dec b                                         ; $5186: $05
    ldh a, [rP1]                                  ; $5187: $F0 $00
    dec a                                         ; $5189: $3D
    dec b                                         ; $518A: $05
    nop                                           ; $518B: $00
    nop                                           ; $518C: $00
    ld d, e                                       ; $518D: $53
    inc bc                                        ; $518E: $03
    nop                                           ; $518F: $00
    ld hl, sp+$52                                 ; $5190: $F8 $52
    inc bc                                        ; $5192: $03
    ld hl, sp-$08                                 ; $5193: $F8 $F8
    ccf                                           ; $5195: $3F
    dec h                                         ; $5196: $25
    ldh a, [$F8]                                  ; $5197: $F0 $F8
    ld [hl-], a                                   ; $5199: $32
    dec b                                         ; $519A: $05
    add b                                         ; $519B: $80
    ld hl, sp+$00                                 ; $519C: $F8 $00
    ld b, l                                       ; $519E: $45
    dec b                                         ; $519F: $05
    nop                                           ; $51A0: $00
    nop                                           ; $51A1: $00
    ld d, e                                       ; $51A2: $53
    inc bc                                        ; $51A3: $03
    nop                                           ; $51A4: $00
    ld hl, sp+$52                                 ; $51A5: $F8 $52
    inc bc                                        ; $51A7: $03
    ld hl, sp-$08                                 ; $51A8: $F8 $F8
    ld a, $25                                     ; $51AA: $3E $25
    ldh a, [rP1]                                  ; $51AC: $F0 $00
    ld sp, $F005                                  ; $51AE: $31 $05 $F0
    ld hl, sp+$30                                 ; $51B1: $F8 $30
    dec b                                         ; $51B3: $05
    add b                                         ; $51B4: $80
    ld hl, sp+$08                                 ; $51B5: $F8 $08
    ld b, a                                       ; $51B7: $47
    nop                                           ; $51B8: $00
    ld hl, sp+$00                                 ; $51B9: $F8 $00
    ld b, [hl]                                    ; $51BB: $46
    dec b                                         ; $51BC: $05
    ldh a, [$08]                                  ; $51BD: $F0 $08
    jr c, jr_00F_51C1                             ; $51BF: $38 $00

jr_00F_51C1:
    ldh a, [rP1]                                  ; $51C1: $F0 $00
    scf                                           ; $51C3: $37
    dec b                                         ; $51C4: $05
    nop                                           ; $51C5: $00
    nop                                           ; $51C6: $00
    ld d, e                                       ; $51C7: $53
    inc bc                                        ; $51C8: $03
    nop                                           ; $51C9: $00
    ld hl, sp+$52                                 ; $51CA: $F8 $52
    inc bc                                        ; $51CC: $03
    ld hl, sp-$08                                 ; $51CD: $F8 $F8
    ld a, $25                                     ; $51CF: $3E $25
    ldh a, [$F8]                                  ; $51D1: $F0 $F8
    jr nc, jr_00F_51DA                            ; $51D3: $30 $05

    add b                                         ; $51D5: $80
    ld hl, sp+$08                                 ; $51D6: $F8 $08
    ld c, d                                       ; $51D8: $4A
    nop                                           ; $51D9: $00

jr_00F_51DA:
    ld hl, sp+$00                                 ; $51DA: $F8 $00
    ld c, c                                       ; $51DC: $49
    dec b                                         ; $51DD: $05
    ld hl, sp-$08                                 ; $51DE: $F8 $F8
    ld c, b                                       ; $51E0: $48
    dec b                                         ; $51E1: $05
    nop                                           ; $51E2: $00
    nop                                           ; $51E3: $00
    ld d, l                                       ; $51E4: $55
    inc bc                                        ; $51E5: $03
    nop                                           ; $51E6: $00
    ld hl, sp+$54                                 ; $51E7: $F8 $54
    inc bc                                        ; $51E9: $03
    ldh a, [$08]                                  ; $51EA: $F0 $08
    jr c, jr_00F_51EE                             ; $51EC: $38 $00

jr_00F_51EE:
    ldh a, [$F8]                                  ; $51EE: $F0 $F8
    ld [hl-], a                                   ; $51F0: $32
    dec b                                         ; $51F1: $05
    ldh a, [rP1]                                  ; $51F2: $F0 $00
    add hl, sp                                    ; $51F4: $39
    dec b                                         ; $51F5: $05
    add b                                         ; $51F6: $80
    nop                                           ; $51F7: $00
    nop                                           ; $51F8: $00
    ld d, l                                       ; $51F9: $55
    inc bc                                        ; $51FA: $03
    nop                                           ; $51FB: $00
    ld hl, sp+$54                                 ; $51FC: $F8 $54
    inc bc                                        ; $51FE: $03
    ld hl, sp+$00                                 ; $51FF: $F8 $00
    ld c, h                                       ; $5201: $4C
    dec b                                         ; $5202: $05
    ld hl, sp-$08                                 ; $5203: $F8 $F8
    ld c, e                                       ; $5205: $4B
    dec b                                         ; $5206: $05
    ldh a, [$08]                                  ; $5207: $F0 $08
    dec sp                                        ; $5209: $3B
    nop                                           ; $520A: $00
    ldh a, [rP1]                                  ; $520B: $F0 $00
    ld a, [hl-]                                   ; $520D: $3A
    dec b                                         ; $520E: $05
    ldh a, [$F8]                                  ; $520F: $F0 $F8
    ld [hl-], a                                   ; $5211: $32
    dec b                                         ; $5212: $05
    add b                                         ; $5213: $80
    nop                                           ; $5214: $00
    nop                                           ; $5215: $00
    ld d, l                                       ; $5216: $55
    inc bc                                        ; $5217: $03
    nop                                           ; $5218: $00
    ld hl, sp+$54                                 ; $5219: $F8 $54
    inc bc                                        ; $521B: $03
    ldh a, [$F8]                                  ; $521C: $F0 $F8
    ld [hl-], a                                   ; $521E: $32
    dec b                                         ; $521F: $05
    ldh a, [rP1]                                  ; $5220: $F0 $00
    dec a                                         ; $5222: $3D
    dec b                                         ; $5223: $05
    add sp, -$05                                  ; $5224: $E8 $FB
    inc a                                         ; $5226: $3C
    nop                                           ; $5227: $00
    ld hl, sp+$00                                 ; $5228: $F8 $00
    ld c, [hl]                                    ; $522A: $4E
    dec b                                         ; $522B: $05
    ld hl, sp-$08                                 ; $522C: $F8 $F8
    ld c, l                                       ; $522E: $4D
    dec b                                         ; $522F: $05
    add b                                         ; $5230: $80
    pop af                                        ; $5231: $F1
    ld [bc], a                                    ; $5232: $02
    dec [hl]                                      ; $5233: $35
    dec b                                         ; $5234: $05
    pop af                                        ; $5235: $F1
    ld a, [$0532]                                 ; $5236: $FA $32 $05
    ld hl, sp-$08                                 ; $5239: $F8 $F8
    ld c, a                                       ; $523B: $4F
    dec b                                         ; $523C: $05
    ld hl, sp+$08                                 ; $523D: $F8 $08
    ld d, c                                       ; $523F: $51
    nop                                           ; $5240: $00
    ld hl, sp+$00                                 ; $5241: $F8 $00
    ld d, b                                       ; $5243: $50
    dec b                                         ; $5244: $05
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    ld d, a                                       ; $5247: $57
    inc bc                                        ; $5248: $03
    nop                                           ; $5249: $00
    ld hl, sp+$56                                 ; $524A: $F8 $56
    inc bc                                        ; $524C: $03
    add b                                         ; $524D: $80
    ld c, l                                       ; $524E: $4D
    ld [$0008], sp                                ; $524F: $08 $08 $00
    rst $38                                       ; $5252: $FF
    ld a, [hl-]                                   ; $5253: $3A
    ld d, b                                       ; $5254: $50
    ld d, e                                       ; $5255: $53
    ld d, b                                       ; $5256: $50
    ld l, h                                       ; $5257: $6C
    ld d, b                                       ; $5258: $50
    ld d, e                                       ; $5259: $53
    ld d, b                                       ; $525A: $50
    ld b, [hl]                                    ; $525B: $46
    ld c, [hl]                                    ; $525C: $4E
    ld d, d                                       ; $525D: $52
    ld c, l                                       ; $525E: $4D
    ld [$0008], sp                                ; $525F: $08 $08 $00
    ld bc, $4FF7                                  ; $5262: $01 $F7 $4F
    inc c                                         ; $5265: $0C
    ld d, b                                       ; $5266: $50
    dec h                                         ; $5267: $25
    ld d, b                                       ; $5268: $50
    inc c                                         ; $5269: $0C
    ld d, b                                       ; $526A: $50
    ld b, [hl]                                    ; $526B: $46
    ld e, [hl]                                    ; $526C: $5E
    ld d, d                                       ; $526D: $52
    ld c, l                                       ; $526E: $4D
    ld [$FF08], sp                                ; $526F: $08 $08 $FF
    nop                                           ; $5272: $00
    ret nc                                        ; $5273: $D0

    ld d, b                                       ; $5274: $50
    jp hl                                         ; $5275: $E9


    ld d, b                                       ; $5276: $50
    ld [bc], a                                    ; $5277: $02
    ld d, c                                       ; $5278: $51
    jp hl                                         ; $5279: $E9


    ld d, b                                       ; $527A: $50
    ld b, [hl]                                    ; $527B: $46
    ld l, [hl]                                    ; $527C: $6E
    ld d, d                                       ; $527D: $52
    ld c, l                                       ; $527E: $4D
    ld [$0108], sp                                ; $527F: $08 $08 $01
    nop                                           ; $5282: $00
    add l                                         ; $5283: $85
    ld d, b                                       ; $5284: $50
    sbc [hl]                                      ; $5285: $9E
    ld d, b                                       ; $5286: $50
    or a                                          ; $5287: $B7
    ld d, b                                       ; $5288: $50
    sbc [hl]                                      ; $5289: $9E
    ld d, b                                       ; $528A: $50
    ld b, [hl]                                    ; $528B: $46
    ld a, [hl]                                    ; $528C: $7E
    ld d, d                                       ; $528D: $52
    ld c, l                                       ; $528E: $4D
    ld [$0008], sp                                ; $528F: $08 $08 $00
    cp $3A                                        ; $5292: $FE $3A
    ld d, b                                       ; $5294: $50
    ld d, e                                       ; $5295: $53
    ld d, b                                       ; $5296: $50
    ld l, h                                       ; $5297: $6C
    ld d, b                                       ; $5298: $50
    ld d, e                                       ; $5299: $53
    ld d, b                                       ; $529A: $50
    ld b, [hl]                                    ; $529B: $46
    adc [hl]                                      ; $529C: $8E
    ld d, d                                       ; $529D: $52
    ld c, l                                       ; $529E: $4D
    ld [$0008], sp                                ; $529F: $08 $08 $00
    ld [bc], a                                    ; $52A2: $02
    rst $30                                       ; $52A3: $F7
    ld c, a                                       ; $52A4: $4F
    inc c                                         ; $52A5: $0C
    ld d, b                                       ; $52A6: $50
    dec h                                         ; $52A7: $25
    ld d, b                                       ; $52A8: $50
    inc c                                         ; $52A9: $0C
    ld d, b                                       ; $52AA: $50
    ld b, [hl]                                    ; $52AB: $46
    sbc [hl]                                      ; $52AC: $9E
    ld d, d                                       ; $52AD: $52
    ld c, l                                       ; $52AE: $4D
    ld [$FE08], sp                                ; $52AF: $08 $08 $FE
    nop                                           ; $52B2: $00
    ret nc                                        ; $52B3: $D0

    ld d, b                                       ; $52B4: $50
    jp hl                                         ; $52B5: $E9


    ld d, b                                       ; $52B6: $50
    ld [bc], a                                    ; $52B7: $02
    ld d, c                                       ; $52B8: $51
    jp hl                                         ; $52B9: $E9


    ld d, b                                       ; $52BA: $50
    ld b, [hl]                                    ; $52BB: $46
    xor [hl]                                      ; $52BC: $AE
    ld d, d                                       ; $52BD: $52
    ld c, l                                       ; $52BE: $4D
    ld [$0208], sp                                ; $52BF: $08 $08 $02
    nop                                           ; $52C2: $00
    add l                                         ; $52C3: $85
    ld d, b                                       ; $52C4: $50
    sbc [hl]                                      ; $52C5: $9E
    ld d, b                                       ; $52C6: $50
    or a                                          ; $52C7: $B7
    ld d, b                                       ; $52C8: $50
    sbc [hl]                                      ; $52C9: $9E
    ld d, b                                       ; $52CA: $50
    ld b, [hl]                                    ; $52CB: $46
    cp [hl]                                       ; $52CC: $BE
    ld d, d                                       ; $52CD: $52
    ld c, h                                       ; $52CE: $4C
    rst $38                                       ; $52CF: $FF
    nop                                           ; $52D0: $00
    nop                                           ; $52D1: $00
    ld d, e                                       ; $52D2: $53
    ld d, b                                       ; $52D3: $50
    nop                                           ; $52D4: $00
    ld b, [hl]                                    ; $52D5: $46
    adc $52                                       ; $52D6: $CE $52
    ld c, h                                       ; $52D8: $4C
    rst $38                                       ; $52D9: $FF
    nop                                           ; $52DA: $00
    nop                                           ; $52DB: $00
    inc c                                         ; $52DC: $0C
    ld d, b                                       ; $52DD: $50
    nop                                           ; $52DE: $00
    ld b, [hl]                                    ; $52DF: $46
    ret c                                         ; $52E0: $D8

    ld d, d                                       ; $52E1: $52
    ld c, h                                       ; $52E2: $4C
    rst $38                                       ; $52E3: $FF
    nop                                           ; $52E4: $00
    nop                                           ; $52E5: $00
    jp hl                                         ; $52E6: $E9


    ld d, b                                       ; $52E7: $50
    nop                                           ; $52E8: $00
    ld b, [hl]                                    ; $52E9: $46
    ld [c], a                                     ; $52EA: $E2
    ld d, d                                       ; $52EB: $52
    ld c, h                                       ; $52EC: $4C
    rst $38                                       ; $52ED: $FF
    nop                                           ; $52EE: $00
    nop                                           ; $52EF: $00
    sbc [hl]                                      ; $52F0: $9E
    ld d, b                                       ; $52F1: $50
    nop                                           ; $52F2: $00
    ld b, [hl]                                    ; $52F3: $46
    db $EC                                        ; $52F4: $EC
    ld d, d                                       ; $52F5: $52
    ld c, h                                       ; $52F6: $4C
    rst $38                                       ; $52F7: $FF
    nop                                           ; $52F8: $00
    nop                                           ; $52F9: $00
    sbc $4F                                       ; $52FA: $DE $4F
    nop                                           ; $52FC: $00
    ld b, [hl]                                    ; $52FD: $46
    or $52                                        ; $52FE: $F6 $52
    ld c, h                                       ; $5300: $4C
    rst $38                                       ; $5301: $FF
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    push bc                                       ; $5304: $C5
    ld c, a                                       ; $5305: $4F
    nop                                           ; $5306: $00
    ld b, [hl]                                    ; $5307: $46
    nop                                           ; $5308: $00
    ld d, e                                       ; $5309: $53
    ld c, h                                       ; $530A: $4C
    rst $38                                       ; $530B: $FF
    nop                                           ; $530C: $00
    nop                                           ; $530D: $00
    xor h                                         ; $530E: $AC
    ld c, a                                       ; $530F: $4F
    nop                                           ; $5310: $00
    ld b, [hl]                                    ; $5311: $46
    ld a, [bc]                                    ; $5312: $0A
    ld d, e                                       ; $5313: $53
    ld c, h                                       ; $5314: $4C
    rst $38                                       ; $5315: $FF
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    sub e                                         ; $5318: $93
    ld c, a                                       ; $5319: $4F
    nop                                           ; $531A: $00
    ld b, [hl]                                    ; $531B: $46
    inc d                                         ; $531C: $14
    ld d, e                                       ; $531D: $53
    ld c, h                                       ; $531E: $4C
    ld [rRAMG], sp                                ; $531F: $08 $00 $00
    inc [hl]                                      ; $5322: $34
    ld d, c                                       ; $5323: $51
    inc b                                         ; $5324: $04
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    ld h, [hl]                                    ; $5327: $66
    ld d, c                                       ; $5328: $51
    ld [rRAMG], sp                                ; $5329: $08 $00 $00
    add e                                         ; $532C: $83
    ld d, c                                       ; $532D: $51
    jr nz, jr_00F_5330                            ; $532E: $20 $00

jr_00F_5330:
    nop                                           ; $5330: $00
    sbc h                                         ; $5331: $9C
    ld d, c                                       ; $5332: $51
    stop                                          ; $5333: $10 $00
    nop                                           ; $5335: $00
    or l                                          ; $5336: $B5
    ld d, c                                       ; $5337: $51
    ld [rRAMG], sp                                ; $5338: $08 $00 $00
    sub $51                                       ; $533B: $D6 $51
    inc b                                         ; $533D: $04
    nop                                           ; $533E: $00
    nop                                           ; $533F: $00
    rst $30                                       ; $5340: $F7
    ld d, c                                       ; $5341: $51
    ld [rRAMG], sp                                ; $5342: $08 $00 $00
    inc d                                         ; $5345: $14
    ld d, d                                       ; $5346: $52
    nop                                           ; $5347: $00
    ld e, d                                       ; $5348: $5A
    rrca                                          ; $5349: $0F
    or h                                          ; $534A: $B4
    ld d, e                                       ; $534B: $53
    ld c, h                                       ; $534C: $4C
    stop                                          ; $534D: $10 $00
    nop                                           ; $534F: $00
    ld sp, $0452                                  ; $5350: $31 $52 $04
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    rst $30                                       ; $5355: $F7
    ld d, c                                       ; $5356: $51
    ld [rRAMG], sp                                ; $5357: $08 $00 $00
    inc d                                         ; $535A: $14
    ld d, d                                       ; $535B: $52
    nop                                           ; $535C: $00
    ld e, d                                       ; $535D: $5A
    rrca                                          ; $535E: $0F
    or h                                          ; $535F: $B4
    ld d, e                                       ; $5360: $53
    ld c, h                                       ; $5361: $4C
    stop                                          ; $5362: $10 $00
    nop                                           ; $5364: $00
    ld sp, $0452                                  ; $5365: $31 $52 $04
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    rst $30                                       ; $536A: $F7
    ld d, c                                       ; $536B: $51
    ld [rRAMG], sp                                ; $536C: $08 $00 $00
    inc d                                         ; $536F: $14
    ld d, d                                       ; $5370: $52
    nop                                           ; $5371: $00
    ld e, d                                       ; $5372: $5A
    rrca                                          ; $5373: $0F
    or h                                          ; $5374: $B4
    ld d, e                                       ; $5375: $53
    ld c, h                                       ; $5376: $4C
    stop                                          ; $5377: $10 $00
    nop                                           ; $5379: $00
    ld sp, $0452                                  ; $537A: $31 $52 $04
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    rst $30                                       ; $537F: $F7
    ld d, c                                       ; $5380: $51
    inc b                                         ; $5381: $04
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    sub $51                                       ; $5384: $D6 $51
    inc b                                         ; $5386: $04
    nop                                           ; $5387: $00
    nop                                           ; $5388: $00
    or l                                          ; $5389: $B5
    ld d, c                                       ; $538A: $51
    inc b                                         ; $538B: $04
    nop                                           ; $538C: $00
    nop                                           ; $538D: $00
    sbc h                                         ; $538E: $9C
    ld d, c                                       ; $538F: $51
    inc b                                         ; $5390: $04
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    add e                                         ; $5393: $83
    ld d, c                                       ; $5394: $51
    ld [rRAMG], sp                                ; $5395: $08 $00 $00
    ld h, [hl]                                    ; $5398: $66
    ld d, c                                       ; $5399: $51
    inc b                                         ; $539A: $04
    nop                                           ; $539B: $00
    nop                                           ; $539C: $00
    inc [hl]                                      ; $539D: $34
    ld d, c                                       ; $539E: $51
    nop                                           ; $539F: $00
    ld c, h                                       ; $53A0: $4C
    rst $38                                       ; $53A1: $FF
    nop                                           ; $53A2: $00
    nop                                           ; $53A3: $00
    ld c, l                                       ; $53A4: $4D
    ld d, c                                       ; $53A5: $51
    nop                                           ; $53A6: $00
    ld b, [hl]                                    ; $53A7: $46
    and b                                         ; $53A8: $A0
    ld d, e                                       ; $53A9: $53
    ld c, h                                       ; $53AA: $4C
    rst $38                                       ; $53AB: $FF
    nop                                           ; $53AC: $00
    nop                                           ; $53AD: $00
    dec de                                        ; $53AE: $1B
    ld d, c                                       ; $53AF: $51
    nop                                           ; $53B0: $00
    ld b, [hl]                                    ; $53B1: $46
    xor d                                         ; $53B2: $AA
    ld d, e                                       ; $53B3: $53
    add e                                         ; $53B4: $83
    ld bc, $0200                                  ; $53B5: $01 $00 $02
    ld bc, $FD00                                  ; $53B8: $01 $00 $FD
    ld bc, $0300                                  ; $53BB: $01 $00 $03
    ld bc, $FD00                                  ; $53BE: $01 $00 $FD
    ld bc, $0300                                  ; $53C1: $01 $00 $03
    ld bc, $FE00                                  ; $53C4: $01 $00 $FE
    ld bc, $0200                                  ; $53C7: $01 $00 $02
    ld bc, $FE00                                  ; $53CA: $01 $00 $FE
    ld bc, $0200                                  ; $53CD: $01 $00 $02
    ld bc, $FE00                                  ; $53D0: $01 $00 $FE
    ld bc, $0100                                  ; $53D3: $01 $00 $01
    ld bc, $FF00                                  ; $53D6: $01 $00 $FF
    ld bc, $0100                                  ; $53D9: $01 $00 $01
    ld bc, $FF00                                  ; $53DC: $01 $00 $FF
    ld bc, $0100                                  ; $53DF: $01 $00 $01
    ld bc, $FF00                                  ; $53E2: $01 $00 $FF
    ld bc, $0100                                  ; $53E5: $01 $00 $01
    ld bc, $FF00                                  ; $53E8: $01 $00 $FF
    nop                                           ; $53EB: $00
    ld b, d                                       ; $53EC: $42
    ld c, e                                       ; $53ED: $4B
    inc bc                                        ; $53EE: $03
    rrca                                          ; $53EF: $0F
    nop                                           ; $53F0: $00
    nop                                           ; $53F1: $00
    inc b                                         ; $53F2: $04
    ld d, h                                       ; $53F3: $54
    rrca                                          ; $53F4: $0F
    inc bc                                        ; $53F5: $03
    nop                                           ; $53F6: $00
    dec bc                                        ; $53F7: $0B
    ld d, h                                       ; $53F8: $54
    rrca                                          ; $53F9: $0F
    ld [bc], a                                    ; $53FA: $02
    nop                                           ; $53FB: $00
    add hl, de                                    ; $53FC: $19
    ld d, h                                       ; $53FD: $54
    rrca                                          ; $53FE: $0F
    ld bc, $1200                                  ; $53FF: $01 $00 $12
    ld d, h                                       ; $5402: $54
    rst $38                                       ; $5403: $FF
    inc d                                         ; $5404: $14
    rrca                                          ; $5405: $0F
    adc $52                                       ; $5406: $CE $52
    ld h, d                                       ; $5408: $62
    ld bc, $1412                                  ; $5409: $01 $12 $14
    rrca                                          ; $540C: $0F
    ret c                                         ; $540D: $D8

    ld d, d                                       ; $540E: $52
    ld h, d                                       ; $540F: $62
    ld bc, $1412                                  ; $5410: $01 $12 $14
    rrca                                          ; $5413: $0F
    ld [c], a                                     ; $5414: $E2
    ld d, d                                       ; $5415: $52
    ld h, d                                       ; $5416: $62
    ld bc, $1412                                  ; $5417: $01 $12 $14
    rrca                                          ; $541A: $0F
    db $EC                                        ; $541B: $EC
    ld d, d                                       ; $541C: $52
    ld h, d                                       ; $541D: $62
    db $01                                        ; $541E: $01
    ld [de], a                                    ; $541F: $12

    db $00, $00, $05, $04, $00, $F8, $04, $04, $F8, $00, $03, $04, $F8, $F8, $02, $04
    db $F0, $00, $01, $04, $F0, $F8, $00, $04, $80, $00, $F8, $05, $24, $00, $00, $04
    db $24, $F8, $F8, $03, $24, $F8, $00, $02, $24, $F0, $F8, $01, $24, $F0, $00, $00
    db $24, $80, $00, $00, $0B, $04, $00, $F8, $0A, $04, $F8, $00, $09, $04, $F8, $F8
    db $08, $04, $F0, $00, $07, $04, $F0, $F8, $06, $04, $80, $00, $F8, $0B, $24, $00
    db $00, $0A, $24, $F8, $F8, $09, $24, $F8, $00, $08, $24, $F0, $F8, $07, $24, $F0
    db $00, $06, $24, $80, $00, $F8, $1A, $24, $00, $00, $19, $24, $F8, $00, $18, $04
    db $F8, $F8, $17, $04, $F1, $00, $0D, $04, $F1, $F8, $0C, $04, $80, $00, $00, $11
    db $04, $00, $F8, $10, $04, $F8, $00, $0F, $04, $F8, $F8, $0E, $04, $F0, $00, $0D
    db $04, $F0, $F8, $0C, $04, $80, $00, $00, $1A, $04, $00, $F8, $19, $04, $F8, $F8
    db $18, $24, $F8, $00, $17, $24, $F1, $00, $0D, $04, $F1, $F8, $0C, $04, $80, $00
    db $00, $1E, $04, $00, $F8, $1D, $04, $F8, $00, $1C, $04, $F8, $F8, $1B, $04, $F1
    db $00, $13, $04, $F1, $F8, $12, $04, $80, $00, $F8, $16, $24, $00, $00, $16, $04
    db $F8, $00, $15, $04, $F8, $F8, $14, $04, $F0, $00, $13, $04, $F0, $F8, $12, $04
    db $80, $00, $F8, $1E, $24, $00, $00, $1D, $24, $F8, $00, $1C, $04, $F8, $F8, $1B
    db $04, $F1, $00, $13, $04, $F1, $F8, $12, $04, $80, $00, $00, $24, $04, $00, $F8
    db $23, $04, $F8, $00, $22, $04, $F8, $F8, $21, $04, $F0, $00, $20, $04, $F0, $F8
    db $1F, $04, $80, $00, $00, $26, $04, $00, $F8, $25, $04, $F9, $00, $22, $04, $F9
    db $F8, $21, $04, $F1, $00, $20, $04, $F1, $F8, $1F, $04, $80, $00, $F8, $24, $24
    db $00, $00, $23, $24, $F8, $F8, $22, $24, $F8, $00, $21, $24, $F0, $F8, $20, $24
    db $F0, $00, $1F, $24, $80, $00, $F8, $26, $24, $00, $00, $25, $24, $F9, $F8, $22
    db $24, $F9, $00, $21, $24, $F1, $F8, $20, $24, $F1, $00, $1F, $24, $80

    ld hl, sp+$00                                 ; $557E: $F8 $00
    dec c                                         ; $5580: $0D
    inc b                                         ; $5581: $04
    ld hl, sp-$08                                 ; $5582: $F8 $F8
    inc c                                         ; $5584: $0C
    inc b                                         ; $5585: $04
    add b                                         ; $5586: $80
    ldh a, [rP1]                                  ; $5587: $F0 $00
    ld bc, $F004                                  ; $5589: $01 $04 $F0
    ld hl, sp+$00                                 ; $558C: $F8 $00
    inc b                                         ; $558E: $04
    add b                                         ; $558F: $80
    ldh a, [$F8]                                  ; $5590: $F0 $F8
    ld bc, $F024                                  ; $5592: $01 $24 $F0
    nop                                           ; $5595: $00
    nop                                           ; $5596: $00
    inc h                                         ; $5597: $24
    add b                                         ; $5598: $80
    nop                                           ; $5599: $00
    ld [$042E], sp                                ; $559A: $08 $2E $04
    nop                                           ; $559D: $00
    nop                                           ; $559E: $00
    dec l                                         ; $559F: $2D
    inc b                                         ; $55A0: $04
    nop                                           ; $55A1: $00
    ld hl, sp+$2C                                 ; $55A2: $F8 $2C
    inc b                                         ; $55A4: $04
    ld hl, sp+$08                                 ; $55A5: $F8 $08
    dec hl                                        ; $55A7: $2B
    inc b                                         ; $55A8: $04
    ld hl, sp+$00                                 ; $55A9: $F8 $00
    ld a, [hl+]                                   ; $55AB: $2A
    inc b                                         ; $55AC: $04
    ld hl, sp-$08                                 ; $55AD: $F8 $F8
    add hl, hl                                    ; $55AF: $29
    inc b                                         ; $55B0: $04
    ldh a, [$08]                                  ; $55B1: $F0 $08
    jr z, jr_00F_55B9                             ; $55B3: $28 $04

    ldh a, [rP1]                                  ; $55B5: $F0 $00
    daa                                           ; $55B7: $27
    inc b                                         ; $55B8: $04

jr_00F_55B9:
    add b                                         ; $55B9: $80
    nop                                           ; $55BA: $00
    ldh a, [$2E]                                  ; $55BB: $F0 $2E
    inc h                                         ; $55BD: $24
    nop                                           ; $55BE: $00
    ld hl, sp+$2D                                 ; $55BF: $F8 $2D
    inc h                                         ; $55C1: $24
    nop                                           ; $55C2: $00
    nop                                           ; $55C3: $00
    inc l                                         ; $55C4: $2C
    inc h                                         ; $55C5: $24
    ld hl, sp-$10                                 ; $55C6: $F8 $F0
    dec hl                                        ; $55C8: $2B
    inc h                                         ; $55C9: $24
    ld hl, sp-$08                                 ; $55CA: $F8 $F8
    ld a, [hl+]                                   ; $55CC: $2A
    inc h                                         ; $55CD: $24
    ld hl, sp+$00                                 ; $55CE: $F8 $00
    add hl, hl                                    ; $55D0: $29
    inc h                                         ; $55D1: $24
    ldh a, [$F0]                                  ; $55D2: $F0 $F0
    jr z, @+$26                                   ; $55D4: $28 $24

    ldh a, [$F8]                                  ; $55D6: $F0 $F8
    daa                                           ; $55D8: $27
    inc h                                         ; $55D9: $24
    add b                                         ; $55DA: $80

    db $4D, $08, $08, $00, $FF, $CF, $54, $E8, $54, $01, $55, $E8, $54, $46, $DB, $55
    db $4D, $08, $08, $00, $01, $84, $54, $9D, $54, $B6, $54, $9D, $54, $46, $EB, $55
    db $4D, $08, $08, $FF, $00, $4C, $55, $65, $55, $4C, $55, $65, $55, $46, $FB, $55
    db $4D, $08, $08, $01, $00, $1A, $55, $33, $55, $1A, $55, $33, $55, $46, $0B, $56
    db $4D, $08, $08, $00, $FE, $CF, $54

    add sp, $54                                   ; $5622: $E8 $54
    ld bc, $E855                                  ; $5624: $01 $55 $E8
    ld d, h                                       ; $5627: $54
    ld b, [hl]                                    ; $5628: $46
    dec de                                        ; $5629: $1B
    ld d, [hl]                                    ; $562A: $56

    db $4D, $08, $08, $00, $02, $84, $54

    sbc l                                         ; $5632: $9D
    ld d, h                                       ; $5633: $54
    or [hl]                                       ; $5634: $B6
    ld d, h                                       ; $5635: $54
    sbc l                                         ; $5636: $9D
    ld d, h                                       ; $5637: $54
    ld b, [hl]                                    ; $5638: $46
    dec hl                                        ; $5639: $2B
    ld d, [hl]                                    ; $563A: $56

    db $4D, $08, $08, $FE, $00, $4C, $55

    ld h, l                                       ; $5642: $65
    ld d, l                                       ; $5643: $55
    ld c, h                                       ; $5644: $4C
    ld d, l                                       ; $5645: $55
    ld h, l                                       ; $5646: $65
    ld d, l                                       ; $5647: $55
    ld b, [hl]                                    ; $5648: $46
    dec sp                                        ; $5649: $3B
    ld d, [hl]                                    ; $564A: $56

    db $4D, $08, $08, $02, $00, $1A, $55

    inc sp                                        ; $5652: $33
    ld d, l                                       ; $5653: $55
    ld a, [de]                                    ; $5654: $1A
    ld d, l                                       ; $5655: $55
    inc sp                                        ; $5656: $33
    ld d, l                                       ; $5657: $55
    ld b, [hl]                                    ; $5658: $46
    ld c, e                                       ; $5659: $4B
    ld d, [hl]                                    ; $565A: $56

    db $4C, $FF, $00, $00, $E8, $54

    nop                                           ; $5661: $00
    ld b, [hl]                                    ; $5662: $46
    ld e, e                                       ; $5663: $5B
    ld d, [hl]                                    ; $5664: $56

    db $4C, $FF, $00, $00, $9D, $54, $00, $46, $65, $56, $4C, $FF, $00, $00, $65, $55
    db $00, $46, $6F, $56, $4C, $FF, $00, $00, $33, $55

    nop                                           ; $567F: $00
    ld b, [hl]                                    ; $5680: $46
    ld a, c                                       ; $5681: $79
    ld d, [hl]                                    ; $5682: $56

    db $4C, $FF, $00, $00, $6B, $54

    nop                                           ; $5689: $00
    ld b, [hl]                                    ; $568A: $46
    add e                                         ; $568B: $83
    ld d, [hl]                                    ; $568C: $56

    db $4C, $FF, $00, $00, $52, $54

    nop                                           ; $5693: $00
    ld b, [hl]                                    ; $5694: $46
    adc l                                         ; $5695: $8D
    ld d, [hl]                                    ; $5696: $56

    db $4C, $FF, $00, $00, $39, $54

    nop                                           ; $569D: $00
    ld b, [hl]                                    ; $569E: $46
    sub a                                         ; $569F: $97
    ld d, [hl]                                    ; $56A0: $56

    db $4C, $FF, $00, $00, $20, $54, $00, $46, $A1, $56

    ld c, h                                       ; $56AB: $4C
    rst $38                                       ; $56AC: $FF
    nop                                           ; $56AD: $00
    nop                                           ; $56AE: $00
    cp d                                          ; $56AF: $BA
    ld d, l                                       ; $56B0: $55
    nop                                           ; $56B1: $00
    ld b, [hl]                                    ; $56B2: $46
    xor e                                         ; $56B3: $AB
    ld d, [hl]                                    ; $56B4: $56
    ld c, h                                       ; $56B5: $4C
    rst $38                                       ; $56B6: $FF
    nop                                           ; $56B7: $00
    nop                                           ; $56B8: $00
    sbc c                                         ; $56B9: $99
    ld d, l                                       ; $56BA: $55
    nop                                           ; $56BB: $00
    ld b, [hl]                                    ; $56BC: $46
    or l                                          ; $56BD: $B5
    ld d, [hl]                                    ; $56BE: $56
    ld c, h                                       ; $56BF: $4C
    ld bc, $0000                                  ; $56C0: $01 $00 $00
    add hl, sp                                    ; $56C3: $39
    ld d, h                                       ; $56C4: $54
    nop                                           ; $56C5: $00
    ld c, b                                       ; $56C6: $48
    ld b, [hl]                                    ; $56C7: $46
    cp a                                          ; $56C8: $BF
    ld d, [hl]                                    ; $56C9: $56
    ld c, h                                       ; $56CA: $4C
    ld [bc], a                                    ; $56CB: $02
    rst $38                                       ; $56CC: $FF
    rst $38                                       ; $56CD: $FF
    add sp, $54                                   ; $56CE: $E8 $54
    ld [bc], a                                    ; $56D0: $02
    rst $38                                       ; $56D1: $FF
    rst $38                                       ; $56D2: $FF
    add hl, sp                                    ; $56D3: $39
    ld d, h                                       ; $56D4: $54
    ld [bc], a                                    ; $56D5: $02
    rst $38                                       ; $56D6: $FF
    rst $38                                       ; $56D7: $FF
    sbc l                                         ; $56D8: $9D
    ld d, h                                       ; $56D9: $54
    ld [bc], a                                    ; $56DA: $02
    rst $38                                       ; $56DB: $FF
    rst $38                                       ; $56DC: $FF
    jr nz, jr_00F_5733                            ; $56DD: $20 $54

    nop                                           ; $56DF: $00
    ld b, [hl]                                    ; $56E0: $46
    jp z, Jump_00F_4C56                           ; $56E1: $CA $56 $4C

    ld [bc], a                                    ; $56E4: $02
    rst $38                                       ; $56E5: $FF
    ld [bc], a                                    ; $56E6: $02
    add sp, $54                                   ; $56E7: $E8 $54
    ld [bc], a                                    ; $56E9: $02
    rst $38                                       ; $56EA: $FF
    ld [bc], a                                    ; $56EB: $02
    add hl, sp                                    ; $56EC: $39
    ld d, h                                       ; $56ED: $54
    ld [bc], a                                    ; $56EE: $02
    rst $38                                       ; $56EF: $FF
    ld [bc], a                                    ; $56F0: $02
    sbc l                                         ; $56F1: $9D
    ld d, h                                       ; $56F2: $54
    ld [bc], a                                    ; $56F3: $02
    rst $38                                       ; $56F4: $FF
    ld [bc], a                                    ; $56F5: $02
    jr nz, @+$56                                  ; $56F6: $20 $54

    nop                                           ; $56F8: $00
    ld b, [hl]                                    ; $56F9: $46
    db $E3                                        ; $56FA: $E3
    ld d, [hl]                                    ; $56FB: $56
    ld c, h                                       ; $56FC: $4C
    rst $38                                       ; $56FD: $FF
    nop                                           ; $56FE: $00
    nop                                           ; $56FF: $00
    ld a, [hl]                                    ; $5700: $7E
    ld d, l                                       ; $5701: $55
    nop                                           ; $5702: $00
    ld b, [hl]                                    ; $5703: $46
    db $FC                                        ; $5704: $FC
    ld d, [hl]                                    ; $5705: $56
    ld c, h                                       ; $5706: $4C
    rst $38                                       ; $5707: $FF
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    add a                                         ; $570A: $87
    ld d, l                                       ; $570B: $55
    nop                                           ; $570C: $00
    ld b, [hl]                                    ; $570D: $46
    ld b, $57                                     ; $570E: $06 $57
    ld c, h                                       ; $5710: $4C
    rst $38                                       ; $5711: $FF
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    sub b                                         ; $5714: $90
    ld d, l                                       ; $5715: $55
    nop                                           ; $5716: $00
    ld b, [hl]                                    ; $5717: $46
    db $10                                        ; $5718: $10
    ld d, a                                       ; $5719: $57
    ld c, e                                       ; $571A: $4B
    inc bc                                        ; $571B: $03
    rrca                                          ; $571C: $0F
    nop                                           ; $571D: $00
    nop                                           ; $571E: $00
    ld sp, $0F57                                  ; $571F: $31 $57 $0F
    inc bc                                        ; $5722: $03
    nop                                           ; $5723: $00
    jr c, @+$59                                   ; $5724: $38 $57

    rrca                                          ; $5726: $0F
    ld [bc], a                                    ; $5727: $02
    nop                                           ; $5728: $00
    ld b, [hl]                                    ; $5729: $46
    ld d, a                                       ; $572A: $57
    rrca                                          ; $572B: $0F
    ld bc, $3F00                                  ; $572C: $01 $00 $3F
    ld d, a                                       ; $572F: $57
    rst $38                                       ; $5730: $FF

jr_00F_5731:
    inc d                                         ; $5731: $14
    rrca                                          ; $5732: $0F

jr_00F_5733:
    ld e, e                                       ; $5733: $5B
    ld d, [hl]                                    ; $5734: $56
    ld h, d                                       ; $5735: $62
    ld bc, $1412                                  ; $5736: $01 $12 $14
    rrca                                          ; $5739: $0F
    ld h, l                                       ; $573A: $65
    ld d, [hl]                                    ; $573B: $56
    ld h, d                                       ; $573C: $62
    ld bc, $1412                                  ; $573D: $01 $12 $14
    rrca                                          ; $5740: $0F
    ld l, a                                       ; $5741: $6F
    ld d, [hl]                                    ; $5742: $56
    ld h, d                                       ; $5743: $62
    ld bc, $1412                                  ; $5744: $01 $12 $14
    rrca                                          ; $5747: $0F
    ld a, c                                       ; $5748: $79
    ld d, [hl]                                    ; $5749: $56
    ld h, d                                       ; $574A: $62
    ld bc, $0012                                  ; $574B: $01 $12 $00
    nop                                           ; $574E: $00
    dec de                                        ; $574F: $1B
    ld [bc], a                                    ; $5750: $02
    nop                                           ; $5751: $00
    ld hl, sp+$1A                                 ; $5752: $F8 $1A
    ld [bc], a                                    ; $5754: $02
    ldh a, [rP1]                                  ; $5755: $F0 $00
    ld bc, $F000                                  ; $5757: $01 $00 $F0
    ld hl, sp+$00                                 ; $575A: $F8 $00
    nop                                           ; $575C: $00
    ld hl, sp+$00                                 ; $575D: $F8 $00
    add hl, bc                                    ; $575F: $09
    nop                                           ; $5760: $00
    ld hl, sp-$08                                 ; $5761: $F8 $F8
    ld [$8000], sp                                ; $5763: $08 $00 $80
    nop                                           ; $5766: $00
    ld hl, sp+$1B                                 ; $5767: $F8 $1B
    ld [hl+], a                                   ; $5769: $22
    nop                                           ; $576A: $00
    nop                                           ; $576B: $00
    ld a, [de]                                    ; $576C: $1A
    ld [hl+], a                                   ; $576D: $22
    ldh a, [$F8]                                  ; $576E: $F0 $F8
    ld bc, $F020                                  ; $5770: $01 $20 $F0

jr_00F_5773:
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    jr nz, @-$06                                  ; $5775: $20 $F8

    ld hl, sp+$09                                 ; $5777: $F8 $09
    jr nz, jr_00F_5773                            ; $5779: $20 $F8

    nop                                           ; $577B: $00

jr_00F_577C:
    ld [$8020], sp                                ; $577C: $08 $20 $80
    nop                                           ; $577F: $00
    nop                                           ; $5780: $00
    rra                                           ; $5781: $1F
    ld [bc], a                                    ; $5782: $02
    nop                                           ; $5783: $00
    ld hl, sp+$1E                                 ; $5784: $F8 $1E
    ld [bc], a                                    ; $5786: $02
    ld hl, sp+$00                                 ; $5787: $F8 $00
    dec bc                                        ; $5789: $0B
    nop                                           ; $578A: $00
    ld hl, sp-$08                                 ; $578B: $F8 $F8
    ld a, [bc]                                    ; $578D: $0A
    nop                                           ; $578E: $00
    ldh a, [rP1]                                  ; $578F: $F0 $00
    ld b, $00                                     ; $5791: $06 $00
    ldh a, [$F8]                                  ; $5793: $F0 $F8
    dec b                                         ; $5795: $05
    nop                                           ; $5796: $00
    add b                                         ; $5797: $80
    nop                                           ; $5798: $00

jr_00F_5799:
    ld hl, sp+$1F                                 ; $5799: $F8 $1F
    ld [hl+], a                                   ; $579B: $22
    nop                                           ; $579C: $00

jr_00F_579D:
    nop                                           ; $579D: $00
    ld e, $22                                     ; $579E: $1E $22
    ld hl, sp-$08                                 ; $57A0: $F8 $F8
    dec bc                                        ; $57A2: $0B
    jr nz, jr_00F_579D                            ; $57A3: $20 $F8

    nop                                           ; $57A5: $00
    ld a, [bc]                                    ; $57A6: $0A

jr_00F_57A7:
    jr nz, jr_00F_5799                            ; $57A7: $20 $F0

    ld hl, sp+$06                                 ; $57A9: $F8 $06
    jr nz, jr_00F_579D                            ; $57AB: $20 $F0

    nop                                           ; $57AD: $00
    dec b                                         ; $57AE: $05
    jr nz, jr_00F_5731                            ; $57AF: $20 $80

    pop af                                        ; $57B1: $F1
    ld sp, hl                                     ; $57B2: $F9
    ld [bc], a                                    ; $57B3: $02
    jr nz, jr_00F_57A7                            ; $57B4: $20 $F1

    rst $38                                       ; $57B6: $FF
    ld [bc], a                                    ; $57B7: $02
    nop                                           ; $57B8: $00
    ld hl, sp+$00                                 ; $57B9: $F8 $00
    dec c                                         ; $57BB: $0D
    nop                                           ; $57BC: $00
    ld hl, sp-$08                                 ; $57BD: $F8 $F8
    inc c                                         ; $57BF: $0C
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    ld hl, $0002                                  ; $57C3: $21 $02 $00
    ld hl, sp+$20                                 ; $57C6: $F8 $20
    ld [bc], a                                    ; $57C8: $02
    add b                                         ; $57C9: $80

    db $F8, $00, $10, $20, $00, $F9, $1C, $22, $00, $00, $1C, $02, $F8, $F8, $10, $00
    db $F0, $F9, $02, $20, $F0, $FF, $02, $00, $80

    nop                                           ; $57E3: $00
    ld hl, sp+$21                                 ; $57E4: $F8 $21
    ld [hl+], a                                   ; $57E6: $22
    nop                                           ; $57E7: $00
    nop                                           ; $57E8: $00
    jr nz, jr_00F_580D                            ; $57E9: $20 $22

    pop af                                        ; $57EB: $F1

jr_00F_57EC:
    rst $38                                       ; $57EC: $FF
    ld [bc], a                                    ; $57ED: $02
    nop                                           ; $57EE: $00
    pop af                                        ; $57EF: $F1

jr_00F_57F0:
    ld sp, hl                                     ; $57F0: $F9
    ld [bc], a                                    ; $57F1: $02
    jr nz, jr_00F_57EC                            ; $57F2: $20 $F8

    ld hl, sp+$0D                                 ; $57F4: $F8 $0D
    jr nz, jr_00F_57F0                            ; $57F6: $20 $F8

    nop                                           ; $57F8: $00
    inc c                                         ; $57F9: $0C
    jr nz, jr_00F_577C                            ; $57FA: $20 $80

    nop                                           ; $57FC: $00
    nop                                           ; $57FD: $00
    inc hl                                        ; $57FE: $23
    ld [bc], a                                    ; $57FF: $02
    nop                                           ; $5800: $00
    ld hl, sp+$22                                 ; $5801: $F8 $22
    ld [bc], a                                    ; $5803: $02
    ld hl, sp+$00                                 ; $5804: $F8 $00
    rrca                                          ; $5806: $0F
    nop                                           ; $5807: $00
    ld hl, sp-$08                                 ; $5808: $F8 $F8
    ld c, $00                                     ; $580A: $0E $00
    pop af                                        ; $580C: $F1

jr_00F_580D:
    nop                                           ; $580D: $00
    inc b                                         ; $580E: $04
    nop                                           ; $580F: $00
    pop af                                        ; $5810: $F1
    ld hl, sp+$03                                 ; $5811: $F8 $03
    nop                                           ; $5813: $00
    add b                                         ; $5814: $80
    nop                                           ; $5815: $00
    ld sp, hl                                     ; $5816: $F9
    dec e                                         ; $5817: $1D
    ld [hl+], a                                   ; $5818: $22
    nop                                           ; $5819: $00

jr_00F_581A:
    nop                                           ; $581A: $00
    dec e                                         ; $581B: $1D
    ld [bc], a                                    ; $581C: $02
    ld hl, sp-$07                                 ; $581D: $F8 $F9
    rlca                                          ; $581F: $07
    jr nz, jr_00F_581A                            ; $5820: $20 $F8

    nop                                           ; $5822: $00
    rlca                                          ; $5823: $07
    nop                                           ; $5824: $00
    ldh a, [rP1]                                  ; $5825: $F0 $00

jr_00F_5827:
    inc b                                         ; $5827: $04
    nop                                           ; $5828: $00
    ldh a, [$F8]                                  ; $5829: $F0 $F8

jr_00F_582B:
    inc bc                                        ; $582B: $03
    nop                                           ; $582C: $00
    add b                                         ; $582D: $80
    ld hl, sp-$07                                 ; $582E: $F8 $F9
    rrca                                          ; $5830: $0F
    jr nz, jr_00F_582B                            ; $5831: $20 $F8

    ld bc, $200E                                  ; $5833: $01 $0E $20
    nop                                           ; $5836: $00
    ld hl, sp+$23                                 ; $5837: $F8 $23
    ld [hl+], a                                   ; $5839: $22
    nop                                           ; $583A: $00
    nop                                           ; $583B: $00
    ld [hl+], a                                   ; $583C: $22
    ld [hl+], a                                   ; $583D: $22
    pop af                                        ; $583E: $F1
    nop                                           ; $583F: $00
    inc b                                         ; $5840: $04
    nop                                           ; $5841: $00
    pop af                                        ; $5842: $F1
    ld hl, sp+$03                                 ; $5843: $F8 $03
    nop                                           ; $5845: $00
    add b                                         ; $5846: $80
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    add hl, hl                                    ; $5849: $29
    ld [bc], a                                    ; $584A: $02
    nop                                           ; $584B: $00
    ld hl, sp+$28                                 ; $584C: $F8 $28
    ld [bc], a                                    ; $584E: $02
    ld hl, sp+$00                                 ; $584F: $F8 $00
    rla                                           ; $5851: $17
    nop                                           ; $5852: $00
    ld hl, sp-$08                                 ; $5853: $F8 $F8

jr_00F_5855:
    ld d, $00                                     ; $5855: $16 $00
    ldh a, [rP1]                                  ; $5857: $F0 $00
    inc d                                         ; $5859: $14
    nop                                           ; $585A: $00
    ldh a, [$F8]                                  ; $585B: $F0 $F8
    inc de                                        ; $585D: $13
    nop                                           ; $585E: $00
    add b                                         ; $585F: $80
    ld hl, sp-$04                                 ; $5860: $F8 $FC
    dec d                                         ; $5862: $15
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    daa                                           ; $5866: $27
    ld [bc], a                                    ; $5867: $02
    nop                                           ; $5868: $00
    ld hl, sp+$26                                 ; $5869: $F8 $26
    ld [bc], a                                    ; $586B: $02
    ldh a, [rP1]                                  ; $586C: $F0 $00
    ld [de], a                                    ; $586E: $12
    nop                                           ; $586F: $00
    ldh a, [$F8]                                  ; $5870: $F0 $F8
    ld de, $8000                                  ; $5872: $11 $00 $80
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    dec h                                         ; $5877: $25
    ld [bc], a                                    ; $5878: $02
    nop                                           ; $5879: $00
    ld hl, sp+$24                                 ; $587A: $F8 $24
    ld [bc], a                                    ; $587C: $02
    ld hl, sp+$00                                 ; $587D: $F8 $00
    add hl, de                                    ; $587F: $19
    nop                                           ; $5880: $00
    ld hl, sp-$08                                 ; $5881: $F8 $F8
    jr jr_00F_5885                                ; $5883: $18 $00

jr_00F_5885:
    ldh a, [rP1]                                  ; $5885: $F0 $00
    inc d                                         ; $5887: $14
    nop                                           ; $5888: $00
    ldh a, [$F8]                                  ; $5889: $F0 $F8
    inc de                                        ; $588B: $13
    nop                                           ; $588C: $00
    add b                                         ; $588D: $80
    nop                                           ; $588E: $00
    ld hl, sp+$29                                 ; $588F: $F8 $29
    ld [hl+], a                                   ; $5891: $22
    nop                                           ; $5892: $00

jr_00F_5893:
    nop                                           ; $5893: $00
    jr z, jr_00F_58B8                             ; $5894: $28 $22

    ld hl, sp-$08                                 ; $5896: $F8 $F8
    rla                                           ; $5898: $17
    jr nz, jr_00F_5893                            ; $5899: $20 $F8

    nop                                           ; $589B: $00
    ld d, $20                                     ; $589C: $16 $20
    ldh a, [$F8]                                  ; $589E: $F0 $F8
    inc d                                         ; $58A0: $14
    jr nz, jr_00F_5893                            ; $58A1: $20 $F0

    nop                                           ; $58A3: $00
    inc de                                        ; $58A4: $13
    jr nz, jr_00F_5827                            ; $58A5: $20 $80

    ld hl, sp-$04                                 ; $58A7: $F8 $FC
    dec d                                         ; $58A9: $15
    jr nz, jr_00F_58AC                            ; $58AA: $20 $00

jr_00F_58AC:
    ld hl, sp+$27                                 ; $58AC: $F8 $27
    ld [hl+], a                                   ; $58AE: $22
    nop                                           ; $58AF: $00
    nop                                           ; $58B0: $00
    ld h, $22                                     ; $58B1: $26 $22
    ldh a, [$F8]                                  ; $58B3: $F0 $F8
    ld [de], a                                    ; $58B5: $12
    jr nz, @-$0E                                  ; $58B6: $20 $F0

jr_00F_58B8:
    nop                                           ; $58B8: $00
    ld de, $8020                                  ; $58B9: $11 $20 $80
    nop                                           ; $58BC: $00
    ld hl, sp+$25                                 ; $58BD: $F8 $25
    ld [hl+], a                                   ; $58BF: $22
    nop                                           ; $58C0: $00

jr_00F_58C1:
    nop                                           ; $58C1: $00
    inc h                                         ; $58C2: $24
    ld [hl+], a                                   ; $58C3: $22
    ld hl, sp-$08                                 ; $58C4: $F8 $F8
    add hl, de                                    ; $58C6: $19
    jr nz, jr_00F_58C1                            ; $58C7: $20 $F8

    nop                                           ; $58C9: $00
    jr jr_00F_58EC                                ; $58CA: $18 $20

    ldh a, [$F8]                                  ; $58CC: $F0 $F8
    inc d                                         ; $58CE: $14
    jr nz, jr_00F_58C1                            ; $58CF: $20 $F0

    nop                                           ; $58D1: $00
    inc de                                        ; $58D2: $13
    jr nz, jr_00F_5855                            ; $58D3: $20 $80

    ld c, l                                       ; $58D5: $4D
    ld [$0008], sp                                ; $58D6: $08 $08 $00
    rst $38                                       ; $58D9: $FF
    db $FC                                        ; $58DA: $FC
    ld d, a                                       ; $58DB: $57
    dec d                                         ; $58DC: $15
    ld e, b                                       ; $58DD: $58
    ld l, $58                                     ; $58DE: $2E $58
    dec d                                         ; $58E0: $15
    ld e, b                                       ; $58E1: $58
    ld b, [hl]                                    ; $58E2: $46
    push de                                       ; $58E3: $D5
    ld e, b                                       ; $58E4: $58
    ld c, l                                       ; $58E5: $4D
    ld [$0008], sp                                ; $58E6: $08 $08 $00
    ld bc, $57B1                                  ; $58E9: $01 $B1 $57

jr_00F_58EC:
    jp z, $E357                                   ; $58EC: $CA $57 $E3

    ld d, a                                       ; $58EF: $57
    jp z, Jump_00F_4657                           ; $58F0: $CA $57 $46

    push hl                                       ; $58F3: $E5
    ld e, b                                       ; $58F4: $58
    ld c, l                                       ; $58F5: $4D
    ld [$FF08], sp                                ; $58F6: $08 $08 $FF
    nop                                           ; $58F9: $00
    adc [hl]                                      ; $58FA: $8E
    ld e, b                                       ; $58FB: $58
    and a                                         ; $58FC: $A7
    ld e, b                                       ; $58FD: $58
    cp h                                          ; $58FE: $BC
    ld e, b                                       ; $58FF: $58
    and a                                         ; $5900: $A7
    ld e, b                                       ; $5901: $58
    ld b, [hl]                                    ; $5902: $46
    push af                                       ; $5903: $F5
    ld e, b                                       ; $5904: $58
    ld c, l                                       ; $5905: $4D
    ld [$0108], sp                                ; $5906: $08 $08 $01
    nop                                           ; $5909: $00
    ld b, a                                       ; $590A: $47
    ld e, b                                       ; $590B: $58
    ld h, b                                       ; $590C: $60
    ld e, b                                       ; $590D: $58
    ld [hl], l                                    ; $590E: $75
    ld e, b                                       ; $590F: $58
    ld h, b                                       ; $5910: $60
    ld e, b                                       ; $5911: $58
    ld b, [hl]                                    ; $5912: $46
    dec b                                         ; $5913: $05
    ld e, c                                       ; $5914: $59
    ld c, l                                       ; $5915: $4D
    ld [$0008], sp                                ; $5916: $08 $08 $00
    cp $FC                                        ; $5919: $FE $FC
    ld d, a                                       ; $591B: $57
    dec d                                         ; $591C: $15
    ld e, b                                       ; $591D: $58
    ld l, $58                                     ; $591E: $2E $58
    dec d                                         ; $5920: $15
    ld e, b                                       ; $5921: $58
    ld b, [hl]                                    ; $5922: $46
    dec d                                         ; $5923: $15
    ld e, c                                       ; $5924: $59
    ld c, l                                       ; $5925: $4D
    ld [$0008], sp                                ; $5926: $08 $08 $00
    ld [bc], a                                    ; $5929: $02
    or c                                          ; $592A: $B1
    ld d, a                                       ; $592B: $57
    jp z, $E357                                   ; $592C: $CA $57 $E3

    ld d, a                                       ; $592F: $57
    jp z, Jump_00F_4657                           ; $5930: $CA $57 $46

    dec h                                         ; $5933: $25
    ld e, c                                       ; $5934: $59
    ld c, l                                       ; $5935: $4D
    ld [$FE08], sp                                ; $5936: $08 $08 $FE
    nop                                           ; $5939: $00
    adc [hl]                                      ; $593A: $8E
    ld e, b                                       ; $593B: $58
    and a                                         ; $593C: $A7
    ld e, b                                       ; $593D: $58
    cp h                                          ; $593E: $BC
    ld e, b                                       ; $593F: $58
    and a                                         ; $5940: $A7
    ld e, b                                       ; $5941: $58
    ld b, [hl]                                    ; $5942: $46
    dec [hl]                                      ; $5943: $35
    ld e, c                                       ; $5944: $59
    ld c, l                                       ; $5945: $4D
    ld [$0208], sp                                ; $5946: $08 $08 $02
    nop                                           ; $5949: $00
    ld b, a                                       ; $594A: $47
    ld e, b                                       ; $594B: $58
    ld h, b                                       ; $594C: $60
    ld e, b                                       ; $594D: $58
    ld [hl], l                                    ; $594E: $75
    ld e, b                                       ; $594F: $58
    ld h, b                                       ; $5950: $60
    ld e, b                                       ; $5951: $58
    ld b, [hl]                                    ; $5952: $46
    ld b, l                                       ; $5953: $45
    ld e, c                                       ; $5954: $59
    ld c, h                                       ; $5955: $4C
    rst $38                                       ; $5956: $FF
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    dec d                                         ; $5959: $15
    ld e, b                                       ; $595A: $58
    nop                                           ; $595B: $00
    ld b, [hl]                                    ; $595C: $46
    ld d, l                                       ; $595D: $55
    ld e, c                                       ; $595E: $59

    db $4C, $FF, $00, $00, $CA, $57, $00, $46, $5F, $59

    ld c, h                                       ; $5969: $4C
    rst $38                                       ; $596A: $FF
    nop                                           ; $596B: $00
    nop                                           ; $596C: $00
    and a                                         ; $596D: $A7
    ld e, b                                       ; $596E: $58
    nop                                           ; $596F: $00
    ld b, [hl]                                    ; $5970: $46
    ld l, c                                       ; $5971: $69
    ld e, c                                       ; $5972: $59
    ld c, h                                       ; $5973: $4C
    rst $38                                       ; $5974: $FF
    nop                                           ; $5975: $00
    nop                                           ; $5976: $00
    ld h, b                                       ; $5977: $60
    ld e, b                                       ; $5978: $58
    nop                                           ; $5979: $00
    ld b, [hl]                                    ; $597A: $46
    ld [hl], e                                    ; $597B: $73
    ld e, c                                       ; $597C: $59
    ld c, h                                       ; $597D: $4C
    rst $38                                       ; $597E: $FF
    nop                                           ; $597F: $00
    nop                                           ; $5980: $00
    sbc b                                         ; $5981: $98
    ld d, a                                       ; $5982: $57
    nop                                           ; $5983: $00
    ld b, [hl]                                    ; $5984: $46
    ld a, l                                       ; $5985: $7D
    ld e, c                                       ; $5986: $59
    ld c, h                                       ; $5987: $4C
    rst $38                                       ; $5988: $FF
    nop                                           ; $5989: $00

jr_00F_598A:
    nop                                           ; $598A: $00
    ld a, a                                       ; $598B: $7F
    ld d, a                                       ; $598C: $57
    nop                                           ; $598D: $00
    ld b, [hl]                                    ; $598E: $46
    add a                                         ; $598F: $87
    ld e, c                                       ; $5990: $59
    ld c, h                                       ; $5991: $4C
    rst $38                                       ; $5992: $FF
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    ld h, [hl]                                    ; $5995: $66
    ld d, a                                       ; $5996: $57
    nop                                           ; $5997: $00
    ld b, [hl]                                    ; $5998: $46
    sub c                                         ; $5999: $91
    ld e, c                                       ; $599A: $59
    ld c, h                                       ; $599B: $4C
    rst $38                                       ; $599C: $FF
    nop                                           ; $599D: $00
    nop                                           ; $599E: $00
    ld c, l                                       ; $599F: $4D
    ld d, a                                       ; $59A0: $57
    nop                                           ; $59A1: $00
    ld b, [hl]                                    ; $59A2: $46
    sbc e                                         ; $59A3: $9B
    ld e, c                                       ; $59A4: $59

    db $4B, $03, $0F, $00

    nop                                           ; $59A9: $00
    cp h                                          ; $59AA: $BC
    ld e, c                                       ; $59AB: $59

    db $0F, $03, $00, $C3, $59

    rrca                                          ; $59B1: $0F
    ld [bc], a                                    ; $59B2: $02
    nop                                           ; $59B3: $00
    pop de                                        ; $59B4: $D1
    ld e, c                                       ; $59B5: $59
    rrca                                          ; $59B6: $0F
    ld bc, $CA00                                  ; $59B7: $01 $00 $CA
    ld e, c                                       ; $59BA: $59
    rst $38                                       ; $59BB: $FF
    inc d                                         ; $59BC: $14
    rrca                                          ; $59BD: $0F
    ld d, l                                       ; $59BE: $55
    ld e, c                                       ; $59BF: $59
    ld h, d                                       ; $59C0: $62
    db $01                                        ; $59C1: $01
    ld [de], a                                    ; $59C2: $12

    db $14, $0F, $5F, $59, $62, $01, $12

    inc d                                         ; $59CA: $14
    rrca                                          ; $59CB: $0F
    ld l, c                                       ; $59CC: $69
    ld e, c                                       ; $59CD: $59
    ld h, d                                       ; $59CE: $62
    ld bc, $1412                                  ; $59CF: $01 $12 $14
    rrca                                          ; $59D2: $0F
    ld [hl], e                                    ; $59D3: $73
    ld e, c                                       ; $59D4: $59
    ld h, d                                       ; $59D5: $62
    ld bc, $0012                                  ; $59D6: $01 $12 $00
    nop                                           ; $59D9: $00
    inc d                                         ; $59DA: $14
    rlca                                          ; $59DB: $07
    nop                                           ; $59DC: $00
    ld hl, sp+$13                                 ; $59DD: $F8 $13
    rlca                                          ; $59DF: $07
    ld hl, sp+$00                                 ; $59E0: $F8 $00
    dec bc                                        ; $59E2: $0B
    nop                                           ; $59E3: $00
    ld hl, sp-$08                                 ; $59E4: $F8 $F8
    ld a, [bc]                                    ; $59E6: $0A
    nop                                           ; $59E7: $00
    ldh a, [rP1]                                  ; $59E8: $F0 $00
    ld bc, $F000                                  ; $59EA: $01 $00 $F0
    ld hl, sp+$00                                 ; $59ED: $F8 $00
    nop                                           ; $59EF: $00
    add b                                         ; $59F0: $80
    nop                                           ; $59F1: $00

jr_00F_59F2:
    ld hl, sp+$14                                 ; $59F2: $F8 $14
    daa                                           ; $59F4: $27
    nop                                           ; $59F5: $00

jr_00F_59F6:
    nop                                           ; $59F6: $00
    inc de                                        ; $59F7: $13
    daa                                           ; $59F8: $27
    ld hl, sp-$08                                 ; $59F9: $F8 $F8
    dec bc                                        ; $59FB: $0B
    jr nz, jr_00F_59F6                            ; $59FC: $20 $F8

    nop                                           ; $59FE: $00
    ld a, [bc]                                    ; $59FF: $0A
    jr nz, jr_00F_59F2                            ; $5A00: $20 $F0

    ld hl, sp+$01                                 ; $5A02: $F8 $01
    jr nz, jr_00F_59F6                            ; $5A04: $20 $F0

    nop                                           ; $5A06: $00
    nop                                           ; $5A07: $00
    jr nz, jr_00F_598A                            ; $5A08: $20 $80

    ld hl, sp-$04                                 ; $5A0A: $F8 $FC
    stop                                          ; $5A0C: $10 $00
    nop                                           ; $5A0E: $00
    db $FD                                        ; $5A0F: $FD
    rla                                           ; $5A10: $17
    rlca                                          ; $5A11: $07
    ldh a, [rP1]                                  ; $5A12: $F0 $00
    rlca                                          ; $5A14: $07
    nop                                           ; $5A15: $00
    ldh a, [$F8]                                  ; $5A16: $F0 $F8

jr_00F_5A18:
    ld b, $00                                     ; $5A18: $06 $00
    add b                                         ; $5A1A: $80
    ld hl, sp-$04                                 ; $5A1B: $F8 $FC
    db $10                                        ; $5A1D: $10
    jr nz, jr_00F_5A20                            ; $5A1E: $20 $00

jr_00F_5A20:
    ei                                            ; $5A20: $FB
    rla                                           ; $5A21: $17
    daa                                           ; $5A22: $27
    ldh a, [$F8]                                  ; $5A23: $F0 $F8
    rlca                                          ; $5A25: $07
    jr nz, jr_00F_5A18                            ; $5A26: $20 $F0

    nop                                           ; $5A28: $00
    ld b, $20                                     ; $5A29: $06 $20
    add b                                         ; $5A2B: $80

    db $00, $FC, $18, $07, $F8, $00, $0F, $00, $F8, $F8, $0E, $00, $F1, $00, $03, $00
    db $F1, $F8, $02, $00, $80, $F8, $F8, $0C, $20, $F8, $00, $0C, $00, $00, $F9, $15
    db $27, $00, $00, $15, $07, $F0, $00, $03, $00, $F0, $F8, $02, $00, $80, $00, $FC
    db $18, $27, $F8, $F8, $0F, $20, $F8, $00, $0E, $20, $F1, $00, $03, $00, $F1, $F8
    db $02, $00, $80, $00, $FC, $19, $07, $F8, $00, $12, $00, $F8, $F8, $11, $00, $F1
    db $00, $05, $00, $F1, $F8, $04, $00, $80, $00, $F9, $16, $27, $00, $00, $16, $07
    db $F8, $F8, $0D, $20, $F8, $00, $0D, $00, $F0, $00, $05, $00, $F0, $F8, $04, $00
    db $80, $00, $FC, $19, $27, $F8, $F8, $12, $20, $F8, $00, $11, $20, $F1, $00, $05
    db $00, $F1, $F8, $04, $00, $80, $00, $00, $21, $07, $00, $F8, $20, $07, $F8, $00
    db $1B, $00, $F8, $F8, $1A, $00, $F1, $00, $09, $00, $F1, $F8, $08, $00, $80, $00
    db $FD, $22, $07, $F8, $00, $1D, $00, $F8, $F8, $1C, $00, $F0, $00, $09, $00, $F0
    db $F8, $08, $00, $80, $00, $00, $24, $07, $00, $F8, $23, $07, $F8, $00, $1F, $00
    db $F8, $F8, $1E, $00, $F1, $00, $09, $00, $F1, $F8, $08, $00, $80, $00, $F8, $21
    db $27, $00, $00, $20, $27, $F8, $F8, $1B, $20, $F8, $00, $1A, $20, $F1, $F8, $09
    db $20, $F1, $00, $08, $20, $80, $00, $FB, $22, $27, $F8, $F8, $1D, $20, $F8, $00
    db $1C, $20, $F0, $F8, $09, $20, $F0, $00, $08, $20, $80, $00, $F8, $24, $27, $00
    db $00, $23, $27, $F8, $F8, $1F, $20, $F8, $00, $1E, $20, $F1, $F8, $09, $20, $F1
    db $00, $08, $20, $80, $00, $F9, $4A, $27, $00, $00, $4A, $07, $F8, $00, $3B, $00
    db $F8, $F8, $3A, $00, $F0, $00, $31, $00, $F0, $F8, $30, $00, $80, $F8, $00, $4E
    db $00, $F8, $F8, $4D, $00, $00, $F9, $4A, $27, $00, $00, $4A, $07, $F0, $00, $31
    db $00, $F0, $F8, $30, $00, $80, $00, $00, $4A, $07, $00, $F9, $4A, $27, $F8, $00
    db $3D, $00, $F8, $F8, $3C, $00, $F0, $01, $35, $00, $F0, $F9, $34, $00, $80, $00
    db $00, $4C, $07, $00, $F8, $4B, $07, $F8, $00, $3F, $00, $F8, $F8, $3E, $00, $F1
    db $01, $35, $00, $F1, $F9, $34, $00, $80, $00, $00, $4C, $07, $00, $F8, $4B, $07
    db $F8, $00, $41, $00, $F8, $F8, $40, $00, $F0, $00, $35, $00, $F0, $F8, $34, $00
    db $80, $00, $00, $4C, $07, $00, $F8, $4B, $07, $F8, $F8, $40, $00, $F8, $00, $42
    db $00, $F0, $00, $35, $00, $F0, $F8, $34, $00, $80, $F0, $00, $36, $00, $F8, $08
    db $45, $00, $F8, $00, $44, $03, $F8, $F8, $43, $00, $00, $00, $4C, $07, $00, $F8
    db $4B, $07, $F0, $F8, $34, $00, $80, $00, $00, $4C, $07, $00, $F8, $4B, $07, $F0
    db $00, $38, $00, $F0, $F8, $37, $00, $F8, $08, $45, $00, $F8, $00, $47, $03, $F8
    db $F8, $46, $00, $80, $F8, $F8, $46, $00, $F0, $F8, $37, $00, $F0, $00, $39, $00
    db $F8, $08, $49, $03, $F8, $00, $48, $03, $00, $00, $4C, $07, $00, $F8, $4B, $07
    db $80, $4D, $08, $08, $00, $FF, $6F, $5A, $84, $5A, $9D, $5A, $84, $5A, $46, $2D
    db $5C, $4D, $08, $08, $00, $01, $2C, $5A, $41, $5A, $5A, $5A, $41, $5A, $46, $3D
    db $5C, $4D, $08, $08, $FF, $00, $F9, $5A, $12, $5B, $27, $5B

    ld [de], a                                    ; $5C58: $12
    ld e, e                                       ; $5C59: $5B
    ld b, [hl]                                    ; $5C5A: $46
    ld c, l                                       ; $5C5B: $4D
    ld e, h                                       ; $5C5C: $5C

    db $4D, $08, $08, $01, $00, $B2, $5A, $CB, $5A, $E0, $5A

    bit 3, d                                      ; $5C68: $CB $5A
    ld b, [hl]                                    ; $5C6A: $46
    ld e, l                                       ; $5C6B: $5D
    ld e, h                                       ; $5C6C: $5C
    ld c, l                                       ; $5C6D: $4D
    ld [$0008], sp                                ; $5C6E: $08 $08 $00
    cp $6F                                        ; $5C71: $FE $6F
    ld e, d                                       ; $5C73: $5A
    add h                                         ; $5C74: $84
    ld e, d                                       ; $5C75: $5A
    sbc l                                         ; $5C76: $9D
    ld e, d                                       ; $5C77: $5A
    add h                                         ; $5C78: $84
    ld e, d                                       ; $5C79: $5A
    ld b, [hl]                                    ; $5C7A: $46
    ld l, l                                       ; $5C7B: $6D
    ld e, h                                       ; $5C7C: $5C
    ld c, l                                       ; $5C7D: $4D
    ld [$0008], sp                                ; $5C7E: $08 $08 $00
    ld [bc], a                                    ; $5C81: $02
    inc l                                         ; $5C82: $2C
    ld e, d                                       ; $5C83: $5A
    ld b, c                                       ; $5C84: $41
    ld e, d                                       ; $5C85: $5A
    ld e, d                                       ; $5C86: $5A
    ld e, d                                       ; $5C87: $5A
    ld b, c                                       ; $5C88: $41
    ld e, d                                       ; $5C89: $5A
    ld b, [hl]                                    ; $5C8A: $46
    ld a, l                                       ; $5C8B: $7D
    ld e, h                                       ; $5C8C: $5C
    ld c, l                                       ; $5C8D: $4D
    ld [$FE08], sp                                ; $5C8E: $08 $08 $FE
    nop                                           ; $5C91: $00
    ld sp, hl                                     ; $5C92: $F9
    ld e, d                                       ; $5C93: $5A
    ld [de], a                                    ; $5C94: $12
    ld e, e                                       ; $5C95: $5B
    daa                                           ; $5C96: $27
    ld e, e                                       ; $5C97: $5B
    ld [de], a                                    ; $5C98: $12
    ld e, e                                       ; $5C99: $5B
    ld b, [hl]                                    ; $5C9A: $46
    adc l                                         ; $5C9B: $8D
    ld e, h                                       ; $5C9C: $5C
    ld c, l                                       ; $5C9D: $4D
    ld [$0208], sp                                ; $5C9E: $08 $08 $02
    nop                                           ; $5CA1: $00
    or d                                          ; $5CA2: $B2
    ld e, d                                       ; $5CA3: $5A
    bit 3, d                                      ; $5CA4: $CB $5A
    ldh [$5A], a                                  ; $5CA6: $E0 $5A
    bit 3, d                                      ; $5CA8: $CB $5A
    ld b, [hl]                                    ; $5CAA: $46
    sbc l                                         ; $5CAB: $9D
    ld e, h                                       ; $5CAC: $5C
    ld c, h                                       ; $5CAD: $4C
    rst $38                                       ; $5CAE: $FF
    nop                                           ; $5CAF: $00
    nop                                           ; $5CB0: $00
    add h                                         ; $5CB1: $84
    ld e, d                                       ; $5CB2: $5A
    nop                                           ; $5CB3: $00
    ld b, [hl]                                    ; $5CB4: $46
    xor l                                         ; $5CB5: $AD
    ld e, h                                       ; $5CB6: $5C

    db $4C, $FF, $00, $00, $41, $5A, $00, $46, $B7, $5C

    ld c, h                                       ; $5CC1: $4C
    rst $38                                       ; $5CC2: $FF
    nop                                           ; $5CC3: $00
    nop                                           ; $5CC4: $00
    ld [de], a                                    ; $5CC5: $12
    ld e, e                                       ; $5CC6: $5B
    nop                                           ; $5CC7: $00
    ld b, [hl]                                    ; $5CC8: $46
    pop bc                                        ; $5CC9: $C1
    ld e, h                                       ; $5CCA: $5C
    ld c, h                                       ; $5CCB: $4C
    rst $38                                       ; $5CCC: $FF
    nop                                           ; $5CCD: $00
    nop                                           ; $5CCE: $00
    bit 3, d                                      ; $5CCF: $CB $5A
    nop                                           ; $5CD1: $00
    ld b, [hl]                                    ; $5CD2: $46
    bit 3, h                                      ; $5CD3: $CB $5C
    ld c, h                                       ; $5CD5: $4C
    rst $38                                       ; $5CD6: $FF
    nop                                           ; $5CD7: $00
    nop                                           ; $5CD8: $00
    dec de                                        ; $5CD9: $1B
    ld e, d                                       ; $5CDA: $5A
    nop                                           ; $5CDB: $00
    ld b, [hl]                                    ; $5CDC: $46
    push de                                       ; $5CDD: $D5
    ld e, h                                       ; $5CDE: $5C
    ld c, h                                       ; $5CDF: $4C
    rst $38                                       ; $5CE0: $FF
    nop                                           ; $5CE1: $00
    nop                                           ; $5CE2: $00
    ld a, [bc]                                    ; $5CE3: $0A
    ld e, d                                       ; $5CE4: $5A
    nop                                           ; $5CE5: $00
    ld b, [hl]                                    ; $5CE6: $46
    rst $18                                       ; $5CE7: $DF
    ld e, h                                       ; $5CE8: $5C
    ld c, h                                       ; $5CE9: $4C
    rst $38                                       ; $5CEA: $FF
    nop                                           ; $5CEB: $00
    nop                                           ; $5CEC: $00
    pop af                                        ; $5CED: $F1
    ld e, c                                       ; $5CEE: $59
    nop                                           ; $5CEF: $00
    ld b, [hl]                                    ; $5CF0: $46
    jp hl                                         ; $5CF1: $E9


    ld e, h                                       ; $5CF2: $5C
    ld c, h                                       ; $5CF3: $4C
    rst $38                                       ; $5CF4: $FF
    nop                                           ; $5CF5: $00
    nop                                           ; $5CF6: $00
    ret c                                         ; $5CF7: $D8

    ld e, c                                       ; $5CF8: $59
    nop                                           ; $5CF9: $00
    ld b, [hl]                                    ; $5CFA: $46
    di                                            ; $5CFB: $F3
    ld e, h                                       ; $5CFC: $5C

    db $4C, $08, $00, $00, $59, $5B, $08, $00, $00, $40, $5B, $08, $00, $00, $59, $5B
    db $08, $00, $00, $40, $5B, $10, $00, $00, $59, $5B, $10, $00, $00, $72, $5B, $04
    db $00, $00, $8B, $5B, $08, $00, $00, $A4, $5B, $20, $00, $00, $BD, $5B, $10, $00
    db $00, $D6, $5B, $00, $5A, $0F, $B0, $5D, $4C, $04, $00, $00, $F3, $5B, $04, $00
    db $00, $10, $5C, $04, $00, $00, $F3, $5B, $04, $00, $00, $10, $5C, $04, $00, $00
    db $F3, $5B, $04, $00, $00, $10, $5C, $04, $00, $00, $F3, $5B, $04, $00, $00, $10
    db $5C, $04, $00, $00, $F3, $5B, $04, $00, $00, $10, $5C, $04, $00, $00, $F3, $5B
    db $04, $00, $00, $10, $5C, $04, $00, $00, $F3, $5B, $00, $5A, $0F, $BB, $5D, $4C
    db $04, $00, $00, $D6, $5B, $04, $00, $00, $BD, $5B, $08, $00, $00, $8B, $5B, $00
    db $4C, $10, $00, $00, $40, $5B, $10, $00, $00, $59, $5B, $00, $46, $8D, $5D

    ld c, h                                       ; $5D9C: $4C
    rst $38                                       ; $5D9D: $FF
    nop                                           ; $5D9E: $00
    nop                                           ; $5D9F: $00
    di                                            ; $5DA0: $F3
    ld e, e                                       ; $5DA1: $5B
    nop                                           ; $5DA2: $00
    ld b, [hl]                                    ; $5DA3: $46
    sbc h                                         ; $5DA4: $9C
    ld e, l                                       ; $5DA5: $5D
    ld c, h                                       ; $5DA6: $4C
    rst $38                                       ; $5DA7: $FF
    nop                                           ; $5DA8: $00
    nop                                           ; $5DA9: $00
    ld b, b                                       ; $5DAA: $40
    ld e, e                                       ; $5DAB: $5B
    nop                                           ; $5DAC: $00
    ld b, [hl]                                    ; $5DAD: $46
    and [hl]                                      ; $5DAE: $A6
    ld e, l                                       ; $5DAF: $5D

    db $83, $01, $00, $02, $01, $00, $FE, $00, $46, $B0, $5D, $42

    ld c, e                                       ; $5DBC: $4B
    inc bc                                        ; $5DBD: $03
    rrca                                          ; $5DBE: $0F
    nop                                           ; $5DBF: $00
    nop                                           ; $5DC0: $00
    db $D3                                        ; $5DC1: $D3
    ld e, l                                       ; $5DC2: $5D
    rrca                                          ; $5DC3: $0F
    inc bc                                        ; $5DC4: $03
    nop                                           ; $5DC5: $00
    jp c, $0F5D                                   ; $5DC6: $DA $5D $0F

    ld [bc], a                                    ; $5DC9: $02
    nop                                           ; $5DCA: $00
    add sp, $5D                                   ; $5DCB: $E8 $5D
    rrca                                          ; $5DCD: $0F
    ld bc, $E100                                  ; $5DCE: $01 $00 $E1
    ld e, l                                       ; $5DD1: $5D
    rst $38                                       ; $5DD2: $FF
    inc d                                         ; $5DD3: $14
    rrca                                          ; $5DD4: $0F
    xor l                                         ; $5DD5: $AD
    ld e, h                                       ; $5DD6: $5C
    ld h, d                                       ; $5DD7: $62
    ld bc, $1412                                  ; $5DD8: $01 $12 $14
    rrca                                          ; $5DDB: $0F
    or a                                          ; $5DDC: $B7
    ld e, h                                       ; $5DDD: $5C
    ld h, d                                       ; $5DDE: $62
    ld bc, $1412                                  ; $5DDF: $01 $12 $14
    rrca                                          ; $5DE2: $0F
    pop bc                                        ; $5DE3: $C1
    ld e, h                                       ; $5DE4: $5C
    ld h, d                                       ; $5DE5: $62
    ld bc, $1412                                  ; $5DE6: $01 $12 $14
    rrca                                          ; $5DE9: $0F
    bit 3, h                                      ; $5DEA: $CB $5C
    ld h, d                                       ; $5DEC: $62
    ld bc, $F012                                  ; $5DED: $01 $12 $F0
    ld hl, sp+$00                                 ; $5DF0: $F8 $00
    nop                                           ; $5DF2: $00
    ldh a, [rP1]                                  ; $5DF3: $F0 $00
    ld bc, $F800                                  ; $5DF5: $01 $00 $F8
    ld hl, sp+$0A                                 ; $5DF8: $F8 $0A
    nop                                           ; $5DFA: $00
    ld hl, sp+$00                                 ; $5DFB: $F8 $00

jr_00F_5DFD:
    dec bc                                        ; $5DFD: $0B
    nop                                           ; $5DFE: $00
    nop                                           ; $5DFF: $00
    ld hl, sp+$14                                 ; $5E00: $F8 $14
    rlca                                          ; $5E02: $07
    nop                                           ; $5E03: $00
    nop                                           ; $5E04: $00
    dec d                                         ; $5E05: $15
    rlca                                          ; $5E06: $07
    add b                                         ; $5E07: $80
    ldh a, [rP1]                                  ; $5E08: $F0 $00
    nop                                           ; $5E0A: $00
    jr nz, jr_00F_5DFD                            ; $5E0B: $20 $F0

jr_00F_5E0D:
    ld hl, sp+$01                                 ; $5E0D: $F8 $01
    jr nz, @-$06                                  ; $5E0F: $20 $F8

    nop                                           ; $5E11: $00
    ld a, [bc]                                    ; $5E12: $0A
    jr nz, jr_00F_5E0D                            ; $5E13: $20 $F8

    ld hl, sp+$0B                                 ; $5E15: $F8 $0B
    jr nz, jr_00F_5E19                            ; $5E17: $20 $00

jr_00F_5E19:
    nop                                           ; $5E19: $00
    inc d                                         ; $5E1A: $14
    daa                                           ; $5E1B: $27
    nop                                           ; $5E1C: $00
    ld hl, sp+$15                                 ; $5E1D: $F8 $15
    daa                                           ; $5E1F: $27
    add b                                         ; $5E20: $80
    ldh a, [$F8]                                  ; $5E21: $F0 $F8
    ld b, $00                                     ; $5E23: $06 $00
    ldh a, [rP1]                                  ; $5E25: $F0 $00
    rlca                                          ; $5E27: $07
    nop                                           ; $5E28: $00
    ld hl, sp-$09                                 ; $5E29: $F8 $F7
    ld c, $00                                     ; $5E2B: $0E $00
    ld hl, sp-$01                                 ; $5E2D: $F8 $FF
    rrca                                          ; $5E2F: $0F
    nop                                           ; $5E30: $00
    nop                                           ; $5E31: $00
    db $FD                                        ; $5E32: $FD
    jr jr_00F_5E3C                                ; $5E33: $18 $07

    add b                                         ; $5E35: $80
    ldh a, [rP1]                                  ; $5E36: $F0 $00
    ld b, $20                                     ; $5E38: $06 $20
    ldh a, [$F8]                                  ; $5E3A: $F0 $F8

jr_00F_5E3C:
    rlca                                          ; $5E3C: $07
    jr nz, @-$06                                  ; $5E3D: $20 $F8

    nop                                           ; $5E3F: $00
    ld c, $20                                     ; $5E40: $0E $20
    ld hl, sp-$08                                 ; $5E42: $F8 $F8
    rrca                                          ; $5E44: $0F
    jr nz, jr_00F_5E47                            ; $5E45: $20 $00

jr_00F_5E47:
    ld a, [$2718]                                 ; $5E47: $FA $18 $27
    add b                                         ; $5E4A: $80
    pop af                                        ; $5E4B: $F1
    ld hl, sp+$02                                 ; $5E4C: $F8 $02
    nop                                           ; $5E4E: $00
    pop af                                        ; $5E4F: $F1
    nop                                           ; $5E50: $00
    inc bc                                        ; $5E51: $03
    nop                                           ; $5E52: $00
    ld hl, sp-$08                                 ; $5E53: $F8 $F8
    stop                                          ; $5E55: $10 $00
    ld hl, sp+$00                                 ; $5E57: $F8 $00
    ld de, $0000                                  ; $5E59: $11 $00 $00
    db $FC                                        ; $5E5C: $FC
    add hl, de                                    ; $5E5D: $19
    rlca                                          ; $5E5E: $07
    add b                                         ; $5E5F: $80
    ldh a, [$F8]                                  ; $5E60: $F0 $F8
    ld [bc], a                                    ; $5E62: $02
    nop                                           ; $5E63: $00
    ldh a, [rP1]                                  ; $5E64: $F0 $00
    inc bc                                        ; $5E66: $03
    nop                                           ; $5E67: $00
    ld hl, sp-$08                                 ; $5E68: $F8 $F8
    inc c                                         ; $5E6A: $0C
    nop                                           ; $5E6B: $00
    ld hl, sp+$00                                 ; $5E6C: $F8 $00
    inc c                                         ; $5E6E: $0C
    jr nz, jr_00F_5E71                            ; $5E6F: $20 $00

jr_00F_5E71:
    ld sp, hl                                     ; $5E71: $F9
    ld d, $27                                     ; $5E72: $16 $27
    nop                                           ; $5E74: $00
    nop                                           ; $5E75: $00
    ld d, $07                                     ; $5E76: $16 $07
    add b                                         ; $5E78: $80
    pop af                                        ; $5E79: $F1
    ld hl, sp+$02                                 ; $5E7A: $F8 $02
    nop                                           ; $5E7C: $00
    pop af                                        ; $5E7D: $F1

jr_00F_5E7E:
    nop                                           ; $5E7E: $00
    inc bc                                        ; $5E7F: $03
    nop                                           ; $5E80: $00
    ld hl, sp+$00                                 ; $5E81: $F8 $00
    db $10                                        ; $5E83: $10
    jr nz, jr_00F_5E7E                            ; $5E84: $20 $F8

    ld hl, sp+$11                                 ; $5E86: $F8 $11
    jr nz, jr_00F_5E8A                            ; $5E88: $20 $00

jr_00F_5E8A:
    db $FC                                        ; $5E8A: $FC
    add hl, de                                    ; $5E8B: $19
    daa                                           ; $5E8C: $27
    add b                                         ; $5E8D: $80
    pop af                                        ; $5E8E: $F1
    ld hl, sp+$04                                 ; $5E8F: $F8 $04
    nop                                           ; $5E91: $00
    pop af                                        ; $5E92: $F1
    nop                                           ; $5E93: $00
    dec b                                         ; $5E94: $05
    nop                                           ; $5E95: $00
    ld hl, sp-$08                                 ; $5E96: $F8 $F8
    ld [de], a                                    ; $5E98: $12
    nop                                           ; $5E99: $00
    ld hl, sp+$00                                 ; $5E9A: $F8 $00
    inc de                                        ; $5E9C: $13
    nop                                           ; $5E9D: $00
    nop                                           ; $5E9E: $00
    db $FC                                        ; $5E9F: $FC
    ld a, [de]                                    ; $5EA0: $1A
    rlca                                          ; $5EA1: $07
    add b                                         ; $5EA2: $80
    ldh a, [$F8]                                  ; $5EA3: $F0 $F8
    inc b                                         ; $5EA5: $04
    nop                                           ; $5EA6: $00
    ldh a, [rP1]                                  ; $5EA7: $F0 $00
    dec b                                         ; $5EA9: $05
    nop                                           ; $5EAA: $00
    ld hl, sp-$08                                 ; $5EAB: $F8 $F8
    dec c                                         ; $5EAD: $0D
    nop                                           ; $5EAE: $00
    ld hl, sp+$00                                 ; $5EAF: $F8 $00
    dec c                                         ; $5EB1: $0D
    jr nz, jr_00F_5EB4                            ; $5EB2: $20 $00

jr_00F_5EB4:
    ld sp, hl                                     ; $5EB4: $F9
    rla                                           ; $5EB5: $17
    daa                                           ; $5EB6: $27
    nop                                           ; $5EB7: $00
    nop                                           ; $5EB8: $00
    rla                                           ; $5EB9: $17
    rlca                                          ; $5EBA: $07
    add b                                         ; $5EBB: $80
    pop af                                        ; $5EBC: $F1
    ld hl, sp+$04                                 ; $5EBD: $F8 $04
    nop                                           ; $5EBF: $00
    pop af                                        ; $5EC0: $F1

jr_00F_5EC1:
    nop                                           ; $5EC1: $00
    dec b                                         ; $5EC2: $05
    nop                                           ; $5EC3: $00
    ld hl, sp+$00                                 ; $5EC4: $F8 $00
    ld [de], a                                    ; $5EC6: $12
    jr nz, jr_00F_5EC1                            ; $5EC7: $20 $F8

    ld hl, sp+$13                                 ; $5EC9: $F8 $13
    jr nz, jr_00F_5ECD                            ; $5ECB: $20 $00

jr_00F_5ECD:
    db $FC                                        ; $5ECD: $FC
    ld a, [de]                                    ; $5ECE: $1A
    daa                                           ; $5ECF: $27
    add b                                         ; $5ED0: $80
    pop af                                        ; $5ED1: $F1
    rst $30                                       ; $5ED2: $F7
    ld [$F100], sp                                ; $5ED3: $08 $00 $F1
    rst $38                                       ; $5ED6: $FF
    add hl, bc                                    ; $5ED7: $09
    nop                                           ; $5ED8: $00
    ld hl, sp-$08                                 ; $5ED9: $F8 $F8
    dec de                                        ; $5EDB: $1B
    nop                                           ; $5EDC: $00
    ld hl, sp+$00                                 ; $5EDD: $F8 $00
    inc e                                         ; $5EDF: $1C
    nop                                           ; $5EE0: $00
    nop                                           ; $5EE1: $00
    ld hl, sp+$20                                 ; $5EE2: $F8 $20
    rlca                                          ; $5EE4: $07
    nop                                           ; $5EE5: $00
    nop                                           ; $5EE6: $00
    ld hl, $8007                                  ; $5EE7: $21 $07 $80
    ldh a, [$F7]                                  ; $5EEA: $F0 $F7
    ld [$F000], sp                                ; $5EEC: $08 $00 $F0
    rst $38                                       ; $5EEF: $FF
    add hl, bc                                    ; $5EF0: $09
    nop                                           ; $5EF1: $00
    ld hl, sp-$04                                 ; $5EF2: $F8 $FC
    dec e                                         ; $5EF4: $1D
    nop                                           ; $5EF5: $00
    nop                                           ; $5EF6: $00
    db $FC                                        ; $5EF7: $FC
    ld [hl+], a                                   ; $5EF8: $22
    rlca                                          ; $5EF9: $07
    add b                                         ; $5EFA: $80
    pop af                                        ; $5EFB: $F1
    rst $30                                       ; $5EFC: $F7
    ld [$F100], sp                                ; $5EFD: $08 $00 $F1
    rst $38                                       ; $5F00: $FF
    add hl, bc                                    ; $5F01: $09
    nop                                           ; $5F02: $00
    ld hl, sp-$08                                 ; $5F03: $F8 $F8
    ld e, $00                                     ; $5F05: $1E $00
    ld hl, sp+$00                                 ; $5F07: $F8 $00
    rra                                           ; $5F09: $1F
    nop                                           ; $5F0A: $00
    nop                                           ; $5F0B: $00
    ld hl, sp+$23                                 ; $5F0C: $F8 $23
    rlca                                          ; $5F0E: $07
    nop                                           ; $5F0F: $00
    nop                                           ; $5F10: $00
    inc h                                         ; $5F11: $24
    rlca                                          ; $5F12: $07
    add b                                         ; $5F13: $80
    pop af                                        ; $5F14: $F1

jr_00F_5F15:
    ld bc, $2008                                  ; $5F15: $01 $08 $20
    pop af                                        ; $5F18: $F1

jr_00F_5F19:
    ld sp, hl                                     ; $5F19: $F9
    add hl, bc                                    ; $5F1A: $09
    jr nz, jr_00F_5F15                            ; $5F1B: $20 $F8

    nop                                           ; $5F1D: $00
    dec de                                        ; $5F1E: $1B
    jr nz, jr_00F_5F19                            ; $5F1F: $20 $F8

    ld hl, sp+$1C                                 ; $5F21: $F8 $1C
    jr nz, jr_00F_5F25                            ; $5F23: $20 $00

jr_00F_5F25:
    nop                                           ; $5F25: $00
    jr nz, jr_00F_5F4F                            ; $5F26: $20 $27

    nop                                           ; $5F28: $00
    ld hl, sp+$21                                 ; $5F29: $F8 $21
    daa                                           ; $5F2B: $27
    add b                                         ; $5F2C: $80
    ldh a, [rSB]                                  ; $5F2D: $F0 $01
    ld [$F020], sp                                ; $5F2F: $08 $20 $F0
    ld sp, hl                                     ; $5F32: $F9
    add hl, bc                                    ; $5F33: $09
    jr nz, @-$06                                  ; $5F34: $20 $F8

    db $FC                                        ; $5F36: $FC
    dec e                                         ; $5F37: $1D
    jr nz, jr_00F_5F3A                            ; $5F38: $20 $00

jr_00F_5F3A:
    db $FC                                        ; $5F3A: $FC
    ld [hl+], a                                   ; $5F3B: $22
    daa                                           ; $5F3C: $27
    add b                                         ; $5F3D: $80
    pop af                                        ; $5F3E: $F1

jr_00F_5F3F:
    ld bc, $2008                                  ; $5F3F: $01 $08 $20
    pop af                                        ; $5F42: $F1
    ld sp, hl                                     ; $5F43: $F9
    add hl, bc                                    ; $5F44: $09
    jr nz, jr_00F_5F3F                            ; $5F45: $20 $F8

    nop                                           ; $5F47: $00
    ld e, $20                                     ; $5F48: $1E $20
    ld hl, sp-$08                                 ; $5F4A: $F8 $F8
    rra                                           ; $5F4C: $1F
    jr nz, jr_00F_5F4F                            ; $5F4D: $20 $00

jr_00F_5F4F:
    nop                                           ; $5F4F: $00
    inc hl                                        ; $5F50: $23
    daa                                           ; $5F51: $27
    nop                                           ; $5F52: $00
    ld hl, sp+$24                                 ; $5F53: $F8 $24
    daa                                           ; $5F55: $27
    add b                                         ; $5F56: $80
    nop                                           ; $5F57: $00
    ld sp, hl                                     ; $5F58: $F9
    add hl, bc                                    ; $5F59: $09
    daa                                           ; $5F5A: $27
    nop                                           ; $5F5B: $00
    nop                                           ; $5F5C: $00
    add hl, bc                                    ; $5F5D: $09
    rlca                                          ; $5F5E: $07
    ld hl, sp-$08                                 ; $5F5F: $F8 $F8
    ld [$F820], sp                                ; $5F61: $08 $20 $F8
    nop                                           ; $5F64: $00
    ld [$F000], sp                                ; $5F65: $08 $00 $F0
    nop                                           ; $5F68: $00
    rlca                                          ; $5F69: $07
    nop                                           ; $5F6A: $00
    ldh a, [$F8]                                  ; $5F6B: $F0 $F8
    ld b, $00                                     ; $5F6D: $06 $00
    add b                                         ; $5F6F: $80
    nop                                           ; $5F70: $00
    nop                                           ; $5F71: $00
    dec b                                         ; $5F72: $05
    rlca                                          ; $5F73: $07
    nop                                           ; $5F74: $00
    ld hl, sp+$04                                 ; $5F75: $F8 $04
    rlca                                          ; $5F77: $07
    ldh a, [rP1]                                  ; $5F78: $F0 $00
    ld bc, $F000                                  ; $5F7A: $01 $00 $F0
    ld hl, sp+$00                                 ; $5F7D: $F8 $00
    nop                                           ; $5F7F: $00
    ld hl, sp+$00                                 ; $5F80: $F8 $00
    inc bc                                        ; $5F82: $03
    nop                                           ; $5F83: $00
    ld hl, sp-$08                                 ; $5F84: $F8 $F8
    ld [bc], a                                    ; $5F86: $02
    nop                                           ; $5F87: $00
    add b                                         ; $5F88: $80
    nop                                           ; $5F89: $00
    nop                                           ; $5F8A: $00
    rrca                                          ; $5F8B: $0F
    rlca                                          ; $5F8C: $07
    nop                                           ; $5F8D: $00
    ld hl, sp+$0E                                 ; $5F8E: $F8 $0E
    rlca                                          ; $5F90: $07
    ld hl, sp+$00                                 ; $5F91: $F8 $00
    dec c                                         ; $5F93: $0D
    nop                                           ; $5F94: $00
    ld hl, sp-$08                                 ; $5F95: $F8 $F8
    inc c                                         ; $5F97: $0C
    nop                                           ; $5F98: $00
    ldh a, [rP1]                                  ; $5F99: $F0 $00
    dec bc                                        ; $5F9B: $0B
    nop                                           ; $5F9C: $00
    ldh a, [$F8]                                  ; $5F9D: $F0 $F8
    ld a, [bc]                                    ; $5F9F: $0A
    nop                                           ; $5FA0: $00
    add b                                         ; $5FA1: $80
    ld hl, sp+$00                                 ; $5FA2: $F8 $00
    stop                                          ; $5FA4: $10 $00
    nop                                           ; $5FA6: $00
    nop                                           ; $5FA7: $00
    rrca                                          ; $5FA8: $0F
    rlca                                          ; $5FA9: $07
    nop                                           ; $5FAA: $00
    ld hl, sp+$0E                                 ; $5FAB: $F8 $0E
    rlca                                          ; $5FAD: $07
    ld hl, sp-$08                                 ; $5FAE: $F8 $F8
    inc c                                         ; $5FB0: $0C
    nop                                           ; $5FB1: $00
    ldh a, [rP1]                                  ; $5FB2: $F0 $00
    dec bc                                        ; $5FB4: $0B
    nop                                           ; $5FB5: $00
    ldh a, [$F8]                                  ; $5FB6: $F0 $F8
    ld a, [bc]                                    ; $5FB8: $0A
    nop                                           ; $5FB9: $00
    add b                                         ; $5FBA: $80
    ldh a, [rP1]                                  ; $5FBB: $F0 $00
    ld de, $F800                                  ; $5FBD: $11 $00 $F8
    nop                                           ; $5FC0: $00
    ld [de], a                                    ; $5FC1: $12
    nop                                           ; $5FC2: $00
    nop                                           ; $5FC3: $00
    nop                                           ; $5FC4: $00
    rrca                                          ; $5FC5: $0F
    rlca                                          ; $5FC6: $07
    nop                                           ; $5FC7: $00
    ld hl, sp+$0E                                 ; $5FC8: $F8 $0E
    rlca                                          ; $5FCA: $07
    ld hl, sp-$08                                 ; $5FCB: $F8 $F8
    inc c                                         ; $5FCD: $0C
    nop                                           ; $5FCE: $00
    ldh a, [$F8]                                  ; $5FCF: $F0 $F8
    ld a, [bc]                                    ; $5FD1: $0A
    nop                                           ; $5FD2: $00
    add b                                         ; $5FD3: $80
    nop                                           ; $5FD4: $00
    ld sp, hl                                     ; $5FD5: $F9
    inc d                                         ; $5FD6: $14
    daa                                           ; $5FD7: $27
    nop                                           ; $5FD8: $00

jr_00F_5FD9:
    nop                                           ; $5FD9: $00
    inc d                                         ; $5FDA: $14
    rlca                                          ; $5FDB: $07
    ld hl, sp-$08                                 ; $5FDC: $F8 $F8
    dec d                                         ; $5FDE: $15
    jr nz, jr_00F_5FD9                            ; $5FDF: $20 $F8

    nop                                           ; $5FE1: $00
    dec d                                         ; $5FE2: $15
    nop                                           ; $5FE3: $00
    ldh a, [rP1]                                  ; $5FE4: $F0 $00
    rla                                           ; $5FE6: $17
    nop                                           ; $5FE7: $00
    ldh a, [$F8]                                  ; $5FE8: $F0 $F8
    ld d, $00                                     ; $5FEA: $16 $00
    add b                                         ; $5FEC: $80
    nop                                           ; $5FED: $00
    ld sp, hl                                     ; $5FEE: $F9
    add hl, bc                                    ; $5FEF: $09
    daa                                           ; $5FF0: $27
    nop                                           ; $5FF1: $00
    nop                                           ; $5FF2: $00
    add hl, bc                                    ; $5FF3: $09
    rlca                                          ; $5FF4: $07
    ld hl, sp+$00                                 ; $5FF5: $F8 $00
    add hl, de                                    ; $5FF7: $19
    nop                                           ; $5FF8: $00
    ld hl, sp-$08                                 ; $5FF9: $F8 $F8
    jr jr_00F_5FFD                                ; $5FFB: $18 $00

jr_00F_5FFD:
    ldh a, [rP1]                                  ; $5FFD: $F0 $00
    rla                                           ; $5FFF: $17
    nop                                           ; $6000: $00
    ldh a, [$F8]                                  ; $6001: $F0 $F8
    ld d, $00                                     ; $6003: $16 $00
    add b                                         ; $6005: $80
    nop                                           ; $6006: $00
    ld sp, hl                                     ; $6007: $F9
    add hl, bc                                    ; $6008: $09
    daa                                           ; $6009: $27
    nop                                           ; $600A: $00
    nop                                           ; $600B: $00
    add hl, bc                                    ; $600C: $09
    rlca                                          ; $600D: $07
    ld sp, hl                                     ; $600E: $F9
    nop                                           ; $600F: $00
    add hl, de                                    ; $6010: $19
    nop                                           ; $6011: $00
    ld sp, hl                                     ; $6012: $F9
    ld hl, sp+$18                                 ; $6013: $F8 $18
    nop                                           ; $6015: $00
    pop af                                        ; $6016: $F1
    nop                                           ; $6017: $00
    rla                                           ; $6018: $17
    nop                                           ; $6019: $00
    pop af                                        ; $601A: $F1
    ld hl, sp+$16                                 ; $601B: $F8 $16
    nop                                           ; $601D: $00
    add b                                         ; $601E: $80
    ld c, l                                       ; $601F: $4D
    ld [$0008], sp                                ; $6020: $08 $08 $00
    rst $38                                       ; $6023: $FF
    adc [hl]                                      ; $6024: $8E
    ld e, [hl]                                    ; $6025: $5E
    and e                                         ; $6026: $A3
    ld e, [hl]                                    ; $6027: $5E
    cp h                                          ; $6028: $BC
    ld e, [hl]                                    ; $6029: $5E
    and e                                         ; $602A: $A3
    ld e, [hl]                                    ; $602B: $5E
    ld b, [hl]                                    ; $602C: $46
    rra                                           ; $602D: $1F
    ld h, b                                       ; $602E: $60
    ld c, l                                       ; $602F: $4D
    ld [$0008], sp                                ; $6030: $08 $08 $00
    ld bc, $5E4B                                  ; $6033: $01 $4B $5E
    ld h, b                                       ; $6036: $60
    ld e, [hl]                                    ; $6037: $5E
    ld a, c                                       ; $6038: $79
    ld e, [hl]                                    ; $6039: $5E
    ld h, b                                       ; $603A: $60
    ld e, [hl]                                    ; $603B: $5E
    ld b, [hl]                                    ; $603C: $46
    cpl                                           ; $603D: $2F
    ld h, b                                       ; $603E: $60

    db $4D, $08, $08, $FF, $00, $14, $5F, $2D, $5F, $3E, $5F, $2D, $5F, $46, $3F, $60
    db $4D, $08, $08, $01, $00, $D1, $5E, $EA, $5E, $FB, $5E, $EA, $5E, $46, $4F, $60

    ld c, l                                       ; $605F: $4D
    ld [$0008], sp                                ; $6060: $08 $08 $00
    cp $8E                                        ; $6063: $FE $8E
    ld e, [hl]                                    ; $6065: $5E
    and e                                         ; $6066: $A3
    ld e, [hl]                                    ; $6067: $5E
    cp h                                          ; $6068: $BC
    ld e, [hl]                                    ; $6069: $5E
    and e                                         ; $606A: $A3
    ld e, [hl]                                    ; $606B: $5E
    ld b, [hl]                                    ; $606C: $46
    ld e, a                                       ; $606D: $5F
    ld h, b                                       ; $606E: $60
    ld c, l                                       ; $606F: $4D
    ld [$0008], sp                                ; $6070: $08 $08 $00
    ld [bc], a                                    ; $6073: $02
    ld c, e                                       ; $6074: $4B
    ld e, [hl]                                    ; $6075: $5E
    ld h, b                                       ; $6076: $60
    ld e, [hl]                                    ; $6077: $5E
    ld a, c                                       ; $6078: $79
    ld e, [hl]                                    ; $6079: $5E
    ld h, b                                       ; $607A: $60
    ld e, [hl]                                    ; $607B: $5E
    ld b, [hl]                                    ; $607C: $46
    ld l, a                                       ; $607D: $6F
    ld h, b                                       ; $607E: $60
    ld c, l                                       ; $607F: $4D
    ld [$FE08], sp                                ; $6080: $08 $08 $FE
    nop                                           ; $6083: $00
    inc d                                         ; $6084: $14
    ld e, a                                       ; $6085: $5F
    dec l                                         ; $6086: $2D
    ld e, a                                       ; $6087: $5F
    ld a, $5F                                     ; $6088: $3E $5F
    dec l                                         ; $608A: $2D
    ld e, a                                       ; $608B: $5F
    ld b, [hl]                                    ; $608C: $46
    ld a, a                                       ; $608D: $7F
    ld h, b                                       ; $608E: $60
    ld c, l                                       ; $608F: $4D
    ld [$0208], sp                                ; $6090: $08 $08 $02
    nop                                           ; $6093: $00
    pop de                                        ; $6094: $D1
    ld e, [hl]                                    ; $6095: $5E
    ld [$FB5E], a                                 ; $6096: $EA $5E $FB
    ld e, [hl]                                    ; $6099: $5E
    ld [$465E], a                                 ; $609A: $EA $5E $46
    adc a                                         ; $609D: $8F
    ld h, b                                       ; $609E: $60
    ld c, h                                       ; $609F: $4C
    rst $38                                       ; $60A0: $FF
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
    and e                                         ; $60A3: $A3
    ld e, [hl]                                    ; $60A4: $5E
    nop                                           ; $60A5: $00
    ld b, [hl]                                    ; $60A6: $46
    sbc a                                         ; $60A7: $9F
    ld h, b                                       ; $60A8: $60

    db $4C, $FF, $00, $00, $60, $5E

    nop                                           ; $60AF: $00
    ld b, [hl]                                    ; $60B0: $46
    xor c                                         ; $60B1: $A9
    ld h, b                                       ; $60B2: $60

    db $4C, $FF, $00, $00, $2D, $5F, $00, $46, $B3, $60

    ld c, h                                       ; $60BD: $4C
    rst $38                                       ; $60BE: $FF
    nop                                           ; $60BF: $00
    nop                                           ; $60C0: $00
    ld [$005E], a                                 ; $60C1: $EA $5E $00
    ld b, [hl]                                    ; $60C4: $46
    cp l                                          ; $60C5: $BD
    ld h, b                                       ; $60C6: $60
    ld c, h                                       ; $60C7: $4C
    rst $38                                       ; $60C8: $FF
    nop                                           ; $60C9: $00
    nop                                           ; $60CA: $00
    ld [hl], $5E                                  ; $60CB: $36 $5E
    nop                                           ; $60CD: $00
    ld b, [hl]                                    ; $60CE: $46
    rst $00                                       ; $60CF: $C7
    ld h, b                                       ; $60D0: $60
    ld c, h                                       ; $60D1: $4C
    rst $38                                       ; $60D2: $FF
    nop                                           ; $60D3: $00
    nop                                           ; $60D4: $00
    ld hl, $005E                                  ; $60D5: $21 $5E $00
    ld b, [hl]                                    ; $60D8: $46
    pop de                                        ; $60D9: $D1
    ld h, b                                       ; $60DA: $60
    ld c, h                                       ; $60DB: $4C
    rst $38                                       ; $60DC: $FF
    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    ld [$005E], sp                                ; $60DF: $08 $5E $00
    ld b, [hl]                                    ; $60E2: $46
    db $DB                                        ; $60E3: $DB
    ld h, b                                       ; $60E4: $60
    ld c, h                                       ; $60E5: $4C
    rst $38                                       ; $60E6: $FF
    nop                                           ; $60E7: $00
    nop                                           ; $60E8: $00
    rst $28                                       ; $60E9: $EF
    ld e, l                                       ; $60EA: $5D
    nop                                           ; $60EB: $00
    ld b, [hl]                                    ; $60EC: $46
    push hl                                       ; $60ED: $E5
    ld h, b                                       ; $60EE: $60
    ld c, h                                       ; $60EF: $4C
    rst $38                                       ; $60F0: $FF
    nop                                           ; $60F1: $00
    nop                                           ; $60F2: $00
    call nc, $005F                                ; $60F3: $D4 $5F $00
    ld b, [hl]                                    ; $60F6: $46
    rst $28                                       ; $60F7: $EF
    ld h, b                                       ; $60F8: $60
    ld c, l                                       ; $60F9: $4D
    inc b                                         ; $60FA: $04
    ld [rRAMG], sp                                ; $60FB: $08 $00 $00
    db $ED                                        ; $60FE: $ED
    ld e, a                                       ; $60FF: $5F
    ld b, $60                                     ; $6100: $06 $60
    ld b, [hl]                                    ; $6102: $46
    ld sp, hl                                     ; $6103: $F9
    ld h, b                                       ; $6104: $60
    ld c, l                                       ; $6105: $4D
    jr nz, jr_00F_610C                            ; $6106: $20 $04

    nop                                           ; $6108: $00
    nop                                           ; $6109: $00
    adc c                                         ; $610A: $89
    ld e, a                                       ; $610B: $5F

jr_00F_610C:
    and d                                         ; $610C: $A2
    ld e, a                                       ; $610D: $5F
    cp e                                          ; $610E: $BB
    ld e, a                                       ; $610F: $5F
    and d                                         ; $6110: $A2
    ld e, a                                       ; $6111: $5F
    adc c                                         ; $6112: $89
    ld e, a                                       ; $6113: $5F
    and d                                         ; $6114: $A2
    ld e, a                                       ; $6115: $5F
    cp e                                          ; $6116: $BB
    ld e, a                                       ; $6117: $5F
    and d                                         ; $6118: $A2
    ld e, a                                       ; $6119: $5F
    adc c                                         ; $611A: $89
    ld e, a                                       ; $611B: $5F
    and d                                         ; $611C: $A2
    ld e, a                                       ; $611D: $5F
    cp e                                          ; $611E: $BB
    ld e, a                                       ; $611F: $5F
    and d                                         ; $6120: $A2
    ld e, a                                       ; $6121: $5F
    adc c                                         ; $6122: $89
    ld e, a                                       ; $6123: $5F
    and d                                         ; $6124: $A2
    ld e, a                                       ; $6125: $5F
    cp e                                          ; $6126: $BB
    ld e, a                                       ; $6127: $5F
    and d                                         ; $6128: $A2
    ld e, a                                       ; $6129: $5F
    ld c, h                                       ; $612A: $4C
    jr nz, jr_00F_612D                            ; $612B: $20 $00

jr_00F_612D:
    nop                                           ; $612D: $00
    adc c                                         ; $612E: $89
    ld e, a                                       ; $612F: $5F
    nop                                           ; $6130: $00
    ld b, [hl]                                    ; $6131: $46
    rst $28                                       ; $6132: $EF
    ld h, b                                       ; $6133: $60
    ld c, h                                       ; $6134: $4C
    rst $38                                       ; $6135: $FF
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00
    ld d, a                                       ; $6138: $57
    ld e, a                                       ; $6139: $5F
    nop                                           ; $613A: $00
    ld b, [hl]                                    ; $613B: $46
    inc [hl]                                      ; $613C: $34
    ld h, c                                       ; $613D: $61
    ld c, h                                       ; $613E: $4C
    rst $38                                       ; $613F: $FF
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    ld [hl], b                                    ; $6142: $70
    ld e, a                                       ; $6143: $5F
    nop                                           ; $6144: $00
    ld b, [hl]                                    ; $6145: $46
    ld a, $61                                     ; $6146: $3E $61
    ld c, e                                       ; $6148: $4B
    inc bc                                        ; $6149: $03
    rrca                                          ; $614A: $0F
    nop                                           ; $614B: $00
    nop                                           ; $614C: $00
    ld e, a                                       ; $614D: $5F
    ld h, c                                       ; $614E: $61
    rrca                                          ; $614F: $0F
    inc bc                                        ; $6150: $03
    nop                                           ; $6151: $00
    ld h, [hl]                                    ; $6152: $66
    ld h, c                                       ; $6153: $61
    rrca                                          ; $6154: $0F
    ld [bc], a                                    ; $6155: $02
    nop                                           ; $6156: $00
    ld [hl], h                                    ; $6157: $74
    ld h, c                                       ; $6158: $61
    rrca                                          ; $6159: $0F
    ld bc, $6D00                                  ; $615A: $01 $00 $6D
    ld h, c                                       ; $615D: $61
    rst $38                                       ; $615E: $FF
    inc d                                         ; $615F: $14
    rrca                                          ; $6160: $0F
    sbc a                                         ; $6161: $9F
    ld h, b                                       ; $6162: $60
    ld h, d                                       ; $6163: $62
    ld bc, $1412                                  ; $6164: $01 $12 $14
    rrca                                          ; $6167: $0F
    xor c                                         ; $6168: $A9
    ld h, b                                       ; $6169: $60
    ld h, d                                       ; $616A: $62
    ld bc, $1412                                  ; $616B: $01 $12 $14
    rrca                                          ; $616E: $0F
    or e                                          ; $616F: $B3
    ld h, b                                       ; $6170: $60
    ld h, d                                       ; $6171: $62
    ld bc, $1412                                  ; $6172: $01 $12 $14
    rrca                                          ; $6175: $0F
    cp l                                          ; $6176: $BD
    ld h, b                                       ; $6177: $60
    ld h, d                                       ; $6178: $62
    ld bc, $D612                                  ; $6179: $01 $12 $D6
    ld hl, sp+$00                                 ; $617C: $F8 $00
    ld b, $D6                                     ; $617E: $06 $D6
    nop                                           ; $6180: $00
    ld bc, $DE06                                  ; $6181: $01 $06 $DE
    ld hl, sp+$02                                 ; $6184: $F8 $02
    ld b, $DE                                     ; $6186: $06 $DE
    nop                                           ; $6188: $00
    inc bc                                        ; $6189: $03
    ld b, $E6                                     ; $618A: $06 $E6
    ld hl, sp+$08                                 ; $618C: $F8 $08
    ld b, $E6                                     ; $618E: $06 $E6
    nop                                           ; $6190: $00
    add hl, bc                                    ; $6191: $09
    ld b, $80                                     ; $6192: $06 $80
    rst $10                                       ; $6194: $D7
    ld hl, sp+$00                                 ; $6195: $F8 $00
    ld b, $D7                                     ; $6197: $06 $D7
    nop                                           ; $6199: $00
    ld bc, $DF06                                  ; $619A: $01 $06 $DF
    ld hl, sp+$04                                 ; $619D: $F8 $04
    ld b, $DF                                     ; $619F: $06 $DF
    nop                                           ; $61A1: $00
    dec b                                         ; $61A2: $05
    ld b, $E7                                     ; $61A3: $06 $E7
    ld hl, sp+$0A                                 ; $61A5: $F8 $0A
    ld b, $E7                                     ; $61A7: $06 $E7
    nop                                           ; $61A9: $00
    dec bc                                        ; $61AA: $0B
    ld b, $80                                     ; $61AB: $06 $80
    ret c                                         ; $61AD: $D8

    ld hl, sp+$00                                 ; $61AE: $F8 $00
    ld b, $D8                                     ; $61B0: $06 $D8
    nop                                           ; $61B2: $00
    ld bc, $E806                                  ; $61B3: $01 $06 $E8
    ld hl, sp+$0C                                 ; $61B6: $F8 $0C
    ld b, $E8                                     ; $61B8: $06 $E8
    nop                                           ; $61BA: $00
    dec c                                         ; $61BB: $0D
    ld b, $E0                                     ; $61BC: $06 $E0
    ld hl, sp+$06                                 ; $61BE: $F8 $06
    ld b, $E0                                     ; $61C0: $06 $E0
    nop                                           ; $61C2: $00
    rlca                                          ; $61C3: $07
    ld b, $80                                     ; $61C4: $06 $80
    sub $00                                       ; $61C6: $D6 $00
    nop                                           ; $61C8: $00
    ld h, $D6                                     ; $61C9: $26 $D6
    ld hl, sp+$01                                 ; $61CB: $F8 $01
    ld h, $DE                                     ; $61CD: $26 $DE
    nop                                           ; $61CF: $00
    ld [bc], a                                    ; $61D0: $02
    ld h, $DE                                     ; $61D1: $26 $DE
    ld hl, sp+$03                                 ; $61D3: $F8 $03
    ld h, $E6                                     ; $61D5: $26 $E6
    nop                                           ; $61D7: $00
    ld [$E626], sp                                ; $61D8: $08 $26 $E6
    ld hl, sp+$09                                 ; $61DB: $F8 $09
    ld h, $80                                     ; $61DD: $26 $80
    rst $10                                       ; $61DF: $D7
    nop                                           ; $61E0: $00
    nop                                           ; $61E1: $00
    ld h, $D7                                     ; $61E2: $26 $D7
    ld hl, sp+$01                                 ; $61E4: $F8 $01
    ld h, $DF                                     ; $61E6: $26 $DF
    nop                                           ; $61E8: $00
    inc b                                         ; $61E9: $04
    ld h, $DF                                     ; $61EA: $26 $DF
    ld hl, sp+$05                                 ; $61EC: $F8 $05
    ld h, $E7                                     ; $61EE: $26 $E7
    nop                                           ; $61F0: $00
    ld a, [bc]                                    ; $61F1: $0A
    ld h, $E7                                     ; $61F2: $26 $E7
    ld hl, sp+$0B                                 ; $61F4: $F8 $0B
    ld h, $80                                     ; $61F6: $26 $80
    ret c                                         ; $61F8: $D8

    nop                                           ; $61F9: $00
    nop                                           ; $61FA: $00
    ld h, $D8                                     ; $61FB: $26 $D8
    ld hl, sp+$01                                 ; $61FD: $F8 $01
    ld h, $E8                                     ; $61FF: $26 $E8
    nop                                           ; $6201: $00
    inc c                                         ; $6202: $0C
    ld h, $E8                                     ; $6203: $26 $E8
    ld hl, sp+$0D                                 ; $6205: $F8 $0D
    ld h, $E0                                     ; $6207: $26 $E0
    nop                                           ; $6209: $00
    ld b, $26                                     ; $620A: $06 $26
    ldh [$F8], a                                  ; $620C: $E0 $F8
    rlca                                          ; $620E: $07
    ld h, $80                                     ; $620F: $26 $80
    sub $F8                                       ; $6211: $D6 $F8
    ld c, $06                                     ; $6213: $0E $06
    sub $00                                       ; $6215: $D6 $00
    rrca                                          ; $6217: $0F
    ld b, $DE                                     ; $6218: $06 $DE
    ld hl, sp+$12                                 ; $621A: $F8 $12
    ld b, $DE                                     ; $621C: $06 $DE
    nop                                           ; $621E: $00
    inc de                                        ; $621F: $13
    ld b, $E6                                     ; $6220: $06 $E6
    ei                                            ; $6222: $FB
    ld d, $06                                     ; $6223: $16 $06
    add b                                         ; $6225: $80
    rst $10                                       ; $6226: $D7
    nop                                           ; $6227: $00
    rrca                                          ; $6228: $0F
    ld b, $D7                                     ; $6229: $06 $D7
    ld hl, sp+$10                                 ; $622B: $F8 $10
    ld b, $DF                                     ; $622D: $06 $DF
    nop                                           ; $622F: $00
    inc de                                        ; $6230: $13
    ld b, $DF                                     ; $6231: $06 $DF
    ld hl, sp+$14                                 ; $6233: $F8 $14
    ld b, $E7                                     ; $6235: $06 $E7
    ei                                            ; $6237: $FB
    rla                                           ; $6238: $17
    ld b, $80                                     ; $6239: $06 $80
    ret c                                         ; $623B: $D8

    nop                                           ; $623C: $00
    rrca                                          ; $623D: $0F
    ld b, $D8                                     ; $623E: $06 $D8
    ld hl, sp+$11                                 ; $6240: $F8 $11
    ld b, $E0                                     ; $6242: $06 $E0
    nop                                           ; $6244: $00
    inc de                                        ; $6245: $13
    ld b, $E0                                     ; $6246: $06 $E0
    ld hl, sp+$15                                 ; $6248: $F8 $15
    ld b, $E8                                     ; $624A: $06 $E8
    ei                                            ; $624C: $FB
    jr @+$08                                      ; $624D: $18 $06

    add b                                         ; $624F: $80
    sub $00                                       ; $6250: $D6 $00
    ld c, $26                                     ; $6252: $0E $26
    sub $F8                                       ; $6254: $D6 $F8
    rrca                                          ; $6256: $0F
    ld h, $DE                                     ; $6257: $26 $DE
    nop                                           ; $6259: $00
    ld [de], a                                    ; $625A: $12
    ld h, $DE                                     ; $625B: $26 $DE
    ld hl, sp+$13                                 ; $625D: $F8 $13
    ld h, $E6                                     ; $625F: $26 $E6
    db $FD                                        ; $6261: $FD
    ld d, $26                                     ; $6262: $16 $26
    add b                                         ; $6264: $80
    rst $10                                       ; $6265: $D7
    ld hl, sp+$0F                                 ; $6266: $F8 $0F
    ld h, $D7                                     ; $6268: $26 $D7
    nop                                           ; $626A: $00
    db $10                                        ; $626B: $10
    ld h, $DF                                     ; $626C: $26 $DF
    ld hl, sp+$13                                 ; $626E: $F8 $13
    ld h, $DF                                     ; $6270: $26 $DF
    nop                                           ; $6272: $00

Jump_00F_6273:
    inc d                                         ; $6273: $14
    ld h, $E7                                     ; $6274: $26 $E7

Call_00F_6276:
    db $FD                                        ; $6276: $FD
    rla                                           ; $6277: $17
    ld h, $80                                     ; $6278: $26 $80
    ret c                                         ; $627A: $D8

    ld hl, sp+$0F                                 ; $627B: $F8 $0F
    ld h, $D8                                     ; $627D: $26 $D8
    nop                                           ; $627F: $00
    ld de, $E026                                  ; $6280: $11 $26 $E0
    ld hl, sp+$13                                 ; $6283: $F8 $13
    ld h, $E0                                     ; $6285: $26 $E0
    nop                                           ; $6287: $00
    dec d                                         ; $6288: $15
    ld h, $E8                                     ; $6289: $26 $E8
    db $FD                                        ; $628B: $FD
    jr jr_00F_62B4                                ; $628C: $18 $26

    add b                                         ; $628E: $80
    ld c, l                                       ; $628F: $4D
    ld [$0008], sp                                ; $6290: $08 $08 $00
    nop                                           ; $6293: $00
    add $61                                       ; $6294: $C6 $61
    rst $18                                       ; $6296: $DF
    ld h, c                                       ; $6297: $61
    ld hl, sp+$61                                 ; $6298: $F8 $61
    rst $18                                       ; $629A: $DF
    ld h, c                                       ; $629B: $61
    ld b, [hl]                                    ; $629C: $46
    adc a                                         ; $629D: $8F
    ld h, d                                       ; $629E: $62
    ld c, l                                       ; $629F: $4D
    ld [$0008], sp                                ; $62A0: $08 $08 $00
    nop                                           ; $62A3: $00
    ld a, e                                       ; $62A4: $7B
    ld h, c                                       ; $62A5: $61
    sub h                                         ; $62A6: $94
    ld h, c                                       ; $62A7: $61
    xor l                                         ; $62A8: $AD
    ld h, c                                       ; $62A9: $61
    sub h                                         ; $62AA: $94
    ld h, c                                       ; $62AB: $61
    ld b, [hl]                                    ; $62AC: $46
    sbc a                                         ; $62AD: $9F
    ld h, d                                       ; $62AE: $62
    ld c, l                                       ; $62AF: $4D
    ld [$0008], sp                                ; $62B0: $08 $08 $00
    nop                                           ; $62B3: $00

jr_00F_62B4:
    ld d, b                                       ; $62B4: $50
    ld h, d                                       ; $62B5: $62
    ld h, l                                       ; $62B6: $65
    ld h, d                                       ; $62B7: $62
    ld a, d                                       ; $62B8: $7A
    ld h, d                                       ; $62B9: $62
    ld h, l                                       ; $62BA: $65
    ld h, d                                       ; $62BB: $62
    ld b, [hl]                                    ; $62BC: $46
    xor a                                         ; $62BD: $AF
    ld h, d                                       ; $62BE: $62
    ld c, l                                       ; $62BF: $4D
    ld [$0008], sp                                ; $62C0: $08 $08 $00
    nop                                           ; $62C3: $00
    ld de, $2662                                  ; $62C4: $11 $62 $26
    ld h, d                                       ; $62C7: $62
    dec sp                                        ; $62C8: $3B
    ld h, d                                       ; $62C9: $62
    ld h, $62                                     ; $62CA: $26 $62
    ld b, [hl]                                    ; $62CC: $46
    cp a                                          ; $62CD: $BF
    ld h, d                                       ; $62CE: $62
    ld c, l                                       ; $62CF: $4D
    ld [$FF08], sp                                ; $62D0: $08 $08 $FF
    ld bc, $61C6                                  ; $62D3: $01 $C6 $61
    rst $18                                       ; $62D6: $DF
    ld h, c                                       ; $62D7: $61
    ld hl, sp+$61                                 ; $62D8: $F8 $61
    rst $18                                       ; $62DA: $DF
    ld h, c                                       ; $62DB: $61
    ld b, [hl]                                    ; $62DC: $46
    rst $08                                       ; $62DD: $CF
    ld h, d                                       ; $62DE: $62
    ld c, l                                       ; $62DF: $4D
    ld [$0108], sp                                ; $62E0: $08 $08 $01
    ld bc, $617B                                  ; $62E3: $01 $7B $61
    sub h                                         ; $62E6: $94
    ld h, c                                       ; $62E7: $61
    xor l                                         ; $62E8: $AD
    ld h, c                                       ; $62E9: $61
    sub h                                         ; $62EA: $94
    ld h, c                                       ; $62EB: $61
    ld b, [hl]                                    ; $62EC: $46
    rst $18                                       ; $62ED: $DF
    ld h, d                                       ; $62EE: $62
    ld c, l                                       ; $62EF: $4D
    ld [$FF08], sp                                ; $62F0: $08 $08 $FF
    nop                                           ; $62F3: $00
    add $61                                       ; $62F4: $C6 $61
    rst $18                                       ; $62F6: $DF
    ld h, c                                       ; $62F7: $61
    ld hl, sp+$61                                 ; $62F8: $F8 $61
    rst $18                                       ; $62FA: $DF
    ld h, c                                       ; $62FB: $61
    ld b, [hl]                                    ; $62FC: $46
    rst $28                                       ; $62FD: $EF
    ld h, d                                       ; $62FE: $62
    ld c, l                                       ; $62FF: $4D
    ld [$0108], sp                                ; $6300: $08 $08 $01
    nop                                           ; $6303: $00
    ld a, e                                       ; $6304: $7B
    ld h, c                                       ; $6305: $61
    sub h                                         ; $6306: $94
    ld h, c                                       ; $6307: $61
    xor l                                         ; $6308: $AD
    ld h, c                                       ; $6309: $61
    sub h                                         ; $630A: $94
    ld h, c                                       ; $630B: $61
    ld b, [hl]                                    ; $630C: $46
    rst $38                                       ; $630D: $FF
    ld h, d                                       ; $630E: $62
    ld c, l                                       ; $630F: $4D
    ld [$FF08], sp                                ; $6310: $08 $08 $FF
    rst $38                                       ; $6313: $FF
    ld d, b                                       ; $6314: $50
    ld h, d                                       ; $6315: $62
    ld h, l                                       ; $6316: $65
    ld h, d                                       ; $6317: $62
    ld a, d                                       ; $6318: $7A
    ld h, d                                       ; $6319: $62
    ld h, l                                       ; $631A: $65
    ld h, d                                       ; $631B: $62
    ld b, [hl]                                    ; $631C: $46
    rrca                                          ; $631D: $0F
    ld h, e                                       ; $631E: $63
    ld c, l                                       ; $631F: $4D
    ld [$0108], sp                                ; $6320: $08 $08 $01
    rst $38                                       ; $6323: $FF
    ld de, $2662                                  ; $6324: $11 $62 $26
    ld h, d                                       ; $6327: $62
    dec sp                                        ; $6328: $3B
    ld h, d                                       ; $6329: $62
    ld h, $62                                     ; $632A: $26 $62
    ld b, [hl]                                    ; $632C: $46
    rra                                           ; $632D: $1F
    ld h, e                                       ; $632E: $63
    ldh a, [$F8]                                  ; $632F: $F0 $F8
    nop                                           ; $6331: $00
    inc b                                         ; $6332: $04
    ldh a, [rP1]                                  ; $6333: $F0 $00
    ld bc, $F804                                  ; $6335: $01 $04 $F8
    ld hl, sp+$06                                 ; $6338: $F8 $06
    inc b                                         ; $633A: $04
    ld hl, sp+$00                                 ; $633B: $F8 $00
    rlca                                          ; $633D: $07
    inc b                                         ; $633E: $04
    nop                                           ; $633F: $00
    ld hl, sp+$10                                 ; $6340: $F8 $10
    rlca                                          ; $6342: $07
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    ld de, $8007                                  ; $6345: $11 $07 $80
    ldh a, [rP1]                                  ; $6348: $F0 $00
    nop                                           ; $634A: $00
    inc h                                         ; $634B: $24
    ldh a, [$F8]                                  ; $634C: $F0 $F8
    ld bc, $F824                                  ; $634E: $01 $24 $F8
    nop                                           ; $6351: $00
    ld b, $24                                     ; $6352: $06 $24
    ld hl, sp-$08                                 ; $6354: $F8 $F8
    rlca                                          ; $6356: $07
    inc h                                         ; $6357: $24
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    db $10                                        ; $635A: $10
    daa                                           ; $635B: $27
    nop                                           ; $635C: $00
    ld hl, sp+$11                                 ; $635D: $F8 $11
    daa                                           ; $635F: $27
    add b                                         ; $6360: $80
    ldh a, [$F8]                                  ; $6361: $F0 $F8
    inc b                                         ; $6363: $04
    inc b                                         ; $6364: $04
    ldh a, [rP1]                                  ; $6365: $F0 $00
    dec b                                         ; $6367: $05
    inc b                                         ; $6368: $04
    ld hl, sp-$08                                 ; $6369: $F8 $F8
    ld a, [bc]                                    ; $636B: $0A
    inc b                                         ; $636C: $04
    ld hl, sp+$00                                 ; $636D: $F8 $00
    dec bc                                        ; $636F: $0B
    inc b                                         ; $6370: $04
    nop                                           ; $6371: $00
    ld hl, sp+$14                                 ; $6372: $F8 $14
    rlca                                          ; $6374: $07
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    dec d                                         ; $6377: $15
    rlca                                          ; $6378: $07
    add b                                         ; $6379: $80
    ldh a, [rP1]                                  ; $637A: $F0 $00
    inc b                                         ; $637C: $04
    inc h                                         ; $637D: $24
    ldh a, [$F8]                                  ; $637E: $F0 $F8
    dec b                                         ; $6380: $05
    inc h                                         ; $6381: $24
    ld hl, sp+$00                                 ; $6382: $F8 $00
    ld a, [bc]                                    ; $6384: $0A
    inc h                                         ; $6385: $24
    ld hl, sp-$08                                 ; $6386: $F8 $F8
    dec bc                                        ; $6388: $0B
    inc h                                         ; $6389: $24
    nop                                           ; $638A: $00
    nop                                           ; $638B: $00
    inc d                                         ; $638C: $14
    daa                                           ; $638D: $27
    nop                                           ; $638E: $00
    ld hl, sp+$15                                 ; $638F: $F8 $15
    daa                                           ; $6391: $27
    add b                                         ; $6392: $80
    pop af                                        ; $6393: $F1
    ld hl, sp+$02                                 ; $6394: $F8 $02
    inc b                                         ; $6396: $04
    pop af                                        ; $6397: $F1
    nop                                           ; $6398: $00
    ld [bc], a                                    ; $6399: $02
    inc h                                         ; $639A: $24
    nop                                           ; $639B: $00
    ld sp, hl                                     ; $639C: $F9
    ld d, $07                                     ; $639D: $16 $07
    nop                                           ; $639F: $00
    ld bc, $0717                                  ; $63A0: $01 $17 $07
    ld hl, sp-$08                                 ; $63A3: $F8 $F8
    inc c                                         ; $63A5: $0C
    inc b                                         ; $63A6: $04
    ld hl, sp+$00                                 ; $63A7: $F8 $00
    dec c                                         ; $63A9: $0D
    inc b                                         ; $63AA: $04
    add b                                         ; $63AB: $80
    ldh a, [$F8]                                  ; $63AC: $F0 $F8
    ld [bc], a                                    ; $63AE: $02
    inc b                                         ; $63AF: $04
    ldh a, [rP1]                                  ; $63B0: $F0 $00
    ld [bc], a                                    ; $63B2: $02
    inc h                                         ; $63B3: $24
    nop                                           ; $63B4: $00
    ld hl, sp+$12                                 ; $63B5: $F8 $12
    rlca                                          ; $63B7: $07
    nop                                           ; $63B8: $00
    nop                                           ; $63B9: $00
    ld [de], a                                    ; $63BA: $12
    daa                                           ; $63BB: $27
    ld hl, sp-$08                                 ; $63BC: $F8 $F8
    ld [$F804], sp                                ; $63BE: $08 $04 $F8
    nop                                           ; $63C1: $00
    ld [$8024], sp                                ; $63C2: $08 $24 $80
    pop af                                        ; $63C5: $F1
    ld hl, sp+$02                                 ; $63C6: $F8 $02
    inc b                                         ; $63C8: $04
    pop af                                        ; $63C9: $F1
    nop                                           ; $63CA: $00
    ld [bc], a                                    ; $63CB: $02
    inc h                                         ; $63CC: $24
    nop                                           ; $63CD: $00
    rst $38                                       ; $63CE: $FF
    ld d, $27                                     ; $63CF: $16 $27
    nop                                           ; $63D1: $00
    rst $30                                       ; $63D2: $F7
    rla                                           ; $63D3: $17
    daa                                           ; $63D4: $27
    ld hl, sp-$08                                 ; $63D5: $F8 $F8
    inc c                                         ; $63D7: $0C
    inc b                                         ; $63D8: $04
    ld hl, sp+$00                                 ; $63D9: $F8 $00
    dec c                                         ; $63DB: $0D
    inc b                                         ; $63DC: $04
    add b                                         ; $63DD: $80
    pop af                                        ; $63DE: $F1
    ld hl, sp+$03                                 ; $63DF: $F8 $03
    inc b                                         ; $63E1: $04
    pop af                                        ; $63E2: $F1
    nop                                           ; $63E3: $00
    inc bc                                        ; $63E4: $03
    inc h                                         ; $63E5: $24
    ld hl, sp-$08                                 ; $63E6: $F8 $F8
    ld c, $04                                     ; $63E8: $0E $04
    ld hl, sp+$00                                 ; $63EA: $F8 $00
    rrca                                          ; $63EC: $0F
    inc b                                         ; $63ED: $04
    nop                                           ; $63EE: $00
    ld hl, sp+$18                                 ; $63EF: $F8 $18
    rlca                                          ; $63F1: $07
    nop                                           ; $63F2: $00
    nop                                           ; $63F3: $00
    add hl, de                                    ; $63F4: $19
    rlca                                          ; $63F5: $07
    add b                                         ; $63F6: $80
    ldh a, [$F8]                                  ; $63F7: $F0 $F8
    inc bc                                        ; $63F9: $03
    inc b                                         ; $63FA: $04
    ldh a, [rP1]                                  ; $63FB: $F0 $00
    inc bc                                        ; $63FD: $03
    inc h                                         ; $63FE: $24
    ld hl, sp-$08                                 ; $63FF: $F8 $F8
    add hl, bc                                    ; $6401: $09
    inc b                                         ; $6402: $04
    ld hl, sp+$00                                 ; $6403: $F8 $00
    add hl, bc                                    ; $6405: $09
    inc h                                         ; $6406: $24
    nop                                           ; $6407: $00
    ld hl, sp+$13                                 ; $6408: $F8 $13
    daa                                           ; $640A: $27
    nop                                           ; $640B: $00
    nop                                           ; $640C: $00
    inc de                                        ; $640D: $13
    rlca                                          ; $640E: $07
    add b                                         ; $640F: $80
    pop af                                        ; $6410: $F1
    ld hl, sp+$03                                 ; $6411: $F8 $03
    inc b                                         ; $6413: $04
    pop af                                        ; $6414: $F1
    nop                                           ; $6415: $00
    inc bc                                        ; $6416: $03
    inc h                                         ; $6417: $24
    ld hl, sp-$08                                 ; $6418: $F8 $F8
    ld c, $04                                     ; $641A: $0E $04
    ld hl, sp+$00                                 ; $641C: $F8 $00
    rrca                                          ; $641E: $0F
    inc b                                         ; $641F: $04
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    jr @+$29                                      ; $6422: $18 $27

    nop                                           ; $6424: $00
    ld hl, sp+$19                                 ; $6425: $F8 $19
    daa                                           ; $6427: $27
    add b                                         ; $6428: $80
    pop af                                        ; $6429: $F1
    ld hl, sp+$1A                                 ; $642A: $F8 $1A
    inc b                                         ; $642C: $04
    pop af                                        ; $642D: $F1
    nop                                           ; $642E: $00
    dec de                                        ; $642F: $1B
    inc b                                         ; $6430: $04
    ld hl, sp-$08                                 ; $6431: $F8 $F8
    inc e                                         ; $6433: $1C
    inc b                                         ; $6434: $04
    ld hl, sp+$00                                 ; $6435: $F8 $00
    dec e                                         ; $6437: $1D
    inc b                                         ; $6438: $04
    nop                                           ; $6439: $00
    ld hl, sp+$20                                 ; $643A: $F8 $20
    rlca                                          ; $643C: $07
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    ld hl, $8007                                  ; $643F: $21 $07 $80
    ldh a, [$F8]                                  ; $6442: $F0 $F8
    ld a, [de]                                    ; $6444: $1A
    inc b                                         ; $6445: $04
    ldh a, [rP1]                                  ; $6446: $F0 $00
    dec de                                        ; $6448: $1B
    inc b                                         ; $6449: $04
    ld hl, sp-$08                                 ; $644A: $F8 $F8
    ld e, $04                                     ; $644C: $1E $04
    ld hl, sp+$00                                 ; $644E: $F8 $00
    rra                                           ; $6450: $1F
    inc b                                         ; $6451: $04
    nop                                           ; $6452: $00
    ld hl, sp+$22                                 ; $6453: $F8 $22
    rlca                                          ; $6455: $07
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    inc hl                                        ; $6458: $23
    rlca                                          ; $6459: $07
    add b                                         ; $645A: $80
    pop af                                        ; $645B: $F1
    ld hl, sp+$1A                                 ; $645C: $F8 $1A
    inc b                                         ; $645E: $04
    pop af                                        ; $645F: $F1
    nop                                           ; $6460: $00
    dec de                                        ; $6461: $1B
    inc b                                         ; $6462: $04
    ld hl, sp-$08                                 ; $6463: $F8 $F8
    inc e                                         ; $6465: $1C
    inc b                                         ; $6466: $04
    ld hl, sp+$00                                 ; $6467: $F8 $00
    dec e                                         ; $6469: $1D
    inc b                                         ; $646A: $04
    nop                                           ; $646B: $00
    ld hl, sp+$20                                 ; $646C: $F8 $20
    rlca                                          ; $646E: $07
    nop                                           ; $646F: $00
    nop                                           ; $6470: $00
    ld hl, $8007                                  ; $6471: $21 $07 $80
    pop af                                        ; $6474: $F1
    nop                                           ; $6475: $00
    ld a, [de]                                    ; $6476: $1A
    inc h                                         ; $6477: $24
    pop af                                        ; $6478: $F1
    ld hl, sp+$1B                                 ; $6479: $F8 $1B
    inc h                                         ; $647B: $24
    ld hl, sp+$00                                 ; $647C: $F8 $00
    inc e                                         ; $647E: $1C
    inc h                                         ; $647F: $24
    ld hl, sp-$08                                 ; $6480: $F8 $F8
    dec e                                         ; $6482: $1D
    inc h                                         ; $6483: $24
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    jr nz, @+$29                                  ; $6486: $20 $27

    nop                                           ; $6488: $00
    ld hl, sp+$21                                 ; $6489: $F8 $21
    daa                                           ; $648B: $27
    add b                                         ; $648C: $80
    ldh a, [rP1]                                  ; $648D: $F0 $00
    ld a, [de]                                    ; $648F: $1A
    inc h                                         ; $6490: $24
    ldh a, [$F8]                                  ; $6491: $F0 $F8
    dec de                                        ; $6493: $1B
    inc h                                         ; $6494: $24
    ld hl, sp+$00                                 ; $6495: $F8 $00
    ld e, $24                                     ; $6497: $1E $24
    ld hl, sp-$08                                 ; $6499: $F8 $F8
    rra                                           ; $649B: $1F
    inc h                                         ; $649C: $24
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    ld [hl+], a                                   ; $649F: $22
    daa                                           ; $64A0: $27
    nop                                           ; $64A1: $00
    ld hl, sp+$23                                 ; $64A2: $F8 $23
    daa                                           ; $64A4: $27
    add b                                         ; $64A5: $80
    pop af                                        ; $64A6: $F1
    nop                                           ; $64A7: $00
    ld a, [de]                                    ; $64A8: $1A
    inc h                                         ; $64A9: $24
    pop af                                        ; $64AA: $F1
    ld hl, sp+$1B                                 ; $64AB: $F8 $1B
    inc h                                         ; $64AD: $24
    ld hl, sp+$00                                 ; $64AE: $F8 $00
    inc e                                         ; $64B0: $1C
    inc h                                         ; $64B1: $24
    ld hl, sp-$08                                 ; $64B2: $F8 $F8
    dec e                                         ; $64B4: $1D
    inc h                                         ; $64B5: $24
    nop                                           ; $64B6: $00
    nop                                           ; $64B7: $00
    jr nz, @+$29                                  ; $64B8: $20 $27

    nop                                           ; $64BA: $00
    ld hl, sp+$21                                 ; $64BB: $F8 $21
    daa                                           ; $64BD: $27
    add b                                         ; $64BE: $80
    ld c, l                                       ; $64BF: $4D
    ld [$0008], sp                                ; $64C0: $08 $08 $00
    rst $38                                       ; $64C3: $FF
    sbc $63                                       ; $64C4: $DE $63
    rst $30                                       ; $64C6: $F7
    ld h, e                                       ; $64C7: $63
    db $10                                        ; $64C8: $10
    ld h, h                                       ; $64C9: $64
    rst $30                                       ; $64CA: $F7
    ld h, e                                       ; $64CB: $63
    ld b, [hl]                                    ; $64CC: $46
    cp a                                          ; $64CD: $BF
    ld h, h                                       ; $64CE: $64
    ld c, l                                       ; $64CF: $4D
    ld [$0008], sp                                ; $64D0: $08 $08 $00
    ld bc, $6393                                  ; $64D3: $01 $93 $63
    xor h                                         ; $64D6: $AC
    ld h, e                                       ; $64D7: $63
    push bc                                       ; $64D8: $C5
    ld h, e                                       ; $64D9: $63
    xor h                                         ; $64DA: $AC
    ld h, e                                       ; $64DB: $63
    ld b, [hl]                                    ; $64DC: $46
    rst $08                                       ; $64DD: $CF
    ld h, h                                       ; $64DE: $64
    ld c, l                                       ; $64DF: $4D
    ld [$FF08], sp                                ; $64E0: $08 $08 $FF
    nop                                           ; $64E3: $00
    ld [hl], h                                    ; $64E4: $74
    ld h, h                                       ; $64E5: $64
    adc l                                         ; $64E6: $8D
    ld h, h                                       ; $64E7: $64
    and [hl]                                      ; $64E8: $A6
    ld h, h                                       ; $64E9: $64
    adc l                                         ; $64EA: $8D
    ld h, h                                       ; $64EB: $64
    ld b, [hl]                                    ; $64EC: $46
    rst $18                                       ; $64ED: $DF
    ld h, h                                       ; $64EE: $64
    ld c, l                                       ; $64EF: $4D
    ld [$0108], sp                                ; $64F0: $08 $08 $01
    nop                                           ; $64F3: $00
    add hl, hl                                    ; $64F4: $29
    ld h, h                                       ; $64F5: $64
    ld b, d                                       ; $64F6: $42
    ld h, h                                       ; $64F7: $64
    ld e, e                                       ; $64F8: $5B
    ld h, h                                       ; $64F9: $64
    ld b, d                                       ; $64FA: $42
    ld h, h                                       ; $64FB: $64
    ld b, [hl]                                    ; $64FC: $46
    rst $28                                       ; $64FD: $EF
    ld h, h                                       ; $64FE: $64
    ld c, l                                       ; $64FF: $4D
    ld [$0008], sp                                ; $6500: $08 $08 $00
    cp $DE                                        ; $6503: $FE $DE
    ld h, e                                       ; $6505: $63
    rst $30                                       ; $6506: $F7
    ld h, e                                       ; $6507: $63
    db $10                                        ; $6508: $10
    ld h, h                                       ; $6509: $64
    rst $30                                       ; $650A: $F7
    ld h, e                                       ; $650B: $63
    ld b, [hl]                                    ; $650C: $46
    rst $38                                       ; $650D: $FF
    ld h, h                                       ; $650E: $64
    ld c, l                                       ; $650F: $4D
    ld [$0008], sp                                ; $6510: $08 $08 $00
    ld [bc], a                                    ; $6513: $02
    sub e                                         ; $6514: $93
    ld h, e                                       ; $6515: $63
    xor h                                         ; $6516: $AC
    ld h, e                                       ; $6517: $63
    push bc                                       ; $6518: $C5
    ld h, e                                       ; $6519: $63
    xor h                                         ; $651A: $AC
    ld h, e                                       ; $651B: $63
    ld b, [hl]                                    ; $651C: $46
    rrca                                          ; $651D: $0F
    ld h, l                                       ; $651E: $65
    ld c, l                                       ; $651F: $4D
    ld [$FE08], sp                                ; $6520: $08 $08 $FE
    nop                                           ; $6523: $00
    ld [hl], h                                    ; $6524: $74
    ld h, h                                       ; $6525: $64
    adc l                                         ; $6526: $8D
    ld h, h                                       ; $6527: $64
    and [hl]                                      ; $6528: $A6
    ld h, h                                       ; $6529: $64
    adc l                                         ; $652A: $8D
    ld h, h                                       ; $652B: $64
    ld b, [hl]                                    ; $652C: $46
    rra                                           ; $652D: $1F
    ld h, l                                       ; $652E: $65
    ld c, l                                       ; $652F: $4D
    ld [$0208], sp                                ; $6530: $08 $08 $02
    nop                                           ; $6533: $00
    add hl, hl                                    ; $6534: $29
    ld h, h                                       ; $6535: $64
    ld b, d                                       ; $6536: $42
    ld h, h                                       ; $6537: $64
    ld e, e                                       ; $6538: $5B
    ld h, h                                       ; $6539: $64
    ld b, d                                       ; $653A: $42
    ld h, h                                       ; $653B: $64
    ld b, [hl]                                    ; $653C: $46
    cpl                                           ; $653D: $2F
    ld h, l                                       ; $653E: $65
    ld c, h                                       ; $653F: $4C
    rst $38                                       ; $6540: $FF
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    rst $30                                       ; $6543: $F7
    ld h, e                                       ; $6544: $63
    nop                                           ; $6545: $00
    ld b, [hl]                                    ; $6546: $46
    ccf                                           ; $6547: $3F
    ld h, l                                       ; $6548: $65
    ld c, h                                       ; $6549: $4C
    rst $38                                       ; $654A: $FF
    nop                                           ; $654B: $00
    nop                                           ; $654C: $00
    xor h                                         ; $654D: $AC
    ld h, e                                       ; $654E: $63
    nop                                           ; $654F: $00
    ld b, [hl]                                    ; $6550: $46
    ld c, c                                       ; $6551: $49
    ld h, l                                       ; $6552: $65
    ld c, h                                       ; $6553: $4C
    rst $38                                       ; $6554: $FF
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    adc l                                         ; $6557: $8D
    ld h, h                                       ; $6558: $64
    nop                                           ; $6559: $00
    ld b, [hl]                                    ; $655A: $46
    ld d, e                                       ; $655B: $53
    ld h, l                                       ; $655C: $65
    ld c, h                                       ; $655D: $4C
    rst $38                                       ; $655E: $FF
    nop                                           ; $655F: $00
    nop                                           ; $6560: $00
    ld b, d                                       ; $6561: $42
    ld h, h                                       ; $6562: $64
    nop                                           ; $6563: $00
    ld b, [hl]                                    ; $6564: $46
    ld e, l                                       ; $6565: $5D
    ld h, l                                       ; $6566: $65
    ld c, h                                       ; $6567: $4C
    rst $38                                       ; $6568: $FF
    nop                                           ; $6569: $00
    nop                                           ; $656A: $00
    ld a, d                                       ; $656B: $7A
    ld h, e                                       ; $656C: $63
    nop                                           ; $656D: $00
    ld b, [hl]                                    ; $656E: $46
    ld h, a                                       ; $656F: $67
    ld h, l                                       ; $6570: $65
    ld c, h                                       ; $6571: $4C
    rst $38                                       ; $6572: $FF
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    ld h, c                                       ; $6575: $61
    ld h, e                                       ; $6576: $63
    nop                                           ; $6577: $00
    ld b, [hl]                                    ; $6578: $46
    ld [hl], c                                    ; $6579: $71
    ld h, l                                       ; $657A: $65
    ld c, h                                       ; $657B: $4C
    rst $38                                       ; $657C: $FF
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    ld c, b                                       ; $657F: $48
    ld h, e                                       ; $6580: $63
    nop                                           ; $6581: $00
    ld b, [hl]                                    ; $6582: $46
    ld a, e                                       ; $6583: $7B
    ld h, l                                       ; $6584: $65
    ld c, h                                       ; $6585: $4C
    rst $38                                       ; $6586: $FF
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    cpl                                           ; $6589: $2F
    ld h, e                                       ; $658A: $63
    nop                                           ; $658B: $00
    ld b, [hl]                                    ; $658C: $46
    add l                                         ; $658D: $85
    ld h, l                                       ; $658E: $65
    ld c, e                                       ; $658F: $4B
    inc bc                                        ; $6590: $03
    rrca                                          ; $6591: $0F
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    and [hl]                                      ; $6594: $A6
    ld h, l                                       ; $6595: $65
    rrca                                          ; $6596: $0F
    inc bc                                        ; $6597: $03
    nop                                           ; $6598: $00
    xor l                                         ; $6599: $AD
    ld h, l                                       ; $659A: $65
    rrca                                          ; $659B: $0F
    ld [bc], a                                    ; $659C: $02
    nop                                           ; $659D: $00
    cp e                                          ; $659E: $BB
    ld h, l                                       ; $659F: $65
    rrca                                          ; $65A0: $0F
    ld bc, $B400                                  ; $65A1: $01 $00 $B4
    ld h, l                                       ; $65A4: $65
    rst $38                                       ; $65A5: $FF
    inc d                                         ; $65A6: $14
    rrca                                          ; $65A7: $0F
    ccf                                           ; $65A8: $3F
    ld h, l                                       ; $65A9: $65
    ld h, d                                       ; $65AA: $62
    ld bc, $1412                                  ; $65AB: $01 $12 $14
    rrca                                          ; $65AE: $0F
    ld c, c                                       ; $65AF: $49
    ld h, l                                       ; $65B0: $65
    ld h, d                                       ; $65B1: $62
    ld bc, $1412                                  ; $65B2: $01 $12 $14
    rrca                                          ; $65B5: $0F
    ld d, e                                       ; $65B6: $53
    ld h, l                                       ; $65B7: $65
    ld h, d                                       ; $65B8: $62
    ld bc, $1412                                  ; $65B9: $01 $12 $14
    rrca                                          ; $65BC: $0F
    ld e, l                                       ; $65BD: $5D
    ld h, l                                       ; $65BE: $65
    ld h, d                                       ; $65BF: $62
    ld bc, $F012                                  ; $65C0: $01 $12 $F0
    ld hl, sp+$04                                 ; $65C3: $F8 $04
    nop                                           ; $65C5: $00
    ldh a, [rP1]                                  ; $65C6: $F0 $00
    dec b                                         ; $65C8: $05
    nop                                           ; $65C9: $00
    ld hl, sp-$08                                 ; $65CA: $F8 $F8
    stop                                          ; $65CC: $10 $00
    ld hl, sp+$00                                 ; $65CE: $F8 $00

jr_00F_65D0:
    ld de, $0000                                  ; $65D0: $11 $00 $00
    ld hl, sp+$19                                 ; $65D3: $F8 $19
    dec b                                         ; $65D5: $05
    nop                                           ; $65D6: $00
    nop                                           ; $65D7: $00
    ld a, [de]                                    ; $65D8: $1A
    dec b                                         ; $65D9: $05
    add b                                         ; $65DA: $80
    ldh a, [rP1]                                  ; $65DB: $F0 $00
    inc b                                         ; $65DD: $04
    jr nz, jr_00F_65D0                            ; $65DE: $20 $F0

jr_00F_65E0:
    ld hl, sp+$05                                 ; $65E0: $F8 $05
    jr nz, @-$06                                  ; $65E2: $20 $F8

    nop                                           ; $65E4: $00
    db $10                                        ; $65E5: $10
    jr nz, jr_00F_65E0                            ; $65E6: $20 $F8

    ld hl, sp+$11                                 ; $65E8: $F8 $11
    jr nz, jr_00F_65EC                            ; $65EA: $20 $00

jr_00F_65EC:
    nop                                           ; $65EC: $00
    add hl, de                                    ; $65ED: $19
    dec h                                         ; $65EE: $25
    nop                                           ; $65EF: $00
    ld hl, sp+$1A                                 ; $65F0: $F8 $1A
    dec h                                         ; $65F2: $25
    add b                                         ; $65F3: $80
    ldh a, [$F8]                                  ; $65F4: $F0 $F8
    ld a, [bc]                                    ; $65F6: $0A
    nop                                           ; $65F7: $00
    ldh a, [rP1]                                  ; $65F8: $F0 $00

jr_00F_65FA:
    dec bc                                        ; $65FA: $0B
    nop                                           ; $65FB: $00
    ld hl, sp-$03                                 ; $65FC: $F8 $FD
    inc d                                         ; $65FE: $14
    nop                                           ; $65FF: $00
    nop                                           ; $6600: $00
    cp $1D                                        ; $6601: $FE $1D
    dec b                                         ; $6603: $05
    add b                                         ; $6604: $80
    ldh a, [rP1]                                  ; $6605: $F0 $00
    ld a, [bc]                                    ; $6607: $0A
    jr nz, jr_00F_65FA                            ; $6608: $20 $F0

    ld hl, sp+$0B                                 ; $660A: $F8 $0B
    jr nz, @-$06                                  ; $660C: $20 $F8

    ei                                            ; $660E: $FB
    inc d                                         ; $660F: $14
    jr nz, jr_00F_6612                            ; $6610: $20 $00

jr_00F_6612:
    ld a, [$251D]                                 ; $6612: $FA $1D $25
    add b                                         ; $6615: $80
    pop af                                        ; $6616: $F1
    ld hl, sp+$06                                 ; $6617: $F8 $06
    nop                                           ; $6619: $00
    pop af                                        ; $661A: $F1
    nop                                           ; $661B: $00

jr_00F_661C:
    rlca                                          ; $661C: $07
    nop                                           ; $661D: $00
    ld hl, sp-$08                                 ; $661E: $F8 $F8
    ld c, $00                                     ; $6620: $0E $00
    ld hl, sp+$00                                 ; $6622: $F8 $00
    rrca                                          ; $6624: $0F
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    db $FC                                        ; $6627: $FC
    jr jr_00F_662F                                ; $6628: $18 $05

    add b                                         ; $662A: $80
    ldh a, [$F8]                                  ; $662B: $F0 $F8
    ld b, $00                                     ; $662D: $06 $00

jr_00F_662F:
    ldh a, [rP1]                                  ; $662F: $F0 $00
    rlca                                          ; $6631: $07
    nop                                           ; $6632: $00
    ld hl, sp+$00                                 ; $6633: $F8 $00
    ld [de], a                                    ; $6635: $12
    nop                                           ; $6636: $00
    ld hl, sp-$08                                 ; $6637: $F8 $F8
    ld [de], a                                    ; $6639: $12
    jr nz, jr_00F_663C                            ; $663A: $20 $00

jr_00F_663C:
    nop                                           ; $663C: $00
    dec de                                        ; $663D: $1B
    dec b                                         ; $663E: $05
    nop                                           ; $663F: $00
    ld sp, hl                                     ; $6640: $F9
    dec de                                        ; $6641: $1B
    dec h                                         ; $6642: $25
    add b                                         ; $6643: $80
    pop af                                        ; $6644: $F1
    ld hl, sp+$06                                 ; $6645: $F8 $06
    nop                                           ; $6647: $00
    pop af                                        ; $6648: $F1
    nop                                           ; $6649: $00
    rlca                                          ; $664A: $07
    nop                                           ; $664B: $00
    ld hl, sp+$00                                 ; $664C: $F8 $00
    ld c, $20                                     ; $664E: $0E $20
    ld hl, sp-$08                                 ; $6650: $F8 $F8
    rrca                                          ; $6652: $0F
    jr nz, jr_00F_6655                            ; $6653: $20 $00

jr_00F_6655:
    db $FC                                        ; $6655: $FC
    jr jr_00F_667D                                ; $6656: $18 $25

    add b                                         ; $6658: $80
    ld hl, sp-$08                                 ; $6659: $F8 $F8
    inc c                                         ; $665B: $0C
    nop                                           ; $665C: $00
    ld hl, sp+$00                                 ; $665D: $F8 $00
    dec c                                         ; $665F: $0D
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    db $FC                                        ; $6662: $FC
    rla                                           ; $6663: $17
    dec b                                         ; $6664: $05
    ldh a, [$F8]                                  ; $6665: $F0 $F8
    nop                                           ; $6667: $00
    nop                                           ; $6668: $00
    ldh a, [rP1]                                  ; $6669: $F0 $00
    ld bc, $8000                                  ; $666B: $01 $00 $80
    ldh a, [$F8]                                  ; $666E: $F0 $F8
    ld [$F000], sp                                ; $6670: $08 $00 $F0
    nop                                           ; $6673: $00
    add hl, bc                                    ; $6674: $09
    nop                                           ; $6675: $00
    ld hl, sp+$00                                 ; $6676: $F8 $00
    inc de                                        ; $6678: $13
    nop                                           ; $6679: $00
    ld hl, sp-$08                                 ; $667A: $F8 $F8
    inc de                                        ; $667C: $13

jr_00F_667D:
    jr nz, jr_00F_667F                            ; $667D: $20 $00

jr_00F_667F:
    nop                                           ; $667F: $00
    inc e                                         ; $6680: $1C
    dec b                                         ; $6681: $05
    nop                                           ; $6682: $00
    ld sp, hl                                     ; $6683: $F9

jr_00F_6684:
    inc e                                         ; $6684: $1C
    dec h                                         ; $6685: $25
    add b                                         ; $6686: $80
    ld hl, sp+$00                                 ; $6687: $F8 $00
    inc c                                         ; $6689: $0C
    jr nz, jr_00F_6684                            ; $668A: $20 $F8

    ld hl, sp+$0D                                 ; $668C: $F8 $0D
    jr nz, jr_00F_6690                            ; $668E: $20 $00

jr_00F_6690:
    db $FC                                        ; $6690: $FC
    rla                                           ; $6691: $17
    dec h                                         ; $6692: $25
    ldh a, [rP1]                                  ; $6693: $F0 $00
    nop                                           ; $6695: $00
    jr nz, @-$0E                                  ; $6696: $20 $F0

    ld hl, sp+$01                                 ; $6698: $F8 $01
    jr nz, jr_00F_661C                            ; $669A: $20 $80

    pop af                                        ; $669C: $F1
    ld hl, sp+$15                                 ; $669D: $F8 $15
    nop                                           ; $669F: $00
    pop af                                        ; $66A0: $F1
    nop                                           ; $66A1: $00
    ld d, $00                                     ; $66A2: $16 $00
    ld hl, sp-$04                                 ; $66A4: $F8 $FC
    ld e, $00                                     ; $66A6: $1E $00
    nop                                           ; $66A8: $00
    ld hl, sp+$21                                 ; $66A9: $F8 $21
    dec b                                         ; $66AB: $05
    nop                                           ; $66AC: $00
    nop                                           ; $66AD: $00
    ld [hl+], a                                   ; $66AE: $22
    dec b                                         ; $66AF: $05
    add b                                         ; $66B0: $80

    db $F0, $F8, $15, $00, $F0, $00, $16, $00, $F8, $FD, $1F, $00, $00, $FD, $23, $05
    db $80

    pop af                                        ; $66C2: $F1
    ld hl, sp+$15                                 ; $66C3: $F8 $15
    nop                                           ; $66C5: $00
    pop af                                        ; $66C6: $F1
    nop                                           ; $66C7: $00
    ld d, $00                                     ; $66C8: $16 $00
    nop                                           ; $66CA: $00
    ld hl, sp+$24                                 ; $66CB: $F8 $24

jr_00F_66CD:
    dec b                                         ; $66CD: $05
    nop                                           ; $66CE: $00
    nop                                           ; $66CF: $00
    dec h                                         ; $66D0: $25
    dec b                                         ; $66D1: $05
    ld hl, sp-$04                                 ; $66D2: $F8 $FC
    jr nz, jr_00F_66D6                            ; $66D4: $20 $00

jr_00F_66D6:
    add b                                         ; $66D6: $80
    pop af                                        ; $66D7: $F1

jr_00F_66D8:
    nop                                           ; $66D8: $00
    dec d                                         ; $66D9: $15
    jr nz, jr_00F_66CD                            ; $66DA: $20 $F1

    ld hl, sp+$16                                 ; $66DC: $F8 $16
    jr nz, jr_00F_66D8                            ; $66DE: $20 $F8

    db $FC                                        ; $66E0: $FC

jr_00F_66E1:
    ld e, $20                                     ; $66E1: $1E $20
    nop                                           ; $66E3: $00
    nop                                           ; $66E4: $00
    ld hl, $0025                                  ; $66E5: $21 $25 $00
    ld hl, sp+$22                                 ; $66E8: $F8 $22
    dec h                                         ; $66EA: $25
    add b                                         ; $66EB: $80
    ldh a, [rP1]                                  ; $66EC: $F0 $00
    dec d                                         ; $66EE: $15
    jr nz, jr_00F_66E1                            ; $66EF: $20 $F0

    ld hl, sp+$16                                 ; $66F1: $F8 $16

jr_00F_66F3:
    jr nz, @-$06                                  ; $66F3: $20 $F8

    ei                                            ; $66F5: $FB
    rra                                           ; $66F6: $1F
    jr nz, jr_00F_66F9                            ; $66F7: $20 $00

jr_00F_66F9:
    ei                                            ; $66F9: $FB
    inc hl                                        ; $66FA: $23
    dec h                                         ; $66FB: $25
    add b                                         ; $66FC: $80
    pop af                                        ; $66FD: $F1
    nop                                           ; $66FE: $00
    dec d                                         ; $66FF: $15
    jr nz, jr_00F_66F3                            ; $6700: $20 $F1

    ld hl, sp+$16                                 ; $6702: $F8 $16
    jr nz, jr_00F_6706                            ; $6704: $20 $00

jr_00F_6706:
    nop                                           ; $6706: $00
    inc h                                         ; $6707: $24
    dec h                                         ; $6708: $25
    nop                                           ; $6709: $00
    ld hl, sp+$25                                 ; $670A: $F8 $25
    dec h                                         ; $670C: $25
    ld hl, sp-$04                                 ; $670D: $F8 $FC
    jr nz, jr_00F_6731                            ; $670F: $20 $20

    add b                                         ; $6711: $80
    ld c, l                                       ; $6712: $4D
    ld [$0008], sp                                ; $6713: $08 $08 $00
    rst $38                                       ; $6716: $FF
    ld e, c                                       ; $6717: $59
    ld h, [hl]                                    ; $6718: $66
    ld l, [hl]                                    ; $6719: $6E
    ld h, [hl]                                    ; $671A: $66
    add a                                         ; $671B: $87
    ld h, [hl]                                    ; $671C: $66
    ld l, [hl]                                    ; $671D: $6E
    ld h, [hl]                                    ; $671E: $66
    ld b, [hl]                                    ; $671F: $46
    ld [de], a                                    ; $6720: $12
    ld h, a                                       ; $6721: $67
    ld c, l                                       ; $6722: $4D
    ld [$0008], sp                                ; $6723: $08 $08 $00
    ld bc, $6616                                  ; $6726: $01 $16 $66
    dec hl                                        ; $6729: $2B
    ld h, [hl]                                    ; $672A: $66
    ld b, h                                       ; $672B: $44
    ld h, [hl]                                    ; $672C: $66
    dec hl                                        ; $672D: $2B
    ld h, [hl]                                    ; $672E: $66
    ld b, [hl]                                    ; $672F: $46
    ld [hl+], a                                   ; $6730: $22

jr_00F_6731:
    ld h, a                                       ; $6731: $67
    ld c, l                                       ; $6732: $4D
    ld [$FF08], sp                                ; $6733: $08 $08 $FF
    nop                                           ; $6736: $00
    rst $10                                       ; $6737: $D7
    ld h, [hl]                                    ; $6738: $66
    db $EC                                        ; $6739: $EC
    ld h, [hl]                                    ; $673A: $66
    db $FD                                        ; $673B: $FD
    ld h, [hl]                                    ; $673C: $66
    db $EC                                        ; $673D: $EC
    ld h, [hl]                                    ; $673E: $66
    ld b, [hl]                                    ; $673F: $46
    ld [hl-], a                                   ; $6740: $32
    ld h, a                                       ; $6741: $67
    ld c, l                                       ; $6742: $4D
    ld [$0108], sp                                ; $6743: $08 $08 $01
    nop                                           ; $6746: $00
    sbc h                                         ; $6747: $9C
    ld h, [hl]                                    ; $6748: $66
    or c                                          ; $6749: $B1
    ld h, [hl]                                    ; $674A: $66
    jp nz, $B166                                  ; $674B: $C2 $66 $B1

    ld h, [hl]                                    ; $674E: $66
    ld b, [hl]                                    ; $674F: $46
    ld b, d                                       ; $6750: $42
    ld h, a                                       ; $6751: $67
    ld c, l                                       ; $6752: $4D
    ld [$0008], sp                                ; $6753: $08 $08 $00
    cp $59                                        ; $6756: $FE $59
    ld h, [hl]                                    ; $6758: $66
    ld l, [hl]                                    ; $6759: $6E
    ld h, [hl]                                    ; $675A: $66
    add a                                         ; $675B: $87
    ld h, [hl]                                    ; $675C: $66
    ld l, [hl]                                    ; $675D: $6E
    ld h, [hl]                                    ; $675E: $66
    ld b, [hl]                                    ; $675F: $46
    ld d, d                                       ; $6760: $52
    ld h, a                                       ; $6761: $67
    ld c, l                                       ; $6762: $4D
    ld [$0008], sp                                ; $6763: $08 $08 $00
    ld [bc], a                                    ; $6766: $02
    ld d, $66                                     ; $6767: $16 $66
    dec hl                                        ; $6769: $2B
    ld h, [hl]                                    ; $676A: $66
    ld b, h                                       ; $676B: $44
    ld h, [hl]                                    ; $676C: $66
    dec hl                                        ; $676D: $2B
    ld h, [hl]                                    ; $676E: $66
    ld b, [hl]                                    ; $676F: $46
    ld h, d                                       ; $6770: $62
    ld h, a                                       ; $6771: $67
    ld c, l                                       ; $6772: $4D
    ld [$FE08], sp                                ; $6773: $08 $08 $FE
    nop                                           ; $6776: $00
    rst $10                                       ; $6777: $D7
    ld h, [hl]                                    ; $6778: $66
    db $EC                                        ; $6779: $EC
    ld h, [hl]                                    ; $677A: $66
    db $FD                                        ; $677B: $FD
    ld h, [hl]                                    ; $677C: $66
    db $EC                                        ; $677D: $EC
    ld h, [hl]                                    ; $677E: $66
    ld b, [hl]                                    ; $677F: $46
    ld [hl], d                                    ; $6780: $72
    ld h, a                                       ; $6781: $67
    ld c, l                                       ; $6782: $4D
    ld [$0208], sp                                ; $6783: $08 $08 $02
    nop                                           ; $6786: $00
    sbc h                                         ; $6787: $9C
    ld h, [hl]                                    ; $6788: $66
    or c                                          ; $6789: $B1
    ld h, [hl]                                    ; $678A: $66
    jp nz, $B166                                  ; $678B: $C2 $66 $B1

    ld h, [hl]                                    ; $678E: $66
    ld b, [hl]                                    ; $678F: $46
    add d                                         ; $6790: $82
    ld h, a                                       ; $6791: $67
    ld c, h                                       ; $6792: $4C
    rst $38                                       ; $6793: $FF
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    ld l, [hl]                                    ; $6796: $6E
    ld h, [hl]                                    ; $6797: $66
    nop                                           ; $6798: $00
    ld b, [hl]                                    ; $6799: $46
    sub d                                         ; $679A: $92
    ld h, a                                       ; $679B: $67
    ld c, h                                       ; $679C: $4C
    rst $38                                       ; $679D: $FF
    nop                                           ; $679E: $00
    nop                                           ; $679F: $00
    dec hl                                        ; $67A0: $2B
    ld h, [hl]                                    ; $67A1: $66
    nop                                           ; $67A2: $00
    ld b, [hl]                                    ; $67A3: $46
    sbc h                                         ; $67A4: $9C
    ld h, a                                       ; $67A5: $67
    ld c, h                                       ; $67A6: $4C
    rst $38                                       ; $67A7: $FF
    nop                                           ; $67A8: $00
    nop                                           ; $67A9: $00
    db $EC                                        ; $67AA: $EC
    ld h, [hl]                                    ; $67AB: $66
    nop                                           ; $67AC: $00
    ld b, [hl]                                    ; $67AD: $46
    and [hl]                                      ; $67AE: $A6
    ld h, a                                       ; $67AF: $67

    db $4C, $FF, $00, $00, $B1, $66, $00, $46, $B0, $67

    ld c, h                                       ; $67BA: $4C
    rst $38                                       ; $67BB: $FF
    nop                                           ; $67BC: $00
    nop                                           ; $67BD: $00
    dec b                                         ; $67BE: $05
    ld h, [hl]                                    ; $67BF: $66
    nop                                           ; $67C0: $00
    ld b, [hl]                                    ; $67C1: $46
    cp d                                          ; $67C2: $BA
    ld h, a                                       ; $67C3: $67
    ld c, h                                       ; $67C4: $4C
    rst $38                                       ; $67C5: $FF
    nop                                           ; $67C6: $00
    nop                                           ; $67C7: $00
    db $F4                                        ; $67C8: $F4
    ld h, l                                       ; $67C9: $65
    nop                                           ; $67CA: $00
    ld b, [hl]                                    ; $67CB: $46
    call nz, Call_00F_4C67                        ; $67CC: $C4 $67 $4C
    rst $38                                       ; $67CF: $FF
    nop                                           ; $67D0: $00
    nop                                           ; $67D1: $00
    db $DB                                        ; $67D2: $DB
    ld h, l                                       ; $67D3: $65
    nop                                           ; $67D4: $00
    ld b, [hl]                                    ; $67D5: $46
    adc $67                                       ; $67D6: $CE $67
    ld c, h                                       ; $67D8: $4C
    rst $38                                       ; $67D9: $FF
    nop                                           ; $67DA: $00
    nop                                           ; $67DB: $00
    jp nz, $0065                                  ; $67DC: $C2 $65 $00

    ld b, [hl]                                    ; $67DF: $46
    ret c                                         ; $67E0: $D8

    ld h, a                                       ; $67E1: $67
    ld c, e                                       ; $67E2: $4B
    inc bc                                        ; $67E3: $03
    rrca                                          ; $67E4: $0F
    nop                                           ; $67E5: $00
    nop                                           ; $67E6: $00
    ld sp, hl                                     ; $67E7: $F9
    ld h, a                                       ; $67E8: $67
    rrca                                          ; $67E9: $0F
    inc bc                                        ; $67EA: $03
    nop                                           ; $67EB: $00
    nop                                           ; $67EC: $00
    ld l, b                                       ; $67ED: $68
    rrca                                          ; $67EE: $0F
    ld [bc], a                                    ; $67EF: $02
    nop                                           ; $67F0: $00
    ld c, $68                                     ; $67F1: $0E $68
    rrca                                          ; $67F3: $0F
    ld bc, $0700                                  ; $67F4: $01 $00 $07
    ld l, b                                       ; $67F7: $68
    rst $38                                       ; $67F8: $FF
    inc d                                         ; $67F9: $14
    rrca                                          ; $67FA: $0F
    sub d                                         ; $67FB: $92
    ld h, a                                       ; $67FC: $67
    ld h, d                                       ; $67FD: $62
    ld bc, $1412                                  ; $67FE: $01 $12 $14
    rrca                                          ; $6801: $0F
    sbc h                                         ; $6802: $9C
    ld h, a                                       ; $6803: $67
    ld h, d                                       ; $6804: $62
    ld bc, $1412                                  ; $6805: $01 $12 $14
    rrca                                          ; $6808: $0F
    and [hl]                                      ; $6809: $A6
    ld h, a                                       ; $680A: $67
    ld h, d                                       ; $680B: $62
    ld bc, $1412                                  ; $680C: $01 $12 $14
    rrca                                          ; $680F: $0F
    or b                                          ; $6810: $B0
    ld h, a                                       ; $6811: $67
    ld h, d                                       ; $6812: $62
    ld bc, $F012                                  ; $6813: $01 $12 $F0
    ld hl, sp+$00                                 ; $6816: $F8 $00
    ld b, $F0                                     ; $6818: $06 $F0
    nop                                           ; $681A: $00
    ld bc, $F806                                  ; $681B: $01 $06 $F8
    ld hl, sp+$08                                 ; $681E: $F8 $08
    ld b, $F8                                     ; $6820: $06 $F8
    nop                                           ; $6822: $00
    add hl, bc                                    ; $6823: $09
    ld b, $00                                     ; $6824: $06 $00
    ld hl, sp+$14                                 ; $6826: $F8 $14
    ld b, $00                                     ; $6828: $06 $00
    nop                                           ; $682A: $00
    dec d                                         ; $682B: $15
    ld b, $80                                     ; $682C: $06 $80
    ldh a, [rP1]                                  ; $682E: $F0 $00
    nop                                           ; $6830: $00
    ld h, $F0                                     ; $6831: $26 $F0
    ld hl, sp+$01                                 ; $6833: $F8 $01
    ld h, $F8                                     ; $6835: $26 $F8
    nop                                           ; $6837: $00
    ld [$F826], sp                                ; $6838: $08 $26 $F8
    ld hl, sp+$09                                 ; $683B: $F8 $09
    ld h, $00                                     ; $683D: $26 $00
    nop                                           ; $683F: $00
    inc d                                         ; $6840: $14
    ld h, $00                                     ; $6841: $26 $00
    ld hl, sp+$15                                 ; $6843: $F8 $15
    ld h, $80                                     ; $6845: $26 $80
    ldh a, [$F8]                                  ; $6847: $F0 $F8
    ld b, $06                                     ; $6849: $06 $06
    ldh a, [rP1]                                  ; $684B: $F0 $00
    rlca                                          ; $684D: $07
    ld b, $F8                                     ; $684E: $06 $F8
    ld hl, sp+$0E                                 ; $6850: $F8 $0E
    ld b, $F8                                     ; $6852: $06 $F8
    nop                                           ; $6854: $00
    rrca                                          ; $6855: $0F
    ld b, $00                                     ; $6856: $06 $00
    cp $1A                                        ; $6858: $FE $1A
    ld b, $80                                     ; $685A: $06 $80
    ld hl, sp+$00                                 ; $685C: $F8 $00
    ld c, $26                                     ; $685E: $0E $26
    ld hl, sp-$08                                 ; $6860: $F8 $F8
    rrca                                          ; $6862: $0F
    ld h, $00                                     ; $6863: $26 $00
    ld a, [$261A]                                 ; $6865: $FA $1A $26
    ldh a, [rP1]                                  ; $6868: $F0 $00
    ld b, $26                                     ; $686A: $06 $26
    ldh a, [$F8]                                  ; $686C: $F0 $F8
    rlca                                          ; $686E: $07
    ld h, $80                                     ; $686F: $26 $80
    ld hl, sp-$08                                 ; $6871: $F8 $F8
    db $10                                        ; $6873: $10
    ld b, $F8                                     ; $6874: $06 $F8
    nop                                           ; $6876: $00
    ld de, $0006                                  ; $6877: $11 $06 $00
    db $FC                                        ; $687A: $FC
    dec de                                        ; $687B: $1B
    ld b, $F1                                     ; $687C: $06 $F1
    ld hl, sp+$02                                 ; $687E: $F8 $02
    ld b, $F1                                     ; $6880: $06 $F1
    nop                                           ; $6882: $00
    inc bc                                        ; $6883: $03
    ld b, $80                                     ; $6884: $06 $80
    ld hl, sp-$08                                 ; $6886: $F8 $F8
    ld a, [bc]                                    ; $6888: $0A
    ld b, $F8                                     ; $6889: $06 $F8
    nop                                           ; $688B: $00
    dec bc                                        ; $688C: $0B
    ld b, $00                                     ; $688D: $06 $00
    ld hl, sp+$16                                 ; $688F: $F8 $16
    ld b, $00                                     ; $6891: $06 $00
    nop                                           ; $6893: $00
    rla                                           ; $6894: $17
    ld b, $F0                                     ; $6895: $06 $F0
    ld hl, sp+$02                                 ; $6897: $F8 $02
    ld b, $F0                                     ; $6899: $06 $F0
    nop                                           ; $689B: $00
    inc bc                                        ; $689C: $03
    ld b, $80                                     ; $689D: $06 $80
    ld hl, sp-$08                                 ; $689F: $F8 $F8
    ld a, [hl+]                                   ; $68A1: $2A
    ld b, $F8                                     ; $68A2: $06 $F8
    nop                                           ; $68A4: $00
    dec hl                                        ; $68A5: $2B
    ld b, $00                                     ; $68A6: $06 $00
    ld hl, sp+$2C                                 ; $68A8: $F8 $2C
    ld b, $00                                     ; $68AA: $06 $00
    nop                                           ; $68AC: $00
    dec l                                         ; $68AD: $2D
    ld b, $F1                                     ; $68AE: $06 $F1
    ld hl, sp+$02                                 ; $68B0: $F8 $02
    ld b, $F1                                     ; $68B2: $06 $F1
    nop                                           ; $68B4: $00
    inc bc                                        ; $68B5: $03
    ld b, $80                                     ; $68B6: $06 $80
    pop af                                        ; $68B8: $F1
    ld hl, sp+$02                                 ; $68B9: $F8 $02
    ld b, $F1                                     ; $68BB: $06 $F1
    nop                                           ; $68BD: $00
    inc bc                                        ; $68BE: $03
    ld b, $00                                     ; $68BF: $06 $00
    db $FC                                        ; $68C1: $FC
    inc e                                         ; $68C2: $1C
    ld b, $F8                                     ; $68C3: $06 $F8
    ld hl, sp+$12                                 ; $68C5: $F8 $12
    ld b, $F8                                     ; $68C7: $06 $F8
    nop                                           ; $68C9: $00
    inc de                                        ; $68CA: $13
    ld b, $80                                     ; $68CB: $06 $80
    ldh a, [$F8]                                  ; $68CD: $F0 $F8
    ld [bc], a                                    ; $68CF: $02
    ld b, $F0                                     ; $68D0: $06 $F0
    nop                                           ; $68D2: $00
    inc bc                                        ; $68D3: $03
    ld b, $F8                                     ; $68D4: $06 $F8
    ld hl, sp+$0C                                 ; $68D6: $F8 $0C
    ld b, $F8                                     ; $68D8: $06 $F8
    nop                                           ; $68DA: $00
    dec c                                         ; $68DB: $0D
    ld b, $00                                     ; $68DC: $06 $00
    ld hl, sp+$18                                 ; $68DE: $F8 $18
    ld b, $00                                     ; $68E0: $06 $00
    nop                                           ; $68E2: $00
    add hl, de                                    ; $68E3: $19
    ld b, $80                                     ; $68E4: $06 $80
    pop af                                        ; $68E6: $F1
    ld hl, sp+$02                                 ; $68E7: $F8 $02
    ld b, $F1                                     ; $68E9: $06 $F1
    nop                                           ; $68EB: $00
    inc bc                                        ; $68EC: $03
    ld b, $00                                     ; $68ED: $06 $00
    db $FC                                        ; $68EF: $FC
    inc e                                         ; $68F0: $1C
    ld h, $F8                                     ; $68F1: $26 $F8
    ld hl, sp+$2E                                 ; $68F3: $F8 $2E
    ld b, $F8                                     ; $68F5: $06 $F8
    nop                                           ; $68F7: $00
    cpl                                           ; $68F8: $2F
    ld b, $80                                     ; $68F9: $06 $80
    pop af                                        ; $68FB: $F1
    ld hl, sp+$1D                                 ; $68FC: $F8 $1D
    ld b, $F1                                     ; $68FE: $06 $F1
    nop                                           ; $6900: $00
    ld e, $06                                     ; $6901: $1E $06
    ld hl, sp-$08                                 ; $6903: $F8 $F8
    rra                                           ; $6905: $1F
    ld b, $F8                                     ; $6906: $06 $F8
    nop                                           ; $6908: $00
    jr nz, jr_00F_6911                            ; $6909: $20 $06

    nop                                           ; $690B: $00
    ld hl, sp+$25                                 ; $690C: $F8 $25
    ld b, $00                                     ; $690E: $06 $00
    nop                                           ; $6910: $00

jr_00F_6911:
    ld h, $06                                     ; $6911: $26 $06
    add b                                         ; $6913: $80
    ldh a, [$F8]                                  ; $6914: $F0 $F8
    dec e                                         ; $6916: $1D
    ld b, $F0                                     ; $6917: $06 $F0
    nop                                           ; $6919: $00
    ld e, $06                                     ; $691A: $1E $06
    ld hl, sp-$08                                 ; $691C: $F8 $F8
    ld hl, $F806                                  ; $691E: $21 $06 $F8
    nop                                           ; $6921: $00
    ld [hl+], a                                   ; $6922: $22
    ld b, $00                                     ; $6923: $06 $00
    db $FD                                        ; $6925: $FD
    daa                                           ; $6926: $27
    ld b, $80                                     ; $6927: $06 $80
    pop af                                        ; $6929: $F1
    ld hl, sp+$1D                                 ; $692A: $F8 $1D
    ld b, $F1                                     ; $692C: $06 $F1
    nop                                           ; $692E: $00
    ld e, $06                                     ; $692F: $1E $06
    ld hl, sp-$08                                 ; $6931: $F8 $F8
    inc hl                                        ; $6933: $23
    ld b, $F8                                     ; $6934: $06 $F8
    nop                                           ; $6936: $00
    inc h                                         ; $6937: $24
    ld b, $00                                     ; $6938: $06 $00
    ld hl, sp+$28                                 ; $693A: $F8 $28
    ld b, $00                                     ; $693C: $06 $00
    nop                                           ; $693E: $00
    add hl, hl                                    ; $693F: $29
    ld b, $80                                     ; $6940: $06 $80
    pop af                                        ; $6942: $F1
    nop                                           ; $6943: $00
    dec e                                         ; $6944: $1D
    ld h, $F1                                     ; $6945: $26 $F1
    ld hl, sp+$1E                                 ; $6947: $F8 $1E
    ld h, $F8                                     ; $6949: $26 $F8
    nop                                           ; $694B: $00
    rra                                           ; $694C: $1F
    ld h, $F8                                     ; $694D: $26 $F8
    ld hl, sp+$20                                 ; $694F: $F8 $20
    ld h, $00                                     ; $6951: $26 $00
    nop                                           ; $6953: $00
    dec h                                         ; $6954: $25
    ld h, $00                                     ; $6955: $26 $00
    ld hl, sp+$26                                 ; $6957: $F8 $26
    ld h, $80                                     ; $6959: $26 $80
    ldh a, [rP1]                                  ; $695B: $F0 $00
    dec e                                         ; $695D: $1D
    ld h, $F0                                     ; $695E: $26 $F0
    ld hl, sp+$1E                                 ; $6960: $F8 $1E
    ld h, $F8                                     ; $6962: $26 $F8
    nop                                           ; $6964: $00
    ld hl, $F826                                  ; $6965: $21 $26 $F8
    ld hl, sp+$22                                 ; $6968: $F8 $22
    ld h, $00                                     ; $696A: $26 $00
    ei                                            ; $696C: $FB
    daa                                           ; $696D: $27
    ld h, $80                                     ; $696E: $26 $80
    pop af                                        ; $6970: $F1
    nop                                           ; $6971: $00
    dec e                                         ; $6972: $1D
    ld h, $F1                                     ; $6973: $26 $F1
    ld hl, sp+$1E                                 ; $6975: $F8 $1E
    ld h, $F8                                     ; $6977: $26 $F8
    nop                                           ; $6979: $00
    inc hl                                        ; $697A: $23
    ld h, $F8                                     ; $697B: $26 $F8
    ld hl, sp+$24                                 ; $697D: $F8 $24
    ld h, $00                                     ; $697F: $26 $00
    nop                                           ; $6981: $00
    jr z, jr_00F_69AA                             ; $6982: $28 $26

    nop                                           ; $6984: $00
    ld hl, sp+$29                                 ; $6985: $F8 $29
    ld h, $80                                     ; $6987: $26 $80
    ld c, l                                       ; $6989: $4D
    ld [$0008], sp                                ; $698A: $08 $08 $00
    rst $38                                       ; $698D: $FF
    cp b                                          ; $698E: $B8
    ld l, b                                       ; $698F: $68
    call $E668                                    ; $6990: $CD $68 $E6
    ld l, b                                       ; $6993: $68
    call $4668                                    ; $6994: $CD $68 $46
    adc c                                         ; $6997: $89
    ld l, c                                       ; $6998: $69
    ld c, l                                       ; $6999: $4D
    ld [$0008], sp                                ; $699A: $08 $08 $00
    ld bc, $6871                                  ; $699D: $01 $71 $68
    add [hl]                                      ; $69A0: $86
    ld l, b                                       ; $69A1: $68
    sbc a                                         ; $69A2: $9F
    ld l, b                                       ; $69A3: $68
    add [hl]                                      ; $69A4: $86
    ld l, b                                       ; $69A5: $68
    ld b, [hl]                                    ; $69A6: $46
    sbc c                                         ; $69A7: $99
    ld l, c                                       ; $69A8: $69
    ld c, l                                       ; $69A9: $4D

jr_00F_69AA:
    ld [$FF08], sp                                ; $69AA: $08 $08 $FF
    nop                                           ; $69AD: $00
    ld b, d                                       ; $69AE: $42
    ld l, c                                       ; $69AF: $69
    ld e, e                                       ; $69B0: $5B
    ld l, c                                       ; $69B1: $69
    ld [hl], b                                    ; $69B2: $70
    ld l, c                                       ; $69B3: $69
    ld e, e                                       ; $69B4: $5B
    ld l, c                                       ; $69B5: $69
    ld b, [hl]                                    ; $69B6: $46
    xor c                                         ; $69B7: $A9
    ld l, c                                       ; $69B8: $69
    ld c, l                                       ; $69B9: $4D
    ld [$0108], sp                                ; $69BA: $08 $08 $01
    nop                                           ; $69BD: $00
    ei                                            ; $69BE: $FB
    ld l, b                                       ; $69BF: $68
    inc d                                         ; $69C0: $14
    ld l, c                                       ; $69C1: $69
    add hl, hl                                    ; $69C2: $29
    ld l, c                                       ; $69C3: $69
    inc d                                         ; $69C4: $14
    ld l, c                                       ; $69C5: $69
    ld b, [hl]                                    ; $69C6: $46
    cp c                                          ; $69C7: $B9
    ld l, c                                       ; $69C8: $69
    ld c, l                                       ; $69C9: $4D
    ld [$0008], sp                                ; $69CA: $08 $08 $00
    cp $B8                                        ; $69CD: $FE $B8
    ld l, b                                       ; $69CF: $68
    call $E668                                    ; $69D0: $CD $68 $E6
    ld l, b                                       ; $69D3: $68
    call $4668                                    ; $69D4: $CD $68 $46
    ret                                           ; $69D7: $C9


    ld l, c                                       ; $69D8: $69
    ld c, l                                       ; $69D9: $4D
    ld [$0008], sp                                ; $69DA: $08 $08 $00
    ld [bc], a                                    ; $69DD: $02
    ld [hl], c                                    ; $69DE: $71
    ld l, b                                       ; $69DF: $68
    add [hl]                                      ; $69E0: $86
    ld l, b                                       ; $69E1: $68
    sbc a                                         ; $69E2: $9F
    ld l, b                                       ; $69E3: $68
    add [hl]                                      ; $69E4: $86
    ld l, b                                       ; $69E5: $68
    ld b, [hl]                                    ; $69E6: $46
    reti                                          ; $69E7: $D9


    ld l, c                                       ; $69E8: $69
    ld c, l                                       ; $69E9: $4D
    ld [$FE08], sp                                ; $69EA: $08 $08 $FE
    nop                                           ; $69ED: $00
    ld b, d                                       ; $69EE: $42
    ld l, c                                       ; $69EF: $69
    ld e, e                                       ; $69F0: $5B
    ld l, c                                       ; $69F1: $69
    ld [hl], b                                    ; $69F2: $70
    ld l, c                                       ; $69F3: $69
    ld e, e                                       ; $69F4: $5B
    ld l, c                                       ; $69F5: $69
    ld b, [hl]                                    ; $69F6: $46
    jp hl                                         ; $69F7: $E9


    ld l, c                                       ; $69F8: $69
    ld c, l                                       ; $69F9: $4D
    ld [$0208], sp                                ; $69FA: $08 $08 $02
    nop                                           ; $69FD: $00
    ei                                            ; $69FE: $FB
    ld l, b                                       ; $69FF: $68
    inc d                                         ; $6A00: $14
    ld l, c                                       ; $6A01: $69
    add hl, hl                                    ; $6A02: $29
    ld l, c                                       ; $6A03: $69
    inc d                                         ; $6A04: $14
    ld l, c                                       ; $6A05: $69
    ld b, [hl]                                    ; $6A06: $46
    ld sp, hl                                     ; $6A07: $F9
    ld l, c                                       ; $6A08: $69
    ld c, h                                       ; $6A09: $4C
    rst $38                                       ; $6A0A: $FF
    nop                                           ; $6A0B: $00
    nop                                           ; $6A0C: $00
    call $0068                                    ; $6A0D: $CD $68 $00
    ld b, [hl]                                    ; $6A10: $46
    add hl, bc                                    ; $6A11: $09
    ld l, d                                       ; $6A12: $6A
    ld c, h                                       ; $6A13: $4C
    rst $38                                       ; $6A14: $FF
    nop                                           ; $6A15: $00
    nop                                           ; $6A16: $00
    add [hl]                                      ; $6A17: $86
    ld l, b                                       ; $6A18: $68
    nop                                           ; $6A19: $00
    ld b, [hl]                                    ; $6A1A: $46
    inc de                                        ; $6A1B: $13
    ld l, d                                       ; $6A1C: $6A
    ld c, h                                       ; $6A1D: $4C
    rst $38                                       ; $6A1E: $FF
    nop                                           ; $6A1F: $00
    nop                                           ; $6A20: $00
    ld e, e                                       ; $6A21: $5B
    ld l, c                                       ; $6A22: $69
    nop                                           ; $6A23: $00
    ld b, [hl]                                    ; $6A24: $46
    dec e                                         ; $6A25: $1D
    ld l, d                                       ; $6A26: $6A
    ld c, h                                       ; $6A27: $4C
    rst $38                                       ; $6A28: $FF
    nop                                           ; $6A29: $00
    nop                                           ; $6A2A: $00
    inc d                                         ; $6A2B: $14
    ld l, c                                       ; $6A2C: $69
    nop                                           ; $6A2D: $00
    ld b, [hl]                                    ; $6A2E: $46
    daa                                           ; $6A2F: $27
    ld l, d                                       ; $6A30: $6A
    ld c, h                                       ; $6A31: $4C
    rst $38                                       ; $6A32: $FF
    nop                                           ; $6A33: $00
    nop                                           ; $6A34: $00
    ld e, h                                       ; $6A35: $5C
    ld l, b                                       ; $6A36: $68
    nop                                           ; $6A37: $00
    ld b, [hl]                                    ; $6A38: $46
    ld sp, $4C6A                                  ; $6A39: $31 $6A $4C
    rst $38                                       ; $6A3C: $FF
    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    ld b, a                                       ; $6A3F: $47
    ld l, b                                       ; $6A40: $68
    nop                                           ; $6A41: $00
    ld b, [hl]                                    ; $6A42: $46
    dec sp                                        ; $6A43: $3B
    ld l, d                                       ; $6A44: $6A
    ld c, h                                       ; $6A45: $4C
    rst $38                                       ; $6A46: $FF
    nop                                           ; $6A47: $00
    nop                                           ; $6A48: $00
    ld l, $68                                     ; $6A49: $2E $68
    nop                                           ; $6A4B: $00
    ld b, [hl]                                    ; $6A4C: $46
    ld b, l                                       ; $6A4D: $45
    ld l, d                                       ; $6A4E: $6A
    ld c, h                                       ; $6A4F: $4C
    rst $38                                       ; $6A50: $FF
    nop                                           ; $6A51: $00
    nop                                           ; $6A52: $00
    dec d                                         ; $6A53: $15
    ld l, b                                       ; $6A54: $68
    nop                                           ; $6A55: $00
    ld b, [hl]                                    ; $6A56: $46
    ld c, a                                       ; $6A57: $4F
    ld l, d                                       ; $6A58: $6A
    ld c, e                                       ; $6A59: $4B
    inc bc                                        ; $6A5A: $03
    rrca                                          ; $6A5B: $0F
    nop                                           ; $6A5C: $00
    nop                                           ; $6A5D: $00
    ld [hl], b                                    ; $6A5E: $70
    ld l, d                                       ; $6A5F: $6A
    rrca                                          ; $6A60: $0F
    inc bc                                        ; $6A61: $03
    nop                                           ; $6A62: $00
    ld [hl], a                                    ; $6A63: $77
    ld l, d                                       ; $6A64: $6A
    rrca                                          ; $6A65: $0F
    ld [bc], a                                    ; $6A66: $02
    nop                                           ; $6A67: $00
    add l                                         ; $6A68: $85
    ld l, d                                       ; $6A69: $6A
    rrca                                          ; $6A6A: $0F
    ld bc, $7E00                                  ; $6A6B: $01 $00 $7E
    ld l, d                                       ; $6A6E: $6A
    rst $38                                       ; $6A6F: $FF
    inc d                                         ; $6A70: $14
    rrca                                          ; $6A71: $0F
    add hl, bc                                    ; $6A72: $09
    ld l, d                                       ; $6A73: $6A
    ld h, d                                       ; $6A74: $62
    ld bc, $1412                                  ; $6A75: $01 $12 $14
    rrca                                          ; $6A78: $0F
    inc de                                        ; $6A79: $13
    ld l, d                                       ; $6A7A: $6A
    ld h, d                                       ; $6A7B: $62
    ld bc, $1412                                  ; $6A7C: $01 $12 $14
    rrca                                          ; $6A7F: $0F
    dec e                                         ; $6A80: $1D
    ld l, d                                       ; $6A81: $6A
    ld h, d                                       ; $6A82: $62
    ld bc, $1412                                  ; $6A83: $01 $12 $14
    rrca                                          ; $6A86: $0F
    daa                                           ; $6A87: $27
    ld l, d                                       ; $6A88: $6A
    ld h, d                                       ; $6A89: $62
    ld bc, $0012                                  ; $6A8A: $01 $12 $00
    nop                                           ; $6A8D: $00
    inc d                                         ; $6A8E: $14
    ld [bc], a                                    ; $6A8F: $02
    nop                                           ; $6A90: $00
    ld hl, sp+$13                                 ; $6A91: $F8 $13
    ld [bc], a                                    ; $6A93: $02
    ld hl, sp+$00                                 ; $6A94: $F8 $00
    add hl, bc                                    ; $6A96: $09
    ld bc, $F8F8                                  ; $6A97: $01 $F8 $F8
    ld [$F001], sp                                ; $6A9A: $08 $01 $F0
    nop                                           ; $6A9D: $00
    ld bc, $F001                                  ; $6A9E: $01 $01 $F0
    ld hl, sp+$00                                 ; $6AA1: $F8 $00
    ld bc, $0080                                  ; $6AA3: $01 $80 $00
    ld hl, sp+$14                                 ; $6AA6: $F8 $14
    ld [hl+], a                                   ; $6AA8: $22
    nop                                           ; $6AA9: $00
    nop                                           ; $6AAA: $00
    inc de                                        ; $6AAB: $13
    ld [hl+], a                                   ; $6AAC: $22
    ld hl, sp-$08                                 ; $6AAD: $F8 $F8
    add hl, bc                                    ; $6AAF: $09
    ld hl, $00F8                                  ; $6AB0: $21 $F8 $00
    ld [$F021], sp                                ; $6AB3: $08 $21 $F0
    ld hl, sp+$01                                 ; $6AB6: $F8 $01
    ld hl, $00F0                                  ; $6AB8: $21 $F0 $00
    nop                                           ; $6ABB: $00
    ld hl, $0080                                  ; $6ABC: $21 $80 $00
    nop                                           ; $6ABF: $00
    jr @+$04                                      ; $6AC0: $18 $02

    nop                                           ; $6AC2: $00
    ld hl, sp+$17                                 ; $6AC3: $F8 $17
    ld [bc], a                                    ; $6AC5: $02
    ld hl, sp+$00                                 ; $6AC6: $F8 $00
    ld c, $00                                     ; $6AC8: $0E $00
    ld hl, sp-$08                                 ; $6ACA: $F8 $F8
    dec c                                         ; $6ACC: $0D
    ld bc, $00F0                                  ; $6ACD: $01 $F0 $00
    rlca                                          ; $6AD0: $07
    ld bc, $F8F0                                  ; $6AD1: $01 $F0 $F8
    ld b, $01                                     ; $6AD4: $06 $01
    add b                                         ; $6AD6: $80
    nop                                           ; $6AD7: $00
    ld hl, sp+$18                                 ; $6AD8: $F8 $18
    ld [hl+], a                                   ; $6ADA: $22
    nop                                           ; $6ADB: $00
    nop                                           ; $6ADC: $00
    rla                                           ; $6ADD: $17
    ld [hl+], a                                   ; $6ADE: $22
    ld hl, sp-$08                                 ; $6ADF: $F8 $F8
    ld c, $20                                     ; $6AE1: $0E $20
    ld hl, sp+$00                                 ; $6AE3: $F8 $00
    dec c                                         ; $6AE5: $0D
    ld hl, $F8F0                                  ; $6AE6: $21 $F0 $F8
    rlca                                          ; $6AE9: $07
    ld hl, $00F0                                  ; $6AEA: $21 $F0 $00
    ld b, $21                                     ; $6AED: $06 $21
    add b                                         ; $6AEF: $80
    pop af                                        ; $6AF0: $F1
    ld hl, sp+$02                                 ; $6AF1: $F8 $02
    ld bc, $F9F8                                  ; $6AF3: $01 $F8 $F9
    rrca                                          ; $6AF6: $0F
    ld bc, $0100                                  ; $6AF7: $01 $00 $01
    ld a, [de]                                    ; $6AFA: $1A
    ld [bc], a                                    ; $6AFB: $02
    nop                                           ; $6AFC: $00
    ld sp, hl                                     ; $6AFD: $F9
    add hl, de                                    ; $6AFE: $19
    ld [bc], a                                    ; $6AFF: $02
    ld hl, sp+$01                                 ; $6B00: $F8 $01
    db $10                                        ; $6B02: $10
    ld bc, $00F1                                  ; $6B03: $01 $F1 $00
    inc bc                                        ; $6B06: $03
    ld bc, $0080                                  ; $6B07: $01 $80 $00
    ld sp, hl                                     ; $6B0A: $F9
    dec d                                         ; $6B0B: $15
    ld [hl+], a                                   ; $6B0C: $22
    nop                                           ; $6B0D: $00
    nop                                           ; $6B0E: $00
    dec d                                         ; $6B0F: $15
    ld [bc], a                                    ; $6B10: $02
    ld hl, sp+$00                                 ; $6B11: $F8 $00
    dec bc                                        ; $6B13: $0B
    ld bc, $F8F8                                  ; $6B14: $01 $F8 $F8
    ld a, [bc]                                    ; $6B17: $0A
    ld bc, $00F0                                  ; $6B18: $01 $F0 $00
    inc bc                                        ; $6B1B: $03
    ld bc, $F8F0                                  ; $6B1C: $01 $F0 $F8
    ld [bc], a                                    ; $6B1F: $02
    ld bc, $0080                                  ; $6B20: $01 $80 $00
    ld sp, hl                                     ; $6B23: $F9
    ld a, [de]                                    ; $6B24: $1A
    ld [hl+], a                                   ; $6B25: $22
    nop                                           ; $6B26: $00
    ld bc, $2219                                  ; $6B27: $01 $19 $22
    ld hl, sp+$01                                 ; $6B2A: $F8 $01
    rrca                                          ; $6B2C: $0F
    ld hl, $F9F8                                  ; $6B2D: $21 $F8 $F9
    db $10                                        ; $6B30: $10
    ld hl, $00F1                                  ; $6B31: $21 $F1 $00
    inc bc                                        ; $6B34: $03
    ld bc, $F8F1                                  ; $6B35: $01 $F1 $F8
    ld [bc], a                                    ; $6B38: $02
    ld bc, $0080                                  ; $6B39: $01 $80 $00
    nop                                           ; $6B3C: $00
    inc e                                         ; $6B3D: $1C
    ld [bc], a                                    ; $6B3E: $02
    nop                                           ; $6B3F: $00
    ld hl, sp+$1B                                 ; $6B40: $F8 $1B
    ld [bc], a                                    ; $6B42: $02
    ld hl, sp+$00                                 ; $6B43: $F8 $00
    ld [de], a                                    ; $6B45: $12
    ld bc, $F8F8                                  ; $6B46: $01 $F8 $F8
    ld de, $F101                                  ; $6B49: $11 $01 $F1
    nop                                           ; $6B4C: $00
    dec b                                         ; $6B4D: $05
    ld bc, $F8F1                                  ; $6B4E: $01 $F1 $F8
    inc b                                         ; $6B51: $04
    ld bc, $0080                                  ; $6B52: $01 $80 $00
    ld sp, hl                                     ; $6B55: $F9
    ld d, $22                                     ; $6B56: $16 $22
    nop                                           ; $6B58: $00
    nop                                           ; $6B59: $00
    ld d, $02                                     ; $6B5A: $16 $02
    ld hl, sp+$00                                 ; $6B5C: $F8 $00
    inc c                                         ; $6B5E: $0C
    ld bc, $F9F8                                  ; $6B5F: $01 $F8 $F9
    inc c                                         ; $6B62: $0C
    ld hl, $00F0                                  ; $6B63: $21 $F0 $00
    dec b                                         ; $6B66: $05
    ld bc, $F8F0                                  ; $6B67: $01 $F0 $F8
    inc b                                         ; $6B6A: $04
    ld bc, $0080                                  ; $6B6B: $01 $80 $00
    ld sp, hl                                     ; $6B6E: $F9
    inc e                                         ; $6B6F: $1C
    ld [hl+], a                                   ; $6B70: $22
    nop                                           ; $6B71: $00
    ld bc, $221B                                  ; $6B72: $01 $1B $22
    ld hl, sp-$07                                 ; $6B75: $F8 $F9
    ld [de], a                                    ; $6B77: $12
    ld hl, $01F8                                  ; $6B78: $21 $F8 $01
    ld de, $F121                                  ; $6B7B: $11 $21 $F1
    nop                                           ; $6B7E: $00
    dec b                                         ; $6B7F: $05
    ld bc, $F8F1                                  ; $6B80: $01 $F1 $F8
    inc b                                         ; $6B83: $04
    ld bc, $0080                                  ; $6B84: $01 $80 $00
    nop                                           ; $6B87: $00
    ld h, $02                                     ; $6B88: $26 $02
    nop                                           ; $6B8A: $00
    ld hl, sp+$25                                 ; $6B8B: $F8 $25
    ld [bc], a                                    ; $6B8D: $02
    ld hl, sp+$00                                 ; $6B8E: $F8 $00
    jr nz, @+$03                                  ; $6B90: $20 $01

    ld hl, sp-$08                                 ; $6B92: $F8 $F8
    rra                                           ; $6B94: $1F
    ld bc, $00F1                                  ; $6B95: $01 $F1 $00
    ld e, $01                                     ; $6B98: $1E $01
    pop af                                        ; $6B9A: $F1
    ld hl, sp+$1D                                 ; $6B9B: $F8 $1D
    ld bc, $0080                                  ; $6B9D: $01 $80 $00
    nop                                           ; $6BA0: $00
    jr z, @+$04                                   ; $6BA1: $28 $02

    nop                                           ; $6BA3: $00
    ld hl, sp+$27                                 ; $6BA4: $F8 $27
    ld [bc], a                                    ; $6BA6: $02
    ld hl, sp+$00                                 ; $6BA7: $F8 $00
    ld [hl+], a                                   ; $6BA9: $22
    ld bc, $F8F8                                  ; $6BAA: $01 $F8 $F8
    ld hl, $F001                                  ; $6BAD: $21 $01 $F0
    nop                                           ; $6BB0: $00
    ld e, $01                                     ; $6BB1: $1E $01
    ldh a, [$F8]                                  ; $6BB3: $F0 $F8
    dec e                                         ; $6BB5: $1D
    ld bc, $0080                                  ; $6BB6: $01 $80 $00
    nop                                           ; $6BB9: $00
    ld a, [hl+]                                   ; $6BBA: $2A
    ld [bc], a                                    ; $6BBB: $02
    nop                                           ; $6BBC: $00
    ld hl, sp+$29                                 ; $6BBD: $F8 $29
    ld [bc], a                                    ; $6BBF: $02
    ld hl, sp+$00                                 ; $6BC0: $F8 $00
    inc h                                         ; $6BC2: $24
    ld bc, $F8F8                                  ; $6BC3: $01 $F8 $F8
    inc hl                                        ; $6BC6: $23
    ld bc, $00F1                                  ; $6BC7: $01 $F1 $00
    ld e, $01                                     ; $6BCA: $1E $01
    pop af                                        ; $6BCC: $F1
    ld hl, sp+$1D                                 ; $6BCD: $F8 $1D
    ld bc, $0080                                  ; $6BCF: $01 $80 $00
    ld hl, sp+$26                                 ; $6BD2: $F8 $26
    ld [hl+], a                                   ; $6BD4: $22
    nop                                           ; $6BD5: $00
    nop                                           ; $6BD6: $00
    dec h                                         ; $6BD7: $25
    ld [hl+], a                                   ; $6BD8: $22
    ld hl, sp-$08                                 ; $6BD9: $F8 $F8
    jr nz, @+$23                                  ; $6BDB: $20 $21

    ld hl, sp+$00                                 ; $6BDD: $F8 $00
    rra                                           ; $6BDF: $1F
    ld hl, $F8F1                                  ; $6BE0: $21 $F1 $F8
    ld e, $21                                     ; $6BE3: $1E $21
    pop af                                        ; $6BE5: $F1
    nop                                           ; $6BE6: $00
    dec e                                         ; $6BE7: $1D
    ld hl, $0080                                  ; $6BE8: $21 $80 $00
    ld hl, sp+$28                                 ; $6BEB: $F8 $28
    ld [hl+], a                                   ; $6BED: $22
    nop                                           ; $6BEE: $00
    nop                                           ; $6BEF: $00
    daa                                           ; $6BF0: $27
    ld [hl+], a                                   ; $6BF1: $22
    ld hl, sp-$08                                 ; $6BF2: $F8 $F8
    ld [hl+], a                                   ; $6BF4: $22
    ld hl, $00F8                                  ; $6BF5: $21 $F8 $00
    ld hl, $F021                                  ; $6BF8: $21 $21 $F0
    ld hl, sp+$1E                                 ; $6BFB: $F8 $1E
    ld hl, $00F0                                  ; $6BFD: $21 $F0 $00
    dec e                                         ; $6C00: $1D
    ld hl, $0080                                  ; $6C01: $21 $80 $00
    ld hl, sp+$2A                                 ; $6C04: $F8 $2A
    ld [hl+], a                                   ; $6C06: $22
    nop                                           ; $6C07: $00
    nop                                           ; $6C08: $00
    add hl, hl                                    ; $6C09: $29
    ld [hl+], a                                   ; $6C0A: $22
    ld hl, sp-$08                                 ; $6C0B: $F8 $F8
    inc h                                         ; $6C0D: $24
    ld hl, $00F8                                  ; $6C0E: $21 $F8 $00
    inc hl                                        ; $6C11: $23
    ld hl, $F8F1                                  ; $6C12: $21 $F1 $F8
    ld e, $21                                     ; $6C15: $1E $21
    pop af                                        ; $6C17: $F1
    nop                                           ; $6C18: $00
    dec e                                         ; $6C19: $1D
    ld hl, $0080                                  ; $6C1A: $21 $80 $00
    ld hl, sp+$3A                                 ; $6C1D: $F8 $3A
    ld bc, $0000                                  ; $6C1F: $01 $00 $00
    dec [hl]                                      ; $6C22: $35
    ld [bc], a                                    ; $6C23: $02
    nop                                           ; $6C24: $00
    ld hl, sp+$34                                 ; $6C25: $F8 $34
    ld [bc], a                                    ; $6C27: $02
    ld hl, sp+$00                                 ; $6C28: $F8 $00
    inc sp                                        ; $6C2A: $33
    ld bc, $F8F8                                  ; $6C2B: $01 $F8 $F8
    ld [hl-], a                                   ; $6C2E: $32
    ld bc, $FEF0                                  ; $6C2F: $01 $F0 $FE
    ld sp, $F001                                  ; $6C32: $31 $01 $F0
    or $30                                        ; $6C35: $F6 $30
    ld bc, $0080                                  ; $6C37: $01 $80 $00
    rst $38                                       ; $6C3A: $FF
    dec sp                                        ; $6C3B: $3B
    nop                                           ; $6C3C: $00
    nop                                           ; $6C3D: $00
    nop                                           ; $6C3E: $00
    add hl, sp                                    ; $6C3F: $39
    ld [bc], a                                    ; $6C40: $02
    ldh a, [rP1]                                  ; $6C41: $F0 $00
    ld sp, $F001                                  ; $6C43: $31 $01 $F0
    ld hl, sp+$30                                 ; $6C46: $F8 $30
    ld bc, $F800                                  ; $6C48: $01 $00 $F8
    jr c, jr_00F_6C4F                             ; $6C4B: $38 $02

    ld hl, sp+$00                                 ; $6C4D: $F8 $00

jr_00F_6C4F:
    scf                                           ; $6C4F: $37
    ld bc, $F8F8                                  ; $6C50: $01 $F8 $F8
    ld [hl], $01                                  ; $6C53: $36 $01
    add b                                         ; $6C55: $80
    nop                                           ; $6C56: $00
    nop                                           ; $6C57: $00
    ld a, [hl-]                                   ; $6C58: $3A
    ld hl, $F800                                  ; $6C59: $21 $00 $F8
    dec [hl]                                      ; $6C5C: $35
    ld [hl+], a                                   ; $6C5D: $22
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    inc [hl]                                      ; $6C60: $34
    ld [hl+], a                                   ; $6C61: $22
    ld hl, sp-$08                                 ; $6C62: $F8 $F8
    inc sp                                        ; $6C64: $33
    ld hl, $00F8                                  ; $6C65: $21 $F8 $00
    ld [hl-], a                                   ; $6C68: $32
    ld hl, $FAF0                                  ; $6C69: $21 $F0 $FA
    ld sp, $F021                                  ; $6C6C: $31 $21 $F0
    ld [bc], a                                    ; $6C6F: $02
    jr nc, @+$23                                  ; $6C70: $30 $21

    add b                                         ; $6C72: $80
    nop                                           ; $6C73: $00
    ld hl, sp+$3B                                 ; $6C74: $F8 $3B
    jr nz, jr_00F_6C78                            ; $6C76: $20 $00

jr_00F_6C78:
    ld hl, sp+$39                                 ; $6C78: $F8 $39
    ld [hl+], a                                   ; $6C7A: $22
    ldh a, [$F8]                                  ; $6C7B: $F0 $F8
    ld sp, $F021                                  ; $6C7D: $31 $21 $F0
    nop                                           ; $6C80: $00
    jr nc, jr_00F_6CA4                            ; $6C81: $30 $21

    nop                                           ; $6C83: $00
    nop                                           ; $6C84: $00
    jr c, jr_00F_6CA9                             ; $6C85: $38 $22

    ld hl, sp-$08                                 ; $6C87: $F8 $F8
    scf                                           ; $6C89: $37
    ld hl, $00F8                                  ; $6C8A: $21 $F8 $00
    ld [hl], $21                                  ; $6C8D: $36 $21
    add b                                         ; $6C8F: $80
    ld c, l                                       ; $6C90: $4D
    ld [$0008], sp                                ; $6C91: $08 $08 $00
    rst $38                                       ; $6C94: $FF
    dec sp                                        ; $6C95: $3B
    ld l, e                                       ; $6C96: $6B
    ld d, h                                       ; $6C97: $54
    ld l, e                                       ; $6C98: $6B
    ld l, l                                       ; $6C99: $6D
    ld l, e                                       ; $6C9A: $6B
    ld d, h                                       ; $6C9B: $54
    ld l, e                                       ; $6C9C: $6B
    ld b, [hl]                                    ; $6C9D: $46
    sub b                                         ; $6C9E: $90
    ld l, h                                       ; $6C9F: $6C
    ld c, l                                       ; $6CA0: $4D
    ld [$0008], sp                                ; $6CA1: $08 $08 $00

jr_00F_6CA4:
    ld bc, $6AF0                                  ; $6CA4: $01 $F0 $6A
    add hl, bc                                    ; $6CA7: $09
    ld l, e                                       ; $6CA8: $6B

jr_00F_6CA9:
    ld [hl+], a                                   ; $6CA9: $22
    ld l, e                                       ; $6CAA: $6B
    add hl, bc                                    ; $6CAB: $09
    ld l, e                                       ; $6CAC: $6B
    ld b, [hl]                                    ; $6CAD: $46
    and b                                         ; $6CAE: $A0
    ld l, h                                       ; $6CAF: $6C
    ld c, l                                       ; $6CB0: $4D
    ld [$FF08], sp                                ; $6CB1: $08 $08 $FF
    nop                                           ; $6CB4: $00
    pop de                                        ; $6CB5: $D1
    ld l, e                                       ; $6CB6: $6B
    ld [$036B], a                                 ; $6CB7: $EA $6B $03
    ld l, h                                       ; $6CBA: $6C
    ld [$466B], a                                 ; $6CBB: $EA $6B $46
    or b                                          ; $6CBE: $B0
    ld l, h                                       ; $6CBF: $6C
    ld c, l                                       ; $6CC0: $4D
    ld [$0108], sp                                ; $6CC1: $08 $08 $01
    nop                                           ; $6CC4: $00
    add [hl]                                      ; $6CC5: $86
    ld l, e                                       ; $6CC6: $6B
    sbc a                                         ; $6CC7: $9F
    ld l, e                                       ; $6CC8: $6B
    cp b                                          ; $6CC9: $B8
    ld l, e                                       ; $6CCA: $6B
    sbc a                                         ; $6CCB: $9F
    ld l, e                                       ; $6CCC: $6B
    ld b, [hl]                                    ; $6CCD: $46
    ret nz                                        ; $6CCE: $C0

    ld l, h                                       ; $6CCF: $6C
    ld c, l                                       ; $6CD0: $4D
    ld [$0008], sp                                ; $6CD1: $08 $08 $00
    cp $3B                                        ; $6CD4: $FE $3B
    ld l, e                                       ; $6CD6: $6B
    ld d, h                                       ; $6CD7: $54
    ld l, e                                       ; $6CD8: $6B
    ld l, l                                       ; $6CD9: $6D
    ld l, e                                       ; $6CDA: $6B
    ld d, h                                       ; $6CDB: $54
    ld l, e                                       ; $6CDC: $6B
    ld b, [hl]                                    ; $6CDD: $46
    ret nc                                        ; $6CDE: $D0

    ld l, h                                       ; $6CDF: $6C
    ld c, l                                       ; $6CE0: $4D
    ld [$0008], sp                                ; $6CE1: $08 $08 $00
    ld [bc], a                                    ; $6CE4: $02
    ldh a, [rOCPS]                                ; $6CE5: $F0 $6A
    add hl, bc                                    ; $6CE7: $09
    ld l, e                                       ; $6CE8: $6B
    ld [hl+], a                                   ; $6CE9: $22
    ld l, e                                       ; $6CEA: $6B
    add hl, bc                                    ; $6CEB: $09
    ld l, e                                       ; $6CEC: $6B
    ld b, [hl]                                    ; $6CED: $46
    ldh [$6C], a                                  ; $6CEE: $E0 $6C
    ld c, l                                       ; $6CF0: $4D
    ld [$FE08], sp                                ; $6CF1: $08 $08 $FE
    nop                                           ; $6CF4: $00
    pop de                                        ; $6CF5: $D1
    ld l, e                                       ; $6CF6: $6B
    ld [$036B], a                                 ; $6CF7: $EA $6B $03
    ld l, h                                       ; $6CFA: $6C
    ld [$466B], a                                 ; $6CFB: $EA $6B $46
    ldh a, [$6C]                                  ; $6CFE: $F0 $6C
    ld c, l                                       ; $6D00: $4D
    ld [$0208], sp                                ; $6D01: $08 $08 $02
    nop                                           ; $6D04: $00
    add [hl]                                      ; $6D05: $86
    ld l, e                                       ; $6D06: $6B
    sbc a                                         ; $6D07: $9F
    ld l, e                                       ; $6D08: $6B
    cp b                                          ; $6D09: $B8
    ld l, e                                       ; $6D0A: $6B
    sbc a                                         ; $6D0B: $9F
    ld l, e                                       ; $6D0C: $6B
    ld b, [hl]                                    ; $6D0D: $46
    nop                                           ; $6D0E: $00
    ld l, l                                       ; $6D0F: $6D
    ld c, h                                       ; $6D10: $4C
    rst $38                                       ; $6D11: $FF
    nop                                           ; $6D12: $00
    nop                                           ; $6D13: $00
    ld d, h                                       ; $6D14: $54
    ld l, e                                       ; $6D15: $6B
    nop                                           ; $6D16: $00
    ld b, [hl]                                    ; $6D17: $46
    db $10                                        ; $6D18: $10
    ld l, l                                       ; $6D19: $6D
    ld c, h                                       ; $6D1A: $4C
    rst $38                                       ; $6D1B: $FF
    nop                                           ; $6D1C: $00
    nop                                           ; $6D1D: $00
    add hl, bc                                    ; $6D1E: $09
    ld l, e                                       ; $6D1F: $6B
    nop                                           ; $6D20: $00
    ld b, [hl]                                    ; $6D21: $46
    ld a, [de]                                    ; $6D22: $1A
    ld l, l                                       ; $6D23: $6D
    ld c, h                                       ; $6D24: $4C
    rst $38                                       ; $6D25: $FF
    nop                                           ; $6D26: $00
    nop                                           ; $6D27: $00
    ld [$006B], a                                 ; $6D28: $EA $6B $00
    ld b, [hl]                                    ; $6D2B: $46
    inc h                                         ; $6D2C: $24
    ld l, l                                       ; $6D2D: $6D
    ld c, h                                       ; $6D2E: $4C
    rst $38                                       ; $6D2F: $FF
    nop                                           ; $6D30: $00
    nop                                           ; $6D31: $00
    sbc a                                         ; $6D32: $9F
    ld l, e                                       ; $6D33: $6B
    nop                                           ; $6D34: $00
    ld b, [hl]                                    ; $6D35: $46
    ld l, $6D                                     ; $6D36: $2E $6D
    ld c, h                                       ; $6D38: $4C
    rst $38                                       ; $6D39: $FF
    nop                                           ; $6D3A: $00
    nop                                           ; $6D3B: $00
    rst $10                                       ; $6D3C: $D7
    ld l, d                                       ; $6D3D: $6A
    nop                                           ; $6D3E: $00
    ld b, [hl]                                    ; $6D3F: $46
    jr c, jr_00F_6DAF                             ; $6D40: $38 $6D

    ld c, h                                       ; $6D42: $4C
    rst $38                                       ; $6D43: $FF
    nop                                           ; $6D44: $00
    nop                                           ; $6D45: $00
    cp [hl]                                       ; $6D46: $BE
    ld l, d                                       ; $6D47: $6A
    nop                                           ; $6D48: $00
    ld b, [hl]                                    ; $6D49: $46
    ld b, d                                       ; $6D4A: $42
    ld l, l                                       ; $6D4B: $6D
    ld c, h                                       ; $6D4C: $4C
    rst $38                                       ; $6D4D: $FF
    nop                                           ; $6D4E: $00
    nop                                           ; $6D4F: $00
    and l                                         ; $6D50: $A5
    ld l, d                                       ; $6D51: $6A
    nop                                           ; $6D52: $00
    ld b, [hl]                                    ; $6D53: $46
    ld c, h                                       ; $6D54: $4C
    ld l, l                                       ; $6D55: $6D
    ld c, h                                       ; $6D56: $4C
    rst $38                                       ; $6D57: $FF
    nop                                           ; $6D58: $00
    nop                                           ; $6D59: $00
    adc h                                         ; $6D5A: $8C
    ld l, d                                       ; $6D5B: $6A
    nop                                           ; $6D5C: $00
    ld b, [hl]                                    ; $6D5D: $46
    ld d, [hl]                                    ; $6D5E: $56
    ld l, l                                       ; $6D5F: $6D
    ld c, h                                       ; $6D60: $4C
    ld bc, $0000                                  ; $6D61: $01 $00 $00
    ld d, h                                       ; $6D64: $54
    ld l, e                                       ; $6D65: $6B
    nop                                           ; $6D66: $00
    ld c, b                                       ; $6D67: $48
    ld b, [hl]                                    ; $6D68: $46
    ld h, b                                       ; $6D69: $60
    ld l, l                                       ; $6D6A: $6D
    ld c, h                                       ; $6D6B: $4C
    ld bc, $0100                                  ; $6D6C: $01 $00 $01
    ld d, h                                       ; $6D6F: $54
    ld l, e                                       ; $6D70: $6B
    nop                                           ; $6D71: $00
    ld b, [hl]                                    ; $6D72: $46
    ld l, e                                       ; $6D73: $6B
    ld l, l                                       ; $6D74: $6D
    ld c, h                                       ; $6D75: $4C
    inc b                                         ; $6D76: $04
    nop                                           ; $6D77: $00
    nop                                           ; $6D78: $00
    ld d, [hl]                                    ; $6D79: $56
    ld l, h                                       ; $6D7A: $6C
    nop                                           ; $6D7B: $00
    ld c, h                                       ; $6D7C: $4C
    ld bc, $00FE                                  ; $6D7D: $01 $FE $00
    ld [hl], e                                    ; $6D80: $73
    ld l, h                                       ; $6D81: $6C
    nop                                           ; $6D82: $00
    ld b, [hl]                                    ; $6D83: $46
    ld a, h                                       ; $6D84: $7C
    ld l, l                                       ; $6D85: $6D
    ld c, h                                       ; $6D86: $4C
    inc b                                         ; $6D87: $04
    nop                                           ; $6D88: $00
    nop                                           ; $6D89: $00
    inc e                                         ; $6D8A: $1C
    ld l, h                                       ; $6D8B: $6C
    nop                                           ; $6D8C: $00
    ld c, h                                       ; $6D8D: $4C
    ld bc, $0002                                  ; $6D8E: $01 $02 $00
    add hl, sp                                    ; $6D91: $39
    ld l, h                                       ; $6D92: $6C
    nop                                           ; $6D93: $00
    ld b, [hl]                                    ; $6D94: $46
    adc l                                         ; $6D95: $8D
    ld l, l                                       ; $6D96: $6D
    ld c, e                                       ; $6D97: $4B
    inc bc                                        ; $6D98: $03
    rrca                                          ; $6D99: $0F
    nop                                           ; $6D9A: $00
    nop                                           ; $6D9B: $00
    xor [hl]                                      ; $6D9C: $AE
    ld l, l                                       ; $6D9D: $6D
    rrca                                          ; $6D9E: $0F
    inc bc                                        ; $6D9F: $03
    nop                                           ; $6DA0: $00
    or l                                          ; $6DA1: $B5
    ld l, l                                       ; $6DA2: $6D
    rrca                                          ; $6DA3: $0F
    ld [bc], a                                    ; $6DA4: $02
    nop                                           ; $6DA5: $00
    jp $0F6D                                      ; $6DA6: $C3 $6D $0F


    ld bc, $BC00                                  ; $6DA9: $01 $00 $BC
    ld l, l                                       ; $6DAC: $6D
    rst $38                                       ; $6DAD: $FF
    inc d                                         ; $6DAE: $14

jr_00F_6DAF:
    rrca                                          ; $6DAF: $0F
    db $10                                        ; $6DB0: $10
    ld l, l                                       ; $6DB1: $6D
    ld h, d                                       ; $6DB2: $62
    ld bc, $1412                                  ; $6DB3: $01 $12 $14
    rrca                                          ; $6DB6: $0F
    ld a, [de]                                    ; $6DB7: $1A
    ld l, l                                       ; $6DB8: $6D
    ld h, d                                       ; $6DB9: $62
    ld bc, $1412                                  ; $6DBA: $01 $12 $14
    rrca                                          ; $6DBD: $0F
    inc h                                         ; $6DBE: $24
    ld l, l                                       ; $6DBF: $6D
    ld h, d                                       ; $6DC0: $62
    ld bc, $1412                                  ; $6DC1: $01 $12 $14
    rrca                                          ; $6DC4: $0F
    ld l, $6D                                     ; $6DC5: $2E $6D
    ld h, d                                       ; $6DC7: $62
    ld bc, $0012                                  ; $6DC8: $01 $12 $00
    nop                                           ; $6DCB: $00
    dec d                                         ; $6DCC: $15
    rlca                                          ; $6DCD: $07
    nop                                           ; $6DCE: $00
    ld hl, sp+$14                                 ; $6DCF: $F8 $14
    rlca                                          ; $6DD1: $07
    ld hl, sp+$00                                 ; $6DD2: $F8 $00
    add hl, bc                                    ; $6DD4: $09
    rlca                                          ; $6DD5: $07
    ld hl, sp-$08                                 ; $6DD6: $F8 $F8
    ld [$F007], sp                                ; $6DD8: $08 $07 $F0
    nop                                           ; $6DDB: $00
    ld bc, $F007                                  ; $6DDC: $01 $07 $F0
    ld hl, sp+$00                                 ; $6DDF: $F8 $00
    rlca                                          ; $6DE1: $07
    add b                                         ; $6DE2: $80
    nop                                           ; $6DE3: $00
    ld hl, sp+$15                                 ; $6DE4: $F8 $15
    daa                                           ; $6DE6: $27
    nop                                           ; $6DE7: $00
    nop                                           ; $6DE8: $00
    inc d                                         ; $6DE9: $14
    daa                                           ; $6DEA: $27
    ld hl, sp-$08                                 ; $6DEB: $F8 $F8
    add hl, bc                                    ; $6DED: $09
    daa                                           ; $6DEE: $27
    ld hl, sp+$00                                 ; $6DEF: $F8 $00
    ld [$F027], sp                                ; $6DF1: $08 $27 $F0
    ld hl, sp+$01                                 ; $6DF4: $F8 $01
    daa                                           ; $6DF6: $27
    ldh a, [rP1]                                  ; $6DF7: $F0 $00
    nop                                           ; $6DF9: $00
    daa                                           ; $6DFA: $27
    add b                                         ; $6DFB: $80
    nop                                           ; $6DFC: $00
    cp $18                                        ; $6DFD: $FE $18
    rlca                                          ; $6DFF: $07
    ld hl, sp+$00                                 ; $6E00: $F8 $00
    rrca                                          ; $6E02: $0F
    rlca                                          ; $6E03: $07
    ld hl, sp-$08                                 ; $6E04: $F8 $F8
    ld c, $07                                     ; $6E06: $0E $07
    ldh a, [rP1]                                  ; $6E08: $F0 $00
    rlca                                          ; $6E0A: $07
    rlca                                          ; $6E0B: $07
    ldh a, [$F8]                                  ; $6E0C: $F0 $F8
    ld b, $07                                     ; $6E0E: $06 $07
    add b                                         ; $6E10: $80
    nop                                           ; $6E11: $00
    ei                                            ; $6E12: $FB
    jr jr_00F_6E3C                                ; $6E13: $18 $27

    ld hl, sp-$07                                 ; $6E15: $F8 $F9
    rrca                                          ; $6E17: $0F
    daa                                           ; $6E18: $27
    ld hl, sp+$01                                 ; $6E19: $F8 $01
    ld c, $27                                     ; $6E1B: $0E $27
    ldh a, [$F9]                                  ; $6E1D: $F0 $F9
    rlca                                          ; $6E1F: $07
    daa                                           ; $6E20: $27
    ldh a, [rSB]                                  ; $6E21: $F0 $01
    ld b, $27                                     ; $6E23: $06 $27
    add b                                         ; $6E25: $80
    nop                                           ; $6E26: $00
    db $FC                                        ; $6E27: $FC
    add hl, de                                    ; $6E28: $19
    rlca                                          ; $6E29: $07
    ld hl, sp+$00                                 ; $6E2A: $F8 $00
    ld de, $F807                                  ; $6E2C: $11 $07 $F8
    ld hl, sp+$10                                 ; $6E2F: $F8 $10
    rlca                                          ; $6E31: $07
    pop af                                        ; $6E32: $F1
    nop                                           ; $6E33: $00
    inc bc                                        ; $6E34: $03
    rlca                                          ; $6E35: $07
    pop af                                        ; $6E36: $F1
    ld hl, sp+$02                                 ; $6E37: $F8 $02
    rlca                                          ; $6E39: $07
    add b                                         ; $6E3A: $80
    nop                                           ; $6E3B: $00

jr_00F_6E3C:
    nop                                           ; $6E3C: $00
    ld d, $07                                     ; $6E3D: $16 $07
    nop                                           ; $6E3F: $00
    ld sp, hl                                     ; $6E40: $F9
    ld d, $27                                     ; $6E41: $16 $27
    ld hl, sp+$00                                 ; $6E43: $F8 $00
    dec bc                                        ; $6E45: $0B
    rlca                                          ; $6E46: $07
    ld hl, sp-$08                                 ; $6E47: $F8 $F8
    ld a, [bc]                                    ; $6E49: $0A
    rlca                                          ; $6E4A: $07
    ldh a, [rP1]                                  ; $6E4B: $F0 $00
    inc bc                                        ; $6E4D: $03
    rlca                                          ; $6E4E: $07
    ldh a, [$F8]                                  ; $6E4F: $F0 $F8
    ld [bc], a                                    ; $6E51: $02
    rlca                                          ; $6E52: $07
    add b                                         ; $6E53: $80
    ld hl, sp+$00                                 ; $6E54: $F8 $00
    add hl, hl                                    ; $6E56: $29
    rlca                                          ; $6E57: $07
    ld hl, sp-$08                                 ; $6E58: $F8 $F8
    jr z, jr_00F_6E63                             ; $6E5A: $28 $07

    nop                                           ; $6E5C: $00
    db $FC                                        ; $6E5D: $FC
    add hl, de                                    ; $6E5E: $19
    daa                                           ; $6E5F: $27
    pop af                                        ; $6E60: $F1
    nop                                           ; $6E61: $00
    inc bc                                        ; $6E62: $03

jr_00F_6E63:
    rlca                                          ; $6E63: $07
    pop af                                        ; $6E64: $F1
    ld hl, sp+$02                                 ; $6E65: $F8 $02
    rlca                                          ; $6E67: $07
    add b                                         ; $6E68: $80
    nop                                           ; $6E69: $00
    db $FC                                        ; $6E6A: $FC
    ld a, [de]                                    ; $6E6B: $1A
    rlca                                          ; $6E6C: $07
    ld hl, sp+$00                                 ; $6E6D: $F8 $00
    inc de                                        ; $6E6F: $13
    rlca                                          ; $6E70: $07
    ld hl, sp-$08                                 ; $6E71: $F8 $F8
    ld [de], a                                    ; $6E73: $12
    rlca                                          ; $6E74: $07
    pop af                                        ; $6E75: $F1
    nop                                           ; $6E76: $00
    dec b                                         ; $6E77: $05
    rlca                                          ; $6E78: $07
    pop af                                        ; $6E79: $F1
    ld hl, sp+$04                                 ; $6E7A: $F8 $04
    rlca                                          ; $6E7C: $07
    add b                                         ; $6E7D: $80
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    rla                                           ; $6E80: $17
    rlca                                          ; $6E81: $07
    nop                                           ; $6E82: $00
    ld sp, hl                                     ; $6E83: $F9
    rla                                           ; $6E84: $17
    daa                                           ; $6E85: $27
    ld hl, sp+$00                                 ; $6E86: $F8 $00
    dec c                                         ; $6E88: $0D
    rlca                                          ; $6E89: $07
    ld hl, sp-$08                                 ; $6E8A: $F8 $F8
    inc c                                         ; $6E8C: $0C
    rlca                                          ; $6E8D: $07
    ldh a, [rP1]                                  ; $6E8E: $F0 $00
    dec b                                         ; $6E90: $05
    rlca                                          ; $6E91: $07
    ldh a, [$F8]                                  ; $6E92: $F0 $F8
    inc b                                         ; $6E94: $04
    rlca                                          ; $6E95: $07
    add b                                         ; $6E96: $80
    nop                                           ; $6E97: $00
    db $FC                                        ; $6E98: $FC
    ld a, [de]                                    ; $6E99: $1A
    daa                                           ; $6E9A: $27
    ld hl, sp-$08                                 ; $6E9B: $F8 $F8
    inc de                                        ; $6E9D: $13
    daa                                           ; $6E9E: $27
    ld hl, sp+$00                                 ; $6E9F: $F8 $00
    ld [de], a                                    ; $6EA1: $12
    daa                                           ; $6EA2: $27
    pop af                                        ; $6EA3: $F1
    ld hl, sp+$05                                 ; $6EA4: $F8 $05
    daa                                           ; $6EA6: $27
    pop af                                        ; $6EA7: $F1
    nop                                           ; $6EA8: $00
    inc b                                         ; $6EA9: $04
    daa                                           ; $6EAA: $27
    add b                                         ; $6EAB: $80
    nop                                           ; $6EAC: $00
    nop                                           ; $6EAD: $00
    inc h                                         ; $6EAE: $24
    rlca                                          ; $6EAF: $07
    nop                                           ; $6EB0: $00
    ld hl, sp+$23                                 ; $6EB1: $F8 $23
    rlca                                          ; $6EB3: $07
    ld hl, sp+$00                                 ; $6EB4: $F8 $00
    ld e, $07                                     ; $6EB6: $1E $07
    ld hl, sp-$08                                 ; $6EB8: $F8 $F8
    dec e                                         ; $6EBA: $1D
    rlca                                          ; $6EBB: $07
    pop af                                        ; $6EBC: $F1
    nop                                           ; $6EBD: $00
    inc e                                         ; $6EBE: $1C
    rlca                                          ; $6EBF: $07
    pop af                                        ; $6EC0: $F1
    ld hl, sp+$1B                                 ; $6EC1: $F8 $1B
    rlca                                          ; $6EC3: $07
    add b                                         ; $6EC4: $80
    nop                                           ; $6EC5: $00
    db $FD                                        ; $6EC6: $FD
    dec h                                         ; $6EC7: $25
    rlca                                          ; $6EC8: $07
    ld hl, sp+$00                                 ; $6EC9: $F8 $00
    jr nz, jr_00F_6ED4                            ; $6ECB: $20 $07

    ld hl, sp-$08                                 ; $6ECD: $F8 $F8
    rra                                           ; $6ECF: $1F
    rlca                                          ; $6ED0: $07
    ldh a, [rP1]                                  ; $6ED1: $F0 $00
    inc e                                         ; $6ED3: $1C

jr_00F_6ED4:
    rlca                                          ; $6ED4: $07
    ldh a, [$F8]                                  ; $6ED5: $F0 $F8
    dec de                                        ; $6ED7: $1B
    rlca                                          ; $6ED8: $07
    add b                                         ; $6ED9: $80
    ld hl, sp+$00                                 ; $6EDA: $F8 $00
    ld [hl+], a                                   ; $6EDC: $22
    rlca                                          ; $6EDD: $07
    ld hl, sp-$08                                 ; $6EDE: $F8 $F8
    ld hl, $0007                                  ; $6EE0: $21 $07 $00
    nop                                           ; $6EE3: $00
    daa                                           ; $6EE4: $27
    rlca                                          ; $6EE5: $07
    nop                                           ; $6EE6: $00
    ld hl, sp+$26                                 ; $6EE7: $F8 $26
    rlca                                          ; $6EE9: $07
    pop af                                        ; $6EEA: $F1
    nop                                           ; $6EEB: $00
    inc e                                         ; $6EEC: $1C
    rlca                                          ; $6EED: $07
    pop af                                        ; $6EEE: $F1
    ld hl, sp+$1B                                 ; $6EEF: $F8 $1B
    rlca                                          ; $6EF1: $07
    add b                                         ; $6EF2: $80
    nop                                           ; $6EF3: $00
    ld hl, sp+$24                                 ; $6EF4: $F8 $24
    daa                                           ; $6EF6: $27
    nop                                           ; $6EF7: $00
    nop                                           ; $6EF8: $00
    inc hl                                        ; $6EF9: $23
    daa                                           ; $6EFA: $27
    ld hl, sp-$08                                 ; $6EFB: $F8 $F8
    ld e, $27                                     ; $6EFD: $1E $27
    ld hl, sp+$00                                 ; $6EFF: $F8 $00
    dec e                                         ; $6F01: $1D
    daa                                           ; $6F02: $27
    pop af                                        ; $6F03: $F1
    ld hl, sp+$1C                                 ; $6F04: $F8 $1C
    daa                                           ; $6F06: $27
    pop af                                        ; $6F07: $F1
    nop                                           ; $6F08: $00
    dec de                                        ; $6F09: $1B
    daa                                           ; $6F0A: $27
    add b                                         ; $6F0B: $80
    nop                                           ; $6F0C: $00
    ei                                            ; $6F0D: $FB
    dec h                                         ; $6F0E: $25
    daa                                           ; $6F0F: $27
    ld hl, sp-$08                                 ; $6F10: $F8 $F8
    jr nz, jr_00F_6F3B                            ; $6F12: $20 $27

    ld hl, sp+$00                                 ; $6F14: $F8 $00
    rra                                           ; $6F16: $1F
    daa                                           ; $6F17: $27
    ldh a, [$F8]                                  ; $6F18: $F0 $F8
    inc e                                         ; $6F1A: $1C
    daa                                           ; $6F1B: $27
    ldh a, [rP1]                                  ; $6F1C: $F0 $00
    dec de                                        ; $6F1E: $1B
    daa                                           ; $6F1F: $27
    add b                                         ; $6F20: $80
    ld hl, sp-$08                                 ; $6F21: $F8 $F8
    ld [hl+], a                                   ; $6F23: $22
    daa                                           ; $6F24: $27
    ld hl, sp+$00                                 ; $6F25: $F8 $00
    ld hl, $0027                                  ; $6F27: $21 $27 $00
    ld hl, sp+$27                                 ; $6F2A: $F8 $27
    daa                                           ; $6F2C: $27
    nop                                           ; $6F2D: $00
    nop                                           ; $6F2E: $00
    ld h, $27                                     ; $6F2F: $26 $27
    pop af                                        ; $6F31: $F1
    ld hl, sp+$1C                                 ; $6F32: $F8 $1C
    daa                                           ; $6F34: $27
    pop af                                        ; $6F35: $F1
    nop                                           ; $6F36: $00
    dec de                                        ; $6F37: $1B
    daa                                           ; $6F38: $27
    add b                                         ; $6F39: $80
    nop                                           ; $6F3A: $00

jr_00F_6F3B:
    nop                                           ; $6F3B: $00
    jr @+$09                                      ; $6F3C: $18 $07

    nop                                           ; $6F3E: $00
    ld hl, sp+$17                                 ; $6F3F: $F8 $17
    rlca                                          ; $6F41: $07
    ld hl, sp+$00                                 ; $6F42: $F8 $00
    ld d, $07                                     ; $6F44: $16 $07
    ld hl, sp-$08                                 ; $6F46: $F8 $F8
    dec d                                         ; $6F48: $15
    rlca                                          ; $6F49: $07
    ldh a, [rP1]                                  ; $6F4A: $F0 $00
    inc d                                         ; $6F4C: $14
    rlca                                          ; $6F4D: $07
    ldh a, [$F8]                                  ; $6F4E: $F0 $F8
    inc de                                        ; $6F50: $13
    rlca                                          ; $6F51: $07
    add b                                         ; $6F52: $80
    nop                                           ; $6F53: $00
    ld hl, sp+$18                                 ; $6F54: $F8 $18
    daa                                           ; $6F56: $27
    nop                                           ; $6F57: $00
    nop                                           ; $6F58: $00
    rla                                           ; $6F59: $17
    daa                                           ; $6F5A: $27
    ld hl, sp-$08                                 ; $6F5B: $F8 $F8
    ld d, $27                                     ; $6F5D: $16 $27
    ld hl, sp+$00                                 ; $6F5F: $F8 $00
    dec d                                         ; $6F61: $15
    daa                                           ; $6F62: $27
    ldh a, [$F8]                                  ; $6F63: $F0 $F8
    inc d                                         ; $6F65: $14
    daa                                           ; $6F66: $27
    ldh a, [rP1]                                  ; $6F67: $F0 $00
    inc de                                        ; $6F69: $13
    daa                                           ; $6F6A: $27
    add b                                         ; $6F6B: $80
    nop                                           ; $6F6C: $00
    db $FC                                        ; $6F6D: $FC
    inc c                                         ; $6F6E: $0C
    rlca                                          ; $6F6F: $07
    ldh a, [rP1]                                  ; $6F70: $F0 $00
    add hl, bc                                    ; $6F72: $09
    rlca                                          ; $6F73: $07
    ldh a, [$F8]                                  ; $6F74: $F0 $F8
    ld [$F807], sp                                ; $6F76: $08 $07 $F8
    nop                                           ; $6F79: $00
    dec bc                                        ; $6F7A: $0B
    rlca                                          ; $6F7B: $07
    ld hl, sp-$08                                 ; $6F7C: $F8 $F8
    ld a, [bc]                                    ; $6F7E: $0A
    rlca                                          ; $6F7F: $07
    add b                                         ; $6F80: $80
    ld hl, sp+$00                                 ; $6F81: $F8 $00
    ld a, [de]                                    ; $6F83: $1A
    rlca                                          ; $6F84: $07
    ld hl, sp-$08                                 ; $6F85: $F8 $F8
    add hl, de                                    ; $6F87: $19
    rlca                                          ; $6F88: $07
    nop                                           ; $6F89: $00
    db $FC                                        ; $6F8A: $FC
    inc c                                         ; $6F8B: $0C
    daa                                           ; $6F8C: $27
    ldh a, [rP1]                                  ; $6F8D: $F0 $00
    add hl, bc                                    ; $6F8F: $09
    rlca                                          ; $6F90: $07
    ldh a, [$F8]                                  ; $6F91: $F0 $F8
    ld [$8007], sp                                ; $6F93: $08 $07 $80
    ldh a, [rP1]                                  ; $6F96: $F0 $00
    ld c, $07                                     ; $6F98: $0E $07
    ldh a, [$F8]                                  ; $6F9A: $F0 $F8
    dec c                                         ; $6F9C: $0D
    rlca                                          ; $6F9D: $07
    ld hl, sp-$08                                 ; $6F9E: $F8 $F8
    rrca                                          ; $6FA0: $0F
    rlca                                          ; $6FA1: $07
    ld hl, sp+$00                                 ; $6FA2: $F8 $00
    db $10                                        ; $6FA4: $10
    rlca                                          ; $6FA5: $07
    nop                                           ; $6FA6: $00
    nop                                           ; $6FA7: $00
    ld [de], a                                    ; $6FA8: $12
    rlca                                          ; $6FA9: $07
    nop                                           ; $6FAA: $00
    ld hl, sp+$11                                 ; $6FAB: $F8 $11
    rlca                                          ; $6FAD: $07
    add b                                         ; $6FAE: $80
    nop                                           ; $6FAF: $00
    nop                                           ; $6FB0: $00
    rlca                                          ; $6FB1: $07
    rlca                                          ; $6FB2: $07
    nop                                           ; $6FB3: $00
    ld hl, sp+$06                                 ; $6FB4: $F8 $06
    rlca                                          ; $6FB6: $07
    ld hl, sp+$00                                 ; $6FB7: $F8 $00
    ld bc, $F807                                  ; $6FB9: $01 $07 $F8
    ld hl, sp+$00                                 ; $6FBC: $F8 $00
    rlca                                          ; $6FBE: $07
    ldh a, [rP1]                                  ; $6FBF: $F0 $00
    inc bc                                        ; $6FC1: $03
    rlca                                          ; $6FC2: $07
    ldh a, [$F8]                                  ; $6FC3: $F0 $F8
    ld [bc], a                                    ; $6FC5: $02
    rlca                                          ; $6FC6: $07
    add b                                         ; $6FC7: $80
    ld hl, sp+$06                                 ; $6FC8: $F8 $06
    inc b                                         ; $6FCA: $04
    nop                                           ; $6FCB: $00
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    rlca                                          ; $6FCE: $07
    rlca                                          ; $6FCF: $07
    nop                                           ; $6FD0: $00
    ld hl, sp+$06                                 ; $6FD1: $F8 $06
    rlca                                          ; $6FD3: $07
    ld hl, sp+$00                                 ; $6FD4: $F8 $00
    ld bc, $F807                                  ; $6FD6: $01 $07 $F8
    ld hl, sp+$00                                 ; $6FD9: $F8 $00
    rlca                                          ; $6FDB: $07
    ldh a, [rP1]                                  ; $6FDC: $F0 $00
    inc bc                                        ; $6FDE: $03
    rlca                                          ; $6FDF: $07
    ldh a, [$F8]                                  ; $6FE0: $F0 $F8
    ld [bc], a                                    ; $6FE2: $02
    rlca                                          ; $6FE3: $07
    add b                                         ; $6FE4: $80
    ld hl, sp+$05                                 ; $6FE5: $F8 $05
    dec b                                         ; $6FE7: $05
    nop                                           ; $6FE8: $00
    nop                                           ; $6FE9: $00
    nop                                           ; $6FEA: $00
    rlca                                          ; $6FEB: $07
    rlca                                          ; $6FEC: $07
    nop                                           ; $6FED: $00
    ld hl, sp+$06                                 ; $6FEE: $F8 $06
    rlca                                          ; $6FF0: $07
    ld hl, sp+$00                                 ; $6FF1: $F8 $00
    ld bc, $F807                                  ; $6FF3: $01 $07 $F8
    ld hl, sp+$00                                 ; $6FF6: $F8 $00
    rlca                                          ; $6FF8: $07
    ldh a, [rP1]                                  ; $6FF9: $F0 $00
    inc bc                                        ; $6FFB: $03
    rlca                                          ; $6FFC: $07
    ldh a, [$F8]                                  ; $6FFD: $F0 $F8
    ld [bc], a                                    ; $6FFF: $02
    rlca                                          ; $7000: $07
    add b                                         ; $7001: $80
    ld c, l                                       ; $7002: $4D
    ld [$0008], sp                                ; $7003: $08 $08 $00
    rst $38                                       ; $7006: $FF
    ld l, c                                       ; $7007: $69
    ld l, [hl]                                    ; $7008: $6E
    ld a, [hl]                                    ; $7009: $7E
    ld l, [hl]                                    ; $700A: $6E
    sub a                                         ; $700B: $97
    ld l, [hl]                                    ; $700C: $6E
    ld a, [hl]                                    ; $700D: $7E
    ld l, [hl]                                    ; $700E: $6E
    ld b, [hl]                                    ; $700F: $46
    ld [bc], a                                    ; $7010: $02
    ld [hl], b                                    ; $7011: $70
    ld c, l                                       ; $7012: $4D
    ld [$0008], sp                                ; $7013: $08 $08 $00
    ld bc, $6E26                                  ; $7016: $01 $26 $6E
    dec sp                                        ; $7019: $3B
    ld l, [hl]                                    ; $701A: $6E
    ld d, h                                       ; $701B: $54
    ld l, [hl]                                    ; $701C: $6E
    dec sp                                        ; $701D: $3B
    ld l, [hl]                                    ; $701E: $6E
    ld b, [hl]                                    ; $701F: $46
    ld [de], a                                    ; $7020: $12
    ld [hl], b                                    ; $7021: $70
    ld c, l                                       ; $7022: $4D
    ld [$FF08], sp                                ; $7023: $08 $08 $FF
    nop                                           ; $7026: $00
    di                                            ; $7027: $F3
    ld l, [hl]                                    ; $7028: $6E
    inc c                                         ; $7029: $0C
    ld l, a                                       ; $702A: $6F
    ld hl, $0C6F                                  ; $702B: $21 $6F $0C
    ld l, a                                       ; $702E: $6F
    ld b, [hl]                                    ; $702F: $46
    ld [hl+], a                                   ; $7030: $22
    ld [hl], b                                    ; $7031: $70
    ld c, l                                       ; $7032: $4D
    ld [$0108], sp                                ; $7033: $08 $08 $01
    nop                                           ; $7036: $00
    xor h                                         ; $7037: $AC
    ld l, [hl]                                    ; $7038: $6E
    push bc                                       ; $7039: $C5
    ld l, [hl]                                    ; $703A: $6E
    jp c, $C56E                                   ; $703B: $DA $6E $C5

    ld l, [hl]                                    ; $703E: $6E
    ld b, [hl]                                    ; $703F: $46
    ld [hl-], a                                   ; $7040: $32
    ld [hl], b                                    ; $7041: $70
    ld c, l                                       ; $7042: $4D
    ld [$0008], sp                                ; $7043: $08 $08 $00
    cp $69                                        ; $7046: $FE $69
    ld l, [hl]                                    ; $7048: $6E
    ld a, [hl]                                    ; $7049: $7E
    ld l, [hl]                                    ; $704A: $6E
    sub a                                         ; $704B: $97
    ld l, [hl]                                    ; $704C: $6E
    ld a, [hl]                                    ; $704D: $7E
    ld l, [hl]                                    ; $704E: $6E
    ld b, [hl]                                    ; $704F: $46
    ld b, d                                       ; $7050: $42
    ld [hl], b                                    ; $7051: $70
    ld c, l                                       ; $7052: $4D
    ld [$0008], sp                                ; $7053: $08 $08 $00
    ld [bc], a                                    ; $7056: $02
    ld h, $6E                                     ; $7057: $26 $6E
    dec sp                                        ; $7059: $3B
    ld l, [hl]                                    ; $705A: $6E
    ld d, h                                       ; $705B: $54
    ld l, [hl]                                    ; $705C: $6E
    dec sp                                        ; $705D: $3B
    ld l, [hl]                                    ; $705E: $6E
    ld b, [hl]                                    ; $705F: $46
    ld d, d                                       ; $7060: $52
    ld [hl], b                                    ; $7061: $70
    ld c, l                                       ; $7062: $4D
    ld [$FE08], sp                                ; $7063: $08 $08 $FE
    nop                                           ; $7066: $00
    di                                            ; $7067: $F3
    ld l, [hl]                                    ; $7068: $6E
    inc c                                         ; $7069: $0C
    ld l, a                                       ; $706A: $6F
    ld hl, $0C6F                                  ; $706B: $21 $6F $0C
    ld l, a                                       ; $706E: $6F
    ld b, [hl]                                    ; $706F: $46
    ld h, d                                       ; $7070: $62
    ld [hl], b                                    ; $7071: $70
    ld c, l                                       ; $7072: $4D
    ld [$0208], sp                                ; $7073: $08 $08 $02
    nop                                           ; $7076: $00
    xor h                                         ; $7077: $AC
    ld l, [hl]                                    ; $7078: $6E
    push bc                                       ; $7079: $C5
    ld l, [hl]                                    ; $707A: $6E
    jp c, $C56E                                   ; $707B: $DA $6E $C5

    ld l, [hl]                                    ; $707E: $6E
    ld b, [hl]                                    ; $707F: $46
    ld [hl], d                                    ; $7080: $72
    ld [hl], b                                    ; $7081: $70
    ld c, h                                       ; $7082: $4C
    rst $38                                       ; $7083: $FF
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    ld a, [hl]                                    ; $7086: $7E
    ld l, [hl]                                    ; $7087: $6E
    nop                                           ; $7088: $00
    ld b, [hl]                                    ; $7089: $46
    add d                                         ; $708A: $82
    ld [hl], b                                    ; $708B: $70
    ld c, h                                       ; $708C: $4C
    rst $38                                       ; $708D: $FF
    nop                                           ; $708E: $00
    nop                                           ; $708F: $00
    dec sp                                        ; $7090: $3B
    ld l, [hl]                                    ; $7091: $6E
    nop                                           ; $7092: $00
    ld b, [hl]                                    ; $7093: $46
    adc h                                         ; $7094: $8C
    ld [hl], b                                    ; $7095: $70
    ld c, h                                       ; $7096: $4C
    rst $38                                       ; $7097: $FF
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    inc c                                         ; $709A: $0C
    ld l, a                                       ; $709B: $6F
    nop                                           ; $709C: $00
    ld b, [hl]                                    ; $709D: $46
    sub [hl]                                      ; $709E: $96
    ld [hl], b                                    ; $709F: $70
    ld c, h                                       ; $70A0: $4C
    rst $38                                       ; $70A1: $FF
    nop                                           ; $70A2: $00
    nop                                           ; $70A3: $00
    push bc                                       ; $70A4: $C5
    ld l, [hl]                                    ; $70A5: $6E
    nop                                           ; $70A6: $00
    ld b, [hl]                                    ; $70A7: $46
    and b                                         ; $70A8: $A0
    ld [hl], b                                    ; $70A9: $70
    ld c, h                                       ; $70AA: $4C
    rst $38                                       ; $70AB: $FF
    nop                                           ; $70AC: $00
    nop                                           ; $70AD: $00
    ld de, $006E                                  ; $70AE: $11 $6E $00
    ld b, [hl]                                    ; $70B1: $46
    xor d                                         ; $70B2: $AA
    ld [hl], b                                    ; $70B3: $70
    ld c, h                                       ; $70B4: $4C
    rst $38                                       ; $70B5: $FF
    nop                                           ; $70B6: $00
    nop                                           ; $70B7: $00
    db $FC                                        ; $70B8: $FC
    ld l, l                                       ; $70B9: $6D
    nop                                           ; $70BA: $00
    ld b, [hl]                                    ; $70BB: $46
    or h                                          ; $70BC: $B4
    ld [hl], b                                    ; $70BD: $70
    ld c, h                                       ; $70BE: $4C
    rst $38                                       ; $70BF: $FF
    nop                                           ; $70C0: $00
    nop                                           ; $70C1: $00
    db $E3                                        ; $70C2: $E3
    ld l, l                                       ; $70C3: $6D
    nop                                           ; $70C4: $00
    ld b, [hl]                                    ; $70C5: $46
    cp [hl]                                       ; $70C6: $BE
    ld [hl], b                                    ; $70C7: $70
    ld c, h                                       ; $70C8: $4C
    rst $38                                       ; $70C9: $FF
    nop                                           ; $70CA: $00
    nop                                           ; $70CB: $00
    jp z, $006D                                   ; $70CC: $CA $6D $00

    ld b, [hl]                                    ; $70CF: $46
    ret z                                         ; $70D0: $C8

    ld [hl], b                                    ; $70D1: $70
    ld c, h                                       ; $70D2: $4C
    and b                                         ; $70D3: $A0
    nop                                           ; $70D4: $00
    nop                                           ; $70D5: $00
    ld a, [hl-]                                   ; $70D6: $3A
    ld l, a                                       ; $70D7: $6F
    and b                                         ; $70D8: $A0
    nop                                           ; $70D9: $00
    nop                                           ; $70DA: $00
    ld a, [hl-]                                   ; $70DB: $3A
    ld l, a                                       ; $70DC: $6F
    nop                                           ; $70DD: $00
    ld b, [hl]                                    ; $70DE: $46
    jp nc, $4D70                                  ; $70DF: $D2 $70 $4D

    inc b                                         ; $70E2: $04
    stop                                          ; $70E3: $10 $00
    nop                                           ; $70E5: $00
    ld l, h                                       ; $70E6: $6C
    ld l, a                                       ; $70E7: $6F
    add c                                         ; $70E8: $81
    ld l, a                                       ; $70E9: $6F
    ld b, [hl]                                    ; $70EA: $46
    pop hl                                        ; $70EB: $E1
    ld [hl], b                                    ; $70EC: $70
    ld c, l                                       ; $70ED: $4D
    jr nz, jr_00F_70F4                            ; $70EE: $20 $04

    nop                                           ; $70F0: $00
    nop                                           ; $70F1: $00
    xor a                                         ; $70F2: $AF
    ld l, a                                       ; $70F3: $6F

jr_00F_70F4:
    ret z                                         ; $70F4: $C8

    ld l, a                                       ; $70F5: $6F
    push hl                                       ; $70F6: $E5
    ld l, a                                       ; $70F7: $6F
    ret z                                         ; $70F8: $C8

    ld l, a                                       ; $70F9: $6F
    xor a                                         ; $70FA: $AF
    ld l, a                                       ; $70FB: $6F
    ret z                                         ; $70FC: $C8

    ld l, a                                       ; $70FD: $6F
    push hl                                       ; $70FE: $E5
    ld l, a                                       ; $70FF: $6F
    ret z                                         ; $7100: $C8

    ld l, a                                       ; $7101: $6F
    xor a                                         ; $7102: $AF
    ld l, a                                       ; $7103: $6F
    ret z                                         ; $7104: $C8

    ld l, a                                       ; $7105: $6F
    push hl                                       ; $7106: $E5
    ld l, a                                       ; $7107: $6F
    ret z                                         ; $7108: $C8

    ld l, a                                       ; $7109: $6F
    xor a                                         ; $710A: $AF
    ld l, a                                       ; $710B: $6F
    ret z                                         ; $710C: $C8

    ld l, a                                       ; $710D: $6F
    push hl                                       ; $710E: $E5
    ld l, a                                       ; $710F: $6F
    ret z                                         ; $7110: $C8

    ld l, a                                       ; $7111: $6F
    ld c, h                                       ; $7112: $4C
    jr nz, jr_00F_7115                            ; $7113: $20 $00

jr_00F_7115:
    nop                                           ; $7115: $00
    xor a                                         ; $7116: $AF
    ld l, a                                       ; $7117: $6F
    nop                                           ; $7118: $00
    ld b, [hl]                                    ; $7119: $46
    jp nc, $4D70                                  ; $711A: $D2 $70 $4D

    inc c                                         ; $711D: $0C
    jr nz, jr_00F_7120                            ; $711E: $20 $00

jr_00F_7120:
    nop                                           ; $7120: $00
    ld l, h                                       ; $7121: $6C
    ld l, a                                       ; $7122: $6F
    add c                                         ; $7123: $81
    ld l, a                                       ; $7124: $6F
    ld l, h                                       ; $7125: $6C
    ld l, a                                       ; $7126: $6F
    add c                                         ; $7127: $81
    ld l, a                                       ; $7128: $6F
    ld l, h                                       ; $7129: $6C
    ld l, a                                       ; $712A: $6F
    add c                                         ; $712B: $81

jr_00F_712C:
    ld l, a                                       ; $712C: $6F
    ld c, l                                       ; $712D: $4D
    ld [$0010], sp                                ; $712E: $08 $10 $00
    nop                                           ; $7131: $00
    ld l, h                                       ; $7132: $6C
    ld l, a                                       ; $7133: $6F
    add c                                         ; $7134: $81
    ld l, a                                       ; $7135: $6F
    ld l, h                                       ; $7136: $6C
    ld l, a                                       ; $7137: $6F
    add c                                         ; $7138: $81
    ld l, a                                       ; $7139: $6F
    ld b, [hl]                                    ; $713A: $46
    inc e                                         ; $713B: $1C
    ld [hl], c                                    ; $713C: $71
    ld c, h                                       ; $713D: $4C
    rst $38                                       ; $713E: $FF
    nop                                           ; $713F: $00
    nop                                           ; $7140: $00
    sub [hl]                                      ; $7141: $96
    ld l, a                                       ; $7142: $6F
    nop                                           ; $7143: $00
    ld b, [hl]                                    ; $7144: $46
    dec a                                         ; $7145: $3D
    ld [hl], c                                    ; $7146: $71
    ld c, e                                       ; $7147: $4B
    inc bc                                        ; $7148: $03
    rrca                                          ; $7149: $0F
    nop                                           ; $714A: $00
    nop                                           ; $714B: $00
    ld e, [hl]                                    ; $714C: $5E
    ld [hl], c                                    ; $714D: $71
    rrca                                          ; $714E: $0F
    inc bc                                        ; $714F: $03
    nop                                           ; $7150: $00
    ld h, l                                       ; $7151: $65
    ld [hl], c                                    ; $7152: $71
    rrca                                          ; $7153: $0F
    ld [bc], a                                    ; $7154: $02
    nop                                           ; $7155: $00
    ld [hl], e                                    ; $7156: $73
    ld [hl], c                                    ; $7157: $71
    rrca                                          ; $7158: $0F
    ld bc, $6C00                                  ; $7159: $01 $00 $6C
    ld [hl], c                                    ; $715C: $71
    rst $38                                       ; $715D: $FF
    inc d                                         ; $715E: $14
    rrca                                          ; $715F: $0F
    add d                                         ; $7160: $82
    ld [hl], b                                    ; $7161: $70
    ld h, d                                       ; $7162: $62
    ld bc, $1412                                  ; $7163: $01 $12 $14
    rrca                                          ; $7166: $0F
    adc h                                         ; $7167: $8C
    ld [hl], b                                    ; $7168: $70
    ld h, d                                       ; $7169: $62
    ld bc, $1412                                  ; $716A: $01 $12 $14
    rrca                                          ; $716D: $0F
    sub [hl]                                      ; $716E: $96
    ld [hl], b                                    ; $716F: $70
    ld h, d                                       ; $7170: $62
    ld bc, $1412                                  ; $7171: $01 $12 $14
    rrca                                          ; $7174: $0F
    and b                                         ; $7175: $A0
    ld [hl], b                                    ; $7176: $70
    ld h, d                                       ; $7177: $62
    ld bc, $F012                                  ; $7178: $01 $12 $F0
    ld hl, sp+$02                                 ; $717B: $F8 $02
    nop                                           ; $717D: $00
    ldh a, [rP1]                                  ; $717E: $F0 $00
    inc bc                                        ; $7180: $03
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    ld hl, sp+$19                                 ; $7183: $F8 $19
    rlca                                          ; $7185: $07
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00

jr_00F_7188:
    ld a, [de]                                    ; $7188: $1A
    rlca                                          ; $7189: $07
    ld hl, sp-$08                                 ; $718A: $F8 $F8
    ld a, [bc]                                    ; $718C: $0A
    nop                                           ; $718D: $00
    ld hl, sp+$00                                 ; $718E: $F8 $00
    dec bc                                        ; $7190: $0B
    nop                                           ; $7191: $00
    add b                                         ; $7192: $80
    ldh a, [rP1]                                  ; $7193: $F0 $00
    ld [bc], a                                    ; $7195: $02
    jr nz, jr_00F_7188                            ; $7196: $20 $F0

    ld hl, sp+$03                                 ; $7198: $F8 $03
    jr nz, jr_00F_719C                            ; $719A: $20 $00

jr_00F_719C:
    nop                                           ; $719C: $00
    add hl, de                                    ; $719D: $19
    daa                                           ; $719E: $27
    nop                                           ; $719F: $00

jr_00F_71A0:
    ld hl, sp+$1A                                 ; $71A0: $F8 $1A
    daa                                           ; $71A2: $27
    ld hl, sp+$00                                 ; $71A3: $F8 $00
    ld a, [bc]                                    ; $71A5: $0A
    jr nz, jr_00F_71A0                            ; $71A6: $20 $F8

    ld hl, sp+$0B                                 ; $71A8: $F8 $0B
    jr nz, jr_00F_712C                            ; $71AA: $20 $80

    ldh a, [$F8]                                  ; $71AC: $F0 $F8
    ld [$F000], sp                                ; $71AE: $08 $00 $F0
    nop                                           ; $71B1: $00
    add hl, bc                                    ; $71B2: $09
    nop                                           ; $71B3: $00
    ld hl, sp-$08                                 ; $71B4: $F8 $F8
    dec c                                         ; $71B6: $0D
    nop                                           ; $71B7: $00
    ld hl, sp+$00                                 ; $71B8: $F8 $00
    ld c, $00                                     ; $71BA: $0E $00
    nop                                           ; $71BC: $00
    ld hl, sp+$1C                                 ; $71BD: $F8 $1C
    rlca                                          ; $71BF: $07
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    dec e                                         ; $71C2: $1D
    rlca                                          ; $71C3: $07
    add b                                         ; $71C4: $80
    ldh a, [rP1]                                  ; $71C5: $F0 $00
    ld [$F020], sp                                ; $71C7: $08 $20 $F0

jr_00F_71CA:
    ld hl, sp+$09                                 ; $71CA: $F8 $09
    jr nz, @-$06                                  ; $71CC: $20 $F8

    nop                                           ; $71CE: $00
    dec c                                         ; $71CF: $0D
    jr nz, jr_00F_71CA                            ; $71D0: $20 $F8

    ld hl, sp+$0E                                 ; $71D2: $F8 $0E
    jr nz, jr_00F_71D6                            ; $71D4: $20 $00

jr_00F_71D6:
    nop                                           ; $71D6: $00
    inc e                                         ; $71D7: $1C
    daa                                           ; $71D8: $27
    nop                                           ; $71D9: $00
    ld hl, sp+$1D                                 ; $71DA: $F8 $1D
    daa                                           ; $71DC: $27
    add b                                         ; $71DD: $80
    pop af                                        ; $71DE: $F1
    ld hl, sp+$04                                 ; $71DF: $F8 $04
    nop                                           ; $71E1: $00
    pop af                                        ; $71E2: $F1
    nop                                           ; $71E3: $00
    dec b                                         ; $71E4: $05
    nop                                           ; $71E5: $00
    ld hl, sp-$08                                 ; $71E6: $F8 $F8
    stop                                          ; $71E8: $10 $00
    ld hl, sp+$00                                 ; $71EA: $F8 $00
    ld de, $0000                                  ; $71EC: $11 $00 $00
    ld hl, sp+$1F                                 ; $71EF: $F8 $1F
    rlca                                          ; $71F1: $07
    nop                                           ; $71F2: $00
    nop                                           ; $71F3: $00
    jr nz, jr_00F_71FD                            ; $71F4: $20 $07

    add b                                         ; $71F6: $80
    ldh a, [$F8]                                  ; $71F7: $F0 $F8
    inc b                                         ; $71F9: $04
    nop                                           ; $71FA: $00
    ldh a, [rP1]                                  ; $71FB: $F0 $00

jr_00F_71FD:
    dec b                                         ; $71FD: $05
    nop                                           ; $71FE: $00
    ld hl, sp+$00                                 ; $71FF: $F8 $00
    inc c                                         ; $7201: $0C
    nop                                           ; $7202: $00
    ld hl, sp-$08                                 ; $7203: $F8 $F8
    inc c                                         ; $7205: $0C
    jr nz, jr_00F_7208                            ; $7206: $20 $00

jr_00F_7208:
    nop                                           ; $7208: $00
    dec de                                        ; $7209: $1B
    rlca                                          ; $720A: $07
    nop                                           ; $720B: $00
    ld sp, hl                                     ; $720C: $F9
    dec de                                        ; $720D: $1B
    daa                                           ; $720E: $27
    add b                                         ; $720F: $80
    pop af                                        ; $7210: $F1
    ld hl, sp+$04                                 ; $7211: $F8 $04
    nop                                           ; $7213: $00
    pop af                                        ; $7214: $F1

jr_00F_7215:
    nop                                           ; $7215: $00
    dec b                                         ; $7216: $05
    nop                                           ; $7217: $00
    ld hl, sp+$00                                 ; $7218: $F8 $00
    db $10                                        ; $721A: $10
    jr nz, jr_00F_7215                            ; $721B: $20 $F8

    ld hl, sp+$11                                 ; $721D: $F8 $11
    jr nz, jr_00F_7221                            ; $721F: $20 $00

jr_00F_7221:
    nop                                           ; $7221: $00
    rra                                           ; $7222: $1F
    daa                                           ; $7223: $27
    nop                                           ; $7224: $00
    ld hl, sp+$20                                 ; $7225: $F8 $20
    daa                                           ; $7227: $27
    add b                                         ; $7228: $80
    pop af                                        ; $7229: $F1
    ld hl, sp+$06                                 ; $722A: $F8 $06
    nop                                           ; $722C: $00
    pop af                                        ; $722D: $F1
    nop                                           ; $722E: $00
    rlca                                          ; $722F: $07
    nop                                           ; $7230: $00
    ld hl, sp-$08                                 ; $7231: $F8 $F8
    ld [de], a                                    ; $7233: $12
    nop                                           ; $7234: $00
    ld hl, sp+$00                                 ; $7235: $F8 $00
    inc de                                        ; $7237: $13
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    ld hl, sp+$21                                 ; $723A: $F8 $21
    rlca                                          ; $723C: $07
    nop                                           ; $723D: $00
    nop                                           ; $723E: $00
    ld [hl+], a                                   ; $723F: $22
    rlca                                          ; $7240: $07
    add b                                         ; $7241: $80
    ldh a, [$F8]                                  ; $7242: $F0 $F8
    ld b, $00                                     ; $7244: $06 $00
    ldh a, [rP1]                                  ; $7246: $F0 $00
    rlca                                          ; $7248: $07
    nop                                           ; $7249: $00
    ld hl, sp+$00                                 ; $724A: $F8 $00
    rrca                                          ; $724C: $0F
    nop                                           ; $724D: $00
    ld hl, sp-$08                                 ; $724E: $F8 $F8
    rrca                                          ; $7250: $0F
    jr nz, jr_00F_7253                            ; $7251: $20 $00

jr_00F_7253:
    nop                                           ; $7253: $00
    ld e, $07                                     ; $7254: $1E $07
    nop                                           ; $7256: $00
    ld sp, hl                                     ; $7257: $F9
    ld e, $27                                     ; $7258: $1E $27
    add b                                         ; $725A: $80
    pop af                                        ; $725B: $F1
    ld hl, sp+$06                                 ; $725C: $F8 $06
    nop                                           ; $725E: $00
    pop af                                        ; $725F: $F1

jr_00F_7260:
    nop                                           ; $7260: $00
    rlca                                          ; $7261: $07
    nop                                           ; $7262: $00
    ld hl, sp+$01                                 ; $7263: $F8 $01
    ld [de], a                                    ; $7265: $12
    jr nz, jr_00F_7260                            ; $7266: $20 $F8

    ld sp, hl                                     ; $7268: $F9
    inc de                                        ; $7269: $13
    jr nz, jr_00F_726C                            ; $726A: $20 $00

jr_00F_726C:
    ld bc, $2721                                  ; $726C: $01 $21 $27
    nop                                           ; $726F: $00
    ld sp, hl                                     ; $7270: $F9
    ld [hl+], a                                   ; $7271: $22
    daa                                           ; $7272: $27
    add b                                         ; $7273: $80
    pop af                                        ; $7274: $F1
    ld hl, sp+$00                                 ; $7275: $F8 $00
    nop                                           ; $7277: $00
    pop af                                        ; $7278: $F1
    nop                                           ; $7279: $00
    ld bc, $F800                                  ; $727A: $01 $00 $F8
    ld hl, sp+$14                                 ; $727D: $F8 $14
    nop                                           ; $727F: $00
    ld hl, sp+$00                                 ; $7280: $F8 $00
    dec d                                         ; $7282: $15
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    ld hl, sp+$23                                 ; $7285: $F8 $23
    rlca                                          ; $7287: $07
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    inc h                                         ; $728A: $24
    rlca                                          ; $728B: $07
    add b                                         ; $728C: $80
    ldh a, [$F8]                                  ; $728D: $F0 $F8
    nop                                           ; $728F: $00
    nop                                           ; $7290: $00
    ldh a, [rP1]                                  ; $7291: $F0 $00
    ld bc, $F800                                  ; $7293: $01 $00 $F8
    db $FC                                        ; $7296: $FC
    ld d, $00                                     ; $7297: $16 $00
    nop                                           ; $7299: $00
    ld hl, sp+$25                                 ; $729A: $F8 $25
    rlca                                          ; $729C: $07
    nop                                           ; $729D: $00
    nop                                           ; $729E: $00
    ld h, $07                                     ; $729F: $26 $07
    add b                                         ; $72A1: $80
    pop af                                        ; $72A2: $F1
    ld hl, sp+$00                                 ; $72A3: $F8 $00
    nop                                           ; $72A5: $00
    pop af                                        ; $72A6: $F1
    nop                                           ; $72A7: $00
    ld bc, $F800                                  ; $72A8: $01 $00 $F8
    ld hl, sp+$17                                 ; $72AB: $F8 $17
    nop                                           ; $72AD: $00
    ld hl, sp+$00                                 ; $72AE: $F8 $00
    jr jr_00F_72B2                                ; $72B0: $18 $00

jr_00F_72B2:
    nop                                           ; $72B2: $00
    ld hl, sp+$27                                 ; $72B3: $F8 $27
    rlca                                          ; $72B5: $07
    nop                                           ; $72B6: $00
    nop                                           ; $72B7: $00
    jr z, @+$09                                   ; $72B8: $28 $07

    add b                                         ; $72BA: $80
    pop af                                        ; $72BB: $F1

jr_00F_72BC:
    nop                                           ; $72BC: $00
    nop                                           ; $72BD: $00
    jr nz, @-$0D                                  ; $72BE: $20 $F1

jr_00F_72C0:
    ld hl, sp+$01                                 ; $72C0: $F8 $01
    jr nz, jr_00F_72BC                            ; $72C2: $20 $F8

    nop                                           ; $72C4: $00
    inc d                                         ; $72C5: $14
    jr nz, jr_00F_72C0                            ; $72C6: $20 $F8

    ld hl, sp+$15                                 ; $72C8: $F8 $15
    jr nz, jr_00F_72CC                            ; $72CA: $20 $00

jr_00F_72CC:
    nop                                           ; $72CC: $00
    inc hl                                        ; $72CD: $23
    daa                                           ; $72CE: $27
    nop                                           ; $72CF: $00
    ld hl, sp+$24                                 ; $72D0: $F8 $24
    daa                                           ; $72D2: $27
    add b                                         ; $72D3: $80
    ldh a, [rP1]                                  ; $72D4: $F0 $00
    nop                                           ; $72D6: $00
    jr nz, @-$0E                                  ; $72D7: $20 $F0

    ld hl, sp+$01                                 ; $72D9: $F8 $01
    jr nz, @-$06                                  ; $72DB: $20 $F8

    db $FC                                        ; $72DD: $FC
    ld d, $20                                     ; $72DE: $16 $20
    nop                                           ; $72E0: $00
    nop                                           ; $72E1: $00
    dec h                                         ; $72E2: $25
    daa                                           ; $72E3: $27
    nop                                           ; $72E4: $00
    ld hl, sp+$26                                 ; $72E5: $F8 $26
    daa                                           ; $72E7: $27
    add b                                         ; $72E8: $80
    pop af                                        ; $72E9: $F1

jr_00F_72EA:
    nop                                           ; $72EA: $00
    nop                                           ; $72EB: $00
    jr nz, @-$0D                                  ; $72EC: $20 $F1

jr_00F_72EE:
    ld hl, sp+$01                                 ; $72EE: $F8 $01
    jr nz, jr_00F_72EA                            ; $72F0: $20 $F8

    nop                                           ; $72F2: $00
    rla                                           ; $72F3: $17
    jr nz, jr_00F_72EE                            ; $72F4: $20 $F8

    ld hl, sp+$18                                 ; $72F6: $F8 $18
    jr nz, jr_00F_72FA                            ; $72F8: $20 $00

jr_00F_72FA:
    nop                                           ; $72FA: $00
    daa                                           ; $72FB: $27
    daa                                           ; $72FC: $27
    nop                                           ; $72FD: $00
    ld hl, sp+$28                                 ; $72FE: $F8 $28
    daa                                           ; $7300: $27
    add b                                         ; $7301: $80
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    ld l, $07                                     ; $7304: $2E $07
    nop                                           ; $7306: $00
    ld hl, sp+$2D                                 ; $7307: $F8 $2D
    rlca                                          ; $7309: $07
    ld hl, sp+$00                                 ; $730A: $F8 $00
    inc l                                         ; $730C: $2C
    nop                                           ; $730D: $00
    ld hl, sp-$08                                 ; $730E: $F8 $F8
    dec hl                                        ; $7310: $2B
    nop                                           ; $7311: $00
    ldh a, [rP1]                                  ; $7312: $F0 $00
    ld a, [hl+]                                   ; $7314: $2A
    nop                                           ; $7315: $00
    ldh a, [$F8]                                  ; $7316: $F0 $F8
    add hl, hl                                    ; $7318: $29
    nop                                           ; $7319: $00
    add b                                         ; $731A: $80
    nop                                           ; $731B: $00

jr_00F_731C:
    ld hl, sp+$2E                                 ; $731C: $F8 $2E
    daa                                           ; $731E: $27
    nop                                           ; $731F: $00

jr_00F_7320:
    nop                                           ; $7320: $00
    dec l                                         ; $7321: $2D
    daa                                           ; $7322: $27
    ld hl, sp-$08                                 ; $7323: $F8 $F8
    inc l                                         ; $7325: $2C
    jr nz, jr_00F_7320                            ; $7326: $20 $F8

    nop                                           ; $7328: $00
    dec hl                                        ; $7329: $2B
    jr nz, jr_00F_731C                            ; $732A: $20 $F0

    ld hl, sp+$2A                                 ; $732C: $F8 $2A
    jr nz, jr_00F_7320                            ; $732E: $20 $F0

    nop                                           ; $7330: $00
    add hl, hl                                    ; $7331: $29
    jr nz, @-$7E                                  ; $7332: $20 $80

    ld c, l                                       ; $7334: $4D
    ld [$0008], sp                                ; $7335: $08 $08 $00
    rst $38                                       ; $7338: $FF
    add hl, hl                                    ; $7339: $29
    ld [hl], d                                    ; $733A: $72
    ld b, d                                       ; $733B: $42
    ld [hl], d                                    ; $733C: $72
    ld e, e                                       ; $733D: $5B
    ld [hl], d                                    ; $733E: $72
    ld b, d                                       ; $733F: $42
    ld [hl], d                                    ; $7340: $72
    ld b, [hl]                                    ; $7341: $46
    inc [hl]                                      ; $7342: $34
    ld [hl], e                                    ; $7343: $73
    ld c, l                                       ; $7344: $4D
    ld [$0008], sp                                ; $7345: $08 $08 $00
    ld bc, $71DE                                  ; $7348: $01 $DE $71
    rst $30                                       ; $734B: $F7
    ld [hl], c                                    ; $734C: $71
    db $10                                        ; $734D: $10
    ld [hl], d                                    ; $734E: $72
    rst $30                                       ; $734F: $F7
    ld [hl], c                                    ; $7350: $71
    ld b, [hl]                                    ; $7351: $46
    ld b, h                                       ; $7352: $44
    ld [hl], e                                    ; $7353: $73
    ld c, l                                       ; $7354: $4D
    ld [$FF08], sp                                ; $7355: $08 $08 $FF
    nop                                           ; $7358: $00
    cp e                                          ; $7359: $BB
    ld [hl], d                                    ; $735A: $72
    call nc, $E972                                ; $735B: $D4 $72 $E9
    ld [hl], d                                    ; $735E: $72
    call nc, $4672                                ; $735F: $D4 $72 $46
    ld d, h                                       ; $7362: $54
    ld [hl], e                                    ; $7363: $73
    ld c, l                                       ; $7364: $4D
    ld [$0108], sp                                ; $7365: $08 $08 $01
    nop                                           ; $7368: $00
    ld [hl], h                                    ; $7369: $74
    ld [hl], d                                    ; $736A: $72
    adc l                                         ; $736B: $8D
    ld [hl], d                                    ; $736C: $72
    and d                                         ; $736D: $A2
    ld [hl], d                                    ; $736E: $72
    adc l                                         ; $736F: $8D
    ld [hl], d                                    ; $7370: $72
    ld b, [hl]                                    ; $7371: $46
    ld h, h                                       ; $7372: $64
    ld [hl], e                                    ; $7373: $73
    ld c, l                                       ; $7374: $4D
    ld [$0008], sp                                ; $7375: $08 $08 $00
    cp $29                                        ; $7378: $FE $29
    ld [hl], d                                    ; $737A: $72
    ld b, d                                       ; $737B: $42
    ld [hl], d                                    ; $737C: $72
    ld e, e                                       ; $737D: $5B
    ld [hl], d                                    ; $737E: $72
    ld b, d                                       ; $737F: $42
    ld [hl], d                                    ; $7380: $72
    ld b, [hl]                                    ; $7381: $46
    ld [hl], h                                    ; $7382: $74
    ld [hl], e                                    ; $7383: $73
    ld c, l                                       ; $7384: $4D
    ld [$0008], sp                                ; $7385: $08 $08 $00
    ld [bc], a                                    ; $7388: $02
    sbc $71                                       ; $7389: $DE $71
    rst $30                                       ; $738B: $F7
    ld [hl], c                                    ; $738C: $71
    db $10                                        ; $738D: $10
    ld [hl], d                                    ; $738E: $72
    rst $30                                       ; $738F: $F7
    ld [hl], c                                    ; $7390: $71
    ld b, [hl]                                    ; $7391: $46
    add h                                         ; $7392: $84
    ld [hl], e                                    ; $7393: $73
    ld c, l                                       ; $7394: $4D
    ld [$FE08], sp                                ; $7395: $08 $08 $FE
    nop                                           ; $7398: $00
    cp e                                          ; $7399: $BB
    ld [hl], d                                    ; $739A: $72
    call nc, $E972                                ; $739B: $D4 $72 $E9
    ld [hl], d                                    ; $739E: $72
    call nc, $4672                                ; $739F: $D4 $72 $46
    sub h                                         ; $73A2: $94
    ld [hl], e                                    ; $73A3: $73
    ld c, l                                       ; $73A4: $4D
    ld [$0208], sp                                ; $73A5: $08 $08 $02
    nop                                           ; $73A8: $00
    ld [hl], h                                    ; $73A9: $74
    ld [hl], d                                    ; $73AA: $72
    adc l                                         ; $73AB: $8D
    ld [hl], d                                    ; $73AC: $72
    and d                                         ; $73AD: $A2
    ld [hl], d                                    ; $73AE: $72
    adc l                                         ; $73AF: $8D
    ld [hl], d                                    ; $73B0: $72
    ld b, [hl]                                    ; $73B1: $46
    and h                                         ; $73B2: $A4
    ld [hl], e                                    ; $73B3: $73
    ld c, h                                       ; $73B4: $4C
    rst $38                                       ; $73B5: $FF
    nop                                           ; $73B6: $00
    nop                                           ; $73B7: $00
    ld b, d                                       ; $73B8: $42
    ld [hl], d                                    ; $73B9: $72
    nop                                           ; $73BA: $00
    ld b, [hl]                                    ; $73BB: $46
    or h                                          ; $73BC: $B4
    ld [hl], e                                    ; $73BD: $73
    ld c, h                                       ; $73BE: $4C
    rst $38                                       ; $73BF: $FF
    nop                                           ; $73C0: $00
    nop                                           ; $73C1: $00
    rst $30                                       ; $73C2: $F7
    ld [hl], c                                    ; $73C3: $71
    nop                                           ; $73C4: $00
    ld b, [hl]                                    ; $73C5: $46
    cp [hl]                                       ; $73C6: $BE
    ld [hl], e                                    ; $73C7: $73
    ld c, h                                       ; $73C8: $4C
    rst $38                                       ; $73C9: $FF
    nop                                           ; $73CA: $00
    nop                                           ; $73CB: $00
    call nc, $0072                                ; $73CC: $D4 $72 $00
    ld b, [hl]                                    ; $73CF: $46
    ret z                                         ; $73D0: $C8

    ld [hl], e                                    ; $73D1: $73
    ld c, h                                       ; $73D2: $4C
    rst $38                                       ; $73D3: $FF
    nop                                           ; $73D4: $00
    nop                                           ; $73D5: $00
    adc l                                         ; $73D6: $8D
    ld [hl], d                                    ; $73D7: $72
    nop                                           ; $73D8: $00
    ld b, [hl]                                    ; $73D9: $46
    jp nc, Jump_00F_4C73                          ; $73DA: $D2 $73 $4C

    rst $38                                       ; $73DD: $FF
    nop                                           ; $73DE: $00
    nop                                           ; $73DF: $00
    push bc                                       ; $73E0: $C5
    ld [hl], c                                    ; $73E1: $71
    nop                                           ; $73E2: $00
    ld b, [hl]                                    ; $73E3: $46
    call c, Call_00F_4C73                         ; $73E4: $DC $73 $4C
    rst $38                                       ; $73E7: $FF
    nop                                           ; $73E8: $00
    nop                                           ; $73E9: $00
    xor h                                         ; $73EA: $AC
    ld [hl], c                                    ; $73EB: $71
    nop                                           ; $73EC: $00
    ld b, [hl]                                    ; $73ED: $46
    and $73                                       ; $73EE: $E6 $73
    ld c, h                                       ; $73F0: $4C
    rst $38                                       ; $73F1: $FF
    nop                                           ; $73F2: $00
    nop                                           ; $73F3: $00
    sub e                                         ; $73F4: $93
    ld [hl], c                                    ; $73F5: $71
    nop                                           ; $73F6: $00
    ld b, [hl]                                    ; $73F7: $46
    ldh a, [$73]                                  ; $73F8: $F0 $73
    ld c, h                                       ; $73FA: $4C
    rst $38                                       ; $73FB: $FF
    nop                                           ; $73FC: $00
    nop                                           ; $73FD: $00
    ld a, d                                       ; $73FE: $7A
    ld [hl], c                                    ; $73FF: $71
    nop                                           ; $7400: $00
    ld b, [hl]                                    ; $7401: $46
    ld a, [$4D73]                                 ; $7402: $FA $73 $4D
    ld [rDIV], sp                                ; $7405: $08 $04 $FF
    nop                                           ; $7408: $00
    ld [hl], h                                    ; $7409: $74
    ld [hl], d                                    ; $740A: $72
    adc l                                         ; $740B: $8D
    ld [hl], d                                    ; $740C: $72
    and d                                         ; $740D: $A2
    ld [hl], d                                    ; $740E: $72
    adc l                                         ; $740F: $8D
    ld [hl], d                                    ; $7410: $72
    ld b, [hl]                                    ; $7411: $46
    inc b                                         ; $7412: $04
    ld [hl], h                                    ; $7413: $74
    ld c, l                                       ; $7414: $4D
    ld [$0004], sp                                ; $7415: $08 $04 $00
    ld bc, $7229                                  ; $7418: $01 $29 $72
    ld b, d                                       ; $741B: $42
    ld [hl], d                                    ; $741C: $72
    ld e, e                                       ; $741D: $5B
    ld [hl], d                                    ; $741E: $72
    ld b, d                                       ; $741F: $42
    ld [hl], d                                    ; $7420: $72
    ld b, [hl]                                    ; $7421: $46
    inc d                                         ; $7422: $14
    ld [hl], h                                    ; $7423: $74
    ld c, h                                       ; $7424: $4C
    rst $38                                       ; $7425: $FF
    nop                                           ; $7426: $00
    nop                                           ; $7427: $00
    dec de                                        ; $7428: $1B
    ld [hl], e                                    ; $7429: $73
    nop                                           ; $742A: $00
    ld b, [hl]                                    ; $742B: $46
    inc h                                         ; $742C: $24
    ld [hl], h                                    ; $742D: $74
    ld c, h                                       ; $742E: $4C
    rst $38                                       ; $742F: $FF
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    ld [bc], a                                    ; $7432: $02
    ld [hl], e                                    ; $7433: $73
    nop                                           ; $7434: $00
    ld b, [hl]                                    ; $7435: $46
    ld l, $74                                     ; $7436: $2E $74
    ld c, e                                       ; $7438: $4B
    inc bc                                        ; $7439: $03
    rrca                                          ; $743A: $0F
    nop                                           ; $743B: $00
    nop                                           ; $743C: $00
    ld c, a                                       ; $743D: $4F
    ld [hl], h                                    ; $743E: $74
    rrca                                          ; $743F: $0F
    inc bc                                        ; $7440: $03
    nop                                           ; $7441: $00
    ld d, [hl]                                    ; $7442: $56
    ld [hl], h                                    ; $7443: $74
    rrca                                          ; $7444: $0F
    ld [bc], a                                    ; $7445: $02
    nop                                           ; $7446: $00
    ld h, h                                       ; $7447: $64
    ld [hl], h                                    ; $7448: $74
    rrca                                          ; $7449: $0F
    ld bc, $5D00                                  ; $744A: $01 $00 $5D
    ld [hl], h                                    ; $744D: $74
    rst $38                                       ; $744E: $FF
    inc d                                         ; $744F: $14
    rrca                                          ; $7450: $0F
    or h                                          ; $7451: $B4
    ld [hl], e                                    ; $7452: $73
    ld h, d                                       ; $7453: $62
    ld bc, $1412                                  ; $7454: $01 $12 $14
    rrca                                          ; $7457: $0F
    cp [hl]                                       ; $7458: $BE
    ld [hl], e                                    ; $7459: $73
    ld h, d                                       ; $745A: $62
    ld bc, $1412                                  ; $745B: $01 $12 $14
    rrca                                          ; $745E: $0F
    ret z                                         ; $745F: $C8

    ld [hl], e                                    ; $7460: $73
    ld h, d                                       ; $7461: $62
    ld bc, $1412                                  ; $7462: $01 $12 $14
    rrca                                          ; $7465: $0F
    jp nc, Jump_00F_6273                          ; $7466: $D2 $73 $62

    ld bc, $0012                                  ; $7469: $01 $12 $00
    nop                                           ; $746C: $00
    dec b                                         ; $746D: $05
    ld b, $00                                     ; $746E: $06 $00
    ld hl, sp+$04                                 ; $7470: $F8 $04
    ld b, $F8                                     ; $7472: $06 $F8
    nop                                           ; $7474: $00
    inc bc                                        ; $7475: $03
    ld b, $F8                                     ; $7476: $06 $F8
    ld hl, sp+$02                                 ; $7478: $F8 $02
    ld b, $F0                                     ; $747A: $06 $F0
    nop                                           ; $747C: $00
    ld bc, $F006                                  ; $747D: $01 $06 $F0
    ld hl, sp+$00                                 ; $7480: $F8 $00
    ld b, $80                                     ; $7482: $06 $80
    nop                                           ; $7484: $00
    ld hl, sp+$05                                 ; $7485: $F8 $05
    ld h, $00                                     ; $7487: $26 $00
    nop                                           ; $7489: $00
    inc b                                         ; $748A: $04
    ld h, $F8                                     ; $748B: $26 $F8
    ld hl, sp+$03                                 ; $748D: $F8 $03
    ld h, $F8                                     ; $748F: $26 $F8
    nop                                           ; $7491: $00
    ld [bc], a                                    ; $7492: $02
    ld h, $F0                                     ; $7493: $26 $F0
    ld hl, sp+$01                                 ; $7495: $F8 $01
    ld h, $F0                                     ; $7497: $26 $F0
    nop                                           ; $7499: $00
    nop                                           ; $749A: $00
    ld h, $80                                     ; $749B: $26 $80
    nop                                           ; $749D: $00
    nop                                           ; $749E: $00
    dec bc                                        ; $749F: $0B
    ld b, $00                                     ; $74A0: $06 $00
    ld hl, sp+$0A                                 ; $74A2: $F8 $0A
    ld b, $F8                                     ; $74A4: $06 $F8
    nop                                           ; $74A6: $00
    add hl, bc                                    ; $74A7: $09
    ld b, $F8                                     ; $74A8: $06 $F8
    ld hl, sp+$08                                 ; $74AA: $F8 $08
    ld b, $F0                                     ; $74AC: $06 $F0
    nop                                           ; $74AE: $00
    rlca                                          ; $74AF: $07
    ld b, $F0                                     ; $74B0: $06 $F0
    ld hl, sp+$06                                 ; $74B2: $F8 $06
    ld b, $80                                     ; $74B4: $06 $80
    nop                                           ; $74B6: $00
    ld hl, sp+$0B                                 ; $74B7: $F8 $0B
    ld h, $00                                     ; $74B9: $26 $00
    nop                                           ; $74BB: $00
    ld a, [bc]                                    ; $74BC: $0A
    ld h, $F8                                     ; $74BD: $26 $F8
    ld hl, sp+$09                                 ; $74BF: $F8 $09
    ld h, $F8                                     ; $74C1: $26 $F8
    nop                                           ; $74C3: $00
    ld [$F026], sp                                ; $74C4: $08 $26 $F0
    ld hl, sp+$07                                 ; $74C7: $F8 $07
    ld h, $F0                                     ; $74C9: $26 $F0
    nop                                           ; $74CB: $00
    ld b, $26                                     ; $74CC: $06 $26
    add b                                         ; $74CE: $80
    nop                                           ; $74CF: $00
    nop                                           ; $74D0: $00
    inc d                                         ; $74D1: $14
    ld b, $00                                     ; $74D2: $06 $00
    ld hl, sp+$13                                 ; $74D4: $F8 $13
    ld b, $F1                                     ; $74D6: $06 $F1
    nop                                           ; $74D8: $00
    dec c                                         ; $74D9: $0D
    ld b, $F0                                     ; $74DA: $06 $F0
    ld hl, sp+$0E                                 ; $74DC: $F8 $0E
    ld b, $F8                                     ; $74DE: $06 $F8
    nop                                           ; $74E0: $00
    ld de, $F806                                  ; $74E1: $11 $06 $F8
    ld hl, sp+$10                                 ; $74E4: $F8 $10
    ld b, $80                                     ; $74E6: $06 $80
    ld hl, sp-$08                                 ; $74E8: $F8 $F8
    ld [de], a                                    ; $74EA: $12
    ld h, $F8                                     ; $74EB: $26 $F8
    nop                                           ; $74ED: $00
    ld [de], a                                    ; $74EE: $12
    ld b, $00                                     ; $74EF: $06 $00
    nop                                           ; $74F1: $00
    ld d, $06                                     ; $74F2: $16 $06
    nop                                           ; $74F4: $00
    ld hl, sp+$15                                 ; $74F5: $F8 $15
    ld b, $F0                                     ; $74F7: $06 $F0
    nop                                           ; $74F9: $00
    dec c                                         ; $74FA: $0D
    ld b, $F0                                     ; $74FB: $06 $F0
    ld hl, sp+$0C                                 ; $74FD: $F8 $0C
    ld b, $80                                     ; $74FF: $06 $80
    pop af                                        ; $7501: $F1
    ld hl, sp+$0C                                 ; $7502: $F8 $0C
    ld b, $F0                                     ; $7504: $06 $F0
    nop                                           ; $7506: $00
    rrca                                          ; $7507: $0F
    ld b, $00                                     ; $7508: $06 $00
    ld hl, sp+$14                                 ; $750A: $F8 $14
    ld h, $00                                     ; $750C: $26 $00
    nop                                           ; $750E: $00
    inc de                                        ; $750F: $13
    ld h, $F8                                     ; $7510: $26 $F8
    ld hl, sp+$11                                 ; $7512: $F8 $11
    ld h, $F8                                     ; $7514: $26 $F8
    nop                                           ; $7516: $00
    db $10                                        ; $7517: $10
    ld h, $80                                     ; $7518: $26 $80
    ldh a, [rP1]                                  ; $751A: $F0 $00
    jr jr_00F_7524                                ; $751C: $18 $06

    ldh a, [$F8]                                  ; $751E: $F0 $F8
    rla                                           ; $7520: $17
    ld b, $F8                                     ; $7521: $06 $F8
    nop                                           ; $7523: $00

jr_00F_7524:
    inc e                                         ; $7524: $1C
    ld b, $F8                                     ; $7525: $06 $F8
    ld hl, sp+$1B                                 ; $7527: $F8 $1B
    ld b, $00                                     ; $7529: $06 $00
    nop                                           ; $752B: $00
    ld hl, $0006                                  ; $752C: $21 $06 $00
    ld hl, sp+$20                                 ; $752F: $F8 $20
    ld b, $80                                     ; $7531: $06 $80
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    rra                                           ; $7535: $1F
    ld b, $00                                     ; $7536: $06 $00
    ld hl, sp+$1E                                 ; $7538: $F8 $1E
    ld b, $F8                                     ; $753A: $06 $F8
    ld hl, sp+$1D                                 ; $753C: $F8 $1D
    ld h, $F8                                     ; $753E: $26 $F8
    nop                                           ; $7540: $00
    dec e                                         ; $7541: $1D
    ld b, $F0                                     ; $7542: $06 $F0
    nop                                           ; $7544: $00
    ld a, [de]                                    ; $7545: $1A
    ld b, $F0                                     ; $7546: $06 $F0
    ld hl, sp+$19                                 ; $7548: $F8 $19
    ld b, $80                                     ; $754A: $06 $80
    ldh a, [$F8]                                  ; $754C: $F0 $F8
    jr jr_00F_7576                                ; $754E: $18 $26

    ldh a, [rP1]                                  ; $7550: $F0 $00
    rla                                           ; $7552: $17
    ld h, $F8                                     ; $7553: $26 $F8
    ld hl, sp+$1C                                 ; $7555: $F8 $1C
    ld h, $F8                                     ; $7557: $26 $F8
    nop                                           ; $7559: $00
    dec de                                        ; $755A: $1B
    ld h, $00                                     ; $755B: $26 $00
    ld hl, sp+$21                                 ; $755D: $F8 $21
    ld h, $00                                     ; $755F: $26 $00
    nop                                           ; $7561: $00
    jr nz, jr_00F_758A                            ; $7562: $20 $26

    add b                                         ; $7564: $80
    nop                                           ; $7565: $00
    ldh a, [$31]                                  ; $7566: $F0 $31
    nop                                           ; $7568: $00
    ld hl, sp-$10                                 ; $7569: $F8 $F0
    jr nc, jr_00F_756D                            ; $756B: $30 $00

jr_00F_756D:
    nop                                           ; $756D: $00
    nop                                           ; $756E: $00
    daa                                           ; $756F: $27
    ld b, $00                                     ; $7570: $06 $00
    ld hl, sp+$26                                 ; $7572: $F8 $26
    ld b, $F8                                     ; $7574: $06 $F8

jr_00F_7576:
    nop                                           ; $7576: $00
    dec h                                         ; $7577: $25
    ld b, $F8                                     ; $7578: $06 $F8
    ld hl, sp+$24                                 ; $757A: $F8 $24
    ld b, $F1                                     ; $757C: $06 $F1
    nop                                           ; $757E: $00
    inc hl                                        ; $757F: $23
    ld b, $F1                                     ; $7580: $06 $F1
    ld hl, sp+$22                                 ; $7582: $F8 $22
    ld b, $80                                     ; $7584: $06 $80
    rst $38                                       ; $7586: $FF
    ldh a, [$31]                                  ; $7587: $F0 $31
    nop                                           ; $7589: $00

jr_00F_758A:
    rst $30                                       ; $758A: $F7
    ldh a, [$30]                                  ; $758B: $F0 $30
    nop                                           ; $758D: $00
    nop                                           ; $758E: $00
    nop                                           ; $758F: $00
    dec hl                                        ; $7590: $2B
    ld b, $00                                     ; $7591: $06 $00
    ld hl, sp+$2A                                 ; $7593: $F8 $2A
    ld b, $F8                                     ; $7595: $06 $F8
    nop                                           ; $7597: $00
    add hl, hl                                    ; $7598: $29
    ld b, $F8                                     ; $7599: $06 $F8
    ld hl, sp+$28                                 ; $759B: $F8 $28
    ld b, $F0                                     ; $759D: $06 $F0
    nop                                           ; $759F: $00
    inc hl                                        ; $75A0: $23
    ld b, $F0                                     ; $75A1: $06 $F0
    ld hl, sp+$22                                 ; $75A3: $F8 $22
    ld b, $80                                     ; $75A5: $06 $80
    nop                                           ; $75A7: $00
    ldh a, [$31]                                  ; $75A8: $F0 $31
    nop                                           ; $75AA: $00
    ld hl, sp-$10                                 ; $75AB: $F8 $F0
    jr nc, jr_00F_75AF                            ; $75AD: $30 $00

jr_00F_75AF:
    nop                                           ; $75AF: $00
    nop                                           ; $75B0: $00
    cpl                                           ; $75B1: $2F
    ld b, $00                                     ; $75B2: $06 $00
    ld hl, sp+$2E                                 ; $75B4: $F8 $2E
    ld b, $F8                                     ; $75B6: $06 $F8
    nop                                           ; $75B8: $00
    dec l                                         ; $75B9: $2D
    ld b, $F8                                     ; $75BA: $06 $F8
    ld hl, sp+$2C                                 ; $75BC: $F8 $2C
    ld b, $F1                                     ; $75BE: $06 $F1
    nop                                           ; $75C0: $00
    inc hl                                        ; $75C1: $23
    ld b, $F1                                     ; $75C2: $06 $F1
    ld hl, sp+$22                                 ; $75C4: $F8 $22
    ld b, $80                                     ; $75C6: $06 $80
    nop                                           ; $75C8: $00
    ld [$2031], sp                                ; $75C9: $08 $31 $20
    ld hl, sp+$08                                 ; $75CC: $F8 $08
    jr nc, @+$22                                  ; $75CE: $30 $20

    nop                                           ; $75D0: $00
    ld hl, sp+$27                                 ; $75D1: $F8 $27
    ld h, $00                                     ; $75D3: $26 $00
    nop                                           ; $75D5: $00
    ld h, $26                                     ; $75D6: $26 $26
    ld hl, sp-$08                                 ; $75D8: $F8 $F8
    dec h                                         ; $75DA: $25
    ld h, $F8                                     ; $75DB: $26 $F8
    nop                                           ; $75DD: $00
    inc h                                         ; $75DE: $24
    ld h, $F1                                     ; $75DF: $26 $F1
    ld hl, sp+$23                                 ; $75E1: $F8 $23
    ld h, $F1                                     ; $75E3: $26 $F1
    nop                                           ; $75E5: $00
    ld [hl+], a                                   ; $75E6: $22
    ld h, $80                                     ; $75E7: $26 $80
    rst $38                                       ; $75E9: $FF
    ld [$2031], sp                                ; $75EA: $08 $31 $20
    rst $30                                       ; $75ED: $F7
    ld [$2030], sp                                ; $75EE: $08 $30 $20
    nop                                           ; $75F1: $00
    ld hl, sp+$2B                                 ; $75F2: $F8 $2B
    ld h, $00                                     ; $75F4: $26 $00
    nop                                           ; $75F6: $00
    ld a, [hl+]                                   ; $75F7: $2A
    ld h, $F8                                     ; $75F8: $26 $F8
    ld hl, sp+$29                                 ; $75FA: $F8 $29
    ld h, $F8                                     ; $75FC: $26 $F8
    nop                                           ; $75FE: $00
    jr z, jr_00F_7627                             ; $75FF: $28 $26

    ldh a, [$F8]                                  ; $7601: $F0 $F8
    inc hl                                        ; $7603: $23
    ld h, $F0                                     ; $7604: $26 $F0
    nop                                           ; $7606: $00
    ld [hl+], a                                   ; $7607: $22
    ld h, $80                                     ; $7608: $26 $80
    nop                                           ; $760A: $00
    ld [$2031], sp                                ; $760B: $08 $31 $20
    ld hl, sp+$08                                 ; $760E: $F8 $08
    jr nc, jr_00F_7632                            ; $7610: $30 $20

    nop                                           ; $7612: $00
    ld hl, sp+$2F                                 ; $7613: $F8 $2F
    ld h, $00                                     ; $7615: $26 $00
    nop                                           ; $7617: $00
    ld l, $26                                     ; $7618: $2E $26
    ld hl, sp-$08                                 ; $761A: $F8 $F8
    dec l                                         ; $761C: $2D
    ld h, $F8                                     ; $761D: $26 $F8
    nop                                           ; $761F: $00
    inc l                                         ; $7620: $2C
    ld h, $F1                                     ; $7621: $26 $F1
    ld hl, sp+$23                                 ; $7623: $F8 $23
    ld h, $F1                                     ; $7625: $26 $F1

jr_00F_7627:
    nop                                           ; $7627: $00
    ld [hl+], a                                   ; $7628: $22
    ld h, $80                                     ; $7629: $26 $80
    nop                                           ; $762B: $00
    ld sp, hl                                     ; $762C: $F9
    inc bc                                        ; $762D: $03
    ld [hl+], a                                   ; $762E: $22
    nop                                           ; $762F: $00
    nop                                           ; $7630: $00
    inc bc                                        ; $7631: $03

jr_00F_7632:
    ld [bc], a                                    ; $7632: $02
    ld hl, sp-$08                                 ; $7633: $F8 $F8
    ld [bc], a                                    ; $7635: $02
    ld [hl+], a                                   ; $7636: $22
    ld hl, sp+$00                                 ; $7637: $F8 $00
    ld [bc], a                                    ; $7639: $02
    ld [bc], a                                    ; $763A: $02
    ldh a, [rP1]                                  ; $763B: $F0 $00
    ld bc, $F002                                  ; $763D: $01 $02 $F0
    ld hl, sp+$00                                 ; $7640: $F8 $00
    ld [bc], a                                    ; $7642: $02
    add b                                         ; $7643: $80
    ld c, l                                       ; $7644: $4D
    ld [$0008], sp                                ; $7645: $08 $08 $00
    rst $38                                       ; $7648: $FF
    ld a, [de]                                    ; $7649: $1A
    ld [hl], l                                    ; $764A: $75
    inc sp                                        ; $764B: $33
    ld [hl], l                                    ; $764C: $75
    ld c, h                                       ; $764D: $4C
    ld [hl], l                                    ; $764E: $75
    inc sp                                        ; $764F: $33
    ld [hl], l                                    ; $7650: $75
    ld b, [hl]                                    ; $7651: $46
    ld b, h                                       ; $7652: $44
    halt                                          ; $7653: $76
    ld c, l                                       ; $7654: $4D
    ld [$0008], sp                                ; $7655: $08 $08 $00
    ld bc, $74CF                                  ; $7658: $01 $CF $74
    add sp, $74                                   ; $765B: $E8 $74
    ld bc, $E875                                  ; $765D: $01 $75 $E8
    ld [hl], h                                    ; $7660: $74
    ld b, [hl]                                    ; $7661: $46
    ld d, h                                       ; $7662: $54
    halt                                          ; $7663: $76
    ld c, l                                       ; $7664: $4D
    ld [$FF08], sp                                ; $7665: $08 $08 $FF
    nop                                           ; $7668: $00
    ret z                                         ; $7669: $C8

    ld [hl], l                                    ; $766A: $75
    jp hl                                         ; $766B: $E9


    ld [hl], l                                    ; $766C: $75
    ld a, [bc]                                    ; $766D: $0A
    halt                                          ; $766E: $76
    jp hl                                         ; $766F: $E9


    ld [hl], l                                    ; $7670: $75
    ld b, [hl]                                    ; $7671: $46
    ld h, h                                       ; $7672: $64
    halt                                          ; $7673: $76
    ld c, l                                       ; $7674: $4D
    ld [$0108], sp                                ; $7675: $08 $08 $01
    nop                                           ; $7678: $00
    ld h, l                                       ; $7679: $65
    ld [hl], l                                    ; $767A: $75
    add [hl]                                      ; $767B: $86
    ld [hl], l                                    ; $767C: $75
    and a                                         ; $767D: $A7
    ld [hl], l                                    ; $767E: $75
    add [hl]                                      ; $767F: $86
    ld [hl], l                                    ; $7680: $75
    ld b, [hl]                                    ; $7681: $46
    ld [hl], h                                    ; $7682: $74
    halt                                          ; $7683: $76
    ld c, l                                       ; $7684: $4D
    ld [$0008], sp                                ; $7685: $08 $08 $00
    cp $1A                                        ; $7688: $FE $1A
    ld [hl], l                                    ; $768A: $75
    inc sp                                        ; $768B: $33
    ld [hl], l                                    ; $768C: $75
    ld c, h                                       ; $768D: $4C
    ld [hl], l                                    ; $768E: $75
    inc sp                                        ; $768F: $33
    ld [hl], l                                    ; $7690: $75
    ld b, [hl]                                    ; $7691: $46
    add h                                         ; $7692: $84
    halt                                          ; $7693: $76
    ld c, l                                       ; $7694: $4D
    ld [$0008], sp                                ; $7695: $08 $08 $00
    ld [bc], a                                    ; $7698: $02
    rst $08                                       ; $7699: $CF
    ld [hl], h                                    ; $769A: $74
    add sp, $74                                   ; $769B: $E8 $74
    ld bc, $E875                                  ; $769D: $01 $75 $E8
    ld [hl], h                                    ; $76A0: $74
    ld b, [hl]                                    ; $76A1: $46
    sub h                                         ; $76A2: $94
    halt                                          ; $76A3: $76
    ld c, l                                       ; $76A4: $4D
    ld [$FE08], sp                                ; $76A5: $08 $08 $FE
    nop                                           ; $76A8: $00
    ret z                                         ; $76A9: $C8

    ld [hl], l                                    ; $76AA: $75
    jp hl                                         ; $76AB: $E9


    ld [hl], l                                    ; $76AC: $75
    ld a, [bc]                                    ; $76AD: $0A
    halt                                          ; $76AE: $76
    jp hl                                         ; $76AF: $E9


    ld [hl], l                                    ; $76B0: $75
    ld b, [hl]                                    ; $76B1: $46
    and h                                         ; $76B2: $A4
    halt                                          ; $76B3: $76
    ld c, l                                       ; $76B4: $4D
    ld [$0208], sp                                ; $76B5: $08 $08 $02
    nop                                           ; $76B8: $00
    ld h, l                                       ; $76B9: $65
    ld [hl], l                                    ; $76BA: $75
    add [hl]                                      ; $76BB: $86
    ld [hl], l                                    ; $76BC: $75
    and a                                         ; $76BD: $A7
    ld [hl], l                                    ; $76BE: $75
    add [hl]                                      ; $76BF: $86
    ld [hl], l                                    ; $76C0: $75
    ld b, [hl]                                    ; $76C1: $46
    or h                                          ; $76C2: $B4
    halt                                          ; $76C3: $76
    ld c, h                                       ; $76C4: $4C
    rst $38                                       ; $76C5: $FF
    nop                                           ; $76C6: $00
    nop                                           ; $76C7: $00
    inc sp                                        ; $76C8: $33
    ld [hl], l                                    ; $76C9: $75
    nop                                           ; $76CA: $00
    ld b, [hl]                                    ; $76CB: $46
    call nz, Call_00F_4C76                        ; $76CC: $C4 $76 $4C
    rst $38                                       ; $76CF: $FF
    nop                                           ; $76D0: $00
    nop                                           ; $76D1: $00
    add sp, $74                                   ; $76D2: $E8 $74
    nop                                           ; $76D4: $00
    ld b, [hl]                                    ; $76D5: $46
    adc $76                                       ; $76D6: $CE $76
    ld c, h                                       ; $76D8: $4C
    ld bc, $0000                                  ; $76D9: $01 $00 $00
    add sp, $74                                   ; $76DC: $E8 $74
    nop                                           ; $76DE: $00
    ld c, b                                       ; $76DF: $48
    ld b, [hl]                                    ; $76E0: $46
    ret c                                         ; $76E1: $D8

    halt                                          ; $76E2: $76
    ld c, h                                       ; $76E3: $4C
    rst $38                                       ; $76E4: $FF
    nop                                           ; $76E5: $00
    nop                                           ; $76E6: $00
    jp hl                                         ; $76E7: $E9


    ld [hl], l                                    ; $76E8: $75
    nop                                           ; $76E9: $00
    ld b, [hl]                                    ; $76EA: $46
    db $E3                                        ; $76EB: $E3
    halt                                          ; $76EC: $76
    ld c, h                                       ; $76ED: $4C
    rst $38                                       ; $76EE: $FF
    nop                                           ; $76EF: $00
    nop                                           ; $76F0: $00
    add [hl]                                      ; $76F1: $86
    ld [hl], l                                    ; $76F2: $75
    nop                                           ; $76F3: $00
    ld b, [hl]                                    ; $76F4: $46
    db $ED                                        ; $76F5: $ED
    halt                                          ; $76F6: $76
    ld c, h                                       ; $76F7: $4C
    rst $38                                       ; $76F8: $FF
    nop                                           ; $76F9: $00
    nop                                           ; $76FA: $00
    or [hl]                                       ; $76FB: $B6
    ld [hl], h                                    ; $76FC: $74
    nop                                           ; $76FD: $00
    ld b, [hl]                                    ; $76FE: $46
    rst $30                                       ; $76FF: $F7
    halt                                          ; $7700: $76
    ld c, h                                       ; $7701: $4C
    rst $38                                       ; $7702: $FF
    nop                                           ; $7703: $00
    nop                                           ; $7704: $00
    sbc l                                         ; $7705: $9D
    ld [hl], h                                    ; $7706: $74
    nop                                           ; $7707: $00
    ld b, [hl]                                    ; $7708: $46
    ld bc, $4C77                                  ; $7709: $01 $77 $4C
    rst $38                                       ; $770C: $FF
    nop                                           ; $770D: $00
    nop                                           ; $770E: $00
    add h                                         ; $770F: $84
    ld [hl], h                                    ; $7710: $74
    nop                                           ; $7711: $00
    ld b, [hl]                                    ; $7712: $46
    dec bc                                        ; $7713: $0B
    ld [hl], a                                    ; $7714: $77
    ld c, h                                       ; $7715: $4C
    rst $38                                       ; $7716: $FF
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    ld l, e                                       ; $7719: $6B
    ld [hl], h                                    ; $771A: $74
    nop                                           ; $771B: $00
    ld b, [hl]                                    ; $771C: $46
    dec d                                         ; $771D: $15
    ld [hl], a                                    ; $771E: $77
    ld c, h                                       ; $771F: $4C
    rst $38                                       ; $7720: $FF
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    dec hl                                        ; $7723: $2B
    halt                                          ; $7724: $76
    nop                                           ; $7725: $00
    ld b, [hl]                                    ; $7726: $46
    rra                                           ; $7727: $1F
    ld [hl], a                                    ; $7728: $77
    ld c, e                                       ; $7729: $4B
    inc bc                                        ; $772A: $03
    rrca                                          ; $772B: $0F
    nop                                           ; $772C: $00
    nop                                           ; $772D: $00
    ld b, b                                       ; $772E: $40
    ld [hl], a                                    ; $772F: $77
    rrca                                          ; $7730: $0F
    inc bc                                        ; $7731: $03
    nop                                           ; $7732: $00
    ld b, a                                       ; $7733: $47
    ld [hl], a                                    ; $7734: $77
    rrca                                          ; $7735: $0F
    ld [bc], a                                    ; $7736: $02
    nop                                           ; $7737: $00
    ld d, l                                       ; $7738: $55
    ld [hl], a                                    ; $7739: $77
    rrca                                          ; $773A: $0F
    ld bc, $4E00                                  ; $773B: $01 $00 $4E
    ld [hl], a                                    ; $773E: $77
    rst $38                                       ; $773F: $FF
    inc d                                         ; $7740: $14
    rrca                                          ; $7741: $0F
    call nz, Call_00F_6276                        ; $7742: $C4 $76 $62
    ld bc, $1412                                  ; $7745: $01 $12 $14
    rrca                                          ; $7748: $0F
    adc $76                                       ; $7749: $CE $76
    ld h, d                                       ; $774B: $62
    ld bc, $1412                                  ; $774C: $01 $12 $14
    rrca                                          ; $774F: $0F
    db $E3                                        ; $7750: $E3
    halt                                          ; $7751: $76
    ld h, d                                       ; $7752: $62
    ld bc, $1412                                  ; $7753: $01 $12 $14
    rrca                                          ; $7756: $0F
    db $ED                                        ; $7757: $ED
    halt                                          ; $7758: $76
    ld h, d                                       ; $7759: $62
    ld bc, $F012                                  ; $775A: $01 $12 $F0
    ld hl, sp+$00                                 ; $775D: $F8 $00
    dec b                                         ; $775F: $05
    ldh a, [rP1]                                  ; $7760: $F0 $00
    ld bc, $F805                                  ; $7762: $01 $05 $F8
    ld hl, sp+$0A                                 ; $7765: $F8 $0A
    dec b                                         ; $7767: $05
    ld hl, sp+$00                                 ; $7768: $F8 $00
    dec bc                                        ; $776A: $0B
    dec b                                         ; $776B: $05
    nop                                           ; $776C: $00
    ld hl, sp+$14                                 ; $776D: $F8 $14
    ld [bc], a                                    ; $776F: $02
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    dec d                                         ; $7772: $15
    ld [bc], a                                    ; $7773: $02
    add b                                         ; $7774: $80
    ldh a, [rP1]                                  ; $7775: $F0 $00
    nop                                           ; $7777: $00
    dec h                                         ; $7778: $25
    ldh a, [$F8]                                  ; $7779: $F0 $F8
    ld bc, $F825                                  ; $777B: $01 $25 $F8
    nop                                           ; $777E: $00
    ld a, [bc]                                    ; $777F: $0A
    dec h                                         ; $7780: $25
    ld hl, sp-$08                                 ; $7781: $F8 $F8
    dec bc                                        ; $7783: $0B
    dec h                                         ; $7784: $25
    nop                                           ; $7785: $00
    nop                                           ; $7786: $00
    inc d                                         ; $7787: $14
    ld [hl+], a                                   ; $7788: $22
    nop                                           ; $7789: $00
    ld hl, sp+$15                                 ; $778A: $F8 $15
    ld [hl+], a                                   ; $778C: $22
    add b                                         ; $778D: $80
    ldh a, [$F8]                                  ; $778E: $F0 $F8
    ld b, $05                                     ; $7790: $06 $05
    ldh a, [rP1]                                  ; $7792: $F0 $00
    rlca                                          ; $7794: $07
    dec b                                         ; $7795: $05
    ld hl, sp-$08                                 ; $7796: $F8 $F8
    ld c, $05                                     ; $7798: $0E $05
    ld hl, sp+$00                                 ; $779A: $F8 $00
    rrca                                          ; $779C: $0F
    dec b                                         ; $779D: $05
    nop                                           ; $779E: $00
    ld hl, sp+$18                                 ; $779F: $F8 $18
    ld [bc], a                                    ; $77A1: $02
    nop                                           ; $77A2: $00
    nop                                           ; $77A3: $00
    add hl, de                                    ; $77A4: $19
    ld [bc], a                                    ; $77A5: $02
    add b                                         ; $77A6: $80
    ldh a, [rP1]                                  ; $77A7: $F0 $00
    ld b, $25                                     ; $77A9: $06 $25
    ldh a, [$F8]                                  ; $77AB: $F0 $F8
    rlca                                          ; $77AD: $07
    dec h                                         ; $77AE: $25
    ld hl, sp+$00                                 ; $77AF: $F8 $00
    ld c, $25                                     ; $77B1: $0E $25
    ld hl, sp-$08                                 ; $77B3: $F8 $F8
    rrca                                          ; $77B5: $0F
    dec h                                         ; $77B6: $25
    nop                                           ; $77B7: $00
    nop                                           ; $77B8: $00
    jr jr_00F_77DD                                ; $77B9: $18 $22

    nop                                           ; $77BB: $00
    ld hl, sp+$19                                 ; $77BC: $F8 $19
    ld [hl+], a                                   ; $77BE: $22
    add b                                         ; $77BF: $80
    pop af                                        ; $77C0: $F1
    ld hl, sp+$02                                 ; $77C1: $F8 $02
    dec b                                         ; $77C3: $05
    pop af                                        ; $77C4: $F1
    nop                                           ; $77C5: $00
    inc bc                                        ; $77C6: $03
    dec b                                         ; $77C7: $05
    ld hl, sp-$08                                 ; $77C8: $F8 $F8
    db $10                                        ; $77CA: $10
    dec b                                         ; $77CB: $05
    ld hl, sp+$00                                 ; $77CC: $F8 $00
    ld de, $0005                                  ; $77CE: $11 $05 $00
    ld hl, sp+$1A                                 ; $77D1: $F8 $1A
    ld [bc], a                                    ; $77D3: $02
    nop                                           ; $77D4: $00
    nop                                           ; $77D5: $00
    dec de                                        ; $77D6: $1B
    ld [bc], a                                    ; $77D7: $02
    add b                                         ; $77D8: $80
    ldh a, [$F8]                                  ; $77D9: $F0 $F8
    ld [bc], a                                    ; $77DB: $02
    dec b                                         ; $77DC: $05

jr_00F_77DD:
    ldh a, [rP1]                                  ; $77DD: $F0 $00
    inc bc                                        ; $77DF: $03
    dec b                                         ; $77E0: $05
    ld hl, sp-$08                                 ; $77E1: $F8 $F8
    inc c                                         ; $77E3: $0C
    dec h                                         ; $77E4: $25
    ld hl, sp+$00                                 ; $77E5: $F8 $00
    inc c                                         ; $77E7: $0C
    dec b                                         ; $77E8: $05
    nop                                           ; $77E9: $00
    ld sp, hl                                     ; $77EA: $F9
    ld d, $22                                     ; $77EB: $16 $22
    nop                                           ; $77ED: $00
    nop                                           ; $77EE: $00
    ld d, $02                                     ; $77EF: $16 $02
    add b                                         ; $77F1: $80
    pop af                                        ; $77F2: $F1
    ld hl, sp+$02                                 ; $77F3: $F8 $02
    dec b                                         ; $77F5: $05
    pop af                                        ; $77F6: $F1
    nop                                           ; $77F7: $00
    inc bc                                        ; $77F8: $03
    dec b                                         ; $77F9: $05
    ld hl, sp+$00                                 ; $77FA: $F8 $00
    db $10                                        ; $77FC: $10
    dec h                                         ; $77FD: $25
    ld hl, sp-$08                                 ; $77FE: $F8 $F8
    ld de, $0025                                  ; $7800: $11 $25 $00
    nop                                           ; $7803: $00
    ld a, [de]                                    ; $7804: $1A
    ld [hl+], a                                   ; $7805: $22
    nop                                           ; $7806: $00
    ld hl, sp+$1B                                 ; $7807: $F8 $1B
    ld [hl+], a                                   ; $7809: $22
    add b                                         ; $780A: $80
    pop af                                        ; $780B: $F1
    ld hl, sp+$04                                 ; $780C: $F8 $04
    dec b                                         ; $780E: $05
    pop af                                        ; $780F: $F1
    nop                                           ; $7810: $00
    dec b                                         ; $7811: $05
    dec b                                         ; $7812: $05
    ld hl, sp-$08                                 ; $7813: $F8 $F8
    ld [de], a                                    ; $7815: $12
    dec b                                         ; $7816: $05
    ld hl, sp+$00                                 ; $7817: $F8 $00
    inc de                                        ; $7819: $13
    dec b                                         ; $781A: $05
    nop                                           ; $781B: $00
    ld hl, sp+$1C                                 ; $781C: $F8 $1C
    ld [bc], a                                    ; $781E: $02
    nop                                           ; $781F: $00
    nop                                           ; $7820: $00
    dec e                                         ; $7821: $1D
    ld [bc], a                                    ; $7822: $02
    add b                                         ; $7823: $80
    ldh a, [$F8]                                  ; $7824: $F0 $F8
    inc b                                         ; $7826: $04
    dec b                                         ; $7827: $05
    ldh a, [rP1]                                  ; $7828: $F0 $00
    dec b                                         ; $782A: $05
    dec b                                         ; $782B: $05
    ld hl, sp+$00                                 ; $782C: $F8 $00
    dec c                                         ; $782E: $0D
    dec b                                         ; $782F: $05
    ld hl, sp-$08                                 ; $7830: $F8 $F8
    dec c                                         ; $7832: $0D
    dec h                                         ; $7833: $25
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    rla                                           ; $7836: $17
    ld [bc], a                                    ; $7837: $02
    nop                                           ; $7838: $00
    ld sp, hl                                     ; $7839: $F9
    rla                                           ; $783A: $17
    ld [hl+], a                                   ; $783B: $22
    add b                                         ; $783C: $80
    pop af                                        ; $783D: $F1
    ld hl, sp+$04                                 ; $783E: $F8 $04
    dec b                                         ; $7840: $05
    pop af                                        ; $7841: $F1
    nop                                           ; $7842: $00
    dec b                                         ; $7843: $05
    dec b                                         ; $7844: $05
    ld hl, sp+$01                                 ; $7845: $F8 $01
    ld [de], a                                    ; $7847: $12
    dec h                                         ; $7848: $25
    ld hl, sp-$07                                 ; $7849: $F8 $F9
    inc de                                        ; $784B: $13
    dec h                                         ; $784C: $25
    nop                                           ; $784D: $00
    ld bc, $221C                                  ; $784E: $01 $1C $22
    nop                                           ; $7851: $00
    ld sp, hl                                     ; $7852: $F9
    dec e                                         ; $7853: $1D
    ld [hl+], a                                   ; $7854: $22
    add b                                         ; $7855: $80
    pop af                                        ; $7856: $F1
    ld hl, sp+$08                                 ; $7857: $F8 $08
    dec b                                         ; $7859: $05
    pop af                                        ; $785A: $F1
    nop                                           ; $785B: $00
    add hl, bc                                    ; $785C: $09
    dec b                                         ; $785D: $05
    ld hl, sp-$08                                 ; $785E: $F8 $F8
    ld e, $05                                     ; $7860: $1E $05
    ld hl, sp+$00                                 ; $7862: $F8 $00
    rra                                           ; $7864: $1F
    dec b                                         ; $7865: $05
    nop                                           ; $7866: $00
    ld hl, sp+$23                                 ; $7867: $F8 $23
    ld [bc], a                                    ; $7869: $02
    nop                                           ; $786A: $00
    nop                                           ; $786B: $00
    inc h                                         ; $786C: $24
    ld [bc], a                                    ; $786D: $02
    add b                                         ; $786E: $80
    ldh a, [$F8]                                  ; $786F: $F0 $F8
    ld [$F005], sp                                ; $7871: $08 $05 $F0
    nop                                           ; $7874: $00
    add hl, bc                                    ; $7875: $09
    dec b                                         ; $7876: $05
    ld hl, sp-$04                                 ; $7877: $F8 $FC
    jr nz, jr_00F_7880                            ; $7879: $20 $05

    nop                                           ; $787B: $00
    ld hl, sp+$25                                 ; $787C: $F8 $25
    ld [bc], a                                    ; $787E: $02
    nop                                           ; $787F: $00

jr_00F_7880:
    nop                                           ; $7880: $00
    ld h, $02                                     ; $7881: $26 $02
    add b                                         ; $7883: $80
    pop af                                        ; $7884: $F1
    ld hl, sp+$08                                 ; $7885: $F8 $08
    dec b                                         ; $7887: $05
    pop af                                        ; $7888: $F1
    nop                                           ; $7889: $00
    add hl, bc                                    ; $788A: $09
    dec b                                         ; $788B: $05
    ld hl, sp-$08                                 ; $788C: $F8 $F8
    ld hl, $F805                                  ; $788E: $21 $05 $F8
    nop                                           ; $7891: $00
    ld [hl+], a                                   ; $7892: $22
    dec b                                         ; $7893: $05
    nop                                           ; $7894: $00
    ld hl, sp+$27                                 ; $7895: $F8 $27
    ld [bc], a                                    ; $7897: $02
    nop                                           ; $7898: $00
    nop                                           ; $7899: $00
    jr z, @+$04                                   ; $789A: $28 $02

    add b                                         ; $789C: $80

    db $F1, $00, $08, $25, $F1, $F8, $09, $25, $F8, $00, $1E, $25, $F8, $F8, $1F, $25
    db $00, $00, $23, $22, $00, $F8, $24, $22, $80, $F0, $00, $08, $25, $F0, $F8, $09
    db $25, $F8, $FC, $20, $25, $00, $00, $25, $22, $00, $F8, $26, $22, $80, $F1, $00
    db $08, $25, $F1, $F8, $09, $25, $F8, $00, $21, $25, $F8, $F8, $22, $25, $00, $00
    db $27, $22, $00, $F8, $28, $22, $80

    ld c, l                                       ; $78E4: $4D
    ld [$0008], sp                                ; $78E5: $08 $08 $00
    rst $38                                       ; $78E8: $FF
    dec bc                                        ; $78E9: $0B
    ld a, b                                       ; $78EA: $78
    inc h                                         ; $78EB: $24
    ld a, b                                       ; $78EC: $78
    dec a                                         ; $78ED: $3D
    ld a, b                                       ; $78EE: $78
    inc h                                         ; $78EF: $24
    ld a, b                                       ; $78F0: $78
    ld b, [hl]                                    ; $78F1: $46
    db $E4                                        ; $78F2: $E4
    ld a, b                                       ; $78F3: $78
    ld c, l                                       ; $78F4: $4D
    ld [$0008], sp                                ; $78F5: $08 $08 $00
    ld bc, $77C0                                  ; $78F8: $01 $C0 $77
    reti                                          ; $78FB: $D9


    ld [hl], a                                    ; $78FC: $77
    ld a, [c]                                     ; $78FD: $F2
    ld [hl], a                                    ; $78FE: $77
    reti                                          ; $78FF: $D9


    ld [hl], a                                    ; $7900: $77
    ld b, [hl]                                    ; $7901: $46
    db $F4                                        ; $7902: $F4
    ld a, b                                       ; $7903: $78
    ld c, l                                       ; $7904: $4D
    ld [$FF08], sp                                ; $7905: $08 $08 $FF
    nop                                           ; $7908: $00
    sbc l                                         ; $7909: $9D
    ld a, b                                       ; $790A: $78
    or [hl]                                       ; $790B: $B6
    ld a, b                                       ; $790C: $78
    bit 7, b                                      ; $790D: $CB $78
    or [hl]                                       ; $790F: $B6
    ld a, b                                       ; $7910: $78
    ld b, [hl]                                    ; $7911: $46
    inc b                                         ; $7912: $04
    ld a, c                                       ; $7913: $79
    ld c, l                                       ; $7914: $4D
    ld [$0108], sp                                ; $7915: $08 $08 $01
    nop                                           ; $7918: $00
    ld d, [hl]                                    ; $7919: $56
    ld a, b                                       ; $791A: $78
    ld l, a                                       ; $791B: $6F
    ld a, b                                       ; $791C: $78
    add h                                         ; $791D: $84
    ld a, b                                       ; $791E: $78
    ld l, a                                       ; $791F: $6F
    ld a, b                                       ; $7920: $78
    ld b, [hl]                                    ; $7921: $46
    inc d                                         ; $7922: $14
    ld a, c                                       ; $7923: $79
    ld c, l                                       ; $7924: $4D
    ld [$0008], sp                                ; $7925: $08 $08 $00
    cp $0B                                        ; $7928: $FE $0B
    ld a, b                                       ; $792A: $78
    inc h                                         ; $792B: $24
    ld a, b                                       ; $792C: $78
    dec a                                         ; $792D: $3D
    ld a, b                                       ; $792E: $78
    inc h                                         ; $792F: $24
    ld a, b                                       ; $7930: $78
    ld b, [hl]                                    ; $7931: $46
    inc h                                         ; $7932: $24
    ld a, c                                       ; $7933: $79
    ld c, l                                       ; $7934: $4D
    ld [$0008], sp                                ; $7935: $08 $08 $00
    ld [bc], a                                    ; $7938: $02
    ret nz                                        ; $7939: $C0

    ld [hl], a                                    ; $793A: $77
    reti                                          ; $793B: $D9


    ld [hl], a                                    ; $793C: $77
    ld a, [c]                                     ; $793D: $F2
    ld [hl], a                                    ; $793E: $77
    reti                                          ; $793F: $D9


    ld [hl], a                                    ; $7940: $77
    ld b, [hl]                                    ; $7941: $46
    inc [hl]                                      ; $7942: $34
    ld a, c                                       ; $7943: $79

    db $4D, $08, $08, $FE, $00, $9D, $78, $B6, $78, $CB, $78, $B6, $78

    ld b, [hl]                                    ; $7951: $46
    ld b, h                                       ; $7952: $44
    ld a, c                                       ; $7953: $79
    ld c, l                                       ; $7954: $4D
    ld [$0208], sp                                ; $7955: $08 $08 $02
    nop                                           ; $7958: $00
    ld d, [hl]                                    ; $7959: $56
    ld a, b                                       ; $795A: $78
    ld l, a                                       ; $795B: $6F
    ld a, b                                       ; $795C: $78
    add h                                         ; $795D: $84
    ld a, b                                       ; $795E: $78
    ld l, a                                       ; $795F: $6F
    ld a, b                                       ; $7960: $78
    ld b, [hl]                                    ; $7961: $46
    ld d, h                                       ; $7962: $54
    ld a, c                                       ; $7963: $79
    ld c, h                                       ; $7964: $4C
    rst $38                                       ; $7965: $FF
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    inc h                                         ; $7968: $24
    ld a, b                                       ; $7969: $78
    nop                                           ; $796A: $00
    ld b, [hl]                                    ; $796B: $46
    ld h, h                                       ; $796C: $64
    ld a, c                                       ; $796D: $79
    ld c, h                                       ; $796E: $4C
    rst $38                                       ; $796F: $FF
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    reti                                          ; $7972: $D9


    ld [hl], a                                    ; $7973: $77
    nop                                           ; $7974: $00
    ld b, [hl]                                    ; $7975: $46
    ld l, [hl]                                    ; $7976: $6E
    ld a, c                                       ; $7977: $79

    db $4C, $FF, $00, $00, $B6, $78, $00, $46, $78, $79

    ld c, h                                       ; $7982: $4C
    rst $38                                       ; $7983: $FF
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    ld l, a                                       ; $7986: $6F
    ld a, b                                       ; $7987: $78
    nop                                           ; $7988: $00
    ld b, [hl]                                    ; $7989: $46
    add d                                         ; $798A: $82
    ld a, c                                       ; $798B: $79
    ld c, h                                       ; $798C: $4C
    rst $38                                       ; $798D: $FF
    nop                                           ; $798E: $00
    nop                                           ; $798F: $00
    and a                                         ; $7990: $A7
    ld [hl], a                                    ; $7991: $77
    nop                                           ; $7992: $00
    ld b, [hl]                                    ; $7993: $46
    adc h                                         ; $7994: $8C
    ld a, c                                       ; $7995: $79
    ld c, h                                       ; $7996: $4C
    rst $38                                       ; $7997: $FF
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    adc [hl]                                      ; $799A: $8E
    ld [hl], a                                    ; $799B: $77
    nop                                           ; $799C: $00
    ld b, [hl]                                    ; $799D: $46
    sub [hl]                                      ; $799E: $96
    ld a, c                                       ; $799F: $79
    ld c, h                                       ; $79A0: $4C
    rst $38                                       ; $79A1: $FF
    nop                                           ; $79A2: $00
    nop                                           ; $79A3: $00
    ld [hl], l                                    ; $79A4: $75
    ld [hl], a                                    ; $79A5: $77
    nop                                           ; $79A6: $00
    ld b, [hl]                                    ; $79A7: $46
    and b                                         ; $79A8: $A0
    ld a, c                                       ; $79A9: $79
    ld c, h                                       ; $79AA: $4C
    rst $38                                       ; $79AB: $FF
    nop                                           ; $79AC: $00
    nop                                           ; $79AD: $00
    ld e, h                                       ; $79AE: $5C
    ld [hl], a                                    ; $79AF: $77
    nop                                           ; $79B0: $00
    ld b, [hl]                                    ; $79B1: $46
    xor d                                         ; $79B2: $AA
    ld a, c                                       ; $79B3: $79
    ld c, e                                       ; $79B4: $4B
    inc bc                                        ; $79B5: $03
    rrca                                          ; $79B6: $0F
    nop                                           ; $79B7: $00
    nop                                           ; $79B8: $00
    bit 7, c                                      ; $79B9: $CB $79
    rrca                                          ; $79BB: $0F
    inc bc                                        ; $79BC: $03
    nop                                           ; $79BD: $00
    jp nc, $0F79                                  ; $79BE: $D2 $79 $0F

    ld [bc], a                                    ; $79C1: $02
    nop                                           ; $79C2: $00
    ldh [$79], a                                  ; $79C3: $E0 $79
    rrca                                          ; $79C5: $0F
    ld bc, $D900                                  ; $79C6: $01 $00 $D9
    ld a, c                                       ; $79C9: $79
    rst $38                                       ; $79CA: $FF
    inc d                                         ; $79CB: $14
    rrca                                          ; $79CC: $0F
    ld h, h                                       ; $79CD: $64
    ld a, c                                       ; $79CE: $79
    ld h, d                                       ; $79CF: $62
    ld bc, $1412                                  ; $79D0: $01 $12 $14
    rrca                                          ; $79D3: $0F
    ld l, [hl]                                    ; $79D4: $6E
    ld a, c                                       ; $79D5: $79
    ld h, d                                       ; $79D6: $62
    ld bc, $1412                                  ; $79D7: $01 $12 $14
    rrca                                          ; $79DA: $0F
    ld a, b                                       ; $79DB: $78
    ld a, c                                       ; $79DC: $79
    ld h, d                                       ; $79DD: $62
    ld bc, $1412                                  ; $79DE: $01 $12 $14
    rrca                                          ; $79E1: $0F
    add d                                         ; $79E2: $82
    ld a, c                                       ; $79E3: $79
    ld h, d                                       ; $79E4: $62
    ld bc, $0012                                  ; $79E5: $01 $12 $00
    nop                                           ; $79E8: $00
    ld [$0007], sp                                ; $79E9: $08 $07 $00
    ld hl, sp+$07                                 ; $79EC: $F8 $07
    rlca                                          ; $79EE: $07
    ld hl, sp+$00                                 ; $79EF: $F8 $00
    dec b                                         ; $79F1: $05
    inc bc                                        ; $79F2: $03
    ld hl, sp-$08                                 ; $79F3: $F8 $F8
    inc b                                         ; $79F5: $04
    inc bc                                        ; $79F6: $03
    ldh a, [rP1]                                  ; $79F7: $F0 $00
    ld bc, $F003                                  ; $79F9: $01 $03 $F0
    ld hl, sp+$00                                 ; $79FC: $F8 $00
    inc bc                                        ; $79FE: $03
    add b                                         ; $79FF: $80
    nop                                           ; $7A00: $00
    ld hl, sp+$08                                 ; $7A01: $F8 $08
    daa                                           ; $7A03: $27
    nop                                           ; $7A04: $00
    nop                                           ; $7A05: $00
    rlca                                          ; $7A06: $07
    daa                                           ; $7A07: $27
    ld hl, sp-$08                                 ; $7A08: $F8 $F8
    dec b                                         ; $7A0A: $05
    inc hl                                        ; $7A0B: $23
    ld hl, sp+$00                                 ; $7A0C: $F8 $00
    inc b                                         ; $7A0E: $04
    inc hl                                        ; $7A0F: $23
    ldh a, [$F8]                                  ; $7A10: $F0 $F8
    ld bc, $F023                                  ; $7A12: $01 $23 $F0
    nop                                           ; $7A15: $00
    nop                                           ; $7A16: $00
    inc hl                                        ; $7A17: $23
    add b                                         ; $7A18: $80

    db $00, $00, $12, $07, $00, $F8, $11, $07, $F8, $00, $0F, $03, $F8, $F8, $0E, $03
    db $F0, $00, $0C, $03, $F0, $F8, $0B, $03, $80

    nop                                           ; $7A32: $00
    ld hl, sp+$12                                 ; $7A33: $F8 $12
    daa                                           ; $7A35: $27
    nop                                           ; $7A36: $00
    nop                                           ; $7A37: $00
    ld de, $F827                                  ; $7A38: $11 $27 $F8
    ld hl, sp+$0F                                 ; $7A3B: $F8 $0F
    inc hl                                        ; $7A3D: $23
    ld hl, sp+$00                                 ; $7A3E: $F8 $00
    ld c, $23                                     ; $7A40: $0E $23
    ldh a, [$F8]                                  ; $7A42: $F0 $F8
    inc c                                         ; $7A44: $0C
    inc hl                                        ; $7A45: $23
    ldh a, [rP1]                                  ; $7A46: $F0 $00
    dec bc                                        ; $7A48: $0B
    inc hl                                        ; $7A49: $23
    add b                                         ; $7A4A: $80

    db $00, $00, $18, $07, $00, $F8, $17, $07, $F8, $00, $16, $03, $F8, $F8, $15, $03
    db $F1, $00, $03, $03, $F1, $F8, $02, $03, $80, $F8, $F8, $06, $23, $F8, $00, $06
    db $03, $00, $F9, $09, $27, $00, $00, $09, $07, $F0, $00, $03, $03, $F0, $F8, $02
    db $03, $80, $00, $F8, $18, $27, $00, $00, $17, $27, $F8, $F8, $16, $23, $F8, $00
    db $15, $23, $F1, $00, $03, $03, $F1, $F8, $02, $03, $80

    nop                                           ; $7A96: $00
    nop                                           ; $7A97: $00
    dec e                                         ; $7A98: $1D
    rlca                                          ; $7A99: $07
    nop                                           ; $7A9A: $00
    ld hl, sp+$1C                                 ; $7A9B: $F8 $1C
    rlca                                          ; $7A9D: $07
    ld hl, sp+$00                                 ; $7A9E: $F8 $00
    dec de                                        ; $7AA0: $1B
    inc bc                                        ; $7AA1: $03
    ld hl, sp-$08                                 ; $7AA2: $F8 $F8
    ld a, [de]                                    ; $7AA4: $1A
    inc bc                                        ; $7AA5: $03
    pop af                                        ; $7AA6: $F1
    ld sp, hl                                     ; $7AA7: $F9
    ld a, [bc]                                    ; $7AA8: $0A
    inc hl                                        ; $7AA9: $23
    pop af                                        ; $7AAA: $F1
    nop                                           ; $7AAB: $00
    ld a, [bc]                                    ; $7AAC: $0A
    inc bc                                        ; $7AAD: $03
    add b                                         ; $7AAE: $80
    nop                                           ; $7AAF: $00
    ld sp, hl                                     ; $7AB0: $F9
    db $10                                        ; $7AB1: $10
    daa                                           ; $7AB2: $27
    nop                                           ; $7AB3: $00
    nop                                           ; $7AB4: $00
    db $10                                        ; $7AB5: $10
    rlca                                          ; $7AB6: $07
    ld hl, sp-$07                                 ; $7AB7: $F8 $F9
    dec c                                         ; $7AB9: $0D
    inc hl                                        ; $7ABA: $23
    ld hl, sp+$00                                 ; $7ABB: $F8 $00
    dec c                                         ; $7ABD: $0D
    inc bc                                        ; $7ABE: $03
    ldh a, [$F9]                                  ; $7ABF: $F0 $F9
    ld a, [bc]                                    ; $7AC1: $0A
    inc hl                                        ; $7AC2: $23
    ldh a, [rP1]                                  ; $7AC3: $F0 $00
    ld a, [bc]                                    ; $7AC5: $0A
    inc bc                                        ; $7AC6: $03
    add b                                         ; $7AC7: $80
    nop                                           ; $7AC8: $00
    ld sp, hl                                     ; $7AC9: $F9
    dec e                                         ; $7ACA: $1D
    daa                                           ; $7ACB: $27
    nop                                           ; $7ACC: $00
    ld bc, $271C                                  ; $7ACD: $01 $1C $27
    ld hl, sp-$07                                 ; $7AD0: $F8 $F9
    dec de                                        ; $7AD2: $1B
    inc hl                                        ; $7AD3: $23
    ld hl, sp+$01                                 ; $7AD4: $F8 $01
    ld a, [de]                                    ; $7AD6: $1A
    inc hl                                        ; $7AD7: $23
    pop af                                        ; $7AD8: $F1
    ld sp, hl                                     ; $7AD9: $F9
    ld a, [bc]                                    ; $7ADA: $0A
    inc hl                                        ; $7ADB: $23
    pop af                                        ; $7ADC: $F1
    nop                                           ; $7ADD: $00
    ld a, [bc]                                    ; $7ADE: $0A
    inc bc                                        ; $7ADF: $03
    add b                                         ; $7AE0: $80
    nop                                           ; $7AE1: $00
    nop                                           ; $7AE2: $00
    ld h, $07                                     ; $7AE3: $26 $07
    nop                                           ; $7AE5: $00
    ld hl, sp+$25                                 ; $7AE6: $F8 $25
    rlca                                          ; $7AE8: $07
    ld hl, sp+$00                                 ; $7AE9: $F8 $00
    ld hl, $F803                                  ; $7AEB: $21 $03 $F8
    ld hl, sp+$20                                 ; $7AEE: $F8 $20
    inc bc                                        ; $7AF0: $03
    pop af                                        ; $7AF1: $F1
    nop                                           ; $7AF2: $00
    rra                                           ; $7AF3: $1F
    inc bc                                        ; $7AF4: $03
    pop af                                        ; $7AF5: $F1
    ld hl, sp+$1E                                 ; $7AF6: $F8 $1E
    inc bc                                        ; $7AF8: $03
    add b                                         ; $7AF9: $80
    nop                                           ; $7AFA: $00
    nop                                           ; $7AFB: $00
    jr z, jr_00F_7B05                             ; $7AFC: $28 $07

    nop                                           ; $7AFE: $00
    ld hl, sp+$27                                 ; $7AFF: $F8 $27
    rlca                                          ; $7B01: $07
    ld hl, sp-$04                                 ; $7B02: $F8 $FC
    ld [hl+], a                                   ; $7B04: $22

jr_00F_7B05:
    inc bc                                        ; $7B05: $03
    ldh a, [rP1]                                  ; $7B06: $F0 $00
    rra                                           ; $7B08: $1F
    inc bc                                        ; $7B09: $03
    ldh a, [$F8]                                  ; $7B0A: $F0 $F8
    ld e, $03                                     ; $7B0C: $1E $03
    add b                                         ; $7B0E: $80
    nop                                           ; $7B0F: $00
    nop                                           ; $7B10: $00
    ld a, [hl+]                                   ; $7B11: $2A
    rlca                                          ; $7B12: $07
    nop                                           ; $7B13: $00
    ld hl, sp+$29                                 ; $7B14: $F8 $29
    rlca                                          ; $7B16: $07
    ld hl, sp+$00                                 ; $7B17: $F8 $00
    inc h                                         ; $7B19: $24
    inc bc                                        ; $7B1A: $03
    ld hl, sp-$08                                 ; $7B1B: $F8 $F8
    inc hl                                        ; $7B1D: $23
    inc bc                                        ; $7B1E: $03
    pop af                                        ; $7B1F: $F1
    nop                                           ; $7B20: $00
    rra                                           ; $7B21: $1F
    inc bc                                        ; $7B22: $03
    pop af                                        ; $7B23: $F1
    ld hl, sp+$1E                                 ; $7B24: $F8 $1E
    inc bc                                        ; $7B26: $03
    add b                                         ; $7B27: $80

    db $00, $F8, $26, $27, $00, $00, $25, $27, $F8, $F8, $21, $23, $F8, $00, $20, $23
    db $F1, $F8, $1F, $23, $F1, $00, $1E, $23, $80

    nop                                           ; $7B41: $00
    ld hl, sp+$28                                 ; $7B42: $F8 $28
    daa                                           ; $7B44: $27
    nop                                           ; $7B45: $00
    nop                                           ; $7B46: $00
    daa                                           ; $7B47: $27
    daa                                           ; $7B48: $27
    ld hl, sp-$04                                 ; $7B49: $F8 $FC
    ld [hl+], a                                   ; $7B4B: $22
    inc hl                                        ; $7B4C: $23
    ldh a, [$F8]                                  ; $7B4D: $F0 $F8
    rra                                           ; $7B4F: $1F
    inc hl                                        ; $7B50: $23
    ldh a, [rP1]                                  ; $7B51: $F0 $00
    ld e, $23                                     ; $7B53: $1E $23
    add b                                         ; $7B55: $80
    nop                                           ; $7B56: $00
    ld hl, sp+$2A                                 ; $7B57: $F8 $2A
    daa                                           ; $7B59: $27
    nop                                           ; $7B5A: $00
    nop                                           ; $7B5B: $00
    add hl, hl                                    ; $7B5C: $29
    daa                                           ; $7B5D: $27
    ld hl, sp-$08                                 ; $7B5E: $F8 $F8
    inc h                                         ; $7B60: $24
    inc hl                                        ; $7B61: $23
    ld hl, sp+$00                                 ; $7B62: $F8 $00
    inc hl                                        ; $7B64: $23
    inc hl                                        ; $7B65: $23
    pop af                                        ; $7B66: $F1
    ld hl, sp+$1F                                 ; $7B67: $F8 $1F
    inc hl                                        ; $7B69: $23
    pop af                                        ; $7B6A: $F1
    nop                                           ; $7B6B: $00
    ld e, $23                                     ; $7B6C: $1E $23
    add b                                         ; $7B6E: $80
    ld c, l                                       ; $7B6F: $4D
    ld [$0008], sp                                ; $7B70: $08 $08 $00
    rst $38                                       ; $7B73: $FF
    sub [hl]                                      ; $7B74: $96
    ld a, d                                       ; $7B75: $7A
    xor a                                         ; $7B76: $AF
    ld a, d                                       ; $7B77: $7A
    ret z                                         ; $7B78: $C8

    ld a, d                                       ; $7B79: $7A
    xor a                                         ; $7B7A: $AF
    ld a, d                                       ; $7B7B: $7A
    ld b, [hl]                                    ; $7B7C: $46
    ld l, a                                       ; $7B7D: $6F
    ld a, e                                       ; $7B7E: $7B
    ld c, l                                       ; $7B7F: $4D
    ld [$0008], sp                                ; $7B80: $08 $08 $00
    ld bc, $7A4B                                  ; $7B83: $01 $4B $7A
    ld h, h                                       ; $7B86: $64
    ld a, d                                       ; $7B87: $7A
    ld a, l                                       ; $7B88: $7D
    ld a, d                                       ; $7B89: $7A
    ld h, h                                       ; $7B8A: $64
    ld a, d                                       ; $7B8B: $7A
    ld b, [hl]                                    ; $7B8C: $46
    ld a, a                                       ; $7B8D: $7F
    ld a, e                                       ; $7B8E: $7B
    ld c, l                                       ; $7B8F: $4D
    ld [$FF08], sp                                ; $7B90: $08 $08 $FF
    nop                                           ; $7B93: $00
    jr z, jr_00F_7C11                             ; $7B94: $28 $7B

    ld b, c                                       ; $7B96: $41
    ld a, e                                       ; $7B97: $7B
    ld d, [hl]                                    ; $7B98: $56
    ld a, e                                       ; $7B99: $7B
    ld b, c                                       ; $7B9A: $41
    ld a, e                                       ; $7B9B: $7B
    ld b, [hl]                                    ; $7B9C: $46
    adc a                                         ; $7B9D: $8F
    ld a, e                                       ; $7B9E: $7B
    ld c, l                                       ; $7B9F: $4D
    ld [$0108], sp                                ; $7BA0: $08 $08 $01
    nop                                           ; $7BA3: $00
    pop hl                                        ; $7BA4: $E1
    ld a, d                                       ; $7BA5: $7A
    ld a, [$0F7A]                                 ; $7BA6: $FA $7A $0F
    ld a, e                                       ; $7BA9: $7B
    ld a, [$467A]                                 ; $7BAA: $FA $7A $46
    sbc a                                         ; $7BAD: $9F
    ld a, e                                       ; $7BAE: $7B
    ld c, l                                       ; $7BAF: $4D
    ld [$0008], sp                                ; $7BB0: $08 $08 $00
    cp $96                                        ; $7BB3: $FE $96
    ld a, d                                       ; $7BB5: $7A
    xor a                                         ; $7BB6: $AF
    ld a, d                                       ; $7BB7: $7A
    ret z                                         ; $7BB8: $C8

    ld a, d                                       ; $7BB9: $7A
    xor a                                         ; $7BBA: $AF
    ld a, d                                       ; $7BBB: $7A
    ld b, [hl]                                    ; $7BBC: $46
    xor a                                         ; $7BBD: $AF
    ld a, e                                       ; $7BBE: $7B

    db $4D, $08, $08, $00, $02, $4B, $7A, $64, $7A, $7D, $7A, $64, $7A, $46, $BF, $7B
    db $4D, $08, $08, $FE, $00, $28, $7B

    ld b, c                                       ; $7BD6: $41
    ld a, e                                       ; $7BD7: $7B
    ld d, [hl]                                    ; $7BD8: $56
    ld a, e                                       ; $7BD9: $7B
    ld b, c                                       ; $7BDA: $41
    ld a, e                                       ; $7BDB: $7B
    ld b, [hl]                                    ; $7BDC: $46
    rst $08                                       ; $7BDD: $CF
    ld a, e                                       ; $7BDE: $7B
    ld c, l                                       ; $7BDF: $4D
    ld [$0208], sp                                ; $7BE0: $08 $08 $02
    nop                                           ; $7BE3: $00
    pop hl                                        ; $7BE4: $E1
    ld a, d                                       ; $7BE5: $7A
    ld a, [$0F7A]                                 ; $7BE6: $FA $7A $0F
    ld a, e                                       ; $7BE9: $7B
    ld a, [$467A]                                 ; $7BEA: $FA $7A $46
    rst $18                                       ; $7BED: $DF
    ld a, e                                       ; $7BEE: $7B
    ld c, h                                       ; $7BEF: $4C
    rst $38                                       ; $7BF0: $FF
    nop                                           ; $7BF1: $00
    nop                                           ; $7BF2: $00
    xor a                                         ; $7BF3: $AF
    ld a, d                                       ; $7BF4: $7A
    nop                                           ; $7BF5: $00
    ld b, [hl]                                    ; $7BF6: $46
    rst $28                                       ; $7BF7: $EF
    ld a, e                                       ; $7BF8: $7B
    ld c, h                                       ; $7BF9: $4C
    rst $38                                       ; $7BFA: $FF
    nop                                           ; $7BFB: $00
    nop                                           ; $7BFC: $00
    ld h, h                                       ; $7BFD: $64
    ld a, d                                       ; $7BFE: $7A
    nop                                           ; $7BFF: $00
    ld b, [hl]                                    ; $7C00: $46
    ld sp, hl                                     ; $7C01: $F9
    ld a, e                                       ; $7C02: $7B
    ld c, h                                       ; $7C03: $4C
    rst $38                                       ; $7C04: $FF
    nop                                           ; $7C05: $00
    nop                                           ; $7C06: $00
    ld b, c                                       ; $7C07: $41
    ld a, e                                       ; $7C08: $7B
    nop                                           ; $7C09: $00
    ld b, [hl]                                    ; $7C0A: $46
    inc bc                                        ; $7C0B: $03
    ld a, h                                       ; $7C0C: $7C
    ld c, h                                       ; $7C0D: $4C
    rst $38                                       ; $7C0E: $FF
    nop                                           ; $7C0F: $00
    nop                                           ; $7C10: $00

jr_00F_7C11:
    ld a, [$007A]                                 ; $7C11: $FA $7A $00
    ld b, [hl]                                    ; $7C14: $46
    dec c                                         ; $7C15: $0D
    ld a, h                                       ; $7C16: $7C
    ld c, h                                       ; $7C17: $4C
    rst $38                                       ; $7C18: $FF
    nop                                           ; $7C19: $00
    nop                                           ; $7C1A: $00
    ld [hl-], a                                   ; $7C1B: $32
    ld a, d                                       ; $7C1C: $7A
    nop                                           ; $7C1D: $00
    ld b, [hl]                                    ; $7C1E: $46
    rla                                           ; $7C1F: $17
    ld a, h                                       ; $7C20: $7C

    db $4C, $FF, $00, $00, $19, $7A, $00, $46, $21, $7C

    ld c, h                                       ; $7C2B: $4C
    rst $38                                       ; $7C2C: $FF
    nop                                           ; $7C2D: $00
    nop                                           ; $7C2E: $00
    nop                                           ; $7C2F: $00
    ld a, d                                       ; $7C30: $7A
    nop                                           ; $7C31: $00
    ld b, [hl]                                    ; $7C32: $46
    dec hl                                        ; $7C33: $2B
    ld a, h                                       ; $7C34: $7C
    ld c, h                                       ; $7C35: $4C
    rst $38                                       ; $7C36: $FF
    nop                                           ; $7C37: $00
    nop                                           ; $7C38: $00
    rst $20                                       ; $7C39: $E7
    ld a, c                                       ; $7C3A: $79
    nop                                           ; $7C3B: $00
    ld b, [hl]                                    ; $7C3C: $46
    dec [hl]                                      ; $7C3D: $35
    ld a, h                                       ; $7C3E: $7C
    ld c, e                                       ; $7C3F: $4B
    inc bc                                        ; $7C40: $03
    rrca                                          ; $7C41: $0F
    nop                                           ; $7C42: $00
    nop                                           ; $7C43: $00
    ld d, [hl]                                    ; $7C44: $56
    ld a, h                                       ; $7C45: $7C
    rrca                                          ; $7C46: $0F
    inc bc                                        ; $7C47: $03
    nop                                           ; $7C48: $00
    ld e, l                                       ; $7C49: $5D
    ld a, h                                       ; $7C4A: $7C
    rrca                                          ; $7C4B: $0F
    ld [bc], a                                    ; $7C4C: $02
    nop                                           ; $7C4D: $00
    ld l, e                                       ; $7C4E: $6B
    ld a, h                                       ; $7C4F: $7C
    rrca                                          ; $7C50: $0F
    ld bc, $6400                                  ; $7C51: $01 $00 $64
    ld a, h                                       ; $7C54: $7C
    rst $38                                       ; $7C55: $FF
    inc d                                         ; $7C56: $14
    rrca                                          ; $7C57: $0F
    rst $28                                       ; $7C58: $EF
    ld a, e                                       ; $7C59: $7B
    ld h, d                                       ; $7C5A: $62
    ld bc, $1412                                  ; $7C5B: $01 $12 $14
    rrca                                          ; $7C5E: $0F
    ld sp, hl                                     ; $7C5F: $F9
    ld a, e                                       ; $7C60: $7B
    ld h, d                                       ; $7C61: $62
    ld bc, $1412                                  ; $7C62: $01 $12 $14
    rrca                                          ; $7C65: $0F
    inc bc                                        ; $7C66: $03
    ld a, h                                       ; $7C67: $7C
    ld h, d                                       ; $7C68: $62
    ld bc, $1412                                  ; $7C69: $01 $12 $14
    rrca                                          ; $7C6C: $0F
    dec c                                         ; $7C6D: $0D
    ld a, h                                       ; $7C6E: $7C
    ld h, d                                       ; $7C6F: $62
    ld bc, $E812                                  ; $7C70: $01 $12 $E8
    ld hl, sp+$05                                 ; $7C73: $F8 $05
    ld b, $E8                                     ; $7C75: $06 $E8
    nop                                           ; $7C77: $00
    ld b, $06                                     ; $7C78: $06 $06
    ld [$0500], sp                                ; $7C7A: $08 $00 $05
    ld h, [hl]                                    ; $7C7D: $66
    ld [$06F8], sp                                ; $7C7E: $08 $F8 $06
    ld h, [hl]                                    ; $7C81: $66
    ldh a, [$F8]                                  ; $7C82: $F0 $F8
    nop                                           ; $7C84: $00
    ld b, $F8                                     ; $7C85: $06 $F8
    ld hl, sp+$01                                 ; $7C87: $F8 $01
    ld b, $00                                     ; $7C89: $06 $00
    ld hl, sp+$02                                 ; $7C8B: $F8 $02
    ld b, $F8                                     ; $7C8D: $06 $F8
    nop                                           ; $7C8F: $00
    inc bc                                        ; $7C90: $03
    ld b, $00                                     ; $7C91: $06 $00
    nop                                           ; $7C93: $00
    inc b                                         ; $7C94: $04
    ld b, $F0                                     ; $7C95: $06 $F0
    ldh a, [rTAC]                                 ; $7C97: $F0 $07
    ld b, $F8                                     ; $7C99: $06 $F8
    ldh a, [$08]                                  ; $7C9B: $F0 $08
    ld b, $00                                     ; $7C9D: $06 $00
    ldh a, [$09]                                  ; $7C9F: $F0 $09
    ld b, $F0                                     ; $7CA1: $06 $F0
    ld [$2609], sp                                ; $7CA3: $08 $09 $26
    ld hl, sp+$08                                 ; $7CA6: $F8 $08
    ld [$0026], sp                                ; $7CA8: $08 $26 $00
    ld [$2607], sp                                ; $7CAB: $08 $07 $26
    add b                                         ; $7CAE: $80
    ldh a, [$F8]                                  ; $7CAF: $F0 $F8
    nop                                           ; $7CB1: $00
    ld b, $F8                                     ; $7CB2: $06 $F8
    ld hl, sp+$01                                 ; $7CB4: $F8 $01
    ld b, $00                                     ; $7CB6: $06 $00
    ld hl, sp+$02                                 ; $7CB8: $F8 $02
    ld b, $F8                                     ; $7CBA: $06 $F8
    nop                                           ; $7CBC: $00
    inc bc                                        ; $7CBD: $03
    ld b, $00                                     ; $7CBE: $06 $00
    nop                                           ; $7CC0: $00
    inc b                                         ; $7CC1: $04
    ld b, $E8                                     ; $7CC2: $06 $E8
    ldh a, [$0A]                                  ; $7CC4: $F0 $0A
    ld b, $E8                                     ; $7CC6: $06 $E8
    ld hl, sp+$0B                                 ; $7CC8: $F8 $0B
    ld b, $E8                                     ; $7CCA: $06 $E8
    nop                                           ; $7CCC: $00
    inc c                                         ; $7CCD: $0C
    ld b, $08                                     ; $7CCE: $06 $08
    ld [$660A], sp                                ; $7CD0: $08 $0A $66
    ld [$0B00], sp                                ; $7CD3: $08 $00 $0B
    ld h, [hl]                                    ; $7CD6: $66
    ld [$0CF8], sp                                ; $7CD7: $08 $F8 $0C
    ld h, [hl]                                    ; $7CDA: $66
    add sp, $08                                   ; $7CDB: $E8 $08
    ld a, [bc]                                    ; $7CDD: $0A
    ld h, $08                                     ; $7CDE: $26 $08
    ldh a, [$0A]                                  ; $7CE0: $F0 $0A
    ld b, [hl]                                    ; $7CE2: $46
    ldh a, [$F0]                                  ; $7CE3: $F0 $F0
    dec c                                         ; $7CE5: $0D
    ld b, $00                                     ; $7CE6: $06 $00
    ld [$260D], sp                                ; $7CE8: $08 $0D $26
    ld hl, sp-$10                                 ; $7CEB: $F8 $F0
    ld c, $06                                     ; $7CED: $0E $06
    ld hl, sp+$08                                 ; $7CEF: $F8 $08
    ld c, $66                                     ; $7CF1: $0E $66
    nop                                           ; $7CF3: $00
    ldh a, [rIF]                                  ; $7CF4: $F0 $0F
    ld b, $F0                                     ; $7CF6: $06 $F0
    ld [$260F], sp                                ; $7CF8: $08 $0F $26
    add b                                         ; $7CFB: $80
    add sp, $00                                   ; $7CFC: $E8 $00
    dec b                                         ; $7CFE: $05
    ld h, $E8                                     ; $7CFF: $26 $E8
    ld hl, sp+$06                                 ; $7D01: $F8 $06
    ld h, $08                                     ; $7D03: $26 $08
    ld hl, sp+$05                                 ; $7D05: $F8 $05
    ld b, [hl]                                    ; $7D07: $46
    ld [$0600], sp                                ; $7D08: $08 $00 $06
    ld b, [hl]                                    ; $7D0B: $46
    ldh a, [rP1]                                  ; $7D0C: $F0 $00
    nop                                           ; $7D0E: $00
    ld h, $F8                                     ; $7D0F: $26 $F8
    nop                                           ; $7D11: $00
    ld bc, $0026                                  ; $7D12: $01 $26 $00
    nop                                           ; $7D15: $00
    ld [bc], a                                    ; $7D16: $02
    ld h, $F8                                     ; $7D17: $26 $F8
    ld hl, sp+$03                                 ; $7D19: $F8 $03
    ld h, $00                                     ; $7D1B: $26 $00
    ld hl, sp+$04                                 ; $7D1D: $F8 $04
    ld h, $F0                                     ; $7D1F: $26 $F0
    ld [$2607], sp                                ; $7D21: $08 $07 $26
    ld hl, sp+$08                                 ; $7D24: $F8 $08
    ld [$0026], sp                                ; $7D26: $08 $26 $00
    ld [$2609], sp                                ; $7D29: $08 $09 $26
    ldh a, [$F0]                                  ; $7D2C: $F0 $F0
    add hl, bc                                    ; $7D2E: $09
    ld b, $F8                                     ; $7D2F: $06 $F8
    ldh a, [$08]                                  ; $7D31: $F0 $08
    ld b, $00                                     ; $7D33: $06 $00
    ldh a, [rTAC]                                 ; $7D35: $F0 $07
    ld b, $80                                     ; $7D37: $06 $80
    ldh a, [rP1]                                  ; $7D39: $F0 $00
    nop                                           ; $7D3B: $00
    ld h, $F8                                     ; $7D3C: $26 $F8
    nop                                           ; $7D3E: $00
    ld bc, $0026                                  ; $7D3F: $01 $26 $00
    nop                                           ; $7D42: $00
    ld [bc], a                                    ; $7D43: $02
    ld h, $F8                                     ; $7D44: $26 $F8
    ld hl, sp+$03                                 ; $7D46: $F8 $03
    ld h, $00                                     ; $7D48: $26 $00
    ld hl, sp+$04                                 ; $7D4A: $F8 $04
    ld h, $E8                                     ; $7D4C: $26 $E8
    ld [$260A], sp                                ; $7D4E: $08 $0A $26
    add sp, $00                                   ; $7D51: $E8 $00
    dec bc                                        ; $7D53: $0B
    ld h, $E8                                     ; $7D54: $26 $E8
    ld hl, sp+$0C                                 ; $7D56: $F8 $0C
    ld h, $08                                     ; $7D58: $26 $08
    ldh a, [$0A]                                  ; $7D5A: $F0 $0A
    ld b, [hl]                                    ; $7D5C: $46
    ld [$0BF8], sp                                ; $7D5D: $08 $F8 $0B
    ld b, [hl]                                    ; $7D60: $46
    ld [$0C00], sp                                ; $7D61: $08 $00 $0C
    ld b, [hl]                                    ; $7D64: $46
    add sp, -$10                                  ; $7D65: $E8 $F0
    ld a, [bc]                                    ; $7D67: $0A
    ld b, $08                                     ; $7D68: $06 $08
    ld [$660A], sp                                ; $7D6A: $08 $0A $66
    ldh a, [$08]                                  ; $7D6D: $F0 $08
    dec c                                         ; $7D6F: $0D
    ld h, $00                                     ; $7D70: $26 $00
    ldh a, [$0D]                                  ; $7D72: $F0 $0D
    ld b, $F8                                     ; $7D74: $06 $F8
    ld [$260E], sp                                ; $7D76: $08 $0E $26
    ld hl, sp-$10                                 ; $7D79: $F8 $F0
    ld c, $46                                     ; $7D7B: $0E $46
    nop                                           ; $7D7D: $00
    ld [$260F], sp                                ; $7D7E: $08 $0F $26
    ldh a, [$F0]                                  ; $7D81: $F0 $F0
    rrca                                          ; $7D83: $0F
    ld b, $80                                     ; $7D84: $06 $80
    ld c, l                                       ; $7D86: $4D
    inc b                                         ; $7D87: $04
    ld bc, $0000                                  ; $7D88: $01 $00 $00
    db $FC                                        ; $7D8B: $FC
    ld a, h                                       ; $7D8C: $7C
    add hl, sp                                    ; $7D8D: $39
    ld a, l                                       ; $7D8E: $7D
    ld b, [hl]                                    ; $7D8F: $46
    add [hl]                                      ; $7D90: $86
    ld a, l                                       ; $7D91: $7D
    ld c, l                                       ; $7D92: $4D
    inc b                                         ; $7D93: $04
    ld bc, $0000                                  ; $7D94: $01 $00 $00
    ld [hl], d                                    ; $7D97: $72
    ld a, h                                       ; $7D98: $7C
    xor a                                         ; $7D99: $AF
    ld a, h                                       ; $7D9A: $7C
    ld b, [hl]                                    ; $7D9B: $46
    sub d                                         ; $7D9C: $92
    ld a, l                                       ; $7D9D: $7D
    nop                                           ; $7D9E: $00
    ld hl, sp+$08                                 ; $7D9F: $F8 $08
    ld bc, $0000                                  ; $7DA1: $01 $00 $00
    add hl, bc                                    ; $7DA4: $09
    ld bc, $F8F8                                  ; $7DA5: $01 $F8 $F8
    nop                                           ; $7DA8: $00
    ld bc, $00F8                                  ; $7DA9: $01 $F8 $00
    dec b                                         ; $7DAC: $05
    ld bc, $0080                                  ; $7DAD: $01 $80 $00
    ld hl, sp+$08                                 ; $7DB0: $F8 $08
    ld bc, $0000                                  ; $7DB2: $01 $00 $00
    add hl, bc                                    ; $7DB5: $09
    ld bc, $00F8                                  ; $7DB6: $01 $F8 $00
    dec b                                         ; $7DB9: $05
    ld bc, $F8F8                                  ; $7DBA: $01 $F8 $F8
    ld bc, $8001                                  ; $7DBD: $01 $01 $80
    nop                                           ; $7DC0: $00
    ld hl, sp+$08                                 ; $7DC1: $F8 $08
    ld bc, $0000                                  ; $7DC3: $01 $00 $00
    add hl, bc                                    ; $7DC6: $09
    ld bc, $F8F8                                  ; $7DC7: $01 $F8 $F8
    ld [bc], a                                    ; $7DCA: $02
    ld bc, $00F8                                  ; $7DCB: $01 $F8 $00
    dec b                                         ; $7DCE: $05
    ld bc, $0080                                  ; $7DCF: $01 $80 $00
    ld hl, sp+$08                                 ; $7DD2: $F8 $08
    ld bc, $0000                                  ; $7DD4: $01 $00 $00
    add hl, bc                                    ; $7DD7: $09
    ld bc, $F8F8                                  ; $7DD8: $01 $F8 $F8
    inc bc                                        ; $7DDB: $03
    ld bc, $00F8                                  ; $7DDC: $01 $F8 $00
    dec b                                         ; $7DDF: $05
    ld bc, $F880                                  ; $7DE0: $01 $80 $F8
    ld hl, sp+$04                                 ; $7DE3: $F8 $04
    ld bc, $00F8                                  ; $7DE5: $01 $F8 $00
    dec b                                         ; $7DE8: $05
    ld bc, $F800                                  ; $7DE9: $01 $00 $F8
    ld [$0001], sp                                ; $7DEC: $08 $01 $00
    nop                                           ; $7DEF: $00
    add hl, bc                                    ; $7DF0: $09
    ld bc, $0080                                  ; $7DF1: $01 $80 $00
    ld hl, sp+$0A                                 ; $7DF4: $F8 $0A
    ld bc, $0000                                  ; $7DF6: $01 $00 $00
    dec bc                                        ; $7DF9: $0B
    ld bc, $F8F8                                  ; $7DFA: $01 $F8 $F8
    ld b, $01                                     ; $7DFD: $06 $01
    ld hl, sp+$00                                 ; $7DFF: $F8 $00
    rlca                                          ; $7E01: $07
    ld bc, $F880                                  ; $7E02: $01 $80 $F8
    ld hl, sp+$0C                                 ; $7E05: $F8 $0C
    ld bc, $00F8                                  ; $7E07: $01 $F8 $00
    dec c                                         ; $7E0A: $0D
    ld bc, $08F8                                  ; $7E0B: $01 $F8 $08
    ld c, $01                                     ; $7E0E: $0E $01
    nop                                           ; $7E10: $00
    ld hl, sp+$0F                                 ; $7E11: $F8 $0F
    ld bc, $0000                                  ; $7E13: $01 $00 $00
    db $10                                        ; $7E16: $10
    ld bc, $0800                                  ; $7E17: $01 $00 $08
    ld de, $F001                                  ; $7E1A: $11 $01 $F0
    ld [$2116], sp                                ; $7E1D: $08 $16 $21
    ldh a, [$F0]                                  ; $7E20: $F0 $F0
    ld d, $01                                     ; $7E22: $16 $01
    ld hl, sp+$10                                 ; $7E24: $F8 $10
    ld d, $41                                     ; $7E26: $16 $41
    ld hl, sp-$10                                 ; $7E28: $F8 $F0
    ld d, $01                                     ; $7E2A: $16 $01
    add b                                         ; $7E2C: $80
    ld hl, sp-$08                                 ; $7E2D: $F8 $F8
    ld [de], a                                    ; $7E2F: $12
    ld bc, $00F8                                  ; $7E30: $01 $F8 $00
    inc de                                        ; $7E33: $13
    ld bc, $F800                                  ; $7E34: $01 $00 $F8
    inc d                                         ; $7E37: $14
    ld bc, $0000                                  ; $7E38: $01 $00 $00
    dec d                                         ; $7E3B: $15
    ld bc, $F0F0                                  ; $7E3C: $01 $F0 $F0
    ld d, $01                                     ; $7E3F: $16 $01
    add sp, $08                                   ; $7E41: $E8 $08
    ld d, $41                                     ; $7E43: $16 $41
    ld hl, sp+$10                                 ; $7E45: $F8 $10
    rla                                           ; $7E47: $17
    ld bc, $E800                                  ; $7E48: $01 $00 $E8
    rla                                           ; $7E4B: $17
    ld hl, $F080                                  ; $7E4C: $21 $80 $F0
    db $10                                        ; $7E4F: $10
    ld d, $21                                     ; $7E50: $16 $21
    ld hl, sp-$18                                 ; $7E52: $F8 $E8
    ld d, $01                                     ; $7E54: $16 $01
    ld [$1710], sp                                ; $7E56: $08 $10 $17
    ld b, c                                       ; $7E59: $41
    ld [$17E8], sp                                ; $7E5A: $08 $E8 $17
    ld hl, $F000                                  ; $7E5D: $21 $00 $F0
    rla                                           ; $7E60: $17
    ld bc, $0808                                  ; $7E61: $01 $08 $08
    rla                                           ; $7E64: $17
    ld bc, $0080                                  ; $7E65: $01 $80 $00
    db $10                                        ; $7E68: $10
    rla                                           ; $7E69: $17
    ld bc, $F008                                  ; $7E6A: $01 $08 $F0
    rla                                           ; $7E6D: $17
    ld bc, $0080                                  ; $7E6E: $01 $80 $00
    nop                                           ; $7E71: $00
    ld [$0021], sp                                ; $7E72: $08 $21 $00
    ld hl, sp+$09                                 ; $7E75: $F8 $09
    ld hl, $00F8                                  ; $7E77: $21 $F8 $00
    nop                                           ; $7E7A: $00
    ld hl, $F8F8                                  ; $7E7B: $21 $F8 $F8
    dec b                                         ; $7E7E: $05
    ld hl, $F880                                  ; $7E7F: $21 $80 $F8
    nop                                           ; $7E82: $00
    ld [$F861], sp                                ; $7E83: $08 $61 $F8
    ld hl, sp+$09                                 ; $7E86: $F8 $09
    ld h, c                                       ; $7E88: $61
    nop                                           ; $7E89: $00
    nop                                           ; $7E8A: $00
    nop                                           ; $7E8B: $00
    ld h, c                                       ; $7E8C: $61
    nop                                           ; $7E8D: $00
    ld hl, sp+$05                                 ; $7E8E: $F8 $05
    ld h, c                                       ; $7E90: $61
    add b                                         ; $7E91: $80
    ld hl, sp-$08                                 ; $7E92: $F8 $F8
    ld [$F841], sp                                ; $7E94: $08 $41 $F8
    nop                                           ; $7E97: $00
    add hl, bc                                    ; $7E98: $09
    ld b, c                                       ; $7E99: $41
    nop                                           ; $7E9A: $00
    ld hl, sp+$00                                 ; $7E9B: $F8 $00
    ld b, c                                       ; $7E9D: $41
    nop                                           ; $7E9E: $00
    nop                                           ; $7E9F: $00
    dec b                                         ; $7EA0: $05
    ld b, c                                       ; $7EA1: $41
    add b                                         ; $7EA2: $80
    ld c, h                                       ; $7EA3: $4C
    rst $38                                       ; $7EA4: $FF
    nop                                           ; $7EA5: $00
    nop                                           ; $7EA6: $00
    sbc [hl]                                      ; $7EA7: $9E
    ld a, l                                       ; $7EA8: $7D
    nop                                           ; $7EA9: $00
    ld b, [hl]                                    ; $7EAA: $46
    and e                                         ; $7EAB: $A3
    ld a, [hl]                                    ; $7EAC: $7E
    ld c, h                                       ; $7EAD: $4C
    rst $38                                       ; $7EAE: $FF
    nop                                           ; $7EAF: $00
    nop                                           ; $7EB0: $00
    xor a                                         ; $7EB1: $AF
    ld a, l                                       ; $7EB2: $7D
    nop                                           ; $7EB3: $00
    ld b, [hl]                                    ; $7EB4: $46
    xor l                                         ; $7EB5: $AD
    ld a, [hl]                                    ; $7EB6: $7E
    ld c, h                                       ; $7EB7: $4C
    rst $38                                       ; $7EB8: $FF
    nop                                           ; $7EB9: $00
    nop                                           ; $7EBA: $00
    ret nz                                        ; $7EBB: $C0

    ld a, l                                       ; $7EBC: $7D
    nop                                           ; $7EBD: $00
    ld b, [hl]                                    ; $7EBE: $46
    or a                                          ; $7EBF: $B7
    ld a, [hl]                                    ; $7EC0: $7E
    ld c, h                                       ; $7EC1: $4C
    rst $38                                       ; $7EC2: $FF
    nop                                           ; $7EC3: $00
    nop                                           ; $7EC4: $00
    pop de                                        ; $7EC5: $D1
    ld a, l                                       ; $7EC6: $7D
    nop                                           ; $7EC7: $00
    ld b, [hl]                                    ; $7EC8: $46
    pop bc                                        ; $7EC9: $C1
    ld a, [hl]                                    ; $7ECA: $7E
    ld c, h                                       ; $7ECB: $4C
    rst $38                                       ; $7ECC: $FF
    nop                                           ; $7ECD: $00
    nop                                           ; $7ECE: $00
    ld [c], a                                     ; $7ECF: $E2
    ld a, l                                       ; $7ED0: $7D
    nop                                           ; $7ED1: $00
    ld b, [hl]                                    ; $7ED2: $46
    bit 7, [hl]                                   ; $7ED3: $CB $7E
    ld c, l                                       ; $7ED5: $4D
    inc b                                         ; $7ED6: $04
    rlca                                          ; $7ED7: $07
    nop                                           ; $7ED8: $00
    nop                                           ; $7ED9: $00
    ld [c], a                                     ; $7EDA: $E2
    ld a, l                                       ; $7EDB: $7D
    di                                            ; $7EDC: $F3
    ld a, l                                       ; $7EDD: $7D
    ld c, l                                       ; $7EDE: $4D
    ld [$0004], sp                                ; $7EDF: $08 $04 $00
    nop                                           ; $7EE2: $00
    inc b                                         ; $7EE3: $04
    ld a, [hl]                                    ; $7EE4: $7E
    dec l                                         ; $7EE5: $2D
    ld a, [hl]                                    ; $7EE6: $7E
    ld c, [hl]                                    ; $7EE7: $4E
    ld a, [hl]                                    ; $7EE8: $7E
    ld h, a                                       ; $7EE9: $67
    ld a, [hl]                                    ; $7EEA: $7E
    ld b, d                                       ; $7EEB: $42
    ld c, l                                       ; $7EEC: $4D
    ld [$0004], sp                                ; $7EED: $08 $04 $00
    cp $9E                                        ; $7EF0: $FE $9E
    ld a, l                                       ; $7EF2: $7D
    ld [hl], b                                    ; $7EF3: $70
    ld a, [hl]                                    ; $7EF4: $7E
    add c                                         ; $7EF5: $81
    ld a, [hl]                                    ; $7EF6: $7E
    sub d                                         ; $7EF7: $92
    ld a, [hl]                                    ; $7EF8: $7E
    ld b, [hl]                                    ; $7EF9: $46
    db $EC                                        ; $7EFA: $EC
    ld a, [hl]                                    ; $7EFB: $7E
    ld c, l                                       ; $7EFC: $4D
    ld [$0004], sp                                ; $7EFD: $08 $04 $00
    ld [bc], a                                    ; $7F00: $02
    sbc [hl]                                      ; $7F01: $9E
    ld a, l                                       ; $7F02: $7D
    ld [hl], b                                    ; $7F03: $70
    ld a, [hl]                                    ; $7F04: $7E
    add c                                         ; $7F05: $81
    ld a, [hl]                                    ; $7F06: $7E
    sub d                                         ; $7F07: $92
    ld a, [hl]                                    ; $7F08: $7E
    ld b, [hl]                                    ; $7F09: $46
    db $FC                                        ; $7F0A: $FC
    ld a, [hl]                                    ; $7F0B: $7E
    ld c, l                                       ; $7F0C: $4D
    ld [$0004], sp                                ; $7F0D: $08 $04 $00
    rst $38                                       ; $7F10: $FF
    sbc [hl]                                      ; $7F11: $9E
    ld a, l                                       ; $7F12: $7D
    ld [hl], b                                    ; $7F13: $70
    ld a, [hl]                                    ; $7F14: $7E
    add c                                         ; $7F15: $81
    ld a, [hl]                                    ; $7F16: $7E
    sub d                                         ; $7F17: $92
    ld a, [hl]                                    ; $7F18: $7E
    ld b, [hl]                                    ; $7F19: $46
    inc c                                         ; $7F1A: $0C
    ld a, a                                       ; $7F1B: $7F
    ld c, l                                       ; $7F1C: $4D
    ld [$0004], sp                                ; $7F1D: $08 $04 $00
    ld bc, $7D9E                                  ; $7F20: $01 $9E $7D
    ld [hl], b                                    ; $7F23: $70
    ld a, [hl]                                    ; $7F24: $7E
    add c                                         ; $7F25: $81
    ld a, [hl]                                    ; $7F26: $7E
    sub d                                         ; $7F27: $92
    ld a, [hl]                                    ; $7F28: $7E
    ld b, [hl]                                    ; $7F29: $46
    inc e                                         ; $7F2A: $1C
    ld a, a                                       ; $7F2B: $7F
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
