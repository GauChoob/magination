SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ; $4000
Battle_Attack_Table::
    db 0, 0
    db 1, 5
    db 1, 7
    db 1, 8
    db 2, 10
    db 2, 11
    db 2, 13
    db 2, 14
    db 5, 16
    db 5, 17
    db 5, 18
    db 5, 20
    db 5, 21
    db 5, 23
    db 5, 24
    db 5, 26
    db 10, 27
    db 10, 28
    db 10, 30
    db 10, 31
    db 10, 33
    db 20, 34
    db 20, 36
    db 20, 37
    db 20, 39
    db 20, 40
    db 23, 41
    db 23, 42
    db 23, 44
    db 23, 45
    db 23, 47
    db 23, 48
    db 23, 50
    db 23, 52
    db 23, 54
    db 23, 57
    db 23, 59
    db 23, 62
    db 23, 66
    db 23, 69
    db 27, 73
    db 27, 78
    db 27, 82
    db 27, 88
    db 27, 94
    db 27, 101
    db 27, 108
    db 27, 117
    db 27, 126
    db 27, 137
    db 27, 150
    db 27, 155
    db 27, 160
    db 27, 166
    db 27, 171
    db 27, 176
    db 27, 181
    db 27, 185
    db 27, 190
    db 27, 195
    db 30, 199
    db 30, 203
    db 30, 208
    db 30, 212
    db 30, 216
    db 30, 220
    db 30, 223
    db 30, 227
    db 30, 231
    db 30, 234
    db 30, 237
    db 30, 238
    db 31, 238
    db 31, 239
    db 32, 239
    db 32, 240
    db 32, 241
    db 33, 241
    db 33, 242
    db 33, 243
    db 34, 243
    db 34, 244
    db 35, 244
    db 35, 245
    db 36, 246
    db 37, 246
    db 37, 247
    db 37, 248
    db 38, 248
    db 38, 249
    db 39, 249
    db 40, 250
    db 40, 251
    db 41, 251
    db 41, 252
    db 41, 253
    db 42, 253
    db 43, 254
    db 45, 254
    db 50, 255
    ; Luck expansion
    db 55, 255
    db 60, 255
    db 65, 255
    db 70, 255
    db 75, 255
    db 80, 255
    db 85, 255
    db 90, 255
    db 95, 255
    db 100, 255

    ; $40DC
Battle_Luck_Table::
    ; Used to calculate luck
    ; The row is the Luck stat
    ; The value is the multiplier, where 0 = 0 and 99 = %100
    ; Luck gives a random number in the range of [-MAGNITUDE*multiplier,MAGNITUDE*multiplier]
    db 0
    db 1
    db 1
    db 1
    db 1
    db 1
    db 1
    db 1
    db 1
    db 1
    db 2
    db 2
    db 2
    db 2
    db 2
    db 3
    db 3
    db 3
    db 4
    db 4
    db 5
    db 5
    db 5
    db 6
    db 6
    db 7
    db 7
    db 8
    db 8
    db 9
    db 10
    db 10
    db 11
    db 11
    db 12
    db 13
    db 14
    db 14
    db 15
    db 16
    db 17
    db 17
    db 18
    db 19
    db 20
    db 21
    db 22
    db 23
    db 24
    db 25
    db 26
    db 27
    db 28
    db 29
    db 30
    db 31
    db 32
    db 33
    db 34
    db 36
    db 37
    db 38
    db 39
    db 41
    db 42
    db 43
    db 44
    db 46
    db 47
    db 49
    db 50
    db 51
    db 53
    db 54
    db 56
    db 57
    db 59
    db 60
    db 62
    db 64
    db 65
    db 67
    db 68
    db 70
    db 72
    db 73
    db 75
    db 77
    db 79
    db 81
    db 82
    db 84
    db 86
    db 88
    db 90
    db 92
    db 94
    db 96
    db 98
    db 99
    .End:
ASSERT Battle_Luck_Table.End - Battle_Luck_Table == 100

    ; $4140
    ;Battle Attack Wrapper
Call_002_4140:
    SwitchRAMBank BANK("WRAM BATTLE")
    xor a                                         ; $4147: $AF
    ld [$D073], a                                 ; $4148: $EA $73 $D0
    ld [$D071], a                                 ; $414B: $EA $71 $D0
    ld [$D070], a                                 ; $414E: $EA $70 $D0
    ld [$D0B2], a                                 ; $4151: $EA $B2 $D0
    ld [$D0B4], a                                 ; $4154: $EA $B4 $D0
    ld [wBattle_DamageOverrideFlag], a                                 ; $4157: $EA $76 $D0
    ld [$D0C5], a                                 ; $415A: $EA $C5 $D0
    ld [$D0D2], a                                 ; $415D: $EA $D2 $D0
    ld a, [$D01A]                                 ; $4160: $FA $1A $D0
    and a                                         ; $4163: $A7
    jp nz, Jump_002_4202                          ; $4164: $C2 $02 $42

    ld a, [$D0B6]                                 ; $4167: $FA $B6 $D0
    and a                                         ; $416A: $A7
    jp z, Jump_002_4202                           ; $416B: $CA $02 $42

    cp $09                                        ; $416E: $FE $09
    jp z, Jump_002_4202                           ; $4170: $CA $02 $42

    ld a, [wBattle_Creature_Current.Other]                                 ; $4173: $FA $FF $D0
    and a                                         ; $4176: $A7
    jp nz, Jump_002_4202                          ; $4177: $C2 $02 $42

    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $417A: $FA $03 $D1
    cp $0A                                        ; $417D: $FE $0A
    jp nc, Jump_002_4202                          ; $417F: $D2 $02 $42

    ld hl, $D0B6                                  ; $4182: $21 $B6 $D0
    cp [hl]                                       ; $4185: $BE
    jr z, jr_002_41C5                             ; $4186: $28 $3D

    FGet16 hl, wBattle_Creature_Current.BattleCmd_Function                                  ; $4188: $21 $00 $D1
    ld bc, $517D                                  ; $418E: $01 $7D $51
    TwosComp bc
    add hl, bc                                    ; $4198: $09
    ld a, h                                       ; $4199: $7C
    or l                                          ; $419A: $B5
    jr z, jr_002_41B1                             ; $419B: $28 $14

    ld hl, $C71B                                  ; $419D: $21 $1B $C7
    ld a, $4C                                     ; $41A0: $3E $4C
    ld [hl+], a                                   ; $41A2: $22
    ld a, $32                                     ; $41A3: $3E $32
    ld [hl+], a                                   ; $41A5: $22
    ld a, $4B                                     ; $41A6: $3E $4B
    ld [hl+], a                                   ; $41A8: $22
    ld a, $66                                     ; $41A9: $3E $66
    ld [hl+], a                                   ; $41AB: $22
    ld a, $0A                                     ; $41AC: $3E $0A
    ld [hl+], a                                   ; $41AE: $22
    jr jr_002_41D7                                ; $41AF: $18 $26

jr_002_41B1:
    ld hl, $C71B                                  ; $41B1: $21 $1B $C7
    ld a, $4C                                     ; $41B4: $3E $4C
    ld [hl+], a                                   ; $41B6: $22
    ld a, $66                                     ; $41B7: $3E $66
    ld [hl+], a                                   ; $41B9: $22
    ld a, $43                                     ; $41BA: $3E $43
    ld [hl+], a                                   ; $41BC: $22
    ld a, $66                                     ; $41BD: $3E $66
    ld [hl+], a                                   ; $41BF: $22
    ld a, $0A                                     ; $41C0: $3E $0A
    ld [hl+], a                                   ; $41C2: $22
    jr jr_002_41D7                                ; $41C3: $18 $12

jr_002_41C5:
    ld hl, $C71B                                  ; $41C5: $21 $1B $C7
    ld a, $4C                                     ; $41C8: $3E $4C
    ld [hl+], a                                   ; $41CA: $22
    ld a, $44                                     ; $41CB: $3E $44
    ld [hl+], a                                   ; $41CD: $22
    ld a, $4B                                     ; $41CE: $3E $4B
    ld [hl+], a                                   ; $41D0: $22
    ld a, $66                                     ; $41D1: $3E $66
    ld [hl+], a                                   ; $41D3: $22
    ld a, $0A                                     ; $41D4: $3E $0A
    ld [hl+], a                                   ; $41D6: $22

jr_002_41D7:
    Do_CallForeign Call_005_5657
    ld a, $49                                     ; $41DF: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $41E1: $EA $3D $C9
    ld a, $C9                                     ; $41E4: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $41E6: $EA $3E $C9
    ld a, [$D0B6]                                 ; $41E9: $FA $B6 $D0
    ld d, $41                                     ; $41EC: $16 $41
    ld bc, $6EC2                                  ; $41EE: $01 $C2 $6E
    call Battle00_Actor_SetScript                                    ; $41F1: $CD $F0 $38
    Do_CallForeign UNK_AwaitTextEnd
    ld a, [$D0B6]                                 ; $41FC: $FA $B6 $D0
    call Battle00_Actor_DisableScript                                    ; $41FF: $CD $C7 $38

Jump_002_4202:
    ld a, [$D107]                                 ; $4202: $FA $07 $D1
    and a                                         ; $4205: $A7
    jr z, jr_002_424B                             ; $4206: $28 $43

    ld a, [$D11D]                                 ; $4208: $FA $1D $D1
    ld b, a                                       ; $420B: $47
    ld a, [$D108]                                 ; $420C: $FA $08 $D1
    ld c, a                                       ; $420F: $4F
    call Call_002_5420                            ; $4210: $CD $20 $54
    and a                                         ; $4213: $A7
    jr z, jr_002_424B                             ; $4214: $28 $35

    FGet16 hl, wBattle_Creature_Current.BattleCmd_Function                                  ; $4216: $21 $00 $D1
    ld bc, $517D                                  ; $421C: $01 $7D $51
    TwosComp bc
    add hl, bc                                    ; $4226: $09
    ld a, h                                       ; $4227: $7C
    or l                                          ; $4228: $B5
    jr nz, jr_002_4230                            ; $4229: $20 $05

jr_002_422B:
    call Call_002_539D                            ; $422B: $CD $9D $53
    jr jr_002_423A                                ; $422E: $18 $0A

jr_002_4230:
    ld a, [wBattle_Creature_Current.BattleCmd_Rating]                                 ; $4230: $FA $05 $D1
    bit 7, a                                      ; $4233: $CB $7F
    jr nz, jr_002_422B                            ; $4235: $20 $F4

    call Call_002_53CC                            ; $4237: $CD $CC $53

jr_002_423A:
    ld b, a                                       ; $423A: $47
    ld a, [$D107]                                 ; $423B: $FA $07 $D1
    ld c, a                                       ; $423E: $4F
    call Math_Mult                                    ; $423F: $CD $CA $04
    ld a, $FF                                     ; $4242: $3E $FF
    call Math_Div16                                    ; $4244: $CD $B9 $04
    inc a                                         ; $4247: $3C
    ld [$D073], a                                 ; $4248: $EA $73 $D0

jr_002_424B:
    FGet16 hl, wBattle_Creature_Current.BattleCmd_Function                                  ; $424B: $21 $00 $D1
    ld a, [$D073]                                 ; $4251: $FA $73 $D0
    and a                                         ; $4254: $A7
    call CallHL                                    ; $4255: $CD $89 $07
    ld a, [wBattle_Creature_Current.Relic0]                                 ; $4258: $FA $FD $D0
    and a                                         ; $425B: $A7
    jr z, jr_002_4280                             ; $425C: $28 $22

    ld a, [wBattle_Creature_Current.Relic0]                                 ; $425E: $FA $FD $D0
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $4261: $EA $8C $CD
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $4264: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $426C: $70
    Do_CallForeign Relic_GetDataFromID
    FGet16 hl, $CD95                                  ; $4275: $21 $95 $CD
    ld e, $07                                     ; $427B: $1E $07
    call CallForeign                                    ; $427D: $CD $73 $07

jr_002_4280:
    ld a, [wBattle_Creature_Current.Relic1]                                 ; $4280: $FA $FE $D0
    and a                                         ; $4283: $A7
    jr z, jr_002_42A8                             ; $4284: $28 $22

    ld a, [wBattle_Creature_Current.Relic1]                                 ; $4286: $FA $FE $D0
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $4289: $EA $8C $CD
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $428C: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $4294: $70
    Do_CallForeign Relic_GetDataFromID
    FGet16 hl, $CD95                                  ; $429D: $21 $95 $CD
    ld e, $07                                     ; $42A3: $1E $07
    call CallForeign                                    ; $42A5: $CD $73 $07

jr_002_42A8:
    ld a, [$D073]                                 ; $42A8: $FA $73 $D0
    and a                                         ; $42AB: $A7
    jp z, Jump_002_434A                           ; $42AC: $CA $4A $43

    ld hl, $D073                                  ; $42AF: $21 $73 $D0
    ld a, [wBattle_Creature_Current.BattleCmd_Elemental]                                 ; $42B2: $FA $06 $D1
    ld b, a                                       ; $42B5: $47
    ld a, [$D122]                                 ; $42B6: $FA $22 $D1
    and b                                         ; $42B9: $A0
    jr z, jr_002_42F6                             ; $42BA: $28 $3A

    ld a, [hl]                                    ; $42BC: $7E
    ld b, a                                       ; $42BD: $47
    srl b                                         ; $42BE: $CB $38
    srl b                                         ; $42C0: $CB $38
    sub b                                         ; $42C2: $90
    jr c, jr_002_42C7                             ; $42C3: $38 $02

    jr nz, jr_002_42C9                            ; $42C5: $20 $02

jr_002_42C7:
    ld a, $01                                     ; $42C7: $3E $01

jr_002_42C9:
    ld [hl], a                                    ; $42C9: $77
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $42D2: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $42D4: $EA $3D $C9
    ld a, $C9                                     ; $42D7: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $42D9: $EA $3E $C9
    ld hl, $C71B                                  ; $42DC: $21 $1B $C7
    ld a, $4C                                     ; $42DF: $3E $4C
    ld [hl+], a                                   ; $42E1: $22
    ld a, $A8                                     ; $42E2: $3E $A8
    ld [hl+], a                                   ; $42E4: $22
    ld a, $42                                     ; $42E5: $3E $42
    ld [hl+], a                                   ; $42E7: $22
    ld a, $66                                     ; $42E8: $3E $66
    ld [hl+], a                                   ; $42EA: $22
    ld a, $0A                                     ; $42EB: $3E $0A
    ld [hl+], a                                   ; $42ED: $22
    Do_CallForeign UNK_AwaitTextEnd

jr_002_42F6:
    ld hl, $D073                                  ; $42F6: $21 $73 $D0
    ld a, [wBattle_Creature_Current.BattleCmd_Elemental]                                 ; $42F9: $FA $06 $D1
    ld b, a                                       ; $42FC: $47
    ld a, [$D123]                                 ; $42FD: $FA $23 $D1
    and b                                         ; $4300: $A0
    jr z, jr_002_433B                             ; $4301: $28 $38

    ld a, [hl]                                    ; $4303: $7E
    ld b, a                                       ; $4304: $47
    srl b                                         ; $4305: $CB $38
    srl b                                         ; $4307: $CB $38
    add b                                         ; $4309: $80
    jr nc, jr_002_430E                            ; $430A: $30 $02

    ld a, $FF                                     ; $430C: $3E $FF

jr_002_430E:
    ld [hl], a                                    ; $430E: $77
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $4317: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $4319: $EA $3D $C9
    ld a, $C9                                     ; $431C: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $431E: $EA $3E $C9
    ld hl, $C71B                                  ; $4321: $21 $1B $C7
    ld a, $4C                                     ; $4324: $3E $4C
    ld [hl+], a                                   ; $4326: $22
    ld a, $C3                                     ; $4327: $3E $C3
    ld [hl+], a                                   ; $4329: $22
    ld a, $42                                     ; $432A: $3E $42
    ld [hl+], a                                   ; $432C: $22
    ld a, $66                                     ; $432D: $3E $66
    ld [hl+], a                                   ; $432F: $22
    ld a, $0A                                     ; $4330: $3E $0A
    ld [hl+], a                                   ; $4332: $22
    Do_CallForeign UNK_AwaitTextEnd

jr_002_433B:
    ld hl, $D073                                  ; $433B: $21 $73 $D0
    ld a, [$D136]                                 ; $433E: $FA $36 $D1
    and a                                         ; $4341: $A7
    jr z, jr_002_434A                             ; $4342: $28 $06

    ld hl, $D073                                  ; $4344: $21 $73 $D0
    srl [hl]                                      ; $4347: $CB $3E
    inc [hl]                                      ; $4349: $34

Jump_002_434A:
jr_002_434A:
    ld a, [wBattle_DamageOverrideFlag]                                 ; $434A: $FA $76 $D0
    and a                                         ; $434D: $A7
    jr z, jr_002_4360                             ; $434E: $28 $10

    cp $02                                        ; $4350: $FE $02
    jr nz, jr_002_435A                            ; $4352: $20 $06

    xor a                                         ; $4354: $AF
    ld [$D073], a                                 ; $4355: $EA $73 $D0
    jr jr_002_4360                                ; $4358: $18 $06

jr_002_435A:
    ld a, [wBattle_DamageOverrideMagnitude]                                 ; $435A: $FA $77 $D0
    ld [$D073], a                                 ; $435D: $EA $73 $D0

jr_002_4360:
    ld a, [$D0B4]                                 ; $4360: $FA $B4 $D0
    and a                                         ; $4363: $A7
    jr nz, jr_002_43BB                            ; $4364: $20 $55

    ld a, [$D073]                                 ; $4366: $FA $73 $D0
    and a                                         ; $4369: $A7
    jp z, Jump_002_452A                           ; $436A: $CA $2A $45

    call Battle_Flow_StatusCombos                            ; $436D: $CD $E7 $6D
    ld a, [$D0B4]                                 ; $4370: $FA $B4 $D0
    and a                                         ; $4373: $A7
    jr nz, jr_002_43BB                            ; $4374: $20 $45

    ld a, [$D073]                                 ; $4376: $FA $73 $D0
    and a                                         ; $4379: $A7
    jp z, Jump_002_452A                           ; $437A: $CA $2A $45

    ld c, a                                       ; $437D: $4F
    ld b, $00                                     ; $437E: $06 $00
    ld a, [$D117]                                 ; $4380: $FA $17 $D1
    ld h, a                                       ; $4383: $67
    ld a, [$D118]                                 ; $4384: $FA $18 $D1
    ld l, a                                       ; $4387: $6F
    ld a, [$D070]                                 ; $4388: $FA $70 $D0
    and a                                         ; $438B: $A7
    jr nz, jr_002_4398                            ; $438C: $20 $0A

    TwosComp bc
    add hl, bc                                    ; $4395: $09
    jr jr_002_43AD                                ; $4396: $18 $15

jr_002_4398:
    add hl, bc                                    ; $4398: $09
    Get16_BigEndian bc, wBattle_Creature_Target.MaxEnergy
    ld a, c                                       ; $43A1: $79
    sub l                                         ; $43A2: $95
    ld a, b                                       ; $43A3: $78
    sbc h                                         ; $43A4: $9C
    jp nc, Jump_002_4522                          ; $43A5: $D2 $22 $45

    ld h, b                                       ; $43A8: $60
    ld l, c                                       ; $43A9: $69
    jp Jump_002_4522                              ; $43AA: $C3 $22 $45


jr_002_43AD:
    jr nc, jr_002_43BB                            ; $43AD: $30 $0C

    ld a, h                                       ; $43AF: $7C
    or l                                          ; $43B0: $B5
    jp z, Jump_002_43BB                           ; $43B1: $CA $BB $43

    ld a, [$D0B4]                                 ; $43B4: $FA $B4 $D0
    and a                                         ; $43B7: $A7
    jp z, Jump_002_4522                           ; $43B8: $CA $22 $45

Jump_002_43BB:
jr_002_43BB:
    ld a, [$D118]                                 ; $43BB: $FA $18 $D1
    srl a                                         ; $43BE: $CB $3F
    inc a                                         ; $43C0: $3C
    ld [$D0D2], a                                 ; $43C1: $EA $D2 $D0
    ld bc, $0000                                  ; $43C4: $01 $00 $00
    FSet16 $D117, bc                                    ; $43CC: $70
    FGet16 bc, $D07B                                  ; $43CD: $21 $7B $D0                                       ; $43D2: $4F
    ld hl, wBattle_Creature_Hero                                  ; $43D3: $21 $47 $D1
    TwosComp bc
    add hl, bc                                    ; $43DD: $09
    ld a, h                                       ; $43DE: $7C
    or l                                          ; $43DF: $B5
    jr nz, jr_002_43F6                            ; $43E0: $20 $14

    call Call_002_657B                            ; $43E2: $CD $7B $65
    and a                                         ; $43E5: $A7
    jr z, jr_002_43EE                             ; $43E6: $28 $06

    ld hl, $0000                                  ; $43E8: $21 $00 $00
    jp Jump_002_4522                              ; $43EB: $C3 $22 $45


jr_002_43EE:
    Set8 wBattle_ExitCode, BATTLE_EXITCODE_LOSE
    jp Jump_002_452A                              ; $43F3: $C3 $2A $45


jr_002_43F6:
    FGet16 bc, $D07B                                  ; $43F6: $21 $7B $D0                                       ; $43FB: $4F
    ld hl, $D336                                  ; $43FC: $21 $36 $D3
    TwosComp bc
    add hl, bc                                    ; $4406: $09
    ld a, h                                       ; $4407: $7C
    or l                                          ; $4408: $B5
    jr nz, jr_002_441F                            ; $4409: $20 $14

    call Call_002_6FB2                            ; $440B: $CD $B2 $6F
    and a                                         ; $440E: $A7
    jr z, jr_002_4417                             ; $440F: $28 $06

    ld hl, $0000                                  ; $4411: $21 $00 $00
    jp Jump_002_4522                              ; $4414: $C3 $22 $45


Jump_002_4417:
jr_002_4417:
    Set8 wBattle_ExitCode, BATTLE_EXITCODE_WIN
    jp Jump_002_452A                              ; $441C: $C3 $2A $45


jr_002_441F:
    ld a, $01                                     ; $441F: $3E $01
    ld [$D0B2], a                                 ; $4421: $EA $B2 $D0
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $4424: $FA $03 $D1
    ld c, a                                       ; $4427: $4F
    ld b, $00                                     ; $4428: $06 $00
    ld hl, wBattle_CreatureSlots                                  ; $442A: $21 $91 $D0
    add hl, bc                                    ; $442D: $09
    xor a                                         ; $442E: $AF
    ld [hl], a                                    ; $442F: $77
    ld hl, $D0A5                                  ; $4430: $21 $A5 $D0
    add hl, bc                                    ; $4433: $09
    ld a, $01                                     ; $4434: $3E $01
    ld [hl], a                                    ; $4436: $77
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $4437: $FA $03 $D1
    cp $05                                        ; $443A: $FE $05
    jr nc, jr_002_447C                            ; $443C: $30 $3E

    dec a                                         ; $443E: $3D
    ld c, a                                       ; $443F: $4F
    ld b, $00                                     ; $4440: $06 $00
    ld hl, $D376                                  ; $4442: $21 $76 $D3
    add hl, bc                                    ; $4445: $09
    ld c, [hl]                                    ; $4446: $4E
    ld hl, wBattle_UsedRings                                  ; $4447: $21 $7A $D3
    add hl, bc                                    ; $444A: $09
    ld a, $01                                     ; $444B: $3E $01
    ld [hl], a                                    ; $444D: $77
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $444E: $FA $03 $D1
    dec a                                         ; $4451: $3D
    ld c, a                                       ; $4452: $4F
    ld b, $00                                     ; $4453: $06 $00
    ld hl, $D36E                                  ; $4455: $21 $6E $D3
    add hl, bc                                    ; $4458: $09
    add hl, bc                                    ; $4459: $09
    push hl                                       ; $445A: $E5
    Battle_Set_MagiAnim [wBattle_Creature_Magi.ID], BATTLE_MAGIANIM_TAUNT, BATTLE_ACTOR_MAGI
    pop hl                                        ; $4473: $E1
    xor a                                         ; $4474: $AF
    ld [hl+], a                                   ; $4475: $22
    ld [hl], a                                    ; $4476: $77
    ld [$D0D2], a                                 ; $4477: $EA $D2 $D0
    jr jr_002_44DD                                ; $447A: $18 $61

jr_002_447C:
    ld a, [$D114]                                 ; $447C: $FA $14 $D1
    ld hl, $D06C                                  ; $447F: $21 $6C $D0
    add [hl]                                      ; $4482: $86
    jr nc, jr_002_4487                            ; $4483: $30 $02

    ld a, $FF                                     ; $4485: $3E $FF

jr_002_4487:
    ld [hl], a                                    ; $4487: $77
    ld a, [$D0D9]                                 ; $4488: $FA $D9 $D0
    and a                                         ; $448B: $A7
    jp nz, Jump_002_44BD                          ; $448C: $C2 $BD $44

    ld a, [$D0B6]                                 ; $448F: $FA $B6 $D0
    and a                                         ; $4492: $A7
    jr z, jr_002_44BD                             ; $4493: $28 $28

    ld a, [$D0D2]                                 ; $4495: $FA $D2 $D0
    ld e, a                                       ; $4498: $5F
    ld d, $00                                     ; $4499: $16 $00
    ld a, [$D14E]                                 ; $449B: $FA $4E $D1
    ld h, a                                       ; $449E: $67
    ld a, [$D14F]                                 ; $449F: $FA $4F $D1
    ld l, a                                       ; $44A2: $6F
    add hl, de                                    ; $44A3: $19
    ld a, [$D150]                                 ; $44A4: $FA $50 $D1
    ld b, a                                       ; $44A7: $47
    ld a, [$D151]                                 ; $44A8: $FA $51 $D1
    ld c, a                                       ; $44AB: $4F
    ld a, c                                       ; $44AC: $79
    sub l                                         ; $44AD: $95
    ld a, b                                       ; $44AE: $78
    sbc h                                         ; $44AF: $9C
    jp nc, Jump_002_44B5                          ; $44B0: $D2 $B5 $44

    ld h, b                                       ; $44B3: $60
    ld l, c                                       ; $44B4: $69

Jump_002_44B5:
    ld a, h                                       ; $44B5: $7C
    ld [$D14E], a                                 ; $44B6: $EA $4E $D1
    ld a, l                                       ; $44B9: $7D
    ld [$D14F], a                                 ; $44BA: $EA $4F $D1

Jump_002_44BD:
jr_002_44BD:
    ld a, [wBattle_Creature_Target.ID]                                 ; $44BD: $FA $12 $D1
    ld hl, $D0B8                                  ; $44C0: $21 $B8 $D0
    ld d, $08                                     ; $44C3: $16 $08

jr_002_44C5:
    cp [hl]                                       ; $44C5: $BE
    jr nz, jr_002_44CE                            ; $44C6: $20 $06

    dec d                                         ; $44C8: $15
    jr z, jr_002_44CF                             ; $44C9: $28 $04

    inc hl                                        ; $44CB: $23
    jr jr_002_44C5                                ; $44CC: $18 $F7

jr_002_44CE:
    ld [hl], a                                    ; $44CE: $77

jr_002_44CF:
    ld hl, wBattle_CreatureSlots.Magi                                  ; $44CF: $21 $9A $D0
    ld a, [hl]                                    ; $44D2: $7E
    and a                                         ; $44D3: $A7
    jr nz, jr_002_44DD                            ; $44D4: $20 $07

    call Call_002_6FB2                            ; $44D6: $CD $B2 $6F
    and a                                         ; $44D9: $A7
    jp z, Jump_002_4417                           ; $44DA: $CA $17 $44

jr_002_44DD:
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $44E5: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $44E7: $EA $3D $C9
    ld a, $C9                                     ; $44EA: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $44EC: $EA $3E $C9
    ld a, [$D0B4]                                 ; $44EF: $FA $B4 $D0
    and a                                         ; $44F2: $A7
    jr z, jr_002_4509                             ; $44F3: $28 $14

    ld hl, $C71B                                  ; $44F5: $21 $1B $C7
    ld a, $4C                                     ; $44F8: $3E $4C
    ld [hl+], a                                   ; $44FA: $22
    ld a, $5A                                     ; $44FB: $3E $5A
    ld [hl+], a                                   ; $44FD: $22
    ld a, $44                                     ; $44FE: $3E $44
    ld [hl+], a                                   ; $4500: $22
    ld a, $66                                     ; $4501: $3E $66
    ld [hl+], a                                   ; $4503: $22
    ld a, $0A                                     ; $4504: $3E $0A
    ld [hl+], a                                   ; $4506: $22
    jr jr_002_451B                                ; $4507: $18 $12

jr_002_4509:
    ld hl, $C71B                                  ; $4509: $21 $1B $C7
    ld a, $4C                                     ; $450C: $3E $4C
    ld [hl+], a                                   ; $450E: $22
    ld a, $35                                     ; $450F: $3E $35
    ld [hl+], a                                   ; $4511: $22
    ld a, $42                                     ; $4512: $3E $42
    ld [hl+], a                                   ; $4514: $22
    ld a, $66                                     ; $4515: $3E $66
    ld [hl+], a                                   ; $4517: $22
    ld a, $0A                                     ; $4518: $3E $0A
    ld [hl+], a                                   ; $451A: $22

jr_002_451B:
    ld a, $01                                     ; $451B: $3E $01
    ld [$D071], a                                 ; $451D: $EA $71 $D0
    jr jr_002_452A                                ; $4520: $18 $08

Jump_002_4522:
    ld a, h                                       ; $4522: $7C
    ld [$D117], a                                 ; $4523: $EA $17 $D1
    ld a, l                                       ; $4526: $7D
    ld [$D118], a                                 ; $4527: $EA $18 $D1

Jump_002_452A:
jr_002_452A:
    ld a, [$D071]                                 ; $452A: $FA $71 $D0
    and a                                         ; $452D: $A7
    jr nz, jr_002_458C                            ; $452E: $20 $5C

    ld a, [$D073]                                 ; $4530: $FA $73 $D0
    and a                                         ; $4533: $A7
    jr nz, jr_002_455C                            ; $4534: $20 $26

    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $453E: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $4540: $EA $3D $C9
    ld a, $C9                                     ; $4543: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $4545: $EA $3E $C9
    ld hl, $C71B                                  ; $4548: $21 $1B $C7
    ld a, $4C                                     ; $454B: $3E $4C
    ld [hl+], a                                   ; $454D: $22
    ld a, $FD                                     ; $454E: $3E $FD
    ld [hl+], a                                   ; $4550: $22
    ld a, $47                                     ; $4551: $3E $47
    ld [hl+], a                                   ; $4553: $22
    ld a, $66                                     ; $4554: $3E $66
    ld [hl+], a                                   ; $4556: $22
    ld a, $0A                                     ; $4557: $3E $0A
    ld [hl+], a                                   ; $4559: $22
    jr jr_002_4593                                ; $455A: $18 $37

jr_002_455C:
    Do_CallForeign Call_005_5575
    ld a, [wBattle_ExitCode]                                 ; $4564: $FA $16 $D0
    and a                                         ; $4567: $A7
    jr nz, jr_002_459B                            ; $4568: $20 $31

    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $456A: $FA $03 $D1
    ld d, $41                                     ; $456D: $16 $41
    ld bc, $7058                                  ; $456F: $01 $58 $70
    call Battle00_Actor_SetScript                                    ; $4572: $CD $F0 $38
    Do_CallForeign Call_005_4430
    xor a                                         ; $457D: $AF
    ld [wBattle_AnimDone], a                                 ; $457E: $EA $22 $C7

jr_002_4581:
    call System_UpdateGame                                    ; $4581: $CD $BB $08
    ld a, [wBattle_AnimDone]                                 ; $4584: $FA $22 $C7
    and a                                         ; $4587: $A7
    jr z, jr_002_4581                             ; $4588: $28 $F7

    jr jr_002_459B                                ; $458A: $18 $0F

jr_002_458C:
    ld a, [$D071]                                 ; $458C: $FA $71 $D0
    cp $02                                        ; $458F: $FE $02
    jr z, jr_002_459B                             ; $4591: $28 $08

jr_002_4593:
    Do_CallForeign UNK_AwaitTextEnd

jr_002_459B:
    ld a, [wBattle_ExitCode]                                 ; $459B: $FA $16 $D0
    and a                                         ; $459E: $A7
    jr nz, jr_002_45D0                            ; $459F: $20 $2F

    Battle_Set_MagiAnim [wBattle_Creature_Magi.ID], BATTLE_MAGIANIM_IDLE, BATTLE_ACTOR_MAGI
    Battle_Set_MagiAnim CreatureID_Tony, BATTLE_MAGIANIM_IDLE, BATTLE_ACTOR_TONY

jr_002_45D0:
    ld a, [$D0B2]                                 ; $45D0: $FA $B2 $D0
    and a                                         ; $45D3: $A7
    ret z                                         ; $45D4: $C8

    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $45D5: $FA $03 $D1
    ld d, $41                                     ; $45D8: $16 $41
    ld bc, $6F5E                                  ; $45DA: $01 $5E $6F
    call Battle00_Actor_SetScript                                    ; $45DD: $CD $F0 $38
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $45E0: $FA $03 $D1
    dec a                                         ; $45E3: $3D
    ld b, a                                       ; $45E4: $47
    ld a, $F0                                     ; $45E5: $3E $F0
    ld [$C9D8], a                                 ; $45E7: $EA $D8 $C9
    ld a, b                                       ; $45EA: $78
    ld [$C9D9], a                                 ; $45EB: $EA $D9 $C9
    Do_CallForeign Cardscene_SpawnCreature
    xor a                                         ; $45F6: $AF
    ld [wBattle_AnimDone], a                                 ; $45F7: $EA $22 $C7

jr_002_45FA:
    call System_UpdateGame                                    ; $45FA: $CD $BB $08
    ld a, [wBattle_AnimDone]                                 ; $45FD: $FA $22 $C7
    and a                                         ; $4600: $A7
    jr z, jr_002_45FA                             ; $4601: $28 $F7

    call System_UpdateGame                                    ; $4603: $CD $BB $08
    xor a                                         ; $4606: $AF
    ld [wBattle_DamageOverrideFlag], a                                 ; $4607: $EA $76 $D0
    ld a, [$D0D2]                                 ; $460A: $FA $D2 $D0
    and a                                         ; $460D: $A7
    ret z                                         ; $460E: $C8

    ld [$D073], a                                 ; $460F: $EA $73 $D0
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $461A: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $461C: $EA $3D $C9
    ld a, $C9                                     ; $461F: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $4621: $EA $3E $C9
    ld hl, $C71B                                  ; $4624: $21 $1B $C7
    ld a, $4C                                     ; $4627: $3E $4C
    ld [hl+], a                                   ; $4629: $22
    ld a, $84                                     ; $462A: $3E $84
    ld [hl+], a                                   ; $462C: $22
    ld a, $48                                     ; $462D: $3E $48
    ld [hl+], a                                   ; $462F: $22
    ld a, $66                                     ; $4630: $3E $66
    ld [hl+], a                                   ; $4632: $22
    ld a, $0A                                     ; $4633: $3E $0A
    ld [hl+], a                                   ; $4635: $22
    Do_CallForeign UNK_AwaitTextEnd
    ret                                           ; $463E: $C9


Call_002_463F:
    ld e, a                                       ; $463F: $5F
    ld bc, $0014                                  ; $4640: $01 $14 $00
    add hl, bc                                    ; $4643: $09
    ld a, [hl+]                                   ; $4644: $2A
    and e                                         ; $4645: $A3
    jr nz, jr_002_4651                            ; $4646: $20 $09

    ld a, [hl]                                    ; $4648: $7E
    and e                                         ; $4649: $A3
    jr nz, jr_002_4651                            ; $464A: $20 $05

    add e                                         ; $464C: $83
    ld [hl], a                                    ; $464D: $77
    ld a, $01                                     ; $464E: $3E $01
    ret                                           ; $4650: $C9


jr_002_4651:
    xor a                                         ; $4651: $AF
    ret                                           ; $4652: $C9


Call_002_4653:
    ld a, [$D068]                                 ; $4653: $FA $68 $D0
    ld b, a                                       ; $4656: $47
    ld c, Creature_Table_SIZE                                     ; $4657: $0E $2D
    call Math_Mult                                    ; $4659: $CD $CA $04
    ld bc, Creature_Table                                  ; $465C: $01 $5B $41
    add hl, bc                                    ; $465F: $09
    ld a, h                                       ; $4660: $7C
    ld [wBattle_CopyBuffer_Source + 1], a                                 ; $4661: $EA $8E $CD
    ld a, l                                       ; $4664: $7D
    ld [wBattle_CopyBuffer_Source], a                                 ; $4665: $EA $8D $CD
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $4668: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $4670: $70
    Do_CallForeign Creature_Table_CopyStatsToBuffer
    FGet16 bc, wBattle_CopyBuffer_Destination                                  ; $4679: $21 $8F $CD                                       ; $467E: $4F
    ld hl, $D110                                  ; $467F: $21 $10 $D1
    ld a, $01                                     ; $4682: $3E $01
    ld [hl+], a                                   ; $4684: $22
    xor a                                         ; $4685: $AF
    ld [hl+], a                                   ; $4686: $22
    ld a, [$D068]                                 ; $4687: $FA $68 $D0
    ld [hl+], a                                   ; $468A: $22
    LdHLIBCI                                        ; $468D: $03
    inc bc                                        ; $468E: $03
    inc bc                                        ; $468F: $03
    inc bc                                        ; $4690: $03
    xor a                                         ; $4691: $AF
    ld [hl+], a                                   ; $4692: $22
    ld [hl+], a                                   ; $4693: $22
    ld [hl+], a                                   ; $4694: $22
    ld [hl+], a                                   ; $4695: $22
    ld [hl+], a                                   ; $4696: $22
    ld [hl+], a                                   ; $4697: $22
    ld [hl+], a                                   ; $4698: $22
    ld d, $0A                                     ; $4699: $16 $0A

jr_002_469B:
    LdHLIBCI                                        ; $469D: $03
    dec d                                         ; $469E: $15
    jr nz, jr_002_469B                            ; $469F: $20 $FA

    xor a                                         ; $46A1: $AF
    ld [hl+], a                                   ; $46A2: $22
    LdHLIBCI                                        ; $46A5: $03
    LdHLIBCI                                        ; $46A8: $03
    inc bc                                        ; $46A9: $03
    inc bc                                        ; $46AA: $03
    ld d, $0C                                     ; $46AB: $16 $0C

jr_002_46AD:
    LdHLIBCI                                        ; $46AF: $03
    dec d                                         ; $46B0: $15
    jr nz, jr_002_46AD                            ; $46B1: $20 $FA

    xor a                                         ; $46B3: $AF
    ld [hl+], a                                   ; $46B4: $22
    ld [hl+], a                                   ; $46B5: $22
    ld [hl+], a                                   ; $46B6: $22
    set 0, a                                      ; $46B7: $CB $C7
    res 1, a                                      ; $46B9: $CB $8F
    ld [$D389], a                                 ; $46BB: $EA $89 $D3
    ld a, [$D069]                                 ; $46BE: $FA $69 $D0

jr_002_46C1:
    ld hl, $D110                                  ; $46C1: $21 $10 $D1
    push af                                       ; $46C4: $F5
    call Call_002_57F1                            ; $46C5: $CD $F1 $57
    pop af                                        ; $46C8: $F1
    dec a                                         ; $46C9: $3D
    jr nz, jr_002_46C1                            ; $46CA: $20 $F5

    ld a, [$D06A]                                 ; $46CC: $FA $6A $D0
    ld [$D118], a                                 ; $46CF: $EA $18 $D1
    ld [$D11A], a                                 ; $46D2: $EA $1A $D1
    ld a, [$D126]                                 ; $46D5: $FA $26 $D1
    ld b, a                                       ; $46D8: $47
    ld hl, wBattle_Creature_Target.StatusActive                                  ; $46D9: $21 $25 $D1
    or [hl]                                       ; $46DC: $B6
    ld a, [hl]                                    ; $46DD: $7E
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $46DE: $FA $03 $D1
    ld b, a                                       ; $46E1: $47
    ld c, $37                                     ; $46E2: $0E $37
    call Math_Mult                                    ; $46E4: $CD $CA $04
    ld bc, wBattle_Creature_Hero                                  ; $46E7: $01 $47 $D1
    add hl, bc                                    ; $46EA: $09
    ld a, h                                       ; $46EB: $7C
    ld [$D07C], a                                 ; $46EC: $EA $7C $D0
    ld a, l                                       ; $46EF: $7D
    ld [$D07B], a                                 ; $46F0: $EA $7B $D0
    ret                                           ; $46F3: $C9


Call_002_46F4:
    push af                                       ; $46F4: $F5
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $46FD: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $46FF: $EA $3D $C9
    ld a, $C9                                     ; $4702: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $4704: $EA $3E $C9
    pop af                                        ; $4707: $F1
    ld [$CD93], a                                 ; $4708: $EA $93 $CD
    Do_CallForeign Call_007_68B4
    ld hl, $C71B                                  ; $4713: $21 $1B $C7
    ld a, $4C                                     ; $4716: $3E $4C
    ld [hl+], a                                   ; $4718: $22
    ld a, $C1                                     ; $4719: $3E $C1
    ld [hl+], a                                   ; $471B: $22
    ld a, $41                                     ; $471C: $3E $41
    ld [hl+], a                                   ; $471E: $22
    ld a, $66                                     ; $471F: $3E $66
    ld [hl+], a                                   ; $4721: $22
    ld a, $0A                                     ; $4722: $3E $0A
    ld [hl+], a                                   ; $4724: $22
    Do_CallForeign UNK_AwaitTextEnd
    ret                                           ; $472D: $C9


Call_002_472E:
    ld d, a                                       ; $472E: $57
    ld a, [$D0B6]                                 ; $472F: $FA $B6 $D0
    ld hl, wBattle_Creature_Current.BattleCmd_Target                                  ; $4732: $21 $03 $D1
    cp [hl]                                       ; $4735: $BE
    ret z                                         ; $4736: $C8

    ld a, d                                       ; $4737: $7A
    ld [$C9CC], a                                 ; $4738: $EA $CC $C9
    FSet16 $C9CA, bc                                    ; $4740: $70
    ld a, $01                                     ; $4741: $3E $01
    ld [wFightscene_Start], a                                 ; $4743: $EA $C5 $C9
    ld [wFightscene_Done], a                                 ; $4746: $EA $C6 $C9
    ld a, [wFightscene_ArenaIndex]                                 ; $4749: $FA $E4 $C9
    ld [wFightscene_ArenaIndex], a                                 ; $474C: $EA $E4 $C9
    ld a, [$D0DB]                                 ; $474F: $FA $DB $D0
    ld [wFightscene_CreatureLeft_ID], a                                 ; $4752: $EA $E0 $C9
    ld a, [wBattle_Creature_Target.ID]                                 ; $4755: $FA $12 $D1
    ld [wFightscene_CreatureRight_ID], a                                 ; $4758: $EA $E1 $C9
    Do_CallForeign Fightscene_NewFromBattle

    ld hl, $C706                                  ; $4763: $21 $06 $C7
    ld a, $4C                                     ; $4766: $3E $4C
    ld [hl+], a                                   ; $4768: $22
    ld a, $00                                     ; $4769: $3E $00
    ld [hl+], a                                   ; $476B: $22
    ld a, $40                                     ; $476C: $3E $40
    ld [hl+], a                                   ; $476E: $22
    ld a, $66                                     ; $476F: $3E $66
    ld [hl+], a                                   ; $4771: $22
    ld a, $0A                                     ; $4772: $3E $0A
    ld [hl+], a                                   ; $4774: $22
    Do_CallForeign Cardscene_Init
    ret                                           ; $477D: $C9


Call_002_477E:
    Do_CallForeign Call_005_560E
    ld a, $49                                     ; $4786: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $4788: $EA $3D $C9
    ld a, $C9                                     ; $478B: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $478D: $EA $3E $C9
    Do_CallForeign UNK_AwaitTextEnd
    ret                                           ; $4798: $C9

    ; $4799
System_ActorTonyDefaults::
    ; This function sets up a New Game Tony. It sets Tony's default stats and
    ; disables all of Tony's equipped rings
    ; TODO rename
    ; 
    ; Inputs:
    ;   None
    ;
    ; Copy xCreature_00_Hero's default state
    ld bc, Battle_TonyCreature_NewGameStruct
    ld hl, xCreature_00_Hero
    Battery_SetBank "XRAM Creatures"
    Battery_On
    ld d, Battle_TonyCreature_NewGameStruct.End - Battle_TonyCreature_NewGameStruct ;BUG, not the true end
    .CopyLoop:
        LdHLIBCI
        dec d
        jr nz, .CopyLoop

    ; Disable all the selected rings
    Battery_SetBank "XRAM Gamestate"
    ld hl, xInventory_Rings
    ld a, xInventory_Rings_NORING
    REPT xInventory_Rings_LENGTH
        ld [hl+], a
    ENDR
    Battery_Off
    ret

; Ability Pointers

    ; Barrage
    ret z                                         ; $47D0: $C8

    ld a, $4C                                     ; $47D1: $3E $4C
    ld bc, $5A32                                  ; $47D3: $01 $32 $5A
    call Call_002_472E                            ; $47D6: $CD $2E $47
    ret                                           ; $47D9: $C9

    ; Beam
    ret z                                         ; $47DA: $C8

    ld a, $4C                                     ; $47DB: $3E $4C
    ld bc, $4EE1                                  ; $47DD: $01 $E1 $4E
    call Call_002_472E                            ; $47E0: $CD $2E $47
    ret                                           ; $47E3: $C9


    ret z                                         ; $47E4: $C8

    ld a, $4C                                     ; $47E5: $3E $4C
    ld bc, $57D0                                  ; $47E7: $01 $D0 $57
    call Call_002_472E                            ; $47EA: $CD $2E $47
    ret                                           ; $47ED: $C9


    ret z                                         ; $47EE: $C8

    ld a, $4C                                     ; $47EF: $3E $4C
    ld bc, $53B3                                  ; $47F1: $01 $B3 $53
    call Call_002_472E                            ; $47F4: $CD $2E $47
    ret                                           ; $47F7: $C9


    ret z                                         ; $47F8: $C8

    ld a, $4C                                     ; $47F9: $3E $4C
    ld bc, $4F18                                  ; $47FB: $01 $18 $4F
    call Call_002_472E                            ; $47FE: $CD $2E $47
    ret                                           ; $4801: $C9


    ld a, $02                                     ; $4802: $3E $02
    ld [$D071], a                                 ; $4804: $EA $71 $D0
    Do_BattleCmd_Stat_IncreaseCreatureStat Skill, 20                                    ; $4811: $CD $7E $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4814: $FA $12 $D1
    cp $58                                        ; $4817: $FE $58
    ret nc                                        ; $4819: $D0

    ld [$D0C7], a                                 ; $481A: $EA $C7 $D0
    ld a, $14                                     ; $481D: $3E $14
    ld [$D0C8], a                                 ; $481F: $EA $C8 $D0
    ld hl, $C71B                                  ; $4822: $21 $1B $C7
    ld a, $4C                                     ; $4825: $3E $4C
    ld [hl+], a                                   ; $4827: $22
    ld a, $0B                                     ; $4828: $3E $0B
    ld [hl+], a                                   ; $482A: $22
    ld a, $49                                     ; $482B: $3E $49
    ld [hl+], a                                   ; $482D: $22
    ld a, $66                                     ; $482E: $3E $66
    ld [hl+], a                                   ; $4830: $22
    ld a, $0A                                     ; $4831: $3E $0A
    ld [hl+], a                                   ; $4833: $22
    call Call_002_477E                            ; $4834: $CD $7E $47
    ret                                           ; $4837: $C9


    ret z                                         ; $4838: $C8

    ld a, $4C                                     ; $4839: $3E $4C
    ld bc, $5640                                  ; $483B: $01 $40 $56
    call Call_002_472E                            ; $483E: $CD $2E $47
    call Math_Rand8Inc                                    ; $4841: $CD $4F $05
    cp $40                                        ; $4844: $FE $40
    ret nc                                        ; $4846: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $484F: $C9


    ld a, $02                                     ; $4850: $3E $02
    ld [$D071], a                                 ; $4852: $EA $71 $D0
    ld a, $10                                     ; $4855: $3E $10
    ld hl, $D110                                  ; $4857: $21 $10 $D1
    call Call_002_463F                            ; $485A: $CD $3F $46
    and a                                         ; $485D: $A7
    ret z                                         ; $485E: $C8

    ld a, $10                                     ; $485F: $3E $10
    call Call_002_46F4                            ; $4861: $CD $F4 $46
    ret                                           ; $4864: $C9


    ret z                                         ; $4865: $C8

    ld a, $4C                                     ; $4866: $3E $4C
    ld bc, $4E80                                  ; $4868: $01 $80 $4E
    call Call_002_472E                            ; $486B: $CD $2E $47
    ret                                           ; $486E: $C9


    ld a, $02                                     ; $486F: $3E $02
    ld [$D071], a                                 ; $4871: $EA $71 $D0
    Do_BattleCmd_Stat_IncreaseCreatureStat Skill, 20                                    ; $487E: $CD $7E $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4881: $FA $12 $D1
    cp $58                                        ; $4884: $FE $58
    ret nc                                        ; $4886: $D0

    ld [$D0C7], a                                 ; $4887: $EA $C7 $D0
    ld a, $14                                     ; $488A: $3E $14
    ld [$D0C8], a                                 ; $488C: $EA $C8 $D0
    ld hl, $C71B                                  ; $488F: $21 $1B $C7
    ld a, $4C                                     ; $4892: $3E $4C
    ld [hl+], a                                   ; $4894: $22
    ld a, $0B                                     ; $4895: $3E $0B
    ld [hl+], a                                   ; $4897: $22
    ld a, $49                                     ; $4898: $3E $49
    ld [hl+], a                                   ; $489A: $22
    ld a, $66                                     ; $489B: $3E $66
    ld [hl+], a                                   ; $489D: $22
    ld a, $0A                                     ; $489E: $3E $0A
    ld [hl+], a                                   ; $48A0: $22
    call Call_002_477E                            ; $48A1: $CD $7E $47
    ret                                           ; $48A4: $C9


    ret z                                         ; $48A5: $C8

    ld a, $4C                                     ; $48A6: $3E $4C
    ld bc, $4DC6                                  ; $48A8: $01 $C6 $4D
    call Call_002_472E                            ; $48AB: $CD $2E $47
    call Math_Rand8Inc                                    ; $48AE: $CD $4F $05
    cp $C0                                        ; $48B1: $FE $C0
    ret nc                                        ; $48B3: $D0

    Do_BattleCmd_Stat_DecreaseCreatureStat Skill, 20                                    ; $48BC: $CD $86 $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $48BF: $FA $12 $D1
    cp $58                                        ; $48C2: $FE $58
    ret nc                                        ; $48C4: $D0

    ld [$D0C7], a                                 ; $48C5: $EA $C7 $D0
    ld a, $14                                     ; $48C8: $3E $14
    ld [$D0C8], a                                 ; $48CA: $EA $C8 $D0
    ld hl, $C71B                                  ; $48CD: $21 $1B $C7
    ld a, $4C                                     ; $48D0: $3E $4C
    ld [hl+], a                                   ; $48D2: $22
    ld a, $F5                                     ; $48D3: $3E $F5
    ld [hl+], a                                   ; $48D5: $22
    ld a, $45                                     ; $48D6: $3E $45
    ld [hl+], a                                   ; $48D8: $22
    ld a, $66                                     ; $48D9: $3E $66
    ld [hl+], a                                   ; $48DB: $22
    ld a, $0A                                     ; $48DC: $3E $0A
    ld [hl+], a                                   ; $48DE: $22
    call Call_002_477E                            ; $48DF: $CD $7E $47
    ret                                           ; $48E2: $C9


    ret z                                         ; $48E3: $C8

    ld a, $4C                                     ; $48E4: $3E $4C
    ld bc, $4D87                                  ; $48E6: $01 $87 $4D
    call Call_002_472E                            ; $48E9: $CD $2E $47
    ret                                           ; $48EC: $C9


    ld a, $02                                     ; $48ED: $3E $02
    ld [$D071], a                                 ; $48EF: $EA $71 $D0
    ld a, $4C                                     ; $48F2: $3E $4C
    ld bc, $5320                                  ; $48F4: $01 $20 $53
    call Call_002_472E                            ; $48F7: $CD $2E $47
    Do_BattleCmd_Stat_DecreaseCreatureStat Speed, 20                                    ; $4902: $CD $86 $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4905: $FA $12 $D1
    cp $58                                        ; $4908: $FE $58
    ret nc                                        ; $490A: $D0

    ld [$D0C7], a                                 ; $490B: $EA $C7 $D0
    ld a, $14                                     ; $490E: $3E $14
    ld [$D0C8], a                                 ; $4910: $EA $C8 $D0
    ld hl, $C71B                                  ; $4913: $21 $1B $C7
    ld a, $4C                                     ; $4916: $3E $4C
    ld [hl+], a                                   ; $4918: $22
    ld a, $0D                                     ; $4919: $3E $0D
    ld [hl+], a                                   ; $491B: $22
    ld a, $46                                     ; $491C: $3E $46
    ld [hl+], a                                   ; $491E: $22
    ld a, $66                                     ; $491F: $3E $66
    ld [hl+], a                                   ; $4921: $22
    ld a, $0A                                     ; $4922: $3E $0A
    ld [hl+], a                                   ; $4924: $22
    call Call_002_477E                            ; $4925: $CD $7E $47
    ret                                           ; $4928: $C9


    ret z                                         ; $4929: $C8

    ld a, $4C                                     ; $492A: $3E $4C
    ld bc, $4E80                                  ; $492C: $01 $80 $4E
    call Call_002_472E                            ; $492F: $CD $2E $47
    ld a, $10                                     ; $4932: $3E $10
    ld [$D0C5], a                                 ; $4934: $EA $C5 $D0
    ld [$D0C6], a                                 ; $4937: $EA $C6 $D0
    Do_CallForeign Call_005_4595
    call Math_Rand8Inc                                    ; $4942: $CD $4F $05
    cp $40                                        ; $4945: $FE $40
    ret nc                                        ; $4947: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $4950: $C9


    ret z                                         ; $4951: $C8

    ld a, $4C                                     ; $4952: $3E $4C
    ld bc, $5698                                  ; $4954: $01 $98 $56
    call Call_002_472E                            ; $4957: $CD $2E $47
    ret                                           ; $495A: $C9


    ret z                                         ; $495B: $C8

    ld a, $4C                                     ; $495C: $3E $4C
    ld bc, $596F                                  ; $495E: $01 $6F $59
    call Call_002_472E                            ; $4961: $CD $2E $47
    call Math_Rand8Inc                                    ; $4964: $CD $4F $05
    cp $40                                        ; $4967: $FE $40
    ret nc                                        ; $4969: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $4972: $C9


    ret z                                         ; $4973: $C8

    ld a, $4C                                     ; $4974: $3E $4C
    ld bc, $505A                                  ; $4976: $01 $5A $50
    call Call_002_472E                            ; $4979: $CD $2E $47
    ret                                           ; $497C: $C9


    ret z                                         ; $497D: $C8

    ld a, $4C                                     ; $497E: $3E $4C
    ld bc, $51D0                                  ; $4980: $01 $D0 $51
    call Call_002_472E                            ; $4983: $CD $2E $47
    call Math_Rand8Inc                                    ; $4986: $CD $4F $05
    cp $40                                        ; $4989: $FE $40
    ret nc                                        ; $498B: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $4994: $C9


    ret z                                         ; $4995: $C8

    ld a, $4C                                     ; $4996: $3E $4C
    ld bc, $56D6                                  ; $4998: $01 $D6 $56
    call Call_002_472E                            ; $499B: $CD $2E $47
    ret                                           ; $499E: $C9


    ld a, $02                                     ; $499F: $3E $02
    ld [$D071], a                                 ; $49A1: $EA $71 $D0
    ld a, $4C                                     ; $49A4: $3E $4C
    ld bc, $5B77                                  ; $49A6: $01 $77 $5B
    call Call_002_472E                            ; $49A9: $CD $2E $47
    ld a, $40                                     ; $49AC: $3E $40
    ld hl, $D110                                  ; $49AE: $21 $10 $D1
    call Call_002_463F                            ; $49B1: $CD $3F $46
    and a                                         ; $49B4: $A7
    ret z                                         ; $49B5: $C8

    ld a, $40                                     ; $49B6: $3E $40
    call Call_002_46F4                            ; $49B8: $CD $F4 $46
    ret                                           ; $49BB: $C9


    ret z                                         ; $49BC: $C8

    ld a, $4C                                     ; $49BD: $3E $4C
    ld bc, $53B3                                  ; $49BF: $01 $B3 $53
    call Call_002_472E                            ; $49C2: $CD $2E $47
    ret                                           ; $49C5: $C9


    ret z                                         ; $49C6: $C8

    ld a, $4C                                     ; $49C7: $3E $4C
    ld bc, $4E80                                  ; $49C9: $01 $80 $4E
    call Call_002_472E                            ; $49CC: $CD $2E $47
    call Math_Rand8Inc                                    ; $49CF: $CD $4F $05
    cp $40                                        ; $49D2: $FE $40
    ret nc                                        ; $49D4: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $49DD: $C9

    ; Dream
    ld a, $02                                     ; $49DE: $3E $02
    ld [$D071], a                                 ; $49E0: $EA $71 $D0
    ld c, $07                                     ; $49E3: $0E $07
    call Math_Random                                    ; $49E5: $CD $3A $05
    inc a                                         ; $49E8: $3C
    add a                                         ; $49E9: $87
    add a                                         ; $49EA: $87
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $49EB: $EA $77 $D0
    ld a, $01                                     ; $49EE: $3E $01
    ld [$D070], a                                 ; $49F0: $EA $70 $D0
    ld [wBattle_DamageOverrideFlag], a                                 ; $49F3: $EA $76 $D0
    ret                                           ; $49F6: $C9


    ret z                                         ; $49F7: $C8

    ld a, $4C                                     ; $49F8: $3E $4C
    ld bc, $4FD5                                  ; $49FA: $01 $D5 $4F
    call Call_002_472E                            ; $49FD: $CD $2E $47
    call Math_Rand8Inc                                    ; $4A00: $CD $4F $05
    cp $40                                        ; $4A03: $FE $40
    ret nc                                        ; $4A05: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $4A0E: $C9


    ret z                                         ; $4A0F: $C8

    ld a, $4C                                     ; $4A10: $3E $4C
    ld bc, $57D0                                  ; $4A12: $01 $D0 $57
    call Call_002_472E                            ; $4A15: $CD $2E $47
    ret                                           ; $4A18: $C9


    ret z                                         ; $4A19: $C8

    ld a, $4C                                     ; $4A1A: $3E $4C
    ld bc, $4F18                                  ; $4A1C: $01 $18 $4F
    call Call_002_472E                            ; $4A1F: $CD $2E $47
    ret                                           ; $4A22: $C9


    ld a, $02                                     ; $4A23: $3E $02
    ld [$D071], a                                 ; $4A25: $EA $71 $D0
    ld a, $4C                                     ; $4A28: $3E $4C
    ld bc, $4D5C                                  ; $4A2A: $01 $5C $4D
    call Call_002_472E                            ; $4A2D: $CD $2E $47
    ld a, $40                                     ; $4A30: $3E $40
    ld hl, $D110                                  ; $4A32: $21 $10 $D1
    call Call_002_463F                            ; $4A35: $CD $3F $46
    and a                                         ; $4A38: $A7
    ret z                                         ; $4A39: $C8

    ld a, $40                                     ; $4A3A: $3E $40
    call Call_002_46F4                            ; $4A3C: $CD $F4 $46
    ret                                           ; $4A3F: $C9


    ret z                                         ; $4A40: $C8

    ld a, $4C                                     ; $4A41: $3E $4C
    ld bc, $5429                                  ; $4A43: $01 $29 $54
    call Call_002_472E                            ; $4A46: $CD $2E $47
    ret                                           ; $4A49: $C9


    ld a, $02                                     ; $4A4A: $3E $02
    ld [$D071], a                                 ; $4A4C: $EA $71 $D0
    Do_BattleCmd_Stat_IncreaseCreatureStat Luck, 50                                    ; $4A59: $CD $7E $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4A5C: $FA $12 $D1
    cp $58                                        ; $4A5F: $FE $58
    ret nc                                        ; $4A61: $D0

    ld [$D0C7], a                                 ; $4A62: $EA $C7 $D0
    ld a, $32                                     ; $4A65: $3E $32
    ld [$D0C8], a                                 ; $4A67: $EA $C8 $D0
    ld hl, $C71B                                  ; $4A6A: $21 $1B $C7
    ld a, $4C                                     ; $4A6D: $3E $4C
    ld [hl+], a                                   ; $4A6F: $22
    ld a, $C9                                     ; $4A70: $3E $C9
    ld [hl+], a                                   ; $4A72: $22
    ld a, $48                                     ; $4A73: $3E $48
    ld [hl+], a                                   ; $4A75: $22
    ld a, $66                                     ; $4A76: $3E $66
    ld [hl+], a                                   ; $4A78: $22
    ld a, $0A                                     ; $4A79: $3E $0A
    ld [hl+], a                                   ; $4A7B: $22
    call Call_002_477E                            ; $4A7C: $CD $7E $47
    ret                                           ; $4A7F: $C9


    ret z                                         ; $4A80: $C8

    ld a, $4C                                     ; $4A81: $3E $4C
    ld bc, $4DC6                                  ; $4A83: $01 $C6 $4D
    call Call_002_472E                            ; $4A86: $CD $2E $47
    ret                                           ; $4A89: $C9


    ret z                                         ; $4A8A: $C8

    ld a, $4C                                     ; $4A8B: $3E $4C
    ld bc, $52AE                                  ; $4A8D: $01 $AE $52
    call Call_002_472E                            ; $4A90: $CD $2E $47
    ret                                           ; $4A93: $C9


    ld a, $02                                     ; $4A94: $3E $02
    ld [$D071], a                                 ; $4A96: $EA $71 $D0
    Do_BattleCmd_Stat_DecreaseCreatureStat Speed, 20                                    ; $4AA1: $CD $86 $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4AA4: $FA $12 $D1
    cp $58                                        ; $4AA7: $FE $58
    ret nc                                        ; $4AA9: $D0

    ld [$D0C7], a                                 ; $4AAA: $EA $C7 $D0
    ld a, $14                                     ; $4AAD: $3E $14
    ld [$D0C8], a                                 ; $4AAF: $EA $C8 $D0
    ld hl, $C71B                                  ; $4AB2: $21 $1B $C7
    ld a, $4C                                     ; $4AB5: $3E $4C
    ld [hl+], a                                   ; $4AB7: $22
    ld a, $0D                                     ; $4AB8: $3E $0D
    ld [hl+], a                                   ; $4ABA: $22
    ld a, $46                                     ; $4ABB: $3E $46
    ld [hl+], a                                   ; $4ABD: $22
    ld a, $66                                     ; $4ABE: $3E $66
    ld [hl+], a                                   ; $4AC0: $22
    ld a, $0A                                     ; $4AC1: $3E $0A
    ld [hl+], a                                   ; $4AC3: $22
    call Call_002_477E                            ; $4AC4: $CD $7E $47
    ret                                           ; $4AC7: $C9


    ret z                                         ; $4AC8: $C8

    ld a, $4C                                     ; $4AC9: $3E $4C
    ld bc, $5B01                                  ; $4ACB: $01 $01 $5B
    call Call_002_472E                            ; $4ACE: $CD $2E $47
    ret                                           ; $4AD1: $C9


    ret z                                         ; $4AD2: $C8

    ld a, $4C                                     ; $4AD3: $3E $4C
    ld bc, $53EE                                  ; $4AD5: $01 $EE $53
    call Call_002_472E                            ; $4AD8: $CD $2E $47
    ret                                           ; $4ADB: $C9


    ret z                                         ; $4ADC: $C8

    ld a, $4C                                     ; $4ADD: $3E $4C
    ld bc, $576A                                  ; $4ADF: $01 $6A $57
    call Call_002_472E                            ; $4AE2: $CD $2E $47
    ret                                           ; $4AE5: $C9

;Heal
    ld a, $4C                                     ; $4AE6: $3E $4C
    ld bc, $4D35                                  ; $4AE8: $01 $35 $4D
    call Call_002_472E                            ; $4AEB: $CD $2E $47
    ld c, $07                                     ; $4AEE: $0E $07
    call Math_Random                                    ; $4AF0: $CD $3A $05
    inc a                                         ; $4AF3: $3C
    add a                                         ; $4AF4: $87
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $4AF5: $EA $77 $D0
    ld a, $01                                     ; $4AF8: $3E $01
    ld [$D070], a                                 ; $4AFA: $EA $70 $D0
    ld [wBattle_DamageOverrideFlag], a                                 ; $4AFD: $EA $76 $D0
    ret                                           ; $4B00: $C9

;Ignite
    ret z                                         ; $4B01: $C8

    ld a, $4C                                     ; $4B02: $3E $4C
    ld bc, $4F18                                  ; $4B04: $01 $18 $4F
    call Call_002_472E                            ; $4B07: $CD $2E $47
    call Math_Rand8Inc                                    ; $4B0A: $CD $4F $05
    cp $80                                        ; $4B0D: $FE $80
    ret nc                                        ; $4B0F: $D0

    ld a, $08                                     ; $4B10: $3E $08
    ld hl, $D110                                  ; $4B12: $21 $10 $D1
    call Call_002_463F                            ; $4B15: $CD $3F $46
    and a                                         ; $4B18: $A7
    ret z                                         ; $4B19: $C8

    ld a, $30                                     ; $4B1A: $3E $30
    ld hl, $D0DA                                  ; $4B1C: $21 $DA $D0
    or [hl]                                       ; $4B1F: $B6
    ld [hl], a                                    ; $4B20: $77
    ld a, $08                                     ; $4B21: $3E $08
    call Call_002_46F4                            ; $4B23: $CD $F4 $46
    ret                                           ; $4B26: $C9

;Impale
    ret z                                         ; $4B27: $C8

    ld a, $4C                                     ; $4B28: $3E $4C
    ld bc, $5854                                  ; $4B2A: $01 $54 $58
    call Call_002_472E                            ; $4B2D: $CD $2E $47
    ret                                           ; $4B30: $C9


    ret z                                         ; $4B31: $C8

    ld a, $4C                                     ; $4B32: $3E $4C
    ld bc, $57D0                                  ; $4B34: $01 $D0 $57
    call Call_002_472E                            ; $4B37: $CD $2E $47
    ld a, $01                                     ; $4B3A: $3E $01
    ld hl, $D110                                  ; $4B3C: $21 $10 $D1
    call Call_002_463F                            ; $4B3F: $CD $3F $46
    and a                                         ; $4B42: $A7
    ret z                                         ; $4B43: $C8

    ld a, $01                                     ; $4B44: $3E $01
    call Call_002_46F4                            ; $4B46: $CD $F4 $46
    ret                                           ; $4B49: $C9


    ret z                                         ; $4B4A: $C8

    ld a, $4C                                     ; $4B4B: $3E $4C
    ld bc, $596F                                  ; $4B4D: $01 $6F $59
    call Call_002_472E                            ; $4B50: $CD $2E $47
    ret                                           ; $4B53: $C9


    ld a, $02                                     ; $4B54: $3E $02
    ld [$D071], a                                 ; $4B56: $EA $71 $D0
    ld a, $80                                     ; $4B59: $3E $80
    ld hl, $D110                                  ; $4B5B: $21 $10 $D1
    call Call_002_463F                            ; $4B5E: $CD $3F $46
    and a                                         ; $4B61: $A7
    ret z                                         ; $4B62: $C8

    ld a, $80                                     ; $4B63: $3E $80
    call Call_002_46F4                            ; $4B65: $CD $F4 $46
    ret                                           ; $4B68: $C9


    ret z                                         ; $4B69: $C8

    ld a, $4C                                     ; $4B6A: $3E $4C
    ld bc, $5205                                  ; $4B6C: $01 $05 $52
    call Call_002_472E                            ; $4B6F: $CD $2E $47
    ret                                           ; $4B72: $C9


    ret z                                         ; $4B73: $C8

    ld a, $4C                                     ; $4B74: $3E $4C
    ld bc, $5109                                  ; $4B76: $01 $09 $51
    call Call_002_472E                            ; $4B79: $CD $2E $47
    ret                                           ; $4B7C: $C9


    ld a, $02                                     ; $4B7D: $3E $02
    ld [$D071], a                                 ; $4B7F: $EA $71 $D0
    ld a, $4C                                     ; $4B82: $3E $4C
    ld bc, $4EE1                                  ; $4B84: $01 $E1 $4E
    call Call_002_472E                            ; $4B87: $CD $2E $47
    Do_BattleCmd_Stat_DecreaseCreatureStat Resist, 10                                    ; $4B92: $CD $86 $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4B95: $FA $12 $D1
    cp $58                                        ; $4B98: $FE $58
    ret nc                                        ; $4B9A: $D0

    ld [$D0C7], a                                 ; $4B9B: $EA $C7 $D0
    ld a, $0A                                     ; $4B9E: $3E $0A
    ld [$D0C8], a                                 ; $4BA0: $EA $C8 $D0
    ld hl, $C71B                                  ; $4BA3: $21 $1B $C7
    ld a, $4C                                     ; $4BA6: $3E $4C
    ld [hl+], a                                   ; $4BA8: $22
    ld a, $DC                                     ; $4BA9: $3E $DC
    ld [hl+], a                                   ; $4BAB: $22
    ld a, $45                                     ; $4BAC: $3E $45
    ld [hl+], a                                   ; $4BAE: $22
    ld a, $66                                     ; $4BAF: $3E $66
    ld [hl+], a                                   ; $4BB1: $22
    ld a, $0A                                     ; $4BB2: $3E $0A
    ld [hl+], a                                   ; $4BB4: $22
    call Call_002_477E                            ; $4BB5: $CD $7E $47
    ret                                           ; $4BB8: $C9


    ret z                                         ; $4BB9: $C8

    ld a, $4C                                     ; $4BBA: $3E $4C
    ld bc, $5245                                  ; $4BBC: $01 $45 $52
    call Call_002_472E                            ; $4BBF: $CD $2E $47
    ret                                           ; $4BC2: $C9


    ret z                                         ; $4BC3: $C8

    ld a, $4C                                     ; $4BC4: $3E $4C
    ld bc, $59D2                                  ; $4BC6: $01 $D2 $59
    call Call_002_472E                            ; $4BC9: $CD $2E $47
    ret                                           ; $4BCC: $C9


    ret z                                         ; $4BCD: $C8

    ld a, $4C                                     ; $4BCE: $3E $4C
    ld bc, $5A32                                  ; $4BD0: $01 $32 $5A
    call Call_002_472E                            ; $4BD3: $CD $2E $47
    ret                                           ; $4BD6: $C9

;Maul ability code
    ld a, $02                                     ; $4BD7: $3E $02
    ld [$D071], a                                 ; $4BD9: $EA $71 $D0
    ld a, $4C                                     ; $4BDC: $3E $4C
    ld bc, $4B79                                  ; $4BDE: $01 $79 $4B
    call Call_002_472E                            ; $4BE1: $CD $2E $47
    ld a, $40                                     ; $4BE4: $3E $40
    ld hl, $D110                                  ; $4BE6: $21 $10 $D1
    call Call_002_463F                            ; $4BE9: $CD $3F $46
    and a                                         ; $4BEC: $A7
    ret z                                         ; $4BED: $C8

    ld a, $40                                     ; $4BEE: $3E $40
    call Call_002_46F4                            ; $4BF0: $CD $F4 $46
    ret                                           ; $4BF3: $C9


    ld a, $02                                     ; $4BF4: $3E $02
    ld [$D071], a                                 ; $4BF6: $EA $71 $D0
    ld a, $4C                                     ; $4BF9: $3E $4C
    ld bc, $4D35                                  ; $4BFB: $01 $35 $4D
    call Call_002_472E                            ; $4BFE: $CD $2E $47
    Do_CallForeign Call_007_66D2
    ret                                           ; $4C09: $C9


    ld a, $02                                     ; $4C0A: $3E $02
    ld [$D071], a                                 ; $4C0C: $EA $71 $D0
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 10                                    ; $4C19: $CD $7E $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4C1C: $FA $12 $D1
    cp $58                                        ; $4C1F: $FE $58
    ret nc                                        ; $4C21: $D0

    ld [$D0C7], a                                 ; $4C22: $EA $C7 $D0
    ld a, $0A                                     ; $4C25: $3E $0A
    ld [$D0C8], a                                 ; $4C27: $EA $C8 $D0
    ld hl, $C71B                                  ; $4C2A: $21 $1B $C7
    ld a, $4C                                     ; $4C2D: $3E $4C
    ld [hl+], a                                   ; $4C2F: $22
    ld a, $B1                                     ; $4C30: $3E $B1
    ld [hl+], a                                   ; $4C32: $22
    ld a, $48                                     ; $4C33: $3E $48
    ld [hl+], a                                   ; $4C35: $22
    ld a, $66                                     ; $4C36: $3E $66
    ld [hl+], a                                   ; $4C38: $22
    ld a, $0A                                     ; $4C39: $3E $0A
    ld [hl+], a                                   ; $4C3B: $22
    call Call_002_477E                            ; $4C3C: $CD $7E $47
    ret                                           ; $4C3F: $C9


    ret z                                         ; $4C40: $C8

    ld a, $4C                                     ; $4C41: $3E $4C
    ld bc, $4E80                                  ; $4C43: $01 $80 $4E
    call Call_002_472E                            ; $4C46: $CD $2E $47
    ret                                           ; $4C49: $C9


    ret z                                         ; $4C4A: $C8

    ld a, $4C                                     ; $4C4B: $3E $4C
    ld bc, $5BC4                                  ; $4C4D: $01 $C4 $5B
    call Call_002_472E                            ; $4C50: $CD $2E $47
    ret                                           ; $4C53: $C9


    ret z                                         ; $4C54: $C8

    ld a, $4C                                     ; $4C55: $3E $4C
    ld bc, $4C5E                                  ; $4C57: $01 $5E $4C
    call Call_002_472E                            ; $4C5A: $CD $2E $47
    call Math_Rand8Inc                                    ; $4C5D: $CD $4F $05
    cp $40                                        ; $4C60: $FE $40
    ret nc                                        ; $4C62: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $4C6B: $C9


    ret z                                         ; $4C6C: $C8

    ld a, $4C                                     ; $4C6D: $3E $4C
    ld bc, $5A32                                  ; $4C6F: $01 $32 $5A
    call Call_002_472E                            ; $4C72: $CD $2E $47
    ret                                           ; $4C75: $C9


    ld a, $02                                     ; $4C76: $3E $02
    ld [$D071], a                                 ; $4C78: $EA $71 $D0
    ld a, $4C                                     ; $4C7B: $3E $4C
    ld bc, $560E                                  ; $4C7D: $01 $0E $56
    call Call_002_472E                            ; $4C80: $CD $2E $47
    ld a, $40                                     ; $4C83: $3E $40
    ld hl, $D110                                  ; $4C85: $21 $10 $D1
    call Call_002_463F                            ; $4C88: $CD $3F $46
    and a                                         ; $4C8B: $A7
    ret z                                         ; $4C8C: $C8

    ld a, $40                                     ; $4C8D: $3E $40
    call Call_002_46F4                            ; $4C8F: $CD $F4 $46
    ret                                           ; $4C92: $C9


    ld a, $02                                     ; $4C93: $3E $02
    ld [$D071], a                                 ; $4C95: $EA $71 $D0
    ld a, $20                                     ; $4C98: $3E $20
    ld hl, $D110                                  ; $4C9A: $21 $10 $D1
    call Call_002_463F                            ; $4C9D: $CD $3F $46
    and a                                         ; $4CA0: $A7
    ret z                                         ; $4CA1: $C8

    ld a, $20                                     ; $4CA2: $3E $20
    call Call_002_46F4                            ; $4CA4: $CD $F4 $46
    ret                                           ; $4CA7: $C9


    ret z                                         ; $4CA8: $C8

    ld a, $4C                                     ; $4CA9: $3E $4C
    ld bc, $4DC6                                  ; $4CAB: $01 $C6 $4D
    call Call_002_472E                            ; $4CAE: $CD $2E $47
    ret                                           ; $4CB1: $C9


    ret z                                         ; $4CB2: $C8

    ld a, $4C                                     ; $4CB3: $3E $4C
    ld bc, $4E4B                                  ; $4CB5: $01 $4B $4E
    call Call_002_472E                            ; $4CB8: $CD $2E $47
    ret                                           ; $4CBB: $C9


    ret z                                         ; $4CBC: $C8

    ld a, $4C                                     ; $4CBD: $3E $4C
    ld bc, $5698                                  ; $4CBF: $01 $98 $56
    call Call_002_472E                            ; $4CC2: $CD $2E $47
    ret                                           ; $4CC5: $C9


    ld a, $02                                     ; $4CC6: $3E $02
    ld [$D071], a                                 ; $4CC8: $EA $71 $D0
    ld a, $4C                                     ; $4CCB: $3E $4C
    ld bc, $4F64                                  ; $4CCD: $01 $64 $4F
    call Call_002_472E                            ; $4CD0: $CD $2E $47
    Do_BattleCmd_Stat_DecreaseCreatureStat Defence, 10                                    ; $4CDB: $CD $86 $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4CDE: $FA $12 $D1
    cp $58                                        ; $4CE1: $FE $58
    ret nc                                        ; $4CE3: $D0

    ld [$D0C7], a                                 ; $4CE4: $EA $C7 $D0
    ld a, $0A                                     ; $4CE7: $3E $0A
    ld [$D0C8], a                                 ; $4CE9: $EA $C8 $D0
    ld hl, $C71B                                  ; $4CEC: $21 $1B $C7
    ld a, $4C                                     ; $4CEF: $3E $4C
    ld [hl+], a                                   ; $4CF1: $22
    ld a, $C2                                     ; $4CF2: $3E $C2
    ld [hl+], a                                   ; $4CF4: $22
    ld a, $45                                     ; $4CF5: $3E $45
    ld [hl+], a                                   ; $4CF7: $22
    ld a, $66                                     ; $4CF8: $3E $66
    ld [hl+], a                                   ; $4CFA: $22
    ld a, $0A                                     ; $4CFB: $3E $0A
    ld [hl+], a                                   ; $4CFD: $22
    call Call_002_477E                            ; $4CFE: $CD $7E $47
    ret                                           ; $4D01: $C9


    ret z                                         ; $4D02: $C8

    ld a, $4C                                     ; $4D03: $3E $4C
    ld bc, $5805                                  ; $4D05: $01 $05 $58
    call Call_002_472E                            ; $4D08: $CD $2E $47
    ret                                           ; $4D0B: $C9


    ret z                                         ; $4D0C: $C8

    ld a, $4C                                     ; $4D0D: $3E $4C
    ld bc, $4D87                                  ; $4D0F: $01 $87 $4D
    call Call_002_472E                            ; $4D12: $CD $2E $47
    ret                                           ; $4D15: $C9


    ret z                                         ; $4D16: $C8

    ld a, $4C                                     ; $4D17: $3E $4C
    ld bc, $5A32                                  ; $4D19: $01 $32 $5A
    call Call_002_472E                            ; $4D1C: $CD $2E $47
    call Math_Rand8Inc                                    ; $4D1F: $CD $4F $05
    cp $40                                        ; $4D22: $FE $40
    ret nc                                        ; $4D24: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $4D2D: $C9


    ret z                                         ; $4D2E: $C8

    ld a, $4C                                     ; $4D2F: $3E $4C
    ld bc, $4D5C                                  ; $4D31: $01 $5C $4D
    call Call_002_472E                            ; $4D34: $CD $2E $47
    ret                                           ; $4D37: $C9


    ret z                                         ; $4D38: $C8

    ld a, $4C                                     ; $4D39: $3E $4C
    ld bc, $5205                                  ; $4D3B: $01 $05 $52
    call Call_002_472E                            ; $4D3E: $CD $2E $47
    ret                                           ; $4D41: $C9


    ld a, $02                                     ; $4D42: $3E $02
    ld [$D071], a                                 ; $4D44: $EA $71 $D0
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 20                                    ; $4D51: $CD $7E $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4D54: $FA $12 $D1
    cp $58                                        ; $4D57: $FE $58
    ret nc                                        ; $4D59: $D0

    ld [$D0C7], a                                 ; $4D5A: $EA $C7 $D0
    ld a, $14                                     ; $4D5D: $3E $14
    ld [$D0C8], a                                 ; $4D5F: $EA $C8 $D0
    ld hl, $C71B                                  ; $4D62: $21 $1B $C7
    ld a, $4C                                     ; $4D65: $3E $4C
    ld [hl+], a                                   ; $4D67: $22
    ld a, $B1                                     ; $4D68: $3E $B1
    ld [hl+], a                                   ; $4D6A: $22
    ld a, $48                                     ; $4D6B: $3E $48
    ld [hl+], a                                   ; $4D6D: $22
    ld a, $66                                     ; $4D6E: $3E $66
    ld [hl+], a                                   ; $4D70: $22
    ld a, $0A                                     ; $4D71: $3E $0A
    ld [hl+], a                                   ; $4D73: $22
    call Call_002_477E                            ; $4D74: $CD $7E $47
    ret                                           ; $4D77: $C9


    ret z                                         ; $4D78: $C8

    ld a, $4C                                     ; $4D79: $3E $4C
    ld bc, $5360                                  ; $4D7B: $01 $60 $53
    call Call_002_472E                            ; $4D7E: $CD $2E $47
    ret                                           ; $4D81: $C9


    ret z                                         ; $4D82: $C8

    ld a, $4C                                     ; $4D83: $3E $4C
    ld bc, $5A32                                  ; $4D85: $01 $32 $5A
    call Call_002_472E                            ; $4D88: $CD $2E $47
    call Math_Rand8Inc                                    ; $4D8B: $CD $4F $05
    cp $40                                        ; $4D8E: $FE $40
    ret nc                                        ; $4D90: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $4D99: $C9


    ld a, $02                                     ; $4D9A: $3E $02
    ld [$D071], a                                 ; $4D9C: $EA $71 $D0
    ld a, $80                                     ; $4D9F: $3E $80
    ld hl, $D110                                  ; $4DA1: $21 $10 $D1
    call Call_002_463F                            ; $4DA4: $CD $3F $46
    and a                                         ; $4DA7: $A7
    ret z                                         ; $4DA8: $C8

    ld a, $80                                     ; $4DA9: $3E $80
    call Call_002_46F4                            ; $4DAB: $CD $F4 $46
    ret                                           ; $4DAE: $C9


    ld a, $02                                     ; $4DAF: $3E $02
    ld [$D071], a                                 ; $4DB1: $EA $71 $D0
    Do_BattleCmd_Stat_IncreaseCreatureStat Speed, 20                                    ; $4DBE: $CD $7E $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4DC1: $FA $12 $D1
    cp $58                                        ; $4DC4: $FE $58
    ret nc                                        ; $4DC6: $D0

    ld [$D0C7], a                                 ; $4DC7: $EA $C7 $D0
    ld a, $14                                     ; $4DCA: $3E $14
    ld [$D0C8], a                                 ; $4DCC: $EA $C8 $D0
    ld hl, $C71B                                  ; $4DCF: $21 $1B $C7
    ld a, $4C                                     ; $4DD2: $3E $4C
    ld [hl+], a                                   ; $4DD4: $22
    ld a, $F5                                     ; $4DD5: $3E $F5
    ld [hl+], a                                   ; $4DD7: $22
    ld a, $48                                     ; $4DD8: $3E $48
    ld [hl+], a                                   ; $4DDA: $22
    ld a, $66                                     ; $4DDB: $3E $66
    ld [hl+], a                                   ; $4DDD: $22
    ld a, $0A                                     ; $4DDE: $3E $0A
    ld [hl+], a                                   ; $4DE0: $22
    call Call_002_477E                            ; $4DE1: $CD $7E $47
    ret                                           ; $4DE4: $C9


    ret z                                         ; $4DE5: $C8

    ld a, $4C                                     ; $4DE6: $3E $4C
    ld bc, $4F64                                  ; $4DE8: $01 $64 $4F
    call Call_002_472E                            ; $4DEB: $CD $2E $47
    Do_BattleCmd_Stat_DecreaseCreatureStat Resist, 20                                    ; $4DF6: $CD $86 $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4DF9: $FA $12 $D1
    cp $58                                        ; $4DFC: $FE $58
    ret nc                                        ; $4DFE: $D0

    ld [$D0C7], a                                 ; $4DFF: $EA $C7 $D0
    ld a, $14                                     ; $4E02: $3E $14
    ld [$D0C8], a                                 ; $4E04: $EA $C8 $D0
    ld hl, $C71B                                  ; $4E07: $21 $1B $C7
    ld a, $4C                                     ; $4E0A: $3E $4C
    ld [hl+], a                                   ; $4E0C: $22
    ld a, $DC                                     ; $4E0D: $3E $DC
    ld [hl+], a                                   ; $4E0F: $22
    ld a, $45                                     ; $4E10: $3E $45
    ld [hl+], a                                   ; $4E12: $22
    ld a, $66                                     ; $4E13: $3E $66
    ld [hl+], a                                   ; $4E15: $22
    ld a, $0A                                     ; $4E16: $3E $0A
    ld [hl+], a                                   ; $4E18: $22
    call Call_002_477E                            ; $4E19: $CD $7E $47
    ret                                           ; $4E1C: $C9


    ret z                                         ; $4E1D: $C8

    ld a, $4C                                     ; $4E1E: $3E $4C
    ld bc, $4D5C                                  ; $4E20: $01 $5C $4D
    call Call_002_472E                            ; $4E23: $CD $2E $47
    ret                                           ; $4E26: $C9


    ld a, $02                                     ; $4E27: $3E $02
    ld [$D071], a                                 ; $4E29: $EA $71 $D0
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 10                                    ; $4E36: $CD $7E $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4E39: $FA $12 $D1
    cp $58                                        ; $4E3C: $FE $58
    ret nc                                        ; $4E3E: $D0

    ld [$D0C7], a                                 ; $4E3F: $EA $C7 $D0
    ld a, $0A                                     ; $4E42: $3E $0A
    ld [$D0C8], a                                 ; $4E44: $EA $C8 $D0
    ld hl, $C71B                                  ; $4E47: $21 $1B $C7
    ld a, $4C                                     ; $4E4A: $3E $4C
    ld [hl+], a                                   ; $4E4C: $22
    ld a, $B1                                     ; $4E4D: $3E $B1
    ld [hl+], a                                   ; $4E4F: $22
    ld a, $48                                     ; $4E50: $3E $48
    ld [hl+], a                                   ; $4E52: $22
    ld a, $66                                     ; $4E53: $3E $66
    ld [hl+], a                                   ; $4E55: $22
    ld a, $0A                                     ; $4E56: $3E $0A
    ld [hl+], a                                   ; $4E58: $22
    call Call_002_477E                            ; $4E59: $CD $7E $47
    ret                                           ; $4E5C: $C9


    ret z                                         ; $4E5D: $C8

    ld a, $4C                                     ; $4E5E: $3E $4C
    ld bc, $560E                                  ; $4E60: $01 $0E $56
    call Call_002_472E                            ; $4E63: $CD $2E $47
    call Math_Rand8Inc                                    ; $4E66: $CD $4F $05
    cp $C0                                        ; $4E69: $FE $C0
    ret nc                                        ; $4E6B: $D0

    ld a, $01                                     ; $4E6C: $3E $01
    ld hl, $D110                                  ; $4E6E: $21 $10 $D1
    call Call_002_463F                            ; $4E71: $CD $3F $46
    and a                                         ; $4E74: $A7
    ret z                                         ; $4E75: $C8

    ld a, $01                                     ; $4E76: $3E $01
    call Call_002_46F4                            ; $4E78: $CD $F4 $46
    ret                                           ; $4E7B: $C9


    ret z                                         ; $4E7C: $C8

    ld a, $4C                                     ; $4E7D: $3E $4C
    ld bc, $5C67                                  ; $4E7F: $01 $67 $5C
    call Call_002_472E                            ; $4E82: $CD $2E $47
    ret                                           ; $4E85: $C9


    ret z                                         ; $4E86: $C8

    ld a, $4C                                     ; $4E87: $3E $4C
    ld bc, $5854                                  ; $4E89: $01 $54 $58
    call Call_002_472E                            ; $4E8C: $CD $2E $47
    call Math_Rand8Inc                                    ; $4E8F: $CD $4F $05
    cp $C0                                        ; $4E92: $FE $C0
    ret nc                                        ; $4E94: $D0

    ld a, $01                                     ; $4E95: $3E $01
    ld hl, $D110                                  ; $4E97: $21 $10 $D1
    call Call_002_463F                            ; $4E9A: $CD $3F $46
    and a                                         ; $4E9D: $A7
    ret z                                         ; $4E9E: $C8

    ld a, $01                                     ; $4E9F: $3E $01
    call Call_002_46F4                            ; $4EA1: $CD $F4 $46
    ret                                           ; $4EA4: $C9


    ret z                                         ; $4EA5: $C8

    ld a, $4C                                     ; $4EA6: $3E $4C
    ld bc, $5109                                  ; $4EA8: $01 $09 $51
    call Call_002_472E                            ; $4EAB: $CD $2E $47
    ret                                           ; $4EAE: $C9


    ret z                                         ; $4EAF: $C8

    ld a, $4C                                     ; $4EB0: $3E $4C
    ld bc, $4BCC                                  ; $4EB2: $01 $CC $4B
    call Call_002_472E                            ; $4EB5: $CD $2E $47
    ret                                           ; $4EB8: $C9


    ld a, $02                                     ; $4EB9: $3E $02
    ld [$D071], a                                 ; $4EBB: $EA $71 $D0
    ld a, $40                                     ; $4EBE: $3E $40
    ld hl, $D110                                  ; $4EC0: $21 $10 $D1
    call Call_002_463F                            ; $4EC3: $CD $3F $46
    and a                                         ; $4EC6: $A7
    ret z                                         ; $4EC7: $C8

    ld a, $40                                     ; $4EC8: $3E $40
    call Call_002_46F4                            ; $4ECA: $CD $F4 $46
    ret                                           ; $4ECD: $C9


    ret z                                         ; $4ECE: $C8

    ld a, $4C                                     ; $4ECF: $3E $4C
    ld bc, $5320                                  ; $4ED1: $01 $20 $53
    call Call_002_472E                            ; $4ED4: $CD $2E $47
    ld a, $10                                     ; $4ED7: $3E $10
    ld [$D0C5], a                                 ; $4ED9: $EA $C5 $D0
    ld [$D0C6], a                                 ; $4EDC: $EA $C6 $D0
    Do_CallForeign Call_005_4595
    ret                                           ; $4EE7: $C9


    ret z                                         ; $4EE8: $C8

    ld a, $4C                                     ; $4EE9: $3E $4C
    ld bc, $51D0                                  ; $4EEB: $01 $D0 $51
    call Call_002_472E                            ; $4EEE: $CD $2E $47
    ret                                           ; $4EF1: $C9


    ret z                                         ; $4EF2: $C8

    ld a, $4C                                     ; $4EF3: $3E $4C
    ld bc, $5805                                  ; $4EF5: $01 $05 $58
    call Call_002_472E                            ; $4EF8: $CD $2E $47
    ret                                           ; $4EFB: $C9


    ret z                                         ; $4EFC: $C8

    ld a, $4C                                     ; $4EFD: $3E $4C
    ld bc, $4CB8                                  ; $4EFF: $01 $B8 $4C
    call Call_002_472E                            ; $4F02: $CD $2E $47
    ret                                           ; $4F05: $C9


    ret z                                         ; $4F06: $C8

    ld a, $4C                                     ; $4F07: $3E $4C
    ld bc, $5889                                  ; $4F09: $01 $89 $58
    call Call_002_472E                            ; $4F0C: $CD $2E $47
    call Math_Rand8Inc                                    ; $4F0F: $CD $4F $05
    cp $40                                        ; $4F12: $FE $40
    ret nc                                        ; $4F14: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $4F1D: $C9


    ret z                                         ; $4F1E: $C8

    ld a, $4C                                     ; $4F1F: $3E $4C
    ld bc, $5854                                  ; $4F21: $01 $54 $58
    call Call_002_472E                            ; $4F24: $CD $2E $47
    ret                                           ; $4F27: $C9


    ret z                                         ; $4F28: $C8

    ld a, $4C                                     ; $4F29: $3E $4C
    ld bc, $5854                                  ; $4F2B: $01 $54 $58
    call Call_002_472E                            ; $4F2E: $CD $2E $47
    ret                                           ; $4F31: $C9


    ret z                                         ; $4F32: $C8

    ld a, $4C                                     ; $4F33: $3E $4C
    ld bc, $55BD                                  ; $4F35: $01 $BD $55
    call Call_002_472E                            ; $4F38: $CD $2E $47
    call Math_Rand8Inc                                    ; $4F3B: $CD $4F $05
    cp $40                                        ; $4F3E: $FE $40
    ret nc                                        ; $4F40: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $4F49: $C9


    ld a, $02                                     ; $4F4A: $3E $02
    ld [$D071], a                                 ; $4F4C: $EA $71 $D0
    ld a, $40                                     ; $4F4F: $3E $40
    ld hl, $D110                                  ; $4F51: $21 $10 $D1
    call Call_002_463F                            ; $4F54: $CD $3F $46
    and a                                         ; $4F57: $A7
    ret z                                         ; $4F58: $C8

    ld a, $40                                     ; $4F59: $3E $40
    call Call_002_46F4                            ; $4F5B: $CD $F4 $46
    ret                                           ; $4F5E: $C9


    ret z                                         ; $4F5F: $C8

    ld a, $4C                                     ; $4F60: $3E $4C
    ld bc, $4C7E                                  ; $4F62: $01 $7E $4C
    call Call_002_472E                            ; $4F65: $CD $2E $47
    ret                                           ; $4F68: $C9


    ret z                                         ; $4F69: $C8

    ld a, $4C                                     ; $4F6A: $3E $4C
    ld bc, $58CD                                  ; $4F6C: $01 $CD $58
    call Call_002_472E                            ; $4F6F: $CD $2E $47
    ret                                           ; $4F72: $C9


    ret z                                         ; $4F73: $C8

    ld a, $4C                                     ; $4F74: $3E $4C
    ld bc, $4CB8                                  ; $4F76: $01 $B8 $4C
    call Call_002_472E                            ; $4F79: $CD $2E $47
    ret                                           ; $4F7C: $C9


    ld a, $02                                     ; $4F7D: $3E $02
    ld [$D071], a                                 ; $4F7F: $EA $71 $D0
    Do_BattleCmd_Stat_IncreaseCreatureStat Defence, 10                                    ; $4F8C: $CD $7E $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4F8F: $FA $12 $D1
    cp $58                                        ; $4F92: $FE $58
    ret nc                                        ; $4F94: $D0

    ld [$D0C7], a                                 ; $4F95: $EA $C7 $D0
    ld a, $0A                                     ; $4F98: $3E $0A
    ld [$D0C8], a                                 ; $4F9A: $EA $C8 $D0
    ld hl, $C71B                                  ; $4F9D: $21 $1B $C7
    ld a, $4C                                     ; $4FA0: $3E $4C
    ld [hl+], a                                   ; $4FA2: $22
    ld a, $B1                                     ; $4FA3: $3E $B1
    ld [hl+], a                                   ; $4FA5: $22
    ld a, $48                                     ; $4FA6: $3E $48
    ld [hl+], a                                   ; $4FA8: $22
    ld a, $66                                     ; $4FA9: $3E $66
    ld [hl+], a                                   ; $4FAB: $22
    ld a, $0A                                     ; $4FAC: $3E $0A
    ld [hl+], a                                   ; $4FAE: $22
    call Call_002_477E                            ; $4FAF: $CD $7E $47
    ret                                           ; $4FB2: $C9


    ret z                                         ; $4FB3: $C8

    ld a, $4C                                     ; $4FB4: $3E $4C
    ld bc, $57D0                                  ; $4FB6: $01 $D0 $57
    call Call_002_472E                            ; $4FB9: $CD $2E $47
    ld a, $10                                     ; $4FBC: $3E $10
    ld [$D0C5], a                                 ; $4FBE: $EA $C5 $D0
    ld [$D0C6], a                                 ; $4FC1: $EA $C6 $D0
    Do_CallForeign Call_005_4595
    ret                                           ; $4FCC: $C9


    ret z                                         ; $4FCD: $C8

    ld a, $4C                                     ; $4FCE: $3E $4C
    ld bc, $590B                                  ; $4FD0: $01 $0B $59
    call Call_002_472E                            ; $4FD3: $CD $2E $47
    call Math_Rand8Inc                                    ; $4FD6: $CD $4F $05
    cp $40                                        ; $4FD9: $FE $40
    ret nc                                        ; $4FDB: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $4FE4: $C9


    ret z                                         ; $4FE5: $C8

    ld a, $4C                                     ; $4FE6: $3E $4C
    ld bc, $5320                                  ; $4FE8: $01 $20 $53
    call Call_002_472E                            ; $4FEB: $CD $2E $47
    Do_BattleCmd_Stat_DecreaseCreatureStat Speed, 20                                    ; $4FF6: $CD $86 $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $4FF9: $FA $12 $D1
    cp $58                                        ; $4FFC: $FE $58
    ret nc                                        ; $4FFE: $D0

    ld [$D0C7], a                                 ; $4FFF: $EA $C7 $D0
    ld a, $14                                     ; $5002: $3E $14
    ld [$D0C8], a                                 ; $5004: $EA $C8 $D0
    ld hl, $C71B                                  ; $5007: $21 $1B $C7
    ld a, $4C                                     ; $500A: $3E $4C
    ld [hl+], a                                   ; $500C: $22
    ld a, $0D                                     ; $500D: $3E $0D
    ld [hl+], a                                   ; $500F: $22
    ld a, $46                                     ; $5010: $3E $46
    ld [hl+], a                                   ; $5012: $22
    ld a, $66                                     ; $5013: $3E $66
    ld [hl+], a                                   ; $5015: $22
    ld a, $0A                                     ; $5016: $3E $0A
    ld [hl+], a                                   ; $5018: $22
    call Call_002_477E                            ; $5019: $CD $7E $47
    call Math_Rand8Inc                                    ; $501C: $CD $4F $05
    cp $80                                        ; $501F: $FE $80
    ret nc                                        ; $5021: $D0

    ld a, $40                                     ; $5022: $3E $40
    ld hl, $D110                                  ; $5024: $21 $10 $D1
    call Call_002_463F                            ; $5027: $CD $3F $46
    and a                                         ; $502A: $A7
    ret z                                         ; $502B: $C8

    ld a, $40                                     ; $502C: $3E $40
    call Call_002_46F4                            ; $502E: $CD $F4 $46
    ret                                           ; $5031: $C9

    ; Wreck
    ret z                                         ; $5032: $C8

    ld a, $4C                                     ; $5033: $3E $4C
    ld bc, $51D0                                  ; $5035: $01 $D0 $51
    call Call_002_472E                            ; $5038: $CD $2E $47
    call Math_Rand8Inc                                    ; $503B: $CD $4F $05
    cp $40                                        ; $503E: $FE $40
    ret nc                                        ; $5040: $D0

    Do_CallForeign Call_005_4B45
    ret                                           ; $5049: $C9

    ; Focus
    ld a, [$D017]                                 ; $504A: $FA $17 $D0
    and a                                         ; $504D: $A7
    jr z, jr_002_505C                             ; $504E: $28 $0C

    ld a, [wBattle_CreatureSlots.Magi]                                 ; $5050: $FA $9A $D0
    and a                                         ; $5053: $A7
    jr nz, jr_002_505C                            ; $5054: $20 $06

    ld a, $02                                     ; $5056: $3E $02
    ld [$D071], a                                 ; $5058: $EA $71 $D0
    ret                                           ; $505B: $C9


jr_002_505C:
    ld a, [$D0B6]                                 ; $505C: $FA $B6 $D0
    cp $09                                        ; $505F: $FE $09
    jr z, jr_002_5077                             ; $5061: $28 $14

    ld c, $07                                     ; $5063: $0E $07
    call Math_Random                                    ; $5065: $CD $3A $05
    inc a                                         ; $5068: $3C
    ld [$D073], a                                 ; $5069: $EA $73 $D0
    ld a, $01                                     ; $506C: $3E $01
    ld [$D070], a                                 ; $506E: $EA $70 $D0
    ld a, [$D017]                                 ; $5071: $FA $17 $D0
    and a                                         ; $5074: $A7
    jr z, jr_002_50A5                             ; $5075: $28 $2E

jr_002_5077:
    FGet16 hl, $D117                                  ; $5077: $21 $17 $D1
    ld a, h                                       ; $507D: $7C
    or l                                          ; $507E: $B5
    jr nz, jr_002_5085                            ; $507F: $20 $04

    ld a, $01                                     ; $5081: $3E $01
    jr jr_002_5086                                ; $5083: $18 $01

jr_002_5085:
    xor a                                         ; $5085: $AF

jr_002_5086:
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $5086: $EA $77 $D0
    ld a, $01                                     ; $5089: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $508B: $EA $76 $D0
    ld [$D070], a                                 ; $508E: $EA $70 $D0
    ld hl, $C71B                                  ; $5091: $21 $1B $C7
    ld a, $4C                                     ; $5094: $3E $4C
    ld [hl+], a                                   ; $5096: $22
    ld a, $76                                     ; $5097: $3E $76
    ld [hl+], a                                   ; $5099: $22
    ld a, $43                                     ; $509A: $3E $43
    ld [hl+], a                                   ; $509C: $22
    ld a, $66                                     ; $509D: $3E $66
    ld [hl+], a                                   ; $509F: $22
    ld a, $0A                                     ; $50A0: $3E $0A
    ld [hl+], a                                   ; $50A2: $22
    jr jr_002_50CE                                ; $50A3: $18 $29

jr_002_50A5:
    Battle_Set_MagiAnim CreatureID_Tony, BATTLE_MAGIANIM_FOCUS, BATTLE_ACTOR_TONY
    ld hl, $C71B                                  ; $50BC: $21 $1B $C7
    ld a, $4C                                     ; $50BF: $3E $4C
    ld [hl+], a                                   ; $50C1: $22
    ld a, $86                                     ; $50C2: $3E $86
    ld [hl+], a                                   ; $50C4: $22
    ld a, $43                                     ; $50C5: $3E $43
    ld [hl+], a                                   ; $50C7: $22
    ld a, $66                                     ; $50C8: $3E $66
    ld [hl+], a                                   ; $50CA: $22
    ld a, $0A                                     ; $50CB: $3E $0A
    ld [hl+], a                                   ; $50CD: $22

jr_002_50CE:
    ld a, $01                                     ; $50CE: $3E $01
    ld [$D071], a                                 ; $50D0: $EA $71 $D0
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $50DB: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $50DD: $EA $3D $C9
    ld a, $C9                                     ; $50E0: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $50E2: $EA $3E $C9
    ret                                           ; $50E5: $C9

    ; Item
    FGet16 bc, $D107                                  ; $50E6: $21 $07 $D1                                       ; $50EB: $4F
    FSet16 wBattle_CopyBuffer_Source, bc                                    ; $50F1: $70
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $50F2: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $50FA: $70
    Do_CallForeign ItemSpell_GetDataFromAddress
    Do_CallForeign Call_005_55E0
    ld a, $49                                     ; $510B: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $510D: $EA $3D $C9
    ld a, $C9                                     ; $5110: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $5112: $EA $3E $C9
    ld hl, $C71B                                  ; $5115: $21 $1B $C7
    ld a, $4C                                     ; $5118: $3E $4C
    ld [hl+], a                                   ; $511A: $22
    ld a, $6D                                     ; $511B: $3E $6D
    ld [hl+], a                                   ; $511D: $22
    ld a, $44                                     ; $511E: $3E $44
    ld [hl+], a                                   ; $5120: $22
    ld a, $66                                     ; $5121: $3E $66
    ld [hl+], a                                   ; $5123: $22
    ld a, $0A                                     ; $5124: $3E $0A
    ld [hl+], a                                   ; $5126: $22
    Do_CallForeign UNK_AwaitTextEnd
    FGet16 hl, wMenu_Battle_TableRowBuffer                                  ; $512F: $21 $91 $CD
    ld e, $07                                     ; $5135: $1E $07
    call CallForeign                                    ; $5137: $CD $73 $07
    ld a, $49                                     ; $513A: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $513C: $EA $3D $C9
    ld a, $C9                                     ; $513F: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $5141: $EA $3E $C9
    ld a, [$D017]                                 ; $5144: $FA $17 $D0
    and a                                         ; $5147: $A7
    ret nz                                        ; $5148: $C0

    FGet16 hl, $D107                                  ; $5149: $21 $07 $D1
    ld bc, Item_Table                                  ; $514F: $01 $FF $5D
    TwosComp bc
    add hl, bc                                    ; $5159: $09
    ld a, ItemSpell_ROWSIZE                                     ; $515A: $3E $22
    call Math_Div16                                    ; $515C: $CD $B9 $04
    ld l, a                                       ; $515F: $6F
    ld h, $00                                     ; $5160: $26 $00
    ld bc, $A3A7                                  ; $5162: $01 $A7 $A3
    add hl, bc                                    ; $5165: $09
    Battery_On
    Battery_SetBank "XRAM Gamestate"
    dec [hl]                                      ; $5173: $35
    Battery_Off
    xor a                                         ; $5178: $AF
    ld [$D107], a                                 ; $5179: $EA $07 $D1
    ret                                           ; $517C: $C9

    ; Fight
    ld a, [wBattle_Creature_Current.Other]                                 ; $517D: $FA $FF $D0
    and a                                         ; $5180: $A7
    jr nz, jr_002_5191                            ; $5181: $20 $0E

    ld a, [$D073]                                 ; $5183: $FA $73 $D0
    and a                                         ; $5186: $A7
    ret z                                         ; $5187: $C8

    ld a, $4C                                     ; $5188: $3E $4C
    ld bc, $5225                                  ; $518A: $01 $25 $52
    call Call_002_472E                            ; $518D: $CD $2E $47

    ret                                           ; $5190: $C9


jr_002_5191:
    ld a, $01                                     ; $5191: $3E $01
    ld [$D071], a                                 ; $5193: $EA $71 $D0
    ld [wBattle_DamageOverrideFlag], a                                 ; $5196: $EA $76 $D0
    xor a                                         ; $5199: $AF
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $519A: $EA $77 $D0
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $51A5: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $51A7: $EA $3D $C9
    ld a, $C9                                     ; $51AA: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $51AC: $EA $3E $C9
    ld hl, $C71B                                  ; $51AF: $21 $1B $C7
    ld a, $4C                                     ; $51B2: $3E $4C
    ld [hl+], a                                   ; $51B4: $22
    ld a, $4B                                     ; $51B5: $3E $4B
    ld [hl+], a                                   ; $51B7: $22
    ld a, $42                                     ; $51B8: $3E $42
    ld [hl+], a                                   ; $51BA: $22
    ld a, $66                                     ; $51BB: $3E $66
    ld [hl+], a                                   ; $51BD: $22
    ld a, $0A                                     ; $51BE: $3E $0A
    ld [hl+], a                                   ; $51C0: $22
    ret                                           ; $51C1: $C9


    ld a, $02                                     ; $51C2: $3E $02
    ld [$D071], a                                 ; $51C4: $EA $71 $D0
    ld a, $02                                     ; $51C7: $3E $02
    ld [wBattle_DamageOverrideFlag], a                                 ; $51C9: $EA $76 $D0
    ld a, $02                                     ; $51CC: $3E $02
    ld [$D071], a                                 ; $51CE: $EA $71 $D0
    ret                                           ; $51D1: $C9


    ld a, $01                                     ; $51D2: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $51D4: $EA $76 $D0
    xor a                                         ; $51D7: $AF
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $51D8: $EA $77 $D0
    call Math_Rand8Inc                                    ; $51DB: $CD $4F $05
    and $03                                       ; $51DE: $E6 $03
    cp $03                                        ; $51E0: $FE $03
    jr nz, jr_002_51FC                            ; $51E2: $20 $18

    ld a, $01                                     ; $51E4: $3E $01
    ld [$D071], a                                 ; $51E6: $EA $71 $D0
    ld hl, $C71B                                  ; $51E9: $21 $1B $C7
    ld a, $4C                                     ; $51EC: $3E $4C
    ld [hl+], a                                   ; $51EE: $22
    ld a, $29                                     ; $51EF: $3E $29
    ld [hl+], a                                   ; $51F1: $22
    ld a, $4A                                     ; $51F2: $3E $4A
    ld [hl+], a                                   ; $51F4: $22
    ld a, $66                                     ; $51F5: $3E $66
    ld [hl+], a                                   ; $51F7: $22
    ld a, $0A                                     ; $51F8: $3E $0A
    ld [hl+], a                                   ; $51FA: $22
    ret                                           ; $51FB: $C9


jr_002_51FC:
    Set8 wBattle_ExitCode, BATTLE_EXITCODE_RUN
    ld a, $02                                     ; $5201: $3E $02
    ld [$D071], a                                 ; $5203: $EA $71 $D0
    ret                                           ; $5206: $C9

    ; Spell
    FGet16 bc, $D107                                  ; $5207: $21 $07 $D1                                       ; $520C: $4F
    FSet16 wBattle_CopyBuffer_Source, bc                                    ; $5212: $70
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $5213: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $521B: $70
    Do_CallForeign ItemSpell_GetDataFromAddress
    Do_CallForeign Call_005_55E0
    ld a, $49                                     ; $522C: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $522E: $EA $3D $C9
    ld a, $C9                                     ; $5231: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $5233: $EA $3E $C9
    ld hl, $C71B                                  ; $5236: $21 $1B $C7
    ld a, $4C                                     ; $5239: $3E $4C
    ld [hl+], a                                   ; $523B: $22
    ld a, $40                                     ; $523C: $3E $40
    ld [hl+], a                                   ; $523E: $22
    ld a, $4A                                     ; $523F: $3E $4A
    ld [hl+], a                                   ; $5241: $22
    ld a, $66                                     ; $5242: $3E $66
    ld [hl+], a                                   ; $5244: $22
    ld a, $0A                                     ; $5245: $3E $0A
    ld [hl+], a                                   ; $5247: $22
    Do_CallForeign UNK_AwaitTextEnd
    FGet16 bc, $CDB1                                  ; $5250: $21 $B1 $CD                                       ; $5255: $4F
    ld a, [$CDB0]                                 ; $5256: $FA $B0 $CD
    call Call_002_472E                            ; $5259: $CD $2E $47
    ld a, $49                                     ; $525C: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $525E: $EA $3D $C9
    ld a, $C9                                     ; $5261: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $5263: $EA $3E $C9
    FGet16 hl, wMenu_Battle_TableRowBuffer                                  ; $5266: $21 $91 $CD
    ld e, $07                                     ; $526C: $1E $07
    call CallForeign                                    ; $526E: $CD $73 $07
    ret                                           ; $5271: $C9


    Do_CallForeign Call_005_405C
    ld hl, $D385                                  ; $527A: $21 $85 $D3
    inc [hl]                                      ; $527D: $34
    FGet16 bc, $D107                                  ; $527E: $21 $07 $D1                                       ; $5283: $4F
    ld hl, $D110                                  ; $5284: $21 $10 $D1
    call Call_002_5C1E                            ; $5287: $CD $1E $5C
    xor a                                         ; $528A: $AF
    ld [wBattle_Creature_Target.StatusActive], a                                 ; $528B: $EA $25 $D1
    Do_CallForeign ApplyRelicsCmd1Stats
    ld a, [$D126]                                 ; $5296: $FA $26 $D1
    ld hl, wBattle_Creature_Target.StatusActive                                  ; $5299: $21 $25 $D1
    or [hl]                                       ; $529C: $B6
    ld [hl], a                                    ; $529D: $77
    ld a, $01                                     ; $529E: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $52A0: $EA $76 $D0
    xor a                                         ; $52A3: $AF
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $52A4: $EA $77 $D0
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $52A7: $FA $03 $D1
    dec a                                         ; $52AA: $3D
    add a                                         ; $52AB: $87
    ld c, a                                       ; $52AC: $4F
    ld b, $00                                     ; $52AD: $06 $00
    ld hl, $D36E                                  ; $52AF: $21 $6E $D3
    add hl, bc                                    ; $52B2: $09
    ld bc, $D107                                  ; $52B3: $01 $07 $D1
    LdHLIBCI                                        ; $52B8: $03
    LdHLIBCI                                        ; $52BB: $03
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $52BC: $FA $03 $D1
    dec a                                         ; $52BF: $3D
    ld c, a                                       ; $52C0: $4F
    ld b, $00                                     ; $52C1: $06 $00
    ld hl, $D376                                  ; $52C3: $21 $76 $D3
    add hl, bc                                    ; $52C6: $09
    ld a, [wBattle_SummonRingIndex]                                 ; $52C7: $FA $6F $D0
    ld [hl], a                                    ; $52CA: $77
    ld c, a                                       ; $52CB: $4F
    ld b, $00                                     ; $52CC: $06 $00
    ld hl, wBattle_UsedRings                                  ; $52CE: $21 $7A $D3
    add hl, bc                                    ; $52D1: $09
    ld a, $02                                     ; $52D2: $3E $02
    ld [hl], a                                    ; $52D4: $77
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $52D5: $FA $03 $D1
    call Battle00_Actor_DisableScript                                    ; $52D8: $CD $C7 $38
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $52DB: $FA $03 $D1
    dec a                                         ; $52DE: $3D
    ld b, a                                       ; $52DF: $47
    ld a, [wBattle_Creature_Target.ID]                                 ; $52E0: $FA $12 $D1
    ld [$C9D8], a                                 ; $52E3: $EA $D8 $C9
    ld a, b                                       ; $52E6: $78
    ld [$C9D9], a                                 ; $52E7: $EA $D9 $C9
    Do_CallForeign Cardscene_SpawnCreature
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $52F2: $FA $03 $D1
    ld b, a                                       ; $52F5: $47
    ld c, $37                                     ; $52F6: $0E $37
    call Math_Mult                                    ; $52F8: $CD $CA $04
    ld bc, wBattle_Creature_Hero                                  ; $52FB: $01 $47 $D1
    add hl, bc                                    ; $52FE: $09
    ld a, h                                       ; $52FF: $7C
    ld [$D07C], a                                 ; $5300: $EA $7C $D0
    ld a, l                                       ; $5303: $7D
    ld [$D07B], a                                 ; $5304: $EA $7B $D0
    ld a, $01                                     ; $5307: $3E $01
    ld [$D071], a                                 ; $5309: $EA $71 $D0
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $5314: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $5316: $EA $3D $C9
    ld a, $C9                                     ; $5319: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $531B: $EA $3E $C9
    ld hl, $C71B                                  ; $531E: $21 $1B $C7
    ld a, $4C                                     ; $5321: $3E $4C
    ld [hl+], a                                   ; $5323: $22
    ld a, $E0                                     ; $5324: $3E $E0
    ld [hl+], a                                   ; $5326: $22
    ld a, $4A                                     ; $5327: $3E $4A
    ld [hl+], a                                   ; $5329: $22
    ld a, $66                                     ; $532A: $3E $66
    ld [hl+], a                                   ; $532C: $22
    ld a, $0A                                     ; $532D: $3E $0A
    ld [hl+], a                                   ; $532F: $22
    ret                                           ; $5330: $C9

    ; SummonX
    SwitchRAMBank BANK("WRAM BATTLE")
    Do_CallForeign Call_005_405C
    call Call_002_4653                            ; $5340: $CD $53 $46
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $5343: $FA $03 $D1
    dec a                                         ; $5346: $3D
    ld b, a                                       ; $5347: $47
    ld a, [wBattle_Creature_Target.ID]                                 ; $5348: $FA $12 $D1
    ld [$C9D8], a                                 ; $534B: $EA $D8 $C9
    ld a, b                                       ; $534E: $78
    ld [$C9D9], a                                 ; $534F: $EA $D9 $C9
    Do_CallForeign Cardscene_SpawnCreature
    ld a, $01                                     ; $535A: $3E $01
    ld [$D071], a                                 ; $535C: $EA $71 $D0
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $5367: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $5369: $EA $3D $C9
    ld a, $C9                                     ; $536C: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $536E: $EA $3E $C9
    ld a, [wBattle_CreatureSlots.Magi]                                 ; $5371: $FA $9A $D0
    and a                                         ; $5374: $A7
    jr z, jr_002_538A                             ; $5375: $28 $13

    ld hl, $C71B                                  ; $5377: $21 $1B $C7
    ld a, $4C                                     ; $537A: $3E $4C
    ld [hl+], a                                   ; $537C: $22
    ld a, $F5                                     ; $537D: $3E $F5
    ld [hl+], a                                   ; $537F: $22
    ld a, $4A                                     ; $5380: $3E $4A
    ld [hl+], a                                   ; $5382: $22
    ld a, $66                                     ; $5383: $3E $66
    ld [hl+], a                                   ; $5385: $22
    ld a, $0A                                     ; $5386: $3E $0A
    ld [hl+], a                                   ; $5388: $22
    ret                                           ; $5389: $C9


jr_002_538A:
    ld hl, $C71B                                  ; $538A: $21 $1B $C7
    ld a, $4C                                     ; $538D: $3E $4C
    ld [hl+], a                                   ; $538F: $22
    ld a, $0A                                     ; $5390: $3E $0A
    ld [hl+], a                                   ; $5392: $22
    ld a, $4B                                     ; $5393: $3E $4B
    ld [hl+], a                                   ; $5395: $22
    ld a, $66                                     ; $5396: $3E $66
    ld [hl+], a                                   ; $5398: $22
    ld a, $0A                                     ; $5399: $3E $0A
    ld [hl+], a                                   ; $539B: $22
    ret                                           ; $539C: $C9

; Ability end

Call_002_539D:
    ld a, [$D0E9]                                 ; $539D: $FA $E9 $D0
    ld b, a                                       ; $53A0: $47
    ld a, $0A                                     ; $53A1: $3E $0A
    call Battle_Cmd_Formula_Luck                            ; $53A3: $CD $FB $53
    ld b, a                                       ; $53A6: $47
    ld a, [$D0E4]                                 ; $53A7: $FA $E4 $D0
    add b                                         ; $53AA: $80
    ld hl, $4000                                  ; $53AB: $21 $00 $40
    add a                                         ; $53AE: $87
    ld c, a                                       ; $53AF: $4F
    ld b, $00                                     ; $53B0: $06 $00
    add hl, bc                                    ; $53B2: $09
    ld a, [hl+]                                   ; $53B3: $2A
    ld d, a                                       ; $53B4: $57
    ld a, [hl]                                    ; $53B5: $7E
    sub d                                         ; $53B6: $92
    ld c, a                                       ; $53B7: $4F
    ld a, [$D11E]                                 ; $53B8: $FA $1E $D1
    ld b, a                                       ; $53BB: $47
    ld a, $63                                     ; $53BC: $3E $63
    sub b                                         ; $53BE: $90
    ld b, a                                       ; $53BF: $47
    push de                                       ; $53C0: $D5
    call Math_Mult                                    ; $53C1: $CD $CA $04
    ld a, $64                                     ; $53C4: $3E $64
    call Math_Div16                                    ; $53C6: $CD $B9 $04
    pop de                                        ; $53C9: $D1
    add d                                         ; $53CA: $82
    ret                                           ; $53CB: $C9


Call_002_53CC:
    ld a, [$D0E9]                                 ; $53CC: $FA $E9 $D0
    ld b, a                                       ; $53CF: $47
    ld a, $0A                                     ; $53D0: $3E $0A
    call Battle_Cmd_Formula_Luck                            ; $53D2: $CD $FB $53
    ld b, a                                       ; $53D5: $47
    ld a, [$D0E5]                                 ; $53D6: $FA $E5 $D0
    add b                                         ; $53D9: $80
    ld hl, $4000                                  ; $53DA: $21 $00 $40
    add a                                         ; $53DD: $87
    ld c, a                                       ; $53DE: $4F
    ld b, $00                                     ; $53DF: $06 $00
    add hl, bc                                    ; $53E1: $09
    ld a, [hl+]                                   ; $53E2: $2A
    ld d, a                                       ; $53E3: $57
    ld a, [hl]                                    ; $53E4: $7E
    sub d                                         ; $53E5: $92
    ld c, a                                       ; $53E6: $4F
    ld a, [$D11F]                                 ; $53E7: $FA $1F $D1
    ld b, a                                       ; $53EA: $47
    ld a, $63                                     ; $53EB: $3E $63
    sub b                                         ; $53ED: $90
    ld b, a                                       ; $53EE: $47
    push de                                       ; $53EF: $D5
    call Math_Mult                                    ; $53F0: $CD $CA $04
    ld a, $64                                     ; $53F3: $3E $64
    call Math_Div16                                    ; $53F5: $CD $B9 $04
    pop de                                        ; $53F8: $D1
    add d                                         ; $53F9: $82
    ret                                           ; $53FA: $C9

    ; $53FB
Battle_Cmd_Formula_Luck:
    ; Gives a +- delta to value based on Luck
    ; Inputs:
    ;   b = Luck_stat
    ;   a = positive_range
    ; Outputs:
    ;   a = Random value between [-positive_range*luck(luck_stat), positive_range*luck(luck_stat)],
    ;       where luck(luck_stat) is a percentage from 0% to 100% defined in Battle_Luck_Table
    ;       If Luck_stat == 0, there is a 1/256 chance of getting a +1 magnitude (bug)

    ; Get the magnitude from the table
    ld hl, Battle_Luck_Table
    ld c, b
    ld b, $00
    add hl, bc
    ld b, [hl]
    ; MaxValue = positive_range*(magnitude/99)
    ; Bug - does not handle the special case where MaxValue = 0, in which case we should always return 0
    ld c, a
    call Math_Mult
    ld a, 99
    call Math_Div16

    ; e = MaxValue
    ; c = full_range = MaxValue*2 + 1
    ld e, a
    add a
    ld c, a
    inc c

    ; a = Value = full_range*rand() - MaxValue
    push de
    Get8 b, rDIV
    call Math_Mult
    ld a, 255
    call Math_Div16 ; Since we don't handle the special case where MaxValue = 0, 1/256 of the time, we should get a Luck bonus of +1
    pop de
    sub e
    ret


Call_002_5420:
    push bc                                       ; $5420: $C5
    ld c, $FF                                     ; $5421: $0E $FF
    call Math_Random                                    ; $5423: $CD $3A $05
    sla b                                         ; $5426: $CB $20
    add b                                         ; $5428: $80
    ld b, a                                       ; $5429: $47
    ld a, [wBattle_Creature_Target.StatusActive]                                 ; $542A: $FA $25 $D1
    and $10                                       ; $542D: $E6 $10
    jr z, jr_002_5439                             ; $542F: $28 $08

    pop de                                        ; $5431: $D1
    ld a, b                                       ; $5432: $78
    cp $4C                                        ; $5433: $FE $4C
    jr c, jr_002_543E                             ; $5435: $38 $07

    jr jr_002_5441                                ; $5437: $18 $08

jr_002_5439:
    ld a, b                                       ; $5439: $78
    pop bc                                        ; $543A: $C1
    cp c                                          ; $543B: $B9
    jr nc, jr_002_5441                            ; $543C: $30 $03

jr_002_543E:
    ld a, $01                                     ; $543E: $3E $01
    ret                                           ; $5440: $C9


jr_002_5441:
    ld a, [wBattle_Creature_Target.StatusActive]                                 ; $5441: $FA $25 $D1
    and $10                                       ; $5444: $E6 $10
    jr z, jr_002_5485                             ; $5446: $28 $3D

    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $5448: $FA $03 $D1
    ld d, $41                                     ; $544B: $16 $41
    ld bc, $701C                                  ; $544D: $01 $1C $70
    call Battle00_Actor_SetScript                                    ; $5450: $CD $F0 $38
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $545B: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $545D: $EA $3D $C9
    ld a, $C9                                     ; $5460: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $5462: $EA $3E $C9
    ld hl, $C71B                                  ; $5465: $21 $1B $C7
    ld a, $4C                                     ; $5468: $3E $4C
    ld [hl+], a                                   ; $546A: $22
    ld a, $48                                     ; $546B: $3E $48
    ld [hl+], a                                   ; $546D: $22
    ld a, $44                                     ; $546E: $3E $44
    ld [hl+], a                                   ; $5470: $22
    ld a, $66                                     ; $5471: $3E $66
    ld [hl+], a                                   ; $5473: $22
    ld a, $0A                                     ; $5474: $3E $0A
    ld [hl+], a                                   ; $5476: $22
    Do_CallForeign UNK_AwaitTextEnd
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $547F: $FA $03 $D1
    call Battle00_Actor_DisableScript                                    ; $5482: $CD $C7 $38

jr_002_5485:
    xor a                                         ; $5485: $AF
    ret                                           ; $5486: $C9


    ld a, $00                                     ; $5487: $3E $00
    ld b, $00                                     ; $5489: $06 $00
    ld c, $63                                     ; $548B: $0E $63
    ld de, $0000                                  ; $548D: $11 $00 $00
    call Call_002_54B3                            ; $5490: $CD $B3 $54
    ld de, $0172                                  ; $5493: $11 $72 $01
    call Math_ConvertNumberToDigits                                    ; $5496: $CD $1A $04
    ld a, [wX100]                                 ; $5499: $FA $2F $C9
    ld a, [wX10]                                 ; $549C: $FA $2E $C9
    ld a, [wX1]                                 ; $549F: $FA $2D $C9
    ret                                           ; $54A2: $C9


    dec b                                         ; $54A3: $05
    inc b                                         ; $54A4: $04
    add hl, de                                    ; $54A5: $19
    ld a, [$0309]                                 ; $54A6: $FA $09 $03
    inc d                                         ; $54A9: $14
    ret z                                         ; $54AA: $C8

    dec bc                                        ; $54AB: $0B
    ld [bc], a                                    ; $54AC: $02
    ld a, [bc]                                    ; $54AD: $0A
    ld a, l                                       ; $54AE: $7D
    ld h, e                                       ; $54AF: $63
    ld bc, $5505                                  ; $54B0: $01 $05 $55

Call_002_54B3:
    add $02                                       ; $54B3: $C6 $02
    sub c                                         ; $54B5: $91
    jr nc, jr_002_54BA                            ; $54B6: $30 $02

    NegativeA

jr_002_54BA:
    ld hl, $54A3                                  ; $54BA: $21 $A3 $54
    ld bc, $0004                                  ; $54BD: $01 $04 $00
    inc de                                        ; $54C0: $13
    cp [hl]                                       ; $54C1: $BE
    jr nc, jr_002_54C7                            ; $54C2: $30 $03

    add hl, de                                    ; $54C4: $19
    ld a, [hl]                                    ; $54C5: $7E
    ret                                           ; $54C6: $C9


jr_002_54C7:
    add hl, bc                                    ; $54C7: $09
    cp [hl]                                       ; $54C8: $BE
    jr nc, jr_002_54CE                            ; $54C9: $30 $03

    add hl, de                                    ; $54CB: $19
    ld a, [hl]                                    ; $54CC: $7E
    ret                                           ; $54CD: $C9


jr_002_54CE:
    add hl, bc                                    ; $54CE: $09
    cp [hl]                                       ; $54CF: $BE
    jr nc, jr_002_54D5                            ; $54D0: $30 $03

    add hl, de                                    ; $54D2: $19
    ld a, [hl]                                    ; $54D3: $7E
    ret                                           ; $54D4: $C9


jr_002_54D5:
    add hl, bc                                    ; $54D5: $09
    add hl, de                                    ; $54D6: $19
    ld a, [hl]                                    ; $54D7: $7E
    ret                                           ; $54D8: $C9


Call_002_54D9:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld hl, $D383                                  ; $54E0: $21 $83 $D3
    ld a, $0A                                     ; $54E3: $3E $0A
    ld [wBattle_TempCounter], a                                 ; $54E5: $EA $74 $D0

Jump_002_54E8:
    xor a                                         ; $54E8: $AF
    ld [$D071], a                                 ; $54E9: $EA $71 $D0
    ld a, [hl-]                                   ; $54EC: $3A
    and a                                         ; $54ED: $A7
    jp z, Jump_002_5578                           ; $54EE: $CA $78 $55

    push hl                                       ; $54F1: $E5
    ld hl, xInventory_Rings                                  ; $54F2: $21 $18 $A1
    ld a, [wBattle_TempCounter]                                 ; $54F5: $FA $74 $D0
    dec a                                         ; $54F8: $3D
    ld c, a                                       ; $54F9: $4F
    ld b, $00                                     ; $54FA: $06 $00
    add hl, bc                                    ; $54FC: $09
    Battery_On
    Battery_SetBank "XRAM Gamestate"
    ld a, [hl]                                    ; $550A: $7E
    ld c, a                                       ; $550B: $4F
    Battery_Off
    ld b, $25                                     ; $5510: $06 $25
    call Math_Mult                                    ; $5512: $CD $CA $04
    ld bc, $A000                                  ; $5515: $01 $00 $A0
    add hl, bc                                    ; $5518: $09
    ld a, h                                       ; $5519: $7C
    ld [$D0D0], a                                 ; $551A: $EA $D0 $D0
    ld a, l                                       ; $551D: $7D
    ld [$D0CF], a                                 ; $551E: $EA $CF $D0
    call Call_002_55C3                            ; $5521: $CD $C3 $55
    ld bc, $0064                                  ; $5524: $01 $64 $00
    TwosComp bc
    add hl, bc                                    ; $552E: $09
    FGet16 bc, $D0CF                                  ; $552F: $21 $CF $D0                                       ; $5534: $4F
    jr nc, jr_002_5577                            ; $5535: $30 $40

    ld hl, $D110                                  ; $5537: $21 $10 $D1
    call Call_002_5C1E                            ; $553A: $CD $1E $5C

jr_002_553D:
    Sound_Request_ForceStartSong SONGID_LevelUp1
    ld hl, $D389                                  ; $5547: $21 $89 $D3
    ld [hl], $00                                  ; $554A: $36 $00
    set 1, [hl]                                   ; $554C: $CB $CE
    ld hl, $D110                                  ; $554E: $21 $10 $D1
    call Call_002_57F1                            ; $5551: $CD $F1 $57
    xor a                                         ; $5554: $AF
    ld [$D389], a                                 ; $5555: $EA $89 $D3
    FGet16_BigEndian hl, $D115                                  ; $5558: $21 $15 $D1                                       ; $555D: $67
    ld bc, $0064                                  ; $555E: $01 $64 $00
    TwosComp bc
    add hl, bc                                    ; $5568: $09
    jr c, jr_002_553D                             ; $5569: $38 $D2

    FGet16 bc, $D0CF                                  ; $556B: $21 $CF $D0                                       ; $5570: $4F
    ld hl, $D110                                  ; $5571: $21 $10 $D1
    call Call_002_5C93                            ; $5574: $CD $93 $5C

jr_002_5577:
    pop hl                                        ; $5577: $E1

Jump_002_5578:
    push hl                                       ; $5578: $E5
    ld hl, wBattle_TempCounter                                  ; $5579: $21 $74 $D0
    dec [hl]                                      ; $557C: $35
    pop hl                                        ; $557D: $E1
    jp nz, Jump_002_54E8                          ; $557E: $C2 $E8 $54

    ld bc, $A000                                  ; $5581: $01 $00 $A0
    FSet16 $D0CF, bc                                    ; $5589: $70
    call Call_002_55C3                            ; $558A: $CD $C3 $55
    ld bc, $0064                                  ; $558D: $01 $64 $00
    TwosComp bc
    add hl, bc                                    ; $5597: $09
    ret nc                                        ; $5598: $D0

    ld bc, $A000                                  ; $5599: $01 $00 $A0
    ld hl, $D110                                  ; $559C: $21 $10 $D1
    call Call_002_5C1E                            ; $559F: $CD $1E $5C
    Sound_Request_ForceStartSong SONGID_LevelUp1
    ld hl, $D389                                  ; $55AC: $21 $89 $D3
    res 0, [hl]                                   ; $55AF: $CB $86
    set 1, [hl]                                   ; $55B1: $CB $CE
    ld hl, $D110                                  ; $55B3: $21 $10 $D1
    call Call_002_59A3                            ; $55B6: $CD $A3 $59
    ld hl, $D110                                  ; $55B9: $21 $10 $D1
    ld bc, $A000                                  ; $55BC: $01 $00 $A0
    call Call_002_5C93                            ; $55BF: $CD $93 $5C
    ret                                           ; $55C2: $C9


Call_002_55C3:
    Battery_On
    Battery_SetBank "XRAM Creatures"
    ld bc, $0002                                  ; $55D0: $01 $02 $00
    FGet16 hl, $D0CF                                  ; $55D3: $21 $CF $D0
    add hl, bc                                    ; $55D9: $09
    ld a, [hl]                                    ; $55DA: $7E
    ld b, a                                       ; $55DB: $47
    ld a, [wBattle_Level]                                 ; $55DC: $FA $6D $D3
    inc a                                         ; $55DF: $3C
    sub b                                         ; $55E0: $90
    jr c, jr_002_55FF                             ; $55E1: $38 $1C

    ld b, $14                                     ; $55E3: $06 $14
    cp $08                                        ; $55E5: $FE $08
    jr c, jr_002_561B                             ; $55E7: $38 $32

    ld b, $0A                                     ; $55E9: $06 $0A
    cp $0C                                        ; $55EB: $FE $0C
    jr c, jr_002_561B                             ; $55ED: $38 $2C

    ld b, $05                                     ; $55EF: $06 $05
    cp $12                                        ; $55F1: $FE $12
    jr c, jr_002_561B                             ; $55F3: $38 $26

    ld b, $02                                     ; $55F5: $06 $02
    cp $18                                        ; $55F7: $FE $18
    jr c, jr_002_561B                             ; $55F9: $38 $20

    ld b, $01                                     ; $55FB: $06 $01
    jr jr_002_561B                                ; $55FD: $18 $1C

jr_002_55FF:
    NegativeA
    ld b, $14                                     ; $5601: $06 $14
    cp $03                                        ; $5603: $FE $03
    jr c, jr_002_561B                             ; $5605: $38 $14

    ld b, $0A                                     ; $5607: $06 $0A
    cp $05                                        ; $5609: $FE $05
    jr c, jr_002_561B                             ; $560B: $38 $0E

    ld b, $05                                     ; $560D: $06 $05
    cp $07                                        ; $560F: $FE $07
    jr c, jr_002_561B                             ; $5611: $38 $08

    ld b, $02                                     ; $5613: $06 $02
    cp $0C                                        ; $5615: $FE $0C
    jr c, jr_002_561B                             ; $5617: $38 $02

    ld b, $01                                     ; $5619: $06 $01

jr_002_561B:
    ld a, b                                       ; $561B: $78
    ld hl, $D384                                  ; $561C: $21 $84 $D3
    add [hl]                                      ; $561F: $86
    ld hl, $D385                                  ; $5620: $21 $85 $D3
    sub [hl]                                      ; $5623: $96
    jr nc, jr_002_5628                            ; $5624: $30 $02

    ld a, $01                                     ; $5626: $3E $01

jr_002_5628:
    inc a                                         ; $5628: $3C
    ld [$D0D1], a                                 ; $5629: $EA $D1 $D0
    FGet16 hl, $D0CF                                  ; $562C: $21 $CF $D0
    ld bc, $0003                                  ; $5632: $01 $03 $00
    add hl, bc                                    ; $5635: $09
    ld a, [hl+]                                   ; $5636: $2A
    ld l, [hl]                                    ; $5637: $6E
    ld h, a                                       ; $5638: $67
    ld a, [$D0D1]                                 ; $5639: $FA $D1 $D0
    ld c, a                                       ; $563C: $4F
    ld b, $00                                     ; $563D: $06 $00
    add hl, bc                                    ; $563F: $09
    push hl                                       ; $5640: $E5
    ld b, h                                       ; $5641: $44
    ld c, l                                       ; $5642: $4D
    FGet16 hl, $D0CF                                  ; $5643: $21 $CF $D0
    ld de, $0003                                  ; $5649: $11 $03 $00
    add hl, de                                    ; $564C: $19
    ld a, b                                       ; $564D: $78
    ld [hl+], a                                   ; $564E: $22
    ld a, c                                       ; $564F: $79
    ld [hl], a                                    ; $5650: $77
    Battery_Off
    pop hl                                        ; $5655: $E1
    ret                                           ; $5656: $C9


Call_002_5657:
    push hl                                       ; $5657: $E5
    ld de, $0020                                  ; $5658: $11 $20 $00
    add hl, de                                    ; $565B: $19
    ld a, $FF                                     ; $565C: $3E $FF
    cp [hl]                                       ; $565E: $BE
    jr z, jr_002_566F                             ; $565F: $28 $0E

    ld a, [$D38A]                                 ; $5661: $FA $8A $D3
    cp [hl]                                       ; $5664: $BE
    jr c, jr_002_56C5                             ; $5665: $38 $5E

    ld a, $FF                                     ; $5667: $3E $FF
    ld [hl], a                                    ; $5669: $77
    ld de, $0018                                  ; $566A: $11 $18 $00
    jr jr_002_56B8                                ; $566D: $18 $49

jr_002_566F:
    pop hl                                        ; $566F: $E1
    push hl                                       ; $5670: $E5
    ld de, $0021                                  ; $5671: $11 $21 $00
    add hl, de                                    ; $5674: $19
    ld a, $FF                                     ; $5675: $3E $FF
    cp [hl]                                       ; $5677: $BE
    jr z, jr_002_5688                             ; $5678: $28 $0E

    ld a, [$D38A]                                 ; $567A: $FA $8A $D3
    cp [hl]                                       ; $567D: $BE
    jr c, jr_002_56C5                             ; $567E: $38 $45

    ld a, $FF                                     ; $5680: $3E $FF
    ld [hl], a                                    ; $5682: $77
    ld de, $001A                                  ; $5683: $11 $1A $00
    jr jr_002_56B8                                ; $5686: $18 $30

jr_002_5688:
    pop hl                                        ; $5688: $E1
    push hl                                       ; $5689: $E5
    ld de, $0022                                  ; $568A: $11 $22 $00
    add hl, de                                    ; $568D: $19
    ld a, $FF                                     ; $568E: $3E $FF
    cp [hl]                                       ; $5690: $BE
    jr z, jr_002_56A1                             ; $5691: $28 $0E

    ld a, [$D38A]                                 ; $5693: $FA $8A $D3
    cp [hl]                                       ; $5696: $BE
    jr c, jr_002_56C5                             ; $5697: $38 $2C

    ld a, $FF                                     ; $5699: $3E $FF
    ld [hl], a                                    ; $569B: $77
    ld de, $001C                                  ; $569C: $11 $1C $00
    jr jr_002_56B8                                ; $569F: $18 $17

jr_002_56A1:
    pop hl                                        ; $56A1: $E1
    push hl                                       ; $56A2: $E5
    ld de, $0023                                  ; $56A3: $11 $23 $00
    add hl, de                                    ; $56A6: $19
    ld a, $FF                                     ; $56A7: $3E $FF
    cp [hl]                                       ; $56A9: $BE
    jr z, jr_002_56C5                             ; $56AA: $28 $19

    ld a, [$D38A]                                 ; $56AC: $FA $8A $D3
    cp [hl]                                       ; $56AF: $BE
    jr c, jr_002_56C5                             ; $56B0: $38 $13

    ld a, $FF                                     ; $56B2: $3E $FF
    ld [hl], a                                    ; $56B4: $77
    ld de, $001E                                  ; $56B5: $11 $1E $00

jr_002_56B8:
    pop hl                                        ; $56B8: $E1
    call Call_002_5B71                            ; $56B9: $CD $71 $5B
    ld a, [$D389]                                 ; $56BC: $FA $89 $D3
    set 7, a                                      ; $56BF: $CB $FF
    ld [$D389], a                                 ; $56C1: $EA $89 $D3
    ret                                           ; $56C4: $C9


jr_002_56C5:
    pop hl                                        ; $56C5: $E1
    ret                                           ; $56C6: $C9


Call_002_56C7:
    push hl                                       ; $56C7: $E5
    ld bc, $0002                                  ; $56C8: $01 $02 $00
    add hl, bc                                    ; $56CB: $09
    ld a, [hl]                                    ; $56CC: $7E
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $56CD: $EA $8C $CD
    ld bc, wText_StringBuffer                                  ; $56D0: $01 $49 $C9
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $56D8: $70
    Do_CallForeign CreatureName_CopyToDest
    ld a, $FC                                     ; $56E1: $3E $FC
    ld [$C953], a                                 ; $56E3: $EA $53 $C9
    pop hl                                        ; $56E6: $E1
    ret                                           ; $56E7: $C9


Call_002_56E8:
    push hl                                       ; $56E8: $E5
    ld bc, $0004                                  ; $56E9: $01 $04 $00
    add hl, bc                                    ; $56EC: $09
    ld e, [hl]                                    ; $56ED: $5E
    ld d, $00                                     ; $56EE: $16 $00
    call Math_ConvertNumberToDigits                                    ; $56F0: $CD $1A $04
    ld a, [wX10]                                 ; $56F3: $FA $2E $C9
    add $30                                       ; $56F6: $C6 $30
    ld [$C954], a                                 ; $56F8: $EA $54 $C9
    ld a, [wX1]                                 ; $56FB: $FA $2D $C9
    add $30                                       ; $56FE: $C6 $30
    ld [$C955], a                                 ; $5700: $EA $55 $C9
    ld a, $FC                                     ; $5703: $3E $FC
    ld [$C956], a                                 ; $5705: $EA $56 $C9
    pop hl                                        ; $5708: $E1
    ret                                           ; $5709: $C9


Call_002_570A:
    push hl                                       ; $570A: $E5
    ld bc, $0009                                  ; $570B: $01 $09 $00
    add hl, bc                                    ; $570E: $09
    ld a, [hl+]                                   ; $570F: $2A
    ld e, [hl]                                    ; $5710: $5E
    ld d, a                                       ; $5711: $57
    call Math_ConvertNumberToDigits                                    ; $5712: $CD $1A $04
    ld a, [wX100]                                 ; $5715: $FA $2F $C9
    add $30                                       ; $5718: $C6 $30
    ld [$C957], a                                 ; $571A: $EA $57 $C9
    ld a, [wX10]                                 ; $571D: $FA $2E $C9
    add $30                                       ; $5720: $C6 $30
    ld [$C958], a                                 ; $5722: $EA $58 $C9
    ld a, [wX1]                                 ; $5725: $FA $2D $C9
    add $30                                       ; $5728: $C6 $30
    ld [$C959], a                                 ; $572A: $EA $59 $C9
    ld a, $FC                                     ; $572D: $3E $FC
    ld [$C95A], a                                 ; $572F: $EA $5A $C9
    pop hl                                        ; $5732: $E1
    ret                                           ; $5733: $C9


Call_002_5734:
    push hl                                       ; $5734: $E5
    ld bc, $000B                                  ; $5735: $01 $0B $00
    add hl, bc                                    ; $5738: $09
    ld e, [hl]                                    ; $5739: $5E
    ld d, $00                                     ; $573A: $16 $00
    call Math_ConvertNumberToDigits                                    ; $573C: $CD $1A $04
    ld a, [wX10]                                 ; $573F: $FA $2E $C9
    add $30                                       ; $5742: $C6 $30
    ld [$C95B], a                                 ; $5744: $EA $5B $C9
    ld a, [wX1]                                 ; $5747: $FA $2D $C9
    add $30                                       ; $574A: $C6 $30
    ld [$C95C], a                                 ; $574C: $EA $5C $C9
    ld a, $FC                                     ; $574F: $3E $FC
    ld [$C95D], a                                 ; $5751: $EA $5D $C9
    pop hl                                        ; $5754: $E1
    ret                                           ; $5755: $C9


Call_002_5756:
    push hl                                       ; $5756: $E5
    ld bc, $000C                                  ; $5757: $01 $0C $00
    add hl, bc                                    ; $575A: $09
    ld e, [hl]                                    ; $575B: $5E
    ld d, $00                                     ; $575C: $16 $00
    call Math_ConvertNumberToDigits                                    ; $575E: $CD $1A $04
    ld a, [wX10]                                 ; $5761: $FA $2E $C9
    add $30                                       ; $5764: $C6 $30
    ld [$C95E], a                                 ; $5766: $EA $5E $C9
    ld a, [wX1]                                 ; $5769: $FA $2D $C9
    add $30                                       ; $576C: $C6 $30
    ld [$C95F], a                                 ; $576E: $EA $5F $C9
    ld a, $FC                                     ; $5771: $3E $FC
    ld [$C960], a                                 ; $5773: $EA $60 $C9
    pop hl                                        ; $5776: $E1
    ret                                           ; $5777: $C9


Call_002_5778:
    push hl                                       ; $5778: $E5
    ld bc, $000D                                  ; $5779: $01 $0D $00
    add hl, bc                                    ; $577C: $09
    ld e, [hl]                                    ; $577D: $5E
    ld d, $00                                     ; $577E: $16 $00
    call Math_ConvertNumberToDigits                                    ; $5780: $CD $1A $04
    ld a, [wX10]                                 ; $5783: $FA $2E $C9
    add $30                                       ; $5786: $C6 $30
    ld [$C961], a                                 ; $5788: $EA $61 $C9
    ld a, [wX1]                                 ; $578B: $FA $2D $C9
    add $30                                       ; $578E: $C6 $30
    ld [$C962], a                                 ; $5790: $EA $62 $C9
    ld a, $FC                                     ; $5793: $3E $FC
    ld [$C963], a                                 ; $5795: $EA $63 $C9
    pop hl                                        ; $5798: $E1
    ret                                           ; $5799: $C9


Call_002_579A:
    push hl                                       ; $579A: $E5
    ld bc, $000E                                  ; $579B: $01 $0E $00
    add hl, bc                                    ; $579E: $09
    ld e, [hl]                                    ; $579F: $5E
    ld d, $00                                     ; $57A0: $16 $00
    call Math_ConvertNumberToDigits                                    ; $57A2: $CD $1A $04
    ld a, [wX10]                                 ; $57A5: $FA $2E $C9
    add $30                                       ; $57A8: $C6 $30
    ld [$C964], a                                 ; $57AA: $EA $64 $C9
    ld a, [wX1]                                 ; $57AD: $FA $2D $C9
    add $30                                       ; $57B0: $C6 $30
    ld [$C965], a                                 ; $57B2: $EA $65 $C9
    ld a, $FC                                     ; $57B5: $3E $FC
    ld [$C966], a                                 ; $57B7: $EA $66 $C9
    pop hl                                        ; $57BA: $E1
    ret                                           ; $57BB: $C9


Call_002_57BC:
    push hl                                       ; $57BC: $E5
    ld bc, $000F                                  ; $57BD: $01 $0F $00
    add hl, bc                                    ; $57C0: $09
    ld e, [hl]                                    ; $57C1: $5E
    ld d, $00                                     ; $57C2: $16 $00
    call Math_ConvertNumberToDigits                                    ; $57C4: $CD $1A $04
    ld a, [wX10]                                 ; $57C7: $FA $2E $C9
    add $30                                       ; $57CA: $C6 $30
    ld [$C967], a                                 ; $57CC: $EA $67 $C9
    ld a, [wX1]                                 ; $57CF: $FA $2D $C9
    add $30                                       ; $57D2: $C6 $30
    ld [$C968], a                                 ; $57D4: $EA $68 $C9
    ld a, $FC                                     ; $57D7: $3E $FC
    ld [$C969], a                                 ; $57D9: $EA $69 $C9
    pop hl                                        ; $57DC: $E1
    ret                                           ; $57DD: $C9


Call_002_57DE:
    ld a, Menu_GetAbility_GETENERGY_TRUE                                     ; $57DE: $3E $01
    ld [wMenu_BattleCmd_GetEnergyFlag], a                                 ; $57E0: $EA $D5 $CD
    Do_CallForeign BattleCmd_GetNameAndEnergy
    ld a, $FC                                     ; $57EB: $3E $FC
    ld [$C971], a                                 ; $57ED: $EA $71 $C9
    ret                                           ; $57F0: $C9

    ; LEVEL UP LEVELUP function
Call_002_57F1:
    push hl
    SwitchRAMBank BANK("WRAM BATTLE")
    ld c, $03
    call Math_Random
    ld c, a
    ld b, $05
    call Math_Mult
    ld a, l
    ld [$D38B], a ;Random 0-3 lookup table for levelup stats

    ld c, $03
    call Math_Random
    inc a
    ld [$D388], a ; energy increase for level

    pop hl
    push hl

    ld bc, $0003
    add hl, bc
    ld d, $00
    ld e, [hl] ;Creature type?

    ld a, [$D389]
    bit 0, a
    jr nz, .ChangeLevelStat ; Skip the xp modification if, for example, using a ring levelup at smithy

    pop hl
    push hl
    ld bc, $0005 ;Code not verified yet
    add hl, bc
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld bc, $0064
    TwosComp bc
    add hl, bc
    ld a, h
    ld c, l
    pop hl
    ld [hl+], a
    ld [hl], c

.ChangeLevelStat:
    pop hl
    push hl

    ld bc, $0004
    add hl, bc

    ld a, [hl]
    ld [$D38A], a
    cp $63
    jr nz, jr_002_584B

    pop hl
    ret


jr_002_584B:
    inc a
    ld [hl], a
    cp $3E
    jr c, jr_002_5855

    xor a
    ld [$D38B], a

jr_002_5855:
    call Call_002_5AFA                            ; Strength
    ld [$D38C], a
    call Call_002_59F2                            ; Skill
    ld [$D38D], a
    call Call_002_5A2B                            ; Speed
    ld [$D38E], a
    call Call_002_5A64                            ; Defence
    ld [$D38F], a
    call Call_002_5AAF                            ; Resist
    ld [$D390], a

    pop hl
    push hl

    ld de, $000B
    add hl, de
    ld a, [$D38C]
    add [hl]
    cp $63
    jr c, jr_002_5883

    ld a, $63

jr_002_5883:
    ld [hl], a

    inc hl
    ld a, [$D38D]
    add [hl]
    cp $63
    jr c, jr_002_588F

    ld a, $63

jr_002_588F:
    ld [hl], a

    inc hl
    ld a, [$D38E]
    add [hl]
    cp $63
    jr c, jr_002_589B

    ld a, $63

jr_002_589B:
    ld [hl], a

    inc hl
    ld a, [$D38F]
    add [hl]
    cp $63
    jr c, jr_002_58A7

    ld a, $63

jr_002_58A7:
    ld [hl], a

    inc hl
    ld a, [$D390]
    add [hl]
    cp $63
    jr c, jr_002_58B3

    ld a, $63

jr_002_58B3:
    ld [hl], a

    pop hl
    push hl

    ld bc, $0011
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld d, h
    ld a, [$D388]
    ld e, a
    add hl, de
    ld e, l
    pop hl
    push hl
    ld bc, $0009
    add hl, bc
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    add hl, de
    ld de, $00FA
    ld a, h
    cp d
    jr nz, jr_002_58D9

    ld a, l
    cp e

jr_002_58D9:
    jr c, jr_002_58DD

    ld h, d
    ld l, e

jr_002_58DD:
    ld a, h                                       ; $58DD: $7C
    ld c, l                                       ; $58DE: $4D
    pop hl                                        ; $58DF: $E1
    ld [hl+], a                                   ; $58E0: $22
    ld [hl], c                                    ; $58E1: $71
    pop hl                                        ; $58E2: $E1
    push hl                                       ; $58E3: $E5
    ld bc, $0010                                  ; $58E4: $01 $10 $00
    add hl, bc                                    ; $58E7: $09
    ld b, [hl]                                    ; $58E8: $46
    ld a, $0A                                     ; $58E9: $3E $0A
    call Battle_Cmd_Formula_Luck                            ; $58EB: $CD $FB $53
    ld b, a                                       ; $58EE: $47
    ld a, [$D38A]                                 ; $58EF: $FA $8A $D3
    inc a                                         ; $58F2: $3C
    add b                                         ; $58F3: $80
    ld [$D38A], a                                 ; $58F4: $EA $8A $D3
    pop hl                                        ; $58F7: $E1
    call Call_002_5657                            ; $58F8: $CD $57 $56
    call Call_002_58FF                            ; $58FB: $CD $FF $58
    ret                                           ; $58FE: $C9


Call_002_58FF:
    ld a, [$D389]                                 ; $58FF: $FA $89 $D3
    bit 1, a                                      ; $5902: $CB $4F
    ret z                                         ; $5904: $C8

    call Call_002_56C7                            ; $5905: $CD $C7 $56
    call Call_002_56E8                            ; $5908: $CD $E8 $56
    call Call_002_570A                            ; $590B: $CD $0A $57
    call Call_002_5734                            ; $590E: $CD $34 $57
    call Call_002_5756                            ; $5911: $CD $56 $57
    call Call_002_5778                            ; $5914: $CD $78 $57
    call Call_002_579A                            ; $5917: $CD $9A $57
    call Call_002_57BC                            ; $591A: $CD $BC $57
    ld a, [$D389]                                 ; $591D: $FA $89 $D3
    bit 7, a                                      ; $5920: $CB $7F
    jr nz, jr_002_5942                            ; $5922: $20 $1E

    ld a, $49                                     ; $5924: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $5926: $EA $3D $C9
    ld a, $C9                                     ; $5929: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $592B: $EA $3E $C9
    ld hl, $C71B                                  ; $592E: $21 $1B $C7
    ld a, $4C                                     ; $5931: $3E $4C
    ld [hl+], a                                   ; $5933: $22
    ld a, $84                                     ; $5934: $3E $84
    ld [hl+], a                                   ; $5936: $22
    ld a, $46                                     ; $5937: $3E $46
    ld [hl+], a                                   ; $5939: $22
    ld a, $66                                     ; $593A: $3E $66
    ld [hl+], a                                   ; $593C: $22
    ld a, $0A                                     ; $593D: $3E $0A
    ld [hl+], a                                   ; $593F: $22
    jr jr_002_5966                                ; $5940: $18 $24

jr_002_5942:
    res 7, a                                      ; $5942: $CB $BF
    ld [$D389], a                                 ; $5944: $EA $89 $D3
    call Call_002_57DE                            ; $5947: $CD $DE $57
    ld a, $49                                     ; $594A: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $594C: $EA $3D $C9
    ld a, $C9                                     ; $594F: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $5951: $EA $3E $C9
    ld hl, $C71B                                  ; $5954: $21 $1B $C7
    ld a, $4C                                     ; $5957: $3E $4C
    ld [hl+], a                                   ; $5959: $22
    ld a, $FC                                     ; $595A: $3E $FC
    ld [hl+], a                                   ; $595C: $22
    ld a, $46                                     ; $595D: $3E $46
    ld [hl+], a                                   ; $595F: $22
    ld a, $66                                     ; $5960: $3E $66
    ld [hl+], a                                   ; $5962: $22
    ld a, $0A                                     ; $5963: $3E $0A
    ld [hl+], a                                   ; $5965: $22

jr_002_5966:
    Do_CallForeign UNK_AwaitTextEnd
    ret                                           ; $596E: $C9


Call_002_596F:
    ld a, [$D389]                                 ; $596F: $FA $89 $D3
    bit 1, a                                      ; $5972: $CB $4F
    ret z                                         ; $5974: $C8

    call Call_002_56C7                            ; $5975: $CD $C7 $56
    call Call_002_56E8                            ; $5978: $CD $E8 $56
    call Call_002_570A                            ; $597B: $CD $0A $57
    ld a, $49                                     ; $597E: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $5980: $EA $3D $C9
    ld a, $C9                                     ; $5983: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $5985: $EA $3E $C9
    ld hl, $C71B                                  ; $5988: $21 $1B $C7
    ld a, $4C                                     ; $598B: $3E $4C
    ld [hl+], a                                   ; $598D: $22
    ld a, $8D                                     ; $598E: $3E $8D
    ld [hl+], a                                   ; $5990: $22
    ld a, $47                                     ; $5991: $3E $47
    ld [hl+], a                                   ; $5993: $22
    ld a, $66                                     ; $5994: $3E $66
    ld [hl+], a                                   ; $5996: $22
    ld a, $0A                                     ; $5997: $3E $0A
    ld [hl+], a                                   ; $5999: $22
    Do_CallForeign UNK_AwaitTextEnd
    ret                                           ; $59A2: $C9


Call_002_59A3:
    push hl                                       ; $59A3: $E5
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [$D389]                                 ; $59AB: $FA $89 $D3
    bit 0, a                                      ; $59AE: $CB $47
    jr nz, jr_002_59BF                            ; $59B0: $20 $0D

    ld bc, $0064                                  ; $59B2: $01 $64 $00
    TwosComp bc
    call BattleCmd_Stat_IncreaseCreatureExp                                    ; $59BC: $CD $12 $38

jr_002_59BF:
    pop hl                                        ; $59BF: $E1
    push hl                                       ; $59C0: $E5
    ld bc, $0004                                  ; $59C1: $01 $04 $00
    add hl, bc                                    ; $59C4: $09
    ld a, [hl]                                    ; $59C5: $7E
    ld [$D38A], a                                 ; $59C6: $EA $8A $D3
    cp $63                                        ; $59C9: $FE $63
    jr nz, jr_002_59CF                            ; $59CB: $20 $02

    pop hl                                        ; $59CD: $E1
    ret                                           ; $59CE: $C9


jr_002_59CF:
    inc a                                         ; $59CF: $3C
    ld [hl], a                                    ; $59D0: $77
    pop hl                                        ; $59D1: $E1
    ld a, [$D38A]                                 ; $59D2: $FA $8A $D3
    inc a                                         ; $59D5: $3C
    cp $20                                        ; $59D6: $FE $20
    jr nc, jr_002_59DF                            ; $59D8: $30 $05

    ld de, $000A                                  ; $59DA: $11 $0A $00
    jr jr_002_59EB                                ; $59DD: $18 $0C

jr_002_59DF:
    cp $3C                                        ; $59DF: $FE $3C
    jr nc, jr_002_59E8                            ; $59E1: $30 $05

    ld de, $0010                                  ; $59E3: $11 $10 $00
    jr jr_002_59EB                                ; $59E6: $18 $03

jr_002_59E8:
    ld de, $0001                                  ; $59E8: $11 $01 $00

jr_002_59EB:
    call BattleCmd_Stat_IncreaseMagiEnergy                                    ; $59EB: $CD $21 $38
    call Call_002_596F                            ; $59EE: $CD $6F $59
    ret                                           ; $59F1: $C9


Call_002_59F2:
    call Math_Rand8Inc                                    ; $59F2: $CD $4F $05
    ld c, a                                       ; $59F5: $4F
    ld b, $0A                                     ; $59F6: $06 $0A
    call Math_Div8                                   ; $59F8: $CD $AC $04
    ld c, l                                       ; $59FB: $4D
    ld b, $00                                     ; $59FC: $06 $00
    ld a, [$D113]                                 ; $59FE: $FA $13 $D1
    cp $00                                        ; $5A01: $FE $00
    jr nz, jr_002_5A0A                            ; $5A03: $20 $05

    ld hl, $5B2B                                  ; $5A05: $21 $2B $5B
    jr jr_002_5A28                                ; $5A08: $18 $1E

jr_002_5A0A:
    cp $04                                        ; $5A0A: $FE $04
    jr nz, jr_002_5A13                            ; $5A0C: $20 $05

    ld hl, $5B17                                  ; $5A0E: $21 $17 $5B
    jr jr_002_5A28                                ; $5A11: $18 $15

jr_002_5A13:
    cp $02                                        ; $5A13: $FE $02
    jr nz, jr_002_5A1C                            ; $5A15: $20 $05

    ld hl, $5B21                                  ; $5A17: $21 $21 $5B
    jr jr_002_5A28                                ; $5A1A: $18 $0C

jr_002_5A1C:
    cp $06                                        ; $5A1C: $FE $06
    jr nz, jr_002_5A25                            ; $5A1E: $20 $05

    ld hl, $5B17                                  ; $5A20: $21 $17 $5B
    jr jr_002_5A28                                ; $5A23: $18 $03

jr_002_5A25:
    ld hl, $5B2B                                  ; $5A25: $21 $2B $5B

jr_002_5A28:
    add hl, bc                                    ; $5A28: $09
    ld a, [hl]                                    ; $5A29: $7E
    ret                                           ; $5A2A: $C9


Call_002_5A2B:
    call Math_Rand8Inc                                    ; $5A2B: $CD $4F $05
    ld c, a                                       ; $5A2E: $4F
    ld b, $0A                                     ; $5A2F: $06 $0A
    call Math_Div8                                   ; $5A31: $CD $AC $04
    ld c, l                                       ; $5A34: $4D
    ld b, $00                                     ; $5A35: $06 $00
    ld a, [$D113]                                 ; $5A37: $FA $13 $D1
    cp $00                                        ; $5A3A: $FE $00
    jr nz, jr_002_5A43                            ; $5A3C: $20 $05

    ld hl, $5B2B                                  ; $5A3E: $21 $2B $5B
    jr jr_002_5A61                                ; $5A41: $18 $1E

jr_002_5A43:
    cp $04                                        ; $5A43: $FE $04
    jr nz, jr_002_5A4C                            ; $5A45: $20 $05

    ld hl, $5B17                                  ; $5A47: $21 $17 $5B
    jr jr_002_5A61                                ; $5A4A: $18 $15

jr_002_5A4C:
    cp $02                                        ; $5A4C: $FE $02
    jr nz, jr_002_5A55                            ; $5A4E: $20 $05

    ld hl, $5B21                                  ; $5A50: $21 $21 $5B
    jr jr_002_5A61                                ; $5A53: $18 $0C

jr_002_5A55:
    cp $06                                        ; $5A55: $FE $06
    jr nz, jr_002_5A5E                            ; $5A57: $20 $05

    ld hl, $5B17                                  ; $5A59: $21 $17 $5B
    jr jr_002_5A61                                ; $5A5C: $18 $03

jr_002_5A5E:
    ld hl, $5B2B                                  ; $5A5E: $21 $2B $5B

jr_002_5A61:
    add hl, bc                                    ; $5A61: $09
    ld a, [hl]                                    ; $5A62: $7E
    ret                                           ; $5A63: $C9


Call_002_5A64:
    call Math_Rand8Inc                                    ; $5A64: $CD $4F $05
    ld c, a                                       ; $5A67: $4F
    ld b, $0A                                     ; $5A68: $06 $0A
    call Math_Div8                                   ; $5A6A: $CD $AC $04
    ld c, l                                       ; $5A6D: $4D
    ld b, $00                                     ; $5A6E: $06 $00
    ld a, [$D113]                                 ; $5A70: $FA $13 $D1
    cp $00                                        ; $5A73: $FE $00
    jr nz, jr_002_5A7C                            ; $5A75: $20 $05

    ld hl, $5B17                                  ; $5A77: $21 $17 $5B
    jr jr_002_5A9A                                ; $5A7A: $18 $1E

jr_002_5A7C:
    cp $04                                        ; $5A7C: $FE $04
    jr nz, jr_002_5A85                            ; $5A7E: $20 $05

    ld hl, $5B2B                                  ; $5A80: $21 $2B $5B
    jr jr_002_5A9A                                ; $5A83: $18 $15

jr_002_5A85:
    cp $02                                        ; $5A85: $FE $02
    jr nz, jr_002_5A8E                            ; $5A87: $20 $05

    ld hl, $5B21                                  ; $5A89: $21 $21 $5B
    jr jr_002_5A9A                                ; $5A8C: $18 $0C

jr_002_5A8E:
    cp $06                                        ; $5A8E: $FE $06
    jr nz, jr_002_5A97                            ; $5A90: $20 $05

    ld hl, $5B17                                  ; $5A92: $21 $17 $5B
    jr jr_002_5A9A                                ; $5A95: $18 $03

jr_002_5A97:
    ld hl, $5B2B                                  ; $5A97: $21 $2B $5B

jr_002_5A9A:
    add hl, bc                                    ; $5A9A: $09
    ld a, [hl]                                    ; $5A9B: $7E
    push af                                       ; $5A9C: $F5
    call Math_Rand8Inc                                    ; $5A9D: $CD $4F $05
    ld c, a                                       ; $5AA0: $4F
    ld b, $03                                     ; $5AA1: $06 $03
    call Math_Div8                                   ; $5AA3: $CD $AC $04
    ld a, l                                       ; $5AA6: $7D
    and $02                                       ; $5AA7: $E6 $02
    srl a                                         ; $5AA9: $CB $3F
    ld b, a                                       ; $5AAB: $47
    pop af                                        ; $5AAC: $F1
    add b                                         ; $5AAD: $80
    ret                                           ; $5AAE: $C9


Call_002_5AAF:
    call Math_Rand8Inc                                    ; $5AAF: $CD $4F $05
    ld c, a                                       ; $5AB2: $4F
    ld b, $0A                                     ; $5AB3: $06 $0A
    call Math_Div8                                   ; $5AB5: $CD $AC $04
    ld c, l                                       ; $5AB8: $4D
    ld b, $00                                     ; $5AB9: $06 $00
    ld a, [$D113]                                 ; $5ABB: $FA $13 $D1
    cp $00                                        ; $5ABE: $FE $00
    jr nz, jr_002_5AC7                            ; $5AC0: $20 $05

    ld hl, $5B17                                  ; $5AC2: $21 $17 $5B
    jr jr_002_5AE5                                ; $5AC5: $18 $1E

jr_002_5AC7:
    cp $04                                        ; $5AC7: $FE $04
    jr nz, jr_002_5AD0                            ; $5AC9: $20 $05

    ld hl, $5B2B                                  ; $5ACB: $21 $2B $5B
    jr jr_002_5AE5                                ; $5ACE: $18 $15

jr_002_5AD0:
    cp $02                                        ; $5AD0: $FE $02
    jr nz, jr_002_5AD9                            ; $5AD2: $20 $05

    ld hl, $5B21                                  ; $5AD4: $21 $21 $5B
    jr jr_002_5AE5                                ; $5AD7: $18 $0C

jr_002_5AD9:
    cp $06                                        ; $5AD9: $FE $06
    jr nz, jr_002_5AE2                            ; $5ADB: $20 $05

    ld hl, $5B17                                  ; $5ADD: $21 $17 $5B
    jr jr_002_5AE5                                ; $5AE0: $18 $03

jr_002_5AE2:
    ld hl, $5B2B                                  ; $5AE2: $21 $2B $5B

jr_002_5AE5:
    add hl, bc                                    ; $5AE5: $09
    ld a, [hl]                                    ; $5AE6: $7E
    push af                                       ; $5AE7: $F5
    call Math_Rand8Inc                                    ; $5AE8: $CD $4F $05
    ld c, a                                       ; $5AEB: $4F
    ld b, $03                                     ; $5AEC: $06 $03
    call Math_Div8                                   ; $5AEE: $CD $AC $04
    ld a, l                                       ; $5AF1: $7D
    and $02                                       ; $5AF2: $E6 $02
    srl a                                         ; $5AF4: $CB $3F
    ld b, a                                       ; $5AF6: $47
    pop af                                        ; $5AF7: $F1
    add b                                         ; $5AF8: $80
    ret                                           ; $5AF9: $C9


Call_002_5AFA:
    call Math_Rand8Inc                                    ; $5AFA: $CD $4F $05
    ld b, a                                       ; $5AFD: $47
    call Math_Rand8Inc                                    ; $5AFE: $CD $4F $05
    swap a                                        ; $5B01: $CB $37
    and b                                         ; $5B03: $A0
    and $07                                       ; $5B04: $E6 $07
    ld c, a                                       ; $5B06: $4F
    ld b, $00                                     ; $5B07: $06 $00
    ld hl, $5B0F                                  ; $5B09: $21 $0F $5B
    add hl, bc                                    ; $5B0C: $09
    ld a, [hl]                                    ; $5B0D: $7E
    ret                                           ; $5B0E: $C9

    ; $5B0F
    db $01, $02

    db $01                                        ; $5B11: $01

    db $02

    nop                                           ; $5B13: $00
    inc bc                                        ; $5B14: $03
    ld [bc], a                                    ; $5B15: $02
    db $01                                        ; $5B16: $01
    nop                                           ; $5B17: $00

    db $00, $01, $01

    db $01                                        ; $5B1B: $01

    db $01, $00

    nop                                           ; $5B1E: $00

    db $02

    nop                                           ; $5B20: $00
    nop                                           ; $5B21: $00
    ld [bc], a                                    ; $5B22: $02
    ld bc, $0101                                  ; $5B23: $01 $01 $01
    ld bc, $0000                                  ; $5B26: $01 $00 $00
    ld [bc], a                                    ; $5B29: $02
    nop                                           ; $5B2A: $00

    db $00

    inc bc                                        ; $5B2C: $03

    db $01

    db $01                                        ; $5B2E: $01

    db $01, $01

    nop                                           ; $5B31: $00
    ld bc, $0002                                  ; $5B32: $01 $02 $00

Call_002_5B35::
    FGet16 bc, $CD52                                  ; $5B35: $21 $52 $CD                                       ; $5B3A: $4F
    ld hl, $D110                                  ; $5B3B: $21 $10 $D1
    ld a, [$CD50]                                 ; $5B3E: $FA $50 $CD
    dec a                                         ; $5B41: $3D
    push af                                       ; $5B42: $F5
    SwitchRAMBank BANK("WRAM BATTLE")
    call Call_002_5C1E                            ; $5B4A: $CD $1E $5C
    xor a                                         ; $5B4D: $AF
    set 0, a                                      ; $5B4E: $CB $C7
    res 1, a                                      ; $5B50: $CB $8F
    ld [$D389], a                                 ; $5B52: $EA $89 $D3
    pop af                                        ; $5B55: $F1
    and a                                         ; $5B56: $A7
    jr z, jr_002_5B64                             ; $5B57: $28 $0B

jr_002_5B59:
    ld hl, $D110                                  ; $5B59: $21 $10 $D1
    push af                                       ; $5B5C: $F5
    call Call_002_57F1                            ; $5B5D: $CD $F1 $57
    pop af                                        ; $5B60: $F1
    dec a                                         ; $5B61: $3D
    jr nz, jr_002_5B59                            ; $5B62: $20 $F5

jr_002_5B64:
    FGet16 bc, $CD52                                  ; $5B64: $21 $52 $CD                                       ; $5B69: $4F
    ld hl, $D110                                  ; $5B6A: $21 $10 $D1
    call Call_002_5C93                            ; $5B6D: $CD $93 $5C
    ret                                           ; $5B70: $C9


Call_002_5B71:
    push hl                                       ; $5B71: $E5
    add hl, de                                    ; $5B72: $19
    ld a, [hl+]                                   ; $5B73: $2A
    ld d, [hl]                                    ; $5B74: $56
    ld e, a                                       ; $5B75: $5F
    FSet16 wMenu_BattleCmd_TablePointer, de                                    ; $5B7B: $72
    ld a, $6A                                     ; $5B7C: $3E $6A
    ld [wMenu_BattleCmd_DestBuffer], a                                 ; $5B7E: $EA $D3 $CD
    ld a, $C9                                     ; $5B81: $3E $C9
    ld [wMenu_BattleCmd_DestBuffer+1], a                                 ; $5B83: $EA $D4 $CD
    pop hl                                        ; $5B86: $E1
    ret                                           ; $5B87: $C9


    ld hl, $D110                                  ; $5B88: $21 $10 $D1
    ld de, $0007                                  ; $5B8B: $11 $07 $00
    add hl, de                                    ; $5B8E: $19
    push hl                                       ; $5B8F: $E5
    ld a, [hl+]                                   ; $5B90: $2A
    ld l, [hl]                                    ; $5B91: $6E
    ld h, a                                       ; $5B92: $67
    srl h                                         ; $5B93: $CB $3C
    rr l                                          ; $5B95: $CB $1D
    ld a, l                                       ; $5B97: $7D
    cp h                                          ; $5B98: $BC
    jr nz, jr_002_5BA1                            ; $5B99: $20 $06

    cp $00                                        ; $5B9B: $FE $00
    jr nz, jr_002_5BA1                            ; $5B9D: $20 $02

    ld l, $01                                     ; $5B9F: $2E $01

jr_002_5BA1:
    ld a, h                                       ; $5BA1: $7C
    ld c, l                                       ; $5BA2: $4D
    pop hl                                        ; $5BA3: $E1
    ld [hl+], a                                   ; $5BA4: $22
    ld [hl], c                                    ; $5BA5: $71
    ret                                           ; $5BA6: $C9


    ld hl, $D110                                  ; $5BA7: $21 $10 $D1
    ld de, $000B                                  ; $5BAA: $11 $0B $00
    add hl, de                                    ; $5BAD: $19
    push hl                                       ; $5BAE: $E5
    ld a, [hl]                                    ; $5BAF: $7E
    ld c, a                                       ; $5BB0: $4F
    ld hl, $D110                                  ; $5BB1: $21 $10 $D1
    ld de, $000E                                  ; $5BB4: $11 $0E $00
    add hl, de                                    ; $5BB7: $19
    push hl                                       ; $5BB8: $E5
    ld a, [hl]                                    ; $5BB9: $7E
    ld b, a                                       ; $5BBA: $47
    ld a, c                                       ; $5BBB: $79
    pop hl                                        ; $5BBC: $E1
    ld [hl], a                                    ; $5BBD: $77
    ld a, b                                       ; $5BBE: $78
    pop hl                                        ; $5BBF: $E1
    ld [hl], a                                    ; $5BC0: $77
    ret                                           ; $5BC1: $C9


    ; $5BC2
    Do_BattleCmd_Stat_IncreasePercentCreatureStat Strength, 32*125/1000 ; 12.5%
    ret                                           ; $5BCF: $C9


    ; $5BD0
    Do_BattleCmd_Stat_DecreasePercentCreatureStat Strength, 32*125/1000 ; 12.5%
    ret                                           ; $5BDB: $C9

Battle_Init_CreatureCopy:: ; TODO replace with other 2 function names
Battle_Init_CreatureOpen::
Battle_Init_CreatureClose::
    ; Copy a Battle_Creature_Struct from one location to another
    ; Inputs:
    ;   bc = source
    ;   hl = destination
    SwitchRAMBank BANK("WRAM BATTLE")
    ld d, BATTLE_CREATURE_SIZE
    .Loop:
        LdHLIBCI
        dec d
        jr nz, .Loop
    ret


    set 0, a                                      ; $5BEC: $CB $C7
    ld [$D389], a                                 ; $5BEE: $EA $89 $D3
    ld a, [$D069]                                 ; $5BF1: $FA $69 $D0

jr_002_5BF4:
    ld hl, $D110                                  ; $5BF4: $21 $10 $D1
    push af                                       ; $5BF7: $F5
    call Call_002_57F1                            ; $5BF8: $CD $F1 $57
    pop af                                        ; $5BFB: $F1
    dec a                                         ; $5BFC: $3D
    jr nz, jr_002_5BF4                            ; $5BFD: $20 $F5

    ret                                           ; $5BFF: $C9


    SwitchRAMBank BANK("WRAM BATTLE")
    ld hl, $D110                                  ; $5C07: $21 $10 $D1
    call Call_002_59A3                            ; $5C0A: $CD $A3 $59
    ret                                           ; $5C0D: $C9


    SwitchRAMBank BANK("WRAM BATTLE")
    ld hl, $D110                                  ; $5C15: $21 $10 $D1
    call Call_002_57F1                            ; $5C18: $CD $F1 $57
    ret                                           ; $5C1B: $C9


    ret                                           ; $5C1C: $C9


Call_002_5C1D:
    ret                                           ; $5C1D: $C9


Call_002_5C1E:
    SwitchRAMBank BANK("WRAM BATTLE")
    Battery_SetBank "XRAM Creatures"
    Battery_On
    ld a, [$D017]                                 ; $5C32: $FA $17 $D0
    and a                                         ; $5C35: $A7
    jr z, jr_002_5C3C                             ; $5C36: $28 $04

    ld a, $01                                     ; $5C38: $3E $01
    jr jr_002_5C3D                                ; $5C3A: $18 $01

jr_002_5C3C:
    xor a                                         ; $5C3C: $AF

jr_002_5C3D:
    ld [hl+], a                                   ; $5C3D: $22
    xor a                                         ; $5C3E: $AF
    ld [hl+], a                                   ; $5C3F: $22
    ld d, $25                                     ; $5C40: $16 $25

jr_002_5C42:
    LdHLIBCI                                        ; $5C44: $03
    dec d                                         ; $5C45: $15
    jr nz, jr_002_5C42                            ; $5C46: $20 $FA

    Battery_Off
    call Call_002_5C1D                            ; $5C4C: $CD $1D $5C
    ld hl, $D117                                  ; $5C4F: $21 $17 $D1
    ld bc, $D119                                  ; $5C52: $01 $19 $D1
    LdHLIBCI                                        ; $5C57: $03
    LdHLIBCI                                        ; $5C5A: $03
    ret                                           ; $5C5B: $C9

    ; $5C5C
Battle_Flow_Begin_SummonMagi:
    ; Setup the Battle_Creature_Struct for a Magi
    ; Inputs:
    ;   bc = source (e.g. xCreature_00_Hero)
    ;   hl = destination in WRAM (wBattle_Creature_Hero or wBattle_Creature_Magi, which are Battle_Creature_Struct)

    SwitchRAMBank BANK("WRAM BATTLE")
    Battery_SetBank "XRAM Creatures"
    Battery_On

    xor a
    ld [hl+], a ; Team - irrelevant for Magi
    ld [hl+], a ; EruptMirrorCounter counter

    ; Copy all except the Ability unlock levels and relics are irrelevant for Magi
    ld d, Creature_Struct_OFFSET_AbilityUnlock0
    .CopyLoop:
        LdHLIBCI
        dec d
        jr nz, .CopyLoop
    Battery_Off

    ; All 4 abilities are always unlocked for Magi
    ld a, CREATURE_TABLE_ABILITYUNLOCK_TRUE
    ld d, $04
    .CommandLoop:
        ld [hl+], a
        dec d
        jr nz, .CommandLoop

    ; .Relic0, .Relic1, .Other to 0 (irrelevant for Magi)
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

    ; Initialize the Battle_Creature_BattleCmd_Struct to all 0
    ld d, BATTLE_COMMAND_SIZE
    xor a
    .EraseLoop:
        ld [hl+], a
        dec d
        jr nz, .EraseLoop
    ret


Call_002_5C93:
    ld de, $0002                                  ; $5C93: $11 $02 $00
    add hl, de                                    ; $5C96: $19
    SwitchRAMBank BANK("WRAM BATTLE")
    Battery_SetBank "XRAM Creatures"
    Battery_On
    ld d, $25                                     ; $5CAB: $16 $25

jr_002_5CAD:
    LdBCIHLI                                        ; $5CAF: $03
    dec d                                         ; $5CB0: $15
    jr nz, jr_002_5CAD                            ; $5CB1: $20 $FA

    Battery_Off
    ret                                           ; $5CB7: $C9

    ; $5CB8
SCRIPT_Battle_TextboxOpen::
    db $9D, $42
    ; $5CBA
SCRIPT_Battle_TextboxClose::
    db $9A, $42

Jump_002_5CBC:
jr_002_5CBC:
    ld a, $02                                     ; $5CBC: $3E $02
    jp Battle_Flow_Exit                              ; $5CBE: $C3 $16 $63


    ld hl, $C71B                                  ; $5CC1: $21 $1B $C7
    ld a, $4C                                     ; $5CC4: $3E $4C
    ld [hl+], a                                   ; $5CC6: $22
    ld a, $E6                                     ; $5CC7: $3E $E6
    ld [hl+], a                                   ; $5CC9: $22
    ld a, $41                                     ; $5CCA: $3E $41
    ld [hl+], a                                   ; $5CCC: $22
    ld a, $66                                     ; $5CCD: $3E $66
    ld [hl+], a                                   ; $5CCF: $22
    ld a, $0A                                     ; $5CD0: $3E $0A
    ld [hl+], a                                   ; $5CD2: $22
    Do_CallForeign UNK_AwaitTextEnd
    jr jr_002_5CBC                                ; $5CDB: $18 $DF

Call_002_5CDD::
    xor a                                         ; $5CDD: $AF
    ld [$D078], a                                 ; $5CDE: $EA $78 $D0
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $5CE1: $FA $03 $D1
    cp $0A                                        ; $5CE4: $FE $0A
    jp z, Jump_002_5CBC                           ; $5CE6: $CA $BC $5C

    cp $0B                                        ; $5CE9: $FE $0B
    jp z, Jump_002_5E48                           ; $5CEB: $CA $48 $5E

    cp $0C                                        ; $5CEE: $FE $0C
    jp nc, Jump_002_5CBC                          ; $5CF0: $D2 $BC $5C

    ld c, a                                       ; $5CF3: $4F
    ld b, $00                                     ; $5CF4: $06 $00
    ld hl, wBattle_CreatureSlots                                  ; $5CF6: $21 $91 $D0
    add hl, bc                                    ; $5CF9: $09
    xor a                                         ; $5CFA: $AF
    cp [hl]                                       ; $5CFB: $BE
    jr nz, jr_002_5D21                            ; $5CFC: $20 $23

    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $5CFE: $FA $03 $D1
    cp $09                                        ; $5D01: $FE $09
    jr z, jr_002_5D21                             ; $5D03: $28 $1C

    ld hl, $D0A5                                  ; $5D05: $21 $A5 $D0
    add hl, bc                                    ; $5D08: $09
    ld a, [hl]                                    ; $5D09: $7E
    and a                                         ; $5D0A: $A7
    jp z, Jump_002_5E48                           ; $5D0B: $CA $48 $5E

    ld a, [$D01A]                                 ; $5D0E: $FA $1A $D0
    cp $01                                        ; $5D11: $FE $01
    ret z                                         ; $5D13: $C8

    ld a, $00                                     ; $5D14: $3E $00
    ld [$D0B5], a                                 ; $5D16: $EA $B5 $D0
    Do_CallForeign Call_005_44F4

jr_002_5D21:
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $5D21: $FA $03 $D1
    ld c, a                                       ; $5D24: $4F
    ld b, $37                                     ; $5D25: $06 $37
    call Math_Mult                                    ; $5D27: $CD $CA $04
    ld bc, wBattle_Creature_Hero                                  ; $5D2A: $01 $47 $D1
    add hl, bc                                    ; $5D2D: $09
    ld b, h                                       ; $5D2E: $44
    ld c, l                                       ; $5D2F: $4D
    FSet16 $D07B, bc                                    ; $5D35: $70
    ld hl, $D110                                  ; $5D36: $21 $10 $D1
    call Battle_Init_CreatureCopy                            ; $5D39: $CD $DC $5B
    ld a, [wBattle_Creature_Current.BattleCmd_Rating]                                 ; $5D3C: $FA $05 $D1
    cp $04                                        ; $5D3F: $FE $04
    jp z, Jump_002_5E48                           ; $5D41: $CA $48 $5E

    cp $09                                        ; $5D44: $FE $09
    jp z, Jump_002_5E48                           ; $5D46: $CA $48 $5E

    ld a, [$D01A]                                 ; $5D49: $FA $1A $D0
    cp $01                                        ; $5D4C: $FE $01
    jp z, Jump_002_5E48                           ; $5D4E: $CA $48 $5E

    ld a, [wBattle_Creature_Target.StatusActive]                                 ; $5D51: $FA $25 $D1
    and $80                                       ; $5D54: $E6 $80
    jr z, jr_002_5DBD                             ; $5D56: $28 $65

    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $5D58: $FA $03 $D1
    ld d, $41                                     ; $5D5B: $16 $41
    ld bc, $6EE5                                  ; $5D5D: $01 $E5 $6E
    call Battle00_Actor_SetScript                                    ; $5D60: $CD $F0 $38
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $5D6B: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $5D6D: $EA $3D $C9
    ld a, $C9                                     ; $5D70: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $5D72: $EA $3E $C9
    ld hl, $C71B                                  ; $5D75: $21 $1B $C7
    ld a, $4C                                     ; $5D78: $3E $4C
    ld [hl+], a                                   ; $5D7A: $22
    ld a, $76                                     ; $5D7B: $3E $76
    ld [hl+], a                                   ; $5D7D: $22
    ld a, $42                                     ; $5D7E: $3E $42
    ld [hl+], a                                   ; $5D80: $22
    ld a, $66                                     ; $5D81: $3E $66
    ld [hl+], a                                   ; $5D83: $22
    ld a, $0A                                     ; $5D84: $3E $0A
    ld [hl+], a                                   ; $5D86: $22
    Do_CallForeign UNK_AwaitTextEnd
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $5D8F: $FA $03 $D1
    call Battle00_Actor_DisableScript                                    ; $5D92: $CD $C7 $38
    ld a, $01                                     ; $5D95: $3E $01
    ld [$D0B5], a                                 ; $5D97: $EA $B5 $D0
    Do_CallForeign Call_005_44F4
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $5DA2: $FA $03 $D1
    ld c, a                                       ; $5DA5: $4F
    ld b, $37                                     ; $5DA6: $06 $37
    call Math_Mult                                    ; $5DA8: $CD $CA $04
    ld bc, wBattle_Creature_Hero                                  ; $5DAB: $01 $47 $D1
    add hl, bc                                    ; $5DAE: $09
    ld b, h                                       ; $5DAF: $44
    ld c, l                                       ; $5DB0: $4D
    FSet16 $D07B, bc                                    ; $5DB6: $70
    ld hl, $D110                                  ; $5DB7: $21 $10 $D1
    call Battle_Init_CreatureCopy                            ; $5DBA: $CD $DC $5B

jr_002_5DBD:
    ld a, [wBattle_Creature_Target.StatusActive]                                 ; $5DBD: $FA $25 $D1
    and $20                                       ; $5DC0: $E6 $20
    jp z, Jump_002_5E48                           ; $5DC2: $CA $48 $5E

    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $5DC5: $FA $03 $D1
    ld d, $41                                     ; $5DC8: $16 $41
    ld bc, $7035                                  ; $5DCA: $01 $35 $70
    call Battle00_Actor_SetScript                                    ; $5DCD: $CD $F0 $38
    ld a, [wBattle_Creature_Target.ID]                                 ; $5DD0: $FA $12 $D1
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $5DD3: $EA $8C $CD
    ld bc, wText_StringBuffer                                  ; $5DD6: $01 $49 $C9
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $5DDE: $70
    Do_CallForeign CreatureName_CopyToDest
    ld a, $FC                                     ; $5DE7: $3E $FC
    ld [$C953], a                                 ; $5DE9: $EA $53 $C9
    ld a, $49                                     ; $5DEC: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $5DEE: $EA $3D $C9
    ld a, $C9                                     ; $5DF1: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $5DF3: $EA $3E $C9
    ld hl, $C71B                                  ; $5DF6: $21 $1B $C7
    ld a, $4C                                     ; $5DF9: $3E $4C
    ld [hl+], a                                   ; $5DFB: $22
    ld a, $C5                                     ; $5DFC: $3E $C5
    ld [hl+], a                                   ; $5DFE: $22
    ld a, $47                                     ; $5DFF: $3E $47
    ld [hl+], a                                   ; $5E01: $22
    ld a, $66                                     ; $5E02: $3E $66
    ld [hl+], a                                   ; $5E04: $22
    ld a, $0A                                     ; $5E05: $3E $0A
    ld [hl+], a                                   ; $5E07: $22
    Do_CallForeign UNK_AwaitTextEnd
    ld hl, $D110                                  ; $5E10: $21 $10 $D1
    ld a, $01                                     ; $5E13: $3E $01
    call Call_002_6F30                            ; $5E15: $CD $30 $6F
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $5E18: $FA $03 $D1
    call Battle00_Actor_DisableScript                                    ; $5E1B: $CD $C7 $38
    FGet16 hl, $D07B                                  ; $5E1E: $21 $7B $D0
    ld bc, $D110                                  ; $5E24: $01 $10 $D1
    call Battle_Init_CreatureCopy                            ; $5E27: $CD $DC $5B
    ld a, [$D0B6]                                 ; $5E2A: $FA $B6 $D0
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $5E2D: $EA $03 $D1
    ld c, a                                       ; $5E30: $4F
    ld b, $37                                     ; $5E31: $06 $37
    call Math_Mult                                    ; $5E33: $CD $CA $04
    ld bc, wBattle_Creature_Hero                                  ; $5E36: $01 $47 $D1
    add hl, bc                                    ; $5E39: $09
    ld b, h                                       ; $5E3A: $44
    ld c, l                                       ; $5E3B: $4D
    FSet16 $D07B, bc                                    ; $5E41: $70
    ld hl, $D110                                  ; $5E42: $21 $10 $D1
    call Battle_Init_CreatureCopy                            ; $5E45: $CD $DC $5B

Jump_002_5E48:
    call Call_002_4140                            ; $5E48: $CD $40 $41
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $5E4B: $FA $03 $D1
    cp $0B                                        ; $5E4E: $FE $0B
    ret z                                         ; $5E50: $C8

    FGet16 hl, $D07B                                  ; $5E51: $21 $7B $D0
    ld bc, $D110                                  ; $5E57: $01 $10 $D1
    call Battle_Init_CreatureCopy                            ; $5E5A: $CD $DC $5B
    ret                                           ; $5E5D: $C9


Call_002_5E5E_RunScripts:
    ld a, $01                                     ; $5E5E: $3E $01
    ld [wBattle_ScriptBusy], a                                 ; $5E60: $EA $C2 $D3

jr_002_5E63:
    call System_UpdateGame                                    ; $5E63: $CD $BB $08
    ld a, [wBattle_ScriptBusy]                                 ; $5E66: $FA $C2 $D3
    and a                                         ; $5E69: $A7
    jr nz, jr_002_5E63                            ; $5E6A: $20 $F7

    ret                                           ; $5E6C: $C9

    ; $5E6D
Battle02_Flow_Begin::
    ; Initializes and then starts the battle
    SwitchRAMBank BANK("WRAM BATTLE")

    ; Reset turns elapsed to 0
    ld bc, $0000
    FSet16 wBattle_TurnsElapsed, bc
    
    ; Initialize all the Battle_Creature_Struct to null
    Do_MemSet wBattle_Creature_Current, (wBattle_Creature_Magi.End - wBattle_Creature_Current), $00

    ; Load the hero
    ld bc, xCreature_00_Hero
    ld hl, wBattle_Creature_Hero
    call Battle_Flow_Begin_SummonMagi
    Set8 wBattle_CreatureSlots.Hero, $01

    ; Find the opposing magi's reference
    Get8 c, wBattle_MagiCreatureID
    ld b, Creature_Table_SIZE
    call Math_Mult
    ld bc, Creature_Table
    add hl, bc
    ; Generate a Creature_Struct from the data table
    Set16 wBattle_CopyBuffer_Source, hl
    ld bc, wMenu_Battle_TableRowBuffer
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign Creature_Table_MagiMakeCreatureStruct
    ; Load the enemy magi
    ld bc, wMenu_Battle_TableRowBuffer
    ld hl, wBattle_Creature_Magi
    call Battle_Flow_Begin_SummonMagi

    ; Determine if the enemy magi exists or not
    ld a, [wBattle_Creature_Magi.Type]
    cp CREATURE_TABLE_TYPE_NOMAGI
    jr z, .InvisibleMagi
    .VisibleMagi:
        ld a, $01
        jr .MagiFinally
    .InvisibleMagi:
        xor a
    .MagiFinally:
    ld [wBattle_CreatureSlots.Magi], a

    Battle_Set_MagiAnim [wBattle_Creature_Magi.ID], BATTLE_MAGIANIM_IDLE, BATTLE_ACTOR_MAGI

    xor a
    ; Make sure the magi don't start with any statuses, although all magi in the game have immunity to all statuses (.StatusImmune)
    ld [wBattle_Creature_Hero.StatusActive], a
    ld [wBattle_Creature_Magi.StatusActive], a
    ld [wBattle_ExitCode], a
    ld [$D06C], a ; TODO
    Set8 $D0CD, $FF ; TODO
    ; Empty the 8 creature wBattle_CreatureSlots
    Do_MemSet wBattle_CreatureSlots.Ally0, (wBattle_CreatureSlots.Enemy3 + 1 - wBattle_CreatureSlots.Ally0), $00
    
    Do_MemSet $D36E, $0018, $00
    Do_MemSet $D07D, $000A, $00
    Do_MemSet $D0B8, $0008, $FF
    ld bc, $51C2
    FSet16 $D35D, bc
    call Call_002_5E5E_RunScripts ; Run scripts
    ld bc, $51C2
    FSet16 $D16E, bc
    call Battle_Flow_SortCmdOrder
    call Call_002_66DD
    jp Battle_Flow_MainLoop

    ; $5F54
Battle_Flow_CommandMenuGetCmdNames:
    ; This function takes the current creature, and gets the 5 menu option battle_cmd names
    ; Inputs:
    ;   wBattle_Creature_Current
    ;   wBattle_CurCreature_Slot (0 is hero)
    ; Outputs:
    ;   wBattle_Menu_BattleCmdPointers, wBattle_Menu_CommandNameString are populated

    SwitchRAMBank BANK("WRAM BATTLE")

    xor a
    ld [wBattle_Creature_Current.Other], a

    ; Get the first battle_cmd name
    ; Creature -> FIGHT
    ; Hero -> FOCUS
    ld bc, BattleCmd_Table.BattleCmd_FIGHT
    ld a, [wBattle_CurCreature_Slot]
    cp $00 ; id 0 = hero
    jr nz, .Continue
    .IsHero:
        ld bc, BattleCmd_Table.BattleCmd_FOCUS
    .Continue:
    FSet16 wMenu_BattleCmd_TablePointer, bc
    ld bc, wBattle_Menu_CommandNameString.Cmd0
    FSet16 wMenu_BattleCmd_DestBuffer, bc
    xor a
    ld [wMenu_BattleCmd_GetEnergyFlag], a
    Do_CallForeign BattleCmd_GetNameAndEnergy

    ; Store the 4 battle_cmd pointers
    ld bc, wBattle_Creature_Current.Ability0
    ld hl, wBattle_Menu_BattleCmdPointers.Ability0
    ld d, $08
    .CopyLoop:
        LdHLIBCI
        dec d
        jr nz, .CopyLoop

    ; Loop over the creature's 4 battlecmd, in decreasing order
    ld e, $03
    ld d, $00
    .CmdLoop:
        ; Check to see if the command has been unlocked
        ld hl, wBattle_Creature_Current.AbilityUnlock0
        add hl, de
        ld a, [hl]
        cp CREATURE_TABLE_ABILITYUNLOCK_TRUE
        jr z, .Unlocked
        .Locked:
            ; Locked ability! Null-pointer
            ld bc, $0000
            push bc
            jr .Finally
        .Unlocked:
            ; Unlocked ability! Point to the entry in BattleCmd_Table
            ld hl, wBattle_Menu_BattleCmdPointers
            add hl, de
            add hl, de
            DerefHL
            push hl
        .Finally:

        ; Get the copy destination (wBattle_Menu_CommandNameString.CmdX)
        ld b, BATTLECMD_STRUCT_NAMESIZE
        ld c, e
        push de
        call Math_Mult
        pop de
        ld bc, wBattle_Menu_CommandNameString.Cmd1
        add hl, bc

        ; Write the name of the battlecmd
        pop bc
        Set16 wMenu_BattleCmd_DestBuffer, hl
        FSet16 wMenu_BattleCmd_TablePointer, bc
        xor a
        ld [wMenu_BattleCmd_GetEnergyFlag], a
        push de
        Do_CallForeign BattleCmd_GetNameAndEnergy

        ; Loop through all 4 battle_cmds and then end
        pop de
        dec e
        ld a, -1
        cp e
        ret z

        ; unused 3 lines of code:
        ld hl, wBattle_Menu_BattleCmdPointers
        add hl, de
        ld a, [hl]
        jr .CmdLoop

    ; $5FDF
Battle_Flow_ControlCreature:
    ; Shows the Menu options for the current creature (or Tony)
    xor a
    ld [$D0C0], a ; todo

    ; Allow the user to select an option via the menu
    call Battle_Flow_CreatureCommandMenu

    ld a, [$D0D5] ; todo - cancel on a creature probably
    and a
    ret nz

    ; The target mode has been selected in wBattle_TargetMode
    ; Let's process it
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [wBattle_TargetMode]
    .CheckMe:
    cp Battle_TARGET_ME
    jr nz, .CheckNone
        .DoMe:
            ; Target self
            ld a, [wBattle_CurCreature_Slot]
            res 7, a
            ld [wBattle_Creature_Current.BattleCmd_Target], a
            Battle_TextboxClose
            ret
    .CheckNone:
    cp Battle_TARGET_NONE
    jr nz, .CheckMenu
        .DoNone:
            ; We don't need to set a target
            Battle_TextboxClose
            ret
    .CheckMenu:
    ld a, [wBattle_Creature_Current.BattleCmd_Menu]
    and a
    jr nz, .DoMenu
    .DoOrdinaryTarget:
        Battle_TextboxClose
        jr .DoOrdinaryTarget2

    .DoMenu:
        ; Run the Menu function
        Do_CallForeign Battle_Helpers_SelectMenu
        Battle_TextboxClose
        ; If successful, allow the user to choose a target
        ld a, [wMenu_ReturnValue]
        cp Menu_CANCEL
        jr nz, .DoOrdinaryTarget2
        ; If unsuccessful, reset the control from the beginning
        .CancelMenu:
            ld a, [wBattle_CurCreature_Slot]
            cp wBattle_CreatureSlots.Hero - wBattle_CreatureSlots
            .NotHero:
                jp nz, Battle_Flow_ControlCreature
            .Hero:
                Battle_TextboxOpen
                jp Battle_Flow_ControlCreature


    .DoOrdinaryTarget2:
        Do_CallForeign Call_005_590B
        ld a, [wMenu_ReturnValue]
        cp Menu_CANCEL
        jp nz, .TargetFinally

        .Cancel:
            ; Try again
            ld a, [wBattle_CurCreature_Slot]
            cp 0
            jp nz, Battle_Flow_ControlCreature
            ; For Tony we need to refresh the textbox it seems, probably becauses we came here via DoMenu
            Battle_TextboxOpen
            jp Battle_Flow_ControlCreature


        .TargetFinally:
        ; If the target mode targets multiple creatures, then do not update the target
        ld a, [wBattle_Creature_Current.BattleCmd_Target]
        cp Battle_TARGET_MANY_START
        ret nc

        ; Otherwise, save the selected target
        Mov8 wBattle_Creature_Current.BattleCmd_Target, wMenu_ReturnValue
        ld [$D0C1], a
        Do_CallForeign Call_005_579D
        ret

    ; $6110
Battle_Flow_CreatureCommandMenu:
    ; Draw the command menu
    call Battle_Flow_CommandMenuGetCmdNames
    Do_CallForeign Battle_Helpers_DrawCommandMenu

    ; Prep the command menu
    xor a
    ld [wMenu_ReturnValue], a ;Menu_CursorTable_Battle_CreatureCommand_FightDef
    ld [$D0D5], a  ; todo

    ; Change the first cursor position if the command menu is for the hero and not a creature
    ld a, [wBattle_CurCreature_Slot]
    and a
    jr nz, .SetupMenu
    .Hero:
        Set8 wMenu_ReturnValue, Enum_Menu_CursorTable_Battle_HeroCommand_Summon ; Order is different for Hero

    .SetupMenu:
    ; Setup the menu to display it
    Set16_M hInterrupt_HBlank_Func, Interrupt_HBlankFunc_WindowSprite
    SwitchRAMBank BANK("WRAM BATTLE")
    Set8 wMenuChoice_FingerTile, Textbox_TILEID_CURSORHOVER

    ; Creature or Hero?
    ld a, [wBattle_CurCreature_Slot]
    cp 0
    jr z, .HandleHero
    .HandleCreature:
        ; Determine which menu options are selectable

        ; FightDef and Cmd0 are always valid; initialize Cmd1-3 as invalid
        ld a, $01
        ld hl, wMenu_Battle_CursorTableValidIDs
        ld [hl+], a ; FightDef
        ld [hl+], a ; Cmd0
        xor a
        ld [hl+], a ; Cmd1
        ld [hl+], a ; Cmd2
        ld [hl+], a ; Cmd3
        ld a, $01
        ld [hl], a  ; SwapFiDe

        ; Loop through Cmd1-3 and activate the ones that are unlocked
        ld hl, wBattle_Creature_Current.AbilityUnlock1
        ; ld a, $01
        ld d, $03
        ld bc, wMenu_Battle_CursorTableValidIDs + Enum_Menu_CursorTable_Battle_CreatureCommand_Ability1
        .UnlockLoop:
            ; If locked, stop looping
            ld a, [hl+]
            cp $FF
            jr nz, .EndUnlockLoop
            ; If unlocked, make the entry valid and check the next entry
            ld [bc], a
            inc bc
            dec d
            jr nz, .UnlockLoop
        .EndUnlockLoop:

        Do_Menu_Init Menu_CursorTable_Battle_CreatureCommand, %11110011, wMenu_MainMenu_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, [wMenu_ReturnValue], Menu_CURSOR_NOBLINK, Menu_CURSOR_SPRITE
        jp .MenuLoop


    .HandleHero:
        ; Unlock all menu options by default
        ld a, $01
        ld hl, wMenu_Battle_CursorTableValidIDs
        ld d, Menu_CursorTable_Battle_HeroCommand_SIZE
        .ValidLoop:
            ld [hl+], a
            dec d
            jr nz, .ValidLoop
        ; unused - a theoretical last option of SwapFiDe is disabled
        xor a
        ld [hl], a

        ; Disable run if it is disabled (when there is an enemy magi)
        ld a, [wBattle_RunEnabled]
        and a
        jr nz, .SkipDisableRun
        .DisableRun:
            xor a
            ld [wMenu_Battle_CursorTableValidIDs + Enum_Menu_CursorTable_Battle_HeroCommand_Run], a
        .SkipDisableRun:

        ; Check if all 4 summon slots are full. If so, disable the Summon option
        ; and set the cursor on Focus instead of Summon
        xor a
        ld hl, wBattle_CreatureSlots.Ally0
        ld d, $04
        .CheckAllySlotLoop:
            cp [hl]
            jr z, .NextAllyCheck
            inc hl
            dec d
            jr nz, .CheckAllySlotLoop

            .DisableSummon:
                xor a
                ld [wMenu_Battle_CursorTableValidIDs + Enum_Menu_CursorTable_Battle_HeroCommand_Summon], a
                ld [wMenu_ReturnValue], a
                jr .SummonCheckEnd

        .NextAllyCheck:
        ; Check if the hero has at least 1 creature summoned
        ld hl, wBattle_CreatureSlots.Ally0
        xor a
        ld d, $04
        .CountAllySlotLoop:
            add [hl]
            inc hl
            dec d
            jr nz, .CountAllySlotLoop
        ; a = number of non-empty slots

        ; Pass if we have 0 summoned creatures
        and a
        jr z, .SummonCheckEnd

        ; Pass if we have 4 summoned creatues (this check should be unused and should not happen as .CheckAllySlotLoop should catch this)
        cp $04
        jr z, .SummonCheckEnd

        ; If the hero only has a total of 1-3 rings, then it is possible he summoned all his available creatures even though there are empty slots
        ; In that case, disable the summon option
        ld c, a
        ld b, $00
        ld hl, xInventory_Rings
        add hl, bc
        Battery_SetBank "XRAM Gamestate"
        Battery_On
        Get8 b, hl ; inefficient, we immediately put it back into a
        Battery_Off
        ld a, b
        cp $FF ; We have the same number of total rings in inventory as the number of summoned creatures
        jr z, .DisableSummon

        .SummonCheckEnd:
        Do_Menu_Init Menu_CursorTable_Battle_HeroCommand, %11110011, wMenu_MainMenu_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, [wMenu_ReturnValue], Menu_CURSOR_NOBLINK, Menu_CURSOR_SPRITE
        ; jr .MenuLoop

    .MenuLoop:
    ld a, [wMenu_CursorID]
    cp Enum_Menu_CursorTable_Battle_CreatureCommand_SwapFiDe
    jr nz, .SkipSwapFiDe
    .SwapFiDe:
        ; Swap "Fight" with "Defend" or vice-versa
        Set16_M wVBlank_Func, Battle00_VBlank_SwapFightDef

        ; Reset wMenu_CursorID
        xor a
        ld [wMenu_CursorID], a

        ; Simulate a right button press
        ; This prevents the SwapFiDe option from becoming "sticky"
        ; I'm not sure why this fixes the problem
        set button_BIT_RIGHT, a
        ld [wCntDown], a
        Do_CallForeign Menu_Do
        call System_UpdateGame

        ; Keep track if the option is Fight or Defend
        ld hl, wBattle_Creature_Current.Other
        ld a, [hl]
        cpl
        ld [hl], a

    .SkipSwapFiDe:
    ; Get a keypress
    Do_CallForeign Menu_Do
    call System_UpdateGame

    ; Check the keypress
    ld a, [wMenu_ReturnValue]

    ; Loop until keypress
    cp Menu_NULL
    jr nc, .MenuLoop

    ; Parse Cancel
    cp Menu_CANCEL
    jr nz, .CommandSelected
    .DoCancel:
        ; The hero cannot cancel, so ignore
        ld a, [wBattle_CurCreature_Slot]
        cp 0
        jr z, .MenuLoop

        ; If it's a creature, accept the cancel command and return
        Set8 $D0D5, $01 ; todo
        ret

    .CommandSelected:
    ; Parse a battlecmd
    Do_CallForeign Battle_Helpers_ChooseBattleCmd
    Do_CallForeign Battle_Helpers_CheckValidTarget
    ; Return if command has been validated, or else re-initialize the menu
    ld a, [wBattle_CurCreature_ValidBattleCmd]
    and a
    ret nz
    jp .SetupMenu


Call_002_62C1:
    ld a, [wBattle_ExitCode]                                 ; $62C1: $FA $16 $D0
    and a                                         ; $62C4: $A7
    ret nz                                        ; $62C5: $C0

    xor a                                         ; $62C6: $AF
    ld hl, $D14E                                  ; $62C7: $21 $4E $D1
    or [hl]                                       ; $62CA: $B6
    inc hl                                        ; $62CB: $23
    or [hl]                                       ; $62CC: $B6
    ld hl, wBattle_CreatureSlots.Ally0                                  ; $62CD: $21 $92 $D0
    ld d, $04                                     ; $62D0: $16 $04

jr_002_62D2:
    or [hl]                                       ; $62D2: $B6
    inc hl                                        ; $62D3: $23
    dec d                                         ; $62D4: $15
    jr nz, jr_002_62D2                            ; $62D5: $20 $FB

    ld hl, $D07E                                  ; $62D7: $21 $7E $D0
    ld d, $04                                     ; $62DA: $16 $04

jr_002_62DC:
    or [hl]                                       ; $62DC: $B6
    inc hl                                        ; $62DD: $23
    dec d                                         ; $62DE: $15
    jr nz, jr_002_62DC                            ; $62DF: $20 $FB

    and a                                         ; $62E1: $A7
    jr nz, jr_002_62EA                            ; $62E2: $20 $06

    Set8 wBattle_ExitCode, BATTLE_EXITCODE_LOSE
    ret                                           ; $62E9: $C9


jr_002_62EA:
    ld hl, wBattle_CreatureSlots.Enemy0                                  ; $62EA: $21 $96 $D0
    xor a                                         ; $62ED: $AF
    ld d, $04                                     ; $62EE: $16 $04

jr_002_62F0:
    or [hl]                                       ; $62F0: $B6
    inc hl                                        ; $62F1: $23
    dec d                                         ; $62F2: $15
    jr nz, jr_002_62F0                            ; $62F3: $20 $FB

    and a                                         ; $62F5: $A7
    ret nz                                        ; $62F6: $C0

    ld b, a                                       ; $62F7: $47
    ld a, [wBattle_CreatureSlots.Magi]                                 ; $62F8: $FA $9A $D0
    and a                                         ; $62FB: $A7
    jr z, jr_002_6310                             ; $62FC: $28 $12

    ld hl, $D082                                  ; $62FE: $21 $82 $D0
    ld d, $04                                     ; $6301: $16 $04
    ld a, b                                       ; $6303: $78

jr_002_6304:
    or [hl]                                       ; $6304: $B6
    inc hl                                        ; $6305: $23
    dec d                                         ; $6306: $15
    jr nz, jr_002_6304                            ; $6307: $20 $FB

    ld hl, $D33D                                  ; $6309: $21 $3D $D3
    or [hl]                                       ; $630C: $B6
    inc hl                                        ; $630D: $23
    or [hl]                                       ; $630E: $B6
    ret nz                                        ; $630F: $C0

jr_002_6310:
    Set8 wBattle_ExitCode, BATTLE_EXITCODE_WIN
    ret                                           ; $6315: $C9

    ; $6316
Battle_Flow_Exit:
    .CheckWin:
    ld a, [wBattle_ExitCode]                                 ; $6316: $FA $16 $D0
    cp BATTLE_EXITCODE_WIN                                        ; $6319: $FE $02
    jp nz, Jump_002_641DCheckLose                          ; $631B: $C2 $1D $64
    .Win:
    Sound_Request_StartSong SONGID_GetItem

    Battle_Set_MagiAnim [wBattle_Creature_Magi.ID], BATTLE_MAGIANIM_DEFEAT, BATTLE_ACTOR_MAGI
    Battle_Set_MagiAnim CreatureID_Tony, BATTLE_MAGIANIM_VICTORY, BATTLE_ACTOR_TONY

Jump_002_636A:
    ld hl, $D36E                                  ; $636A: $21 $6E $D3
    ld c, $00                                     ; $636D: $0E $00
    ld b, $37                                     ; $636F: $06 $37

jr_002_6371:
    push hl                                       ; $6371: $E5
    DerefHL
    ld a, h                                       ; $6375: $7C
    or l                                          ; $6376: $B5
    jr z, jr_002_63D5                             ; $6377: $28 $5C

    ld de, $0003                                  ; $6379: $11 $03 $00
    add hl, de                                    ; $637C: $19
    push hl                                       ; $637D: $E5
    call Math_Mult                                    ; $637E: $CD $CA $04
    ld de, $D17E                                  ; $6381: $11 $7E $D1
    add hl, de                                    ; $6384: $19
    ld de, $0005                                  ; $6385: $11 $05 $00
    add hl, de                                    ; $6388: $19
    push hl                                       ; $6389: $E5
    ld de, $0005                                  ; $638A: $11 $05 $00
    TwosComp de
    add hl, de                                    ; $6394: $19
    ld de, $0007                                  ; $6395: $11 $07 $00
    add hl, de                                    ; $6398: $19
    ld a, [hl+]                                   ; $6399: $2A
    ld e, [hl]                                    ; $639A: $5E
    ld d, a                                       ; $639B: $57
    FGet16_BigEndian hl, $D14E                                  ; $639C: $21 $4E $D1                                       ; $63A1: $67
    add hl, de                                    ; $63A2: $19
    inc hl                                        ; $63A3: $23
    ld a, [$D150]                                 ; $63A4: $FA $50 $D1
    ld d, a                                       ; $63A7: $57
    ld a, [$D151]                                 ; $63A8: $FA $51 $D1
    ld e, a                                       ; $63AB: $5F
    ld a, e                                       ; $63AC: $7B
    sub l                                         ; $63AD: $95
    ld a, d                                       ; $63AE: $7A
    sbc h                                         ; $63AF: $9C
    jp nc, Jump_002_63B5                          ; $63B0: $D2 $B5 $63

    ld h, d                                       ; $63B3: $62
    ld l, e                                       ; $63B4: $6B

Jump_002_63B5:
    ld a, h                                       ; $63B5: $7C
    ld [$D14E], a                                 ; $63B6: $EA $4E $D1
    ld a, l                                       ; $63B9: $7D
    ld [$D14F], a                                 ; $63BA: $EA $4F $D1
    pop hl                                        ; $63BD: $E1
    pop de                                        ; $63BE: $D1
    Battery_On
    Battery_SetBank "XRAM Creatures"
    ld a, [hl+]                                   ; $63CC: $2A
    ld [de], a                                    ; $63CD: $12
    inc de                                        ; $63CE: $13
    ld a, [hl+]                                   ; $63CF: $2A
    ld [de], a                                    ; $63D0: $12
    Battery_Off

jr_002_63D5:
    pop hl                                        ; $63D5: $E1
    inc bc                                        ; $63D6: $03
    ld a, $04                                     ; $63D7: $3E $04
    cp c                                          ; $63D9: $B9
    jr z, jr_002_63E0                             ; $63DA: $28 $04

    inc hl                                        ; $63DC: $23
    inc hl                                        ; $63DD: $23
    jr jr_002_6371                                ; $63DE: $18 $91

jr_002_63E0:
    ld bc, $D14E                                  ; $63E0: $01 $4E $D1
    ld hl, $A005                                  ; $63E3: $21 $05 $A0
    Battery_On
    Battery_SetBank "XRAM Creatures"
    LdHLIBCI                                        ; $63F5: $03
    LdHLIBCI                                        ; $63F8: $03
    Battery_Off
    Do_CallForeign Call_005_42F6
    call Call_002_54D9                            ; $6405: $CD $D9 $54
    ld hl, $C71B                                  ; $6408: $21 $1B $C7
    ld a, $4C                                     ; $640B: $3E $4C
    ld [hl+], a                                   ; $640D: $22
    ld a, $5B                                     ; $640E: $3E $5B
    ld [hl+], a                                   ; $6410: $22
    ld a, $4B                                     ; $6411: $3E $4B
    ld [hl+], a                                   ; $6413: $22
    ld a, $66                                     ; $6414: $3E $66
    ld [hl+], a                                   ; $6416: $22
    ld a, $0A                                     ; $6417: $3E $0A
    ld [hl+], a                                   ; $6419: $22
    jp Jump_002_6527                              ; $641A: $C3 $27 $65


Jump_002_641DCheckLose:
    cp BATTLE_EXITCODE_LOSE                                        ; $641D: $FE $03
    jp nz, Jump_002_64EDCheckTODO                          ; $641F: $C2 $ED $64
    .Lose:
    Battle_Set_MagiAnim [wBattle_Creature_Magi.ID], BATTLE_MAGIANIM_VICTORY, BATTLE_ACTOR_MAGI
    Battle_Set_MagiAnim CreatureID_Tony, BATTLE_MAGIANIM_DEFEAT, BATTLE_ACTOR_TONY
    ld hl, $C71B                                  ; $6451: $21 $1B $C7
    ld a, $4C                                     ; $6454: $3E $4C
    ld [hl+], a                                   ; $6456: $22
    ld a, $AB                                     ; $6457: $3E $AB
    ld [hl+], a                                   ; $6459: $22
    ld a, $45                                     ; $645A: $3E $45
    ld [hl+], a                                   ; $645C: $22
    ld a, $66                                     ; $645D: $3E $66
    ld [hl+], a                                   ; $645F: $22
    ld a, $0A                                     ; $6460: $3E $0A
    ld [hl+], a                                   ; $6462: $22
    Do_CallForeign UNK_AwaitTextEnd
    ld a, $20                                     ; $646B: $3E $20
    ld [$C9DE], a                                 ; $646D: $EA $DE $C9
    ld a, $0F                                     ; $6470: $3E $0F
    ld [$C9D8], a                                 ; $6472: $EA $D8 $C9
    ld a, $FF                                     ; $6475: $3E $FF
    ld [$C9DA], a                                 ; $6477: $EA $DA $C9
    ld a, $7F                                     ; $647A: $3E $7F
    ld [$C9DB], a                                 ; $647C: $EA $DB $C9
    Do_CallForeign PaletteFX_ClearBaseBuffer
    ld a, $01                                     ; $6487: $3E $01
    ld [$C9DC], a                                 ; $6489: $EA $DC $C9

jr_002_648C:
    Do_CallForeign PaletteFX_FadeAnimToBase
    Do_CallForeign Palette_DeterminePaletteVBlankFunc
    call System_UpdateGame                                    ; $649C: $CD $BB $08
    ld a, [$C9DE]                                 ; $649F: $FA $DE $C9
    dec a                                         ; $64A2: $3D
    ld [$C9DE], a                                 ; $64A3: $EA $DE $C9
    jr nz, jr_002_648C                            ; $64A6: $20 $E4

    call ScreenHide                                    ; $64A8: $CD $C3 $07
    Do_CallForeign Cardscene_RestoreAllBuffers
    ld a, [wSound_SceneSongBackupID]                                 ; $64B3: $FA $23 $C9

    Sound_Request_StartSong a ; inefficiency - does ld a, a

    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [$D3D0]                                 ; $64D9: $FA $D0 $D3
    ldh [hScript.Bank], a                                  ; $64DC: $E0 $A1
    FGet16 bc, $D3D1                                  ; $64DE: $21 $D1 $D3
    FSet16 hScript.Frame, bc                                    ; $64E9: $70
    jp $2158                                      ; $64EA: $C3 $58 $21


Jump_002_64EDCheckTODO:
    cp $04                                        ; $64ED: $FE $04
    jp z, Jump_002_636A                           ; $64EF: $CA $6A $63
    .Run:
    ld bc, $D14E                                  ; $64F2: $01 $4E $D1
    ld hl, $A005                                  ; $64F5: $21 $05 $A0
    Battery_On
    Battery_SetBank "XRAM Creatures"
    LdHLIBCI                                        ; $6507: $03
    ld d, a                                       ; $6508: $57
    LdHLIBCI                                        ; $650B: $03
    or d                                          ; $650C: $B2
    jr nz, jr_002_6511                            ; $650D: $20 $02

    dec hl                                        ; $650F: $2B
    inc [hl]                                      ; $6510: $34

jr_002_6511:
    Battery_Off
    ld hl, $C71B                                  ; $6515: $21 $1B $C7
    ld a, $4C                                     ; $6518: $3E $4C
    ld [hl+], a                                   ; $651A: $22
    ld a, $17                                     ; $651B: $3E $17
    ld [hl+], a                                   ; $651D: $22
    ld a, $4A                                     ; $651E: $3E $4A
    ld [hl+], a                                   ; $6520: $22
    ld a, $66                                     ; $6521: $3E $66
    ld [hl+], a                                   ; $6523: $22
    ld a, $0A                                     ; $6524: $3E $0A
    ld [hl+], a                                   ; $6526: $22

Jump_002_6527:
    ld a, [wBattle_ExitCode]                                 ; $6527: $FA $16 $D0
    cp BATTLE_EXITCODE_TODO ;todo ?? what is this
    jr z, jr_002_6536                             ; $652C: $28 $08

    Do_CallForeign UNK_AwaitTextEnd

jr_002_6536:
    call ScreenHide                                    ; $6536: $CD $C3 $07
    Do_CallForeign Cardscene_RestoreAllBuffers
    ld a, [wSound_SceneSongBackupID]                                 ; $6541: $FA $23 $C9

    Sound_Request_StartSong a
    
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [$D3CD]                                 ; $6567: $FA $CD $D3
    ldh [hScript.Bank], a                                  ; $656A: $E0 $A1
    FGet16 bc, $D3CE                                  ; $656C: $21 $CE $D3                                       ; $6571: $4F
    FSet16 hScript.Frame, bc                                    ; $6577: $70
    jp $2158                                      ; $6578: $C3 $58 $21


Call_002_657B:
    ld hl, wBattle_CreatureSlots.Ally0                                  ; $657B: $21 $92 $D0
    xor a                                         ; $657E: $AF
    ld d, $04                                     ; $657F: $16 $04

jr_002_6581:
    or [hl]                                       ; $6581: $B6
    inc hl                                        ; $6582: $23
    dec d                                         ; $6583: $15
    jr nz, jr_002_6581                            ; $6584: $20 $FB

    ld hl, $D07E                                  ; $6586: $21 $7E $D0
    ld d, $04                                     ; $6589: $16 $04

jr_002_658B:
    or [hl]                                       ; $658B: $B6
    inc hl                                        ; $658C: $23
    dec d                                         ; $658D: $15
    jr nz, jr_002_658B                            ; $658E: $20 $FB

    ret                                           ; $6590: $C9


    ; $6591
Battle_Flow_MainLoop::
    ; Btl_Main_Loop
    .Loop:
        call Battle_Flow_ProcessHero
        call Call_002_65B7
        ld a, [$D0D5]
        and a
        jr nz, .Loop

    call Call_002_6A01
    call Call_002_6BBA
    call Battle_Flow_SortCmdOrder
    call Call_002_5E5E_RunScripts
    call Call_002_66DD
    ld a, [wBattle_ExitCode]
    cp BATTLE_EXITCODE_NOEXIT
    jp nz, Battle_Flow_Exit

    jp Battle_Flow_MainLoop


Call_002_65B7:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld de, $D17E                                  ; $65BE: $11 $7E $D1
    FSet16 $D079, de                                    ; $65C6: $72
    ld hl, wBattle_CreatureSlots.Ally0                                  ; $65C7: $21 $92 $D0
    ld b, $04                                     ; $65CA: $06 $04

Jump_002_65CC:
    ld a, [wBattle_CurCreature_Slot]                                 ; $65CC: $FA $B1 $D0
    inc a                                         ; $65CF: $3C
    ld [wBattle_CurCreature_Slot], a                                 ; $65D0: $EA $B1 $D0
    ld a, [hl+]                                   ; $65D3: $2A
    and a                                         ; $65D4: $A7
    push hl                                       ; $65D5: $E5
    push bc                                       ; $65D6: $C5
    jp z, Jump_002_66C1                           ; $65D7: $CA $C1 $66

    FGet16 bc, $D079                                  ; $65DA: $21 $79 $D0                                       ; $65DF: $4F
    ld hl, $D0D9                                  ; $65E0: $21 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $65E3: $CD $DC $5B
    ld a, [wBattle_Creature_Current.StatusActive]                                 ; $65E6: $FA $EE $D0
    and Status_STONE                                       ; $65E9: $E6 $02
    jr z, jr_002_662D                             ; $65EB: $28 $40

    Do_Battle_SetActorScript [wBattle_CurCreature_Slot], SCRIPT_Battle_Actor_Stone
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $6600: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $6602: $EA $3D $C9
    ld a, $C9                                     ; $6605: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $6607: $EA $3E $C9
    ld hl, $C71B                                  ; $660A: $21 $1B $C7
    ld a, $4C                                     ; $660D: $3E $4C
    ld [hl+], a                                   ; $660F: $22
    ld a, $C1                                     ; $6610: $3E $C1
    ld [hl+], a                                   ; $6612: $22
    ld a, $4A                                     ; $6613: $3E $4A
    ld [hl+], a                                   ; $6615: $22
    ld a, $66                                     ; $6616: $3E $66
    ld [hl+], a                                   ; $6618: $22
    ld a, $0A                                     ; $6619: $3E $0A
    ld [hl+], a                                   ; $661B: $22
    Do_CallForeign UNK_AwaitTextEnd
    ld a, [wBattle_CurCreature_Slot]                                 ; $6624: $FA $B1 $D0
    call Battle00_Actor_DisableScript                                    ; $6627: $CD $C7 $38
    jp Jump_002_66B5                              ; $662A: $C3 $B5 $66


jr_002_662D:
    ld a, [wBattle_CurCreature_Slot]                                 ; $662D: $FA $B1 $D0
    ld d, $41                                     ; $6630: $16 $41
    ld bc, $6EC2                                  ; $6632: $01 $C2 $6E
    call Battle00_Actor_SetScript                                    ; $6635: $CD $F0 $38
    ld a, [wBattle_Creature_Current.StatusActive]                                 ; $6638: $FA $EE $D0
    and $40                                       ; $663B: $E6 $40
    jr z, jr_002_66A3                             ; $663D: $28 $64

    xor a                                         ; $663F: $AF
    ld [wMenu_ReturnValue], a                                 ; $6640: $EA $A7 $CC
    Do_CallForeign Battle_Helpers_ChooseBattleCmd

jr_002_664B:
    call Math_Rand8Inc                                    ; $664B: $CD $4F $05
    ld c, a                                       ; $664E: $4F
    ld b, $0A                                     ; $664F: $06 $0A
    call Math_Div8                                   ; $6651: $CD $AC $04
    ld h, $00                                     ; $6654: $26 $00
    ld bc, wBattle_CreatureSlots                                  ; $6656: $01 $91 $D0
    push hl                                       ; $6659: $E5
    add hl, bc                                    ; $665A: $09
    ld a, [hl]                                    ; $665B: $7E
    and a                                         ; $665C: $A7
    pop hl                                        ; $665D: $E1
    jr z, jr_002_664B                             ; $665E: $28 $EB

    ld a, l                                       ; $6660: $7D
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $6661: $EA $03 $D1
    ld a, [wBattle_CurCreature_Slot]                                 ; $6664: $FA $B1 $D0
    ld d, $41                                     ; $6667: $16 $41
    ld bc, $6ECC                                  ; $6669: $01 $CC $6E
    call Battle00_Actor_SetScript                                    ; $666C: $CD $F0 $38
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $6677: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $6679: $EA $3D $C9
    ld a, $C9                                     ; $667C: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $667E: $EA $3E $C9
    ld hl, $C71B                                  ; $6681: $21 $1B $C7
    ld a, $4C                                     ; $6684: $3E $4C
    ld [hl+], a                                   ; $6686: $22
    ld a, $D3                                     ; $6687: $3E $D3
    ld [hl+], a                                   ; $6689: $22
    ld a, $41                                     ; $668A: $3E $41
    ld [hl+], a                                   ; $668C: $22
    ld a, $66                                     ; $668D: $3E $66
    ld [hl+], a                                   ; $668F: $22
    ld a, $0A                                     ; $6690: $3E $0A
    ld [hl+], a                                   ; $6692: $22
    Do_CallForeign UNK_AwaitTextEnd
    ld a, [wBattle_CurCreature_Slot]                                 ; $669B: $FA $B1 $D0
    call Battle00_Actor_DisableScript                                    ; $669E: $CD $C7 $38
    jr jr_002_66B5                                ; $66A1: $18 $12

jr_002_66A3:
    call Battle_Flow_ControlCreature                            ; $66A3: $CD $DF $5F
    ld a, [wBattle_CurCreature_Slot]                                 ; $66A6: $FA $B1 $D0
    call Battle00_Actor_DisableScript                                    ; $66A9: $CD $C7 $38
    ld a, [$D0D5]                                 ; $66AC: $FA $D5 $D0
    and a                                         ; $66AF: $A7
    jr z, jr_002_66B5                             ; $66B0: $28 $03

    pop hl                                        ; $66B2: $E1
    pop hl                                        ; $66B3: $E1
    ret                                           ; $66B4: $C9


Jump_002_66B5:
jr_002_66B5:
    ld bc, $D0D9                                  ; $66B5: $01 $D9 $D0
    FGet16 hl, $D079                                  ; $66B8: $21 $79 $D0
    call Battle_Init_CreatureCopy                            ; $66BE: $CD $DC $5B

Jump_002_66C1:
    pop bc                                        ; $66C1: $C1
    dec b                                         ; $66C2: $05
    jr nz, jr_002_66C7                            ; $66C3: $20 $02

    pop hl                                        ; $66C5: $E1
    ret                                           ; $66C6: $C9


jr_002_66C7:
    FGet16 hl, $D079                                  ; $66C7: $21 $79 $D0
    ld de, $0037                                  ; $66CD: $11 $37 $00
    add hl, de                                    ; $66D0: $19
    ld a, h                                       ; $66D1: $7C
    ld [$D07A], a                                 ; $66D2: $EA $7A $D0
    ld a, l                                       ; $66D5: $7D
    ld [$D079], a                                 ; $66D6: $EA $79 $D0
    pop hl                                        ; $66D9: $E1
    jp Jump_002_65CC                              ; $66DA: $C3 $CC $65


Call_002_66DD:
    xor a                                         ; $66DD: $AF
    ld [$D017], a                                 ; $66DE: $EA $17 $D0
    ld [$D075], a                                 ; $66E1: $EA $75 $D0
    ld hl, $D0A5                                  ; $66E4: $21 $A5 $D0
    ld d, $0A                                     ; $66E7: $16 $0A

jr_002_66E9:
    ld [hl+], a                                   ; $66E9: $22
    dec d                                         ; $66EA: $15
    jr nz, jr_002_66E9                            ; $66EB: $20 $FC

Jump_002_66ED:
    xor a                                         ; $66ED: $AF
    ld [$D0B7], a                                 ; $66EE: $EA $B7 $D0
    ld a, [$D017]                                 ; $66F1: $FA $17 $D0
    cp $02                                        ; $66F4: $FE $02
    jr nc, jr_002_670E                            ; $66F6: $30 $16

    and a                                         ; $66F8: $A7
    jr nz, jr_002_6704                            ; $66F9: $20 $09

    xor a                                         ; $66FB: $AF
    ld [$D0B6], a                                 ; $66FC: $EA $B6 $D0
    ld bc, wBattle_Creature_Hero                                  ; $66FF: $01 $47 $D1
    jr jr_002_6735                                ; $6702: $18 $31

jr_002_6704:
    ld a, $09                                     ; $6704: $3E $09
    ld [$D0B6], a                                 ; $6706: $EA $B6 $D0
    ld bc, $D336                                  ; $6709: $01 $36 $D3
    jr jr_002_6735                                ; $670C: $18 $27

jr_002_670E:
    ld hl, $D006                                  ; $670E: $21 $06 $D0
    ld c, a                                       ; $6711: $4F
    add l                                         ; $6712: $85
    ld l, a                                       ; $6713: $6F
    ld c, [hl]                                    ; $6714: $4E
    ld a, $FF                                     ; $6715: $3E $FF
    cp c                                          ; $6717: $B9
    jp z, Jump_002_69CD                           ; $6718: $CA $CD $69

    ld b, $00                                     ; $671B: $06 $00
    ld hl, wBattle_CreatureSlots                                  ; $671D: $21 $91 $D0
    add hl, bc                                    ; $6720: $09
    ld a, [hl]                                    ; $6721: $7E
    and a                                         ; $6722: $A7
    jp z, Jump_002_69CD                           ; $6723: $CA $CD $69

    ld a, c                                       ; $6726: $79
    ld [$D0B6], a                                 ; $6727: $EA $B6 $D0
    ld b, $37                                     ; $672A: $06 $37
    call Math_Mult                                    ; $672C: $CD $CA $04
    ld bc, wBattle_Creature_Hero                                  ; $672F: $01 $47 $D1
    add hl, bc                                    ; $6732: $09
    ld b, h                                       ; $6733: $44
    ld c, l                                       ; $6734: $4D

jr_002_6735:
    FSet16 $D079, bc                                    ; $673A: $70
    ld hl, $D0D9                                  ; $673B: $21 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $673E: $CD $DC $5B
    ld a, [wBattle_Creature_Current.StatusActive]                                 ; $6741: $FA $EE $D0
    and $04                                       ; $6744: $E6 $04
    jr z, jr_002_67A0                             ; $6746: $28 $58

    ld a, [$D0E9]                                 ; $6748: $FA $E9 $D0
    ld b, a                                       ; $674B: $47
    ld a, $12                                     ; $674C: $3E $12
    call Battle_Cmd_Formula_Luck                            ; $674E: $CD $FB $53
    ld b, a                                       ; $6751: $47
    ld c, $20                                     ; $6752: $0E $20
    call Math_Random                                    ; $6754: $CD $3A $05
    add b                                         ; $6757: $80
    ld b, a                                       ; $6758: $47
    ld a, [$D0E6]                                 ; $6759: $FA $E6 $D0
    cpl                                           ; $675C: $2F
    add b                                         ; $675D: $80
    jr nc, jr_002_67A0                            ; $675E: $30 $40

    ld a, [$D0B6]                                 ; $6760: $FA $B6 $D0
    ld d, $41                                     ; $6763: $16 $41
    ld bc, $6FF7                                  ; $6765: $01 $F7 $6F
    call Battle00_Actor_SetScript                                    ; $6768: $CD $F0 $38
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $6773: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $6775: $EA $3D $C9
    ld a, $C9                                     ; $6778: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $677A: $EA $3E $C9
    ld hl, $C71B                                  ; $677D: $21 $1B $C7
    ld a, $4C                                     ; $6780: $3E $4C
    ld [hl+], a                                   ; $6782: $22
    ld a, $1C                                     ; $6783: $3E $1C
    ld [hl+], a                                   ; $6785: $22
    ld a, $44                                     ; $6786: $3E $44
    ld [hl+], a                                   ; $6788: $22
    ld a, $66                                     ; $6789: $3E $66
    ld [hl+], a                                   ; $678B: $22
    ld a, $0A                                     ; $678C: $3E $0A
    ld [hl+], a                                   ; $678E: $22
    Do_CallForeign UNK_AwaitTextEnd
    ld a, [$D0B6]                                 ; $6797: $FA $B6 $D0
    call Battle00_Actor_DisableScript                                    ; $679A: $CD $C7 $38
    jp Jump_002_68E8                              ; $679D: $C3 $E8 $68


jr_002_67A0:
    ld b, $00                                     ; $67A0: $06 $00
    ld a, [wBattle_Creature_Current.BattleCmd_Cost]                                 ; $67A2: $FA $02 $D1
    ld c, a                                       ; $67A5: $4F
    ld a, [wBattle_Creature_Current.CurEnergy]                                 ; $67A6: $FA $E0 $D0
    ld h, a                                       ; $67A9: $67
    ld a, [wBattle_Creature_Current.CurEnergy + 1]                                 ; $67AA: $FA $E1 $D0
    ld l, a                                       ; $67AD: $6F
    TwosComp bc
    add hl, bc                                    ; $67B5: $09
    jr nc, jr_002_67BC                            ; $67B6: $30 $04

    ld a, h                                       ; $67B8: $7C
    or l                                          ; $67B9: $B5
    jr nz, jr_002_681E                            ; $67BA: $20 $62

jr_002_67BC:
    ld a, b                                       ; $67BC: $78
    or c                                          ; $67BD: $B1
    jr z, jr_002_681E                             ; $67BE: $28 $5E

    ld a, [$D017]                                 ; $67C0: $FA $17 $D0
    cp $02                                        ; $67C3: $FE $02
    jr nc, jr_002_67CE                            ; $67C5: $30 $07

    ld a, $00                                     ; $67C7: $3E $00
    ld [wBattle_CurCreature_Slot], a                                 ; $67C9: $EA $B1 $D0
    jr jr_002_67E1                                ; $67CC: $18 $13

jr_002_67CE:
    ld a, $01                                     ; $67CE: $3E $01
    ld [wBattle_CurCreature_Slot], a                                 ; $67D0: $EA $B1 $D0
    ld a, [wBattle_Creature_Current.BattleCmd_Rating]                                 ; $67D3: $FA $05 $D1
    res 7, a                                      ; $67D6: $CB $BF
    cp $05                                        ; $67D8: $FE $05
    jr c, jr_002_67E1                             ; $67DA: $38 $05

    ld a, $FF                                     ; $67DC: $3E $FF
    ld [wBattle_Creature_Current.Other], a                                 ; $67DE: $EA $FF $D0

jr_002_67E1:
    xor a                                         ; $67E1: $AF
    ld [wMenu_ReturnValue], a                                 ; $67E2: $EA $A7 $CC
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $67E5: $FA $03 $D1
    ld [$D0CE], a                                 ; $67E8: $EA $CE $D0
    Do_CallForeign Battle_Helpers_ChooseBattleCmd
    ld a, [$D0CE]                                 ; $67F3: $FA $CE $D0
    cp $0A                                        ; $67F6: $FE $0A
    jr c, jr_002_6819                             ; $67F8: $38 $1F

    ld a, [$D0D9]                                 ; $67FA: $FA $D9 $D0
    and a                                         ; $67FD: $A7
    jr z, jr_002_6805                             ; $67FE: $28 $05

    call Call_002_72FD                            ; $6800: $CD $FD $72
    jr jr_002_6826                                ; $6803: $18 $21

jr_002_6805:
    ld hl, wBattle_CreatureSlots.Enemy0                                  ; $6805: $21 $96 $D0

jr_002_6808:
    ld a, [hl+]                                   ; $6808: $2A
    and a                                         ; $6809: $A7
    jr z, jr_002_6808                             ; $680A: $28 $FC

    dec hl                                        ; $680C: $2B
    ld bc, wBattle_CreatureSlots                                  ; $680D: $01 $91 $D0
    TwosComp bc
    add hl, bc                                    ; $6817: $09
    ld a, l                                       ; $6818: $7D

jr_002_6819:
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $6819: $EA $03 $D1
    jr jr_002_6826                                ; $681C: $18 $08

jr_002_681E:
    ld a, h                                       ; $681E: $7C
    ld [wBattle_Creature_Current.CurEnergy], a                                 ; $681F: $EA $E0 $D0
    ld a, l                                       ; $6822: $7D
    ld [wBattle_Creature_Current.CurEnergy + 1], a                                 ; $6823: $EA $E1 $D0

jr_002_6826:
    FGet16 hl, $D079                                  ; $6826: $21 $79 $D0
    ld bc, $D0D9                                  ; $682C: $01 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $682F: $CD $DC $5B
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $6832: $FA $03 $D1
    cp $14                                        ; $6835: $FE $14
    jr nc, jr_002_6842                            ; $6837: $30 $09

    xor a                                         ; $6839: $AF
    ld [$D01A], a                                 ; $683A: $EA $1A $D0
    call Call_002_5CDD                            ; $683D: $CD $DD $5C
    jr jr_002_689A                                ; $6840: $18 $58

jr_002_6842:
    xor a                                         ; $6842: $AF
    ld [$D019], a                                 ; $6843: $EA $19 $D0
    ld a, $01                                     ; $6846: $3E $01
    ld [$D01A], a                                 ; $6848: $EA $1A $D0
    ld a, [$D0B6]                                 ; $684B: $FA $B6 $D0
    and a                                         ; $684E: $A7
    jr z, jr_002_6892                             ; $684F: $28 $41

    cp $09                                        ; $6851: $FE $09
    jr z, jr_002_6892                             ; $6853: $28 $3D

    Do_CallForeign Call_005_5657
    ld a, $49                                     ; $685D: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $685F: $EA $3D $C9
    ld a, $C9                                     ; $6862: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $6864: $EA $3E $C9
    ld hl, $C71B                                  ; $6867: $21 $1B $C7
    ld a, $4C                                     ; $686A: $3E $4C
    ld [hl+], a                                   ; $686C: $22
    ld a, $1A                                     ; $686D: $3E $1A
    ld [hl+], a                                   ; $686F: $22
    ld a, $4B                                     ; $6870: $3E $4B
    ld [hl+], a                                   ; $6872: $22
    ld a, $66                                     ; $6873: $3E $66
    ld [hl+], a                                   ; $6875: $22
    ld a, $0A                                     ; $6876: $3E $0A
    ld [hl+], a                                   ; $6878: $22
    ld a, [$D0B6]                                 ; $6879: $FA $B6 $D0
    ld d, $41                                     ; $687C: $16 $41
    ld bc, $6EC2                                  ; $687E: $01 $C2 $6E
    call Battle00_Actor_SetScript                                    ; $6881: $CD $F0 $38
    Do_CallForeign UNK_AwaitTextEnd
    ld a, [$D0B6]                                 ; $688C: $FA $B6 $D0
    call Battle00_Actor_DisableScript                                    ; $688F: $CD $C7 $38

jr_002_6892:
    Do_CallForeign Call_005_407C

jr_002_689A:
    FGet16 bc, $D079                                  ; $689A: $21 $79 $D0                                       ; $689F: $4F
    ld hl, $D0D9                                  ; $68A0: $21 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $68A3: $CD $DC $5B
    ld a, [$D0C5]                                 ; $68A6: $FA $C5 $D0
    and a                                         ; $68A9: $A7
    jr z, jr_002_68E8                             ; $68AA: $28 $3C

    ld a, [$D0C6]                                 ; $68AC: $FA $C6 $D0
    ld l, a                                       ; $68AF: $6F
    ld a, [$D073]                                 ; $68B0: $FA $73 $D0
    ld b, a                                       ; $68B3: $47
    call Math_ScaleNumber8                                    ; $68B4: $CD $14 $05
    ld c, a                                       ; $68B7: $4F
    ld b, $00                                     ; $68B8: $06 $00
    ld a, [wBattle_Creature_Current.CurEnergy]                                 ; $68BA: $FA $E0 $D0
    ld h, a                                       ; $68BD: $67
    ld a, [wBattle_Creature_Current.CurEnergy + 1]                                 ; $68BE: $FA $E1 $D0
    ld l, a                                       ; $68C1: $6F
    add hl, bc                                    ; $68C2: $09
    push hl                                       ; $68C3: $E5
    ld a, [wBattle_Creature_Current.MaxEnergy]                                 ; $68C4: $FA $E2 $D0
    ld b, a                                       ; $68C7: $47
    ld a, [wBattle_Creature_Current.MaxEnergy + 1]                                 ; $68C8: $FA $E3 $D0
    ld c, a                                       ; $68CB: $4F
    TwosComp bc
    add hl, bc                                    ; $68D3: $09
    pop hl                                        ; $68D4: $E1
    jr nc, jr_002_68E0                            ; $68D5: $30 $09

    TwosComp bc
    ld h, b                                       ; $68DE: $60
    ld l, c                                       ; $68DF: $69

jr_002_68E0:
    ld a, h                                       ; $68E0: $7C
    ld [wBattle_Creature_Current.CurEnergy], a                                 ; $68E1: $EA $E0 $D0
    ld a, l                                       ; $68E4: $7D
    ld [wBattle_Creature_Current.CurEnergy + 1], a                                 ; $68E5: $EA $E1 $D0

Jump_002_68E8:
jr_002_68E8:
    ld a, [$D017]                                 ; $68E8: $FA $17 $D0
    cp $00                                        ; $68EB: $FE $00
    jr z, jr_002_68F6                             ; $68ED: $28 $07

    cp $01                                        ; $68EF: $FE $01
    jr z, jr_002_68F6                             ; $68F1: $28 $03

    call Battle_Flow_StatusAilments                            ; $68F3: $CD $7D $6C

jr_002_68F6:
    FGet16 hl, $D079                                  ; $68F6: $21 $79 $D0
    ld bc, $D0D9                                  ; $68FC: $01 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $68FF: $CD $DC $5B
    ld a, [$D0B7]                                 ; $6902: $FA $B7 $D0
    and a                                         ; $6905: $A7
    jp z, Jump_002_69CD                           ; $6906: $CA $CD $69

    ld a, [$D0B6]                                 ; $6909: $FA $B6 $D0
    and a                                         ; $690C: $A7
    jr nz, jr_002_691C                            ; $690D: $20 $0D

    call Call_002_657B                            ; $690F: $CD $7B $65
    and a                                         ; $6912: $A7
    jp nz, Jump_002_69CD                          ; $6913: $C2 $CD $69

    Set8 wBattle_ExitCode, BATTLE_EXITCODE_LOSE
    ret                                           ; $691B: $C9


jr_002_691C:
    cp $09                                        ; $691C: $FE $09
    jr nz, jr_002_692D                            ; $691E: $20 $0D

    call Call_002_6FB2                            ; $6920: $CD $B2 $6F
    and a                                         ; $6923: $A7
    jp nz, Jump_002_69CD                          ; $6924: $C2 $CD $69

    Set8 wBattle_ExitCode, BATTLE_EXITCODE_WIN
    ret                                           ; $692C: $C9


jr_002_692D:
    ld a, [$D0B6]                                 ; $692D: $FA $B6 $D0
    ld c, a                                       ; $6930: $4F
    ld b, $00                                     ; $6931: $06 $00
    ld hl, wBattle_CreatureSlots                                  ; $6933: $21 $91 $D0
    add hl, bc                                    ; $6936: $09
    xor a                                         ; $6937: $AF
    ld [hl], a                                    ; $6938: $77
    ld hl, $D0A5                                  ; $6939: $21 $A5 $D0
    add hl, bc                                    ; $693C: $09
    ld a, $01                                     ; $693D: $3E $01
    ld [hl], a                                    ; $693F: $77
    ld a, [$D0B6]                                 ; $6940: $FA $B6 $D0
    cp $05                                        ; $6943: $FE $05
    jr nc, jr_002_6966                            ; $6945: $30 $1F

    dec a                                         ; $6947: $3D
    ld c, a                                       ; $6948: $4F
    ld b, $00                                     ; $6949: $06 $00
    ld hl, $D376                                  ; $694B: $21 $76 $D3
    add hl, bc                                    ; $694E: $09
    ld c, [hl]                                    ; $694F: $4E
    ld hl, wBattle_UsedRings                                  ; $6950: $21 $7A $D3
    add hl, bc                                    ; $6953: $09
    ld a, $01                                     ; $6954: $3E $01
    ld [hl], a                                    ; $6956: $77
    ld a, [$D0B6]                                 ; $6957: $FA $B6 $D0
    dec a                                         ; $695A: $3D
    add a                                         ; $695B: $87
    ld c, a                                       ; $695C: $4F
    ld b, $00                                     ; $695D: $06 $00
    ld hl, $D36E                                  ; $695F: $21 $6E $D3
    add hl, bc                                    ; $6962: $09
    xor a                                         ; $6963: $AF
    ld [hl+], a                                   ; $6964: $22
    ld [hl], a                                    ; $6965: $77

jr_002_6966:
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $696E: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $6970: $EA $3D $C9
    ld a, $C9                                     ; $6973: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $6975: $EA $3E $C9
    ld a, [$D0B7]                                 ; $6978: $FA $B7 $D0
    cp $01                                        ; $697B: $FE $01
    jr nz, jr_002_6991                            ; $697D: $20 $12

    ld hl, $C71B                                  ; $697F: $21 $1B $C7
    ld a, $4C                                     ; $6982: $3E $4C
    ld [hl+], a                                   ; $6984: $22
    ld a, $4B                                     ; $6985: $3E $4B
    ld [hl+], a                                   ; $6987: $22
    ld a, $43                                     ; $6988: $3E $43
    ld [hl+], a                                   ; $698A: $22
    ld a, $66                                     ; $698B: $3E $66
    ld [hl+], a                                   ; $698D: $22
    ld a, $0A                                     ; $698E: $3E $0A
    ld [hl+], a                                   ; $6990: $22

jr_002_6991:
    Do_CallForeign UNK_AwaitTextEnd
    ld a, [$D0B6]                                 ; $6999: $FA $B6 $D0
    call Battle00_Actor_DisableScript                                    ; $699C: $CD $C7 $38
    xor a                                         ; $699F: $AF
    ld [wBattle_AnimDone], a                                 ; $69A0: $EA $22 $C7
    ld a, [$D0B6]                                 ; $69A3: $FA $B6 $D0
    ld d, $41                                     ; $69A6: $16 $41
    ld bc, $6F5E                                  ; $69A8: $01 $5E $6F
    call Battle00_Actor_SetScript                                    ; $69AB: $CD $F0 $38
    ld a, [$D0B6]                                 ; $69AE: $FA $B6 $D0
    dec a                                         ; $69B1: $3D
    ld b, a                                       ; $69B2: $47
    ld a, $F0                                     ; $69B3: $3E $F0
    ld [$C9D8], a                                 ; $69B5: $EA $D8 $C9
    ld a, b                                       ; $69B8: $78
    ld [$C9D9], a                                 ; $69B9: $EA $D9 $C9
    Do_CallForeign Cardscene_SpawnCreature

jr_002_69C4:
    call System_UpdateGame                                    ; $69C4: $CD $BB $08
    ld a, [wBattle_AnimDone]                                 ; $69C7: $FA $22 $C7
    and a                                         ; $69CA: $A7
    jr z, jr_002_69C4                             ; $69CB: $28 $F7

Jump_002_69CD:
    FGet16 hl, wBattle_TurnsElapsed                                  ; $69CD: $21 $6D $D0
    ld a, h                                       ; $69D3: $7C
    or l                                          ; $69D4: $B5
    jr z, jr_002_69DF                             ; $69D5: $28 $08

    ld a, $01                                     ; $69D7: $3E $01
    cp l                                          ; $69D9: $BD
    jr z, jr_002_69DF                             ; $69DA: $28 $03

    call Call_002_62C1                            ; $69DC: $CD $C1 $62

jr_002_69DF:
    ld a, [wBattle_ExitCode]                                 ; $69DF: $FA $16 $D0
    and a                                         ; $69E2: $A7
    ret nz                                        ; $69E3: $C0

    ld hl, $D017                                  ; $69E4: $21 $17 $D0
    inc [hl]                                      ; $69E7: $34
    ld a, $09                                     ; $69E8: $3E $09
    cp [hl]                                       ; $69EA: $BE
    jp nc, Jump_002_66ED                          ; $69EB: $D2 $ED $66

    Do_CallForeign Call_005_5A45
    FGet16 de, wBattle_TurnsElapsed                                  ; $69F6: $21 $6D $D0                                       ; $69FB: $5F
    inc de                                        ; $69FC: $13
    ld a, d                                       ; $69FD: $7A
    ld [hl-], a                                   ; $69FE: $32
    ld [hl], e                                    ; $69FF: $73
    ret                                           ; $6A00: $C9


Call_002_6A01:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, $04                                     ; $6A08: $3E $04
    set 7, a                                      ; $6A0A: $CB $FF
    ld [wBattle_CurCreature_Slot], a                                 ; $6A0C: $EA $B1 $D0
    ld de, $D25A                                  ; $6A0F: $11 $5A $D2
    FSet16 $D079, de                                    ; $6A17: $72
    ld hl, wBattle_CreatureSlots.Enemy0                                  ; $6A18: $21 $96 $D0
    ld b, $04                                     ; $6A1B: $06 $04

Jump_002_6A1D:
    ld a, [wBattle_CurCreature_Slot]                                 ; $6A1D: $FA $B1 $D0
    inc a                                         ; $6A20: $3C
    ld [wBattle_CurCreature_Slot], a                                 ; $6A21: $EA $B1 $D0
    res 7, a                                      ; $6A24: $CB $BF
    ld a, [hl+]                                   ; $6A26: $2A
    cp $00                                        ; $6A27: $FE $00
    push hl                                       ; $6A29: $E5
    push bc                                       ; $6A2A: $C5
    jp z, Jump_002_6AD0                           ; $6A2B: $CA $D0 $6A

    FGet16 bc, $D079                                  ; $6A2E: $21 $79 $D0                                       ; $6A33: $4F
    ld hl, $D0D9                                  ; $6A34: $21 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $6A37: $CD $DC $5B
    xor a                                         ; $6A3A: $AF
    ld [wBattle_Creature_Current.Other], a                                 ; $6A3B: $EA $FF $D0
    ld a, [wBattle_Creature_Current.StatusActive]                                 ; $6A3E: $FA $EE $D0
    and $40                                       ; $6A41: $E6 $40
    jr z, jr_002_6AAF                             ; $6A43: $28 $6A

    xor a                                         ; $6A45: $AF
    ld [wMenu_ReturnValue], a                                 ; $6A46: $EA $A7 $CC
    Do_CallForeign Battle_Helpers_ChooseBattleCmd

jr_002_6A51:
    call Math_Rand8Inc                                    ; $6A51: $CD $4F $05
    ld c, a                                       ; $6A54: $4F
    ld b, $0A                                     ; $6A55: $06 $0A
    call Math_Div8                                   ; $6A57: $CD $AC $04
    ld h, $00                                     ; $6A5A: $26 $00
    ld bc, wBattle_CreatureSlots                                  ; $6A5C: $01 $91 $D0
    push hl                                       ; $6A5F: $E5
    add hl, bc                                    ; $6A60: $09
    ld a, [hl]                                    ; $6A61: $7E
    and a                                         ; $6A62: $A7
    pop hl                                        ; $6A63: $E1
    jr z, jr_002_6A51                             ; $6A64: $28 $EB

    ld a, l                                       ; $6A66: $7D
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $6A67: $EA $03 $D1
    ld a, [wBattle_CurCreature_Slot]                                 ; $6A6A: $FA $B1 $D0
    res 7, a                                      ; $6A6D: $CB $BF
    ld a, a                                       ; $6A6F: $7F
    ld d, $41                                     ; $6A70: $16 $41
    ld bc, $6ECC                                  ; $6A72: $01 $CC $6E
    call Battle00_Actor_SetScript                                    ; $6A75: $CD $F0 $38
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $6A80: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $6A82: $EA $3D $C9
    ld a, $C9                                     ; $6A85: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $6A87: $EA $3E $C9
    ld hl, $C71B                                  ; $6A8A: $21 $1B $C7
    ld a, $4C                                     ; $6A8D: $3E $4C
    ld [hl+], a                                   ; $6A8F: $22
    ld a, $D3                                     ; $6A90: $3E $D3
    ld [hl+], a                                   ; $6A92: $22
    ld a, $41                                     ; $6A93: $3E $41
    ld [hl+], a                                   ; $6A95: $22
    ld a, $66                                     ; $6A96: $3E $66
    ld [hl+], a                                   ; $6A98: $22
    ld a, $0A                                     ; $6A99: $3E $0A
    ld [hl+], a                                   ; $6A9B: $22
    Do_CallForeign UNK_AwaitTextEnd
    ld a, [wBattle_CurCreature_Slot]                                 ; $6AA4: $FA $B1 $D0
    res 7, a                                      ; $6AA7: $CB $BF
    ld a, a                                       ; $6AA9: $7F
    call Battle00_Actor_DisableScript                                    ; $6AAA: $CD $C7 $38
    jr jr_002_6AC4                                ; $6AAD: $18 $15

jr_002_6AAF:
    ld a, [$D0F0]                                 ; $6AAF: $FA $F0 $D0
    ld c, a                                       ; $6AB2: $4F
    ld b, $00                                     ; $6AB3: $06 $00
    ld hl, $6FD7                                  ; $6AB5: $21 $D7 $6F
    add hl, bc                                    ; $6AB8: $09
    add hl, bc                                    ; $6AB9: $09
    ECallHL                                    ; $6ABD: $CD $89 $07
    xor a                                         ; $6AC0: $AF
    ld [wBattle_Creature_Current.Other], a                                 ; $6AC1: $EA $FF $D0

jr_002_6AC4:
    ld bc, $D0D9                                  ; $6AC4: $01 $D9 $D0
    FGet16 hl, $D079                                  ; $6AC7: $21 $79 $D0
    call Battle_Init_CreatureCopy                            ; $6ACD: $CD $DC $5B

Jump_002_6AD0:
    pop bc                                        ; $6AD0: $C1
    dec b                                         ; $6AD1: $05
    jr nz, jr_002_6AD6                            ; $6AD2: $20 $02

    pop hl                                        ; $6AD4: $E1
    ret                                           ; $6AD5: $C9


jr_002_6AD6:
    FGet16 hl, $D079                                  ; $6AD6: $21 $79 $D0
    ld de, $0037                                  ; $6ADC: $11 $37 $00
    add hl, de                                    ; $6ADF: $19
    ld a, h                                       ; $6AE0: $7C
    ld [$D07A], a                                 ; $6AE1: $EA $7A $D0
    ld a, l                                       ; $6AE4: $7D
    ld [$D079], a                                 ; $6AE5: $EA $79 $D0
    pop hl                                        ; $6AE8: $E1
    jp Jump_002_6A1D                              ; $6AE9: $C3 $1D $6A


    ret                                           ; $6AEC: $C9

    ; $6AED
Battle_Flow_ProcessHero:
    ; BTL_PROCESS_HERO
    Battle_TextboxClose
    Battle_TextboxOpen

    ; Processing .Hero
    xor a
    ld [wBattle_CurCreature_Slot], a

    ; Load the Hero
    SwitchRAMBank BANK("WRAM BATTLE")
    ld bc, wBattle_Creature_Hero
    ld hl, wBattle_Creature_Current
    call Battle_Init_CreatureCopy

    ; Clear out the hero's statuses and relics, just in case
    SwitchRAMBank BANK("WRAM BATTLE")
    xor a
    ld [wBattle_Creature_Current.StatusActive], a
    ld hl, wBattle_Creature_Current.Relic0
    ld [hl+], a
    ld [hl], a

    ; Todo
    ld a, [wBattle_Creature_Current.BattleCmd_Target]
    call Battle00_Actor_DisableScript

    ; Choose an option for Tony
    Battle_Set_MagiAnim CreatureID_Tony, BATTLE_MAGIANIM_CHOOSE, BATTLE_ACTOR_TONY
    call Battle_Flow_ControlCreature

    ; If Summon was chosen, show the Summon animation, or else show the Idle animation
    Battle_Set_MagiAnim CreatureID_Tony, BATTLE_MAGIANIM_IDLE, BATTLE_ACTOR_TONY
    FGet16 hl, wBattle_Creature_Current.BattleCmd_Function
    ld bc, BattleCmd_5272 ; Summon TODO
    TwosComp bc
    add hl, bc
    ld a, h
    or l
    jr nz, .NotSummon
    .Summon:
        Battle_Set_MagiAnim CreatureID_Tony, BATTLE_MAGIANIM_SUMMON, BATTLE_ACTOR_TONY
    .NotSummon:

    ; Store the hero
    ld bc, wBattle_Creature_Current
    ld hl, wBattle_Creature_Hero
    call Battle_Init_CreatureCopy
    ret


Call_002_6BBA:
    ld a, $09                                     ; $6BBA: $3E $09
    ld [wBattle_CurCreature_Slot], a                                 ; $6BBC: $EA $B1 $D0
    ld bc, $D336                                  ; $6BBF: $01 $36 $D3
    ld hl, $D0D9                                  ; $6BC2: $21 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $6BC5: $CD $DC $5B
    ld a, [$D0F0]                                 ; $6BC8: $FA $F0 $D0
    add a                                         ; $6BCB: $87
    ld c, a                                       ; $6BCC: $4F
    ld b, $00                                     ; $6BCD: $06 $00
    ld hl, $6FD7                                  ; $6BCF: $21 $D7 $6F
    add hl, bc                                    ; $6BD2: $09
    ECallHL                                    ; $6BD6: $CD $89 $07
    xor a                                         ; $6BD9: $AF
    ld [wBattle_Creature_Current.Other], a                                 ; $6BDA: $EA $FF $D0
    ld hl, $D336                                  ; $6BDD: $21 $36 $D3
    ld bc, $D0D9                                  ; $6BE0: $01 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $6BE3: $CD $DC $5B
    ret                                           ; $6BE6: $C9

    ; $6BE7
Battle_Flow_SortCmdOrder:
    ; Determine the order of commands
    ; Hero is first, Enemy magi is second, then we sort the creatures

    SwitchRAMBank BANK("WRAM BATTLE")
    ; Loop through the 8 creatures
    ld c, -1 ; Loop 0 to 7
    .CalculateSpeedLoop:
        inc c

        ; Check if the slot is empty or not
        ld hl, wBattle_CreatureSlots.Ally0
        ld b, $00
        add hl, bc
        xor a
        cp [hl]
        jr z, .EmptySlot
        .NotEmptySlot:
            ; Get the Speed stat of the current creature
            ld b, BATTLE_CREATURE_SIZE
            call Math_Mult
            ld de, BATTLE_CREATURE_SPEED
            add hl, de
            ld de, wBattle_Creature_Ally0
            add hl, de
            Set8 wBattle_Sort_CurSpeed, [hl]

            ; Get the Luck stat of the current creature
            ld de, (BATTLE_CREATURE_LUCK - BATTLE_CREATURE_SPEED)
            add hl, de
            ld b, [hl]

            ; Apply a Luck effect of +- 10
            ld a, 10
            push bc
            call Battle_Cmd_Formula_Luck
            pop bc
            ld hl, wBattle_Sort_CurSpeed
            add [hl]
            IF FIX_BUGS == 0
                jr nc, .SkipZero
                .SetToZero:
                    ; Huge bug!!! This is supposed to set the speed to 0 if the speed is negative
                    ; However, it instead sets the speed to zero if the Luck modifier is negative and
                    ; Speed + LuckModifier >= 0
                    ; This means that having positive Luck (>=30) significantly increases your chance of going last
                    xor a
                .SkipZero:
            ELSE
                ; Just make all the numbers positive for comparison purposes
                ; TODO - make sure this works?
                add $80
            ENDC
            ; Store the calculated speed value
            ld hl, wBattle_Sort_SpeedSlots
            ld b, $00
            add hl, bc
            ld [hl], a
            ; Store the index of the creature (+1, so 1-8)
            ld hl, wBattle_Sort_IndexSlots
            add hl, bc
            ld [hl], c
            inc [hl]
            jr .CheckEndLoop
        .EmptySlot:
            ; Set 0 speed and index $FF (i.e. no creature)
            ; a = 0
            ld hl, wBattle_Sort_SpeedSlots
            ld b, $00
            add hl, bc
            ld [hl], a

            ld hl, wBattle_Sort_IndexSlots
            add hl, bc
            dec a
            ld [hl], a
            ;jr .CheckEndLoop
        .CheckEndLoop:
        ld a, $07
        cp c
        jr nz, .CalculateSpeedLoop

    ; Alright, let's sort the values by speed using Bubble Sort
    ; We check all 7 adjacent pairs (index 0-7) for swapping, in decrementing order
    ; This guarantees that the fastest will be first
    ; Then we check 6 adjacent pairs (index 1-7) for swapping, placing the second-fastest first
    ; Then we check 5 adjacent pairs (index 2-7), then 4 pairs (3-7), then 3, 2, 1
    ; Minor bug? feature? -> Note that creatures with equal speed will get swapped back and forth
    ld e, $07
    xor a
    ld [wBattle_TempCounter], a
    .SortLoop:
        ; First, navigate to our current target slot
        ; hl = wBattle_Sort_SpeedSlots + e
        ; bc = wBattle_Sort_IndexSlots + e
        ld d, $00
        ld hl, wBattle_Sort_SpeedSlots
        ld bc, wBattle_Sort_IndexSlots
        add hl, de
        ld a, e
        add c
        ld c, a

        ; Compare [wBattle_Sort_SpeedSlots] with [wBattle_Sort_SpeedSlots - 1]
        ld a, [hl]
        dec hl
        dec bc
        cp [hl]
        jr c, .Continue
        .Swap:
            ; [wBattle_Sort_SpeedSlots] >= [wBattle_Sort_SpeedSlots - 1]
            ; Swap wBattle_Sort_SpeedSlots
            ld d, a
            ld a, [hl+]
            ld [hl-], a
            ld [hl], d
            ; Swap wBattle_Sort_IndexSlots
            ld a, [bc]
            inc bc
            ld d, a
            ld a, [bc]
            ld [wBattle_Sort_TempSwapIndex], a
            ld a, d
            ld [bc], a
            dec bc
            ld a, [wBattle_Sort_TempSwapIndex]
            ld [bc], a

        .Continue:
        ; We want to loop over index X-7 to find the (X+1)th-fastest creature
        dec e
        ld a, [wBattle_TempCounter]
        cp e
        jr nz, .SortLoop

        ; If we found the X=6 -> 7th-fastest creature, then we're done sorting
        cp $06
        ret z

        ; Otherwise, increment X and restart from index 7
        inc a
        ld [wBattle_TempCounter], a
        ld e, $07
        jr .SortLoop
        ret

    ; $6C7D
Battle_Flow_StatusAilments::

    ; todo
    ld a, [$D0B7]
    and a
    ret nz

    .CheckPlague:
    ld a, [wBattle_Creature_Current.StatusActive]
    and Status_PLAGUE
    jr z, .CheckErupt
        .Plague:
            Do_Battle_SetActorScript [$D0B6], SCRIPT_Battle_Actor_Plague

            ; Deal 10 damage
            ; Bug - doesn't check upper energy byte
            ld a, [wBattle_Creature_Current.CurEnergy + 1]
            sub 10
            jr c, .PlagueDead ; Check if dead
            jr z, .PlagueDead
            ld [wBattle_Creature_Current.CurEnergy + 1], a


            Do_CallForeign Call_005_5575
            Set16_M wText_StringFormatFrame, wText_StringBuffer
            ld hl, $C71B
            ld a, $4C
            ld [hl+], a
            ld a, $42
            ld [hl+], a
            ld a, $48
            ld [hl+], a
            ld a, $66
            ld [hl+], a
            ld a, $0A
            ld [hl+], a
            Do_CallForeign UNK_AwaitTextEnd
            ld a, [$D0B6]
            call Battle00_Actor_DisableScript
            jr .CheckErupt

            .PlagueDead:
                xor a
                ld hl, wBattle_Creature_Current.CurEnergy
                ld [hl+], a
                ld [hl+], a
                ld a, $02
                ld [$D0B7], a
                ld hl, $C71B
                ld a, $4C
                ld [hl+], a
                ld a, $60
                ld [hl+], a
                ld a, $48
                ld [hl+], a
                ld a, $66
                ld [hl+], a
                ld a, $0A
                ld [hl+], a
                ret


.CheckErupt:
    ld a, [wBattle_Creature_Current.StatusActive]
    and Status_ERUPT
    jp z, Jump_002_6DC7

    ld a, [$D0B6]
    ld d, $41
    ld bc, $6EF5
    call Battle00_Actor_SetScript
    ld a, [$D0DA]
    ld b, a
    and $F0
    swap a
    and a
    jr nz, jr_002_6D12

    ld a, $0F

jr_002_6D12:
    dec a
    jr z, jr_002_6D53

    swap a
    ld c, a
    ld a, b
    and $0F
    add c
    ld [$D0DA], a
    Do_CallForeign Call_005_5575
    ld a, $49
    ld [wText_StringFormatFrame], a
    ld a, $C9
    ld [wText_StringFormatFrame+1], a
    ld hl, $C71B
    ld a, $4C
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $43
    ld [hl+], a
    ld a, $66
    ld [hl+], a
    ld a, $0A
    ld [hl+], a
    Do_CallForeign UNK_AwaitTextEnd
    ld a, [$D0B6]
    call Battle00_Actor_DisableScript
    jr jr_002_6DC7

jr_002_6D53:
    ld a, [wBattle_Creature_Current.CurEnergy]
    ld h, a
    ld a, [wBattle_Creature_Current.CurEnergy + 1]
    ld l, a
    push hl
    xor a
    ld hl, wBattle_Creature_Current.CurEnergy
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld a, $03
    call Math_Div16
    inc a
    ld c, a
    ld b, $00
    TwosComp bc
    FSet16 $D0C3, bc
    ld a, [$D0D9]
    sla a
    sla a
    inc a
    ld hl, $D14E
    ld bc, $0037

jr_002_6D87:
    add hl, bc
    dec a
    jr nz, jr_002_6D87

    ld d, $04

jr_002_6D8D:
    ld a, [$D0C4]
    ld b, a
    ld a, [$D0C3]
    ld c, a
    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    add hl, bc
    jr c, jr_002_6D9F

    ld hl, $0001

jr_002_6D9F:
    ld b, h
    ld c, l
    pop hl
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    dec d
    jr z, jr_002_6DAF

    ld bc, $0035
    add hl, bc
    jr jr_002_6D8D

jr_002_6DAF:
    ld a, $02
    ld [$D0B7], a
    ld hl, $C71B
    ld a, $4C
    ld [hl+], a
    ld a, $E7
    ld [hl+], a
    ld a, $42
    ld [hl+], a
    ld a, $66
    ld [hl+], a
    ld a, $0A
    ld [hl+], a
    ret


Jump_002_6DC7:
jr_002_6DC7:
    ld a, [wBattle_Creature_Current.StatusActive]
    and Status_MIRROR
    jr z, jr_002_6DE6

    ld a, [$D0B6]
    ld d, $41
    ld bc, $7035
    call Battle00_Actor_SetScript
    ld hl, $D0D9
    xor a
    call Call_002_6F30
    ld a, [$D0B6]
    call Battle00_Actor_DisableScript

jr_002_6DE6:
    ret

    ; $6DE7
Battle_Flow_StatusCombos:
    ; Apply combo effects based on target creature's statuses
    ; Status_STONE: Half damage unless the attack is elementEarth, then 255 damage (bugged)
    ; Status_HIDDEN + Status_MIRROR: 255 damage (bugged)
    ; Status_HIDDEN: Remove Status_HIDDEN
    ; Status_PLAGUE: If attacked by elementFire and plague is not a permanent status, cure plague
    ; Status_HICCUPS: If attacked by elementWater, cure hiccups
    ; Status_CONFUSED: If attacked by team member, cure confused

    ; 0-4 = Attack, 5+ = Heal or None
    ; Skip combos for non-attacks
    ld a, [wBattle_Creature_Current.BattleCmd_Rating]
    cp BATTLE_RATING_HEAL
    jp nc, .NotAttack
        .StoneComboCheck:
        ld a, [wBattle_Creature_Target.StatusActive]
        and Status_STONE
        jr z, .CheckHiddenMirror
            .Stone:
            ld a, [wBattle_Creature_Current.BattleCmd_Elemental]
            and elementEarth
            jr z, .StoneNotEarth
                .StoneEarth:
                    ; STONE being attacked by EARTH attack
                    ; Deal 255 damage
                    ;       bugged! Tends not to kill the target
                    ;       (?todo - perhaps it sees it as a -1 damage instead)
                    Do_Battle_SetActorScript [wBattle_Creature_Current.BattleCmd_Target], SCRIPT_Battle_Actor_Stone
                    Set8 wBattle_DamageOverrideFlag, $01
                    Set8 wBattle_DamageOverrideMagnitude, 255
                    ret
                .StoneNotEarth:
                    ; STONE being attacked by non-EARTH attack
                    ; Deal half damage (minimum 1 damage)
                    Do_Battle_SetActorScript [wBattle_Creature_Current.BattleCmd_Target], SCRIPT_Battle_Actor_Stone
                    Set8 wBattle_DamageOverrideFlag, $01
                    ld a, [$D073] ;Todo input damage
                    srl a
                    jr nz, .Continue1
                        ; Deal at least 1 damage
                        ld a, $01
                    .Continue1:
                    ld [wBattle_DamageOverrideMagnitude], a
                    ret

        .CheckHiddenMirror:
        ld a, [wBattle_Creature_Target.StatusActive]
        and Status_HIDDEN
        jr z, .CheckPlagueFire
            .Hidden:
            ld a, [wBattle_Creature_Target.StatusActive]
            and Status_MIRROR
            jr z, .HiddenNoMirror
                .HiddenMirror:
                    ; HIDDEN + MIRROR being attacked
                    ; Deal 255 damage
                    ;       bugged! Tends not to kill the target
                    ;       (?todo - perhaps it sees it as a -1 damage instead)
                    Set8 wBattle_DamageOverrideFlag, $01
                    Set8 wBattle_DamageOverrideMagnitude, 255
                    ret
                .HiddenNoMirror:
                    ; HIDDEN being attacked
                    ; Remove the HIDDEN status
                    ld a, [wBattle_Creature_Target.StatusActive]
                    xor Status_HIDDEN
                    ld [wBattle_Creature_Target.StatusActive], a
                    ;jr .CheckPlagueFire

        .CheckPlagueFire:
        ld a, [wBattle_Creature_Target.StatusActive]
        and Status_PLAGUE
        jr z, .CheckHiccupsWater
        ld a, [wBattle_Creature_Current.BattleCmd_Elemental]
        and elementFire
        jr z, .CheckHiccupsWater
        ld a, [wBattle_Creature_Current.StatusPerm]
        and Status_PLAGUE
        jr nz, .CheckHiccupsWater
            .PlagueFire:
                ; PLAGUE being attacked by FIRE attack
                ; where PLAGUE is not a permanent status
                ; Cure Plague
                Do_Battle_SetActorScript [wBattle_Creature_Current.BattleCmd_Target], SCRIPT_Battle_Actor_Plague
                
                ; Format the target creature's name
                Battle_FormatCreatureName [wBattle_Creature_Target.ID]

                Script_Set wScript_Text, SCRIPT_Battle_Text_PlagueCured

                Do_CallForeign UNK_AwaitTextEnd
                ld a, [wBattle_Creature_Current.BattleCmd_Target]
                call Battle00_Actor_DisableScript
                ld a, [wBattle_Creature_Target.StatusActive]
                xor $01
                ld [wBattle_Creature_Target.StatusActive], a
                ;jr .CheckHiccupsWater

        .CheckHiccupsWater:
        ld a, [wBattle_Creature_Target.StatusActive]
        and Status_HICCUPS
        jr z, .CheckConfusedOwnTeam

        ld a, [wBattle_Creature_Current.BattleCmd_Elemental]
        and elementWater
        jr z, .CheckConfusedOwnTeam
            .HiccupsWater:
                ; HICCUPS being attacked by WATER attack
                ; Cure hiccups

                ; Bugged! See the Macro for description. Luckily this does not seem to cause any problems
                ; because the "🔊" char should already be written into the right place in wText_StringBuffer due to previous interactions during the battle
                Battle_FormatCreatureName_Bugged [wBattle_Creature_Target.ID]
                Script_Set wScript_Text, SCRIPT_Battle_Text_HiccupsCured
                Do_CallForeign UNK_AwaitTextEnd
                ; Cure hiccups
                ld a, [wBattle_Creature_Target.StatusActive]
                xor Status_HICCUPS
                ld [wBattle_Creature_Target.StatusActive], a
                ;jr .CheckConfused

        .CheckConfusedOwnTeam:
        ld a, [wBattle_Creature_Target.StatusActive]
        and Status_CONFUSED
        jr z, .CheckNext

        ; Attacked by team member?
        Get8 b, wBattle_Creature_Target.Team
        ld a, [wBattle_Creature_Current.Team]
        and b
        jr z, .CheckNext
            .ConfusedOwnTeam:
                ; CONFUSED being attacked by a team member
                ; Remove CONFUSED
                ld a, [wBattle_Creature_Target.StatusActive]
                xor Status_CONFUSED
                ld [wBattle_Creature_Target.StatusActive], a
                ;jr .CheckNext
        .CheckNext:
        ; Everything has been checked, we are done
        ret
    .NotAttack:
    ; Not an attack (e.g. a heal instead)
    ret


Call_002_6F30:
    and a                                         ; $6F30: $A7
    jr z, jr_002_6F3B                             ; $6F31: $28 $08

    push hl                                       ; $6F33: $E5
    ld bc, $0001                                  ; $6F34: $01 $01 $00
    add hl, bc                                    ; $6F37: $09
    push hl                                       ; $6F38: $E5
    jr jr_002_6F63                                ; $6F39: $18 $28

jr_002_6F3B:
    push hl                                       ; $6F3B: $E5
    ld bc, $0001                                  ; $6F3C: $01 $01 $00
    add hl, bc                                    ; $6F3F: $09
    push hl                                       ; $6F40: $E5
    ld a, [hl]                                    ; $6F41: $7E
    ld b, a                                       ; $6F42: $47
    and $0F                                       ; $6F43: $E6 $0F
    dec a                                         ; $6F45: $3D
    jr z, jr_002_6F63                             ; $6F46: $28 $1B

    ld c, a                                       ; $6F48: $4F
    ld a, b                                       ; $6F49: $78
    and $F0                                       ; $6F4A: $E6 $F0
    add c                                         ; $6F4C: $81
    pop hl                                        ; $6F4D: $E1
    ld [hl], a                                    ; $6F4E: $77
    ld hl, $C71B                                  ; $6F4F: $21 $1B $C7
    ld a, $4C                                     ; $6F52: $3E $4C
    ld [hl+], a                                   ; $6F54: $22
    ld a, $E2                                     ; $6F55: $3E $E2
    ld [hl+], a                                   ; $6F57: $22
    ld a, $47                                     ; $6F58: $3E $47
    ld [hl+], a                                   ; $6F5A: $22
    ld a, $66                                     ; $6F5B: $3E $66
    ld [hl+], a                                   ; $6F5D: $22
    ld a, $0A                                     ; $6F5E: $3E $0A
    ld [hl+], a                                   ; $6F60: $22
    jr jr_002_6F80                                ; $6F61: $18 $1D

jr_002_6F63:
    pop hl                                        ; $6F63: $E1
    ld a, $20                                     ; $6F64: $3E $20
    pop hl                                        ; $6F66: $E1
    push hl                                       ; $6F67: $E5
    ld bc, $0015                                  ; $6F68: $01 $15 $00
    add hl, bc                                    ; $6F6B: $09
    xor [hl]                                      ; $6F6C: $AE
    ld [hl], a                                    ; $6F6D: $77
    ld hl, $C71B                                  ; $6F6E: $21 $1B $C7
    ld a, $4C                                     ; $6F71: $3E $4C
    ld [hl+], a                                   ; $6F73: $22
    ld a, $AF                                     ; $6F74: $3E $AF
    ld [hl+], a                                   ; $6F76: $22
    ld a, $47                                     ; $6F77: $3E $47
    ld [hl+], a                                   ; $6F79: $22
    ld a, $66                                     ; $6F7A: $3E $66
    ld [hl+], a                                   ; $6F7C: $22
    ld a, $0A                                     ; $6F7D: $3E $0A
    ld [hl+], a                                   ; $6F7F: $22

jr_002_6F80:
    pop hl                                        ; $6F80: $E1
    ld bc, $0002                                  ; $6F81: $01 $02 $00
    add hl, bc                                    ; $6F84: $09
    ld a, [hl]                                    ; $6F85: $7E
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $6F86: $EA $8C $CD
    ld bc, wText_StringBuffer                                  ; $6F89: $01 $49 $C9
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $6F91: $70
    Do_CallForeign CreatureName_CopyToDest
    ld a, $FC                                     ; $6F9A: $3E $FC
    ld [$C953], a                                 ; $6F9C: $EA $53 $C9
    ld a, $49                                     ; $6F9F: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $6FA1: $EA $3D $C9
    ld a, $C9                                     ; $6FA4: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $6FA6: $EA $3E $C9
    Do_CallForeign UNK_AwaitTextEnd
    ret                                           ; $6FB1: $C9


Call_002_6FB2:
    ld hl, wBattle_CreatureSlots.Enemy0                                  ; $6FB2: $21 $96 $D0
    xor a                                         ; $6FB5: $AF
    ld d, $04                                     ; $6FB6: $16 $04

jr_002_6FB8:
    or [hl]                                       ; $6FB8: $B6
    inc hl                                        ; $6FB9: $23
    dec d                                         ; $6FBA: $15
    jr nz, jr_002_6FB8                            ; $6FBB: $20 $FB

    and a                                         ; $6FBD: $A7
    ret nz                                        ; $6FBE: $C0

    ld b, a                                       ; $6FBF: $47
    ld a, [wBattle_CreatureSlots.Magi]                                 ; $6FC0: $FA $9A $D0
    and a                                         ; $6FC3: $A7
    ret z                                         ; $6FC4: $C8

    ld hl, $D082                                  ; $6FC5: $21 $82 $D0
    ld d, $04                                     ; $6FC8: $16 $04
    xor a                                         ; $6FCA: $AF

jr_002_6FCB:
    or [hl]                                       ; $6FCB: $B6
    inc hl                                        ; $6FCC: $23
    dec d                                         ; $6FCD: $15
    jr nz, jr_002_6FCB                            ; $6FCE: $20 $FB

    ld hl, $D33D                                  ; $6FD0: $21 $3D $D3
    or [hl]                                       ; $6FD3: $B6
    inc hl                                        ; $6FD4: $23
    or [hl]                                       ; $6FD5: $B6
    ret                                           ; $6FD6: $C9


    db $5E, $72

    ld [c], a                                     ; $6FD9: $E2
    ld [hl], d                                    ; $6FDA: $72

    db $E2, $72

    rst $28                                       ; $6FDD: $EF
    ld [hl], c                                    ; $6FDE: $71


INCLUDE "source/game/battle/battleai/battleai_target.asm"


    xor a                                         ; $71EF: $AF
    ld [wBattle_TempCounter], a                                 ; $71F0: $EA $74 $D0

jr_002_71F3:
    xor a                                         ; $71F3: $AF
    ld hl, wBattle_TempCounter                                  ; $71F4: $21 $74 $D0
    inc [hl]                                      ; $71F7: $34
    jr z, jr_002_721E                             ; $71F8: $28 $24

    call Math_Rand8Inc                                    ; $71FA: $CD $4F $05
    ld c, a                                       ; $71FD: $4F
    ld b, $06                                     ; $71FE: $06 $06
    call Math_Div8                                   ; $7200: $CD $AC $04
    ld a, l                                       ; $7203: $7D
    and a                                         ; $7204: $A7
    jr z, jr_002_721E                             ; $7205: $28 $17

    dec a                                         ; $7207: $3D
    jr z, jr_002_721E                             ; $7208: $28 $14

    push af                                       ; $720A: $F5
    dec a                                         ; $720B: $3D
    ld hl, $D0D9                                  ; $720C: $21 $D9 $D0
    ld bc, $0020                                  ; $720F: $01 $20 $00
    add hl, bc                                    ; $7212: $09
    ld c, a                                       ; $7213: $4F
    ld b, $00                                     ; $7214: $06 $00
    add hl, bc                                    ; $7216: $09
    ld a, [hl]                                    ; $7217: $7E
    cp $FF                                        ; $7218: $FE $FF
    pop bc                                        ; $721A: $C1
    ld a, b                                       ; $721B: $78
    jr nz, jr_002_71F3                            ; $721C: $20 $D5

jr_002_721E:
    ld [wMenu_ReturnValue], a                                 ; $721E: $EA $A7 $CC
    Do_CallForeign Battle_Helpers_ChooseBattleCmd
    Do_CallForeign Battle_Helpers_CheckValidTarget
    ld a, [wBattle_CurCreature_ValidBattleCmd]                                 ; $7231: $FA $AF $D0
    and a                                         ; $7234: $A7
    jr z, jr_002_71F3                             ; $7235: $28 $BC

    call Call_002_7366                            ; $7237: $CD $66 $73
    ld a, [$D0C9]                                 ; $723A: $FA $C9 $D0
    and a                                         ; $723D: $A7
    ret nz                                        ; $723E: $C0

    ld a, [wBattle_Creature_Current.StatusActive]                                 ; $723F: $FA $EE $D0
    and $40                                       ; $7242: $E6 $40
    jr z, jr_002_724F                             ; $7244: $28 $09

    call Math_Rand8Inc                                    ; $7246: $CD $4F $05
    bit 4, a                                      ; $7249: $CB $67
    jr z, jr_002_725A                             ; $724B: $28 $0D

    jr jr_002_7256                                ; $724D: $18 $07

jr_002_724F:
    ld a, [wBattle_Creature_Current.BattleCmd_Rating]                                 ; $724F: $FA $05 $D1
    cp $05                                        ; $7252: $FE $05
    jr nc, jr_002_725A                            ; $7254: $30 $04

jr_002_7256:
    call BattleAI_Target_AllyRand                            ; $7256: $CD $4F $71
    ret                                           ; $7259: $C9


jr_002_725A:
    call BattleAI_Target_EnemyRand                            ; $725A: $CD $91 $71
    ret                                           ; $725D: $C9


    xor a                                         ; $725E: $AF
    ld [wBattle_TempCounter], a                                 ; $725F: $EA $74 $D0

jr_002_7262:
    xor a                                         ; $7262: $AF
    ld hl, wBattle_TempCounter                                  ; $7263: $21 $74 $D0
    inc [hl]                                      ; $7266: $34
    jr z, jr_002_728A                             ; $7267: $28 $21

    call Math_Rand8Inc                                    ; $7269: $CD $4F $05
    ld c, a                                       ; $726C: $4F
    ld b, $05                                     ; $726D: $06 $05
    call Math_Div8                                   ; $726F: $CD $AC $04
    ld a, l                                       ; $7272: $7D
    and a                                         ; $7273: $A7
    jr z, jr_002_728A                             ; $7274: $28 $14

    push af                                       ; $7276: $F5
    dec a                                         ; $7277: $3D
    ld hl, $D0D9                                  ; $7278: $21 $D9 $D0
    ld bc, $0020                                  ; $727B: $01 $20 $00
    add hl, bc                                    ; $727E: $09
    ld c, a                                       ; $727F: $4F
    ld b, $00                                     ; $7280: $06 $00
    add hl, bc                                    ; $7282: $09
    ld a, [hl]                                    ; $7283: $7E
    cp $FF                                        ; $7284: $FE $FF
    pop bc                                        ; $7286: $C1
    ld a, b                                       ; $7287: $78
    jr nz, jr_002_7262                            ; $7288: $20 $D8

jr_002_728A:
    ld [wMenu_ReturnValue], a                                 ; $728A: $EA $A7 $CC
    Do_CallForeign Battle_Helpers_ChooseBattleCmd
    Do_CallForeign Battle_Helpers_CheckValidTarget
    ld a, [wBattle_CurCreature_ValidBattleCmd]                                 ; $729D: $FA $AF $D0
    and a                                         ; $72A0: $A7
    jr z, jr_002_7262                             ; $72A1: $28 $BF

    call Call_002_72FD                            ; $72A3: $CD $FD $72
    ret                                           ; $72A6: $C9


    ld a, [wBattle_CreatureSlots.Enemy0]                                 ; $72A7: $FA $96 $D0
    and a                                         ; $72AA: $A7
    jr z, jr_002_72C0                             ; $72AB: $28 $13

    xor a                                         ; $72AD: $AF
    ld [wMenu_ReturnValue], a                                 ; $72AE: $EA $A7 $CC
    Do_CallForeign Battle_Helpers_ChooseBattleCmd
    ld a, $09                                     ; $72B9: $3E $09
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $72BB: $EA $03 $D1
    jr jr_002_72E1                                ; $72BE: $18 $21

jr_002_72C0:
    ld a, $01                                     ; $72C0: $3E $01
    ld [wMenu_ReturnValue], a                                 ; $72C2: $EA $A7 $CC
    Do_CallForeign Battle_Helpers_ChooseBattleCmd
    ld a, $20                                     ; $72CD: $3E $20
    ld [$D068], a                                 ; $72CF: $EA $68 $D0
    ld a, $01                                     ; $72D2: $3E $01
    ld [$D069], a                                 ; $72D4: $EA $69 $D0
    ld a, $14                                     ; $72D7: $3E $14
    ld [$D06A], a                                 ; $72D9: $EA $6A $D0
    ld a, $05                                     ; $72DC: $3E $05
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $72DE: $EA $03 $D1

jr_002_72E1:
    ret                                           ; $72E1: $C9


    SwitchRAMBank BANK("WRAM BATTLE")
    xor a                                         ; $72E9: $AF
    ld [wMenu_ReturnValue], a                                 ; $72EA: $EA $A7 $CC
    Do_CallForeign Battle_Helpers_ChooseBattleCmd
    ld a, $09                                     ; $72F5: $3E $09
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $72F7: $EA $03 $D1
    jr jr_002_72FC                                ; $72FA: $18 $00

jr_002_72FC:
    ret                                           ; $72FC: $C9


Call_002_72FD:
    call Call_002_7366                            ; $72FD: $CD $66 $73
    ld a, [$D0C9]                                 ; $7300: $FA $C9 $D0
    and a                                         ; $7303: $A7
    ret nz                                        ; $7304: $C0

    ld a, [wBattle_Creature_Current.BattleCmd_Rating]                                 ; $7305: $FA $05 $D1
    res 7, a                                      ; $7308: $CB $BF
    cp $05                                        ; $730A: $FE $05
    jr nc, jr_002_7341                            ; $730C: $30 $33

    call Math_Rand8Inc                                    ; $730E: $CD $4F $05
    bit 0, a                                      ; $7311: $CB $47
    jr z, jr_002_732D                             ; $7313: $28 $18

    ld hl, $D095                                  ; $7315: $21 $95 $D0

jr_002_7318:
    ld a, [hl-]                                   ; $7318: $3A
    and a                                         ; $7319: $A7
    jr z, jr_002_7318                             ; $731A: $28 $FC

    inc hl                                        ; $731C: $23

jr_002_731D:
    ld bc, wBattle_CreatureSlots                                  ; $731D: $01 $91 $D0
    TwosComp bc
    add hl, bc                                    ; $7327: $09
    ld a, l                                       ; $7328: $7D
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $7329: $EA $03 $D1
    ret                                           ; $732C: $C9


jr_002_732D:
    ld hl, wBattle_CreatureSlots.Ally0                                  ; $732D: $21 $92 $D0
    ld d, $04                                     ; $7330: $16 $04

jr_002_7332:
    ld a, [hl+]                                   ; $7332: $2A
    and a                                         ; $7333: $A7
    jr nz, jr_002_733E                            ; $7334: $20 $08

    dec d                                         ; $7336: $15
    jr nz, jr_002_7332                            ; $7337: $20 $F9

    ld hl, $D091                                  ; $7339: $21 $91 $D0
    jr jr_002_731D                                ; $733C: $18 $DF

jr_002_733E:
    dec hl                                        ; $733E: $2B
    jr jr_002_731D                                ; $733F: $18 $DC

jr_002_7341:
    call Math_Rand8Inc                                    ; $7341: $CD $4F $05
    bit 0, a                                      ; $7344: $CB $47
    jr z, jr_002_7352                             ; $7346: $28 $0A

    ld hl, wBattle_CreatureSlots.Enemy0                                  ; $7348: $21 $96 $D0

jr_002_734B:
    ld a, [hl+]                                   ; $734B: $2A
    and a                                         ; $734C: $A7
    jr z, jr_002_734B                             ; $734D: $28 $FC

    dec hl                                        ; $734F: $2B
    jr jr_002_731D                                ; $7350: $18 $CB

jr_002_7352:
    ld hl, $D099                                  ; $7352: $21 $99 $D0
    ld d, $04                                     ; $7355: $16 $04

jr_002_7357:
    ld a, [hl-]                                   ; $7357: $3A
    and a                                         ; $7358: $A7
    jr nz, jr_002_7363                            ; $7359: $20 $08

    dec d                                         ; $735B: $15
    jr nz, jr_002_7357                            ; $735C: $20 $F9

    ld hl, wBattle_CreatureSlots.Magi                                  ; $735E: $21 $9A $D0
    jr jr_002_731D                                ; $7361: $18 $BA

jr_002_7363:
    inc hl                                        ; $7363: $23
    jr jr_002_731D                                ; $7364: $18 $B7

Call_002_7366:
    ld a, $01                                     ; $7366: $3E $01
    ld [$D0C9], a                                 ; $7368: $EA $C9 $D0
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $736B: $FA $03 $D1
    cp $14                                        ; $736E: $FE $14
    ret nc                                        ; $7370: $D0

    cp $0A                                        ; $7371: $FE $0A
    jr nz, jr_002_738F                            ; $7373: $20 $1A

    FGet16 hl, $D079                                  ; $7375: $21 $79 $D0
    ld bc, wBattle_Creature_Hero                                  ; $737B: $01 $47 $D1
    TwosComp bc
    add hl, bc                                    ; $7385: $09
    ld a, $37                                     ; $7386: $3E $37
    call Math_Div16                                    ; $7388: $CD $B9 $04
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $738B: $EA $03 $D1
    ret                                           ; $738E: $C9


jr_002_738F:
    cp $0B                                        ; $738F: $FE $0B
    ret z                                         ; $7391: $C8

    cp $11                                        ; $7392: $FE $11
    jr nz, jr_002_73A7                            ; $7394: $20 $11

    ld a, [$D110]                                 ; $7396: $FA $10 $D1
    and a                                         ; $7399: $A7
    jr z, jr_002_73A1                             ; $739A: $28 $05

    xor a                                         ; $739C: $AF
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $739D: $EA $03 $D1
    ret                                           ; $73A0: $C9


jr_002_73A1:
    ld a, $09                                     ; $73A1: $3E $09
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $73A3: $EA $03 $D1
    ret                                           ; $73A6: $C9


jr_002_73A7:
    xor a                                         ; $73A7: $AF
    ld [$D0C9], a                                 ; $73A8: $EA $C9 $D0
    ret                                           ; $73AB: $C9

ASSERT BattleCore_BANK == BANK(@)

BattleScriptXX_Attack::

    ; Load creature into wBattle_Creature_Current
    call BattleScriptXX_OpenCreatureFromFrame

    ; Get the pointer to the BattleCmd
    ld bc, wBattle_ItemSpellBattleCmdAddress
    ld hl, wBattle_CopyBuffer_Source
    LdHLIBCI
    LdHLIBCI

    ; Copy the BattleCmd into wBattle_Creature_Current 
    ld bc, wBattle_Creature_Current.BattleCmd_Function
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign BattleCmd_GetDataFromAddress

    ; Validate if there is any valid target. Ignore if no valid target
    Do_CallForeign Battle_Helpers_CheckValidTarget
    ld a, [wBattle_CurCreature_ValidBattleCmd]
    and a
    ret z

    ; Choose the target
    call BattleScriptXX_AITarget
    ret


Call_002_73DD::
    call BattleScriptXX_OpenCreatureFromFrame                            ; $73DD: $CD $2B $76
    ld bc, $5EFE                                  ; $73E0: $01 $FE $5E
    FSet16 wBattle_CopyBuffer_Source, bc                                    ; $73E8: $70
    ld bc, wBattle_Creature_Current.BattleCmd_Function                                  ; $73E9: $01 $00 $D1
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $73F1: $70
    Do_CallForeign BattleCmd_GetDataFromAddress
    FGet16 bc, wBattle_ItemSpellBattleCmdAddress                                  ; $73FA: $21 $93 $D3                                       ; $73FF: $4F
    FSet16 wBattle_CopyBuffer_Source, bc                                    ; $7405: $70
    FSet16 $D107, bc                                    ; $740B: $70
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $740C: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $7414: $70
    Do_CallForeign ItemSpell_GetDataFromAddress
    ld hl, wMenu_Battle_TableRowBuffer                                  ; $741D: $21 $91 $CD
    ld bc, $0005                                  ; $7420: $01 $05 $00
    add hl, bc                                    ; $7423: $09
    ld a, [hl]                                    ; $7424: $7E
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $7425: $EA $03 $D1
    ld hl, wMenu_Battle_TableRowBuffer                                  ; $7428: $21 $91 $CD
    ld bc, $0004                                  ; $742B: $01 $04 $00
    add hl, bc                                    ; $742E: $09
    ld a, [hl]                                    ; $742F: $7E
    ld [wBattle_Creature_Current.BattleCmd_Cost], a                                 ; $7430: $EA $02 $D1
    ld a, $09                                     ; $7433: $3E $09
    ld [wBattle_CurCreature_Slot], a                                 ; $7435: $EA $B1 $D0
    Do_CallForeign Battle_Helpers_CheckValidTarget
    ld a, [wBattle_CurCreature_ValidBattleCmd]                                 ; $7440: $FA $AF $D0
    and a                                         ; $7443: $A7
    ret z                                         ; $7444: $C8

    call BattleScriptXX_AITarget                            ; $7445: $CD $07 $76
    ret                                           ; $7448: $C9


    ret                                           ; $7449: $C9


    call BattleScriptXX_OpenCreatureFromFrame                            ; $744A: $CD $2B $76
    ld bc, $5F0E                                  ; $744D: $01 $0E $5F
    FSet16 wBattle_CopyBuffer_Source, bc                                    ; $7455: $70
    ld bc, wBattle_Creature_Current.BattleCmd_Function                                  ; $7456: $01 $00 $D1
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $745E: $70
    Do_CallForeign BattleCmd_GetDataFromAddress
    ld a, [$D392]                                 ; $7467: $FA $92 $D3
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $746A: $EA $03 $D1
    call BattleScriptXX_FindBattleCreatureFromSlot                            ; $746D: $CD $FC $75
    ld bc, $D0D9                                  ; $7470: $01 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $7473: $CD $DC $5B
    ret                                           ; $7476: $C9


    ld hl, $D392                                  ; $7477: $21 $92 $D3
    ld a, [hl+]                                   ; $747A: $2A
    ld [$CD51], a                                 ; $747B: $EA $51 $CD
    ld a, [hl]                                    ; $747E: $7E
    ld [$CD50], a                                 ; $747F: $EA $50 $CD
    Do_CallForeign Call_004_5D19
    ret                                           ; $748A: $C9


Call_002_748B:
    call BattleScriptXX_OpenCreatureFromFrame                            ; $748B: $CD $2B $76
    ld bc, $5ECE                                  ; $748E: $01 $CE $5E
    FSet16 wBattle_CopyBuffer_Source, bc                                    ; $7496: $70
    ld bc, wBattle_Creature_Current.BattleCmd_Function                                  ; $7497: $01 $00 $D1
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $749F: $70
    Do_CallForeign BattleCmd_GetDataFromAddress
    ld a, $09                                     ; $74A8: $3E $09
    set 7, a                                      ; $74AA: $CB $FF
    ld [wBattle_CurCreature_Slot], a                                 ; $74AC: $EA $B1 $D0
    ld a, $0C                                     ; $74AF: $3E $0C
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $74B1: $EA $03 $D1
    ld a, [$D395]                                 ; $74B4: $FA $95 $D3
    ld [wBattle_Creature_Current.BattleCmd_Cost], a                                 ; $74B7: $EA $02 $D1
    Do_CallForeign Battle_Helpers_CheckValidTarget
    ld a, [wBattle_CurCreature_ValidBattleCmd]                                 ; $74C2: $FA $AF $D0
    and a                                         ; $74C5: $A7
    ret z                                         ; $74C6: $C8

    ld bc, $D068                                  ; $74C7: $01 $68 $D0
    ld hl, $D393                                  ; $74CA: $21 $93 $D3
    LdBCIHLI                                        ; $74CF: $03
    LdBCIHLI                                        ; $74D2: $03
    LdBCIHLI                                        ; $74D5: $03
    ld hl, wBattle_CreatureSlots.Enemy0                                  ; $74D6: $21 $96 $D0
    ld bc, $D082                                  ; $74D9: $01 $82 $D0
    ld d, $04                                     ; $74DC: $16 $04

jr_002_74DE:
    ld a, [bc]                                    ; $74DE: $0A
    inc bc                                        ; $74DF: $03
    add [hl]                                      ; $74E0: $86
    ld [hl+], a                                   ; $74E1: $22
    dec d                                         ; $74E2: $15
    jr nz, jr_002_74DE                            ; $74E3: $20 $F9

    ld hl, $D097                                  ; $74E5: $21 $97 $D0
    ld e, $06                                     ; $74E8: $1E $06

jr_002_74EA:
    ld a, [hl+]                                   ; $74EA: $2A
    and a                                         ; $74EB: $A7
    jr z, jr_002_74F8                             ; $74EC: $28 $0A

    inc e                                         ; $74EE: $1C
    ld a, e                                       ; $74EF: $7B
    cp $09                                        ; $74F0: $FE $09
    jr z, jr_002_74F6                             ; $74F2: $28 $02

    jr jr_002_74EA                                ; $74F4: $18 $F4

jr_002_74F6:
    ld e, $05                                     ; $74F6: $1E $05

jr_002_74F8:
    ld a, e                                       ; $74F8: $7B
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $74F9: $EA $03 $D1
    ld hl, wBattle_CreatureSlots.Enemy0                                  ; $74FC: $21 $96 $D0
    ld bc, $D082                                  ; $74FF: $01 $82 $D0
    ld d, $04                                     ; $7502: $16 $04

jr_002_7504:
    ld a, [bc]                                    ; $7504: $0A
    inc bc                                        ; $7505: $03
    ld e, a                                       ; $7506: $5F
    ld a, [hl]                                    ; $7507: $7E
    sub e                                         ; $7508: $93
    ld [hl+], a                                   ; $7509: $22
    dec d                                         ; $750A: $15
    jr nz, jr_002_7504                            ; $750B: $20 $F7

    ld a, [$D392]                                 ; $750D: $FA $92 $D3
    call BattleScriptXX_FindBattleCreatureFromSlot                            ; $7510: $CD $FC $75
    ld bc, $D0D9                                  ; $7513: $01 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $7516: $CD $DC $5B
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $7519: $FA $03 $D1
    ld [$D0C1], a                                 ; $751C: $EA $C1 $D0
    ld a, $01                                     ; $751F: $3E $01
    ld [$D0C0], a                                 ; $7521: $EA $C0 $D0
    Do_CallForeign Call_005_579D
    ret                                           ; $752C: $C9

    ; $752D
Call_002_752D::
    xor a                                         ; $752D: $AF
    ld [wBattle_NotEnoughEnergy], a                                 ; $752E: $EA $D8 $D0
    call Call_002_748B                            ; $7531: $CD $8B $74
    ld a, [wBattle_CurCreature_ValidBattleCmd]                                 ; $7534: $FA $AF $D0
    and a                                         ; $7537: $A7
    jr nz, jr_002_7549                            ; $7538: $20 $0F

    ld a, [wBattle_NotEnoughEnergy]                                 ; $753A: $FA $D8 $D0
    and a                                         ; $753D: $A7
    ret z                                         ; $753E: $C8

    xor a                                         ; $753F: $AF
    ld [wBattle_Creature_Current.CurEnergy], a                                 ; $7540: $EA $E0 $D0
    ld a, $01                                     ; $7543: $3E $01
    ld [wBattle_Creature_Current.CurEnergy + 1], a                                 ; $7545: $EA $E1 $D0
    ret                                           ; $7548: $C9


jr_002_7549:
    Battle_Set_MagiAnim [wBattle_Creature_Magi.ID], BATTLE_MAGIANIM_SUMMON, BATTLE_ACTOR_MAGI
    call Call_002_4653                            ; $7561: $CD $53 $46
    FGet16 hl, $D07B                                  ; $7564: $21 $7B $D0
    ld bc, $D110                                  ; $756A: $01 $10 $D1
    call Battle_Init_CreatureCopy                            ; $756D: $CD $DC $5B
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $7570: $FA $03 $D1
    ld c, a                                       ; $7573: $4F
    ld b, $00                                     ; $7574: $06 $00
    ld hl, $D07D                                  ; $7576: $21 $7D $D0
    add hl, bc                                    ; $7579: $09
    ld a, [$D396]                                 ; $757A: $FA $96 $D3
    inc a                                         ; $757D: $3C
    ld [hl], a                                    ; $757E: $77
    ld bc, $51C2                                  ; $757F: $01 $C2 $51
    FSet16 wBattle_Creature_Current.BattleCmd_Function, bc                                    ; $7587: $70
    ld a, [$D392]                                 ; $7588: $FA $92 $D3
    call BattleScriptXX_FindBattleCreatureFromSlot                            ; $758B: $CD $FC $75
    ld bc, $D0D9                                  ; $758E: $01 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $7591: $CD $DC $5B
    ret                                           ; $7594: $C9


    call BattleScriptXX_OpenCreatureFromFrame                            ; $7595: $CD $2B $76
    ld bc, $5EDE                                  ; $7598: $01 $DE $5E
    FSet16 wBattle_CopyBuffer_Source, bc                                    ; $75A0: $70
    ld bc, wBattle_Creature_Current.BattleCmd_Function                                  ; $75A1: $01 $00 $D1
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $75A9: $70
    Do_CallForeign BattleCmd_GetDataFromAddress
    FGet16 bc, $D393                                  ; $75B2: $21 $93 $D3                                       ; $75B7: $4F
    FSet16 wBattle_CopyBuffer_Source, bc                                    ; $75BD: $70
    FSet16 $D107, bc                                    ; $75C3: $70
    ld bc, wMenu_Battle_TableRowBuffer                                  ; $75C4: $01 $91 $CD
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $75CC: $70
    Do_CallForeign ItemSpell_GetDataFromAddress
    ld hl, wMenu_Battle_TableRowBuffer                                  ; $75D5: $21 $91 $CD
    ld bc, $0005                                  ; $75D8: $01 $05 $00
    add hl, bc                                    ; $75DB: $09
    ld a, [hl]                                    ; $75DC: $7E
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $75DD: $EA $03 $D1
    ld hl, wMenu_Battle_TableRowBuffer                                  ; $75E0: $21 $91 $CD
    ld bc, $0004                                  ; $75E3: $01 $04 $00
    add hl, bc                                    ; $75E6: $09
    ld a, [hl]                                    ; $75E7: $7E
    ld [wBattle_Creature_Current.BattleCmd_Cost], a                                 ; $75E8: $EA $02 $D1
    Do_CallForeign Battle_Helpers_CheckValidTarget
    ld a, [wBattle_CurCreature_ValidBattleCmd]                                 ; $75F3: $FA $AF $D0
    and a                                         ; $75F6: $A7
    ret z                                         ; $75F7: $C8

    call BattleScriptXX_AITarget                            ; $75F8: $CD $07 $76
    ret                                           ; $75FB: $C9


BattleScriptXX_FindBattleCreatureFromSlot:
    ; Based on the Creature Slot ID, locate the memory address of the creature
    ; Input:
    ;   a = wBattle_Buffer_CreatureSlot
    ; Output:
    ;   hl = Pointer to wBattle_Creature_Hero or other similar slot
    ld b, a
    ld c, BATTLE_CREATURE_SIZE
    call Math_Mult
    ld bc, wBattle_Creature_Hero
    add hl, bc
    ret


BattleScriptXX_AITarget:
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $7607: $FA $03 $D1
    cp $14                                        ; $760A: $FE $14
    jr nc, jr_002_761E                            ; $760C: $30 $10

    ld a, [$D395]                                 ; $760E: $FA $95 $D3
    ld c, a                                       ; $7611: $4F
    ld b, $00                                     ; $7612: $06 $00
    ld hl, $6FDF                                  ; $7614: $21 $DF $6F
    add hl, bc                                    ; $7617: $09
    ECallHL                                    ; $761B: $CD $89 $07

jr_002_761E:
    ld a, [wBattle_Buffer_CreatureSlot]                                 ; $761E: $FA $92 $D3
    call BattleScriptXX_FindBattleCreatureFromSlot                            ; $7621: $CD $FC $75
    ld bc, $D0D9                                  ; $7624: $01 $D9 $D0
    call Battle_Init_CreatureCopy                            ; $7627: $CD $DC $5B
    ret                                           ; $762A: $C9


BattleScriptXX_OpenCreatureFromFrame:
    ; Battle00_CopyDataFromFrame stores params into wBattle_Buffer
    ; Read the creature slot from this buffer
    ; Inputs:
    ;   wBattle_Buffer_CreatureSlot
    ; Outputs:
    ;   wBattle_Creature_Current primed
    ;   wBattle_CurCreature_Slot = $FF

    ; Get the pointer to the creature
    ld a, [wBattle_Buffer_CreatureSlot]
    call BattleScriptXX_FindBattleCreatureFromSlot
    ld b, h
    ld c, l

    ; Store in wBattle_Creature_Current
    ld hl, wBattle_Creature_Current
    call Battle_Init_CreatureOpen

    Set8 wBattle_CurCreature_Slot, $FF ; TODO utility?
    ret

INCLUDE "source/game/battle/battle_tony_creature.asm"
