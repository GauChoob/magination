; First half is in sprites.asm
; The rest is magiscript

SECTION "ROM Bank $025", ROMX, BANK[$25]

    db $02
    ld [bc], a                                    ; $5E2F: $02
    ld b, $1D                                     ; $5E30: $06 $1D
    rla                                           ; $5E32: $17
    ld b, l                                       ; $5E33: $45
    dec d                                         ; $5E34: $15
    ret z                                         ; $5E35: $C8

    ld e, [hl]                                    ; $5E36: $5E
    ld b, e                                       ; $5E37: $43
    inc de                                        ; $5E38: $13
    ld bc, $A3A4                                  ; $5E39: $01 $A4 $A3
    dec b                                         ; $5E3C: $05
    inc b                                         ; $5E3D: $04
    ld [hl+], a                                   ; $5E3E: $22
    inc b                                         ; $5E3F: $04
    ld b, b                                       ; $5E40: $40
    ld l, [hl]                                    ; $5E41: $6E
    rrca                                          ; $5E42: $0F
    rst $38                                       ; $5E43: $FF
    ld a, a                                       ; $5E44: $7F
    halt                                          ; $5E45: $76
    jr nz, jr_025_5E57                            ; $5E46: $20 $0F

    ld bc, $1306                                  ; $5E48: $01 $06 $13
    ld b, l                                       ; $5E4B: $45
    dec h                                         ; $5E4C: $25
    inc bc                                        ; $5E4D: $03
    ld h, e                                       ; $5E4E: $63
    ld [bc], a                                    ; $5E4F: $02
    dec b                                         ; $5E50: $05
    inc e                                         ; $5E51: $1C
    nop                                           ; $5E52: $00
    dec sp                                        ; $5E53: $3B
    ld b, l                                       ; $5E54: $45
    dec h                                         ; $5E55: $25
    dec l                                         ; $5E56: $2D

jr_025_5E57:
    ld h, e                                       ; $5E57: $63
    ld b, e                                       ; $5E58: $43
    inc de                                        ; $5E59: $13
    ld bc, $A3A4                                  ; $5E5A: $01 $A4 $A3
    dec b                                         ; $5E5D: $05
    inc b                                         ; $5E5E: $04
    ld [hl+], a                                   ; $5E5F: $22
    inc b                                         ; $5E60: $04
    ld b, b                                       ; $5E61: $40
    ld l, [hl]                                    ; $5E62: $6E
    rrca                                          ; $5E63: $0F
    rst $38                                       ; $5E64: $FF
    ld a, a                                       ; $5E65: $7F
    halt                                          ; $5E66: $76
    jr nz, @+$11                                  ; $5E67: $20 $0F

    ld bc, $090B                                  ; $5E69: $01 $0B $09
    ld b, l                                       ; $5E6C: $45
    dec h                                         ; $5E6D: $25
    or [hl]                                       ; $5E6E: $B6
    ld h, d                                       ; $5E6F: $62
    ld [bc], a                                    ; $5E70: $02
    inc e                                         ; $5E71: $1C
    dec b                                         ; $5E72: $05
    dec sp                                        ; $5E73: $3B
    nop                                           ; $5E74: $00
    ld b, l                                       ; $5E75: $45
    dec h                                         ; $5E76: $25
    ldh [$62], a                                  ; $5E77: $E0 $62
    ld [bc], a                                    ; $5E79: $02
    ld [$3B07], sp                                ; $5E7A: $08 $07 $3B
    nop                                           ; $5E7D: $00
    ld b, l                                       ; $5E7E: $45
    dec h                                         ; $5E7F: $25
    ld a, [hl+]                                   ; $5E80: $2A
    ld h, a                                       ; $5E81: $67
    ld [bc], a                                    ; $5E82: $02
    ld c, $06                                     ; $5E83: $0E $06
    nop                                           ; $5E85: $00
    rla                                           ; $5E86: $17
    ld b, l                                       ; $5E87: $45
    dec h                                         ; $5E88: $25
    xor e                                         ; $5E89: $AB
    ld h, l                                       ; $5E8A: $65
    ld b, e                                       ; $5E8B: $43
    ld de, $C801                                  ; $5E8C: $11 $01 $C8
    and e                                         ; $5E8F: $A3
    dec b                                         ; $5E90: $05
    nop                                           ; $5E91: $00
    dec h                                         ; $5E92: $25
    pop bc                                        ; $5E93: $C1
    ld e, [hl]                                    ; $5E94: $5E
    sbc e                                         ; $5E95: $9B
    ld a, b                                       ; $5E96: $78
    ld [hl], b                                    ; $5E97: $70
    sbc a                                         ; $5E98: $9F
    ld d, h                                       ; $5E99: $54
    ld l, b                                       ; $5E9A: $68
    ld l, c                                       ; $5E9B: $69
    ld [hl], e                                    ; $5E9C: $73
    jr nz, jr_025_5F03                            ; $5E9D: $20 $64

    ld l, a                                       ; $5E9F: $6F
    ld l, a                                       ; $5EA0: $6F
    ld [hl], d                                    ; $5EA1: $72
    jr nz, jr_025_5F0C                            ; $5EA2: $20 $68

    ld h, c                                       ; $5EA4: $61
    ld [hl], e                                    ; $5EA5: $73
    rst $38                                       ; $5EA6: $FF
    ld h, c                                       ; $5EA7: $61
    jr nz, @+$75                                  ; $5EA8: $20 $73

    ld [hl], h                                    ; $5EAA: $74
    ld h, c                                       ; $5EAB: $61
    ld [hl], d                                    ; $5EAC: $72
    jr nz, jr_025_5F22                            ; $5EAD: $20 $73

    ld l, b                                       ; $5EAF: $68
    ld h, c                                       ; $5EB0: $61
    ld [hl], b                                    ; $5EB1: $70
    ld h, l                                       ; $5EB2: $65
    ld h, h                                       ; $5EB3: $64
    cp $6B                                        ; $5EB4: $FE $6B
    ld h, l                                       ; $5EB6: $65
    ld a, c                                       ; $5EB7: $79
    ld l, b                                       ; $5EB8: $68
    ld l, a                                       ; $5EB9: $6F
    ld l, h                                       ; $5EBA: $6C
    ld h, l                                       ; $5EBB: $65
    ld l, $FE                                     ; $5EBC: $2E $FE
    db $FD                                        ; $5EBE: $FD
    sbc d                                         ; $5EBF: $9A
    ld b, d                                       ; $5EC0: $42
    xor a                                         ; $5EC1: $AF
    xor c                                         ; $5EC2: $A9
    and c                                         ; $5EC3: $A1
    ld [$0088], sp                                ; $5EC4: $08 $88 $00
    ld hl, $7E01                                  ; $5EC7: $21 $01 $7E
    nop                                           ; $5ECA: $00
    ret nc                                        ; $5ECB: $D0

    ld [bc], a                                    ; $5ECC: $02
    ld [bc], a                                    ; $5ECD: $02
    ld b, e                                       ; $5ECE: $43
    rst $10                                       ; $5ECF: $D7
    ld l, $13                                     ; $5ED0: $2E $13
    ld b, d                                       ; $5ED2: $42
    sbc a                                         ; $5ED3: $9F
    ld d, h                                       ; $5ED4: $54
    ld l, b                                       ; $5ED5: $68
    ld h, l                                       ; $5ED6: $65
    ld [hl], d                                    ; $5ED7: $72
    ld h, l                                       ; $5ED8: $65
    daa                                           ; $5ED9: $27
    ld [hl], e                                    ; $5EDA: $73
    jr nz, jr_025_5F3E                            ; $5EDB: $20 $61

    rst $38                                       ; $5EDD: $FF
    ld l, [hl]                                    ; $5EDE: $6E
    ld l, a                                       ; $5EDF: $6F
    ld [hl], h                                    ; $5EE0: $74
    ld h, l                                       ; $5EE1: $65
    ld a, [hl-]                                   ; $5EE2: $3A
    cp $56                                        ; $5EE3: $FE $56
    ld l, c                                       ; $5EE5: $69
    ld [hl], e                                    ; $5EE6: $73
    ld l, c                                       ; $5EE7: $69
    ld [hl], h                                    ; $5EE8: $74
    ld l, c                                       ; $5EE9: $69
    ld l, [hl]                                    ; $5EEA: $6E
    ld h, a                                       ; $5EEB: $67
    jr nz, jr_025_5F5B                            ; $5EEC: $20 $6D

    ld a, c                                       ; $5EEE: $79
    rst $38                                       ; $5EEF: $FF
    ld h, d                                       ; $5EF0: $62
    ld [hl], d                                    ; $5EF1: $72
    ld l, a                                       ; $5EF2: $6F
    ld [hl], h                                    ; $5EF3: $74
    ld l, b                                       ; $5EF4: $68
    ld h, l                                       ; $5EF5: $65
    ld [hl], d                                    ; $5EF6: $72
    jr nz, jr_025_5F6E                            ; $5EF7: $20 $75

    ld l, [hl]                                    ; $5EF9: $6E
    ld h, h                                       ; $5EFA: $64
    ld h, l                                       ; $5EFB: $65
    ld [hl], d                                    ; $5EFC: $72
    cp $74                                        ; $5EFD: $FE $74
    ld l, b                                       ; $5EFF: $68
    ld h, l                                       ; $5F00: $65
    jr nz, @+$75                                  ; $5F01: $20 $73

jr_025_5F03:
    ld [hl], h                                    ; $5F03: $74
    ld l, a                                       ; $5F04: $6F
    ld l, [hl]                                    ; $5F05: $6E
    ld h, l                                       ; $5F06: $65
    rst $38                                       ; $5F07: $FF
    ld h, e                                       ; $5F08: $63
    ld l, c                                       ; $5F09: $69
    ld [hl], d                                    ; $5F0A: $72
    ld h, e                                       ; $5F0B: $63

jr_025_5F0C:
    ld l, h                                       ; $5F0C: $6C
    ld h, l                                       ; $5F0D: $65
    ld l, $FE                                     ; $5F0E: $2E $FE
    db $FD                                        ; $5F10: $FD
    sbc d                                         ; $5F11: $9A
    ld b, d                                       ; $5F12: $42
    and h                                         ; $5F13: $A4
    ld c, l                                       ; $5F14: $4D
    and e                                         ; $5F15: $A3
    jr nz, jr_025_5F18                            ; $5F16: $20 $00

jr_025_5F18:
    ld hl, $D5DA                                  ; $5F18: $21 $DA $D5
    ld [bc], a                                    ; $5F1B: $02
    ld b, $0E                                     ; $5F1C: $06 $0E
    rla                                           ; $5F1E: $17
    nop                                           ; $5F1F: $00
    ld b, l                                       ; $5F20: $45
    dec h                                         ; $5F21: $25

jr_025_5F22:
    dec l                                         ; $5F22: $2D
    ld h, e                                       ; $5F23: $63
    ld [bc], a                                    ; $5F24: $02
    daa                                           ; $5F25: $27
    nop                                           ; $5F26: $00
    inc d                                         ; $5F27: $14
    ld hl, $2545                                  ; $5F28: $21 $45 $25
    rst $38                                       ; $5F2B: $FF
    ld h, l                                       ; $5F2C: $65
    ld [bc], a                                    ; $5F2D: $02
    nop                                           ; $5F2E: $00
    daa                                           ; $5F2F: $27
    ld hl, $4514                                  ; $5F30: $21 $14 $45
    dec h                                         ; $5F33: $25
    xor e                                         ; $5F34: $AB
    ld h, l                                       ; $5F35: $65
    ld [bc], a                                    ; $5F36: $02
    ld b, $0E                                     ; $5F37: $06 $0E
    nop                                           ; $5F39: $00
    inc de                                        ; $5F3A: $13
    ld b, l                                       ; $5F3B: $45
    dec h                                         ; $5F3C: $25

jr_025_5F3D:
    ld d, e                                       ; $5F3D: $53

jr_025_5F3E:
    ld h, [hl]                                    ; $5F3E: $66
    ld [bc], a                                    ; $5F3F: $02
    ld c, $06                                     ; $5F40: $0E $06
    inc de                                        ; $5F42: $13
    nop                                           ; $5F43: $00
    ld b, l                                       ; $5F44: $45
    dec h                                         ; $5F45: $25
    rst $38                                       ; $5F46: $FF
    ld h, l                                       ; $5F47: $65
    ld b, d                                       ; $5F48: $42
    ld [bc], a                                    ; $5F49: $02
    nop                                           ; $5F4A: $00
    nop                                           ; $5F4B: $00
    nop                                           ; $5F4C: $00
    nop                                           ; $5F4D: $00
    jr nc, jr_025_5F3D                            ; $5F4E: $30 $ED

    ld d, [hl]                                    ; $5F50: $56
    jr nz, jr_025_5F9A                            ; $5F51: $20 $47

    ld [$6C25], sp                                ; $5F53: $08 $25 $6C
    ld e, a                                       ; $5F56: $5F
    dec h                                         ; $5F57: $25
    add c                                         ; $5F58: $81
    ld e, a                                       ; $5F59: $5F
    dec h                                         ; $5F5A: $25

jr_025_5F5B:
    adc a                                         ; $5F5B: $8F
    ld e, a                                       ; $5F5C: $5F
    dec h                                         ; $5F5D: $25
    and l                                         ; $5F5E: $A5
    ld e, a                                       ; $5F5F: $5F
    dec h                                         ; $5F60: $25
    pop bc                                        ; $5F61: $C1
    ld e, a                                       ; $5F62: $5F
    dec h                                         ; $5F63: $25
    sub $5F                                       ; $5F64: $D6 $5F
    dec h                                         ; $5F66: $25
    db $EB                                        ; $5F67: $EB
    ld e, a                                       ; $5F68: $5F
    dec h                                         ; $5F69: $25
    ld c, $60                                     ; $5F6A: $0E $60
    dec h                                         ; $5F6C: $25
    inc c                                         ; $5F6D: $0C

jr_025_5F6E:
    ld l, h                                       ; $5F6E: $6C
    ld b, h                                       ; $5F6F: $44
    ld c, h                                       ; $5F70: $4C
    inc hl                                        ; $5F71: $23
    ld b, b                                       ; $5F72: $40
    ld l, $09                                     ; $5F73: $2E $09
    ld [$8542], sp                                ; $5F75: $08 $42 $85
    ld bc, $2E2B                                  ; $5F78: $01 $2B $2E
    add hl, bc                                    ; $5F7B: $09
    jr nz, @+$45                                  ; $5F7C: $20 $43

    add l                                         ; $5F7E: $85
    ld bc, $2527                                  ; $5F7F: $01 $27 $25
    inc c                                         ; $5F82: $0C
    ld l, h                                       ; $5F83: $6C
    ld b, [hl]                                    ; $5F84: $46
    ld c, h                                       ; $5F85: $4C
    inc hl                                        ; $5F86: $23
    ld b, b                                       ; $5F87: $40
    ld l, $09                                     ; $5F88: $2E $09
    ld b, h                                       ; $5F8A: $44
    ld b, [hl]                                    ; $5F8B: $46
    jp hl                                         ; $5F8C: $E9


    ld bc, $2527                                  ; $5F8D: $01 $27 $25
    inc c                                         ; $5F90: $0C
    ld l, h                                       ; $5F91: $6C
    ld b, [hl]                                    ; $5F92: $46
    ld c, h                                       ; $5F93: $4C
    inc hl                                        ; $5F94: $23
    ld b, b                                       ; $5F95: $40
    ld l, $09                                     ; $5F96: $2E $09
    jr nz, jr_025_5FE0                            ; $5F98: $20 $46

jr_025_5F9A:
    add [hl]                                      ; $5F9A: $86
    ld bc, $2B2B                                  ; $5F9B: $01 $2B $2B
    ld l, $09                                     ; $5F9E: $2E $09
    jr z, @+$44                                   ; $5FA0: $28 $42

    add l                                         ; $5FA2: $85
    ld bc, $2527                                  ; $5FA3: $01 $27 $25
    inc c                                         ; $5FA6: $0C
    ld l, h                                       ; $5FA7: $6C
    ld b, l                                       ; $5FA8: $45
    ld c, h                                       ; $5FA9: $4C
    inc hl                                        ; $5FAA: $23
    ld b, b                                       ; $5FAB: $40
    ld l, $09                                     ; $5FAC: $2E $09
    jr z, jr_025_5FF4                             ; $5FAE: $28 $44

    adc b                                         ; $5FB0: $88
    ld bc, $2E2B                                  ; $5FB1: $01 $2B $2E
    add hl, bc                                    ; $5FB4: $09
    jr z, jr_025_5FFD                             ; $5FB5: $28 $46

    add l                                         ; $5FB7: $85
    ld bc, $2E2B                                  ; $5FB8: $01 $2B $2E
    add hl, bc                                    ; $5FBB: $09
    ld b, h                                       ; $5FBC: $44
    ld b, e                                       ; $5FBD: $43
    add [hl]                                      ; $5FBE: $86
    ld bc, $2527                                  ; $5FBF: $01 $27 $25
    inc c                                         ; $5FC2: $0C
    ld l, h                                       ; $5FC3: $6C
    ld b, e                                       ; $5FC4: $43
    ld c, h                                       ; $5FC5: $4C
    inc hl                                        ; $5FC6: $23
    ld b, b                                       ; $5FC7: $40
    ld l, $09                                     ; $5FC8: $2E $09
    jr nz, @+$44                                  ; $5FCA: $20 $42

    add h                                         ; $5FCC: $84
    ld bc, $2E2B                                  ; $5FCD: $01 $2B $2E
    add hl, bc                                    ; $5FD0: $09
    ld [$8346], sp                                ; $5FD1: $08 $46 $83
    ld bc, $2527                                  ; $5FD4: $01 $27 $25
    inc c                                         ; $5FD7: $0C
    ld l, h                                       ; $5FD8: $6C
    ld b, h                                       ; $5FD9: $44
    ld c, h                                       ; $5FDA: $4C
    inc hl                                        ; $5FDB: $23
    ld b, b                                       ; $5FDC: $40
    ld l, $09                                     ; $5FDD: $2E $09
    ld b, h                                       ; $5FDF: $44

jr_025_5FE0:
    ld b, [hl]                                    ; $5FE0: $46
    add [hl]                                      ; $5FE1: $86
    ld bc, $2E2B                                  ; $5FE2: $01 $2B $2E
    add hl, bc                                    ; $5FE5: $09
    jr nz, jr_025_602A                            ; $5FE6: $20 $42

    add e                                         ; $5FE8: $83
    ld bc, $2527                                  ; $5FE9: $01 $27 $25
    inc c                                         ; $5FEC: $0C
    ld l, h                                       ; $5FED: $6C
    ld b, [hl]                                    ; $5FEE: $46
    ld c, h                                       ; $5FEF: $4C
    inc hl                                        ; $5FF0: $23
    ld b, b                                       ; $5FF1: $40
    ld l, $09                                     ; $5FF2: $2E $09

jr_025_5FF4:
    ld [$8746], sp                                ; $5FF4: $08 $46 $87
    ld bc, $2E2B                                  ; $5FF7: $01 $2B $2E
    add hl, bc                                    ; $5FFA: $09
    ld b, h                                       ; $5FFB: $44
    ld b, [hl]                                    ; $5FFC: $46

jr_025_5FFD:
    add [hl]                                      ; $5FFD: $86
    ld bc, $2E2B                                  ; $5FFE: $01 $2B $2E
    add hl, bc                                    ; $6001: $09
    jr z, jr_025_604A                             ; $6002: $28 $46

    add b                                         ; $6004: $80
    ld bc, $2E2B                                  ; $6005: $01 $2B $2E
    add hl, bc                                    ; $6008: $09
    jr z, @+$48                                   ; $6009: $28 $46

    add b                                         ; $600B: $80
    ld bc, $2527                                  ; $600C: $01 $27 $25
    inc c                                         ; $600F: $0C

jr_025_6010:
    ld l, h                                       ; $6010: $6C
    inc de                                        ; $6011: $13
    ld c, h                                       ; $6012: $4C
    inc hl                                        ; $6013: $23
    ld b, b                                       ; $6014: $40
    ld l, $09                                     ; $6015: $2E $09
    ld de, $2613                                  ; $6017: $11 $13 $26
    ld bc, $0227                                  ; $601A: $01 $27 $02
    nop                                           ; $601D: $00
    nop                                           ; $601E: $00
    nop                                           ; $601F: $00
    nop                                           ; $6020: $00
    jr nc, jr_025_6010                            ; $6021: $30 $ED

    ld d, [hl]                                    ; $6023: $56
    jr nz, @+$49                                  ; $6024: $20 $47

    ld [$3F25], sp                                ; $6026: $08 $25 $3F
    ld h, b                                       ; $6029: $60

jr_025_602A:
    dec h                                         ; $602A: $25
    ld e, e                                       ; $602B: $5B
    ld h, b                                       ; $602C: $60
    dec h                                         ; $602D: $25
    ld [hl], b                                    ; $602E: $70
    ld h, b                                       ; $602F: $60
    dec h                                         ; $6030: $25
    ld a, [hl]                                    ; $6031: $7E
    ld h, b                                       ; $6032: $60
    dec h                                         ; $6033: $25
    sub e                                         ; $6034: $93
    ld h, b                                       ; $6035: $60
    dec h                                         ; $6036: $25
    xor b                                         ; $6037: $A8
    ld h, b                                       ; $6038: $60
    dec h                                         ; $6039: $25
    call nz, $2560                                ; $603A: $C4 $60 $25
    reti                                          ; $603D: $D9


    ld h, b                                       ; $603E: $60
    dec h                                         ; $603F: $25
    inc c                                         ; $6040: $0C
    ld l, h                                       ; $6041: $6C
    ld c, e                                       ; $6042: $4B
    ld c, h                                       ; $6043: $4C
    inc hl                                        ; $6044: $23
    ld b, b                                       ; $6045: $40
    ld l, $09                                     ; $6046: $2E $09
    ld b, h                                       ; $6048: $44
    ld d, e                                       ; $6049: $53

jr_025_604A:
    and l                                         ; $604A: $A5
    ld bc, $2E2B                                  ; $604B: $01 $2B $2E
    add hl, bc                                    ; $604E: $09
    ld de, $A251                                  ; $604F: $11 $51 $A2
    ld bc, $2E2B                                  ; $6052: $01 $2B $2E
    add hl, bc                                    ; $6055: $09
    jr z, jr_025_60A9                             ; $6056: $28 $51

    and b                                         ; $6058: $A0
    ld bc, $2527                                  ; $6059: $01 $27 $25
    inc c                                         ; $605C: $0C
    ld l, h                                       ; $605D: $6C
    ld d, h                                       ; $605E: $54
    ld c, h                                       ; $605F: $4C
    inc hl                                        ; $6060: $23
    ld b, b                                       ; $6061: $40
    ld l, $09                                     ; $6062: $2E $09
    jr z, @+$55                                   ; $6064: $28 $53

    and [hl]                                      ; $6066: $A6
    ld bc, $2E2B                                  ; $6067: $01 $2B $2E
    add hl, bc                                    ; $606A: $09
    ld de, $A350                                  ; $606B: $11 $50 $A3
    ld bc, $2527                                  ; $606E: $01 $27 $25
    inc c                                         ; $6071: $0C
    ld l, h                                       ; $6072: $6C
    ld d, b                                       ; $6073: $50
    ld c, h                                       ; $6074: $4C
    inc hl                                        ; $6075: $23
    ld b, b                                       ; $6076: $40
    ld l, $09                                     ; $6077: $2E $09
    ld a, [bc]                                    ; $6079: $0A
    inc h                                         ; $607A: $24
    xor h                                         ; $607B: $AC
    ld bc, $2527                                  ; $607C: $01 $27 $25
    inc c                                         ; $607F: $0C
    ld l, h                                       ; $6080: $6C
    ld d, e                                       ; $6081: $53
    ld c, h                                       ; $6082: $4C
    inc hl                                        ; $6083: $23
    ld b, b                                       ; $6084: $40
    ld l, $09                                     ; $6085: $2E $09
    ld de, $A452                                  ; $6087: $11 $52 $A4
    ld bc, $2E2B                                  ; $608A: $01 $2B $2E
    add hl, bc                                    ; $608D: $09
    ld b, h                                       ; $608E: $44
    ld d, b                                       ; $608F: $50
    and b                                         ; $6090: $A0
    ld bc, $2527                                  ; $6091: $01 $27 $25
    inc c                                         ; $6094: $0C
    ld l, h                                       ; $6095: $6C
    ld d, h                                       ; $6096: $54
    ld c, h                                       ; $6097: $4C
    inc hl                                        ; $6098: $23
    ld b, b                                       ; $6099: $40
    ld l, $09                                     ; $609A: $2E $09
    ld de, $A452                                  ; $609C: $11 $52 $A4
    ld bc, $2E2B                                  ; $609F: $01 $2B $2E
    add hl, bc                                    ; $60A2: $09
    ld de, $A250                                  ; $60A3: $11 $50 $A2
    ld bc, $2527                                  ; $60A6: $01 $27 $25

jr_025_60A9:
    inc c                                         ; $60A9: $0C
    ld l, h                                       ; $60AA: $6C
    ld d, d                                       ; $60AB: $52
    ld c, h                                       ; $60AC: $4C
    inc hl                                        ; $60AD: $23
    ld b, b                                       ; $60AE: $40
    ld l, $09                                     ; $60AF: $2E $09
    ld b, h                                       ; $60B1: $44
    ld d, e                                       ; $60B2: $53
    and l                                         ; $60B3: $A5
    ld bc, $2E2B                                  ; $60B4: $01 $2B $2E
    add hl, bc                                    ; $60B7: $09
    ld de, $A352                                  ; $60B8: $11 $52 $A3
    ld bc, $2E2B                                  ; $60BB: $01 $2B $2E
    add hl, bc                                    ; $60BE: $09
    ld b, h                                       ; $60BF: $44
    ld d, c                                       ; $60C0: $51
    and b                                         ; $60C1: $A0
    ld bc, $2527                                  ; $60C2: $01 $27 $25
    inc c                                         ; $60C5: $0C
    ld l, h                                       ; $60C6: $6C
    ld c, [hl]                                    ; $60C7: $4E
    ld c, h                                       ; $60C8: $4C
    inc hl                                        ; $60C9: $23
    ld b, b                                       ; $60CA: $40
    ld l, $09                                     ; $60CB: $2E $09
    jr z, @+$4E                                   ; $60CD: $28 $4C

    and h                                         ; $60CF: $A4
    ld bc, $2E2B                                  ; $60D0: $01 $2B $2E
    add hl, bc                                    ; $60D3: $09
    ld b, h                                       ; $60D4: $44
    ld c, l                                       ; $60D5: $4D
    and e                                         ; $60D6: $A3
    ld bc, $2527                                  ; $60D7: $01 $27 $25
    inc c                                         ; $60DA: $0C
    ld l, h                                       ; $60DB: $6C
    ld d, b                                       ; $60DC: $50
    ld c, h                                       ; $60DD: $4C
    inc hl                                        ; $60DE: $23
    ld b, b                                       ; $60DF: $40
    ld l, $09                                     ; $60E0: $2E $09

jr_025_60E2:
    ld a, [bc]                                    ; $60E2: $0A
    ld d, b                                       ; $60E3: $50
    and [hl]                                      ; $60E4: $A6
    ld bc, $2E2B                                  ; $60E5: $01 $2B $2E
    add hl, bc                                    ; $60E8: $09
    ld a, [bc]                                    ; $60E9: $0A
    ld d, b                                       ; $60EA: $50
    and h                                         ; $60EB: $A4
    ld bc, $0227                                  ; $60EC: $01 $27 $02
    nop                                           ; $60EF: $00
    nop                                           ; $60F0: $00
    nop                                           ; $60F1: $00
    nop                                           ; $60F2: $00
    jr nc, jr_025_60E2                            ; $60F3: $30 $ED

    ld d, [hl]                                    ; $60F5: $56
    jr nz, @+$49                                  ; $60F6: $20 $47

    rlca                                          ; $60F8: $07
    dec h                                         ; $60F9: $25
    ld c, $61                                     ; $60FA: $0E $61
    dec h                                         ; $60FC: $25
    ld sp, $2561                                  ; $60FD: $31 $61 $25
    ld b, [hl]                                    ; $6100: $46
    ld h, c                                       ; $6101: $61
    dec h                                         ; $6102: $25
    ld d, h                                       ; $6103: $54
    ld h, c                                       ; $6104: $61
    dec h                                         ; $6105: $25
    ld l, c                                       ; $6106: $69
    ld h, c                                       ; $6107: $61
    dec h                                         ; $6108: $25
    ld a, [hl]                                    ; $6109: $7E
    ld h, c                                       ; $610A: $61
    dec h                                         ; $610B: $25
    sbc d                                         ; $610C: $9A
    ld h, c                                       ; $610D: $61
    dec h                                         ; $610E: $25
    inc c                                         ; $610F: $0C
    ld l, h                                       ; $6110: $6C
    ld e, e                                       ; $6111: $5B
    ld c, h                                       ; $6112: $4C
    inc hl                                        ; $6113: $23
    ld b, b                                       ; $6114: $40
    ld l, $09                                     ; $6115: $2E $09
    ld d, l                                       ; $6117: $55
    ld e, d                                       ; $6118: $5A
    or h                                          ; $6119: $B4
    ld bc, $2E2B                                  ; $611A: $01 $2B $2E
    add hl, bc                                    ; $611D: $09
    ld b, c                                       ; $611E: $41
    add $4C                                       ; $611F: $C6 $4C
    ld bc, $2E2B                                  ; $6121: $01 $2B $2E
    add hl, bc                                    ; $6124: $09
    ld d, l                                       ; $6125: $55
    ld h, d                                       ; $6126: $62
    or c                                          ; $6127: $B1
    ld bc, $2E2B                                  ; $6128: $01 $2B $2E
    add hl, bc                                    ; $612B: $09
    jr jr_025_618F                                ; $612C: $18 $61

    xor a                                         ; $612E: $AF
    ld bc, $2527                                  ; $612F: $01 $27 $25
    inc c                                         ; $6132: $0C
    ld l, h                                       ; $6133: $6C
    ld e, h                                       ; $6134: $5C
    ld c, h                                       ; $6135: $4C
    inc hl                                        ; $6136: $23
    ld b, b                                       ; $6137: $40
    ld l, $09                                     ; $6138: $2E $09
    jr jr_025_6198                                ; $613A: $18 $5C

    cp c                                          ; $613C: $B9
    ld bc, $2E2B                                  ; $613D: $01 $2B $2E
    add hl, bc                                    ; $6140: $09
    jr nz, jr_025_619D                            ; $6141: $20 $5A

    or h                                          ; $6143: $B4
    ld bc, $2527                                  ; $6144: $01 $27 $25
    inc c                                         ; $6147: $0C
    ld l, h                                       ; $6148: $6C
    ld e, h                                       ; $6149: $5C
    ld c, h                                       ; $614A: $4C
    inc hl                                        ; $614B: $23
    ld b, b                                       ; $614C: $40
    ld l, $09                                     ; $614D: $2E $09
    ld b, c                                       ; $614F: $41
    ld e, h                                       ; $6150: $5C
    or a                                          ; $6151: $B7
    ld bc, $2527                                  ; $6152: $01 $27 $25
    inc c                                         ; $6155: $0C
    ld l, h                                       ; $6156: $6C
    ld e, c                                       ; $6157: $59
    ld c, h                                       ; $6158: $4C
    inc hl                                        ; $6159: $23
    ld b, b                                       ; $615A: $40
    ld l, $09                                     ; $615B: $2E $09
    ld b, c                                       ; $615D: $41
    ld e, b                                       ; $615E: $58
    or c                                          ; $615F: $B1
    ld bc, $2E2B                                  ; $6160: $01 $2B $2E
    add hl, bc                                    ; $6163: $09
    ld d, l                                       ; $6164: $55
    ld e, b                                       ; $6165: $58
    or b                                          ; $6166: $B0
    ld bc, $2527                                  ; $6167: $01 $27 $25
    inc c                                         ; $616A: $0C
    ld l, h                                       ; $616B: $6C
    ld e, d                                       ; $616C: $5A
    ld c, h                                       ; $616D: $4C
    inc hl                                        ; $616E: $23
    ld b, b                                       ; $616F: $40
    ld l, $09                                     ; $6170: $2E $09
    ld b, c                                       ; $6172: $41
    ld e, b                                       ; $6173: $58
    or b                                          ; $6174: $B0
    ld bc, $2E2B                                  ; $6175: $01 $2B $2E
    add hl, bc                                    ; $6178: $09
    ld b, c                                       ; $6179: $41
    ld d, a                                       ; $617A: $57
    xor a                                         ; $617B: $AF
    ld bc, $2527                                  ; $617C: $01 $27 $25
    inc c                                         ; $617F: $0C
    ld l, h                                       ; $6180: $6C
    ld e, e                                       ; $6181: $5B
    ld c, h                                       ; $6182: $4C
    inc hl                                        ; $6183: $23
    ld b, b                                       ; $6184: $40
    ld l, $09                                     ; $6185: $2E $09
    ld b, c                                       ; $6187: $41
    ld e, h                                       ; $6188: $5C
    cp b                                          ; $6189: $B8
    ld bc, $2E2B                                  ; $618A: $01 $2B $2E
    add hl, bc                                    ; $618D: $09
    ld d, l                                       ; $618E: $55

jr_025_618F:
    ld e, d                                       ; $618F: $5A
    or h                                          ; $6190: $B4
    ld bc, $2E2B                                  ; $6191: $01 $2B $2E
    add hl, bc                                    ; $6194: $09
    jr nz, jr_025_61EF                            ; $6195: $20 $58

    or c                                          ; $6197: $B1

jr_025_6198:
    ld bc, $2527                                  ; $6198: $01 $27 $25
    inc c                                         ; $619B: $0C
    ld l, h                                       ; $619C: $6C

jr_025_619D:
    ld e, d                                       ; $619D: $5A
    ld c, h                                       ; $619E: $4C
    inc hl                                        ; $619F: $23
    ld b, b                                       ; $61A0: $40
    ld l, $09                                     ; $61A1: $2E $09
    ld b, c                                       ; $61A3: $41
    ld e, e                                       ; $61A4: $5B
    or [hl]                                       ; $61A5: $B6
    ld bc, $2E2B                                  ; $61A6: $01 $2B $2E
    add hl, bc                                    ; $61A9: $09
    ld d, l                                       ; $61AA: $55
    ld e, d                                       ; $61AB: $5A
    or h                                          ; $61AC: $B4
    ld bc, $2527                                  ; $61AD: $01 $27 $25
    inc c                                         ; $61B0: $0C
    ld l, h                                       ; $61B1: $6C
    ld e, d                                       ; $61B2: $5A
    ld c, h                                       ; $61B3: $4C
    inc hl                                        ; $61B4: $23
    ld b, b                                       ; $61B5: $40
    ld l, $09                                     ; $61B6: $2E $09

jr_025_61B8:
    ld b, c                                       ; $61B8: $41
    ld e, d                                       ; $61B9: $5A
    or e                                          ; $61BA: $B3
    ld bc, $2E2B                                  ; $61BB: $01 $2B $2E
    add hl, bc                                    ; $61BE: $09
    ld d, l                                       ; $61BF: $55
    ld e, c                                       ; $61C0: $59
    or b                                          ; $61C1: $B0
    ld bc, $0227                                  ; $61C2: $01 $27 $02
    nop                                           ; $61C5: $00
    nop                                           ; $61C6: $00
    nop                                           ; $61C7: $00
    nop                                           ; $61C8: $00
    jr nc, jr_025_61B8                            ; $61C9: $30 $ED

    ld d, [hl]                                    ; $61CB: $56
    jr nz, @+$49                                  ; $61CC: $20 $47

    rlca                                          ; $61CE: $07
    dec h                                         ; $61CF: $25
    db $E4                                        ; $61D0: $E4
    ld h, c                                       ; $61D1: $61
    dec h                                         ; $61D2: $25
    nop                                           ; $61D3: $00
    ld h, d                                       ; $61D4: $62
    dec h                                         ; $61D5: $25
    dec d                                         ; $61D6: $15
    ld h, d                                       ; $61D7: $62
    dec h                                         ; $61D8: $25
    inc hl                                        ; $61D9: $23
    ld h, d                                       ; $61DA: $62
    dec h                                         ; $61DB: $25
    jr c, @+$64                                   ; $61DC: $38 $62

    dec h                                         ; $61DE: $25
    ld c, l                                       ; $61DF: $4D
    ld h, d                                       ; $61E0: $62
    dec h                                         ; $61E1: $25
    ld l, c                                       ; $61E2: $69
    ld h, d                                       ; $61E3: $62
    dec h                                         ; $61E4: $25
    inc c                                         ; $61E5: $0C
    ld l, h                                       ; $61E6: $6C
    ld h, d                                       ; $61E7: $62
    ld c, h                                       ; $61E8: $4C
    inc hl                                        ; $61E9: $23
    ld b, b                                       ; $61EA: $40
    ld l, $09                                     ; $61EB: $2E $09
    inc de                                        ; $61ED: $13
    ld h, b                                       ; $61EE: $60

jr_025_61EF:
    ret nz                                        ; $61EF: $C0

    ld bc, $2E2B                                  ; $61F0: $01 $2B $2E
    add hl, bc                                    ; $61F3: $09
    inc d                                         ; $61F4: $14
    ld h, b                                       ; $61F5: $60
    pop bc                                        ; $61F6: $C1
    ld bc, $2E2B                                  ; $61F7: $01 $2B $2E
    add hl, bc                                    ; $61FA: $09
    ld [de], a                                    ; $61FB: $12
    ld h, d                                       ; $61FC: $62
    push bc                                       ; $61FD: $C5
    ld bc, $2527                                  ; $61FE: $01 $27 $25
    inc c                                         ; $6201: $0C
    ld l, h                                       ; $6202: $6C
    ld h, d                                       ; $6203: $62
    ld c, h                                       ; $6204: $4C
    inc hl                                        ; $6205: $23
    ld b, b                                       ; $6206: $40
    ld l, $09                                     ; $6207: $2E $09
    ld [$C460], sp                                ; $6209: $08 $60 $C4
    ld bc, $2E2B                                  ; $620C: $01 $2B $2E
    add hl, bc                                    ; $620F: $09
    inc d                                         ; $6210: $14
    ld h, e                                       ; $6211: $63
    rst $00                                       ; $6212: $C7
    ld bc, $2527                                  ; $6213: $01 $27 $25
    inc c                                         ; $6216: $0C
    ld l, h                                       ; $6217: $6C
    ld h, e                                       ; $6218: $63
    ld c, h                                       ; $6219: $4C
    inc hl                                        ; $621A: $23
    ld b, b                                       ; $621B: $40
    ld l, $09                                     ; $621C: $2E $09
    ld [de], a                                    ; $621E: $12
    ld h, e                                       ; $621F: $63
    rst $38                                       ; $6220: $FF
    ld bc, $2527                                  ; $6221: $01 $27 $25
    inc c                                         ; $6224: $0C
    ld l, h                                       ; $6225: $6C
    ld h, e                                       ; $6226: $63
    ld c, h                                       ; $6227: $4C
    inc hl                                        ; $6228: $23
    ld b, b                                       ; $6229: $40
    ld l, $09                                     ; $622A: $2E $09
    ld [de], a                                    ; $622C: $12
    ld h, e                                       ; $622D: $63
    ret z                                         ; $622E: $C8

    ld bc, $2E2B                                  ; $622F: $01 $2B $2E
    add hl, bc                                    ; $6232: $09
    ld [de], a                                    ; $6233: $12
    ld h, e                                       ; $6234: $63
    ret z                                         ; $6235: $C8

    ld bc, $2527                                  ; $6236: $01 $27 $25
    inc c                                         ; $6239: $0C
    ld l, h                                       ; $623A: $6C
    ld h, e                                       ; $623B: $63
    ld c, h                                       ; $623C: $4C
    inc hl                                        ; $623D: $23
    ld b, b                                       ; $623E: $40
    ld l, $09                                     ; $623F: $2E $09
    ld [hl+], a                                   ; $6241: $22
    ld h, e                                       ; $6242: $63
    add $01                                       ; $6243: $C6 $01
    dec hl                                        ; $6245: $2B
    ld l, $09                                     ; $6246: $2E $09
    jr jr_025_62AD                                ; $6248: $18 $63

    call $2701                                    ; $624A: $CD $01 $27
    dec h                                         ; $624D: $25
    inc c                                         ; $624E: $0C
    ld l, h                                       ; $624F: $6C
    ld h, e                                       ; $6250: $63
    ld c, h                                       ; $6251: $4C
    inc hl                                        ; $6252: $23
    ld b, b                                       ; $6253: $40
    ld l, $09                                     ; $6254: $2E $09
    inc d                                         ; $6256: $14
    ld h, d                                       ; $6257: $62
    call nz, $2B01                                ; $6258: $C4 $01 $2B
    ld l, $09                                     ; $625B: $2E $09
    inc de                                        ; $625D: $13
    ld h, e                                       ; $625E: $63
    ret z                                         ; $625F: $C8

    ld bc, $2E2B                                  ; $6260: $01 $2B $2E
    add hl, bc                                    ; $6263: $09
    ld [$CA63], sp                                ; $6264: $08 $63 $CA
    ld bc, $2527                                  ; $6267: $01 $27 $25
    inc c                                         ; $626A: $0C
    ld l, h                                       ; $626B: $6C
    ld h, e                                       ; $626C: $63
    ld c, h                                       ; $626D: $4C
    inc hl                                        ; $626E: $23
    ld b, b                                       ; $626F: $40
    ld l, $09                                     ; $6270: $2E $09
    jr jr_025_62D7                                ; $6272: $18 $63

    add $01                                       ; $6274: $C6 $01
    dec hl                                        ; $6276: $2B
    ld l, $09                                     ; $6277: $2E $09
    jr @+$65                                      ; $6279: $18 $63

    ret z                                         ; $627B: $C8

    ld bc, $2527                                  ; $627C: $01 $27 $25
    inc c                                         ; $627F: $0C
    ld l, h                                       ; $6280: $6C
    ld h, e                                       ; $6281: $63
    ld c, h                                       ; $6282: $4C
    inc hl                                        ; $6283: $23
    ld b, b                                       ; $6284: $40
    ld l, $09                                     ; $6285: $2E $09
    jr @+$65                                      ; $6287: $18 $63

    jp nc, $2B01                                  ; $6289: $D2 $01 $2B

    ld l, $09                                     ; $628C: $2E $09
    ld [de], a                                    ; $628E: $12
    ld h, e                                       ; $628F: $63
    rst $10                                       ; $6290: $D7
    ld bc, $9327                                  ; $6291: $01 $27 $93
    ld h, l                                       ; $6294: $65
    sbc d                                         ; $6295: $9A
    ld c, e                                       ; $6296: $4B
    ld c, a                                       ; $6297: $4F
    ld h, h                                       ; $6298: $64
    ld [hl], c                                    ; $6299: $71
    ld c, a                                       ; $629A: $4F
    ld h, [hl]                                    ; $629B: $66
    ret nz                                        ; $629C: $C0

    ld e, h                                       ; $629D: $5C
    ld hl, $0005                                  ; $629E: $21 $05 $00
    add c                                         ; $62A1: $81
    ld e, l                                       ; $62A2: $5D
    dec b                                         ; $62A3: $05
    dec b                                         ; $62A4: $05

jr_025_62A5:
    ld e, d                                       ; $62A5: $5A
    ret nc                                        ; $62A6: $D0

    nop                                           ; $62A7: $00
    jr nz, jr_025_62A5                            ; $62A8: $20 $FB

    ld d, b                                       ; $62AA: $50
    ld [hl+], a                                   ; $62AB: $22
    dec b                                         ; $62AC: $05

jr_025_62AD:
    ld b, b                                       ; $62AD: $40
    dec bc                                        ; $62AE: $0B
    nop                                           ; $62AF: $00
    nop                                           ; $62B0: $00
    add d                                         ; $62B1: $82
    inc h                                         ; $62B2: $24
    ld d, b                                       ; $62B3: $50
    sub h                                         ; $62B4: $94
    ld b, d                                       ; $62B5: $42
    sub e                                         ; $62B6: $93
    ld h, l                                       ; $62B7: $65
    sbc d                                         ; $62B8: $9A
    ld c, e                                       ; $62B9: $4B
    ld c, a                                       ; $62BA: $4F
    ld h, h                                       ; $62BB: $64
    ld [hl], c                                    ; $62BC: $71
    ld c, a                                       ; $62BD: $4F
    ld h, [hl]                                    ; $62BE: $66
    ret nz                                        ; $62BF: $C0

    ld e, h                                       ; $62C0: $5C
    ld hl, $0005                                  ; $62C1: $21 $05 $00
    add c                                         ; $62C4: $81
    ld e, l                                       ; $62C5: $5D
    dec b                                         ; $62C6: $05
    dec b                                         ; $62C7: $05

jr_025_62C8:
    ld e, d                                       ; $62C8: $5A
    ret nc                                        ; $62C9: $D0

    nop                                           ; $62CA: $00
    jr nz, jr_025_62C8                            ; $62CB: $20 $FB

    ld d, b                                       ; $62CD: $50
    ld [hl+], a                                   ; $62CE: $22
    dec b                                         ; $62CF: $05
    ld b, b                                       ; $62D0: $40
    dec bc                                        ; $62D1: $0B
    nop                                           ; $62D2: $00
    nop                                           ; $62D3: $00
    add d                                         ; $62D4: $82
    inc h                                         ; $62D5: $24
    ld d, b                                       ; $62D6: $50

jr_025_62D7:
    ld l, a                                       ; $62D7: $6F
    rrca                                          ; $62D8: $0F
    rst $38                                       ; $62D9: $FF
    ld a, a                                       ; $62DA: $7F
    sub h                                         ; $62DB: $94
    halt                                          ; $62DC: $76
    jr nz, jr_025_62EE                            ; $62DD: $20 $0F

    ld b, d                                       ; $62DF: $42
    sub e                                         ; $62E0: $93
    ld h, l                                       ; $62E1: $65
    xor c                                         ; $62E2: $A9
    ld c, e                                       ; $62E3: $4B
    ld c, a                                       ; $62E4: $4F
    ld h, h                                       ; $62E5: $64
    ld a, d                                       ; $62E6: $7A
    ld c, a                                       ; $62E7: $4F
    ld h, [hl]                                    ; $62E8: $66
    ret nz                                        ; $62E9: $C0

    ld e, h                                       ; $62EA: $5C
    ld hl, $0005                                  ; $62EB: $21 $05 $00

jr_025_62EE:
    add c                                         ; $62EE: $81
    ld e, l                                       ; $62EF: $5D
    dec b                                         ; $62F0: $05
    dec b                                         ; $62F1: $05

jr_025_62F2:
    ld d, b                                       ; $62F2: $50
    ret nc                                        ; $62F3: $D0

    nop                                           ; $62F4: $00
    jr nz, jr_025_62F2                            ; $62F5: $20 $FB

    ld d, b                                       ; $62F7: $50
    ld [hl+], a                                   ; $62F8: $22
    dec b                                         ; $62F9: $05
    ld b, b                                       ; $62FA: $40
    dec bc                                        ; $62FB: $0B
    nop                                           ; $62FC: $00
    nop                                           ; $62FD: $00
    add d                                         ; $62FE: $82
    rra                                           ; $62FF: $1F
    inc d                                         ; $6300: $14
    sub h                                         ; $6301: $94
    ld b, d                                       ; $6302: $42
    sub e                                         ; $6303: $93
    ld h, l                                       ; $6304: $65
    xor c                                         ; $6305: $A9
    ld c, e                                       ; $6306: $4B
    ld c, a                                       ; $6307: $4F
    ld h, h                                       ; $6308: $64
    ld a, d                                       ; $6309: $7A
    ld c, a                                       ; $630A: $4F
    ld h, [hl]                                    ; $630B: $66
    ret nz                                        ; $630C: $C0

    ld e, h                                       ; $630D: $5C
    ld hl, $0005                                  ; $630E: $21 $05 $00
    add c                                         ; $6311: $81
    ld e, l                                       ; $6312: $5D
    dec b                                         ; $6313: $05
    dec b                                         ; $6314: $05

jr_025_6315:
    ld d, b                                       ; $6315: $50
    ret nc                                        ; $6316: $D0

    nop                                           ; $6317: $00
    jr nz, jr_025_6315                            ; $6318: $20 $FB

    ld d, b                                       ; $631A: $50
    ld [hl+], a                                   ; $631B: $22
    dec b                                         ; $631C: $05
    ld b, b                                       ; $631D: $40
    dec bc                                        ; $631E: $0B

jr_025_631F:
    nop                                           ; $631F: $00
    nop                                           ; $6320: $00
    add d                                         ; $6321: $82
    rra                                           ; $6322: $1F
    inc d                                         ; $6323: $14
    ld l, a                                       ; $6324: $6F
    rrca                                          ; $6325: $0F
    rst $38                                       ; $6326: $FF
    ld a, a                                       ; $6327: $7F
    sub h                                         ; $6328: $94
    halt                                          ; $6329: $76
    jr nz, jr_025_633B                            ; $632A: $20 $0F

    ld b, d                                       ; $632C: $42
    sub e                                         ; $632D: $93
    ld h, l                                       ; $632E: $65
    cp b                                          ; $632F: $B8
    ld c, e                                       ; $6330: $4B
    ld c, a                                       ; $6331: $4F
    ld h, h                                       ; $6332: $64
    add e                                         ; $6333: $83
    ld c, a                                       ; $6334: $4F
    ld l, c                                       ; $6335: $69
    sub h                                         ; $6336: $94
    ld c, a                                       ; $6337: $4F
    ld h, [hl]                                    ; $6338: $66
    ret nz                                        ; $6339: $C0

    ld e, h                                       ; $633A: $5C

jr_025_633B:
    ld hl, $0005                                  ; $633B: $21 $05 $00
    add c                                         ; $633E: $81
    ld e, l                                       ; $633F: $5D
    dec b                                         ; $6340: $05
    dec b                                         ; $6341: $05

jr_025_6342:
    call $00D0                                    ; $6342: $CD $D0 $00
    jr nz, jr_025_6342                            ; $6345: $20 $FB

    ld d, b                                       ; $6347: $50
    ld [hl+], a                                   ; $6348: $22
    dec b                                         ; $6349: $05
    ld b, b                                       ; $634A: $40
    dec b                                         ; $634B: $05
    ld [bc], a                                    ; $634C: $02
    db $ED                                        ; $634D: $ED
    ld h, e                                       ; $634E: $63
    dec d                                         ; $634F: $15
    ld h, $05                                     ; $6350: $26 $05
    sub $34                                       ; $6352: $D6 $34
    jr nz, jr_025_631F                            ; $6354: $20 $C9

    ld h, [hl]                                    ; $6356: $66
    dec h                                         ; $6357: $25
    ret nz                                        ; $6358: $C0

    ld h, e                                       ; $6359: $63
    dec b                                         ; $635A: $05
    jr nz, @-$30                                  ; $635B: $20 $CE

    ld h, e                                       ; $635D: $63
    ld a, [bc]                                    ; $635E: $0A
    add hl, bc                                    ; $635F: $09
    ld [hl], d                                    ; $6360: $72
    pop de                                        ; $6361: $D1
    nop                                           ; $6362: $00
    ld [hl+], a                                   ; $6363: $22
    jp c, $2540                                   ; $6364: $DA $40 $25

    ld c, c                                       ; $6367: $49
    ld e, a                                       ; $6368: $5F
    dec b                                         ; $6369: $05
    rra                                           ; $636A: $1F
    adc $63                                       ; $636B: $CE $63
    ld a, [bc]                                    ; $636D: $0A
    add hl, bc                                    ; $636E: $09
    ld [hl], d                                    ; $636F: $72
    pop de                                        ; $6370: $D1
    nop                                           ; $6371: $00
    ld [hl+], a                                   ; $6372: $22
    jp c, $2540                                   ; $6373: $DA $40 $25

    ld c, c                                       ; $6376: $49
    ld e, a                                       ; $6377: $5F
    dec bc                                        ; $6378: $0B
    jr nz, jr_025_6386                            ; $6379: $20 $0B

    rra                                           ; $637B: $1F
    ld l, e                                       ; $637C: $6B
    inc [hl]                                      ; $637D: $34
    dec c                                         ; $637E: $0D
    jr nc, jr_025_63EB                            ; $637F: $30 $6A

    nop                                           ; $6381: $00
    add b                                         ; $6382: $80
    nop                                           ; $6383: $00
    ld l, e                                       ; $6384: $6B
    dec de                                        ; $6385: $1B

jr_025_6386:
    inc h                                         ; $6386: $24
    ld b, b                                       ; $6387: $40
    ld b, e                                       ; $6388: $43
    ld b, b                                       ; $6389: $40
    add e                                         ; $638A: $83
    nop                                           ; $638B: $00
    ld sp, $2D25                                  ; $638C: $31 $25 $2D
    ld h, e                                       ; $638F: $63
    ld [hl+], a                                   ; $6390: $22
    adc $40                                       ; $6391: $CE $40
    dec bc                                        ; $6393: $0B
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    add d                                         ; $6396: $82
    ld b, e                                       ; $6397: $43
    ld a, [bc]                                    ; $6398: $0A
    nop                                           ; $6399: $00
    xor c                                         ; $639A: $A9
    and c                                         ; $639B: $A1
    ld [$A925], sp                                ; $639C: $08 $25 $A9
    ld h, e                                       ; $639F: $63
    ld a, [hl]                                    ; $63A0: $7E
    nop                                           ; $63A1: $00
    ret nc                                        ; $63A2: $D0

    ld [bc], a                                    ; $63A3: $02
    ld [bc], a                                    ; $63A4: $02
    ld b, e                                       ; $63A5: $43
    rst $10                                       ; $63A6: $D7
    ld l, $13                                     ; $63A7: $2E $13
    ld b, e                                       ; $63A9: $43
    ld a, [bc]                                    ; $63AA: $0A
    ld bc, $A018                                  ; $63AB: $01 $18 $A0
    dec h                                         ; $63AE: $25
    cp h                                          ; $63AF: $BC
    ld h, e                                       ; $63B0: $63
    ld a, [hl]                                    ; $63B1: $7E
    ld d, b                                       ; $63B2: $50
    ret nc                                        ; $63B3: $D0

    ld [bc], a                                    ; $63B4: $02
    ld [bc], a                                    ; $63B5: $02
    ld h, e                                       ; $63B6: $63
    push de                                       ; $63B7: $D5
    ld [hl+], a                                   ; $63B8: $22
    inc de                                        ; $63B9: $13
    dec bc                                        ; $63BA: $0B
    ld [bc], a                                    ; $63BB: $02
    rra                                           ; $63BC: $1F
    inc e                                         ; $63BD: $1C
    sub h                                         ; $63BE: $94
    ld b, d                                       ; $63BF: $42
    ld e, e                                       ; $63C0: $5B
    dec h                                         ; $63C1: $25
    ret z                                         ; $63C2: $C8

    ld h, e                                       ; $63C3: $63
    ld b, l                                       ; $63C4: $45
    jr nz, jr_025_6410                            ; $63C5: $20 $49

    ld l, d                                       ; $63C7: $6A
    sbc e                                         ; $63C8: $9B
    add hl, sp                                    ; $63C9: $39
    ld d, c                                       ; $63CA: $51
    sbc a                                         ; $63CB: $9F
    ld d, a                                       ; $63CC: $57
    ld h, l                                       ; $63CD: $65
    ld l, h                                       ; $63CE: $6C
    ld h, e                                       ; $63CF: $63
    ld l, a                                       ; $63D0: $6F
    ld l, l                                       ; $63D1: $6D
    ld h, l                                       ; $63D2: $65
    jr nz, @+$76                                  ; $63D3: $20 $74

    ld l, a                                       ; $63D5: $6F
    jr nz, jr_025_644C                            ; $63D6: $20 $74

    ld l, b                                       ; $63D8: $68
    ld h, l                                       ; $63D9: $65
    rst $38                                       ; $63DA: $FF
    ld h, h                                       ; $63DB: $64
    ld h, c                                       ; $63DC: $61
    ld [hl], d                                    ; $63DD: $72
    ld l, e                                       ; $63DE: $6B
    jr nz, jr_025_6454                            ; $63DF: $20 $73

    ld l, c                                       ; $63E1: $69
    ld h, h                                       ; $63E2: $64
    ld h, l                                       ; $63E3: $65
    jr nz, jr_025_6455                            ; $63E4: $20 $6F

    ld h, [hl]                                    ; $63E6: $66
    cp $52                                        ; $63E7: $FE $52
    ld l, c                                       ; $63E9: $69
    ld l, [hl]                                    ; $63EA: $6E

jr_025_63EB:
    ld h, a                                       ; $63EB: $67
    ld [hl], e                                    ; $63EC: $73
    ld l, l                                       ; $63ED: $6D
    ld l, c                                       ; $63EE: $69
    ld [hl], h                                    ; $63EF: $74
    ld l, b                                       ; $63F0: $68
    ld l, c                                       ; $63F1: $69
    ld l, [hl]                                    ; $63F2: $6E
    ld h, a                                       ; $63F3: $67
    ld l, $FE                                     ; $63F4: $2E $FE
    db $FD                                        ; $63F6: $FD
    sbc d                                         ; $63F7: $9A
    sbc c                                         ; $63F8: $99
    sbc e                                         ; $63F9: $9B
    ld a, b                                       ; $63FA: $78
    ld [hl], b                                    ; $63FB: $70
    sbc a                                         ; $63FC: $9F
    jr nz, jr_025_6445                            ; $63FD: $20 $46

    ld l, a                                       ; $63FF: $6F
    ld [hl], d                                    ; $6400: $72
    ld h, a                                       ; $6401: $67
    ld h, l                                       ; $6402: $65
    jr nz, jr_025_6425                            ; $6403: $20 $20

    ld b, l                                       ; $6405: $45
    ld [hl], c                                    ; $6406: $71
    ld [hl], l                                    ; $6407: $75
    ld l, c                                       ; $6408: $69
    ld [hl], b                                    ; $6409: $70
    rst $38                                       ; $640A: $FF
    jr nz, jr_025_645D                            ; $640B: $20 $50

    ld l, a                                       ; $640D: $6F
    ld [hl], a                                    ; $640E: $77
    ld h, l                                       ; $640F: $65

jr_025_6410:
    ld [hl], d                                    ; $6410: $72
    jr nz, jr_025_6433                            ; $6411: $20 $20

    ld b, h                                       ; $6413: $44
    ld l, a                                       ; $6414: $6F
    ld l, [hl]                                    ; $6415: $6E
    ld h, l                                       ; $6416: $65
    db $FD                                        ; $6417: $FD
    sbc h                                         ; $6418: $9C
    inc b                                         ; $6419: $04
    dec h                                         ; $641A: $25
    ld c, d                                       ; $641B: $4A
    ld h, h                                       ; $641C: $64
    dec h                                         ; $641D: $25
    ld h, $64                                     ; $641E: $26 $64
    dec h                                         ; $6420: $25
    ld b, h                                       ; $6421: $44
    ld h, h                                       ; $6422: $64
    dec h                                         ; $6423: $25
    adc a                                         ; $6424: $8F

jr_025_6425:
    ld h, l                                       ; $6425: $65
    sbc d                                         ; $6426: $9A
    adc a                                         ; $6427: $8F
    ld d, $00                                     ; $6428: $16 $00
    dec d                                         ; $642A: $15
    ld [hl+], a                                   ; $642B: $22
    ld [$2042], sp                                ; $642C: $08 $42 $20
    jr z, jr_025_6442                             ; $642F: $28 $11

    ld c, [hl]                                    ; $6431: $4E
    ld d, l                                       ; $6432: $55

jr_025_6433:
    ld b, c                                       ; $6433: $41
    rrca                                          ; $6434: $0F
    daa                                           ; $6435: $27
    ccf                                           ; $6436: $3F
    ld b, [hl]                                    ; $6437: $46
    inc hl                                        ; $6438: $23
    ld a, [bc]                                    ; $6439: $0A
    inc de                                        ; $643A: $13
    inc d                                         ; $643B: $14
    ld b, h                                       ; $643C: $44
    jr jr_025_6464                                ; $643D: $18 $25

    ld [de], a                                    ; $643F: $12
    ld b, l                                       ; $6440: $45
    dec h                                         ; $6441: $25

jr_025_6442:
    ld hl, sp+$63                                 ; $6442: $F8 $63
    sbc d                                         ; $6444: $9A

jr_025_6445:
    adc l                                         ; $6445: $8D
    ld b, l                                       ; $6446: $45
    dec h                                         ; $6447: $25
    ld hl, sp+$63                                 ; $6448: $F8 $63
    sbc e                                         ; $644A: $9B
    add hl, sp                                    ; $644B: $39

jr_025_644C:
    ld d, c                                       ; $644C: $51
    sbc a                                         ; $644D: $9F
    ld d, a                                       ; $644E: $57
    ld l, b                                       ; $644F: $68
    ld h, c                                       ; $6450: $61
    ld [hl], h                                    ; $6451: $74
    jr nz, jr_025_64BF                            ; $6452: $20 $6B

jr_025_6454:
    ld l, c                                       ; $6454: $69

jr_025_6455:
    ld l, [hl]                                    ; $6455: $6E
    ld h, h                                       ; $6456: $64
    jr nz, @+$71                                  ; $6457: $20 $6F

    ld h, [hl]                                    ; $6459: $66
    rst $38                                       ; $645A: $FF
    ld [hl], d                                    ; $645B: $72
    ld l, c                                       ; $645C: $69

jr_025_645D:
    ld l, [hl]                                    ; $645D: $6E
    ld h, a                                       ; $645E: $67
    jr nz, jr_025_64D8                            ; $645F: $20 $77

    ld l, a                                       ; $6461: $6F
    ld [hl], l                                    ; $6462: $75
    ld l, h                                       ; $6463: $6C

jr_025_6464:
    ld h, h                                       ; $6464: $64
    cp $79                                        ; $6465: $FE $79
    ld l, a                                       ; $6467: $6F
    ld [hl], l                                    ; $6468: $75
    jr nz, jr_025_64D7                            ; $6469: $20 $6C

    ld l, c                                       ; $646B: $69
    ld l, e                                       ; $646C: $6B
    ld h, l                                       ; $646D: $65
    ccf                                           ; $646E: $3F
    cp $FD                                        ; $646F: $FE $FD
    sbc d                                         ; $6471: $9A
    adc [hl]                                      ; $6472: $8E
    dec h                                         ; $6473: $25
    ld l, a                                       ; $6474: $6F
    ld h, l                                       ; $6475: $65
    dec h                                         ; $6476: $25
    ld hl, sp+$63                                 ; $6477: $F8 $63
    xor c                                         ; $6479: $A9
    nop                                           ; $647A: $00
    dec d                                         ; $647B: $15
    ld [hl+], a                                   ; $647C: $22
    ld [hl+], a                                   ; $647D: $22
    inc bc                                        ; $647E: $03
    jr c, jr_025_6482                             ; $647F: $38 $01

    inc l                                         ; $6481: $2C

jr_025_6482:
    ld bc, $082D                                  ; $6482: $01 $2D $08
    ld [$0103], sp                                ; $6485: $08 $03 $01
    ld bc, $012C                                  ; $6488: $01 $2C $01
    dec l                                         ; $648B: $2D
    ld b, d                                       ; $648C: $42
    ld b, d                                       ; $648D: $42
    inc bc                                        ; $648E: $03
    ld c, a                                       ; $648F: $4F
    ld bc, $012C                                  ; $6490: $01 $2C $01
    dec l                                         ; $6493: $2D
    jr nz, jr_025_64B6                            ; $6494: $20 $20

    inc bc                                        ; $6496: $03
    ld [hl], $01                                  ; $6497: $36 $01
    inc l                                         ; $6499: $2C
    ld bc, $282D                                  ; $649A: $01 $2D $28
    jr z, jr_025_64A2                             ; $649D: $28 $03

    rst $38                                       ; $649F: $FF
    nop                                           ; $64A0: $00
    db $F4                                        ; $64A1: $F4

jr_025_64A2:
    ld bc, $1130                                  ; $64A2: $01 $30 $11
    ld de, $FF03                                  ; $64A5: $11 $03 $FF
    nop                                           ; $64A8: $00
    db $F4                                        ; $64A9: $F4
    ld bc, $4E30                                  ; $64AA: $01 $30 $4E
    ld c, [hl]                                    ; $64AD: $4E
    inc bc                                        ; $64AE: $03
    rra                                           ; $64AF: $1F
    ld bc, $01F4                                  ; $64B0: $01 $F4 $01
    jr nc, @+$57                                  ; $64B3: $30 $55

    ld d, l                                       ; $64B5: $55

jr_025_64B6:
    inc bc                                        ; $64B6: $03
    scf                                           ; $64B7: $37
    ld bc, $0226                                  ; $64B8: $01 $26 $02
    ld [hl-], a                                   ; $64BB: $32
    ld b, c                                       ; $64BC: $41
    ld b, c                                       ; $64BD: $41
    inc bc                                        ; $64BE: $03

jr_025_64BF:
    inc h                                         ; $64BF: $24
    ld bc, $0226                                  ; $64C0: $01 $26 $02
    ld [hl-], a                                   ; $64C3: $32
    rrca                                          ; $64C4: $0F
    rrca                                          ; $64C5: $0F
    ld bc, $0140                                  ; $64C6: $01 $40 $01
    ld e, b                                       ; $64C9: $58
    ld [bc], a                                    ; $64CA: $02
    ld [hl-], a                                   ; $64CB: $32
    daa                                           ; $64CC: $27
    daa                                           ; $64CD: $27
    inc bc                                        ; $64CE: $03
    ld b, [hl]                                    ; $64CF: $46
    ld bc, $0258                                  ; $64D0: $01 $58 $02
    scf                                           ; $64D3: $37
    ccf                                           ; $64D4: $3F
    ccf                                           ; $64D5: $3F
    inc bc                                        ; $64D6: $03

jr_025_64D7:
    inc hl                                        ; $64D7: $23

jr_025_64D8:
    ld bc, $0258                                  ; $64D8: $01 $58 $02
    scf                                           ; $64DB: $37
    ld b, [hl]                                    ; $64DC: $46
    ld b, [hl]                                    ; $64DD: $46
    inc bc                                        ; $64DE: $03
    daa                                           ; $64DF: $27
    ld bc, $0258                                  ; $64E0: $01 $58 $02
    scf                                           ; $64E3: $37
    inc hl                                        ; $64E4: $23
    inc hl                                        ; $64E5: $23
    inc bc                                        ; $64E6: $03
    ccf                                           ; $64E7: $3F
    ld bc, $0258                                  ; $64E8: $01 $58 $02
    scf                                           ; $64EB: $37
    ld a, [bc]                                    ; $64EC: $0A
    ld a, [bc]                                    ; $64ED: $0A
    inc bc                                        ; $64EE: $03
    ld b, l                                       ; $64EF: $45
    ld bc, $0258                                  ; $64F0: $01 $58 $02
    scf                                           ; $64F3: $37
    inc de                                        ; $64F4: $13
    inc de                                        ; $64F5: $13
    inc bc                                        ; $64F6: $03
    dec b                                         ; $64F7: $05
    ld bc, $028A                                  ; $64F8: $01 $8A $02
    ld a, [hl-]                                   ; $64FB: $3A
    inc d                                         ; $64FC: $14
    inc d                                         ; $64FD: $14
    inc bc                                        ; $64FE: $03
    ld c, l                                       ; $64FF: $4D
    ld bc, $028A                                  ; $6500: $01 $8A $02
    ld a, [hl-]                                   ; $6503: $3A
    ld b, h                                       ; $6504: $44
    ld b, h                                       ; $6505: $44
    inc bc                                        ; $6506: $03
    inc a                                         ; $6507: $3C
    ld bc, $028A                                  ; $6508: $01 $8A $02
    ld a, [hl-]                                   ; $650B: $3A
    jr jr_025_6526                                ; $650C: $18 $18

    inc bc                                        ; $650E: $03
    ld b, $01                                     ; $650F: $06 $01
    cp h                                          ; $6511: $BC
    ld [bc], a                                    ; $6512: $02
    inc a                                         ; $6513: $3C
    dec h                                         ; $6514: $25
    dec h                                         ; $6515: $25
    inc bc                                        ; $6516: $03
    ld b, e                                       ; $6517: $43
    ld [bc], a                                    ; $6518: $02
    cp h                                          ; $6519: $BC
    ld [bc], a                                    ; $651A: $02
    inc a                                         ; $651B: $3C
    ld [de], a                                    ; $651C: $12
    ld [de], a                                    ; $651D: $12
    inc bc                                        ; $651E: $03
    ld b, a                                       ; $651F: $47
    ld bc, $0320                                  ; $6520: $01 $20 $03
    inc a                                         ; $6523: $3C
    sbc e                                         ; $6524: $9B
    add hl, sp                                    ; $6525: $39

jr_025_6526:
    ld d, c                                       ; $6526: $51
    sbc a                                         ; $6527: $9F
    ld c, b                                       ; $6528: $48
    ld h, l                                       ; $6529: $65
    ld [hl], d                                    ; $652A: $72
    ld h, l                                       ; $652B: $65
    jr nz, jr_025_6597                            ; $652C: $20 $69

    ld [hl], e                                    ; $652E: $73
    jr nz, @+$7B                                  ; $652F: $20 $79

    ld l, a                                       ; $6531: $6F
    ld [hl], l                                    ; $6532: $75
    ld [hl], d                                    ; $6533: $72
    rst $38                                       ; $6534: $FF
    db $FC                                        ; $6535: $FC
    cp $62                                        ; $6536: $FE $62
    ld [hl], l                                    ; $6538: $75
    ld [hl], h                                    ; $6539: $74
    jr nz, jr_025_659E                            ; $653A: $20 $62

    ld h, l                                       ; $653C: $65
    jr nz, jr_025_65A2                            ; $653D: $20 $63

    ld h, c                                       ; $653F: $61
    ld [hl], d                                    ; $6540: $72
    ld h, l                                       ; $6541: $65
    ld h, [hl]                                    ; $6542: $66
    ld [hl], l                                    ; $6543: $75
    ld l, h                                       ; $6544: $6C
    rst $38                                       ; $6545: $FF
    ld [hl], a                                    ; $6546: $77
    ld l, c                                       ; $6547: $69
    ld [hl], h                                    ; $6548: $74
    ld l, b                                       ; $6549: $68
    jr nz, jr_025_65B5                            ; $654A: $20 $69

    ld [hl], h                                    ; $654C: $74
    ld l, $20                                     ; $654D: $2E $20
    ld d, h                                       ; $654F: $54
    ld l, b                                       ; $6550: $68
    ld l, a                                       ; $6551: $6F
    ld [hl], e                                    ; $6552: $73
    ld h, l                                       ; $6553: $65
    cp $74                                        ; $6554: $FE $74
    ld l, b                                       ; $6556: $68
    ld l, c                                       ; $6557: $69
    ld l, [hl]                                    ; $6558: $6E
    ld h, a                                       ; $6559: $67
    ld [hl], e                                    ; $655A: $73
    jr nz, @+$63                                  ; $655B: $20 $61

    ld [hl], d                                    ; $655D: $72
    ld h, l                                       ; $655E: $65
    rst $38                                       ; $655F: $FF
    ld h, h                                       ; $6560: $64
    ld h, c                                       ; $6561: $61
    ld l, [hl]                                    ; $6562: $6E
    ld h, a                                       ; $6563: $67
    ld h, l                                       ; $6564: $65
    ld [hl], d                                    ; $6565: $72
    ld l, a                                       ; $6566: $6F
    ld [hl], l                                    ; $6567: $75
    ld [hl], e                                    ; $6568: $73
    ld l, $FE                                     ; $6569: $2E $FE
    db $FD                                        ; $656B: $FD
    ld b, [hl]                                    ; $656C: $46
    ld hl, sp+$63                                 ; $656D: $F8 $63
    sbc e                                         ; $656F: $9B
    add hl, sp                                    ; $6570: $39
    ld d, c                                       ; $6571: $51
    sbc a                                         ; $6572: $9F
    ld e, c                                       ; $6573: $59
    ld l, a                                       ; $6574: $6F
    ld [hl], l                                    ; $6575: $75
    ld [hl], d                                    ; $6576: $72
    jr nz, jr_025_65CB                            ; $6577: $20 $52

    ld l, c                                       ; $6579: $69
    ld l, [hl]                                    ; $657A: $6E
    ld h, a                                       ; $657B: $67
    jr nz, jr_025_65C0                            ; $657C: $20 $42

    ld h, c                                       ; $657E: $61
    ld l, [hl]                                    ; $657F: $6E
    ld l, e                                       ; $6580: $6B
    rst $38                                       ; $6581: $FF
    ld l, c                                       ; $6582: $69
    ld [hl], e                                    ; $6583: $73
    jr nz, jr_025_65EC                            ; $6584: $20 $66

    ld [hl], l                                    ; $6586: $75
    ld l, h                                       ; $6587: $6C
    ld l, h                                       ; $6588: $6C
    ld l, $FE                                     ; $6589: $2E $FE
    db $FD                                        ; $658B: $FD
    ld b, [hl]                                    ; $658C: $46
    ld hl, sp+$63                                 ; $658D: $F8 $63
    sbc e                                         ; $658F: $9B
    add hl, sp                                    ; $6590: $39
    ld d, c                                       ; $6591: $51
    sbc a                                         ; $6592: $9F
    ld b, e                                       ; $6593: $43
    ld l, a                                       ; $6594: $6F
    ld l, l                                       ; $6595: $6D
    ld h, l                                       ; $6596: $65

jr_025_6597:
    jr nz, jr_025_65FB                            ; $6597: $20 $62

jr_025_6599:
    ld h, c                                       ; $6599: $61
    ld h, e                                       ; $659A: $63
    ld l, e                                       ; $659B: $6B
    rst $38                                       ; $659C: $FF
    ld h, c                                       ; $659D: $61

jr_025_659E:
    ld l, [hl]                                    ; $659E: $6E
    ld a, c                                       ; $659F: $79
    ld [hl], h                                    ; $65A0: $74
    ld l, c                                       ; $65A1: $69

jr_025_65A2:
    ld l, l                                       ; $65A2: $6D
    ld h, l                                       ; $65A3: $65
    ld hl, $FDFE                                  ; $65A4: $21 $FE $FD
    sbc d                                         ; $65A7: $9A
    ld e, b                                       ; $65A8: $58
    ld bc, $9342                                  ; $65A9: $01 $42 $93
    ld h, l                                       ; $65AC: $65
    rst $00                                       ; $65AD: $C7
    ld c, e                                       ; $65AE: $4B
    ld c, a                                       ; $65AF: $4F
    ld h, h                                       ; $65B0: $64
    and c                                         ; $65B1: $A1
    ld c, a                                       ; $65B2: $4F
    ld h, [hl]                                    ; $65B3: $66
    ret nz                                        ; $65B4: $C0

jr_025_65B5:
    ld e, h                                       ; $65B5: $5C
    ld hl, $0005                                  ; $65B6: $21 $05 $00
    add c                                         ; $65B9: $81
    ld e, l                                       ; $65BA: $5D
    dec b                                         ; $65BB: $05
    dec b                                         ; $65BC: $05

jr_025_65BD:
    call $00D0                                    ; $65BD: $CD $D0 $00

jr_025_65C0:
    jr nz, jr_025_65BD                            ; $65C0: $20 $FB

    ld d, b                                       ; $65C2: $50
    ld [hl+], a                                   ; $65C3: $22
    dec b                                         ; $65C4: $05
    ld b, b                                       ; $65C5: $40
    dec bc                                        ; $65C6: $0B
    nop                                           ; $65C7: $00
    dec b                                         ; $65C8: $05
    jr nz, jr_025_6599                            ; $65C9: $20 $CE

jr_025_65CB:
    ld h, e                                       ; $65CB: $63
    ld a, [bc]                                    ; $65CC: $0A
    add hl, bc                                    ; $65CD: $09
    ld [hl], d                                    ; $65CE: $72
    pop de                                        ; $65CF: $D1
    nop                                           ; $65D0: $00
    ld [hl+], a                                   ; $65D1: $22
    jp c, $2540                                   ; $65D2: $DA $40 $25

    inc e                                         ; $65D5: $1C
    ld h, b                                       ; $65D6: $60
    dec b                                         ; $65D7: $05
    rra                                           ; $65D8: $1F
    adc $63                                       ; $65D9: $CE $63
    ld a, [bc]                                    ; $65DB: $0A
    add hl, bc                                    ; $65DC: $09
    ld [hl], d                                    ; $65DD: $72
    pop de                                        ; $65DE: $D1
    nop                                           ; $65DF: $00
    ld [hl+], a                                   ; $65E0: $22
    jp c, $2540                                   ; $65E1: $DA $40 $25

    inc e                                         ; $65E4: $1C
    ld h, b                                       ; $65E5: $60
    dec bc                                        ; $65E6: $0B
    jr nz, @+$0D                                  ; $65E7: $20 $0B

    rra                                           ; $65E9: $1F
    ld l, e                                       ; $65EA: $6B
    inc [hl]                                      ; $65EB: $34

jr_025_65EC:
    dec c                                         ; $65EC: $0D

jr_025_65ED:
    jr nc, jr_025_6659                            ; $65ED: $30 $6A

    nop                                           ; $65EF: $00
    add b                                         ; $65F0: $80
    nop                                           ; $65F1: $00
    ld sp, $AB25                                  ; $65F2: $31 $25 $AB
    ld h, l                                       ; $65F5: $65
    ld [hl+], a                                   ; $65F6: $22
    adc $40                                       ; $65F7: $CE $40
    nop                                           ; $65F9: $00
    add d                                         ; $65FA: $82

jr_025_65FB:
    rra                                           ; $65FB: $1F
    inc e                                         ; $65FC: $1C
    sub h                                         ; $65FD: $94
    ld b, d                                       ; $65FE: $42
    sub e                                         ; $65FF: $93
    ld h, l                                       ; $6600: $65
    sub $4B                                       ; $6601: $D6 $4B
    ld c, a                                       ; $6603: $4F
    ld h, h                                       ; $6604: $64
    xor d                                         ; $6605: $AA
    ld c, a                                       ; $6606: $4F
    ld h, [hl]                                    ; $6607: $66
    ret nz                                        ; $6608: $C0

    ld e, h                                       ; $6609: $5C
    ld hl, $0005                                  ; $660A: $21 $05 $00
    add c                                         ; $660D: $81
    ld e, l                                       ; $660E: $5D
    dec b                                         ; $660F: $05
    dec b                                         ; $6610: $05

jr_025_6611:
    call $00D0                                    ; $6611: $CD $D0 $00
    jr nz, jr_025_6611                            ; $6614: $20 $FB

    ld d, b                                       ; $6616: $50
    ld [hl+], a                                   ; $6617: $22
    dec b                                         ; $6618: $05
    ld b, b                                       ; $6619: $40
    dec bc                                        ; $661A: $0B
    nop                                           ; $661B: $00
    dec b                                         ; $661C: $05
    jr nz, jr_025_65ED                            ; $661D: $20 $CE

    ld h, e                                       ; $661F: $63
    ld a, [bc]                                    ; $6620: $0A
    add hl, bc                                    ; $6621: $09
    sbc d                                         ; $6622: $9A
    ret nc                                        ; $6623: $D0

    nop                                           ; $6624: $00
    ld [hl+], a                                   ; $6625: $22
    jp c, $2540                                   ; $6626: $DA $40 $25

    xor $60                                       ; $6629: $EE $60
    dec b                                         ; $662B: $05
    rra                                           ; $662C: $1F
    adc $63                                       ; $662D: $CE $63
    ld a, [bc]                                    ; $662F: $0A
    add hl, bc                                    ; $6630: $09
    sbc d                                         ; $6631: $9A
    ret nc                                        ; $6632: $D0

    nop                                           ; $6633: $00
    ld [hl+], a                                   ; $6634: $22
    jp c, $2540                                   ; $6635: $DA $40 $25

    xor $60                                       ; $6638: $EE $60
    dec bc                                        ; $663A: $0B
    jr nz, @+$0D                                  ; $663B: $20 $0B

    rra                                           ; $663D: $1F
    ld l, e                                       ; $663E: $6B
    inc [hl]                                      ; $663F: $34
    dec c                                         ; $6640: $0D

jr_025_6641:
    jr nc, jr_025_66AD                            ; $6641: $30 $6A

    nop                                           ; $6643: $00
    add b                                         ; $6644: $80
    nop                                           ; $6645: $00
    ld sp, $FF25                                  ; $6646: $31 $25 $FF
    ld h, l                                       ; $6649: $65
    ld [hl+], a                                   ; $664A: $22
    adc $40                                       ; $664B: $CE $40
    nop                                           ; $664D: $00
    add d                                         ; $664E: $82

Call_025_664F:
    rra                                           ; $664F: $1F
    inc e                                         ; $6650: $1C
    sub h                                         ; $6651: $94
    ld b, d                                       ; $6652: $42
    sub e                                         ; $6653: $93
    ld h, l                                       ; $6654: $65
    push hl                                       ; $6655: $E5
    ld c, e                                       ; $6656: $4B
    ld c, a                                       ; $6657: $4F
    ld h, h                                       ; $6658: $64

jr_025_6659:
    or e                                          ; $6659: $B3
    ld c, a                                       ; $665A: $4F
    ld h, [hl]                                    ; $665B: $66
    ret nz                                        ; $665C: $C0

    ld e, h                                       ; $665D: $5C
    ld hl, $0005                                  ; $665E: $21 $05 $00
    add c                                         ; $6661: $81
    ld e, l                                       ; $6662: $5D
    dec b                                         ; $6663: $05
    dec b                                         ; $6664: $05

jr_025_6665:
    call $00D0                                    ; $6665: $CD $D0 $00
    jr nz, jr_025_6665                            ; $6668: $20 $FB

    ld d, b                                       ; $666A: $50
    ld [hl+], a                                   ; $666B: $22
    dec b                                         ; $666C: $05
    ld b, b                                       ; $666D: $40
    dec bc                                        ; $666E: $0B
    nop                                           ; $666F: $00
    dec b                                         ; $6670: $05
    jr nz, jr_025_6641                            ; $6671: $20 $CE

    ld h, e                                       ; $6673: $63
    ld a, [bc]                                    ; $6674: $0A
    add hl, bc                                    ; $6675: $09
    ld b, l                                       ; $6676: $45
    pop de                                        ; $6677: $D1
    nop                                           ; $6678: $00
    ld [hl+], a                                   ; $6679: $22
    jp c, $2540                                   ; $667A: $DA $40 $25

    call nz, $0561                                ; $667D: $C4 $61 $05
    rra                                           ; $6680: $1F
    adc $63                                       ; $6681: $CE $63
    ld a, [bc]                                    ; $6683: $0A
    add hl, bc                                    ; $6684: $09
    ld b, l                                       ; $6685: $45
    pop de                                        ; $6686: $D1
    nop                                           ; $6687: $00
    ld [hl+], a                                   ; $6688: $22
    jp c, $2540                                   ; $6689: $DA $40 $25

    call nz, $0B61                                ; $668C: $C4 $61 $0B
    jr nz, @+$0D                                  ; $668F: $20 $0B

    rra                                           ; $6691: $1F
    ld l, e                                       ; $6692: $6B
    inc [hl]                                      ; $6693: $34
    dec c                                         ; $6694: $0D
    jr nc, jr_025_6701                            ; $6695: $30 $6A

    nop                                           ; $6697: $00
    add b                                         ; $6698: $80
    nop                                           ; $6699: $00
    ld sp, $5325                                  ; $669A: $31 $25 $53
    ld h, [hl]                                    ; $669D: $66
    ld [hl+], a                                   ; $669E: $22
    adc $40                                       ; $669F: $CE $40
    nop                                           ; $66A1: $00
    add d                                         ; $66A2: $82
    rra                                           ; $66A3: $1F
    inc e                                         ; $66A4: $1C
    sub h                                         ; $66A5: $94
    ld b, d                                       ; $66A6: $42
    ld bc, $0A08                                  ; $66A7: $01 $08 $0A
    ld b, l                                       ; $66AA: $45
    inc de                                        ; $66AB: $13
    ld l, d                                       ; $66AC: $6A

jr_025_66AD:
    ld [hl], h                                    ; $66AD: $74
    ld b, e                                       ; $66AE: $43
    inc de                                        ; $66AF: $13
    ld bc, $A3A4                                  ; $66B0: $01 $A4 $A3
    dec b                                         ; $66B3: $05
    inc bc                                        ; $66B4: $03
    ld [hl+], a                                   ; $66B5: $22
    inc b                                         ; $66B6: $04
    ld b, b                                       ; $66B7: $40
    ld l, [hl]                                    ; $66B8: $6E
    rrca                                          ; $66B9: $0F
    rst $38                                       ; $66BA: $FF
    ld a, a                                       ; $66BB: $7F
    halt                                          ; $66BC: $76
    jr nz, jr_025_66CE                            ; $66BD: $20 $0F

    ld bc, $1409                                  ; $66BF: $01 $09 $14
    ld b, l                                       ; $66C2: $45
    dec h                                         ; $66C3: $25
    ld c, l                                       ; $66C4: $4D
    ld h, a                                       ; $66C5: $67
    ld [bc], a                                    ; $66C6: $02
    rlca                                          ; $66C7: $07
    ld [$3B00], sp                                ; $66C8: $08 $00 $3B
    ld b, l                                       ; $66CB: $45
    dec h                                         ; $66CC: $25
    dec l                                         ; $66CD: $2D

jr_025_66CE:
    ld h, e                                       ; $66CE: $63
    ld l, [hl]                                    ; $66CF: $6E
    rrca                                          ; $66D0: $0F
    rst $38                                       ; $66D1: $FF
    ld a, a                                       ; $66D2: $7F
    halt                                          ; $66D3: $76
    jr nz, jr_025_66E5                            ; $66D4: $20 $0F

    ld bc, $0F09                                  ; $66D6: $01 $09 $0F
    ld b, l                                       ; $66D9: $45
    dec h                                         ; $66DA: $25
    nop                                           ; $66DB: $00
    ld h, a                                       ; $66DC: $67
    sub e                                         ; $66DD: $93
    ld h, l                                       ; $66DE: $65
    db $F4                                        ; $66DF: $F4
    ld c, e                                       ; $66E0: $4B
    ld c, a                                       ; $66E1: $4F
    ld h, h                                       ; $66E2: $64
    cp b                                          ; $66E3: $B8
    ld c, a                                       ; $66E4: $4F

jr_025_66E5:
    ld h, [hl]                                    ; $66E5: $66
    ret nz                                        ; $66E6: $C0

    ld e, h                                       ; $66E7: $5C
    ld hl, $0005                                  ; $66E8: $21 $05 $00
    add c                                         ; $66EB: $81
    ld e, l                                       ; $66EC: $5D
    dec b                                         ; $66ED: $05
    dec b                                         ; $66EE: $05

jr_025_66EF:
    ld d, b                                       ; $66EF: $50
    ret nc                                        ; $66F0: $D0

    nop                                           ; $66F1: $00
    jr nz, jr_025_66EF                            ; $66F2: $20 $FB

    ld d, b                                       ; $66F4: $50
    ld [hl+], a                                   ; $66F5: $22
    dec b                                         ; $66F6: $05
    ld b, b                                       ; $66F7: $40
    dec bc                                        ; $66F8: $0B
    nop                                           ; $66F9: $00
    nop                                           ; $66FA: $00
    add d                                         ; $66FB: $82
    inc h                                         ; $66FC: $24
    ld d, b                                       ; $66FD: $50
    sub h                                         ; $66FE: $94
    ld b, d                                       ; $66FF: $42
    sub e                                         ; $6700: $93

jr_025_6701:
    ld h, l                                       ; $6701: $65
    db $F4                                        ; $6702: $F4
    ld c, e                                       ; $6703: $4B
    ld c, a                                       ; $6704: $4F
    ld h, h                                       ; $6705: $64
    cp b                                          ; $6706: $B8
    ld c, a                                       ; $6707: $4F
    ld h, [hl]                                    ; $6708: $66
    ret nz                                        ; $6709: $C0

    ld e, h                                       ; $670A: $5C
    ld hl, $0005                                  ; $670B: $21 $05 $00
    add c                                         ; $670E: $81
    ld e, l                                       ; $670F: $5D
    dec b                                         ; $6710: $05
    dec b                                         ; $6711: $05

jr_025_6712:
    ld d, b                                       ; $6712: $50
    ret nc                                        ; $6713: $D0

    nop                                           ; $6714: $00
    jr nz, jr_025_6712                            ; $6715: $20 $FB

    ld d, b                                       ; $6717: $50
    ld [hl+], a                                   ; $6718: $22
    dec b                                         ; $6719: $05
    ld b, b                                       ; $671A: $40
    dec bc                                        ; $671B: $0B
    nop                                           ; $671C: $00
    nop                                           ; $671D: $00
    add d                                         ; $671E: $82
    inc h                                         ; $671F: $24
    ld d, b                                       ; $6720: $50
    ld l, a                                       ; $6721: $6F
    rrca                                          ; $6722: $0F
    rst $38                                       ; $6723: $FF
    ld a, a                                       ; $6724: $7F
    sub h                                         ; $6725: $94
    halt                                          ; $6726: $76
    jr nz, jr_025_6738                            ; $6727: $20 $0F

    ld b, d                                       ; $6729: $42
    sub e                                         ; $672A: $93
    ld h, l                                       ; $672B: $65
    inc bc                                        ; $672C: $03
    ld c, h                                       ; $672D: $4C
    ld c, a                                       ; $672E: $4F
    ld h, h                                       ; $672F: $64
    pop bc                                        ; $6730: $C1
    ld c, a                                       ; $6731: $4F
    ld h, [hl]                                    ; $6732: $66
    ret nz                                        ; $6733: $C0

    ld e, h                                       ; $6734: $5C
    ld hl, $0005                                  ; $6735: $21 $05 $00

jr_025_6738:
    add c                                         ; $6738: $81
    ld e, l                                       ; $6739: $5D
    dec b                                         ; $673A: $05
    dec b                                         ; $673B: $05

jr_025_673C:
    ld d, b                                       ; $673C: $50
    ret nc                                        ; $673D: $D0

    nop                                           ; $673E: $00
    jr nz, jr_025_673C                            ; $673F: $20 $FB

    ld d, b                                       ; $6741: $50
    ld [hl+], a                                   ; $6742: $22
    dec b                                         ; $6743: $05
    ld b, b                                       ; $6744: $40
    dec bc                                        ; $6745: $0B
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    add d                                         ; $6748: $82
    rra                                           ; $6749: $1F
    inc d                                         ; $674A: $14
    sub h                                         ; $674B: $94
    ld b, d                                       ; $674C: $42
    sub e                                         ; $674D: $93
    ld h, l                                       ; $674E: $65
    inc bc                                        ; $674F: $03
    ld c, h                                       ; $6750: $4C
    ld c, a                                       ; $6751: $4F
    ld h, h                                       ; $6752: $64
    pop bc                                        ; $6753: $C1
    ld c, a                                       ; $6754: $4F
    ld h, [hl]                                    ; $6755: $66
    ret nz                                        ; $6756: $C0

    ld e, h                                       ; $6757: $5C
    ld hl, $0005                                  ; $6758: $21 $05 $00
    add c                                         ; $675B: $81
    ld e, l                                       ; $675C: $5D
    dec b                                         ; $675D: $05
    dec b                                         ; $675E: $05

jr_025_675F:
    ld d, b                                       ; $675F: $50
    ret nc                                        ; $6760: $D0

    nop                                           ; $6761: $00
    jr nz, jr_025_675F                            ; $6762: $20 $FB

    ld d, b                                       ; $6764: $50
    ld [hl+], a                                   ; $6765: $22
    dec b                                         ; $6766: $05
    ld b, b                                       ; $6767: $40
    dec bc                                        ; $6768: $0B
    nop                                           ; $6769: $00
    nop                                           ; $676A: $00
    add d                                         ; $676B: $82
    rra                                           ; $676C: $1F
    inc d                                         ; $676D: $14
    ld l, a                                       ; $676E: $6F
    rrca                                          ; $676F: $0F
    rst $38                                       ; $6770: $FF
    ld a, a                                       ; $6771: $7F
    sub h                                         ; $6772: $94
    halt                                          ; $6773: $76
    jr nz, jr_025_6785                            ; $6774: $20 $0F

    ld b, d                                       ; $6776: $42
    ld bc, $1106                                  ; $6777: $01 $06 $11
    ld b, l                                       ; $677A: $45
    add hl, de                                    ; $677B: $19
    ld [$0241], a                                 ; $677C: $EA $41 $02
    inc b                                         ; $677F: $04
    ld de, $040E                                  ; $6780: $11 $0E $04
    ld b, l                                       ; $6783: $45
    ld a, [de]                                    ; $6784: $1A

jr_025_6785:
    di                                            ; $6785: $F3
    ld b, [hl]                                    ; $6786: $46
    ld bc, $3E08                                  ; $6787: $01 $08 $3E
    ld b, l                                       ; $678A: $45
    dec h                                         ; $678B: $25
    bit 4, a                                      ; $678C: $CB $67
    sbc e                                         ; $678E: $9B
    ld a, b                                       ; $678F: $78
    ld [hl], b                                    ; $6790: $70
    sbc a                                         ; $6791: $9F
    ld d, h                                       ; $6792: $54
    ld l, b                                       ; $6793: $68
    ld l, c                                       ; $6794: $69
    ld [hl], e                                    ; $6795: $73
    jr nz, jr_025_680F                            ; $6796: $20 $77

    ld h, c                                       ; $6798: $61
    ld l, h                                       ; $6799: $6C
    ld l, h                                       ; $679A: $6C
    rst $38                                       ; $679B: $FF
    ld l, h                                       ; $679C: $6C
    ld l, a                                       ; $679D: $6F
    ld l, a                                       ; $679E: $6F
    ld l, e                                       ; $679F: $6B
    ld [hl], e                                    ; $67A0: $73
    jr nz, @+$77                                  ; $67A1: $20 $75

    ld l, [hl]                                    ; $67A3: $6E
    ld [hl], e                                    ; $67A4: $73
    ld [hl], h                                    ; $67A5: $74
    ld h, c                                       ; $67A6: $61
    ld h, d                                       ; $67A7: $62
    ld l, h                                       ; $67A8: $6C
    ld h, l                                       ; $67A9: $65
    ld l, $FE                                     ; $67AA: $2E $FE
    db $FD                                        ; $67AC: $FD
    sbc d                                         ; $67AD: $9A
    ld b, d                                       ; $67AE: $42
    ld bc, $0409                                  ; $67AF: $01 $09 $04
    ld b, l                                       ; $67B2: $45
    dec h                                         ; $67B3: $25
    ld de, $0168                                  ; $67B4: $11 $68 $01
    inc b                                         ; $67B7: $04
    add hl, bc                                    ; $67B8: $09
    ld b, l                                       ; $67B9: $45
    dec h                                         ; $67BA: $25
    xor $67                                       ; $67BB: $EE $67
    ld bc, $0106                                  ; $67BD: $01 $06 $01
    ld b, l                                       ; $67C0: $45
    dec h                                         ; $67C1: $25
    bit 4, a                                      ; $67C2: $CB $67
    ld bc, $0606                                  ; $67C4: $01 $06 $06
    ld b, l                                       ; $67C7: $45
    cpl                                           ; $67C8: $2F
    ld h, l                                       ; $67C9: $65
    ld b, c                                       ; $67CA: $41
    sub e                                         ; $67CB: $93
    ld h, l                                       ; $67CC: $65
    ld hl, $4F4C                                  ; $67CD: $21 $4C $4F
    ld h, h                                       ; $67D0: $64
    call c, Call_025_664F                         ; $67D1: $DC $4F $66
    ret nz                                        ; $67D4: $C0

    ld e, h                                       ; $67D5: $5C
    ld hl, $0005                                  ; $67D6: $21 $05 $00
    add c                                         ; $67D9: $81
    ld e, l                                       ; $67DA: $5D

jr_025_67DB:
    dec b                                         ; $67DB: $05
    dec b                                         ; $67DC: $05

jr_025_67DD:
    ld d, b                                       ; $67DD: $50
    ret nc                                        ; $67DE: $D0

    nop                                           ; $67DF: $00
    jr nz, jr_025_67DD                            ; $67E0: $20 $FB

    ld d, b                                       ; $67E2: $50
    ld [hl+], a                                   ; $67E3: $22
    dec b                                         ; $67E4: $05
    ld b, b                                       ; $67E5: $40
    dec bc                                        ; $67E6: $0B
    nop                                           ; $67E7: $00
    nop                                           ; $67E8: $00
    inc h                                         ; $67E9: $24
    ld d, b                                       ; $67EA: $50
    add d                                         ; $67EB: $82
    sub h                                         ; $67EC: $94
    ld b, d                                       ; $67ED: $42
    sub e                                         ; $67EE: $93
    ld h, l                                       ; $67EF: $65
    jr nc, jr_025_683E                            ; $67F0: $30 $4C

    ld c, a                                       ; $67F2: $4F
    ld h, h                                       ; $67F3: $64
    push hl                                       ; $67F4: $E5
    ld c, a                                       ; $67F5: $4F
    ld h, [hl]                                    ; $67F6: $66
    ret nz                                        ; $67F7: $C0

    ld e, h                                       ; $67F8: $5C
    ld hl, $0005                                  ; $67F9: $21 $05 $00
    add c                                         ; $67FC: $81
    ld e, l                                       ; $67FD: $5D
    dec b                                         ; $67FE: $05
    dec b                                         ; $67FF: $05

jr_025_6800:
    ld d, b                                       ; $6800: $50
    ret nc                                        ; $6801: $D0

    nop                                           ; $6802: $00
    jr nz, jr_025_6800                            ; $6803: $20 $FB

    ld d, b                                       ; $6805: $50
    ld [hl+], a                                   ; $6806: $22
    dec b                                         ; $6807: $05
    ld b, b                                       ; $6808: $40
    dec bc                                        ; $6809: $0B
    nop                                           ; $680A: $00
    nop                                           ; $680B: $00
    inc h                                         ; $680C: $24
    ld d, b                                       ; $680D: $50
    add d                                         ; $680E: $82

jr_025_680F:
    sub h                                         ; $680F: $94
    ld b, d                                       ; $6810: $42
    sub e                                         ; $6811: $93
    ld h, l                                       ; $6812: $65
    ld [de], a                                    ; $6813: $12
    ld c, h                                       ; $6814: $4C
    ld c, a                                       ; $6815: $4F
    ld h, h                                       ; $6816: $64
    jp z, Jump_025_694F                           ; $6817: $CA $4F $69

    rst $10                                       ; $681A: $D7
    ld c, a                                       ; $681B: $4F
    ld h, [hl]                                    ; $681C: $66
    ret nz                                        ; $681D: $C0

    ld e, h                                       ; $681E: $5C
    ld hl, $2595                                  ; $681F: $21 $95 $25
    ld [hl], a                                    ; $6822: $77
    ld l, b                                       ; $6823: $68
    dec b                                         ; $6824: $05
    nop                                           ; $6825: $00
    add c                                         ; $6826: $81
    ld e, l                                       ; $6827: $5D
    dec b                                         ; $6828: $05
    dec b                                         ; $6829: $05

jr_025_682A:
    ld d, b                                       ; $682A: $50
    ret nc                                        ; $682B: $D0

    nop                                           ; $682C: $00
    jr nz, jr_025_682A                            ; $682D: $20 $FB

    ld d, b                                       ; $682F: $50
    ld [hl+], a                                   ; $6830: $22
    dec b                                         ; $6831: $05
    ld b, b                                       ; $6832: $40
    dec b                                         ; $6833: $05
    ld [bc], a                                    ; $6834: $02
    ld l, e                                       ; $6835: $6B
    ld c, d                                       ; $6836: $4A
    ld [$3503], sp                                ; $6837: $08 $03 $35
    ret nc                                        ; $683A: $D0

    nop                                           ; $683B: $00
    ld [hl+], a                                   ; $683C: $22
    inc b                                         ; $683D: $04

jr_025_683E:
    ld b, b                                       ; $683E: $40
    ld [hl+], a                                   ; $683F: $22
    inc b                                         ; $6840: $04
    ld b, b                                       ; $6841: $40
    dec b                                         ; $6842: $05
    inc b                                         ; $6843: $04
    db $ED                                        ; $6844: $ED
    ld h, e                                       ; $6845: $63
    ld [$5305], sp                                ; $6846: $08 $05 $53
    ret nc                                        ; $6849: $D0

    ld [hl-], a                                   ; $684A: $32
    ld de, $4A17                                  ; $684B: $11 $17 $4A
    dec h                                         ; $684E: $25
    ld b, [hl]                                    ; $684F: $46
    ld l, c                                       ; $6850: $69
    ld l, e                                       ; $6851: $6B
    jr nc, @+$0D                                  ; $6852: $30 $0B

    add b                                         ; $6854: $80
    ld c, h                                       ; $6855: $4C
    jr nz, jr_025_67DB                            ; $6856: $20 $83

    nop                                           ; $6858: $00
    dec bc                                        ; $6859: $0B
    nop                                           ; $685A: $00
    dec bc                                        ; $685B: $0B
    ld [bc], a                                    ; $685C: $02
    ld b, e                                       ; $685D: $43
    ld de, $B901                                  ; $685E: $11 $01 $B9
    and d                                         ; $6861: $A2
    dec b                                         ; $6862: $05
    nop                                           ; $6863: $00
    dec h                                         ; $6864: $25
    ld l, c                                       ; $6865: $69
    ld l, b                                       ; $6866: $68
    dec bc                                        ; $6867: $0B
    inc b                                         ; $6868: $04

jr_025_6869:
    nop                                           ; $6869: $00
    add d                                         ; $686A: $82
    inc h                                         ; $686B: $24
    ld d, b                                       ; $686C: $50
    ld b, e                                       ; $686D: $43
    nop                                           ; $686E: $00
    xor [hl]                                      ; $686F: $AE
    and c                                         ; $6870: $A1
    ld [$2425], sp                                ; $6871: $08 $25 $24
    ld l, c                                       ; $6874: $69
    sub h                                         ; $6875: $94
    ld b, d                                       ; $6876: $42
    ld b, e                                       ; $6877: $43
    ld [$010F], sp                                ; $6878: $08 $0F $01
    inc h                                         ; $687B: $24
    rst $00                                       ; $687C: $C7
    ld b, $2A                                     ; $687D: $06 $2A
    nop                                           ; $687F: $00
    rrca                                          ; $6880: $0F
    ld bc, wScript_OverworldItemSpell_CollID                                  ; $6881: $01 $25 $C7
    ld b, $B0                                     ; $6884: $06 $B0
    nop                                           ; $6886: $00
    dec h                                         ; $6887: $25
    adc [hl]                                      ; $6888: $8E
    ld l, b                                       ; $6889: $68
    ld b, l                                       ; $688A: $45
    ld [hl+], a                                   ; $688B: $22
    ld b, $40                                     ; $688C: $06 $40
    xor a                                         ; $688E: $AF
    xor [hl]                                      ; $688F: $AE
    and c                                         ; $6890: $A1
    ld [$2545], sp                                ; $6891: $08 $45 $25
    sub [hl]                                      ; $6894: $96
    ld l, b                                       ; $6895: $68
    adc b                                         ; $6896: $88
    nop                                           ; $6897: $00
    ld a, [hl+]                                   ; $6898: $2A
    ld bc, $0007                                  ; $6899: $01 $07 $00
    ld l, e                                       ; $689C: $6B
    ld c, d                                       ; $689D: $4A
    add hl, bc                                    ; $689E: $09
    nop                                           ; $689F: $00
    dec h                                         ; $68A0: $25
    cp e                                          ; $68A1: $BB
    ld l, b                                       ; $68A2: $68
    dec b                                         ; $68A3: $05
    inc bc                                        ; $68A4: $03
    ld l, e                                       ; $68A5: $6B
    ld c, d                                       ; $68A6: $4A
    nop                                           ; $68A7: $00
    nop                                           ; $68A8: $00
    nop                                           ; $68A9: $00
    ret nc                                        ; $68AA: $D0

    nop                                           ; $68AB: $00
    dec h                                         ; $68AC: $25
    ret c                                         ; $68AD: $D8

    ld l, b                                       ; $68AE: $68
    ld [hl+], a                                   ; $68AF: $22
    inc b                                         ; $68B0: $04
    ld b, b                                       ; $68B1: $40
    ld l, e                                       ; $68B2: $6B
    jr nz, jr_025_68D9                            ; $68B3: $20 $24

    ret nz                                        ; $68B5: $C0

    ld h, h                                       ; $68B6: $64
    nop                                           ; $68B7: $00
    add b                                         ; $68B8: $80
    nop                                           ; $68B9: $00
    ld b, d                                       ; $68BA: $42
    dec d                                         ; $68BB: $15
    jr nz, jr_025_6869                            ; $68BC: $20 $AB

    ld d, b                                       ; $68BE: $50
    stop                                          ; $68BF: $10 $00
    dec bc                                        ; $68C1: $0B
    inc bc                                        ; $68C2: $03
    dec d                                         ; $68C3: $15
    jr nz, @+$5F                                  ; $68C4: $20 $5D

    ld d, b                                       ; $68C6: $50
    jr jr_025_68E9                                ; $68C7: $18 $20

    xor e                                         ; $68C9: $AB
    ld d, b                                       ; $68CA: $50
    stop                                          ; $68CB: $10 $00
    ld e, d                                       ; $68CD: $5A
    dec h                                         ; $68CE: $25
    db $E3                                        ; $68CF: $E3
    ld l, b                                       ; $68D0: $68
    inc de                                        ; $68D1: $13
    add c                                         ; $68D2: $81
    ld e, l                                       ; $68D3: $5D
    ld b, l                                       ; $68D4: $45
    jr nz, @-$53                                  ; $68D5: $20 $AB

    ld d, b                                       ; $68D7: $50
    rrca                                          ; $68D8: $0F

jr_025_68D9:
    nop                                           ; $68D9: $00
    dec de                                        ; $68DA: $1B
    inc bc                                        ; $68DB: $03
    dec d                                         ; $68DC: $15
    ld de, $7978                                  ; $68DD: $11 $78 $79
    ld b, b                                       ; $68E0: $40
    nop                                           ; $68E1: $00
    ld b, d                                       ; $68E2: $42
    add e                                         ; $68E3: $83
    ld bc, $0003                                  ; $68E4: $01 $03 $00
    nop                                           ; $68E7: $00
    add e                                         ; $68E8: $83

jr_025_68E9:
    ld bc, $00FD                                  ; $68E9: $01 $FD $00
    nop                                           ; $68EC: $00
    add e                                         ; $68ED: $83
    ld bc, $FD03                                  ; $68EE: $01 $03 $FD
    nop                                           ; $68F1: $00
    add e                                         ; $68F2: $83
    ld bc, $03FD                                  ; $68F3: $01 $FD $03
    nop                                           ; $68F6: $00
    add e                                         ; $68F7: $83
    ld bc, $FD00                                  ; $68F8: $01 $00 $FD
    nop                                           ; $68FB: $00
    add e                                         ; $68FC: $83
    ld bc, $0300                                  ; $68FD: $01 $00 $03
    nop                                           ; $6900: $00
    add hl, bc                                    ; $6901: $09
    ld [bc], a                                    ; $6902: $02
    dec h                                         ; $6903: $25
    rlca                                          ; $6904: $07
    ld l, c                                       ; $6905: $69
    ld b, d                                       ; $6906: $42
    dec c                                         ; $6907: $0D
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690A: $00
    nop                                           ; $690B: $00
    jp nz, $0D46                                  ; $690C: $C2 $46 $0D

    nop                                           ; $690F: $00
    ld bc, $0001                                  ; $6910: $01 $01 $00
    jp nz, $0D47                                  ; $6913: $C2 $47 $0D

    rst $38                                       ; $6916: $FF
    nop                                           ; $6917: $00
    pop af                                        ; $6918: $F1
    rst $38                                       ; $6919: $FF
    ld [$0D36], sp                                ; $691A: $08 $36 $0D
    rst $38                                       ; $691D: $FF
    ld bc, $FFF2                                  ; $691E: $01 $F2 $FF
    ld [$4237], sp                                ; $6921: $08 $37 $42
    inc bc                                        ; $6924: $03
    ld [bc], a                                    ; $6925: $02
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    nop                                           ; $6929: $00
    jp nz, $0346                                  ; $692A: $C2 $46 $03

    ld [bc], a                                    ; $692D: $02
    nop                                           ; $692E: $00
    ld bc, $0001                                  ; $692F: $01 $01 $00
    jp nz, $0347                                  ; $6932: $C2 $47 $03

    ld [bc], a                                    ; $6935: $02
    rst $38                                       ; $6936: $FF
    nop                                           ; $6937: $00
    pop af                                        ; $6938: $F1
    rst $38                                       ; $6939: $FF
    ld [$0336], sp                                ; $693A: $08 $36 $03
    ld [bc], a                                    ; $693D: $02
    rst $38                                       ; $693E: $FF
    ld bc, $FFF2                                  ; $693F: $01 $F2 $FF
    ld [$9437], sp                                ; $6942: $08 $37 $94
    ld b, d                                       ; $6945: $42
    ld e, e                                       ; $6946: $5B
    dec h                                         ; $6947: $25
    ld c, [hl]                                    ; $6948: $4E
    ld l, c                                       ; $6949: $69
    ld b, l                                       ; $694A: $45
    ld de, $4A67                                  ; $694B: $11 $67 $4A
    sbc e                                         ; $694E: $9B

Jump_025_694F:
    add hl, de                                    ; $694F: $19
    ld c, [hl]                                    ; $6950: $4E
    sbc a                                         ; $6951: $9F
    ld b, h                                       ; $6952: $44
    ld l, c                                       ; $6953: $69
    ld h, h                                       ; $6954: $64
    jr nz, jr_025_69D0                            ; $6955: $20 $79

    ld l, a                                       ; $6957: $6F
    ld [hl], l                                    ; $6958: $75
    jr nz, jr_025_69C6                            ; $6959: $20 $6B

    ld l, [hl]                                    ; $695B: $6E
    ld l, a                                       ; $695C: $6F
    ld [hl], a                                    ; $695D: $77
    rst $38                                       ; $695E: $FF
    ld [hl], h                                    ; $695F: $74
    ld l, b                                       ; $6960: $68
    ld h, c                                       ; $6961: $61
    ld [hl], h                                    ; $6962: $74
    jr nz, jr_025_69AC                            ; $6963: $20 $47

    ld [hl], d                                    ; $6965: $72
    ld h, l                                       ; $6966: $65
    ld h, c                                       ; $6967: $61
    ld [hl], h                                    ; $6968: $74
    ld h, l                                       ; $6969: $65
    ld [hl], d                                    ; $696A: $72
    cp $48                                        ; $696B: $FE $48
    ld a, c                                       ; $696D: $79
    ld [hl], d                                    ; $696E: $72
    ld h, l                                       ; $696F: $65
    ld l, [hl]                                    ; $6970: $6E
    ld [hl], e                                    ; $6971: $73
    rst $38                                       ; $6972: $FF
    ld h, c                                       ; $6973: $61
    ld [hl], d                                    ; $6974: $72
    ld h, l                                       ; $6975: $65
    jr nz, jr_025_69E7                            ; $6976: $20 $6F

    ld l, [hl]                                    ; $6978: $6E
    ld l, h                                       ; $6979: $6C
    ld a, c                                       ; $697A: $79
    jr nz, jr_025_69E3                            ; $697B: $20 $66

    ld l, a                                       ; $697D: $6F
    ld [hl], l                                    ; $697E: $75
    ld l, [hl]                                    ; $697F: $6E
    ld h, h                                       ; $6980: $64
    cp $69                                        ; $6981: $FE $69
    ld l, [hl]                                    ; $6983: $6E
    jr nz, jr_025_69EE                            ; $6984: $20 $68

    ld l, c                                       ; $6986: $69
    ld h, h                                       ; $6987: $64
    ld h, h                                       ; $6988: $64
    ld h, l                                       ; $6989: $65
    ld l, [hl]                                    ; $698A: $6E
    rst $38                                       ; $698B: $FF
    ld h, c                                       ; $698C: $61
    ld [hl], d                                    ; $698D: $72
    ld h, l                                       ; $698E: $65
    ld h, c                                       ; $698F: $61
    ld [hl], e                                    ; $6990: $73
    ccf                                           ; $6991: $3F
    cp $FD                                        ; $6992: $FE $FD
    sbc d                                         ; $6994: $9A
    xor h                                         ; $6995: $AC
    cp c                                          ; $6996: $B9
    and d                                         ; $6997: $A2
    ld bc, $0158                                  ; $6998: $01 $58 $01
    ld b, d                                       ; $699B: $42
    ld bc, $0206                                  ; $699C: $01 $06 $02
    ld b, l                                       ; $699F: $45
    add hl, de                                    ; $69A0: $19
    ld hl, sp+$54                                 ; $69A1: $F8 $54
    ld bc, $2515                                  ; $69A3: $01 $15 $25
    ld b, l                                       ; $69A6: $45
    add hl, de                                    ; $69A7: $19
    ld a, $43                                     ; $69A8: $3E $43
    and h                                         ; $69AA: $A4
    ld c, b                                       ; $69AB: $48

jr_025_69AC:
    and e                                         ; $69AC: $A3
    ld bc, $0300                                  ; $69AD: $01 $00 $03
    ld d, c                                       ; $69B0: $51
    ret nc                                        ; $69B1: $D0

    and d                                         ; $69B2: $A2
    ld c, b                                       ; $69B3: $48
    and e                                         ; $69B4: $A3
    ld [bc], a                                    ; $69B5: $02
    ld [hl+], a                                   ; $69B6: $22
    ld e, e                                       ; $69B7: $5B
    ld b, b                                       ; $69B8: $40
    rst $38                                       ; $69B9: $FF
    cpl                                           ; $69BA: $2F
    ret nc                                        ; $69BB: $D0

    ld b, h                                       ; $69BC: $44
    push de                                       ; $69BD: $D5
    ld l, c                                       ; $69BE: $69
    ld sp, $DE25                                  ; $69BF: $31 $25 $DE
    ld l, c                                       ; $69C2: $69
    ld [hl+], a                                   ; $69C3: $22
    adc $40                                       ; $69C4: $CE $40

jr_025_69C6:
    sbc a                                         ; $69C6: $9F
    ld d, d                                       ; $69C7: $52
    ld c, a                                       ; $69C8: $4F
    ld c, a                                       ; $69C9: $4F
    ld c, a                                       ; $69CA: $4F
    ld b, c                                       ; $69CB: $41
    ld d, d                                       ; $69CC: $52
    ld hl, $FDFE                                  ; $69CD: $21 $FE $FD

jr_025_69D0:
    sbc d                                         ; $69D0: $9A
    ld b, l                                       ; $69D1: $45
    dec de                                        ; $69D2: $1B
    sbc b                                         ; $69D3: $98
    ld d, e                                       ; $69D4: $53
    ld b, d                                       ; $69D5: $42
    and h                                         ; $69D6: $A4
    ld c, b                                       ; $69D7: $48
    and e                                         ; $69D8: $A3
    inc b                                         ; $69D9: $04
    nop                                           ; $69DA: $00
    inc hl                                        ; $69DB: $23
    jr nc, @-$2E                                  ; $69DC: $30 $D0

    sub e                                         ; $69DE: $93
    ld h, l                                       ; $69DF: $65
    ccf                                           ; $69E0: $3F
    ld c, h                                       ; $69E1: $4C
    ld c, a                                       ; $69E2: $4F

jr_025_69E3:
    ld h, h                                       ; $69E3: $64
    xor $4F                                       ; $69E4: $EE $4F
    ld h, [hl]                                    ; $69E6: $66

jr_025_69E7:
    ret nz                                        ; $69E7: $C0

    ld e, h                                       ; $69E8: $5C
    ld hl, $F769                                  ; $69E9: $21 $69 $F7
    ld c, a                                       ; $69EC: $4F
    dec b                                         ; $69ED: $05

jr_025_69EE:
    nop                                           ; $69EE: $00
    add c                                         ; $69EF: $81
    ld e, l                                       ; $69F0: $5D
    dec b                                         ; $69F1: $05
    dec b                                         ; $69F2: $05

jr_025_69F3:
    ld d, b                                       ; $69F3: $50
    ret nc                                        ; $69F4: $D0

    nop                                           ; $69F5: $00
    jr nz, jr_025_69F3                            ; $69F6: $20 $FB

    ld d, b                                       ; $69F8: $50
    ld [hl+], a                                   ; $69F9: $22
    dec b                                         ; $69FA: $05
    ld b, b                                       ; $69FB: $40
    dec bc                                        ; $69FC: $0B
    nop                                           ; $69FD: $00
    nop                                           ; $69FE: $00
    add d                                         ; $69FF: $82
    inc h                                         ; $6A00: $24
    ld d, b                                       ; $6A01: $50
    sub h                                         ; $6A02: $94
    ld b, d                                       ; $6A03: $42
    ld b, e                                       ; $6A04: $43
    ld [$040F], sp                                ; $6A05: $08 $0F $04
    dec b                                         ; $6A08: $05
    ld [de], a                                    ; $6A09: $12
    rrca                                          ; $6A0A: $0F
    ld bc, $A224                                  ; $6A0B: $01 $24 $A2
    dec b                                         ; $6A0E: $05
    nop                                           ; $6A0F: $00
    cpl                                           ; $6A10: $2F
    add [hl]                                      ; $6A11: $86
    ld c, c                                       ; $6A12: $49
    dec b                                         ; $6A13: $05
    inc b                                         ; $6A14: $04
    rst $20                                       ; $6A15: $E7
    ld h, b                                       ; $6A16: $60
    dec d                                         ; $6A17: $15
    dec d                                         ; $6A18: $15
    jp z, $10D2                                   ; $6A19: $CA $D2 $10

    ld de, $780A                                  ; $6A1C: $11 $0A $78
    ld [hl+], a                                   ; $6A1F: $22
    jp nz, $0140                                  ; $6A20: $C2 $40 $01

    dec d                                         ; $6A23: $15
    dec d                                         ; $6A24: $15
    ld b, l                                       ; $6A25: $45
    cpl                                           ; $6A26: $2F
    ret nz                                        ; $6A27: $C0

    ld b, [hl]                                    ; $6A28: $46
    ld b, e                                       ; $6A29: $43
    ld [$040F], sp                                ; $6A2A: $08 $0F $04
    dec b                                         ; $6A2D: $05
    ld [de], a                                    ; $6A2E: $12
    rrca                                          ; $6A2F: $0F
    ld bc, $A224                                  ; $6A30: $01 $24 $A2
    dec b                                         ; $6A33: $05
    nop                                           ; $6A34: $00
    cpl                                           ; $6A35: $2F

jr_025_6A36:
    add [hl]                                      ; $6A36: $86
    ld c, c                                       ; $6A37: $49
    dec b                                         ; $6A38: $05
    inc b                                         ; $6A39: $04
    rst $20                                       ; $6A3A: $E7
    ld h, b                                       ; $6A3B: $60
    jr jr_025_6A55                                ; $6A3C: $18 $17

    rrca                                          ; $6A3E: $0F
    db $D3                                        ; $6A3F: $D3
    db $10                                        ; $6A40: $10
    ld de, $780A                                  ; $6A41: $11 $0A $78
    ld [hl+], a                                   ; $6A44: $22
    jp nz, $0140                                  ; $6A45: $C2 $40 $01

    jr @+$19                                      ; $6A48: $18 $17

    ld b, l                                       ; $6A4A: $45
    cpl                                           ; $6A4B: $2F
    ret nz                                        ; $6A4C: $C0

    ld b, [hl]                                    ; $6A4D: $46
    ld bc, $130A                                  ; $6A4E: $01 $0A $13
    ld b, l                                       ; $6A51: $45
    jr @-$0C                                      ; $6A52: $18 $F2

    ld d, l                                       ; $6A54: $55

jr_025_6A55:
    ld bc, $1D09                                  ; $6A55: $01 $09 $1D
    ld b, l                                       ; $6A58: $45
    jr jr_025_6A62                                ; $6A59: $18 $07

    ld h, c                                       ; $6A5B: $61
    ld bc, $130E                                  ; $6A5C: $01 $0E $13
    ld b, l                                       ; $6A5F: $45
    jr jr_025_6A36                                ; $6A60: $18 $D4

jr_025_6A62:
    ld [hl], c                                    ; $6A62: $71
    ld b, e                                       ; $6A63: $43
    ld [$040F], sp                                ; $6A64: $08 $0F $04
    dec b                                         ; $6A67: $05
    ld [de], a                                    ; $6A68: $12
    rrca                                          ; $6A69: $0F
    ld bc, $A224                                  ; $6A6A: $01 $24 $A2
    dec b                                         ; $6A6D: $05
    nop                                           ; $6A6E: $00
    cpl                                           ; $6A6F: $2F
    add [hl]                                      ; $6A70: $86
    ld c, c                                       ; $6A71: $49
    dec b                                         ; $6A72: $05
    inc b                                         ; $6A73: $04
    rst $20                                       ; $6A74: $E7
    ld h, b                                       ; $6A75: $60
    dec d                                         ; $6A76: $15
    add hl, de                                    ; $6A77: $19
    ld c, [hl]                                    ; $6A78: $4E
    db $D3                                        ; $6A79: $D3
    db $10                                        ; $6A7A: $10
    ld de, $780A                                  ; $6A7B: $11 $0A $78
    ld [hl+], a                                   ; $6A7E: $22
    jp nz, $0140                                  ; $6A7F: $C2 $40 $01

    dec d                                         ; $6A82: $15
    add hl, de                                    ; $6A83: $19
    ld b, l                                       ; $6A84: $45
    cpl                                           ; $6A85: $2F
    ret nz                                        ; $6A86: $C0

    ld b, [hl]                                    ; $6A87: $46
    ld b, e                                       ; $6A88: $43
    ld [$040F], sp                                ; $6A89: $08 $0F $04
    dec b                                         ; $6A8C: $05
    ld [de], a                                    ; $6A8D: $12
    rrca                                          ; $6A8E: $0F
    ld bc, $A224                                  ; $6A8F: $01 $24 $A2
    dec b                                         ; $6A92: $05
    nop                                           ; $6A93: $00
    cpl                                           ; $6A94: $2F
    add [hl]                                      ; $6A95: $86
    ld c, c                                       ; $6A96: $49
    dec b                                         ; $6A97: $05
    inc b                                         ; $6A98: $04
    rst $20                                       ; $6A99: $E7
    ld h, b                                       ; $6A9A: $60
    inc de                                        ; $6A9B: $13
    rla                                           ; $6A9C: $17
    ld a, [bc]                                    ; $6A9D: $0A
    db $D3                                        ; $6A9E: $D3
    db $10                                        ; $6A9F: $10
    ld de, $780A                                  ; $6AA0: $11 $0A $78
    ld [hl+], a                                   ; $6AA3: $22
    jp nz, $0140                                  ; $6AA4: $C2 $40 $01

    inc de                                        ; $6AA7: $13
    rla                                           ; $6AA8: $17
    ld b, l                                       ; $6AA9: $45
    cpl                                           ; $6AAA: $2F
    ret nz                                        ; $6AAB: $C0

    ld b, [hl]                                    ; $6AAC: $46
    sbc e                                         ; $6AAD: $9B
    jr z, jr_025_6AF3                             ; $6AAE: $28 $43

    sbc a                                         ; $6AB0: $9F
    ld e, c                                       ; $6AB1: $59
    ld h, c                                       ; $6AB2: $61
    jr nz, jr_025_6B20                            ; $6AB3: $20 $6B

    ld l, [hl]                                    ; $6AB5: $6E
    ld l, a                                       ; $6AB6: $6F
    ld [hl], a                                    ; $6AB7: $77
    inc l                                         ; $6AB8: $2C
    jr nz, jr_025_6B2F                            ; $6AB9: $20 $74

    ld l, b                                       ; $6ABB: $68
    ld h, c                                       ; $6ABC: $61
    ld [hl], h                                    ; $6ABD: $74
    rst $38                                       ; $6ABE: $FF
    ld b, d                                       ; $6ABF: $42
    ld l, h                                       ; $6AC0: $6C
    ld h, c                                       ; $6AC1: $61
    ld h, e                                       ; $6AC2: $63
    ld l, e                                       ; $6AC3: $6B
    jr nz, jr_025_6B1A                            ; $6AC4: $20 $54

    ld l, b                                       ; $6AC6: $68
    ld l, c                                       ; $6AC7: $69
    ld l, [hl]                                    ; $6AC8: $6E
    ld h, a                                       ; $6AC9: $67
    ld a, c                                       ; $6ACA: $79
    jr nz, jr_025_6B36                            ; $6ACB: $20 $69

    ld [hl], e                                    ; $6ACD: $73
    cp $63                                        ; $6ACE: $FE $63
    ld h, c                                       ; $6AD0: $61
    ld [hl], l                                    ; $6AD1: $75
    ld [hl], e                                    ; $6AD2: $73
    ld l, c                                       ; $6AD3: $69
    ld l, [hl]                                    ; $6AD4: $6E
    ld h, a                                       ; $6AD5: $67
    jr nz, jr_025_6B4B                            ; $6AD6: $20 $73

    ld l, a                                       ; $6AD8: $6F
    ld l, l                                       ; $6AD9: $6D
    ld h, l                                       ; $6ADA: $65
    rst $38                                       ; $6ADB: $FF
    ld l, l                                       ; $6ADC: $6D
    ld h, c                                       ; $6ADD: $61
    ld l, d                                       ; $6ADE: $6A
    ld l, a                                       ; $6ADF: $6F
    ld [hl], d                                    ; $6AE0: $72
    jr nz, jr_025_6B57                            ; $6AE1: $20 $74

    ld l, c                                       ; $6AE3: $69
    ld h, h                                       ; $6AE4: $64
    ld h, l                                       ; $6AE5: $65
    cp $61                                        ; $6AE6: $FE $61
    ld [hl], d                                    ; $6AE8: $72
    ld l, a                                       ; $6AE9: $6F
    ld [hl], l                                    ; $6AEA: $75
    ld l, [hl]                                    ; $6AEB: $6E
    ld h, h                                       ; $6AEC: $64
    jr nz, jr_025_6B3E                            ; $6AED: $20 $4F

    ld [hl], e                                    ; $6AEF: $73
    ld h, e                                       ; $6AF0: $63
    ld h, l                                       ; $6AF1: $65
    ld l, [hl]                                    ; $6AF2: $6E

jr_025_6AF3:
    ld [hl], h                                    ; $6AF3: $74
    rst $38                                       ; $6AF4: $FF
    ld c, l                                       ; $6AF5: $4D
    ld h, c                                       ; $6AF6: $61
    ld [hl], d                                    ; $6AF7: $72
    ld [hl], d                                    ; $6AF8: $72
    ld [hl], d                                    ; $6AF9: $72
    jr nz, jr_025_6B5D                            ; $6AFA: $20 $61

    ld l, [hl]                                    ; $6AFC: $6E
    ld h, h                                       ; $6AFD: $64
    jr nz, @+$74                                  ; $6AFE: $20 $72

    ld l, c                                       ; $6B00: $69
    ld h, a                                       ; $6B01: $67
    ld l, b                                       ; $6B02: $68
    ld [hl], h                                    ; $6B03: $74
    cp $6E                                        ; $6B04: $FE $6E
    ld l, a                                       ; $6B06: $6F
    ld [hl], a                                    ; $6B07: $77
    jr nz, jr_025_6B81                            ; $6B08: $20 $77

    ld h, l                                       ; $6B0A: $65
    daa                                           ; $6B0B: $27
    ld [hl], d                                    ; $6B0C: $72
    ld h, l                                       ; $6B0D: $65
    jr nz, jr_025_6B7A                            ; $6B0E: $20 $6A

    ld [hl], l                                    ; $6B10: $75
    ld [hl], e                                    ; $6B11: $73
    ld [hl], h                                    ; $6B12: $74
    rst $38                                       ; $6B13: $FF
    ld [hl], h                                    ; $6B14: $74
    ld [hl], d                                    ; $6B15: $72
    ld a, c                                       ; $6B16: $79
    ld l, c                                       ; $6B17: $69
    ld l, [hl]                                    ; $6B18: $6E
    daa                                           ; $6B19: $27

jr_025_6B1A:
    jr nz, jr_025_6B90                            ; $6B1A: $20 $74

    ld h, c                                       ; $6B1C: $61
    cp $66                                        ; $6B1D: $FE $66
    ld l, c                                       ; $6B1F: $69

jr_025_6B20:
    ld h, a                                       ; $6B20: $67
    ld [hl], l                                    ; $6B21: $75
    ld [hl], d                                    ; $6B22: $72
    ld h, l                                       ; $6B23: $65
    jr nz, jr_025_6B95                            ; $6B24: $20 $6F

    ld [hl], l                                    ; $6B26: $75
    ld [hl], h                                    ; $6B27: $74
    jr nz, jr_025_6BA1                            ; $6B28: $20 $77

    ld l, b                                       ; $6B2A: $68
    ld h, c                                       ; $6B2B: $61
    ld [hl], h                                    ; $6B2C: $74
    rst $38                                       ; $6B2D: $FF
    ld [hl], h                                    ; $6B2E: $74

jr_025_6B2F:
    ld h, c                                       ; $6B2F: $61
    jr nz, jr_025_6B96                            ; $6B30: $20 $64

    ld l, a                                       ; $6B32: $6F
    jr nz, jr_025_6B96                            ; $6B33: $20 $61

    ld h, d                                       ; $6B35: $62

jr_025_6B36:
    ld l, a                                       ; $6B36: $6F
    ld [hl], l                                    ; $6B37: $75
    ld [hl], h                                    ; $6B38: $74
    jr nz, jr_025_6BA4                            ; $6B39: $20 $69

    ld [hl], h                                    ; $6B3B: $74
    ld l, $FE                                     ; $6B3C: $2E $FE

jr_025_6B3E:
    ld c, c                                       ; $6B3E: $49
    ld [hl], h                                    ; $6B3F: $74
    daa                                           ; $6B40: $27
    ld [hl], e                                    ; $6B41: $73
    jr nz, jr_025_6BA5                            ; $6B42: $20 $61

    ld l, h                                       ; $6B44: $6C
    ld [hl], e                                    ; $6B45: $73
    ld l, a                                       ; $6B46: $6F
    jr nz, jr_025_6BB0                            ; $6B47: $20 $67

    ld l, a                                       ; $6B49: $6F
    ld [hl], h                                    ; $6B4A: $74

jr_025_6B4B:
    rst $38                                       ; $6B4B: $FF
    ld [hl], h                                    ; $6B4C: $74
    ld l, b                                       ; $6B4D: $68
    ld l, c                                       ; $6B4E: $69
    ld [hl], e                                    ; $6B4F: $73
    jr nz, jr_025_6BC2                            ; $6B50: $20 $70

    ld l, a                                       ; $6B52: $6F
    ld [hl], a                                    ; $6B53: $77
    ld h, l                                       ; $6B54: $65
    ld [hl], d                                    ; $6B55: $72
    ld h, [hl]                                    ; $6B56: $66

jr_025_6B57:
    ld [hl], l                                    ; $6B57: $75
    ld l, h                                       ; $6B58: $6C
    cp $66                                        ; $6B59: $FE $66
    ld l, a                                       ; $6B5B: $6F
    ld [hl], d                                    ; $6B5C: $72

jr_025_6B5D:
    ld h, e                                       ; $6B5D: $63
    ld h, l                                       ; $6B5E: $65
    ld h, [hl]                                    ; $6B5F: $66
    ld l, c                                       ; $6B60: $69
    ld h, l                                       ; $6B61: $65
    ld l, h                                       ; $6B62: $6C
    ld h, h                                       ; $6B63: $64
    rst $38                                       ; $6B64: $FF
    ld h, c                                       ; $6B65: $61
    ld [hl], d                                    ; $6B66: $72
    ld l, a                                       ; $6B67: $6F
    ld [hl], l                                    ; $6B68: $75
    ld l, [hl]                                    ; $6B69: $6E
    ld h, h                                       ; $6B6A: $64
    jr nz, jr_025_6BD6                            ; $6B6B: $20 $69

    ld [hl], h                                    ; $6B6D: $74
    jr nz, jr_025_6BE3                            ; $6B6E: $20 $73

    ld l, a                                       ; $6B70: $6F
    jr nz, jr_025_6BEA                            ; $6B71: $20 $77

    ld h, l                                       ; $6B73: $65
    cp $63                                        ; $6B74: $FE $63
    ld h, c                                       ; $6B76: $61
    ld l, [hl]                                    ; $6B77: $6E
    daa                                           ; $6B78: $27
    ld [hl], h                                    ; $6B79: $74

jr_025_6B7A:
    jr nz, jr_025_6BE1                            ; $6B7A: $20 $65

    halt                                          ; $6B7C: $76
    ld h, l                                       ; $6B7D: $65
    ld l, [hl]                                    ; $6B7E: $6E
    jr nz, jr_025_6BE8                            ; $6B7F: $20 $67

jr_025_6B81:
    ld h, l                                       ; $6B81: $65
    ld [hl], h                                    ; $6B82: $74
    rst $38                                       ; $6B83: $FF
    ld l, [hl]                                    ; $6B84: $6E
    ld h, l                                       ; $6B85: $65
    ld h, c                                       ; $6B86: $61
    ld [hl], d                                    ; $6B87: $72
    jr nz, @+$76                                  ; $6B88: $20 $74

    ld l, b                                       ; $6B8A: $68
    ld h, l                                       ; $6B8B: $65
    jr nz, jr_025_6BF2                            ; $6B8C: $20 $64

    ld h, c                                       ; $6B8E: $61
    ld [hl], d                                    ; $6B8F: $72

jr_025_6B90:
    ld l, [hl]                                    ; $6B90: $6E
    ld h, l                                       ; $6B91: $65
    ld h, h                                       ; $6B92: $64
    cp $74                                        ; $6B93: $FE $74

jr_025_6B95:
    ld l, b                                       ; $6B95: $68

jr_025_6B96:
    ld l, c                                       ; $6B96: $69
    ld l, [hl]                                    ; $6B97: $6E
    ld h, a                                       ; $6B98: $67
    ld l, $FE                                     ; $6B99: $2E $FE
    db $FD                                        ; $6B9B: $FD
    sbc e                                         ; $6B9C: $9B
    ld a, b                                       ; $6B9D: $78
    ld [hl], b                                    ; $6B9E: $70
    sbc a                                         ; $6B9F: $9F
    ld c, c                                       ; $6BA0: $49

jr_025_6BA1:
    daa                                           ; $6BA1: $27
    halt                                          ; $6BA2: $76
    ld h, l                                       ; $6BA3: $65

jr_025_6BA4:
    rst $38                                       ; $6BA4: $FF

jr_025_6BA5:
    ld h, l                                       ; $6BA5: $65
    ld l, [hl]                                    ; $6BA6: $6E
    ld h, e                                       ; $6BA7: $63
    ld l, a                                       ; $6BA8: $6F
    ld [hl], l                                    ; $6BA9: $75
    ld l, [hl]                                    ; $6BAA: $6E
    ld [hl], h                                    ; $6BAB: $74
    ld h, l                                       ; $6BAC: $65
    ld [hl], d                                    ; $6BAD: $72
    ld h, l                                       ; $6BAE: $65
    ld h, h                                       ; $6BAF: $64

jr_025_6BB0:
    cp $74                                        ; $6BB0: $FE $74
    ld l, b                                       ; $6BB2: $68
    ld h, l                                       ; $6BB3: $65
    ld [hl], e                                    ; $6BB4: $73
    ld h, l                                       ; $6BB5: $65
    jr nz, jr_025_6C1A                            ; $6BB6: $20 $62

    ld h, l                                       ; $6BB8: $65
    ld h, [hl]                                    ; $6BB9: $66
    ld l, a                                       ; $6BBA: $6F
    ld [hl], d                                    ; $6BBB: $72
    ld h, l                                       ; $6BBC: $65
    ld l, $FF                                     ; $6BBD: $2E $FF
    ld d, h                                       ; $6BBF: $54
    ld l, b                                       ; $6BC0: $68
    ld l, c                                       ; $6BC1: $69

jr_025_6BC2:
    ld [hl], e                                    ; $6BC2: $73
    jr nz, jr_025_6C2E                            ; $6BC3: $20 $69

    ld [hl], e                                    ; $6BC5: $73
    jr nz, jr_025_6C29                            ; $6BC6: $20 $61

    cp $53                                        ; $6BC8: $FE $53
    ld l, b                                       ; $6BCA: $68
    ld h, c                                       ; $6BCB: $61
    ld h, h                                       ; $6BCC: $64
    ld l, a                                       ; $6BCD: $6F
    ld [hl], a                                    ; $6BCE: $77
    jr nz, jr_025_6C18                            ; $6BCF: $20 $47

    ld h, l                                       ; $6BD1: $65
    ld a, c                                       ; $6BD2: $79
    ld [hl], e                                    ; $6BD3: $73
    ld h, l                                       ; $6BD4: $65
    ld [hl], d                                    ; $6BD5: $72

jr_025_6BD6:
    ld l, $FF                                     ; $6BD6: $2E $FF
    ld c, c                                       ; $6BD8: $49
    ld [hl], h                                    ; $6BD9: $74
    jr nz, jr_025_6C4C                            ; $6BDA: $20 $70

    ld [hl], d                                    ; $6BDC: $72
    ld l, a                                       ; $6BDD: $6F
    ld h, d                                       ; $6BDE: $62
    ld h, c                                       ; $6BDF: $61
    ld h, d                                       ; $6BE0: $62

jr_025_6BE1:
    ld l, h                                       ; $6BE1: $6C
    ld a, c                                       ; $6BE2: $79

jr_025_6BE3:
    cp $77                                        ; $6BE3: $FE $77
    ld l, a                                       ; $6BE5: $6F
    ld [hl], l                                    ; $6BE6: $75
    ld l, h                                       ; $6BE7: $6C

jr_025_6BE8:
    ld h, h                                       ; $6BE8: $64
    ld l, [hl]                                    ; $6BE9: $6E

jr_025_6BEA:
    daa                                           ; $6BEA: $27
    ld [hl], h                                    ; $6BEB: $74
    jr nz, jr_025_6C60                            ; $6BEC: $20 $72

    ld h, l                                       ; $6BEE: $65
    ld h, c                                       ; $6BEF: $61
    ld l, h                                       ; $6BF0: $6C
    ld l, h                                       ; $6BF1: $6C

jr_025_6BF2:
    ld a, c                                       ; $6BF2: $79
    rst $38                                       ; $6BF3: $FF
    ld l, l                                       ; $6BF4: $6D
    ld h, c                                       ; $6BF5: $61
    ld [hl], h                                    ; $6BF6: $74
    ld [hl], h                                    ; $6BF7: $74
    ld h, l                                       ; $6BF8: $65
    ld [hl], d                                    ; $6BF9: $72
    jr nz, jr_025_6C65                            ; $6BFA: $20 $69

    ld h, [hl]                                    ; $6BFC: $66
    jr nz, jr_025_6C78                            ; $6BFD: $20 $79

    ld l, a                                       ; $6BFF: $6F
    ld [hl], l                                    ; $6C00: $75
    cp $63                                        ; $6C01: $FE $63
    ld l, a                                       ; $6C03: $6F
    ld [hl], l                                    ; $6C04: $75
    ld l, h                                       ; $6C05: $6C
    ld h, h                                       ; $6C06: $64
    jr nz, jr_025_6C70                            ; $6C07: $20 $67

    ld h, l                                       ; $6C09: $65
    ld [hl], h                                    ; $6C0A: $74
    jr nz, jr_025_6C7B                            ; $6C0B: $20 $6E

    ld h, l                                       ; $6C0D: $65
    ld h, c                                       ; $6C0E: $61
    ld [hl], d                                    ; $6C0F: $72
    rst $38                                       ; $6C10: $FF
    ld l, c                                       ; $6C11: $69
    ld [hl], h                                    ; $6C12: $74
    inc l                                         ; $6C13: $2C
    jr nz, @+$75                                  ; $6C14: $20 $73

    ld l, c                                       ; $6C16: $69
    ld l, [hl]                                    ; $6C17: $6E

jr_025_6C18:
    ld h, e                                       ; $6C18: $63
    ld h, l                                       ; $6C19: $65

jr_025_6C1A:
    jr nz, jr_025_6C69                            ; $6C1A: $20 $4D

    ld h, c                                       ; $6C1C: $61
    ld h, a                                       ; $6C1D: $67
    ld l, c                                       ; $6C1E: $69
    cp $63                                        ; $6C1F: $FE $63
    ld h, c                                       ; $6C21: $61
    ld l, [hl]                                    ; $6C22: $6E
    daa                                           ; $6C23: $27
    ld [hl], h                                    ; $6C24: $74
    jr nz, jr_025_6C8C                            ; $6C25: $20 $65

    ld l, [hl]                                    ; $6C27: $6E
    ld [hl], h                                    ; $6C28: $74

jr_025_6C29:
    ld h, l                                       ; $6C29: $65
    ld [hl], d                                    ; $6C2A: $72
    jr nz, jr_025_6C96                            ; $6C2B: $20 $69

    ld [hl], h                                    ; $6C2D: $74

jr_025_6C2E:
    ld l, $FE                                     ; $6C2E: $2E $FE
    db $FD                                        ; $6C30: $FD
    sbc e                                         ; $6C31: $9B
    jr z, @+$45                                   ; $6C32: $28 $43

    sbc a                                         ; $6C34: $9F
    ld b, c                                       ; $6C35: $41
    ld [hl], d                                    ; $6C36: $72
    ld [hl], d                                    ; $6C37: $72
    inc l                                         ; $6C38: $2C
    jr nz, jr_025_6CAF                            ; $6C39: $20 $74

    ld l, b                                       ; $6C3B: $68
    ld h, c                                       ; $6C3C: $61
    ld [hl], h                                    ; $6C3D: $74
    rst $38                                       ; $6C3E: $FF
    ld [hl], e                                    ; $6C3F: $73
    ld [hl], h                                    ; $6C40: $74
    ld l, c                                       ; $6C41: $69
    ld l, [hl]                                    ; $6C42: $6E
    ld l, e                                       ; $6C43: $6B
    ld [hl], e                                    ; $6C44: $73
    ld l, $FE                                     ; $6C45: $2E $FE
    db $FD                                        ; $6C47: $FD
    sbc e                                         ; $6C48: $9B
    ld a, b                                       ; $6C49: $78
    ld [hl], b                                    ; $6C4A: $70
    sbc a                                         ; $6C4B: $9F

jr_025_6C4C:
    ld c, b                                       ; $6C4C: $48
    ld l, a                                       ; $6C4D: $6F
    ld [hl], a                                    ; $6C4E: $77
    ld h, l                                       ; $6C4F: $65
    halt                                          ; $6C50: $76
    ld h, l                                       ; $6C51: $65
    ld [hl], d                                    ; $6C52: $72
    inc l                                         ; $6C53: $2C
    jr nz, jr_025_6C9F                            ; $6C54: $20 $49

    jr nz, jr_025_6CBB                            ; $6C56: $20 $63

    ld h, c                                       ; $6C58: $61
    ld l, [hl]                                    ; $6C59: $6E
    rst $38                                       ; $6C5A: $FF
    ld h, l                                       ; $6C5B: $65
    ld l, [hl]                                    ; $6C5C: $6E
    ld [hl], h                                    ; $6C5D: $74
    ld h, l                                       ; $6C5E: $65
    ld [hl], d                                    ; $6C5F: $72

jr_025_6C60:
    jr nz, jr_025_6CCB                            ; $6C60: $20 $69

    ld [hl], h                                    ; $6C62: $74
    cp $62                                        ; $6C63: $FE $62

jr_025_6C65:
    ld h, l                                       ; $6C65: $65
    ld h, e                                       ; $6C66: $63
    ld h, c                                       ; $6C67: $61
    ld [hl], l                                    ; $6C68: $75

jr_025_6C69:
    ld [hl], e                                    ; $6C69: $73
    ld h, l                                       ; $6C6A: $65
    jr nz, jr_025_6CB6                            ; $6C6B: $20 $49

    jr nz, @+$6A                                  ; $6C6D: $20 $68

    ld h, c                                       ; $6C6F: $61

jr_025_6C70:
    halt                                          ; $6C70: $76
    ld h, l                                       ; $6C71: $65
    rst $38                                       ; $6C72: $FF
    ld [hl], h                                    ; $6C73: $74
    ld l, b                                       ; $6C74: $68
    ld h, l                                       ; $6C75: $65
    jr nz, jr_025_6CBB                            ; $6C76: $20 $43

jr_025_6C78:
    ld l, a                                       ; $6C78: $6F
    ld [hl], d                                    ; $6C79: $72
    ld h, l                                       ; $6C7A: $65

jr_025_6C7B:
    jr nz, jr_025_6CC4                            ; $6C7B: $20 $47

    ld l, h                                       ; $6C7D: $6C
    ld a, c                                       ; $6C7E: $79
    ld [hl], b                                    ; $6C7F: $70
    ld l, b                                       ; $6C80: $68
    ld l, $FE                                     ; $6C81: $2E $FE
    db $FD                                        ; $6C83: $FD
    sbc d                                         ; $6C84: $9A
    ld b, b                                       ; $6C85: $40
    ld b, b                                       ; $6C86: $40
    sbc e                                         ; $6C87: $9B
    jr z, jr_025_6CCD                             ; $6C88: $28 $43

    sbc a                                         ; $6C8A: $9F
    ld d, a                                       ; $6C8B: $57

jr_025_6C8C:
    ld l, b                                       ; $6C8C: $68
    ld h, c                                       ; $6C8D: $61
    ld [hl], h                                    ; $6C8E: $74
    jr nz, @+$64                                  ; $6C8F: $20 $62

    ld h, l                                       ; $6C91: $65
    jr nz, jr_025_6D08                            ; $6C92: $20 $74

    ld l, b                                       ; $6C94: $68
    ld h, c                                       ; $6C95: $61

jr_025_6C96:
    ld [hl], h                                    ; $6C96: $74
    ccf                                           ; $6C97: $3F
    cp $FD                                        ; $6C98: $FE $FD
    sbc e                                         ; $6C9A: $9B
    ld a, b                                       ; $6C9B: $78
    ld [hl], b                                    ; $6C9C: $70
    sbc a                                         ; $6C9D: $9F
    ld e, c                                       ; $6C9E: $59

jr_025_6C9F:
    ld l, a                                       ; $6C9F: $6F
    ld [hl], l                                    ; $6CA0: $75
    ld l, $2E                                     ; $6CA1: $2E $2E
    ld l, $20                                     ; $6CA3: $2E $20
    ld h, h                                       ; $6CA5: $64
    ld l, a                                       ; $6CA6: $6F
    ld l, [hl]                                    ; $6CA7: $6E
    daa                                           ; $6CA8: $27
    ld [hl], h                                    ; $6CA9: $74
    rst $38                                       ; $6CAA: $FF
    ld l, e                                       ; $6CAB: $6B
    ld l, [hl]                                    ; $6CAC: $6E
    ld l, a                                       ; $6CAD: $6F
    ld [hl], a                                    ; $6CAE: $77

jr_025_6CAF:
    jr nz, jr_025_6D28                            ; $6CAF: $20 $77

    ld l, b                                       ; $6CB1: $68
    ld h, c                                       ; $6CB2: $61
    ld [hl], h                                    ; $6CB3: $74
    jr nz, jr_025_6D1F                            ; $6CB4: $20 $69

jr_025_6CB6:
    ld [hl], h                                    ; $6CB6: $74
    cp $69                                        ; $6CB7: $FE $69
    ld [hl], e                                    ; $6CB9: $73
    ccf                                           ; $6CBA: $3F

jr_025_6CBB:
    jr nz, jr_025_6D06                            ; $6CBB: $20 $49

    jr nz, @+$76                                  ; $6CBD: $20 $74

    ld l, b                                       ; $6CBF: $68
    ld l, a                                       ; $6CC0: $6F
    ld [hl], l                                    ; $6CC1: $75
    ld h, a                                       ; $6CC2: $67
    ld l, b                                       ; $6CC3: $68

jr_025_6CC4:
    ld [hl], h                                    ; $6CC4: $74
    rst $38                                       ; $6CC5: $FF
    ld h, l                                       ; $6CC6: $65
    halt                                          ; $6CC7: $76
    ld h, l                                       ; $6CC8: $65
    ld [hl], d                                    ; $6CC9: $72
    ld a, c                                       ; $6CCA: $79

jr_025_6CCB:
    ld l, a                                       ; $6CCB: $6F
    ld l, [hl]                                    ; $6CCC: $6E

jr_025_6CCD:
    ld h, l                                       ; $6CCD: $65
    jr nz, @+$6B                                  ; $6CCE: $20 $69

    ld l, [hl]                                    ; $6CD0: $6E
    cp $74                                        ; $6CD1: $FE $74
    ld l, b                                       ; $6CD3: $68
    ld l, c                                       ; $6CD4: $69
    ld [hl], e                                    ; $6CD5: $73
    jr nz, jr_025_6D4F                            ; $6CD6: $20 $77

    ld l, a                                       ; $6CD8: $6F
    ld [hl], d                                    ; $6CD9: $72
    ld l, h                                       ; $6CDA: $6C
    ld h, h                                       ; $6CDB: $64
    jr nz, jr_025_6D49                            ; $6CDC: $20 $6B

    ld l, [hl]                                    ; $6CDE: $6E
    ld h, l                                       ; $6CDF: $65
    ld [hl], a                                    ; $6CE0: $77
    rst $38                                       ; $6CE1: $FF
    ld h, c                                       ; $6CE2: $61
    ld h, d                                       ; $6CE3: $62
    ld l, a                                       ; $6CE4: $6F
    ld [hl], l                                    ; $6CE5: $75
    ld [hl], h                                    ; $6CE6: $74
    jr nz, jr_025_6D5D                            ; $6CE7: $20 $74

    ld l, b                                       ; $6CE9: $68
    ld l, c                                       ; $6CEA: $69
    ld [hl], e                                    ; $6CEB: $73
    cp $47                                        ; $6CEC: $FE $47
    ld [hl], d                                    ; $6CEE: $72
    ld h, l                                       ; $6CEF: $65
    ld h, c                                       ; $6CF0: $61
    ld [hl], h                                    ; $6CF1: $74
    jr nz, jr_025_6D41                            ; $6CF2: $20 $4D

    ld h, c                                       ; $6CF4: $61
    ld h, a                                       ; $6CF5: $67
    ld [hl], l                                    ; $6CF6: $75
    ld [hl], e                                    ; $6CF7: $73
    rst $38                                       ; $6CF8: $FF
    ld c, e                                       ; $6CF9: $4B
    ld a, c                                       ; $6CFA: $79
    ld [hl], d                                    ; $6CFB: $72
    ld l, a                                       ; $6CFC: $6F
    ld [hl], e                                    ; $6CFD: $73
    jr nz, jr_025_6D73                            ; $6CFE: $20 $73

    ld [hl], h                                    ; $6D00: $74
    ld [hl], l                                    ; $6D01: $75
    ld h, [hl]                                    ; $6D02: $66
    ld h, [hl]                                    ; $6D03: $66
    ld l, $FE                                     ; $6D04: $2E $FE

jr_025_6D06:
    db $FD                                        ; $6D06: $FD
    sbc e                                         ; $6D07: $9B

jr_025_6D08:
    jr z, jr_025_6D4D                             ; $6D08: $28 $43

    sbc a                                         ; $6D0A: $9F
    ld d, h                                       ; $6D0B: $54
    ld l, a                                       ; $6D0C: $6F
    ld l, [hl]                                    ; $6D0D: $6E
    ld h, l                                       ; $6D0E: $65
    ld a, c                                       ; $6D0F: $79
    inc l                                         ; $6D10: $2C
    jr nz, jr_025_6D5C                            ; $6D11: $20 $49

    jr nz, jr_025_6D77                            ; $6D13: $20 $62

    ld h, l                                       ; $6D15: $65
    ld h, l                                       ; $6D16: $65
    ld l, [hl]                                    ; $6D17: $6E
    rst $38                                       ; $6D18: $FF
    ld h, a                                       ; $6D19: $67
    ld [hl], l                                    ; $6D1A: $75
    ld h, c                                       ; $6D1B: $61
    ld [hl], d                                    ; $6D1C: $72
    ld h, h                                       ; $6D1D: $64
    ld l, c                                       ; $6D1E: $69

jr_025_6D1F:
    ld l, [hl]                                    ; $6D1F: $6E
    daa                                           ; $6D20: $27
    jr nz, jr_025_6D97                            ; $6D21: $20 $74

    ld l, b                                       ; $6D23: $68
    ld h, c                                       ; $6D24: $61
    ld [hl], h                                    ; $6D25: $74
    cp $76                                        ; $6D26: $FE $76

jr_025_6D28:
    ld h, c                                       ; $6D28: $61
    ld [hl], l                                    ; $6D29: $75
    ld l, h                                       ; $6D2A: $6C
    ld [hl], h                                    ; $6D2B: $74
    jr nz, jr_025_6DA1                            ; $6D2C: $20 $73

    ld l, c                                       ; $6D2E: $69
    ld l, [hl]                                    ; $6D2F: $6E
    ld h, e                                       ; $6D30: $63
    ld h, l                                       ; $6D31: $65
    jr nz, @+$4B                                  ; $6D32: $20 $49

    rst $38                                       ; $6D34: $FF
    ld [hl], a                                    ; $6D35: $77
    ld h, c                                       ; $6D36: $61
    ld [hl], e                                    ; $6D37: $73
    jr nz, jr_025_6DA9                            ; $6D38: $20 $6F

    ld l, h                                       ; $6D3A: $6C
    ld h, h                                       ; $6D3B: $64
    jr nz, @+$67                                  ; $6D3C: $20 $65

    ld l, [hl]                                    ; $6D3E: $6E
    ld l, a                                       ; $6D3F: $6F
    ld [hl], l                                    ; $6D40: $75

jr_025_6D41:
    ld h, a                                       ; $6D41: $67
    ld l, b                                       ; $6D42: $68
    cp $74                                        ; $6D43: $FE $74
    ld h, c                                       ; $6D45: $61
    jr nz, jr_025_6DB0                            ; $6D46: $20 $68

    ld l, a                                       ; $6D48: $6F

jr_025_6D49:
    ld l, h                                       ; $6D49: $6C
    ld h, h                                       ; $6D4A: $64
    jr nz, jr_025_6DAE                            ; $6D4B: $20 $61

jr_025_6D4D:
    rst $38                                       ; $6D4D: $FF
    ld [hl], h                                    ; $6D4E: $74

jr_025_6D4F:
    ld [hl], d                                    ; $6D4F: $72
    ld l, c                                       ; $6D50: $69
    ld h, h                                       ; $6D51: $64
    ld h, l                                       ; $6D52: $65
    ld l, [hl]                                    ; $6D53: $6E
    ld [hl], h                                    ; $6D54: $74
    ld l, $20                                     ; $6D55: $2E $20
    ld c, l                                       ; $6D57: $4D
    ld h, l                                       ; $6D58: $65
    cp $64                                        ; $6D59: $FE $64
    ld h, c                                       ; $6D5B: $61

jr_025_6D5C:
    ld h, h                                       ; $6D5C: $64

jr_025_6D5D:
    ld h, h                                       ; $6D5D: $64
    ld a, c                                       ; $6D5E: $79
    jr nz, jr_025_6DD8                            ; $6D5F: $20 $77

    ld h, c                                       ; $6D61: $61
    ld [hl], e                                    ; $6D62: $73
    jr nz, jr_025_6DC6                            ; $6D63: $20 $61

    rst $38                                       ; $6D65: $FF
    ld h, a                                       ; $6D66: $67
    ld [hl], l                                    ; $6D67: $75
    ld h, c                                       ; $6D68: $61
    ld [hl], d                                    ; $6D69: $72
    ld h, h                                       ; $6D6A: $64
    jr nz, jr_025_6DCE                            ; $6D6B: $20 $61

    ld h, [hl]                                    ; $6D6D: $66
    ld l, a                                       ; $6D6E: $6F
    ld [hl], d                                    ; $6D6F: $72
    ld h, l                                       ; $6D70: $65
    jr nz, jr_025_6DBC                            ; $6D71: $20 $49

jr_025_6D73:
    cp $77                                        ; $6D73: $FE $77
    ld h, c                                       ; $6D75: $61
    ld [hl], e                                    ; $6D76: $73

jr_025_6D77:
    inc l                                         ; $6D77: $2C
    jr nz, jr_025_6DDB                            ; $6D78: $20 $61

    ld l, [hl]                                    ; $6D7A: $6E
    ld h, h                                       ; $6D7B: $64
    jr nz, jr_025_6DE6                            ; $6D7C: $20 $68

    ld l, c                                       ; $6D7E: $69
    ld [hl], e                                    ; $6D7F: $73
    rst $38                                       ; $6D80: $FF
    ld h, h                                       ; $6D81: $64
    ld h, c                                       ; $6D82: $61
    ld h, h                                       ; $6D83: $64
    ld h, h                                       ; $6D84: $64
    ld a, c                                       ; $6D85: $79
    jr nz, @+$63                                  ; $6D86: $20 $61

    ld h, [hl]                                    ; $6D88: $66
    ld l, a                                       ; $6D89: $6F
    ld [hl], d                                    ; $6D8A: $72
    ld h, l                                       ; $6D8B: $65
    cp $68                                        ; $6D8C: $FE $68
    ld l, c                                       ; $6D8E: $69
    ld l, l                                       ; $6D8F: $6D
    ld l, $20                                     ; $6D90: $2E $20
    ld c, [hl]                                    ; $6D92: $4E
    ld l, a                                       ; $6D93: $6F
    ld h, d                                       ; $6D94: $62
    ld l, a                                       ; $6D95: $6F
    ld h, h                                       ; $6D96: $64

jr_025_6D97:
    ld a, c                                       ; $6D97: $79
    rst $38                                       ; $6D98: $FF
    ld h, l                                       ; $6D99: $65
    halt                                          ; $6D9A: $76
    ld h, l                                       ; $6D9B: $65
    ld [hl], d                                    ; $6D9C: $72
    jr nz, jr_025_6E13                            ; $6D9D: $20 $74

    ld l, a                                       ; $6D9F: $6F
    ld l, h                                       ; $6DA0: $6C

jr_025_6DA1:
    ld h, h                                       ; $6DA1: $64
    jr nz, jr_025_6E05                            ; $6DA2: $20 $61

    ld l, [hl]                                    ; $6DA4: $6E
    ld a, c                                       ; $6DA5: $79
    cp $6F                                        ; $6DA6: $FE $6F
    ld h, [hl]                                    ; $6DA8: $66

jr_025_6DA9:
    jr nz, jr_025_6E20                            ; $6DA9: $20 $75

    ld [hl], e                                    ; $6DAB: $73
    jr nz, @+$63                                  ; $6DAC: $20 $61

jr_025_6DAE:
    ld h, d                                       ; $6DAE: $62
    ld l, a                                       ; $6DAF: $6F

jr_025_6DB0:
    ld [hl], l                                    ; $6DB0: $75
    ld [hl], h                                    ; $6DB1: $74
    jr nz, jr_025_6E28                            ; $6DB2: $20 $74

    ld l, b                                       ; $6DB4: $68
    ld h, l                                       ; $6DB5: $65
    rst $38                                       ; $6DB6: $FF
    ld l, a                                       ; $6DB7: $6F
    ld [hl], l                                    ; $6DB8: $75
    ld [hl], h                                    ; $6DB9: $74
    ld [hl], e                                    ; $6DBA: $73
    ld l, c                                       ; $6DBB: $69

jr_025_6DBC:
    ld h, h                                       ; $6DBC: $64
    ld h, l                                       ; $6DBD: $65
    jr nz, jr_025_6E37                            ; $6DBE: $20 $77

    ld l, a                                       ; $6DC0: $6F
    ld [hl], d                                    ; $6DC1: $72
    ld l, h                                       ; $6DC2: $6C
    ld h, h                                       ; $6DC3: $64
    ld l, $FE                                     ; $6DC4: $2E $FE

jr_025_6DC6:
    db $FD                                        ; $6DC6: $FD
    sbc e                                         ; $6DC7: $9B
    ld a, b                                       ; $6DC8: $78
    ld [hl], b                                    ; $6DC9: $70
    sbc a                                         ; $6DCA: $9F
    ld c, [hl]                                    ; $6DCB: $4E
    ld l, a                                       ; $6DCC: $6F
    ld h, d                                       ; $6DCD: $62

jr_025_6DCE:
    ld l, a                                       ; $6DCE: $6F
    ld h, h                                       ; $6DCF: $64
    ld a, c                                       ; $6DD0: $79
    ccf                                           ; $6DD1: $3F
    jr nz, jr_025_6E22                            ; $6DD2: $20 $4E

    ld l, a                                       ; $6DD4: $6F
    ld [hl], h                                    ; $6DD5: $74
    rst $38                                       ; $6DD6: $FF
    ld h, l                                       ; $6DD7: $65

jr_025_6DD8:
    halt                                          ; $6DD8: $76
    ld h, l                                       ; $6DD9: $65
    ld l, [hl]                                    ; $6DDA: $6E

jr_025_6DDB:
    jr nz, jr_025_6E56                            ; $6DDB: $20 $79

    ld l, a                                       ; $6DDD: $6F
    ld [hl], l                                    ; $6DDE: $75
    ld [hl], d                                    ; $6DDF: $72
    cp $6D                                        ; $6DE0: $FE $6D
    ld l, a                                       ; $6DE2: $6F
    ld [hl], h                                    ; $6DE3: $74
    ld l, b                                       ; $6DE4: $68
    ld h, l                                       ; $6DE5: $65

jr_025_6DE6:
    ld [hl], d                                    ; $6DE6: $72
    ccf                                           ; $6DE7: $3F
    cp $FD                                        ; $6DE8: $FE $FD
    sbc e                                         ; $6DEA: $9B
    jr z, jr_025_6E30                             ; $6DEB: $28 $43

    sbc a                                         ; $6DED: $9F
    ld c, l                                       ; $6DEE: $4D
    ld h, l                                       ; $6DEF: $65
    jr nz, jr_025_6E5F                            ; $6DF0: $20 $6D

    ld h, c                                       ; $6DF2: $61
    ld l, l                                       ; $6DF3: $6D
    ld h, c                                       ; $6DF4: $61
    jr nz, jr_025_6E6E                            ; $6DF5: $20 $77

    ld h, c                                       ; $6DF7: $61
    ld [hl], e                                    ; $6DF8: $73
    ld l, [hl]                                    ; $6DF9: $6E
    daa                                           ; $6DFA: $27
    ld [hl], h                                    ; $6DFB: $74
    rst $38                                       ; $6DFC: $FF
    ld [hl], d                                    ; $6DFD: $72
    ld h, l                                       ; $6DFE: $65
    ld h, c                                       ; $6DFF: $61
    ld l, h                                       ; $6E00: $6C
    ld l, h                                       ; $6E01: $6C
    ld a, c                                       ; $6E02: $79
    jr nz, jr_025_6E66                            ; $6E03: $20 $61

jr_025_6E05:
    ld l, h                                       ; $6E05: $6C
    ld l, h                                       ; $6E06: $6C
    ld l, a                                       ; $6E07: $6F
    ld [hl], a                                    ; $6E08: $77
    ld h, l                                       ; $6E09: $65
    ld h, h                                       ; $6E0A: $64
    cp $74                                        ; $6E0B: $FE $74
    ld l, a                                       ; $6E0D: $6F
    jr nz, jr_025_6E72                            ; $6E0E: $20 $62

    ld h, l                                       ; $6E10: $65
    jr nz, jr_025_6E74                            ; $6E11: $20 $61

jr_025_6E13:
    ld [hl], d                                    ; $6E13: $72
    ld l, a                                       ; $6E14: $6F
    ld [hl], l                                    ; $6E15: $75
    ld l, [hl]                                    ; $6E16: $6E
    ld h, h                                       ; $6E17: $64
    ld l, $FF                                     ; $6E18: $2E $FF
    ld b, a                                       ; $6E1A: $47
    ld [hl], l                                    ; $6E1B: $75
    ld h, c                                       ; $6E1C: $61
    ld [hl], d                                    ; $6E1D: $72
    ld h, h                                       ; $6E1E: $64
    ld [hl], e                                    ; $6E1F: $73

jr_025_6E20:
    jr nz, jr_025_6E8E                            ; $6E20: $20 $6C

jr_025_6E22:
    ld l, c                                       ; $6E22: $69
    ld l, e                                       ; $6E23: $6B
    ld h, l                                       ; $6E24: $65
    jr nz, jr_025_6E94                            ; $6E25: $20 $6D

    ld h, l                                       ; $6E27: $65

jr_025_6E28:
    cp $61                                        ; $6E28: $FE $61
    ld [hl], d                                    ; $6E2A: $72
    ld h, l                                       ; $6E2B: $65
    jr nz, jr_025_6EA0                            ; $6E2C: $20 $72

    ld h, c                                       ; $6E2E: $61
    ld l, c                                       ; $6E2F: $69

jr_025_6E30:
    ld [hl], e                                    ; $6E30: $73
    ld h, l                                       ; $6E31: $65
    ld h, h                                       ; $6E32: $64
    jr nz, jr_025_6E96                            ; $6E33: $20 $61

    ld l, [hl]                                    ; $6E35: $6E
    ld h, h                                       ; $6E36: $64

jr_025_6E37:
    rst $38                                       ; $6E37: $FF
    ld [hl], h                                    ; $6E38: $74
    ld [hl], d                                    ; $6E39: $72
    ld h, c                                       ; $6E3A: $61
    ld l, c                                       ; $6E3B: $69
    ld l, [hl]                                    ; $6E3C: $6E
    ld h, l                                       ; $6E3D: $65
    ld h, h                                       ; $6E3E: $64
    jr nz, jr_025_6EA3                            ; $6E3F: $20 $62

    ld a, c                                       ; $6E41: $79
    cp $74                                        ; $6E42: $FE $74
    ld l, b                                       ; $6E44: $68
    ld h, l                                       ; $6E45: $65
    ld l, c                                       ; $6E46: $69
    ld [hl], d                                    ; $6E47: $72
    jr nz, jr_025_6EBA                            ; $6E48: $20 $70

    ld h, c                                       ; $6E4A: $61
    ld [hl], b                                    ; $6E4B: $70
    ld [hl], e                                    ; $6E4C: $73
    jr nz, jr_025_6EB8                            ; $6E4D: $20 $69

    ld l, [hl]                                    ; $6E4F: $6E
    rst $38                                       ; $6E50: $FF
    ld [hl], e                                    ; $6E51: $73
    ld h, l                                       ; $6E52: $65
    ld h, e                                       ; $6E53: $63
    ld l, h                                       ; $6E54: $6C
    ld [hl], l                                    ; $6E55: $75

jr_025_6E56:
    ld [hl], e                                    ; $6E56: $73
    ld l, c                                       ; $6E57: $69
    ld l, a                                       ; $6E58: $6F
    ld l, [hl]                                    ; $6E59: $6E
    ld l, $FE                                     ; $6E5A: $2E $FE
    db $FD                                        ; $6E5C: $FD
    sbc e                                         ; $6E5D: $9B
    ld a, b                                       ; $6E5E: $78

jr_025_6E5F:
    ld [hl], b                                    ; $6E5F: $70
    sbc a                                         ; $6E60: $9F
    ld b, h                                       ; $6E61: $44
    ld l, a                                       ; $6E62: $6F
    ld h, l                                       ; $6E63: $65
    ld [hl], e                                    ; $6E64: $73
    ld l, [hl]                                    ; $6E65: $6E

jr_025_6E66:
    daa                                           ; $6E66: $27
    ld [hl], h                                    ; $6E67: $74
    jr nz, jr_025_6EDD                            ; $6E68: $20 $73

    ld l, b                                       ; $6E6A: $68
    ld h, l                                       ; $6E6B: $65
    rst $38                                       ; $6E6C: $FF
    halt                                          ; $6E6D: $76

jr_025_6E6E:
    ld l, c                                       ; $6E6E: $69
    ld [hl], e                                    ; $6E6F: $73
    ld l, c                                       ; $6E70: $69
    ld [hl], h                                    ; $6E71: $74

jr_025_6E72:
    jr nz, @+$7B                                  ; $6E72: $20 $79

jr_025_6E74:
    ld l, a                                       ; $6E74: $6F
    ld [hl], l                                    ; $6E75: $75
    ccf                                           ; $6E76: $3F
    cp $FD                                        ; $6E77: $FE $FD
    sbc e                                         ; $6E79: $9B
    jr z, jr_025_6EBF                             ; $6E7A: $28 $43

    sbc a                                         ; $6E7C: $9F
    ld e, c                                       ; $6E7D: $59
    ld h, l                                       ; $6E7E: $65
    ld h, c                                       ; $6E7F: $61
    ld l, b                                       ; $6E80: $68
    inc l                                         ; $6E81: $2C
    jr nz, jr_025_6EE6                            ; $6E82: $20 $62

    ld [hl], l                                    ; $6E84: $75
    ld [hl], h                                    ; $6E85: $74
    jr nz, jr_025_6EFB                            ; $6E86: $20 $73

    ld l, b                                       ; $6E88: $68
    ld h, l                                       ; $6E89: $65
    rst $38                                       ; $6E8A: $FF
    ld h, e                                       ; $6E8B: $63
    ld h, c                                       ; $6E8C: $61
    ld l, [hl]                                    ; $6E8D: $6E

jr_025_6E8E:
    jr nz, jr_025_6EFE                            ; $6E8E: $20 $6E

    ld h, l                                       ; $6E90: $65
    halt                                          ; $6E91: $76
    ld h, l                                       ; $6E92: $65
    ld [hl], d                                    ; $6E93: $72

jr_025_6E94:
    jr nz, jr_025_6F09                            ; $6E94: $20 $73

jr_025_6E96:
    ld [hl], h                                    ; $6E96: $74
    ld h, c                                       ; $6E97: $61
    ld a, c                                       ; $6E98: $79
    cp $6C                                        ; $6E99: $FE $6C
    ld l, a                                       ; $6E9B: $6F
    ld l, [hl]                                    ; $6E9C: $6E
    ld h, a                                       ; $6E9D: $67
    ld l, $20                                     ; $6E9E: $2E $20

jr_025_6EA0:
    ld b, c                                       ; $6EA0: $41
    ld [hl], d                                    ; $6EA1: $72
    ld [hl], d                                    ; $6EA2: $72

jr_025_6EA3:
    inc l                                         ; $6EA3: $2C
    jr nz, jr_025_6F14                            ; $6EA4: $20 $6E

    ld l, a                                       ; $6EA6: $6F
    ld [hl], a                                    ; $6EA7: $77
    rst $38                                       ; $6EA8: $FF
    ld c, c                                       ; $6EA9: $49
    daa                                           ; $6EAA: $27
    ld l, l                                       ; $6EAB: $6D
    jr nz, @+$63                                  ; $6EAC: $20 $61

    ld l, h                                       ; $6EAE: $6C
    ld l, h                                       ; $6EAF: $6C
    cp $64                                        ; $6EB0: $FE $64
    ld h, l                                       ; $6EB2: $65
    ld [hl], b                                    ; $6EB3: $70
    ld [hl], d                                    ; $6EB4: $72
    ld h, l                                       ; $6EB5: $65
    ld [hl], e                                    ; $6EB6: $73
    ld [hl], e                                    ; $6EB7: $73

jr_025_6EB8:
    ld h, l                                       ; $6EB8: $65
    ld h, h                                       ; $6EB9: $64

jr_025_6EBA:
    ld l, $FE                                     ; $6EBA: $2E $FE
    db $FD                                        ; $6EBC: $FD
    sbc e                                         ; $6EBD: $9B

jr_025_6EBE:
    ld a, b                                       ; $6EBE: $78

jr_025_6EBF:
    ld [hl], b                                    ; $6EBF: $70
    sbc a                                         ; $6EC0: $9F
    ld c, a                                       ; $6EC1: $4F
    ld l, b                                       ; $6EC2: $68
    inc l                                         ; $6EC3: $2C
    jr nz, jr_025_6F39                            ; $6EC4: $20 $73

    ld l, a                                       ; $6EC6: $6F
    ld [hl], d                                    ; $6EC7: $72
    ld [hl], d                                    ; $6EC8: $72
    ld a, c                                       ; $6EC9: $79
    ld l, $20                                     ; $6ECA: $2E $20
    ld d, a                                       ; $6ECC: $57
    ld h, l                                       ; $6ECD: $65
    ld l, h                                       ; $6ECE: $6C
    ld l, h                                       ; $6ECF: $6C
    rst $38                                       ; $6ED0: $FF
    ld h, c                                       ; $6ED1: $61
    ld l, [hl]                                    ; $6ED2: $6E
    ld a, c                                       ; $6ED3: $79
    ld [hl], a                                    ; $6ED4: $77
    ld h, c                                       ; $6ED5: $61
    ld a, c                                       ; $6ED6: $79
    inc l                                         ; $6ED7: $2C
    jr nz, jr_025_6F23                            ; $6ED8: $20 $49

    jr nz, jr_025_6F46                            ; $6EDA: $20 $6A

    ld [hl], l                                    ; $6EDC: $75

jr_025_6EDD:
    ld [hl], e                                    ; $6EDD: $73
    ld [hl], h                                    ; $6EDE: $74
    cp $68                                        ; $6EDF: $FE $68
    ld h, c                                       ; $6EE1: $61
    halt                                          ; $6EE2: $76
    ld h, l                                       ; $6EE3: $65
    jr nz, jr_025_6F5A                            ; $6EE4: $20 $74

jr_025_6EE6:
    ld l, a                                       ; $6EE6: $6F
    jr nz, jr_025_6F4F                            ; $6EE7: $20 $66

    ld l, c                                       ; $6EE9: $69
    ld l, [hl]                                    ; $6EEA: $6E
    ld h, h                                       ; $6EEB: $64
    jr nz, jr_025_6F4F                            ; $6EEC: $20 $61

    rst $38                                       ; $6EEE: $FF
    ld [hl], a                                    ; $6EEF: $77
    ld h, c                                       ; $6EF0: $61
    ld a, c                                       ; $6EF1: $79
    jr nz, jr_025_6F68                            ; $6EF2: $20 $74

    ld l, a                                       ; $6EF4: $6F
    jr nz, jr_025_6F5E                            ; $6EF5: $20 $67

    ld h, l                                       ; $6EF7: $65
    ld [hl], h                                    ; $6EF8: $74
    jr nz, jr_025_6F6F                            ; $6EF9: $20 $74

jr_025_6EFB:
    ld l, a                                       ; $6EFB: $6F
    cp $74                                        ; $6EFC: $FE $74

jr_025_6EFE:
    ld l, b                                       ; $6EFE: $68
    ld h, c                                       ; $6EFF: $61
    ld [hl], h                                    ; $6F00: $74
    jr nz, jr_025_6F6A                            ; $6F01: $20 $67

    ld h, l                                       ; $6F03: $65
    ld a, c                                       ; $6F04: $79
    ld [hl], e                                    ; $6F05: $73
    ld h, l                                       ; $6F06: $65
    ld [hl], d                                    ; $6F07: $72
    inc l                                         ; $6F08: $2C

jr_025_6F09:
    rst $38                                       ; $6F09: $FF
    ld [hl], h                                    ; $6F0A: $74
    ld l, b                                       ; $6F0B: $68
    ld h, l                                       ; $6F0C: $65
    ld l, [hl]                                    ; $6F0D: $6E
    jr nz, jr_025_6F59                            ; $6F0E: $20 $49

    jr nz, jr_025_6F75                            ; $6F10: $20 $63

    ld h, c                                       ; $6F12: $61
    ld l, [hl]                                    ; $6F13: $6E

jr_025_6F14:
    jr nz, jr_025_6F89                            ; $6F14: $20 $73

    ld [hl], h                                    ; $6F16: $74
    ld l, a                                       ; $6F17: $6F
    ld [hl], b                                    ; $6F18: $70
    cp $69                                        ; $6F19: $FE $69
    ld [hl], h                                    ; $6F1B: $74
    ld l, $FE                                     ; $6F1C: $2E $FE
    db $FD                                        ; $6F1E: $FD
    sbc d                                         ; $6F1F: $9A
    ld b, b                                       ; $6F20: $40
    jr nc, jr_025_6EBE                            ; $6F21: $30 $9B

jr_025_6F23:
    jr z, jr_025_6F68                             ; $6F23: $28 $43

    sbc a                                         ; $6F25: $9F
    ld b, c                                       ; $6F26: $41
    ld [hl], d                                    ; $6F27: $72
    ld [hl], d                                    ; $6F28: $72
    inc l                                         ; $6F29: $2C
    jr nz, jr_025_6F75                            ; $6F2A: $20 $49

    jr nz, jr_025_6FA2                            ; $6F2C: $20 $74

    ld l, b                                       ; $6F2E: $68
    ld l, c                                       ; $6F2F: $69
    ld l, [hl]                                    ; $6F30: $6E
    ld l, e                                       ; $6F31: $6B
    rst $38                                       ; $6F32: $FF
    ld c, c                                       ; $6F33: $49
    daa                                           ; $6F34: $27
    ld l, h                                       ; $6F35: $6C
    ld l, h                                       ; $6F36: $6C
    jr nz, jr_025_6FA0                            ; $6F37: $20 $67

jr_025_6F39:
    ld l, a                                       ; $6F39: $6F
    jr nz, @+$6B                                  ; $6F3A: $20 $69

    ld l, [hl]                                    ; $6F3C: $6E
    jr nz, jr_025_6FA0                            ; $6F3D: $20 $61

    ld l, [hl]                                    ; $6F3F: $6E
    ld h, h                                       ; $6F40: $64
    cp $74                                        ; $6F41: $FE $74
    ld h, l                                       ; $6F43: $65
    ld l, h                                       ; $6F44: $6C
    ld l, h                                       ; $6F45: $6C

jr_025_6F46:
    jr nz, jr_025_6F95                            ; $6F46: $20 $4D

    ld l, a                                       ; $6F48: $6F
    ld h, d                                       ; $6F49: $62
    ld l, c                                       ; $6F4A: $69
    ld [hl], e                                    ; $6F4B: $73
    jr nz, @+$7B                                  ; $6F4C: $20 $79

    ld h, l                                       ; $6F4E: $65

jr_025_6F4F:
    ld [hl], d                                    ; $6F4F: $72
    rst $38                                       ; $6F50: $FF
    ld l, b                                       ; $6F51: $68
    ld h, l                                       ; $6F52: $65
    ld [hl], d                                    ; $6F53: $72
    ld h, l                                       ; $6F54: $65
    inc l                                         ; $6F55: $2C
    jr nz, jr_025_6FAC                            ; $6F56: $20 $54

    ld l, a                                       ; $6F58: $6F

jr_025_6F59:
    ld l, [hl]                                    ; $6F59: $6E

jr_025_6F5A:
    ld h, l                                       ; $6F5A: $65
    ld a, c                                       ; $6F5B: $79
    ld l, $FE                                     ; $6F5C: $2E $FE

jr_025_6F5E:
    ld d, h                                       ; $6F5E: $54
    ld l, b                                       ; $6F5F: $68
    ld h, l                                       ; $6F60: $65
    ld [hl], d                                    ; $6F61: $72
    ld h, l                                       ; $6F62: $65
    daa                                           ; $6F63: $27
    ld [hl], e                                    ; $6F64: $73
    jr nz, jr_025_6FD5                            ; $6F65: $20 $6E

    ld l, a                                       ; $6F67: $6F

jr_025_6F68:
    ld [hl], h                                    ; $6F68: $74
    ld l, b                                       ; $6F69: $68

jr_025_6F6A:
    ld l, c                                       ; $6F6A: $69
    ld l, [hl]                                    ; $6F6B: $6E
    ld h, a                                       ; $6F6C: $67
    rst $38                                       ; $6F6D: $FF
    ld h, d                                       ; $6F6E: $62

jr_025_6F6F:
    ld [hl], l                                    ; $6F6F: $75
    ld [hl], h                                    ; $6F70: $74
    jr nz, @+$67                                  ; $6F71: $20 $65

    ld l, l                                       ; $6F73: $6D
    ld [hl], b                                    ; $6F74: $70

jr_025_6F75:
    ld [hl], h                                    ; $6F75: $74
    ld a, c                                       ; $6F76: $79
    jr nz, @+$75                                  ; $6F77: $20 $73

    ld h, l                                       ; $6F79: $65
    ld h, c                                       ; $6F7A: $61
    cp $65                                        ; $6F7B: $FE $65
    halt                                          ; $6F7D: $76
    ld h, l                                       ; $6F7E: $65
    ld [hl], d                                    ; $6F7F: $72
    ld a, c                                       ; $6F80: $79
    ld [hl], a                                    ; $6F81: $77
    ld l, b                                       ; $6F82: $68
    ld h, l                                       ; $6F83: $65
    ld [hl], d                                    ; $6F84: $72
    ld h, l                                       ; $6F85: $65
    jr nz, jr_025_6FFB                            ; $6F86: $20 $73

    ld l, a                                       ; $6F88: $6F

jr_025_6F89:
    rst $38                                       ; $6F89: $FF
    ld a, c                                       ; $6F8A: $79
    ld l, a                                       ; $6F8B: $6F
    ld [hl], l                                    ; $6F8C: $75
    jr nz, jr_025_7002                            ; $6F8D: $20 $73

    ld l, b                                       ; $6F8F: $68
    ld l, a                                       ; $6F90: $6F
    ld [hl], l                                    ; $6F91: $75
    ld l, h                                       ; $6F92: $6C
    ld h, h                                       ; $6F93: $64
    ld l, [hl]                                    ; $6F94: $6E

jr_025_6F95:
    daa                                           ; $6F95: $27
    ld [hl], h                                    ; $6F96: $74
    cp $74                                        ; $6F97: $FE $74
    ld [hl], d                                    ; $6F99: $72
    ld a, c                                       ; $6F9A: $79
    jr nz, jr_025_7011                            ; $6F9B: $20 $74

    ld h, c                                       ; $6F9D: $61
    jr nz, jr_025_700C                            ; $6F9E: $20 $6C

jr_025_6FA0:
    ld h, l                                       ; $6FA0: $65
    ld h, c                                       ; $6FA1: $61

jr_025_6FA2:
    halt                                          ; $6FA2: $76
    ld h, l                                       ; $6FA3: $65
    ld l, $FF                                     ; $6FA4: $2E $FF
    ld e, c                                       ; $6FA6: $59
    ld h, l                                       ; $6FA7: $65
    ld [hl], d                                    ; $6FA8: $72
    jr nz, jr_025_701B                            ; $6FA9: $20 $70

    ld [hl], d                                    ; $6FAB: $72

jr_025_6FAC:
    ld l, a                                       ; $6FAC: $6F
    ld h, d                                       ; $6FAD: $62
    ld h, c                                       ; $6FAE: $61
    ld h, d                                       ; $6FAF: $62
    ld l, h                                       ; $6FB0: $6C
    ld a, c                                       ; $6FB1: $79
    cp $74                                        ; $6FB2: $FE $74
    ld l, c                                       ; $6FB4: $69
    ld [hl], d                                    ; $6FB5: $72
    ld h, l                                       ; $6FB6: $65
    ld h, h                                       ; $6FB7: $64
    jr nz, @+$68                                  ; $6FB8: $20 $66

    ld [hl], d                                    ; $6FBA: $72
    ld l, a                                       ; $6FBB: $6F
    ld l, l                                       ; $6FBC: $6D
    jr nz, @+$63                                  ; $6FBD: $20 $61

    ld l, h                                       ; $6FBF: $6C
    ld l, h                                       ; $6FC0: $6C
    rst $38                                       ; $6FC1: $FF
    ld [hl], h                                    ; $6FC2: $74
    ld l, b                                       ; $6FC3: $68
    ld h, c                                       ; $6FC4: $61
    ld [hl], h                                    ; $6FC5: $74
    jr nz, jr_025_703B                            ; $6FC6: $20 $73

    ld [hl], a                                    ; $6FC8: $77
    ld l, c                                       ; $6FC9: $69
    ld l, l                                       ; $6FCA: $6D
    ld l, l                                       ; $6FCB: $6D
    ld l, c                                       ; $6FCC: $69
    ld l, [hl]                                    ; $6FCD: $6E
    daa                                           ; $6FCE: $27
    cp $73                                        ; $6FCF: $FE $73
    ld l, a                                       ; $6FD1: $6F
    jr nz, jr_025_703A                            ; $6FD2: $20 $66

    ld h, l                                       ; $6FD4: $65

jr_025_6FD5:
    ld h, l                                       ; $6FD5: $65
    ld l, h                                       ; $6FD6: $6C
    jr nz, jr_025_703F                            ; $6FD7: $20 $66

    ld [hl], d                                    ; $6FD9: $72
    ld h, l                                       ; $6FDA: $65
    ld h, l                                       ; $6FDB: $65
    jr nz, jr_025_7052                            ; $6FDC: $20 $74

    ld h, c                                       ; $6FDE: $61
    rst $38                                       ; $6FDF: $FF
    ld [hl], h                                    ; $6FE0: $74
    ld h, c                                       ; $6FE1: $61
    ld l, e                                       ; $6FE2: $6B
    ld h, l                                       ; $6FE3: $65
    jr nz, jr_025_7047                            ; $6FE4: $20 $61

    jr nz, jr_025_705A                            ; $6FE6: $20 $72

    ld h, l                                       ; $6FE8: $65
    ld [hl], e                                    ; $6FE9: $73
    ld [hl], h                                    ; $6FEA: $74
    jr nz, jr_025_704E                            ; $6FEB: $20 $61

    ld [hl], h                                    ; $6FED: $74
    cp $74                                        ; $6FEE: $FE $74
    ld l, b                                       ; $6FF0: $68
    ld h, l                                       ; $6FF1: $65
    jr nz, jr_025_705D                            ; $6FF2: $20 $69

    ld l, [hl]                                    ; $6FF4: $6E
    ld l, [hl]                                    ; $6FF5: $6E
    ld l, $20                                     ; $6FF6: $2E $20
    ld c, l                                       ; $6FF8: $4D
    ld l, a                                       ; $6FF9: $6F
    ld h, d                                       ; $6FFA: $62

jr_025_6FFB:
    ld l, c                                       ; $6FFB: $69
    ld [hl], e                                    ; $6FFC: $73
    rst $38                                       ; $6FFD: $FF
    ld l, c                                       ; $6FFE: $69
    ld [hl], e                                    ; $6FFF: $73
    jr nz, jr_025_706B                            ; $7000: $20 $69

jr_025_7002:
    ld l, [hl]                                    ; $7002: $6E
    jr nz, jr_025_7079                            ; $7003: $20 $74

    ld l, b                                       ; $7005: $68
    ld h, l                                       ; $7006: $65
    cp $73                                        ; $7007: $FE $73
    ld [hl], h                                    ; $7009: $74
    ld [hl], d                                    ; $700A: $72
    ld [hl], l                                    ; $700B: $75

jr_025_700C:
    ld h, e                                       ; $700C: $63
    ld [hl], h                                    ; $700D: $74
    ld [hl], l                                    ; $700E: $75
    ld [hl], d                                    ; $700F: $72
    ld h, l                                       ; $7010: $65

jr_025_7011:
    jr nz, jr_025_7074                            ; $7011: $20 $61

    ld [hl], h                                    ; $7013: $74
    rst $38                                       ; $7014: $FF
    ld [hl], h                                    ; $7015: $74
    ld l, b                                       ; $7016: $68
    ld h, l                                       ; $7017: $65
    jr nz, @+$6F                                  ; $7018: $20 $6D

    ld l, c                                       ; $701A: $69

jr_025_701B:
    ld h, h                                       ; $701B: $64
    ld h, h                                       ; $701C: $64
    ld l, h                                       ; $701D: $6C
    ld h, l                                       ; $701E: $65
    ld l, $20                                     ; $701F: $2E $20
    ld d, e                                       ; $7021: $53
    ld h, l                                       ; $7022: $65
    ld h, l                                       ; $7023: $65
    cp $79                                        ; $7024: $FE $79
    ld h, c                                       ; $7026: $61
    jr nz, jr_025_709D                            ; $7027: $20 $74

    ld l, b                                       ; $7029: $68
    ld h, l                                       ; $702A: $65
    ld [hl], d                                    ; $702B: $72
    ld h, l                                       ; $702C: $65
    ld hl, $FDFE                                  ; $702D: $21 $FE $FD
    sbc d                                         ; $7030: $9A
    ld e, b                                       ; $7031: $58
    ld bc, $9B42                                  ; $7032: $01 $42 $9B
    jr z, jr_025_707A                             ; $7035: $28 $43

    sbc a                                         ; $7037: $9F
    ld d, a                                       ; $7038: $57
    ld h, l                                       ; $7039: $65

jr_025_703A:
    ld l, h                                       ; $703A: $6C

jr_025_703B:
    ld l, h                                       ; $703B: $6C
    inc l                                         ; $703C: $2C
    jr nz, jr_025_70A8                            ; $703D: $20 $69

jr_025_703F:
    ld [hl], h                                    ; $703F: $74
    jr nz, jr_025_70A4                            ; $7040: $20 $62

    ld h, l                                       ; $7042: $65
    rst $38                                       ; $7043: $FF
    ld l, [hl]                                    ; $7044: $6E
    ld l, c                                       ; $7045: $69
    ld h, e                                       ; $7046: $63

jr_025_7047:
    ld h, l                                       ; $7047: $65
    jr nz, jr_025_70B2                            ; $7048: $20 $68

    ld h, c                                       ; $704A: $61
    halt                                          ; $704B: $76
    ld l, c                                       ; $704C: $69
    ld l, [hl]                                    ; $704D: $6E

jr_025_704E:
    cp $79                                        ; $704E: $FE $79
    ld l, a                                       ; $7050: $6F
    ld [hl], l                                    ; $7051: $75

jr_025_7052:
    jr nz, jr_025_70B5                            ; $7052: $20 $61

    ld [hl], d                                    ; $7054: $72
    ld l, a                                       ; $7055: $6F
    ld [hl], l                                    ; $7056: $75
    ld l, [hl]                                    ; $7057: $6E
    ld h, h                                       ; $7058: $64
    inc l                                         ; $7059: $2C

jr_025_705A:
    rst $38                                       ; $705A: $FF
    ld d, h                                       ; $705B: $54
    ld l, a                                       ; $705C: $6F

jr_025_705D:
    ld l, [hl]                                    ; $705D: $6E
    ld h, l                                       ; $705E: $65
    ld a, c                                       ; $705F: $79
    inc l                                         ; $7060: $2C
    jr nz, jr_025_70C5                            ; $7061: $20 $62

    ld [hl], l                                    ; $7063: $75
    ld [hl], h                                    ; $7064: $74
    jr nz, jr_025_70DE                            ; $7065: $20 $77

    ld h, l                                       ; $7067: $65
    cp $6D                                        ; $7068: $FE $6D
    ld [hl], l                                    ; $706A: $75

jr_025_706B:
    ld [hl], e                                    ; $706B: $73
    ld [hl], h                                    ; $706C: $74
    jr nz, jr_025_70D1                            ; $706D: $20 $62

    ld h, l                                       ; $706F: $65
    jr nz, jr_025_70D9                            ; $7070: $20 $67

    ld l, a                                       ; $7072: $6F
    ld l, c                                       ; $7073: $69

jr_025_7074:
    ld l, [hl]                                    ; $7074: $6E
    daa                                           ; $7075: $27
    rst $38                                       ; $7076: $FF
    db $FD                                        ; $7077: $FD
    sbc d                                         ; $7078: $9A

jr_025_7079:
    ld e, b                                       ; $7079: $58

jr_025_707A:
    ld bc, $289B                                  ; $707A: $01 $9B $28
    ld b, e                                       ; $707D: $43
    sbc a                                         ; $707E: $9F
    ld d, e                                       ; $707F: $53
    ld h, l                                       ; $7080: $65
    ld h, l                                       ; $7081: $65
    jr nz, jr_025_70FD                            ; $7082: $20 $79

    ld l, a                                       ; $7084: $6F
    ld [hl], l                                    ; $7085: $75
    jr nz, jr_025_70F4                            ; $7086: $20 $6C

    ld h, c                                       ; $7088: $61
    ld [hl], h                                    ; $7089: $74
    ld h, l                                       ; $708A: $65
    ld [hl], d                                    ; $708B: $72
    ld hl, $FE2E                                  ; $708C: $21 $2E $FE
    db $FD                                        ; $708F: $FD
    sbc d                                         ; $7090: $9A
    ld e, b                                       ; $7091: $58
    ld [bc], a                                    ; $7092: $02
    ld b, d                                       ; $7093: $42
    xor h                                         ; $7094: $AC
    or d                                          ; $7095: $B2
    and d                                         ; $7096: $A2
    ld bc, $0593                                  ; $7097: $01 $93 $05
    nop                                           ; $709A: $00
    ld b, c                                       ; $709B: $41
    ld e, e                                       ; $709C: $5B

jr_025_709D:
    dec h                                         ; $709D: $25
    inc hl                                        ; $709E: $23
    rst $08                                       ; $709F: $CF
    jp c, $2000                                   ; $70A0: $DA $00 $20

    rst $08                                       ; $70A3: $CF

jr_025_70A4:
    ld e, e                                       ; $70A4: $5B
    ld [hl+], a                                   ; $70A5: $22
    dec b                                         ; $70A6: $05
    ld b, b                                       ; $70A7: $40

jr_025_70A8:
    ld h, l                                       ; $70A8: $65
    db $D4, $4D, $4F
    ld h, h                                       ; $70AC: $64
    ld bc, $6652                                  ; $70AD: $01 $52 $66
    ret nz                                        ; $70B0: $C0

    ld e, h                                       ; $70B1: $5C

jr_025_70B2:
    ld hl, $0305                                  ; $70B2: $21 $05 $03

jr_025_70B5:
    ld l, e                                       ; $70B5: $6B
    ld c, d                                       ; $70B6: $4A
    ld b, $1F                                     ; $70B7: $06 $1F
    ld a, b                                       ; $70B9: $78
    reti                                          ; $70BA: $D9


    nop                                           ; $70BB: $00
    ld de, $7039                                  ; $70BC: $11 $39 $70
    ld [hl+], a                                   ; $70BF: $22
    inc b                                         ; $70C0: $04
    ld b, b                                       ; $70C1: $40
    dec b                                         ; $70C2: $05
    inc b                                         ; $70C3: $04
    ld l, e                                       ; $70C4: $6B

jr_025_70C5:
    ld c, d                                       ; $70C5: $4A
    db $10                                        ; $70C6: $10
    rra                                           ; $70C7: $1F
    add d                                         ; $70C8: $82
    reti                                          ; $70C9: $D9


    nop                                           ; $70CA: $00
    ld de, $7039                                  ; $70CB: $11 $39 $70
    ld [hl+], a                                   ; $70CE: $22
    inc b                                         ; $70CF: $04
    ld b, b                                       ; $70D0: $40

jr_025_70D1:
    dec b                                         ; $70D1: $05
    dec b                                         ; $70D2: $05
    ld l, e                                       ; $70D3: $6B
    ld c, d                                       ; $70D4: $4A
    ld hl, $5B1B                                  ; $70D5: $21 $1B $5B
    ret c                                         ; $70D8: $D8

jr_025_70D9:
    nop                                           ; $70D9: $00
    ld de, $7039                                  ; $70DA: $11 $39 $70
    ld [hl+], a                                   ; $70DD: $22

jr_025_70DE:
    inc b                                         ; $70DE: $04
    ld b, b                                       ; $70DF: $40
    dec b                                         ; $70E0: $05
    ld b, $6B                                     ; $70E1: $06 $6B
    ld c, d                                       ; $70E3: $4A
    jr z, @+$1D                                   ; $70E4: $28 $1B

    ld h, d                                       ; $70E6: $62
    ret c                                         ; $70E7: $D8

    nop                                           ; $70E8: $00
    ld de, $7039                                  ; $70E9: $11 $39 $70
    ld [hl+], a                                   ; $70EC: $22
    inc b                                         ; $70ED: $04
    ld b, b                                       ; $70EE: $40
    dec b                                         ; $70EF: $05
    rlca                                          ; $70F0: $07
    ld l, e                                       ; $70F1: $6B
    ld c, d                                       ; $70F2: $4A
    rra                                           ; $70F3: $1F

jr_025_70F4:
    inc d                                         ; $70F4: $14
    scf                                           ; $70F5: $37
    sub $00                                       ; $70F6: $D6 $00
    ld de, $7039                                  ; $70F8: $11 $39 $70
    ld [hl+], a                                   ; $70FB: $22
    inc b                                         ; $70FC: $04

jr_025_70FD:
    ld b, b                                       ; $70FD: $40
    dec b                                         ; $70FE: $05
    ld [$4A6B], sp                                ; $70FF: $08 $6B $4A
    dec hl                                        ; $7102: $2B
    inc d                                         ; $7103: $14
    ld b, e                                       ; $7104: $43
    sub $00                                       ; $7105: $D6 $00
    ld de, $7039                                  ; $7107: $11 $39 $70
    ld [hl+], a                                   ; $710A: $22
    inc b                                         ; $710B: $04
    ld b, b                                       ; $710C: $40
    dec bc                                        ; $710D: $0B
    inc bc                                        ; $710E: $03
    dec bc                                        ; $710F: $0B
    inc b                                         ; $7110: $04
    dec bc                                        ; $7111: $0B
    dec b                                         ; $7112: $05
    dec bc                                        ; $7113: $0B
    ld b, $0B                                     ; $7114: $06 $0B
    rlca                                          ; $7116: $07
    dec bc                                        ; $7117: $0B
    ld [$036B], sp                                ; $7118: $08 $6B $03
    dec c                                         ; $711B: $0D
    ld d, b                                       ; $711C: $50
    ld [hl], e                                    ; $711D: $73
    nop                                           ; $711E: $00
    add b                                         ; $711F: $80
    nop                                           ; $7120: $00
    dec bc                                        ; $7121: $0B
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    add d                                         ; $7124: $82
    rra                                           ; $7125: $1F
    ld c, $94                                     ; $7126: $0E $94
    ld b, d                                       ; $7128: $42
    xor h                                         ; $7129: $AC
    or d                                          ; $712A: $B2
    and d                                         ; $712B: $A2
    ld bc, $6593                                  ; $712C: $01 $93 $65
    db $D4, $4D, $4F
    ld h, h                                       ; $7132: $64
    ld bc, $6652                                  ; $7133: $01 $52 $66
    ret nz                                        ; $7136: $C0

    ld e, h                                       ; $7137: $5C
    ld hl, $0305                                  ; $7138: $21 $05 $03
    ld l, e                                       ; $713B: $6B
    ld c, d                                       ; $713C: $4A
    ld b, $1F                                     ; $713D: $06 $1F
    ld a, b                                       ; $713F: $78
    reti                                          ; $7140: $D9


    nop                                           ; $7141: $00
    ld de, $7039                                  ; $7142: $11 $39 $70
    ld [hl+], a                                   ; $7145: $22
    inc b                                         ; $7146: $04
    ld b, b                                       ; $7147: $40
    dec b                                         ; $7148: $05
    inc b                                         ; $7149: $04
    ld l, e                                       ; $714A: $6B
    ld c, d                                       ; $714B: $4A
    db $10                                        ; $714C: $10
    rra                                           ; $714D: $1F
    add d                                         ; $714E: $82
    reti                                          ; $714F: $D9


    nop                                           ; $7150: $00
    ld de, $7039                                  ; $7151: $11 $39 $70
    ld [hl+], a                                   ; $7154: $22
    inc b                                         ; $7155: $04
    ld b, b                                       ; $7156: $40
    dec b                                         ; $7157: $05
    dec b                                         ; $7158: $05
    ld l, e                                       ; $7159: $6B
    ld c, d                                       ; $715A: $4A
    ld hl, $5B1B                                  ; $715B: $21 $1B $5B
    ret c                                         ; $715E: $D8

    nop                                           ; $715F: $00
    ld de, $7039                                  ; $7160: $11 $39 $70
    ld [hl+], a                                   ; $7163: $22
    inc b                                         ; $7164: $04
    ld b, b                                       ; $7165: $40
    dec b                                         ; $7166: $05
    ld b, $6B                                     ; $7167: $06 $6B
    ld c, d                                       ; $7169: $4A
    jr z, @+$1D                                   ; $716A: $28 $1B

    ld h, d                                       ; $716C: $62
    ret c                                         ; $716D: $D8

    nop                                           ; $716E: $00
    ld de, $7039                                  ; $716F: $11 $39 $70
    ld [hl+], a                                   ; $7172: $22
    inc b                                         ; $7173: $04
    ld b, b                                       ; $7174: $40
    dec b                                         ; $7175: $05
    rlca                                          ; $7176: $07
    ld l, e                                       ; $7177: $6B
    ld c, d                                       ; $7178: $4A
    rra                                           ; $7179: $1F
    inc d                                         ; $717A: $14
    scf                                           ; $717B: $37
    sub $00                                       ; $717C: $D6 $00
    ld de, $7039                                  ; $717E: $11 $39 $70
    ld [hl+], a                                   ; $7181: $22
    inc b                                         ; $7182: $04
    ld b, b                                       ; $7183: $40
    dec b                                         ; $7184: $05
    ld [$4A6B], sp                                ; $7185: $08 $6B $4A
    dec hl                                        ; $7188: $2B
    inc d                                         ; $7189: $14
    ld b, e                                       ; $718A: $43
    sub $00                                       ; $718B: $D6 $00
    ld de, $7039                                  ; $718D: $11 $39 $70
    ld [hl+], a                                   ; $7190: $22
    inc b                                         ; $7191: $04
    ld b, b                                       ; $7192: $40
    dec bc                                        ; $7193: $0B
    inc bc                                        ; $7194: $03
    dec bc                                        ; $7195: $0B
    inc b                                         ; $7196: $04
    dec bc                                        ; $7197: $0B
    dec b                                         ; $7198: $05
    dec bc                                        ; $7199: $0B
    ld b, $0B                                     ; $719A: $06 $0B
    rlca                                          ; $719C: $07
    dec bc                                        ; $719D: $0B
    ld [$036B], sp                                ; $719E: $08 $6B $03
    dec c                                         ; $71A1: $0D
    ld d, b                                       ; $71A2: $50
    ld [hl], e                                    ; $71A3: $73
    nop                                           ; $71A4: $00
    add b                                         ; $71A5: $80
    nop                                           ; $71A6: $00
    dec bc                                        ; $71A7: $0B
    nop                                           ; $71A8: $00
    add d                                         ; $71A9: $82
    rra                                           ; $71AA: $1F
    ld c, $6F                                     ; $71AB: $0E $6F
    rrca                                          ; $71AD: $0F
    rst $38                                       ; $71AE: $FF
    ld a, a                                       ; $71AF: $7F
    sub h                                         ; $71B0: $94
    halt                                          ; $71B1: $76
    jr nz, jr_025_71C3                            ; $71B2: $20 $0F

    ld b, d                                       ; $71B4: $42
    sub e                                         ; $71B5: $93
    ld h, l                                       ; $71B6: $65
    db $E3                                        ; $71B7: $E3
    ld c, l                                       ; $71B8: $4D
    ld c, a                                       ; $71B9: $4F
    ld h, h                                       ; $71BA: $64
    ld bc, $6652                                  ; $71BB: $01 $52 $66
    ret nz                                        ; $71BE: $C0

    ld e, h                                       ; $71BF: $5C
    ld hl, $0005                                  ; $71C0: $21 $05 $00

jr_025_71C3:
    ld l, e                                       ; $71C3: $6B
    ld c, d                                       ; $71C4: $4A
    dec h                                         ; $71C5: $25
    rra                                           ; $71C6: $1F
    sub a                                         ; $71C7: $97
    reti                                          ; $71C8: $D9


    nop                                           ; $71C9: $00
    dec h                                         ; $71CA: $25
    ld de, $2272                                  ; $71CB: $11 $72 $22
    dec b                                         ; $71CE: $05
    ld b, b                                       ; $71CF: $40
    dec b                                         ; $71D0: $05
    ld [bc], a                                    ; $71D1: $02
    ld l, e                                       ; $71D2: $6B
    ld c, d                                       ; $71D3: $4A
    dec h                                         ; $71D4: $25
    ld d, $D9                                     ; $71D5: $16 $D9
    sub $30                                       ; $71D7: $D6 $30
    dec h                                         ; $71D9: $25
    rra                                           ; $71DA: $1F
    ld [hl], e                                    ; $71DB: $73
    ld [hl+], a                                   ; $71DC: $22
    dec b                                         ; $71DD: $05
    ld b, b                                       ; $71DE: $40
    dec b                                         ; $71DF: $05
    inc bc                                        ; $71E0: $03
    ld l, e                                       ; $71E1: $6B
    ld c, d                                       ; $71E2: $4A
    dec h                                         ; $71E3: $25
    ld d, $D9                                     ; $71E4: $16 $D9
    sub $52                                       ; $71E6: $D6 $52
    dec h                                         ; $71E8: $25
    sbc l                                         ; $71E9: $9D
    ld [hl], e                                    ; $71EA: $73
    ld [hl+], a                                   ; $71EB: $22
    dec b                                         ; $71EC: $05
    ld b, b                                       ; $71ED: $40
    dec bc                                        ; $71EE: $0B
    nop                                           ; $71EF: $00
    ld l, e                                       ; $71F0: $6B
    jr nc, jr_025_71FD                            ; $71F1: $30 $0A

    ld [hl], b                                    ; $71F3: $70
    ld b, h                                       ; $71F4: $44
    nop                                           ; $71F5: $00
    add b                                         ; $71F6: $80
    nop                                           ; $71F7: $00
    ld l, e                                       ; $71F8: $6B
    ld [hl+], a                                   ; $71F9: $22
    ld a, [bc]                                    ; $71FA: $0A
    ld d, b                                       ; $71FB: $50
    ld l, c                                       ; $71FC: $69

jr_025_71FD:
    nop                                           ; $71FD: $00
    add e                                         ; $71FE: $83
    nop                                           ; $71FF: $00
    ld l, e                                       ; $7200: $6B
    ld a, [hl+]                                   ; $7201: $2A
    inc c                                         ; $7202: $0C
    nop                                           ; $7203: $00
    ld h, l                                       ; $7204: $65
    jr nz, @-$79                                  ; $7205: $20 $85

    nop                                           ; $7207: $00
    add d                                         ; $7208: $82
    sub h                                         ; $7209: $94
    ld h, b                                       ; $720A: $60
    ld bc, $1A45                                  ; $720B: $01 $45 $1A
    ret nz                                        ; $720E: $C0

    ld e, b                                       ; $720F: $58
    ld b, d                                       ; $7210: $42
    dec d                                         ; $7211: $15
    ld c, $8F                                     ; $7212: $0E $8F
    ld c, e                                       ; $7214: $4B
    ld h, b                                       ; $7215: $60
    ld c, $C1                                     ; $7216: $0E $C1
    ld c, e                                       ; $7218: $4B
    inc b                                         ; $7219: $04
    ld c, $99                                     ; $721A: $0E $99
    ld c, e                                       ; $721C: $4B
    db $10                                        ; $721D: $10
    ld c, $25                                     ; $721E: $0E $25
    ld c, e                                       ; $7220: $4B
    jr nc, jr_025_7231                            ; $7221: $30 $0E

    sbc c                                         ; $7223: $99
    ld c, e                                       ; $7224: $4B
    db $10                                        ; $7225: $10
    ld c, $C1                                     ; $7226: $0E $C1
    ld c, e                                       ; $7228: $4B
    inc b                                         ; $7229: $04
    ld c, $8F                                     ; $722A: $0E $8F
    ld c, e                                       ; $722C: $4B
    ld b, b                                       ; $722D: $40
    ld c, $CB                                     ; $722E: $0E $CB
    ld c, e                                       ; $7230: $4B

jr_025_7231:
    inc b                                         ; $7231: $04
    ld c, $A3                                     ; $7232: $0E $A3
    ld c, e                                       ; $7234: $4B
    db $10                                        ; $7235: $10
    ld c, $35                                     ; $7236: $0E $35
    ld c, e                                       ; $7238: $4B
    ld h, b                                       ; $7239: $60
    ld c, $A3                                     ; $723A: $0E $A3
    ld c, e                                       ; $723C: $4B
    db $10                                        ; $723D: $10
    ld c, $CB                                     ; $723E: $0E $CB
    ld c, e                                       ; $7240: $4B
    inc b                                         ; $7241: $04
    ld c, $8F                                     ; $7242: $0E $8F
    ld c, e                                       ; $7244: $4B
    ld b, b                                       ; $7245: $40
    nop                                           ; $7246: $00
    ld e, d                                       ; $7247: $5A
    dec hl                                        ; $7248: $2B
    ld d, l                                       ; $7249: $55
    ld h, c                                       ; $724A: $61
    dec d                                         ; $724B: $15
    ld c, $C1                                     ; $724C: $0E $C1
    ld c, e                                       ; $724E: $4B
    inc b                                         ; $724F: $04
    ld c, $99                                     ; $7250: $0E $99
    ld c, e                                       ; $7252: $4B
    db $10                                        ; $7253: $10
    ld c, $25                                     ; $7254: $0E $25
    ld c, e                                       ; $7256: $4B
    jr nc, jr_025_7267                            ; $7257: $30 $0E

    sbc c                                         ; $7259: $99
    ld c, e                                       ; $725A: $4B
    db $10                                        ; $725B: $10
    ld c, $C1                                     ; $725C: $0E $C1
    ld c, e                                       ; $725E: $4B
    inc b                                         ; $725F: $04
    ld c, $8F                                     ; $7260: $0E $8F
    ld c, e                                       ; $7262: $4B
    ld b, b                                       ; $7263: $40
    nop                                           ; $7264: $00
    dec bc                                        ; $7265: $0B
    ld [bc], a                                    ; $7266: $02

jr_025_7267:
    dec d                                         ; $7267: $15
    ld c, $C1                                     ; $7268: $0E $C1
    ld c, e                                       ; $726A: $4B
    ld b, b                                       ; $726B: $40
    nop                                           ; $726C: $00
    ld e, d                                       ; $726D: $5A
    dec hl                                        ; $726E: $2B
    ld h, b                                       ; $726F: $60
    ld h, c                                       ; $7270: $61
    dec d                                         ; $7271: $15
    ld c, $8F                                     ; $7272: $0E $8F
    ld c, e                                       ; $7274: $4B
    ld b, b                                       ; $7275: $40
    ld c, $CB                                     ; $7276: $0E $CB
    ld c, e                                       ; $7278: $4B
    ld b, b                                       ; $7279: $40
    ld c, $8F                                     ; $727A: $0E $8F
    ld c, e                                       ; $727C: $4B
    ld b, b                                       ; $727D: $40
    nop                                           ; $727E: $00
    ld e, h                                       ; $727F: $5C
    nop                                           ; $7280: $00
    ld [bc], a                                    ; $7281: $02
    dec d                                         ; $7282: $15
    ld c, $A3                                     ; $7283: $0E $A3
    ld c, e                                       ; $7285: $4B
    ld [$850E], sp                                ; $7286: $08 $0E $85
    ld c, e                                       ; $7289: $4B
    jr nz, jr_025_729A                            ; $728A: $20 $0E

    dec b                                         ; $728C: $05
    ld c, e                                       ; $728D: $4B
    jr nc, jr_025_729E                            ; $728E: $30 $0E

    add l                                         ; $7290: $85
    ld c, e                                       ; $7291: $4B
    inc l                                         ; $7292: $2C
    ld c, $B7                                     ; $7293: $0E $B7
    ld c, e                                       ; $7295: $4B
    db $10                                        ; $7296: $10
    ld c, $05                                     ; $7297: $0E $05
    ld c, e                                       ; $7299: $4B

jr_025_729A:
    db $10                                        ; $729A: $10
    ld c, $B7                                     ; $729B: $0E $B7
    ld c, e                                       ; $729D: $4B

jr_025_729E:
    inc b                                         ; $729E: $04
    ld c, $A3                                     ; $729F: $0E $A3
    ld c, e                                       ; $72A1: $4B
    ld b, b                                       ; $72A2: $40
    nop                                           ; $72A3: $00
    dec bc                                        ; $72A4: $0B
    inc bc                                        ; $72A5: $03
    ld e, h                                       ; $72A6: $5C
    ld bc, $1503                                  ; $72A7: $01 $03 $15
    ld c, $A3                                     ; $72AA: $0E $A3
    ld c, e                                       ; $72AC: $4B
    jr nz, jr_025_72BD                            ; $72AD: $20 $0E

    add l                                         ; $72AF: $85
    ld c, e                                       ; $72B0: $4B
    db $10                                        ; $72B1: $10
    ld c, $A3                                     ; $72B2: $0E $A3
    ld c, e                                       ; $72B4: $4B
    jr nz, jr_025_72C5                            ; $72B5: $20 $0E

    ld d, l                                       ; $72B7: $55
    ld c, e                                       ; $72B8: $4B
    ld [$850E], sp                                ; $72B9: $08 $0E $85
    ld c, e                                       ; $72BC: $4B

jr_025_72BD:
    ld h, b                                       ; $72BD: $60
    ld c, $05                                     ; $72BE: $0E $05
    ld c, e                                       ; $72C0: $4B
    ld [$850E], sp                                ; $72C1: $08 $0E $85
    ld c, e                                       ; $72C4: $4B

jr_025_72C5:
    db $10                                        ; $72C5: $10
    ld c, $05                                     ; $72C6: $0E $05
    ld c, e                                       ; $72C8: $4B
    ld [$850E], sp                                ; $72C9: $08 $0E $85
    ld c, e                                       ; $72CC: $4B
    ld b, b                                       ; $72CD: $40
    ld c, $B7                                     ; $72CE: $0E $B7
    ld c, e                                       ; $72D0: $4B
    inc b                                         ; $72D1: $04
    ld c, $A3                                     ; $72D2: $0E $A3
    ld c, e                                       ; $72D4: $4B
    ld b, b                                       ; $72D5: $40
    ld c, $85                                     ; $72D6: $0E $85
    ld c, e                                       ; $72D8: $4B
    ld b, b                                       ; $72D9: $40
    nop                                           ; $72DA: $00
    ld e, h                                       ; $72DB: $5C
    ld [bc], a                                    ; $72DC: $02
    ld [bc], a                                    ; $72DD: $02
    dec d                                         ; $72DE: $15
    ld c, $55                                     ; $72DF: $0E $55
    ld c, e                                       ; $72E1: $4B
    ld [$750E], sp                                ; $72E2: $08 $0E $75
    ld c, e                                       ; $72E5: $4B
    ld [$550E], sp                                ; $72E6: $08 $0E $55
    ld c, e                                       ; $72E9: $4B
    db $10                                        ; $72EA: $10
    ld c, $65                                     ; $72EB: $0E $65
    ld c, e                                       ; $72ED: $4B
    db $10                                        ; $72EE: $10
    ld c, $45                                     ; $72EF: $0E $45
    ld c, e                                       ; $72F1: $4B
    db $10                                        ; $72F2: $10
    ld c, $75                                     ; $72F3: $0E $75
    ld c, e                                       ; $72F5: $4B
    db $10                                        ; $72F6: $10
    ld c, $55                                     ; $72F7: $0E $55
    ld c, e                                       ; $72F9: $4B
    db $10                                        ; $72FA: $10
    ld c, $65                                     ; $72FB: $0E $65
    ld c, e                                       ; $72FD: $4B
    db $10                                        ; $72FE: $10
    ld c, $45                                     ; $72FF: $0E $45
    ld c, e                                       ; $7301: $4B
    db $10                                        ; $7302: $10
    ld c, $75                                     ; $7303: $0E $75
    ld c, e                                       ; $7305: $4B
    ld [$550E], sp                                ; $7306: $08 $0E $55
    ld c, e                                       ; $7309: $4B
    ld [$650E], sp                                ; $730A: $08 $0E $65
    ld c, e                                       ; $730D: $4B
    ld [$750E], sp                                ; $730E: $08 $0E $75
    ld c, e                                       ; $7311: $4B
    db $10                                        ; $7312: $10
    ld c, $65                                     ; $7313: $0E $65
    ld c, e                                       ; $7315: $4B
    db $10                                        ; $7316: $10
    ld c, $75                                     ; $7317: $0E $75
    ld c, e                                       ; $7319: $4B
    ld [$5600], sp                                ; $731A: $08 $00 $56
    ld bc, $1542                                  ; $731D: $01 $42 $15
    rrca                                          ; $7320: $0F
    and b                                         ; $7321: $A0
    ld b, c                                       ; $7322: $41
    db $10                                        ; $7323: $10
    rrca                                          ; $7324: $0F
    ld a, [de]                                    ; $7325: $1A
    ld b, d                                       ; $7326: $42
    jr nz, @+$11                                  ; $7327: $20 $0F

    ld d, [hl]                                    ; $7329: $56
    ld b, d                                       ; $732A: $42
    inc b                                         ; $732B: $04
    rrca                                          ; $732C: $0F
    ld l, $42                                     ; $732D: $2E $42
    inc b                                         ; $732F: $04
    rrca                                          ; $7330: $0F
    ld b, d                                       ; $7331: $42
    ld b, d                                       ; $7332: $42
    inc b                                         ; $7333: $04
    rrca                                          ; $7334: $0F
    db $10                                        ; $7335: $10
    ld b, d                                       ; $7336: $42
    jr nz, jr_025_7348                            ; $7337: $20 $0F

    ld l, $42                                     ; $7339: $2E $42
    ld [$A00F], sp                                ; $733B: $08 $0F $A0
    ld b, c                                       ; $733E: $41
    ld b, b                                       ; $733F: $40
    rrca                                          ; $7340: $0F
    ld a, [de]                                    ; $7341: $1A
    ld b, d                                       ; $7342: $42
    stop                                          ; $7343: $10 $00
    ld e, h                                       ; $7345: $5C
    nop                                           ; $7346: $00
    ld [bc], a                                    ; $7347: $02

jr_025_7348:
    dec d                                         ; $7348: $15
    rrca                                          ; $7349: $0F
    ld a, [de]                                    ; $734A: $1A
    ld b, d                                       ; $734B: $42
    add b                                         ; $734C: $80
    rrca                                          ; $734D: $0F
    ret nz                                        ; $734E: $C0

    ld b, c                                       ; $734F: $41
    db $10                                        ; $7350: $10
    rrca                                          ; $7351: $0F
    ld b, d                                       ; $7352: $42
    ld b, d                                       ; $7353: $42
    inc b                                         ; $7354: $04
    rrca                                          ; $7355: $0F
    db $10                                        ; $7356: $10
    ld b, d                                       ; $7357: $42
    jr nz, jr_025_7369                            ; $7358: $20 $0F

    jr c, jr_025_739E                             ; $735A: $38 $42

    inc b                                         ; $735C: $04
    rrca                                          ; $735D: $0F
    inc h                                         ; $735E: $24
    ld b, d                                       ; $735F: $42
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    ld e, h                                       ; $7362: $5C
    ld bc, $1503                                  ; $7363: $01 $03 $15
    rrca                                          ; $7366: $0F
    inc h                                         ; $7367: $24
    ld b, d                                       ; $7368: $42

jr_025_7369:
    ld d, h                                       ; $7369: $54
    rrca                                          ; $736A: $0F
    ld c, h                                       ; $736B: $4C
    ld b, d                                       ; $736C: $42
    ld a, h                                       ; $736D: $7C
    rrca                                          ; $736E: $0F
    inc h                                         ; $736F: $24
    ld b, d                                       ; $7370: $42
    db $10                                        ; $7371: $10
    rrca                                          ; $7372: $0F
    jr c, jr_025_73B7                             ; $7373: $38 $42

    jr nz, jr_025_7386                            ; $7375: $20 $0F

    inc h                                         ; $7377: $24
    ld b, d                                       ; $7378: $42
    nop                                           ; $7379: $00
    nop                                           ; $737A: $00
    ld e, h                                       ; $737B: $5C
    ld [bc], a                                    ; $737C: $02
    inc bc                                        ; $737D: $03
    dec d                                         ; $737E: $15
    rrca                                          ; $737F: $0F
    ld c, h                                       ; $7380: $4C
    ld b, d                                       ; $7381: $42
    ld [$1A0F], sp                                ; $7382: $08 $0F $1A
    ld b, d                                       ; $7385: $42

jr_025_7386:
    jr @+$11                                      ; $7386: $18 $0F

    ld c, h                                       ; $7388: $4C
    ld b, d                                       ; $7389: $42
    jr jr_025_739B                                ; $738A: $18 $0F

    ld a, [de]                                    ; $738C: $1A
    ld b, d                                       ; $738D: $42
    jr jr_025_739F                                ; $738E: $18 $0F

    ld c, h                                       ; $7390: $4C
    ld b, d                                       ; $7391: $42
    ld [$240F], sp                                ; $7392: $08 $0F $24
    ld b, d                                       ; $7395: $42
    ld [$380F], sp                                ; $7396: $08 $0F $38
    ld b, d                                       ; $7399: $42
    nop                                           ; $739A: $00

jr_025_739B:
    nop                                           ; $739B: $00
    ld b, d                                       ; $739C: $42
    dec d                                         ; $739D: $15

jr_025_739E:
    db $10                                        ; $739E: $10

jr_025_739F:
    rst $10                                       ; $739F: $D7
    ld a, e                                       ; $73A0: $7B
    ld b, b                                       ; $73A1: $40
    db $10                                        ; $73A2: $10
    ld d, c                                       ; $73A3: $51
    ld a, h                                       ; $73A4: $7C
    jr nz, jr_025_73A7                            ; $73A5: $20 $00

jr_025_73A7:
    ld e, h                                       ; $73A7: $5C
    ld bc, $5C03                                  ; $73A8: $01 $03 $5C
    ld [bc], a                                    ; $73AB: $02
    inc bc                                        ; $73AC: $03
    dec d                                         ; $73AD: $15
    db $10                                        ; $73AE: $10
    ld d, c                                       ; $73AF: $51
    ld a, h                                       ; $73B0: $7C
    ld h, b                                       ; $73B1: $60
    db $10                                        ; $73B2: $10
    adc l                                         ; $73B3: $8D
    ld a, h                                       ; $73B4: $7C
    nop                                           ; $73B5: $00
    nop                                           ; $73B6: $00

jr_025_73B7:
    ld b, d                                       ; $73B7: $42
    xor h                                         ; $73B8: $AC
    or d                                          ; $73B9: $B2
    and d                                         ; $73BA: $A2
    ld bc, $12A9                                  ; $73BB: $01 $A9 $12
    nop                                           ; $73BE: $00
    xor h                                         ; $73BF: $AC
    inc h                                         ; $73C0: $24
    and d                                         ; $73C1: $A2
    nop                                           ; $73C2: $00
    sub e                                         ; $73C3: $93
    ld h, l                                       ; $73C4: $65
    db $D4, $4D, $4F
    ld h, h                                       ; $73C8: $64
    ld bc, $6652                                  ; $73C9: $01 $52 $66
    ret nz                                        ; $73CC: $C0

    ld e, h                                       ; $73CD: $5C
    ld hl, $0005                                  ; $73CE: $21 $05 $00
    ld l, e                                       ; $73D1: $6B
    ld c, d                                       ; $73D2: $4A
    ld h, $32                                     ; $73D3: $26 $32
    ld h, d                                       ; $73D5: $62
    rst $18                                       ; $73D6: $DF
    nop                                           ; $73D7: $00
    dec h                                         ; $73D8: $25
    ld l, h                                       ; $73D9: $6C
    ld [hl], h                                    ; $73DA: $74
    ld [hl+], a                                   ; $73DB: $22
    inc b                                         ; $73DC: $04
    ld b, b                                       ; $73DD: $40
    dec b                                         ; $73DE: $05
    ld [bc], a                                    ; $73DF: $02
    ld l, e                                       ; $73E0: $6B
    ld c, d                                       ; $73E1: $4A
    inc h                                         ; $73E2: $24
    ld [hl-], a                                   ; $73E3: $32
    ld h, b                                       ; $73E4: $60
    rst $18                                       ; $73E5: $DF
    nop                                           ; $73E6: $00
    dec h                                         ; $73E7: $25
    ld a, a                                       ; $73E8: $7F
    ld [hl], h                                    ; $73E9: $74
    ld [hl+], a                                   ; $73EA: $22
    inc b                                         ; $73EB: $04
    ld b, b                                       ; $73EC: $40
    dec b                                         ; $73ED: $05
    inc bc                                        ; $73EE: $03
    ld l, e                                       ; $73EF: $6B
    ld c, d                                       ; $73F0: $4A
    ld b, $1F                                     ; $73F1: $06 $1F
    ld a, b                                       ; $73F3: $78
    reti                                          ; $73F4: $D9


    dec d                                         ; $73F5: $15
    ld de, $7039                                  ; $73F6: $11 $39 $70
    ld [hl+], a                                   ; $73F9: $22
    inc b                                         ; $73FA: $04
    ld b, b                                       ; $73FB: $40
    dec b                                         ; $73FC: $05
    inc b                                         ; $73FD: $04
    ld l, e                                       ; $73FE: $6B
    ld c, d                                       ; $73FF: $4A
    db $10                                        ; $7400: $10
    rra                                           ; $7401: $1F
    add d                                         ; $7402: $82
    reti                                          ; $7403: $D9


    dec d                                         ; $7404: $15
    ld de, $7039                                  ; $7405: $11 $39 $70
    ld [hl+], a                                   ; $7408: $22
    inc b                                         ; $7409: $04
    ld b, b                                       ; $740A: $40
    dec b                                         ; $740B: $05
    dec b                                         ; $740C: $05
    ld l, e                                       ; $740D: $6B
    ld c, d                                       ; $740E: $4A
    ld hl, $5B1B                                  ; $740F: $21 $1B $5B
    ret c                                         ; $7412: $D8

    dec d                                         ; $7413: $15
    ld de, $7039                                  ; $7414: $11 $39 $70
    ld [hl+], a                                   ; $7417: $22
    inc b                                         ; $7418: $04
    ld b, b                                       ; $7419: $40
    dec b                                         ; $741A: $05
    ld b, $6B                                     ; $741B: $06 $6B
    ld c, d                                       ; $741D: $4A
    jr z, @+$1D                                   ; $741E: $28 $1B

    ld h, d                                       ; $7420: $62
    ret c                                         ; $7421: $D8

    dec d                                         ; $7422: $15
    ld de, $7039                                  ; $7423: $11 $39 $70
    ld [hl+], a                                   ; $7426: $22
    inc b                                         ; $7427: $04
    ld b, b                                       ; $7428: $40
    dec b                                         ; $7429: $05
    rlca                                          ; $742A: $07
    ld l, e                                       ; $742B: $6B
    ld c, d                                       ; $742C: $4A
    rra                                           ; $742D: $1F
    inc d                                         ; $742E: $14
    scf                                           ; $742F: $37
    sub $15                                       ; $7430: $D6 $15
    ld de, $7039                                  ; $7432: $11 $39 $70
    ld [hl+], a                                   ; $7435: $22
    inc b                                         ; $7436: $04
    ld b, b                                       ; $7437: $40
    dec b                                         ; $7438: $05
    ld [$4A6B], sp                                ; $7439: $08 $6B $4A

jr_025_743C:
    dec hl                                        ; $743C: $2B
    inc d                                         ; $743D: $14
    ld b, e                                       ; $743E: $43
    sub $15                                       ; $743F: $D6 $15
    ld de, $7039                                  ; $7441: $11 $39 $70
    ld [hl+], a                                   ; $7444: $22
    inc b                                         ; $7445: $04
    ld b, b                                       ; $7446: $40
    dec bc                                        ; $7447: $0B
    inc bc                                        ; $7448: $03
    dec bc                                        ; $7449: $0B
    inc b                                         ; $744A: $04
    dec bc                                        ; $744B: $0B
    dec b                                         ; $744C: $05
    dec bc                                        ; $744D: $0B
    ld b, $0B                                     ; $744E: $06 $0B
    rlca                                          ; $7450: $07
    dec bc                                        ; $7451: $0B
    ld [$156B], sp                                ; $7452: $08 $6B $15
    inc h                                         ; $7455: $24
    nop                                           ; $7456: $00
    ld b, [hl]                                    ; $7457: $46
    nop                                           ; $7458: $00
    add b                                         ; $7459: $80
    nop                                           ; $745A: $00
    ld l, e                                       ; $745B: $6B

jr_025_745C:
    inc bc                                        ; $745C: $03
    dec c                                         ; $745D: $0D
    ld d, b                                       ; $745E: $50
    ld [hl], e                                    ; $745F: $73
    ld d, b                                       ; $7460: $50
    add c                                         ; $7461: $81
    nop                                           ; $7462: $00
    dec bc                                        ; $7463: $0B
    nop                                           ; $7464: $00
    dec bc                                        ; $7465: $0B
    ld [bc], a                                    ; $7466: $02
    add d                                         ; $7467: $82
    rra                                           ; $7468: $1F
    ld c, $94                                     ; $7469: $0E $94
    ld b, d                                       ; $746B: $42
    dec d                                         ; $746C: $15
    jr nz, jr_025_7498                            ; $746D: $20 $29

    ld e, e                                       ; $746F: $5B
    jr jr_025_7492                                ; $7470: $18 $20

    rst $18                                       ; $7472: $DF
    ld e, e                                       ; $7473: $5B
    nop                                           ; $7474: $00
    nop                                           ; $7475: $00
    ld h, d                                       ; $7476: $62
    ld bc, $2040                                  ; $7477: $01 $40 $20
    inc d                                         ; $747A: $14
    jr nz, jr_025_743C                            ; $747B: $20 $BF

    ld e, e                                       ; $747D: $5B
    ld b, d                                       ; $747E: $42
    dec d                                         ; $747F: $15
    ld c, $FD                                     ; $7480: $0E $FD
    ld c, a                                       ; $7482: $4F
    jr jr_025_7493                                ; $7483: $18 $0E

    db $DD                                        ; $7485: $DD
    ld c, a                                       ; $7486: $4F
    jr jr_025_7489                                ; $7487: $18 $00

jr_025_7489:
    ld e, e                                       ; $7489: $5B
    dec h                                         ; $748A: $25
    xor l                                         ; $748B: $AD
    ld l, d                                       ; $748C: $6A
    ld h, d                                       ; $748D: $62
    ld bc, $0E15                                  ; $748E: $01 $15 $0E
    db $FD                                        ; $7491: $FD

jr_025_7492:
    ld c, a                                       ; $7492: $4F

jr_025_7493:
    ld [hl-], a                                   ; $7493: $32
    nop                                           ; $7494: $00
    rlca                                          ; $7495: $07
    nop                                           ; $7496: $00
    ld b, c                                       ; $7497: $41

jr_025_7498:
    ld e, e                                       ; $7498: $5B
    add hl, bc                                    ; $7499: $09
    nop                                           ; $749A: $00
    jr nz, jr_025_745C                            ; $749B: $20 $BF

    ld e, e                                       ; $749D: $5B
    add hl, de                                    ; $749E: $19
    ld b, d                                       ; $749F: $42
    xor c                                         ; $74A0: $A9
    inc de                                        ; $74A1: $13
    nop                                           ; $74A2: $00
    sub e                                         ; $74A3: $93
    ld h, l                                       ; $74A4: $65
    db $D4, $4D, $4F
    ld h, h                                       ; $74A8: $64
    ld bc, $6652                                  ; $74A9: $01 $52 $66
    ret nz                                        ; $74AC: $C0

    ld e, h                                       ; $74AD: $5C
    ld hl, $0005                                  ; $74AE: $21 $05 $00
    ld l, e                                       ; $74B1: $6B
    ld c, d                                       ; $74B2: $4A
    ld b, c                                       ; $74B3: $41
    inc hl                                        ; $74B4: $23
    db $EB                                        ; $74B5: $EB
    jp c, $2500                                   ; $74B6: $DA $00 $25

    sbc $74                                       ; $74B9: $DE $74
    ld [hl+], a                                   ; $74BB: $22
    dec b                                         ; $74BC: $05
    ld b, b                                       ; $74BD: $40
    dec b                                         ; $74BE: $05
    ld [bc], a                                    ; $74BF: $02
    ld l, e                                       ; $74C0: $6B
    ld c, d                                       ; $74C1: $4A
    ld a, [hl-]                                   ; $74C2: $3A
    ld a, [hl+]                                   ; $74C3: $2A
    ld b, $DD                                     ; $74C4: $06 $DD
    nop                                           ; $74C6: $00
    dec h                                         ; $74C7: $25
    ld e, $75                                     ; $74C8: $1E $75
    ld [hl+], a                                   ; $74CA: $22
    dec b                                         ; $74CB: $05
    ld b, b                                       ; $74CC: $40
    ld l, e                                       ; $74CD: $6B
    dec d                                         ; $74CE: $15
    inc h                                         ; $74CF: $24
    nop                                           ; $74D0: $00
    ld b, [hl]                                    ; $74D1: $46
    nop                                           ; $74D2: $00

jr_025_74D3:
    add b                                         ; $74D3: $80
    nop                                           ; $74D4: $00
    dec bc                                        ; $74D5: $0B
    nop                                           ; $74D6: $00
    dec bc                                        ; $74D7: $0B
    ld [bc], a                                    ; $74D8: $02
    add d                                         ; $74D9: $82
    rra                                           ; $74DA: $1F
    ld c, $94                                     ; $74DB: $0E $94
    ld b, d                                       ; $74DD: $42
    ld d, $20                                     ; $74DE: $16 $20
    ld c, h                                       ; $74E0: $4C
    ld e, e                                       ; $74E1: $5B
    ld d, [hl]                                    ; $74E2: $56
    nop                                           ; $74E3: $00
    ld bc, $8300                                  ; $74E4: $01 $00 $83
    ld a, [bc]                                    ; $74E7: $0A
    nop                                           ; $74E8: $00
    ld bc, $1600                                  ; $74E9: $01 $00 $16
    jr nz, jr_025_755D                            ; $74EC: $20 $6F

    ld e, e                                       ; $74EE: $5B
    dec l                                         ; $74EF: $2D
    rst $38                                       ; $74F0: $FF
    nop                                           ; $74F1: $00
    jr nz, jr_025_74D3                            ; $74F2: $20 $DF

    ld e, e                                       ; $74F4: $5B
    jr nz, jr_025_74F7                            ; $74F5: $20 $00

jr_025_74F7:
    nop                                           ; $74F7: $00
    nop                                           ; $74F8: $00
    ld e, e                                       ; $74F9: $5B
    dec h                                         ; $74FA: $25
    inc [hl]                                      ; $74FB: $34
    ld [hl], b                                    ; $74FC: $70
    ld h, d                                       ; $74FD: $62
    ld [bc], a                                    ; $74FE: $02
    ld l, [hl]                                    ; $74FF: $6E
    rlca                                          ; $7500: $07
    nop                                           ; $7501: $00
    jr z, @+$78                                   ; $7502: $28 $76

    and b                                         ; $7504: $A0
    rlca                                          ; $7505: $07
    ld b, b                                       ; $7506: $40
    jr nz, jr_025_750E                            ; $7507: $20 $05

    inc b                                         ; $7509: $04
    rst $20                                       ; $750A: $E7
    ld h, b                                       ; $750B: $60
    inc d                                         ; $750C: $14
    inc d                                         ; $750D: $14

jr_025_750E:
    xor b                                         ; $750E: $A8
    jp nc, $1110                                  ; $750F: $D2 $10 $11

    ld a, [bc]                                    ; $7512: $0A
    ld a, b                                       ; $7513: $78
    ld [hl+], a                                   ; $7514: $22
    jp nz, $0140                                  ; $7515: $C2 $40 $01

    inc d                                         ; $7518: $14
    inc d                                         ; $7519: $14
    ld b, l                                       ; $751A: $45
    cpl                                           ; $751B: $2F
    ret nz                                        ; $751C: $C0

    ld b, [hl]                                    ; $751D: $46
    inc d                                         ; $751E: $14
    ld c, $DD                                     ; $751F: $0E $DD
    ld c, a                                       ; $7521: $4F
    ld h, d                                       ; $7522: $62
    ld bc, $0E15                                  ; $7523: $01 $15 $0E
    db $FD                                        ; $7526: $FD
    ld c, a                                       ; $7527: $4F
    ld b, b                                       ; $7528: $40
    nop                                           ; $7529: $00
    add hl, de                                    ; $752A: $19
    ld b, d                                       ; $752B: $42
    dec b                                         ; $752C: $05
    inc bc                                        ; $752D: $03
    dec b                                         ; $752E: $05
    ld h, h                                       ; $752F: $64
    ld d, $25                                     ; $7530: $16 $25
    ld d, [hl]                                    ; $7532: $56
    reti                                          ; $7533: $D9


    db $10                                        ; $7534: $10
    ld [hl+], a                                   ; $7535: $22
    cp d                                          ; $7536: $BA
    ld b, b                                       ; $7537: $40
    ld [hl+], a                                   ; $7538: $22
    jp nz, $0140                                  ; $7539: $C2 $40 $01

    ld b, $29                                     ; $753C: $06 $29
    ld b, l                                       ; $753E: $45
    cpl                                           ; $753F: $2F
    ld h, l                                       ; $7540: $65
    ld b, c                                       ; $7541: $41
    ld bc, $0617                                  ; $7542: $01 $17 $06
    ld b, l                                       ; $7545: $45
    ld h, $86                                     ; $7546: $26 $86
    ld [hl], e                                    ; $7548: $73
    inc h                                         ; $7549: $24
    ld e, $93                                     ; $754A: $1E $93
    ld h, l                                       ; $754C: $65
    push bc                                       ; $754D: $C5
    ld c, l                                       ; $754E: $4D
    ld c, a                                       ; $754F: $4F
    ld h, [hl]                                    ; $7550: $66
    ret nz                                        ; $7551: $C0

    ld e, h                                       ; $7552: $5C
    ld hl, $076F                                  ; $7553: $21 $6F $07
    rst $38                                       ; $7556: $FF
    ld a, a                                       ; $7557: $7F
    ld b, l                                       ; $7558: $45
    dec h                                         ; $7559: $25
    ld h, l                                       ; $755A: $65
    ld [hl], l                                    ; $755B: $75
    sub e                                         ; $755C: $93

jr_025_755D:
    ld h, l                                       ; $755D: $65
    push bc                                       ; $755E: $C5
    ld c, l                                       ; $755F: $4D
    ld c, a                                       ; $7560: $4F
    ld h, [hl]                                    ; $7561: $66
    ret nz                                        ; $7562: $C0

    ld e, h                                       ; $7563: $5C
    ld hl, $B2AC                                  ; $7564: $21 $AC $B2
    and d                                         ; $7567: $A2
    ld bc, $F864                                  ; $7568: $01 $64 $F8
    ld d, c                                       ; $756B: $51
    sub l                                         ; $756C: $95
    dec h                                         ; $756D: $25
    adc d                                         ; $756E: $8A
    ld [hl], l                                    ; $756F: $75
    dec b                                         ; $7570: $05
    nop                                           ; $7571: $00
    add c                                         ; $7572: $81
    ld e, l                                       ; $7573: $5D
    dec b                                         ; $7574: $05
    dec b                                         ; $7575: $05

jr_025_7576:
    call $00D0                                    ; $7576: $CD $D0 $00
    jr nz, jr_025_7576                            ; $7579: $20 $FB

    ld d, b                                       ; $757B: $50
    ld [hl+], a                                   ; $757C: $22
    dec b                                         ; $757D: $05
    ld b, b                                       ; $757E: $40
    dec bc                                        ; $757F: $0B
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    add d                                         ; $7582: $82
    sub h                                         ; $7583: $94
    halt                                          ; $7584: $76
    jr nz, @+$09                                  ; $7585: $20 $07

    rra                                           ; $7587: $1F
    dec c                                         ; $7588: $0D
    ld b, d                                       ; $7589: $42
    ld b, e                                       ; $758A: $43
    db $10                                        ; $758B: $10
    ld bc, wScript_OverworldItemSpell_CollID                                  ; $758C: $01 $25 $C7
    ld b, $B0                                     ; $758F: $06 $B0
    nop                                           ; $7591: $00
    ld [hl+], a                                   ; $7592: $22
    ld b, $40                                     ; $7593: $06 $40
    ld c, e                                       ; $7595: $4B
    ld bc, wScript_OverworldItemSpell_ID                                  ; $7596: $01 $24 $C7
    dec h                                         ; $7599: $25
    inc b                                         ; $759A: $04
    nop                                           ; $759B: $00
    xor [hl]                                      ; $759C: $AE
    ld [hl], l                                    ; $759D: $75
    dec h                                         ; $759E: $25
    dec b                                         ; $759F: $05
    nop                                           ; $75A0: $00
    cp l                                          ; $75A1: $BD
    ld [hl], l                                    ; $75A2: $75
    dec h                                         ; $75A3: $25
    rlca                                          ; $75A4: $07
    nop                                           ; $75A5: $00
    rst $08                                       ; $75A6: $CF
    ld [hl], l                                    ; $75A7: $75
    dec h                                         ; $75A8: $25
    ld b, $00                                     ; $75A9: $06 $00
    pop hl                                        ; $75AB: $E1
    ld [hl], l                                    ; $75AC: $75
    rst $38                                       ; $75AD: $FF
    ld b, e                                       ; $75AE: $43
    ld bc, $A2BB                                  ; $75AF: $01 $BB $A2
    dec h                                         ; $75B2: $25
    ld d, $76                                     ; $75B3: $16 $76
    xor h                                         ; $75B5: $AC
    cp e                                          ; $75B6: $BB
    and d                                         ; $75B7: $A2
    ld bc, $2245                                  ; $75B8: $01 $45 $22
    ld b, $40                                     ; $75BB: $06 $40
    ld b, e                                       ; $75BD: $43
    db $10                                        ; $75BE: $10
    ld bc, $A2BB                                  ; $75BF: $01 $BB $A2
    dec b                                         ; $75C2: $05
    ld bc, $1625                                  ; $75C3: $01 $25 $16
    halt                                          ; $75C6: $76
    xor h                                         ; $75C7: $AC
    cp e                                          ; $75C8: $BB
    and d                                         ; $75C9: $A2
    ld [bc], a                                    ; $75CA: $02
    ld b, l                                       ; $75CB: $45
    ld [hl+], a                                   ; $75CC: $22
    ld b, $40                                     ; $75CD: $06 $40
    ld b, e                                       ; $75CF: $43
    db $10                                        ; $75D0: $10
    ld bc, $A2BB                                  ; $75D1: $01 $BB $A2
    dec b                                         ; $75D4: $05
    ld [bc], a                                    ; $75D5: $02
    dec h                                         ; $75D6: $25
    ld d, $76                                     ; $75D7: $16 $76
    xor h                                         ; $75D9: $AC
    cp e                                          ; $75DA: $BB
    and d                                         ; $75DB: $A2
    inc bc                                        ; $75DC: $03
    ld b, l                                       ; $75DD: $45
    ld [hl+], a                                   ; $75DE: $22
    ld b, $40                                     ; $75DF: $06 $40
    ld b, e                                       ; $75E1: $43
    db $10                                        ; $75E2: $10
    ld bc, $A2BB                                  ; $75E3: $01 $BB $A2
    dec b                                         ; $75E6: $05
    inc bc                                        ; $75E7: $03
    dec h                                         ; $75E8: $25
    ld d, $76                                     ; $75E9: $16 $76
    xor h                                         ; $75EB: $AC
    cp e                                          ; $75EC: $BB
    and d                                         ; $75ED: $A2
    nop                                           ; $75EE: $00
    sbc e                                         ; $75EF: $9B
    ld e, c                                       ; $75F0: $59
    ld d, h                                       ; $75F1: $54
    sbc a                                         ; $75F2: $9F
    ld h, c                                       ; $75F3: $61
    ld h, [hl]                                    ; $75F4: $66
    ld [hl], $65                                  ; $75F5: $36 $65
    inc sp                                        ; $75F7: $33
    scf                                           ; $75F8: $37
    ld [hl], a                                    ; $75F9: $77
    ld h, d                                       ; $75FA: $62
    ld l, a                                       ; $75FB: $6F
    ld l, h                                       ; $75FC: $6C
    jr nc, @+$3B                                  ; $75FD: $30 $39

    ld h, l                                       ; $75FF: $65
    ld [hl], d                                    ; $7600: $72
    ld [hl], a                                    ; $7601: $77
    rst $38                                       ; $7602: $FF
    ld [hl-], a                                   ; $7603: $32
    inc sp                                        ; $7604: $33
    ld l, e                                       ; $7605: $6B
    ld h, l                                       ; $7606: $65
    ld l, h                                       ; $7607: $6C
    ld h, [hl]                                    ; $7608: $66
    ld l, c                                       ; $7609: $69
    jr c, jr_025_7642                             ; $760A: $38 $36

    dec [hl]                                      ; $760C: $35
    ld [hl], d                                    ; $760D: $72
    ld h, l                                       ; $760E: $65
    ld h, e                                       ; $760F: $63
    ld sp, $FE32                                  ; $7610: $31 $32 $FE
    db $FD                                        ; $7613: $FD
    sbc d                                         ; $7614: $9A
    ld b, d                                       ; $7615: $42
    xor h                                         ; $7616: $AC
    cp e                                          ; $7617: $BB
    and d                                         ; $7618: $A2
    nop                                           ; $7619: $00
    ld b, l                                       ; $761A: $45
    ld [hl+], a                                   ; $761B: $22
    ld b, $40                                     ; $761C: $06 $40
    ld [bc], a                                    ; $761E: $02
    nop                                           ; $761F: $00
    rra                                           ; $7620: $1F
    dec de                                        ; $7621: $1B
    rrca                                          ; $7622: $0F
    ld b, l                                       ; $7623: $45
    inc e                                         ; $7624: $1C
    ld l, e                                       ; $7625: $6B
    ld b, d                                       ; $7626: $42
    ld [bc], a                                    ; $7627: $02
    ld [$0503], sp                                ; $7628: $08 $03 $05
    rla                                           ; $762B: $17
    ld b, l                                       ; $762C: $45
    dec de                                        ; $762D: $1B
    or h                                          ; $762E: $B4
    ld d, e                                       ; $762F: $53
    and c                                         ; $7630: $A1
    dec hl                                        ; $7631: $2B
    and c                                         ; $7632: $A1
    ld [bc], a                                    ; $7633: $02
    dec h                                         ; $7634: $25
    ld b, b                                       ; $7635: $40
    halt                                          ; $7636: $76
    ld a, [$E1FB]                                 ; $7637: $FA $FB $E1
    ret nc                                        ; $763A: $D0

    xor [hl]                                      ; $763B: $AE
    dec hl                                        ; $763C: $2B
    and c                                         ; $763D: $A1
    cp $42                                        ; $763E: $FE $42
    xor a                                         ; $7640: $AF
    dec hl                                        ; $7641: $2B

jr_025_7642:
    and c                                         ; $7642: $A1
    ld bc, $9B42                                  ; $7643: $01 $42 $9B
    ld a, b                                       ; $7646: $78
    ld [hl], b                                    ; $7647: $70
    sbc a                                         ; $7648: $9F
    ld d, h                                       ; $7649: $54
    ld l, b                                       ; $764A: $68
    ld l, c                                       ; $764B: $69
    ld [hl], e                                    ; $764C: $73
    jr nz, jr_025_76B3                            ; $764D: $20 $64

    ld l, a                                       ; $764F: $6F
    ld l, a                                       ; $7650: $6F
    ld [hl], d                                    ; $7651: $72
    rst $38                                       ; $7652: $FF
    ld h, h                                       ; $7653: $64
    ld l, a                                       ; $7654: $6F
    ld h, l                                       ; $7655: $65
    ld [hl], e                                    ; $7656: $73
    ld l, [hl]                                    ; $7657: $6E
    daa                                           ; $7658: $27
    ld [hl], h                                    ; $7659: $74
    jr nz, jr_025_76C1                            ; $765A: $20 $65

    halt                                          ; $765C: $76
    ld h, l                                       ; $765D: $65
    ld l, [hl]                                    ; $765E: $6E
    cp $68                                        ; $765F: $FE $68
    ld h, c                                       ; $7661: $61
    halt                                          ; $7662: $76
    ld h, l                                       ; $7663: $65
    jr nz, @+$63                                  ; $7664: $20 $61

    jr nz, jr_025_76D3                            ; $7666: $20 $6B

    ld h, l                                       ; $7668: $65
    ld a, c                                       ; $7669: $79
    ld l, b                                       ; $766A: $68
    ld l, a                                       ; $766B: $6F
    ld l, h                                       ; $766C: $6C
    ld h, l                                       ; $766D: $65
    ld hl, $FDFE                                  ; $766E: $21 $FE $FD
    sbc d                                         ; $7671: $9A
    ld b, d                                       ; $7672: $42
    sub e                                         ; $7673: $93
    ld h, l                                       ; $7674: $65
    ld b, l                                       ; $7675: $45
    ld d, l                                       ; $7676: $55
    ld c, a                                       ; $7677: $4F
    ld h, h                                       ; $7678: $64
    ld l, e                                       ; $7679: $6B
    ld e, h                                       ; $767A: $5C
    ld l, c                                       ; $767B: $69
    ld [hl], h                                    ; $767C: $74
    ld e, h                                       ; $767D: $5C
    ld h, [hl]                                    ; $767E: $66
    ret nz                                        ; $767F: $C0

    ld e, h                                       ; $7680: $5C
    ld hl, $1C1F                                  ; $7681: $21 $1F $1C
    dec b                                         ; $7684: $05
    nop                                           ; $7685: $00
    add c                                         ; $7686: $81
    ld e, l                                       ; $7687: $5D
    dec b                                         ; $7688: $05
    dec b                                         ; $7689: $05

jr_025_768A:
    ld l, c                                       ; $768A: $69
    ret nc                                        ; $768B: $D0

    nop                                           ; $768C: $00
    jr nz, jr_025_768A                            ; $768D: $20 $FB

    ld d, b                                       ; $768F: $50
    ld [hl+], a                                   ; $7690: $22
    dec b                                         ; $7691: $05
    ld b, b                                       ; $7692: $40
    dec bc                                        ; $7693: $0B
    nop                                           ; $7694: $00
    ld [hl-], a                                   ; $7695: $32
    dec de                                        ; $7696: $1B
    jp z, $8D52                                   ; $7697: $CA $52 $8D

    ld b, c                                       ; $769A: $41
    ld sp, $7325                                  ; $769B: $31 $25 $73
    halt                                          ; $769E: $76
    ld [hl+], a                                   ; $769F: $22
    adc $40                                       ; $76A0: $CE $40
    nop                                           ; $76A2: $00
    add d                                         ; $76A3: $82
    ld b, e                                       ; $76A4: $43
    ld a, [bc]                                    ; $76A5: $0A
    nop                                           ; $76A6: $00
    dec hl                                        ; $76A7: $2B
    and c                                         ; $76A8: $A1
    ld [$B625], sp                                ; $76A9: $08 $25 $B6
    halt                                          ; $76AC: $76
    ld a, [hl]                                    ; $76AD: $7E
    nop                                           ; $76AE: $00
    ret nc                                        ; $76AF: $D0

    ld [bc], a                                    ; $76B0: $02
    ld [bc], a                                    ; $76B1: $02
    ld e, c                                       ; $76B2: $59

jr_025_76B3:
    ret nc                                        ; $76B3: $D0

    inc b                                         ; $76B4: $04
    add hl, bc                                    ; $76B5: $09
    sub h                                         ; $76B6: $94
    ld b, d                                       ; $76B7: $42
    ld [bc], a                                    ; $76B8: $02
    inc de                                        ; $76B9: $13
    nop                                           ; $76BA: $00
    add hl, de                                    ; $76BB: $19
    rrca                                          ; $76BC: $0F
    ld b, l                                       ; $76BD: $45
    inc e                                         ; $76BE: $1C
    ld l, e                                       ; $76BF: $6B
    ld b, d                                       ; $76C0: $42

jr_025_76C1:
    ld [bc], a                                    ; $76C1: $02
    rlca                                          ; $76C2: $07
    rrca                                          ; $76C3: $0F
    nop                                           ; $76C4: $00
    ld de, $2545                                  ; $76C5: $11 $45 $25
    inc d                                         ; $76C8: $14
    ld [hl], a                                    ; $76C9: $77
    sub e                                         ; $76CA: $93
    ld h, l                                       ; $76CB: $65
    ld d, h                                       ; $76CC: $54
    ld d, l                                       ; $76CD: $55
    ld c, a                                       ; $76CE: $4F
    ld h, h                                       ; $76CF: $64
    ld a, l                                       ; $76D0: $7D
    ld e, h                                       ; $76D1: $5C
    ld h, [hl]                                    ; $76D2: $66

jr_025_76D3:
    ret nz                                        ; $76D3: $C0

    ld e, h                                       ; $76D4: $5C
    ld hl, $0005                                  ; $76D5: $21 $05 $00
    add c                                         ; $76D8: $81
    ld e, l                                       ; $76D9: $5D
    dec b                                         ; $76DA: $05
    dec b                                         ; $76DB: $05

jr_025_76DC:
    ld l, c                                       ; $76DC: $69
    ret nc                                        ; $76DD: $D0

    nop                                           ; $76DE: $00
    jr nz, jr_025_76DC                            ; $76DF: $20 $FB

    ld d, b                                       ; $76E1: $50
    ld [hl+], a                                   ; $76E2: $22
    dec b                                         ; $76E3: $05
    ld b, b                                       ; $76E4: $40
    rra                                           ; $76E5: $1F
    inc e                                         ; $76E6: $1C
    dec bc                                        ; $76E7: $0B
    nop                                           ; $76E8: $00
    ld [hl-], a                                   ; $76E9: $32
    dec de                                        ; $76EA: $1B
    jp z, $8D52                                   ; $76EB: $CA $52 $8D

    ld b, c                                       ; $76EE: $41
    ld sp, $CA25                                  ; $76EF: $31 $25 $CA
    halt                                          ; $76F2: $76
    ld [hl+], a                                   ; $76F3: $22
    adc $40                                       ; $76F4: $CE $40
    nop                                           ; $76F6: $00
    add d                                         ; $76F7: $82
    sub h                                         ; $76F8: $94
    ld b, d                                       ; $76F9: $42
    ld [bc], a                                    ; $76FA: $02
    rrca                                          ; $76FB: $0F
    rlca                                          ; $76FC: $07
    ld de, $4500                                  ; $76FD: $11 $00 $45
    dec h                                         ; $7700: $25
    jp z, $0276                                   ; $7701: $CA $76 $02

    nop                                           ; $7704: $00
    ld a, [de]                                    ; $7705: $1A
    rlca                                          ; $7706: $07
    rlca                                          ; $7707: $07
    ld b, l                                       ; $7708: $45
    dec h                                         ; $7709: $25
    add hl, de                                    ; $770A: $19
    ld a, c                                       ; $770B: $79
    and h                                         ; $770C: $A4
    ld sp, $02A3                                  ; $770D: $31 $A3 $02
    ld [bc], a                                    ; $7710: $02
    add hl, de                                    ; $7711: $19
    sbc a                                         ; $7712: $9F
    ret nc                                        ; $7713: $D0

    sub e                                         ; $7714: $93
    ld h, l                                       ; $7715: $65
    ld h, e                                       ; $7716: $63
    ld d, l                                       ; $7717: $55
    ld c, a                                       ; $7718: $4F
    ld h, h                                       ; $7719: $64
    add [hl]                                      ; $771A: $86
    ld e, h                                       ; $771B: $5C
    ld l, c                                       ; $771C: $69
    adc a                                         ; $771D: $8F
    ld e, h                                       ; $771E: $5C
    ld h, [hl]                                    ; $771F: $66
    ret nz                                        ; $7720: $C0

    ld e, h                                       ; $7721: $5C
    ld hl, $0005                                  ; $7722: $21 $05 $00
    add c                                         ; $7725: $81
    ld e, l                                       ; $7726: $5D
    dec b                                         ; $7727: $05
    dec b                                         ; $7728: $05

jr_025_7729:
    adc h                                         ; $7729: $8C
    ret nc                                        ; $772A: $D0

    nop                                           ; $772B: $00
    jr nz, jr_025_7729                            ; $772C: $20 $FB

    ld d, b                                       ; $772E: $50
    ld [hl+], a                                   ; $772F: $22
    dec b                                         ; $7730: $05
    ld b, b                                       ; $7731: $40
    rra                                           ; $7732: $1F
    inc e                                         ; $7733: $1C
    dec bc                                        ; $7734: $0B
    nop                                           ; $7735: $00
    ld [hl-], a                                   ; $7736: $32
    dec de                                        ; $7737: $1B
    jp z, $8D52                                   ; $7738: $CA $52 $8D

    ld b, c                                       ; $773B: $41
    ld sp, $1425                                  ; $773C: $31 $25 $14
    ld [hl], a                                    ; $773F: $77
    ld [hl+], a                                   ; $7740: $22
    adc $40                                       ; $7741: $CE $40
    nop                                           ; $7743: $00
    add d                                         ; $7744: $82
    ld b, e                                       ; $7745: $43
    ld a, [bc]                                    ; $7746: $0A
    nop                                           ; $7747: $00
    dec hl                                        ; $7748: $2B
    and c                                         ; $7749: $A1
    ld bc, $5725                                  ; $774A: $01 $25 $57
    ld [hl], a                                    ; $774D: $77
    ld a, [hl]                                    ; $774E: $7E
    ld l, l                                       ; $774F: $6D
    ret nc                                        ; $7750: $D0

    inc b                                         ; $7751: $04
    inc b                                         ; $7752: $04
    ld [hl], b                                    ; $7753: $70
    ret nc                                        ; $7754: $D0

    inc b                                         ; $7755: $04
    inc b                                         ; $7756: $04
    sub h                                         ; $7757: $94
    ld b, d                                       ; $7758: $42
    ld [bc], a                                    ; $7759: $02
    ld a, [de]                                    ; $775A: $1A
    nop                                           ; $775B: $00
    rlca                                          ; $775C: $07
    rlca                                          ; $775D: $07
    ld b, l                                       ; $775E: $45
    dec h                                         ; $775F: $25
    inc d                                         ; $7760: $14
    ld [hl], a                                    ; $7761: $77
    ld [bc], a                                    ; $7762: $02
    nop                                           ; $7763: $00
    ld a, [de]                                    ; $7764: $1A
    rrca                                          ; $7765: $0F
    rrca                                          ; $7766: $0F
    ld b, l                                       ; $7767: $45
    inc e                                         ; $7768: $1C
    ld b, e                                       ; $7769: $43
    ld c, b                                       ; $776A: $48
    ld b, e                                       ; $776B: $43
    nop                                           ; $776C: $00
    dec hl                                        ; $776D: $2B
    and c                                         ; $776E: $A1
    inc b                                         ; $776F: $04
    dec h                                         ; $7770: $25
    ld [hl], a                                    ; $7771: $77
    ld [hl], a                                    ; $7772: $77
    ld b, l                                       ; $7773: $45
    dec h                                         ; $7774: $25
    rst $30                                       ; $7775: $F7
    ld a, c                                       ; $7776: $79
    ld b, d                                       ; $7777: $42
    and c                                         ; $7778: $A1
    dec hl                                        ; $7779: $2B
    and c                                         ; $777A: $A1
    db $10                                        ; $777B: $10
    dec h                                         ; $777C: $25
    adc e                                         ; $777D: $8B
    ld [hl], a                                    ; $777E: $77
    ld a, [$94FB]                                 ; $777F: $FA $FB $94
    ret nc                                        ; $7782: $D0

    xor [hl]                                      ; $7783: $AE
    dec hl                                        ; $7784: $2B
    and c                                         ; $7785: $A1
    rst $30                                       ; $7786: $F7
    ld b, l                                       ; $7787: $45
    dec h                                         ; $7788: $25
    adc a                                         ; $7789: $8F
    ld [hl], a                                    ; $778A: $77
    xor a                                         ; $778B: $AF
    dec hl                                        ; $778C: $2B
    and c                                         ; $778D: $A1
    ld [$9B42], sp                                ; $778E: $08 $42 $9B
    ld a, b                                       ; $7791: $78
    ld [hl], b                                    ; $7792: $70
    sbc a                                         ; $7793: $9F
    ld c, b                                       ; $7794: $48
    ld h, c                                       ; $7795: $61
    ld [hl], d                                    ; $7796: $72
    ld h, h                                       ; $7797: $64
    jr nz, jr_025_77FB                            ; $7798: $20 $61

    ld [hl], e                                    ; $779A: $73
    jr nz, jr_025_7810                            ; $779B: $20 $73

    ld [hl], h                                    ; $779D: $74
    ld l, a                                       ; $779E: $6F
    ld l, [hl]                                    ; $779F: $6E
    ld h, l                                       ; $77A0: $65
    rst $38                                       ; $77A1: $FF
    ld h, c                                       ; $77A2: $61
    ld l, [hl]                                    ; $77A3: $6E
    ld h, h                                       ; $77A4: $64
    jr nz, jr_025_7811                            ; $77A5: $20 $6A

    ld [hl], l                                    ; $77A7: $75
    ld [hl], e                                    ; $77A8: $73
    ld [hl], h                                    ; $77A9: $74
    jr nz, jr_025_780D                            ; $77AA: $20 $61

    ld [hl], e                                    ; $77AC: $73
    cp $63                                        ; $77AD: $FE $63
    ld l, a                                       ; $77AF: $6F
    ld l, h                                       ; $77B0: $6C
    ld h, h                                       ; $77B1: $64
    ld l, $FE                                     ; $77B2: $2E $FE
    db $FD                                        ; $77B4: $FD
    sbc d                                         ; $77B5: $9A
    ld b, d                                       ; $77B6: $42
    sbc e                                         ; $77B7: $9B
    ld a, b                                       ; $77B8: $78
    ld [hl], b                                    ; $77B9: $70
    sbc a                                         ; $77BA: $9F
    ld b, h                                       ; $77BB: $44
    ld l, c                                       ; $77BC: $69
    ld [hl], d                                    ; $77BD: $72
    ld [hl], h                                    ; $77BE: $74
    ld a, c                                       ; $77BF: $79
    jr nz, @+$63                                  ; $77C0: $20 $61

    ld l, [hl]                                    ; $77C2: $6E
    ld h, h                                       ; $77C3: $64
    rst $38                                       ; $77C4: $FF
    ld h, e                                       ; $77C5: $63
    ld l, a                                       ; $77C6: $6F
    halt                                          ; $77C7: $76
    ld h, l                                       ; $77C8: $65
    ld [hl], d                                    ; $77C9: $72
    ld h, l                                       ; $77CA: $65
    ld h, h                                       ; $77CB: $64
    jr nz, jr_025_7837                            ; $77CC: $20 $69

    ld l, [hl]                                    ; $77CE: $6E
    cp $72                                        ; $77CF: $FE $72
    ld [hl], l                                    ; $77D1: $75
    ld [hl], e                                    ; $77D2: $73
    ld [hl], h                                    ; $77D3: $74
    ld l, $FE                                     ; $77D4: $2E $FE
    db $FD                                        ; $77D6: $FD
    sbc d                                         ; $77D7: $9A
    ld b, d                                       ; $77D8: $42
    sbc e                                         ; $77D9: $9B
    jp hl                                         ; $77DA: $E9


    ld d, l                                       ; $77DB: $55
    sbc a                                         ; $77DC: $9F
    ld b, h                                       ; $77DD: $44
    ld l, a                                       ; $77DE: $6F
    ld l, [hl]                                    ; $77DF: $6E
    daa                                           ; $77E0: $27
    ld [hl], h                                    ; $77E1: $74
    jr nz, jr_025_784C                            ; $77E2: $20 $68

    ld [hl], l                                    ; $77E4: $75
    ld [hl], d                                    ; $77E5: $72
    ld [hl], h                                    ; $77E6: $74
    jr nz, jr_025_7856                            ; $77E7: $20 $6D

    ld h, l                                       ; $77E9: $65
    ld hl, $FDFE                                  ; $77EA: $21 $FE $FD
    sbc e                                         ; $77ED: $9B
    ld a, b                                       ; $77EE: $78
    ld [hl], b                                    ; $77EF: $70
    sbc a                                         ; $77F0: $9F
    ld c, c                                       ; $77F1: $49
    daa                                           ; $77F2: $27
    ld l, l                                       ; $77F3: $6D
    jr nz, jr_025_7864                            ; $77F4: $20 $6E

    ld l, a                                       ; $77F6: $6F
    ld [hl], h                                    ; $77F7: $74
    jr nz, @+$6A                                  ; $77F8: $20 $68

    ld h, l                                       ; $77FA: $65

jr_025_77FB:
    ld [hl], d                                    ; $77FB: $72
    ld h, l                                       ; $77FC: $65
    jr nz, jr_025_7873                            ; $77FD: $20 $74

    ld l, a                                       ; $77FF: $6F
    rst $38                                       ; $7800: $FF
    ld l, b                                       ; $7801: $68
    ld [hl], l                                    ; $7802: $75
    ld [hl], d                                    ; $7803: $72
    ld [hl], h                                    ; $7804: $74
    jr nz, jr_025_7880                            ; $7805: $20 $79

    ld l, a                                       ; $7807: $6F
    ld [hl], l                                    ; $7808: $75
    inc l                                         ; $7809: $2C
    jr nz, jr_025_7855                            ; $780A: $20 $49

    daa                                           ; $780C: $27

jr_025_780D:
    ld l, l                                       ; $780D: $6D
    cp $68                                        ; $780E: $FE $68

jr_025_7810:
    ld h, l                                       ; $7810: $65

jr_025_7811:
    ld [hl], d                                    ; $7811: $72
    ld h, l                                       ; $7812: $65
    jr nz, jr_025_7889                            ; $7813: $20 $74

    ld l, a                                       ; $7815: $6F
    rst $38                                       ; $7816: $FF
    ld [hl], d                                    ; $7817: $72
    ld h, l                                       ; $7818: $65
    ld [hl], e                                    ; $7819: $73
    ld h, e                                       ; $781A: $63
    ld [hl], l                                    ; $781B: $75
    ld h, l                                       ; $781C: $65
    jr nz, jr_025_7898                            ; $781D: $20 $79

    ld l, a                                       ; $781F: $6F
    ld [hl], l                                    ; $7820: $75
    ld hl, $FDFE                                  ; $7821: $21 $FE $FD
    sbc e                                         ; $7824: $9B
    jp hl                                         ; $7825: $E9


    ld d, l                                       ; $7826: $55
    sbc a                                         ; $7827: $9F
    ld d, h                                       ; $7828: $54
    ld c, b                                       ; $7829: $48
    ld b, c                                       ; $782A: $41
    ld c, [hl]                                    ; $782B: $4E
    ld c, e                                       ; $782C: $4B
    jr nz, @+$5B                                  ; $782D: $20 $59

    ld c, a                                       ; $782F: $4F
    ld d, l                                       ; $7830: $55
    ld hl, $FE21                                  ; $7831: $21 $21 $FE
    db $FD                                        ; $7834: $FD
    sbc e                                         ; $7835: $9B
    ld a, b                                       ; $7836: $78

jr_025_7837:
    ld [hl], b                                    ; $7837: $70
    sbc a                                         ; $7838: $9F
    ld d, e                                       ; $7839: $53
    ld h, l                                       ; $783A: $65
    ld h, l                                       ; $783B: $65
    jr nz, @+$7B                                  ; $783C: $20 $79

    ld l, a                                       ; $783E: $6F
    ld [hl], l                                    ; $783F: $75
    jr nz, jr_025_78AE                            ; $7840: $20 $6C

    ld h, c                                       ; $7842: $61
    ld [hl], h                                    ; $7843: $74
    ld h, l                                       ; $7844: $65
    ld [hl], d                                    ; $7845: $72
    ld l, $FE                                     ; $7846: $2E $FE
    db $FD                                        ; $7848: $FD
    sbc e                                         ; $7849: $9B
    jp hl                                         ; $784A: $E9


    ld d, l                                       ; $784B: $55

jr_025_784C:
    sbc a                                         ; $784C: $9F
    ld d, a                                       ; $784D: $57
    ld h, c                                       ; $784E: $61
    ld l, c                                       ; $784F: $69
    ld [hl], h                                    ; $7850: $74
    inc l                                         ; $7851: $2C
    jr nz, jr_025_78C8                            ; $7852: $20 $74

    ld l, b                                       ; $7854: $68

jr_025_7855:
    ld h, l                                       ; $7855: $65

jr_025_7856:
    ld [hl], d                                    ; $7856: $72
    ld h, l                                       ; $7857: $65
    jr nz, jr_025_78BB                            ; $7858: $20 $61

    ld [hl], d                                    ; $785A: $72
    ld h, l                                       ; $785B: $65
    rst $38                                       ; $785C: $FF
    ld l, l                                       ; $785D: $6D
    ld l, a                                       ; $785E: $6F
    ld [hl], d                                    ; $785F: $72
    ld h, l                                       ; $7860: $65
    jr nz, jr_025_78D3                            ; $7861: $20 $70

    ld [hl], d                                    ; $7863: $72

jr_025_7864:
    ld l, c                                       ; $7864: $69
    ld [hl], e                                    ; $7865: $73
    ld l, a                                       ; $7866: $6F
    ld l, [hl]                                    ; $7867: $6E
    ld h, l                                       ; $7868: $65
    ld [hl], d                                    ; $7869: $72
    ld [hl], e                                    ; $786A: $73
    cp $74                                        ; $786B: $FE $74
    ld [hl], d                                    ; $786D: $72
    ld h, c                                       ; $786E: $61
    ld [hl], b                                    ; $786F: $70
    ld [hl], b                                    ; $7870: $70
    ld h, l                                       ; $7871: $65
    ld h, h                                       ; $7872: $64

jr_025_7873:
    jr nz, jr_025_78DE                            ; $7873: $20 $69

    ld l, [hl]                                    ; $7875: $6E
    rst $38                                       ; $7876: $FF
    ld l, b                                       ; $7877: $68
    ld h, l                                       ; $7878: $65
    ld [hl], d                                    ; $7879: $72
    ld h, l                                       ; $787A: $65
    ld l, $FE                                     ; $787B: $2E $FE
    db $FD                                        ; $787D: $FD
    sbc e                                         ; $787E: $9B
    ld a, b                                       ; $787F: $78

jr_025_7880:
    ld [hl], b                                    ; $7880: $70
    sbc a                                         ; $7881: $9F
    ld d, a                                       ; $7882: $57
    ld h, l                                       ; $7883: $65
    ld l, h                                       ; $7884: $6C
    ld l, h                                       ; $7885: $6C
    inc l                                         ; $7886: $2C
    jr nz, jr_025_78D2                            ; $7887: $20 $49

jr_025_7889:
    daa                                           ; $7889: $27
    ld l, h                                       ; $788A: $6C
    ld l, h                                       ; $788B: $6C
    jr nz, @+$66                                  ; $788C: $20 $64

    ld l, a                                       ; $788E: $6F
    rst $38                                       ; $788F: $FF
    ld [hl], a                                    ; $7890: $77
    ld l, b                                       ; $7891: $68
    ld h, c                                       ; $7892: $61
    ld [hl], h                                    ; $7893: $74
    jr nz, jr_025_78DF                            ; $7894: $20 $49

    jr nz, jr_025_78FB                            ; $7896: $20 $63

jr_025_7898:
    ld h, c                                       ; $7898: $61
    ld l, [hl]                                    ; $7899: $6E
    jr nz, jr_025_7902                            ; $789A: $20 $66

    ld l, a                                       ; $789C: $6F
    ld [hl], d                                    ; $789D: $72
    cp $74                                        ; $789E: $FE $74
    ld l, b                                       ; $78A0: $68
    ld h, l                                       ; $78A1: $65
    ld l, l                                       ; $78A2: $6D
    ld l, $FE                                     ; $78A3: $2E $FE
    db $FD                                        ; $78A5: $FD
    sbc e                                         ; $78A6: $9B
    jp hl                                         ; $78A7: $E9


    ld d, l                                       ; $78A8: $55
    sbc a                                         ; $78A9: $9F
    ld d, h                                       ; $78AA: $54
    ld l, b                                       ; $78AB: $68
    ld h, c                                       ; $78AC: $61
    ld l, [hl]                                    ; $78AD: $6E

jr_025_78AE:
    ld l, e                                       ; $78AE: $6B
    ld [hl], e                                    ; $78AF: $73
    ld hl, $5720                                  ; $78B0: $21 $20 $57
    ld h, l                                       ; $78B3: $65
    ld l, h                                       ; $78B4: $6C
    ld l, h                                       ; $78B5: $6C
    ld l, $2E                                     ; $78B6: $2E $2E
    ld l, $FE                                     ; $78B8: $2E $FE
    ld b, d                                       ; $78BA: $42

jr_025_78BB:
    ld a, c                                       ; $78BB: $79
    ld h, l                                       ; $78BC: $65
    ld l, $FE                                     ; $78BD: $2E $FE
    db $FD                                        ; $78BF: $FD
    sbc d                                         ; $78C0: $9A
    ld e, b                                       ; $78C1: $58
    ld bc, $9B42                                  ; $78C2: $01 $42 $9B
    ld a, b                                       ; $78C5: $78
    ld [hl], b                                    ; $78C6: $70
    sbc a                                         ; $78C7: $9F

jr_025_78C8:
    dec l                                         ; $78C8: $2D
    ld c, c                                       ; $78C9: $49
    ld d, h                                       ; $78CA: $54
    daa                                           ; $78CB: $27
    ld d, e                                       ; $78CC: $53
    jr nz, jr_025_791B                            ; $78CD: $20 $4C

    ld c, a                                       ; $78CF: $4F
    ld b, e                                       ; $78D0: $43
    ld c, e                                       ; $78D1: $4B

jr_025_78D2:
    ld b, l                                       ; $78D2: $45

jr_025_78D3:
    ld b, h                                       ; $78D3: $44
    dec l                                         ; $78D4: $2D
    cp $FD                                        ; $78D5: $FE $FD
    sbc d                                         ; $78D7: $9A
    ld e, b                                       ; $78D8: $58
    ld [bc], a                                    ; $78D9: $02
    ld b, d                                       ; $78DA: $42
    sbc e                                         ; $78DB: $9B
    ld a, b                                       ; $78DC: $78
    ld [hl], b                                    ; $78DD: $70

jr_025_78DE:
    sbc a                                         ; $78DE: $9F

jr_025_78DF:
    dec l                                         ; $78DF: $2D
    ld d, h                                       ; $78E0: $54
    ld c, a                                       ; $78E1: $4F
    ld c, [hl]                                    ; $78E2: $4E
    ld e, c                                       ; $78E3: $59
    jr nz, jr_025_793B                            ; $78E4: $20 $55

    ld c, [hl]                                    ; $78E6: $4E
    ld c, h                                       ; $78E7: $4C
    ld c, a                                       ; $78E8: $4F
    ld b, e                                       ; $78E9: $43
    ld c, e                                       ; $78EA: $4B
    ld d, e                                       ; $78EB: $53
    dec l                                         ; $78EC: $2D
    rst $38                                       ; $78ED: $FF
    ld d, h                                       ; $78EE: $54
    ld c, b                                       ; $78EF: $48
    ld b, l                                       ; $78F0: $45
    jr nz, jr_025_7937                            ; $78F1: $20 $44

    ld c, a                                       ; $78F3: $4F
    ld c, a                                       ; $78F4: $4F
    ld d, d                                       ; $78F5: $52
    ld l, $20                                     ; $78F6: $2E $20
    ld d, h                                       ; $78F8: $54
    ld c, b                                       ; $78F9: $48
    ld b, l                                       ; $78FA: $45

jr_025_78FB:
    cp $4B                                        ; $78FB: $FE $4B
    ld b, l                                       ; $78FD: $45
    ld e, c                                       ; $78FE: $59
    jr nz, @+$44                                  ; $78FF: $20 $42

    ld d, d                                       ; $7901: $52

jr_025_7902:
    ld b, l                                       ; $7902: $45
    ld b, c                                       ; $7903: $41
    ld c, e                                       ; $7904: $4B
    ld d, e                                       ; $7905: $53
    jr nz, jr_025_7951                            ; $7906: $20 $49

    ld c, [hl]                                    ; $7908: $4E
    rst $38                                       ; $7909: $FF
    ld d, h                                       ; $790A: $54
    ld c, b                                       ; $790B: $48
    ld b, l                                       ; $790C: $45
    jr nz, jr_025_795B                            ; $790D: $20 $4C

    ld c, a                                       ; $790F: $4F
    ld b, e                                       ; $7910: $43
    ld c, e                                       ; $7911: $4B
    dec l                                         ; $7912: $2D
    cp $FD                                        ; $7913: $FE $FD
    sbc d                                         ; $7915: $9A
    ld e, b                                       ; $7916: $58
    ld [bc], a                                    ; $7917: $02
    ld b, d                                       ; $7918: $42
    sub e                                         ; $7919: $93
    ld h, l                                       ; $791A: $65

jr_025_791B:
    ld [hl], d                                    ; $791B: $72
    ld d, l                                       ; $791C: $55
    ld c, a                                       ; $791D: $4F
    ld h, h                                       ; $791E: $64
    sub h                                         ; $791F: $94
    ld e, h                                       ; $7920: $5C
    ld l, c                                       ; $7921: $69
    and c                                         ; $7922: $A1
    ld e, h                                       ; $7923: $5C
    ld h, [hl]                                    ; $7924: $66
    ret nz                                        ; $7925: $C0

    ld e, h                                       ; $7926: $5C
    ld hl, $1C1F                                  ; $7927: $21 $1F $1C
    dec b                                         ; $792A: $05
    nop                                           ; $792B: $00
    add c                                         ; $792C: $81
    ld e, l                                       ; $792D: $5D
    dec b                                         ; $792E: $05
    dec b                                         ; $792F: $05

jr_025_7930:
    adc h                                         ; $7930: $8C
    ret nc                                        ; $7931: $D0

    nop                                           ; $7932: $00
    jr nz, jr_025_7930                            ; $7933: $20 $FB

    ld d, b                                       ; $7935: $50
    ld [hl+], a                                   ; $7936: $22

jr_025_7937:
    dec b                                         ; $7937: $05
    ld b, b                                       ; $7938: $40
    dec bc                                        ; $7939: $0B
    nop                                           ; $793A: $00

jr_025_793B:
    ld [hl-], a                                   ; $793B: $32
    dec de                                        ; $793C: $1B
    jp z, $8D52                                   ; $793D: $CA $52 $8D

    ld b, c                                       ; $7940: $41
    ld sp, $1925                                  ; $7941: $31 $25 $19
    ld a, c                                       ; $7944: $79
    ld [hl+], a                                   ; $7945: $22
    adc $40                                       ; $7946: $CE $40
    nop                                           ; $7948: $00
    add d                                         ; $7949: $82
    ld b, e                                       ; $794A: $43
    ld a, [bc]                                    ; $794B: $0A
    nop                                           ; $794C: $00
    dec hl                                        ; $794D: $2B
    and c                                         ; $794E: $A1
    inc b                                         ; $794F: $04
    dec h                                         ; $7950: $25

jr_025_7951:
    ld h, l                                       ; $7951: $65
    ld a, c                                       ; $7952: $79
    ld a, [hl]                                    ; $7953: $7E
    sub h                                         ; $7954: $94
    pop de                                        ; $7955: $D1
    ld bc, $FE02                                  ; $7956: $01 $02 $FE
    ret nc                                        ; $7959: $D0

    add hl, bc                                    ; $795A: $09

jr_025_795B:
    dec bc                                        ; $795B: $0B
    ld a, [hl]                                    ; $795C: $7E
    jp z, $01D1                                   ; $795D: $CA $D1 $01

    ld [bc], a                                    ; $7960: $02
    db $FD                                        ; $7961: $FD
    ret nc                                        ; $7962: $D0

    add hl, bc                                    ; $7963: $09
    ld a, [bc]                                    ; $7964: $0A
    ld b, e                                       ; $7965: $43
    nop                                           ; $7966: $00
    and [hl]                                      ; $7967: $A6
    and c                                         ; $7968: $A1
    ld bc, $8625                                  ; $7969: $01 $25 $86
    ld a, c                                       ; $796C: $79
    dec b                                         ; $796D: $05
    ld [bc], a                                    ; $796E: $02
    dec b                                         ; $796F: $05
    ld h, h                                       ; $7970: $64
    ld a, [bc]                                    ; $7971: $0A
    inc b                                         ; $7972: $04
    halt                                          ; $7973: $76
    ret nc                                        ; $7974: $D0

    nop                                           ; $7975: $00
    ld de, $450B                                  ; $7976: $11 $0B $45
    dec h                                         ; $7979: $25
    adc b                                         ; $797A: $88
    ld a, c                                       ; $797B: $79
    ld l, e                                       ; $797C: $6B
    jr nc, jr_025_798A                            ; $797D: $30 $0B

    jr nz, @+$49                                  ; $797F: $20 $47

    nop                                           ; $7981: $00
    add b                                         ; $7982: $80
    nop                                           ; $7983: $00
    dec bc                                        ; $7984: $0B
    ld [bc], a                                    ; $7985: $02
    sub h                                         ; $7986: $94
    ld b, d                                       ; $7987: $42
    xor a                                         ; $7988: $AF
    and [hl]                                      ; $7989: $A6

jr_025_798A:
    and c                                         ; $798A: $A1
    ld bc, $255B                                  ; $798B: $01 $5B $25
    reti                                          ; $798E: $D9


    ld [hl], a                                    ; $798F: $77
    ld c, e                                       ; $7990: $4B
    inc bc                                        ; $7991: $03

jr_025_7992:
    dec h                                         ; $7992: $25
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    and a                                         ; $7995: $A7
    ld a, c                                       ; $7996: $79
    dec h                                         ; $7997: $25
    inc bc                                        ; $7998: $03
    nop                                           ; $7999: $00
    or c                                          ; $799A: $B1
    ld a, c                                       ; $799B: $79
    dec h                                         ; $799C: $25
    ld [bc], a                                    ; $799D: $02
    nop                                           ; $799E: $00
    push bc                                       ; $799F: $C5
    ld a, c                                       ; $79A0: $79
    dec h                                         ; $79A1: $25
    ld bc, $BB00                                  ; $79A2: $01 $00 $BB
    ld a, c                                       ; $79A5: $79
    rst $38                                       ; $79A6: $FF
    inc d                                         ; $79A7: $14
    ld de, $4501                                  ; $79A8: $11 $01 $45
    ld h, d                                       ; $79AB: $62
    ld bc, $2545                                  ; $79AC: $01 $45 $25
    rst $08                                       ; $79AF: $CF
    ld a, c                                       ; $79B0: $79
    inc d                                         ; $79B1: $14
    ld de, $450B                                  ; $79B2: $11 $0B $45
    ld h, d                                       ; $79B5: $62
    ld bc, $2545                                  ; $79B6: $01 $45 $25
    ldh [$79], a                                  ; $79B9: $E0 $79

jr_025_79BB:
    inc d                                         ; $79BB: $14
    ld de, $4515                                  ; $79BC: $11 $15 $45
    ld h, d                                       ; $79BF: $62
    ld bc, $2545                                  ; $79C0: $01 $45 $25
    rst $08                                       ; $79C3: $CF
    ld a, c                                       ; $79C4: $79
    inc d                                         ; $79C5: $14
    ld de, $451F                                  ; $79C6: $11 $1F $45
    ld h, d                                       ; $79C9: $62

jr_025_79CA:
    ld bc, $2545                                  ; $79CA: $01 $45 $25
    rst $08                                       ; $79CD: $CF
    ld a, c                                       ; $79CE: $79
    inc d                                         ; $79CF: $14
    ld de, $44D1                                  ; $79D0: $11 $D1 $44
    ld b, b                                       ; $79D3: $40
    jr jr_025_79DD                                ; $79D4: $18 $07

jr_025_79D6:
    nop                                           ; $79D6: $00
    add c                                         ; $79D7: $81
    ld e, l                                       ; $79D8: $5D
    add hl, bc                                    ; $79D9: $09
    nop                                           ; $79DA: $00
    jr nz, jr_025_7992                            ; $79DB: $20 $B5

jr_025_79DD:
    ld d, b                                       ; $79DD: $50
    add hl, de                                    ; $79DE: $19
    ld b, d                                       ; $79DF: $42
    inc d                                         ; $79E0: $14
    ld de, $44F1                                  ; $79E1: $11 $F1 $44
    ld b, b                                       ; $79E4: $40
    ld [$1114], sp                                ; $79E5: $08 $14 $11
    pop de                                        ; $79E8: $D1
    ld b, h                                       ; $79E9: $44
    ld b, b                                       ; $79EA: $40
    jr jr_025_79F4                                ; $79EB: $18 $07

    nop                                           ; $79ED: $00
    add c                                         ; $79EE: $81
    ld e, l                                       ; $79EF: $5D
    add hl, bc                                    ; $79F0: $09
    nop                                           ; $79F1: $00
    jr nz, @-$49                                  ; $79F2: $20 $B5

jr_025_79F4:
    ld d, b                                       ; $79F4: $50
    add hl, de                                    ; $79F5: $19
    ld b, d                                       ; $79F6: $42
    ld b, e                                       ; $79F7: $43
    ld de, $C301                                  ; $79F8: $11 $01 $C3
    and e                                         ; $79FB: $A3
    dec b                                         ; $79FC: $05
    nop                                           ; $79FD: $00
    dec h                                         ; $79FE: $25
    inc h                                         ; $79FF: $24
    ld a, d                                       ; $7A00: $7A
    rlca                                          ; $7A01: $07
    nop                                           ; $7A02: $00
    ld l, e                                       ; $7A03: $6B
    ld c, d                                       ; $7A04: $4A
    add hl, bc                                    ; $7A05: $09
    nop                                           ; $7A06: $00
    jr nz, jr_025_79D6                            ; $7A07: $20 $CD

    ld c, a                                       ; $7A09: $4F
    ld b, b                                       ; $7A0A: $40
    ld [$0009], sp                                ; $7A0B: $08 $09 $00
    jr nz, jr_025_79BB                            ; $7A0E: $20 $AB

    ld d, b                                       ; $7A10: $50
    ld e, e                                       ; $7A11: $5B
    dec h                                         ; $7A12: $25
    call nz, $6278                                ; $7A13: $C4 $78 $62
    ld [bc], a                                    ; $7A16: $02
    rlca                                          ; $7A17: $07
    nop                                           ; $7A18: $00
    add c                                         ; $7A19: $81
    ld e, l                                       ; $7A1A: $5D
    add hl, bc                                    ; $7A1B: $09
    nop                                           ; $7A1C: $00
    jr nz, jr_025_79CA                            ; $7A1D: $20 $AB

    ld d, b                                       ; $7A1F: $50
    ld b, l                                       ; $7A20: $45
    dec h                                         ; $7A21: $25
    ld c, c                                       ; $7A22: $49
    ld a, d                                       ; $7A23: $7A
    ld e, e                                       ; $7A24: $5B
    dec h                                         ; $7A25: $25
    db $DB                                        ; $7A26: $DB
    ld a, b                                       ; $7A27: $78
    ld h, d                                       ; $7A28: $62
    ld [bc], a                                    ; $7A29: $02
    ld a, [hl]                                    ; $7A2A: $7E
    sub h                                         ; $7A2B: $94
    pop de                                        ; $7A2C: $D1
    ld bc, $FE02                                  ; $7A2D: $01 $02 $FE
    ret nc                                        ; $7A30: $D0

    add hl, bc                                    ; $7A31: $09
    dec bc                                        ; $7A32: $0B
    ld a, [hl]                                    ; $7A33: $7E
    jp z, $01D1                                   ; $7A34: $CA $D1 $01

    ld [bc], a                                    ; $7A37: $02
    db $FD                                        ; $7A38: $FD
    ret nc                                        ; $7A39: $D0

    add hl, bc                                    ; $7A3A: $09
    ld a, [bc]                                    ; $7A3B: $0A
    and [hl]                                      ; $7A3C: $A6
    jp $0CA3                                      ; $7A3D: $C3 $A3 $0C


    ld bc, $A3C3                                  ; $7A40: $01 $C3 $A3
    dec b                                         ; $7A43: $05
    ld bc, $2BAF                                  ; $7A44: $01 $AF $2B
    and c                                         ; $7A47: $A1
    inc b                                         ; $7A48: $04
    ld b, d                                       ; $7A49: $42
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
