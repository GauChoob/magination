SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ; $4000
Battle_CheckTarget_Table::
    ; A bunch of functions that check to see whether a potential target is valid
    ; These functions return wBattle_CurCreature_ValidBattleCmd,
    ;   where nz = valid and z = invalid
    dw Battle_CheckTarget_AlwaysValid
    dw Battle_CheckTarget_AlwaysValid
    dw Battle_CheckTarget_EmptyCard
    dw Battle_CheckTarget_EmptyCard
    dw Battle_CheckTarget_AnyCreature
    dw Battle_CheckTarget_AllyMagi
    dw Battle_CheckTarget_EnemyMagi
    dw Battle_CheckTarget_EnemyMagi
    dw Battle_CheckTarget_AlwaysValid
    dw Battle_CheckTarget_AlwaysValid
    dw Battle_CheckTarget_AllEnemy
    dw Battle_CheckTarget_AllEnemy
    dw Battle_CheckTarget_AllAlly
    dw Battle_CheckTarget_AlwaysValid
    dw Battle_CheckTarget_AllAlly
    dw Battle_CheckTarget_AlwaysValid
    dw Battle_CheckTarget_AlwaysValid
    dw Battle_CheckTarget_AlwaysValid
    dw Battle_CheckTarget_AlwaysValid
    dw Battle_CheckTarget_AlwaysValid
    dw Battle_CheckTarget_AlwaysValid

    dw Call_005_5A24
    dw Battle_Target_Crash
    dw Call_005_59B0
    dw Call_005_59B0
    dw Call_005_58BD
    dw Call_005_58A6
    dw Call_005_5A03
    dw Call_005_5A03
    dw Call_005_58BD
    dw Call_005_58BD
    dw Call_005_57FE
    dw Call_005_57FE
    dw Call_005_57FE
    dw Call_005_57FE
    dw Call_005_57FE
    dw Call_005_57FE
    dw Call_005_57FE
    dw Call_005_57FE
    dw Call_005_57FE
    dw Call_005_57FE
    dw Battle_Target_Crash

Battle_Menu_Table::
    ; A bunch of functions that point to tables passed by BattleCmd
    dw Battle_Target_Crash ; 0 - no menu
    dw Battle_Menu_Ring ; 1 - Ring
    dw Battle_Menu_Item ; 2 - Item
    dw Battle_Menu_Spell ; 3 - Spell

Call_005_405C::
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $405C: $FA $03 $D1
    ld b, $01                                     ; $405F: $06 $01

jr_005_4061:
    dec a                                         ; $4061: $3D
    jr z, jr_005_4068                             ; $4062: $28 $04

    sla b                                         ; $4064: $CB $20
    jr jr_005_4061                                ; $4066: $18 $F9

jr_005_4068:
    ld hl, $D075                                  ; $4068: $21 $75 $D0
    ld a, b                                       ; $406B: $78
    or [hl]                                       ; $406C: $B6
    ld [hl], a                                    ; $406D: $77
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $406E: $FA $03 $D1
    ld c, a                                       ; $4071: $4F
    ld b, $00                                     ; $4072: $06 $00
    ld hl, $D091                                  ; $4074: $21 $91 $D0
    add hl, bc                                    ; $4077: $09
    ld a, $01                                     ; $4078: $3E $01
    ld [hl], a                                    ; $407A: $77
    ret                                           ; $407B: $C9

Call_005_407C::
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $4083: $FA $03 $D1
    ld [wBattle_TargetMode], a                                 ; $4086: $EA $B0 $D0
    call Call_005_42B9                            ; $4089: $CD $B9 $42
    ld a, [$D019]                                 ; $408C: $FA $19 $D0
    and a                                         ; $408F: $A7
    jr z, jr_005_409E                             ; $4090: $28 $0C

    xor a                                         ; $4092: $AF
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $4093: $EA $03 $D1
    Do_CallForeign Call_002_5CDD

jr_005_409E:
    xor a                                         ; $409E: $AF
    ld [wBattle_TempCounter], a                                 ; $409F: $EA $74 $D0

jr_005_40A2:
    ld hl, wBattle_TempCounter                                  ; $40A2: $21 $74 $D0
    inc [hl]                                      ; $40A5: $34
    ld a, $05                                     ; $40A6: $3E $05
    cp [hl]                                       ; $40A8: $BE
    jr z, jr_005_40C8                             ; $40A9: $28 $1D

    ld a, [hl]                                    ; $40AB: $7E
    ld [$D018], a                                 ; $40AC: $EA $18 $D0
    call Call_005_4159                            ; $40AF: $CD $59 $41
    ld a, [$D019]                                 ; $40B2: $FA $19 $D0
    and a                                         ; $40B5: $A7
    jr z, jr_005_40A2                             ; $40B6: $28 $EA

    ld a, [wBattle_TempCounter]                                 ; $40B8: $FA $74 $D0
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $40BB: $EA $03 $D1
    Do_CallForeign Call_002_5CDD
    jr jr_005_40A2                                ; $40C6: $18 $DA

jr_005_40C8:
    ld a, $04                                     ; $40C8: $3E $04
    ld [wBattle_TempCounter], a                                 ; $40CA: $EA $74 $D0

jr_005_40CD:
    ld hl, wBattle_TempCounter                                  ; $40CD: $21 $74 $D0
    inc [hl]                                      ; $40D0: $34
    ld a, $09                                     ; $40D1: $3E $09
    cp [hl]                                       ; $40D3: $BE
    jr z, jr_005_40F3                             ; $40D4: $28 $1D

    ld a, [hl]                                    ; $40D6: $7E
    ld [$D018], a                                 ; $40D7: $EA $18 $D0
    call Call_005_41E7                            ; $40DA: $CD $E7 $41
    ld a, [$D019]                                 ; $40DD: $FA $19 $D0
    and a                                         ; $40E0: $A7
    jr z, jr_005_40CD                             ; $40E1: $28 $EA

    ld a, [wBattle_TempCounter]                                 ; $40E3: $FA $74 $D0
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $40E6: $EA $03 $D1
    Do_CallForeign Call_002_5CDD
    jr jr_005_40CD                                ; $40F1: $18 $DA

jr_005_40F3:
    call Call_005_4275                            ; $40F3: $CD $75 $42
    ld a, [$D019]                                 ; $40F6: $FA $19 $D0
    and a                                         ; $40F9: $A7
    ret z                                         ; $40FA: $C8

    ld a, $09                                     ; $40FB: $3E $09
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $40FD: $EA $03 $D1
    Do_CallForeign Call_002_5CDD
    ret                                           ; $4108: $C9

    ; $4109
ApplyRelicsCmd1Stats::
    ; todo - rename this function
    ; Applies the stat changes of the relics of the wBattle_Creature_Target
    ; Only does the second relic function handler (todo)
    ; Inputs:
    ;   wBattle_Creature_Target.Relic0, .Relic1 - 2 relic ids
    ; Outputs:
    ;   The second function handlers of the 2 relics are run
    .Relic0:
        ld a, [wBattle_Creature_Target.Relic0]
        and a
        jr z, .Relic1
        Mov8 wBattle_CopyBuffer_ListIndex, wBattle_Creature_Target.Relic0 ; inefficiency - We could have just loaded a directly
        ld bc, wMenu_Battle_TableRowBuffer
        FSet16 wBattle_CopyBuffer_Destination, bc
        Do_CallForeign Relic_GetDataFromID
        FGet16 hl, wMenu_Battle_TableRowBuffer.Relic_Cmd1
        ld e, BANK(RelicCmd_Null)
        call CallForeign
    .Relic1:
        ld a, [wBattle_Creature_Target.Relic1]
        and a
        ret z
        Mov8 wBattle_CopyBuffer_ListIndex, wBattle_Creature_Target.Relic1 ; inefficiency - We could have just loaded a directly
        ld bc, wMenu_Battle_TableRowBuffer
        FSet16 wBattle_CopyBuffer_Destination, bc
        Do_CallForeign Relic_GetDataFromID
        FGet16 hl, wMenu_Battle_TableRowBuffer.Relic_Cmd1
        ld e, BANK(RelicCmd_Null)
        call CallForeign
        ret


Call_005_4159:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [$D018]                                 ; $4160: $FA $18 $D0
    ld b, $00                                     ; $4163: $06 $00
    ld c, a                                       ; $4165: $4F
    ld hl, $D091                                  ; $4166: $21 $91 $D0
    add hl, bc                                    ; $4169: $09
    ld a, [hl]                                    ; $416A: $7E
    cp $00                                        ; $416B: $FE $00
    jp z, Jump_005_41DC                           ; $416D: $CA $DC $41

    ld a, [$D0B6]                                 ; $4170: $FA $B6 $D0
    cp $05                                        ; $4173: $FE $05
    jr nc, jr_005_41CD                            ; $4175: $30 $56

    ld a, [wBattle_TargetMode]                                 ; $4177: $FA $B0 $D0
    cp $17                                        ; $417A: $FE $17
    jr z, jr_005_41E1                             ; $417C: $28 $63

    cp $19                                        ; $417E: $FE $19
    jr z, jr_005_41E1                             ; $4180: $28 $5F

    cp $1B                                        ; $4182: $FE $1B
    jr z, jr_005_41E1                             ; $4184: $28 $5B

    cp $1D                                        ; $4186: $FE $1D
    jr z, jr_005_41E1                             ; $4188: $28 $57

    cp $16                                        ; $418A: $FE $16
    jr nz, jr_005_4198                            ; $418C: $20 $0A

    ld a, [$D018]                                 ; $418E: $FA $18 $D0
    ld b, a                                       ; $4191: $47
    ld a, [$D0B6]                                 ; $4192: $FA $B6 $D0
    cp b                                          ; $4195: $B8
    jr nz, jr_005_41E1                            ; $4196: $20 $49

jr_005_4198:
    ld a, [wBattle_TargetMode]                                 ; $4198: $FA $B0 $D0
    cp $18                                        ; $419B: $FE $18
    jr nz, jr_005_41A9                            ; $419D: $20 $0A

    ld a, [$D018]                                 ; $419F: $FA $18 $D0
    ld b, a                                       ; $41A2: $47
    ld a, [$D0B6]                                 ; $41A3: $FA $B6 $D0
    cp b                                          ; $41A6: $B8
    jr nz, jr_005_41E1                            ; $41A7: $20 $38

jr_005_41A9:
    ld a, [wBattle_TargetMode]                                 ; $41A9: $FA $B0 $D0
    cp $1A                                        ; $41AC: $FE $1A
    jr nz, jr_005_41BA                            ; $41AE: $20 $0A

    ld a, [$D018]                                 ; $41B0: $FA $18 $D0
    ld b, a                                       ; $41B3: $47
    ld a, [$D0B6]                                 ; $41B4: $FA $B6 $D0
    cp b                                          ; $41B7: $B8
    jr nz, jr_005_41E1                            ; $41B8: $20 $27

jr_005_41BA:
    ld a, [wBattle_TargetMode]                                 ; $41BA: $FA $B0 $D0
    cp $1C                                        ; $41BD: $FE $1C
    jr nz, jr_005_41DC                            ; $41BF: $20 $1B

    ld a, [$D018]                                 ; $41C1: $FA $18 $D0
    ld b, a                                       ; $41C4: $47
    ld a, [$D0B6]                                 ; $41C5: $FA $B6 $D0
    cp b                                          ; $41C8: $B8
    jr nz, jr_005_41E1                            ; $41C9: $20 $16

    jr jr_005_41DC                                ; $41CB: $18 $0F

jr_005_41CD:
    ld a, [wBattle_TargetMode]                                 ; $41CD: $FA $B0 $D0
    cp $14                                        ; $41D0: $FE $14
    jr z, jr_005_41E1                             ; $41D2: $28 $0D

    cp $15                                        ; $41D4: $FE $15
    jr z, jr_005_41E1                             ; $41D6: $28 $09

    cp $1A                                        ; $41D8: $FE $1A
    jr nc, jr_005_41E1                            ; $41DA: $30 $05

Jump_005_41DC:
jr_005_41DC:
    xor a                                         ; $41DC: $AF
    ld [$D019], a                                 ; $41DD: $EA $19 $D0
    ret                                           ; $41E0: $C9


jr_005_41E1:
    ld a, $01                                     ; $41E1: $3E $01
    ld [$D019], a                                 ; $41E3: $EA $19 $D0
    ret                                           ; $41E6: $C9


Call_005_41E7:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [$D018]                                 ; $41EE: $FA $18 $D0
    ld b, $00                                     ; $41F1: $06 $00
    ld c, a                                       ; $41F3: $4F
    ld hl, $D091                                  ; $41F4: $21 $91 $D0
    add hl, bc                                    ; $41F7: $09
    ld a, [hl]                                    ; $41F8: $7E
    cp $00                                        ; $41F9: $FE $00
    jp z, Jump_005_426A                           ; $41FB: $CA $6A $42

    ld a, [$D0B6]                                 ; $41FE: $FA $B6 $D0
    cp $05                                        ; $4201: $FE $05
    jr c, jr_005_425B                             ; $4203: $38 $56

    ld a, [wBattle_TargetMode]                                 ; $4205: $FA $B0 $D0
    cp $17                                        ; $4208: $FE $17
    jr z, jr_005_426F                             ; $420A: $28 $63

    cp $19                                        ; $420C: $FE $19
    jr z, jr_005_426F                             ; $420E: $28 $5F

    cp $1B                                        ; $4210: $FE $1B
    jr z, jr_005_426F                             ; $4212: $28 $5B

    cp $1D                                        ; $4214: $FE $1D
    jr z, jr_005_426F                             ; $4216: $28 $57

    cp $16                                        ; $4218: $FE $16
    jr nz, jr_005_4226                            ; $421A: $20 $0A

    ld a, [$D018]                                 ; $421C: $FA $18 $D0
    ld b, a                                       ; $421F: $47
    ld a, [$D0B6]                                 ; $4220: $FA $B6 $D0
    cp b                                          ; $4223: $B8
    jr nz, jr_005_426F                            ; $4224: $20 $49

jr_005_4226:
    ld a, [wBattle_TargetMode]                                 ; $4226: $FA $B0 $D0
    cp $18                                        ; $4229: $FE $18
    jr nz, jr_005_4237                            ; $422B: $20 $0A

    ld a, [$D018]                                 ; $422D: $FA $18 $D0
    ld b, a                                       ; $4230: $47
    ld a, [$D0B6]                                 ; $4231: $FA $B6 $D0
    cp b                                          ; $4234: $B8
    jr nz, jr_005_426F                            ; $4235: $20 $38

jr_005_4237:
    ld a, [wBattle_TargetMode]                                 ; $4237: $FA $B0 $D0
    cp $1A                                        ; $423A: $FE $1A
    jr nz, jr_005_4248                            ; $423C: $20 $0A

    ld a, [$D018]                                 ; $423E: $FA $18 $D0
    ld b, a                                       ; $4241: $47
    ld a, [$D0B6]                                 ; $4242: $FA $B6 $D0
    cp b                                          ; $4245: $B8
    jr nz, jr_005_426F                            ; $4246: $20 $27

jr_005_4248:
    ld a, [wBattle_TargetMode]                                 ; $4248: $FA $B0 $D0
    cp $1C                                        ; $424B: $FE $1C
    jr nz, jr_005_426A                            ; $424D: $20 $1B

    ld a, [$D018]                                 ; $424F: $FA $18 $D0
    ld b, a                                       ; $4252: $47
    ld a, [$D0B6]                                 ; $4253: $FA $B6 $D0
    cp b                                          ; $4256: $B8
    jr nz, jr_005_426F                            ; $4257: $20 $16

    jr jr_005_426A                                ; $4259: $18 $0F

jr_005_425B:
    ld a, [wBattle_TargetMode]                                 ; $425B: $FA $B0 $D0
    cp $14                                        ; $425E: $FE $14
    jr z, jr_005_426F                             ; $4260: $28 $0D

    cp $15                                        ; $4262: $FE $15
    jr z, jr_005_426F                             ; $4264: $28 $09

    cp $1A                                        ; $4266: $FE $1A
    jr nc, jr_005_426F                            ; $4268: $30 $05

Jump_005_426A:
jr_005_426A:
    xor a                                         ; $426A: $AF
    ld [$D019], a                                 ; $426B: $EA $19 $D0
    ret                                           ; $426E: $C9


jr_005_426F:
    ld a, $01                                     ; $426F: $3E $01
    ld [$D019], a                                 ; $4271: $EA $19 $D0
    ret                                           ; $4274: $C9


Call_005_4275:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [wBattle_CreatureSlots.Magi]                                 ; $427C: $FA $9A $D0
    cp $00                                        ; $427F: $FE $00
    jr z, jr_005_42AE                             ; $4281: $28 $2B

    ld a, [$D0B6]                                 ; $4283: $FA $B6 $D0
    cp $05                                        ; $4286: $FE $05
    jr c, jr_005_429F                             ; $4288: $38 $15

    ld a, [wBattle_TargetMode]                                 ; $428A: $FA $B0 $D0
    cp $18                                        ; $428D: $FE $18
    jr z, jr_005_42B3                             ; $428F: $28 $22

    cp $19                                        ; $4291: $FE $19
    jr z, jr_005_42B3                             ; $4293: $28 $1E

    cp $1C                                        ; $4295: $FE $1C
    jr z, jr_005_42B3                             ; $4297: $28 $1A

    cp $1D                                        ; $4299: $FE $1D
    jr z, jr_005_42B3                             ; $429B: $28 $16

    jr jr_005_42AE                                ; $429D: $18 $0F

jr_005_429F:
    ld a, [wBattle_TargetMode]                                 ; $429F: $FA $B0 $D0
    cp $15                                        ; $42A2: $FE $15
    jr z, jr_005_42B3                             ; $42A4: $28 $0D

    cp $1C                                        ; $42A6: $FE $1C
    jr z, jr_005_42B3                             ; $42A8: $28 $09

    cp $1D                                        ; $42AA: $FE $1D
    jr z, jr_005_42B3                             ; $42AC: $28 $05

jr_005_42AE:
    xor a                                         ; $42AE: $AF
    ld [$D019], a                                 ; $42AF: $EA $19 $D0
    ret                                           ; $42B2: $C9


jr_005_42B3:
    ld a, $01                                     ; $42B3: $3E $01
    ld [$D019], a                                 ; $42B5: $EA $19 $D0
    ret                                           ; $42B8: $C9


Call_005_42B9:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [$D0B6]                                 ; $42C0: $FA $B6 $D0
    cp $05                                        ; $42C3: $FE $05
    jr nc, jr_005_42DC                            ; $42C5: $30 $15

    ld a, [wBattle_TargetMode]                                 ; $42C7: $FA $B0 $D0
    cp $18                                        ; $42CA: $FE $18
    jr z, jr_005_42F0                             ; $42CC: $28 $22

    cp $19                                        ; $42CE: $FE $19
    jr z, jr_005_42F0                             ; $42D0: $28 $1E

    cp $1C                                        ; $42D2: $FE $1C
    jr z, jr_005_42F0                             ; $42D4: $28 $1A

    cp $1D                                        ; $42D6: $FE $1D
    jr z, jr_005_42F0                             ; $42D8: $28 $16

    jr jr_005_42EB                                ; $42DA: $18 $0F

jr_005_42DC:
    ld a, [wBattle_TargetMode]                                 ; $42DC: $FA $B0 $D0
    cp $15                                        ; $42DF: $FE $15
    jr z, jr_005_42F0                             ; $42E1: $28 $0D

    cp $1C                                        ; $42E3: $FE $1C
    jr z, jr_005_42F0                             ; $42E5: $28 $09

    cp $1D                                        ; $42E7: $FE $1D
    jr z, jr_005_42F0                             ; $42E9: $28 $05

jr_005_42EB:
    xor a                                         ; $42EB: $AF
    ld [$D019], a                                 ; $42EC: $EA $19 $D0
    ret                                           ; $42EF: $C9


jr_005_42F0:
    ld a, $01                                     ; $42F0: $3E $01
    ld [$D019], a                                 ; $42F2: $EA $19 $D0
    ret                                           ; $42F5: $C9

Call_005_42F6::
    ld a, [$D0D7]                                 ; $42F6: $FA $D7 $D0
    and a                                         ; $42F9: $A7
    ret nz                                        ; $42FA: $C0

    ld a, [$D06C]                                 ; $42FB: $FA $6C $D0
    srl a                                         ; $42FE: $CB $3F
    inc a                                         ; $4300: $3C
    ld [$C9FE], a                                 ; $4301: $EA $FE $C9
    Do_CallForeign Call_007_7368
    ld a, [$C9FE]                                 ; $430C: $FA $FE $C9
    and a                                         ; $430F: $A7
    jr z, jr_005_4353                             ; $4310: $28 $41

    ld e, a                                       ; $4312: $5F
    ld d, $00                                     ; $4313: $16 $00
    call Math_ConvertNumberToDigits                                    ; $4315: $CD $1A $04
    ld hl, wText_StringBuffer                                  ; $4318: $21 $49 $C9
    Math_DigitsToStringHL
    ld [hl], $FC                                  ; $432D: $36 $FC
    ld a, $49                                     ; $432F: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $4331: $EA $3D $C9
    ld a, $C9                                     ; $4334: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $4336: $EA $3E $C9
    ld hl, $C71B                                  ; $4339: $21 $1B $C7
    ld a, $4C                                     ; $433C: $3E $4C
    ld [hl+], a                                   ; $433E: $22
    ld a, $E2                                     ; $433F: $3E $E2
    ld [hl+], a                                   ; $4341: $22
    ld a, $43                                     ; $4342: $3E $43
    ld [hl+], a                                   ; $4344: $22
    ld a, $66                                     ; $4345: $3E $66
    ld [hl+], a                                   ; $4347: $22
    ld a, $0A                                     ; $4348: $3E $0A
    ld [hl+], a                                   ; $434A: $22
    Do_CallForeign UNK_AwaitTextEnd

jr_005_4353:
    call Math_RandomIncrement                                    ; $4353: $CD $4F $05
    and $0F                                       ; $4356: $E6 $0F
    cp $08                                        ; $4358: $FE $08
    jr nc, jr_005_439C                            ; $435A: $30 $40

    call Call_005_5762                            ; $435C: $CD $62 $57
    cp $FF                                        ; $435F: $FE $FF
    jr z, jr_005_439C                             ; $4361: $28 $39

    ld [$C9FD], a                                 ; $4363: $EA $FD $C9
    ld a, $01                                     ; $4366: $3E $01
    ld [$C9FC], a                                 ; $4368: $EA $FC $C9
    ld a, $01                                     ; $436B: $3E $01
    ld [$C9FE], a                                 ; $436D: $EA $FE $C9
    Do_CallForeign Unknown_GetNameAndGiveItem
    ld a, $49                                     ; $4378: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $437A: $EA $3D $C9
    ld a, $C9                                     ; $437D: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $437F: $EA $3E $C9
    ld hl, $C71B                                  ; $4382: $21 $1B $C7
    ld a, $4C                                     ; $4385: $3E $4C
    ld [hl+], a                                   ; $4387: $22
    ld a, $F9                                     ; $4388: $3E $F9
    ld [hl+], a                                   ; $438A: $22
    ld a, $43                                     ; $438B: $3E $43
    ld [hl+], a                                   ; $438D: $22
    ld a, $66                                     ; $438E: $3E $66
    ld [hl+], a                                   ; $4390: $22
    ld a, $0A                                     ; $4391: $3E $0A
    ld [hl+], a                                   ; $4393: $22
    Do_CallForeign UNK_AwaitTextEnd

jr_005_439C:
    call Math_RandomIncrement                                    ; $439C: $CD $4F $05
    swap a                                        ; $439F: $CB $37
    and $0F                                       ; $43A1: $E6 $0F
    cp $05                                        ; $43A3: $FE $05
    ret nc                                        ; $43A5: $D0

    call Call_005_5762                            ; $43A6: $CD $62 $57
    cp $FF                                        ; $43A9: $FE $FF
    ret z                                         ; $43AB: $C8

    ld [$C9FD], a                                 ; $43AC: $EA $FD $C9
    ld a, $01                                     ; $43AF: $3E $01
    ld [$C9FC], a                                 ; $43B1: $EA $FC $C9
    ld a, $01                                     ; $43B4: $3E $01
    ld [$C9FE], a                                 ; $43B6: $EA $FE $C9
    Do_CallForeign Unknown_GetNameAndGiveItem
    ld a, $49                                     ; $43C1: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $43C3: $EA $3D $C9
    ld a, $C9                                     ; $43C6: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $43C8: $EA $3E $C9
    ld hl, $C71B                                  ; $43CB: $21 $1B $C7
    ld a, $4C                                     ; $43CE: $3E $4C
    ld [hl+], a                                   ; $43D0: $22
    ld a, $F9                                     ; $43D1: $3E $F9
    ld [hl+], a                                   ; $43D3: $22
    ld a, $43                                     ; $43D4: $3E $43
    ld [hl+], a                                   ; $43D6: $22
    ld a, $66                                     ; $43D7: $3E $66
    ld [hl+], a                                   ; $43D9: $22
    ld a, $0A                                     ; $43DA: $3E $0A
    ld [hl+], a                                   ; $43DC: $22
    Do_CallForeign UNK_AwaitTextEnd
    ret                                           ; $43E5: $C9

    ; $43E6
Battle_Helpers_CheckValidTarget::
    ; Makes sure the selected battlecmd is valid, and lets the user choose a target
    ; 1) Makes sure we have enough energy
    ; 2) Checks to see if there is a potential target available
    ; Outputs:
    ;   wBattle_CurCreature_ValidBattleCmd = 1 if valid battlecmd, else 0
    SwitchRAMBank BANK("WRAM BATTLE")

    ; If 0 energy cost, no energy problem!
    ; This part could be unused/redundant since the check right after EnergyPass does the same thing
    ld a, [wBattle_Creature_Current.BattleCmd_Cost]
    and a
    jr z, .EnergyPass ; BUG! If we go to .EnergyPass via here, then hl is undefined for the check right after .EnergyPass

    ; If non-zero energy cost, make sure we have enough energy
    ld c, a
    FGet16_BigEndian hl, wBattle_Creature_Current.CurEnergy
    ld b, $00
    TwosComp bc
    add hl, bc
    jr c, .EnergyPass
    .NotEnoughEnergy:
        Sound_Request_StartSFX0 SFXID_SfxCancel
        Set8 $D0D8, $01 ;todo
        xor a ;invalid cmd
        ld [wBattle_CurCreature_ValidBattleCmd], a
        ret
    .EnergyPass:
    ; And also check to make sure the creature's energy would not be at 0
    ld a, h
    or l
    jr z, .NotEnoughEnergy

    ; Call the corresponding function from Battle_CheckTarget_Table to see if the target is valid
    ld a, [wBattle_Creature_Current.BattleCmd_Target]
    ld [wBattle_TargetMode], a ; Save a copy of the target mode
    sub Battle_TARGET_START
    add a
    ld c, a
    ld b, $00
    ld hl, Battle_CheckTarget_Table
    add hl, bc
    ECallHL
    ret

Call_005_4430::
    xor a                                         ; $4430: $AF
    ld [$D0CC], a                                 ; $4431: $EA $CC $D0
    ld a, [wX100]                                 ; $4434: $FA $2F $C9
    and a                                         ; $4437: $A7
    jr z, jr_005_4444                             ; $4438: $28 $0A

    ld [$D0CC], a                                 ; $443A: $EA $CC $D0
    add $01                                       ; $443D: $C6 $01
    ld c, a                                       ; $443F: $4F
    ld b, $00                                     ; $4440: $06 $00
    jr jr_005_4447                                ; $4442: $18 $03

jr_005_4444:
    ld bc, $0000                                  ; $4444: $01 $00 $00

jr_005_4447:
    Sla16 bc, 4

    ld hl, $5000                                  ; $4450: $21 $00 $50
    add hl, bc                                    ; $4453: $09
    ld a, h                                       ; $4454: $7C
    ld [wVBlank_SourceAddress+1], a                                 ; $4455: $EA $E8 $C6
    ld a, l                                       ; $4458: $7D
    ld [wVBlank_SourceAddress], a                                 ; $4459: $EA $E7 $C6
    ld bc, $8FD0                                  ; $445C: $01 $D0 $8F
    FSet16 wVBlank_DestAddress, bc                                    ; $4464: $70
    ld a, $01                                     ; $4465: $3E $01
    ld [wVBlank_DestVBK], a                                 ; $4467: $EA $EB $C6
    ld a, $02                                     ; $446A: $3E $02
    ld [wVBlank_Func], a                                 ; $446C: $EA $E4 $C6
    ld a, $39                                     ; $446F: $3E $39
    ld [wVBlank_Func+1], a                                 ; $4471: $EA $E5 $C6
    call System_UpdateGame                                    ; $4474: $CD $BB $08
    ld a, [$D0CC]                                 ; $4477: $FA $CC $D0
    and a                                         ; $447A: $A7
    ld a, [wX10]                                 ; $447B: $FA $2E $C9
    jr nz, jr_005_4486                            ; $447E: $20 $06

    and a                                         ; $4480: $A7
    jr z, jr_005_448D                             ; $4481: $28 $0A

    ld [$D0CC], a                                 ; $4483: $EA $CC $D0

jr_005_4486:
    add $01                                       ; $4486: $C6 $01
    ld c, a                                       ; $4488: $4F
    ld b, $00                                     ; $4489: $06 $00
    jr jr_005_4490                                ; $448B: $18 $03

jr_005_448D:
    ld bc, $0000                                  ; $448D: $01 $00 $00

jr_005_4490:
    Sla16 bc, 4

    ld hl, $5000                                  ; $4499: $21 $00 $50
    add hl, bc                                    ; $449C: $09
    ld a, h                                       ; $449D: $7C
    ld [wVBlank_SourceAddress+1], a                                 ; $449E: $EA $E8 $C6
    ld a, l                                       ; $44A1: $7D
    ld [wVBlank_SourceAddress], a                                 ; $44A2: $EA $E7 $C6
    ld bc, $8FD0                                  ; $44A5: $01 $D0 $8F
    ld a, $02                                     ; $44A8: $3E $02
    ld [wVBlank_Func], a                                 ; $44AA: $EA $E4 $C6
    ld a, $39                                     ; $44AD: $3E $39
    ld [wVBlank_Func+1], a                                 ; $44AF: $EA $E5 $C6
    call System_UpdateGame                                    ; $44B2: $CD $BB $08
    ld a, [$D0CC]                                 ; $44B5: $FA $CC $D0
    and a                                         ; $44B8: $A7
    ld a, [wX1]                                 ; $44B9: $FA $2D $C9
    jr nz, jr_005_44C4                            ; $44BC: $20 $06

    and a                                         ; $44BE: $A7
    jr z, jr_005_44CB                             ; $44BF: $28 $0A

    ld [$D0CC], a                                 ; $44C1: $EA $CC $D0

jr_005_44C4:
    add $01                                       ; $44C4: $C6 $01
    ld c, a                                       ; $44C6: $4F
    ld b, $00                                     ; $44C7: $06 $00
    jr jr_005_44CE                                ; $44C9: $18 $03

jr_005_44CB:
    ld bc, $0000                                  ; $44CB: $01 $00 $00

jr_005_44CE:
    Sla16 bc, 4

    ld hl, $5000                                  ; $44D7: $21 $00 $50
    add hl, bc                                    ; $44DA: $09
    ld a, h                                       ; $44DB: $7C
    ld [wVBlank_SourceAddress+1], a                                 ; $44DC: $EA $E8 $C6
    ld a, l                                       ; $44DF: $7D
    ld [wVBlank_SourceAddress], a                                 ; $44E0: $EA $E7 $C6
    ld bc, $8FD0                                  ; $44E3: $01 $D0 $8F
    ld a, $02                                     ; $44E6: $3E $02
    ld [wVBlank_Func], a                                 ; $44E8: $EA $E4 $C6
    ld a, $39                                     ; $44EB: $3E $39
    ld [wVBlank_Func+1], a                                 ; $44ED: $EA $E5 $C6
    call System_UpdateGame                                    ; $44F0: $CD $BB $08
    ret                                           ; $44F3: $C9

Call_005_44F4::
    ld a, [$D0B5]                                 ; $44F4: $FA $B5 $D0
    cp $00                                        ; $44F7: $FE $00
    jr z, jr_005_4556                             ; $44F9: $28 $5B

    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $44FB: $FA $03 $D1
    cp $05                                        ; $44FE: $FE $05
    jr c, jr_005_4534                             ; $4500: $38 $32

    ld d, a                                       ; $4502: $57
    ld bc, $0005                                  ; $4503: $01 $05 $00
    ld hl, $D091                                  ; $4506: $21 $91 $D0
    add hl, bc                                    ; $4509: $09

jr_005_450A:
    push hl                                       ; $450A: $E5
    ld bc, wBattle_CursorTableValidIDs                                  ; $450B: $01 $9B $D0
    TwosComp bc
    add hl, bc                                    ; $4515: $09
    ld a, h                                       ; $4516: $7C
    or l                                          ; $4517: $B5
    pop hl                                        ; $4518: $E1
    ret z                                         ; $4519: $C8

    ld a, [hl+]                                   ; $451A: $2A
    and a                                         ; $451B: $A7
    jr z, jr_005_450A                             ; $451C: $28 $EC

    ld bc, $D091                                  ; $451E: $01 $91 $D0
    TwosComp bc
    push hl                                       ; $4528: $E5
    add hl, bc                                    ; $4529: $09
    ld a, l                                       ; $452A: $7D
    dec a                                         ; $452B: $3D
    cp d                                          ; $452C: $BA
    pop hl                                        ; $452D: $E1
    jr z, jr_005_450A                             ; $452E: $28 $DA

    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $4530: $EA $03 $D1
    ret                                           ; $4533: $C9


jr_005_4534:
    ld d, a                                       ; $4534: $57
    ld bc, $0004                                  ; $4535: $01 $04 $00
    ld hl, $D091                                  ; $4538: $21 $91 $D0
    add hl, bc                                    ; $453B: $09

jr_005_453C:
    ld a, [hl-]                                   ; $453C: $3A
    and a                                         ; $453D: $A7
    jr z, jr_005_453C                             ; $453E: $28 $FC

    ld bc, $D091                                  ; $4540: $01 $91 $D0
    TwosComp bc
    push hl                                       ; $454A: $E5
    add hl, bc                                    ; $454B: $09
    ld a, l                                       ; $454C: $7D
    inc a                                         ; $454D: $3C
    cp d                                          ; $454E: $BA
    pop hl                                        ; $454F: $E1
    jr z, jr_005_453C                             ; $4550: $28 $EA

    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $4552: $EA $03 $D1
    ret                                           ; $4555: $C9


jr_005_4556:
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $4556: $FA $03 $D1
    cp $05                                        ; $4559: $FE $05
    jr c, jr_005_4579                             ; $455B: $38 $1C

    ld bc, $0005                                  ; $455D: $01 $05 $00
    ld hl, $D091                                  ; $4560: $21 $91 $D0
    add hl, bc                                    ; $4563: $09

jr_005_4564:
    ld a, [hl+]                                   ; $4564: $2A
    and a                                         ; $4565: $A7
    jr z, jr_005_4564                             ; $4566: $28 $FC

    ld bc, $D091                                  ; $4568: $01 $91 $D0
    TwosComp bc
    add hl, bc                                    ; $4572: $09
    ld a, l                                       ; $4573: $7D
    dec a                                         ; $4574: $3D
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $4575: $EA $03 $D1
    ret                                           ; $4578: $C9


jr_005_4579:
    ld bc, $0004                                  ; $4579: $01 $04 $00
    ld hl, $D091                                  ; $457C: $21 $91 $D0
    add hl, bc                                    ; $457F: $09

jr_005_4580:
    ld a, [hl-]                                   ; $4580: $3A
    and a                                         ; $4581: $A7
    jr z, jr_005_4580                             ; $4582: $28 $FC

    ld bc, $D091                                  ; $4584: $01 $91 $D0
    TwosComp bc
    add hl, bc                                    ; $458E: $09
    ld a, l                                       ; $458F: $7D
    inc a                                         ; $4590: $3C
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $4591: $EA $03 $D1
    ret                                           ; $4594: $C9

Call_005_4595::
    ld a, $01                                     ; $4595: $3E $01
    ld [$D071], a                                 ; $4597: $EA $71 $D0
    ld hl, $C71B                                  ; $459A: $21 $1B $C7
    ld a, $4C                                     ; $459D: $3E $4C
    ld [hl+], a                                   ; $459F: $22
    ld a, $99                                     ; $45A0: $3E $99
    ld [hl+], a                                   ; $45A2: $22
    ld a, $42                                     ; $45A3: $3E $42
    ld [hl+], a                                   ; $45A5: $22
    ld a, $66                                     ; $45A6: $3E $66
    ld [hl+], a                                   ; $45A8: $22
    ld a, $0A                                     ; $45A9: $3E $0A
    ld [hl+], a                                   ; $45AB: $22
    call Call_005_5575                            ; $45AC: $CD $75 $55
    ret                                           ; $45AF: $C9

    ; $45B0
Battle_Helpers_DrawCommandMenu::
    ; Draw the menu options
    ;   - Card icon for creatures only
    ;   - Swap Cmd0 and Cmd1 for hero so that Focus is the 2nd option
    ;   - Write the 5 options with the creature's energy and energy costs
    ;   - Write Defend (hidden)
    ld a, [wBattle_CurCreature_Slot]
    and a
    jr z, .Hero
    .NotHero:
        Battle_TextboxOpen

        ; Draw the icon only for dream creatures:
        ; Calculate the tileid of the target card
        ; wBattle_CurCreature_CardTileID <- CARDSCENE_TILEID_CARDX = CARDSCENE_TILEID_CARD0 + (wBattle_CurCreature_Slot - 1)*(CARDSCENE_TILEID_CARD1 - CARDSCENE_TILEID_CARD0)
        ld a, [wBattle_CurCreature_Slot] ; Card0-3 = 1-4
        dec a
        ld b, (CARDSCENE_TILEID_CARD1 - CARDSCENE_TILEID_CARD0)
        ld c, a
        call Math_Mult
        ld a, l
        add CARDSCENE_TILEID_CARD0
        ld [wBattle_CurCreature_CardTileID], a

        ; Draw the icon
        Set8 wVBlank_Bank, BANK(Battle_Helpers_VBlank_DrawMenuCreatureIcon)
        Set16_M wVBlank_Func, Battle_Helpers_VBlank_DrawMenuCreatureIcon
        call System_UpdateGame
        jr .Finally

    .Hero:
        ; Swap the position of wBattle_Menu_CommandNameString.Cmd0 and .Cmd1,
        ; so that Focus is the second option
        ld hl, wBattle_Menu_CommandNameString.Cmd0
        ld bc, wBattle_Menu_CommandNameString.Temp
        ld d, BATTLECMD_STRUCT_NAMESIZE
        .CopyLoop1:
            LdBCIHLI
            dec d
            jr nz, .CopyLoop1
        ld hl, wBattle_Menu_CommandNameString.Cmd1
        ld bc, wBattle_Menu_CommandNameString.Cmd0
        ld d, BATTLECMD_STRUCT_NAMESIZE
        .CopyLoop2:
            LdBCIHLI
            dec d
            jr nz, .CopyLoop2
        ld hl, wBattle_Menu_CommandNameString.Temp
        ld bc, wBattle_Menu_CommandNameString.Cmd1
        ld d, BATTLECMD_STRUCT_NAMESIZE
        .CopyLoop3:
            LdBCIHLI
            dec d
            jr nz, .CopyLoop3

    .Finally:
    ; We already populated wBattle_Menu_CommandNameString via the function Battle_Flow_CommandMenuGetCmdNames
    ; But we still need to get the creature's energy and cmd costs
    call Battle_Helpers_CommandMenuGetEnergyStrings
    call Battle_Helpers_CommandMenuGetCostStrings

    ; Draw all the strings for the menu
    SwitchRAMBank BANK("WRAM BATTLE")
    Menu_TextSetup $01, BATTLE_MENU_VRAM_ENERGY, BATTLE_MENU_TILEMAP_ENERGY, BATTLECMD_STRUCT_NAMESIZE, wBattle_Menu_EnergyString
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_CMDNAME0, BATTLE_MENU_TILEMAP_CMD0NAME, BATTLECMD_STRUCT_NAMESIZE, wBattle_Menu_CommandNameString.Cmd0
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_CMDNAME1, BATTLE_MENU_TILEMAP_CMD1NAME, BATTLECMD_STRUCT_NAMESIZE, wBattle_Menu_CommandNameString.Cmd1
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_CMDCOST1, BATTLE_MENU_TILEMAP_CMD1COST, (wBattle_Menu_CommandCostString.Cmd2 - wBattle_Menu_CommandCostString.Cmd1), wBattle_Menu_CommandCostString.Cmd1
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_CMDNAME2, BATTLE_MENU_TILEMAP_CMD2NAME, BATTLECMD_STRUCT_NAMESIZE, wBattle_Menu_CommandNameString.Cmd2
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_CMDCOST2, BATTLE_MENU_TILEMAP_CMD2COST, (wBattle_Menu_CommandCostString.Cmd3 - wBattle_Menu_CommandCostString.Cmd2), wBattle_Menu_CommandCostString.Cmd2
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_CMDNAME3, BATTLE_MENU_TILEMAP_CMD3NAME, BATTLECMD_STRUCT_NAMESIZE, wBattle_Menu_CommandNameString.Cmd3
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_CMDCOST3, BATTLE_MENU_TILEMAP_CMD3COST, (wBattle_Menu_CommandCostString.Cmd4 - wBattle_Menu_CommandCostString.Cmd3), wBattle_Menu_CommandCostString.Cmd3
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_CMDNAME4, BATTLE_MENU_TILEMAP_CMD4NAME, BATTLECMD_STRUCT_NAMESIZE, wBattle_Menu_CommandNameString.Cmd4
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_CMDCOST4, BATTLE_MENU_TILEMAP_CMD4COST, (wBattle_Menu_CommandCostString.End - wBattle_Menu_CommandCostString.Cmd4), wBattle_Menu_CommandCostString.Cmd4
    Menu_TextUpdateLoop

    ; Fixed string "Defend🡆🡇" (not visible)
    Menu_TextSetup $01, BATTLE_MENU_VRAM_DEFEND, $9CA5, .End, sBattle_Helpers_DefendArrowArrow ; Defend
    Menu_TextUpdateLoop
    ret

    ; $4AA4
Battle_Helpers_CommandMenuGetCostStrings:
    ; Write the 4 cost strings for the 4 battle cmds (Don't use Cmd0 = Fight)
    ; Write "---" if the cost is 0
    ; Inputs:
    ;   wBattle_Creature_Current

    ; First, initialize the 4 strings with "---"
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, "-"
    ld hl, wBattle_Menu_CommandCostString.Cmd1
    ld b, (wBattle_Menu_CommandCostString.End - wBattle_Menu_CommandCostString.Cmd1)
    .Loop:
        ld [hl+], a
        dec b
        jr nz, .Loop

    ; Loop through the 4 abilities
    ld c, $00
    .CmdLoop:
        ; Find the current ability
        ld b, $00
        ld hl, wBattle_Creature_Current.Ability0
        add hl, bc
        add hl, bc
        DerefHL

        ; Get the energy cost (Struct + offset of 2)
        inc hl
        inc hl
        Set16 wBattle_CopyBuffer_Source, hl
        Do_CallForeign BattleCmd_GetByteFromAddress

        ; Write the cost if the cost is non-zero
        ld a, d
        ld d, $00
        or d
        jr z, .Skip
        .NonZeroEnergyCost:
            ; Get the energy cost in digits
            ld e, a
            push bc
            call Math_ConvertNumberToDigits
            pop bc
            ; Navigate to wBattle_Menu_CommandCostString.CmdX
            ld b, (wBattle_Menu_CommandCostString.Cmd2 - wBattle_Menu_CommandCostString.Cmd1)
            call Math_Mult
            ld de, wBattle_Menu_CommandCostString.Cmd1
            ; Write the digits
            add hl, de
            Math_DigitsToStringHL
        .Skip:

        ; End if we have done all 4 cmds
        inc c
        ld a, $04
        cp c
        ret z

        ; End if the next cmd is not unlocked
        ld b, $00
        ld hl, wBattle_Creature_Current.AbilityUnlock0
        add hl, bc
        ld a, [hl]
        cp CREATURE_TABLE_ABILITYUNLOCK_TRUE
        ret nz

        jr .CmdLoop

    ; $450B
Battle_Helpers_CommandMenuGetEnergyStrings:
    ; Writes the string "XXX:XXX" for a creature's energy:maxenergy
    ; Inputs:
    ;   wBattle_Creature_Current
    ; Outputs:
    ;   wBattle_Menu_EnergyString <- "energy:maxenergy"

    ; CurEnergy
    FGet16_BigEndian de, wBattle_Creature_Current.CurEnergy
    call Math_ConvertNumberToDigits
    ld hl, wBattle_Menu_EnergyString
    Math_DigitsToStringHL

    ; Colon
    Set8 hl+, ":"

    ; MaxEnergy
    FGet16_BigEndian de, wBattle_Creature_Current.MaxEnergy
    call Math_ConvertNumberToDigits
    ld hl, wBattle_Menu_EnergyString.MaxEnergy
    Math_DigitsToStringHL
    ret

Call_005_4B45::
    ld a, [$D113]                                 ; $4B45: $FA $13 $D1
    cp $0C                                        ; $4B48: $FE $0C
    ret z                                         ; $4B4A: $C8

    ld a, $01                                     ; $4B4B: $3E $01
    ld [$D0B4], a                                 ; $4B4D: $EA $B4 $D0
    ret                                           ; $4B50: $C9

    ; $45B1
Battle_Menu_Item:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld bc, $A3A7
    FSet16 $CC82, bc
    ld bc, Item_Table
    FSet16 $CC84, bc
    ld a, ItemSpell_ROWSIZE
    ld [$CC88], a
    xor a

Jump_005_4B70:
    add $0D
    ld [wMenu_CursorID], a
    Battery_On
    Battery_SetBank "XRAM Gamestate"
    Do_CallForeign Menu_MainMenu_Get5Entries
    Battery_Off
    ld hl, wMenu_CursorID
    ld a, [hl]
    sub $0D
    ld [hl], a
    FGet16 hl, $CC78
    ld a, h
    or l
    jr nz, jr_005_4BAA

    Sound_Request_StartSFX0 SFXID_Error
    ld a, $FE
    ld [wMenu_ReturnValue], a
    ret


jr_005_4BAA:
    Battle_TextboxClose
    Battle_TextboxOpen
    ld a, [$CDD7]
    and a
    jp z, Jump_005_4DC5

    xor a
    ld [wBattle_TempCounter], a

Jump_005_4BF1:
    ld hl, $CC78
    ld a, [wBattle_TempCounter]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    DerefHL
    ld a, [$CC83]
    ld d, a
    ld a, [$CC82]
    ld e, a
    TwosComp de
    add hl, de
    ld b, l
    ld c, $22
    call Math_Mult
    ld a, [$CC85]
    ld b, a
    ld a, [$CC84]
    ld c, a
    add hl, bc
    ld a, h
    ld [wBattle_CopyBuffer_Source + 1], a
    ld a, l
    ld [wBattle_CopyBuffer_Source], a
    ld bc, wMenu_Battle_TableRowBuffer
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign ItemSpell_GetDataFromAddress
    ld hl, wMenu_Battle_TableRowBuffer
    ld bc, $000C
    add hl, bc
    push hl
    ld a, [wBattle_TempCounter]
    ld b, a
    ld c, $0D
    call Math_Mult
    Sla16 hl, 4

    ld bc, $8860
    add hl, bc
    push hl
    ld a, [wBattle_TempCounter]
    ld b, a
    ld c, $20
    call Math_Mult
    ld bc, $9C02
    add hl, bc
    ld b, h
    ld c, l
    pop de
    pop hl
    Menu_TextSetup $01, de, bc, $0D, hl
    Menu_TextUpdateLoop
    ld hl, wBattle_TempCounter
    inc [hl]
    ld a, $05
    cp [hl]
    jp nz, Jump_005_4BF1

    xor a
    ld [wBattle_TempCounter], a

Jump_005_4CDF:
    ld hl, $CC78
    ld a, [wBattle_TempCounter]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    DerefHL
    Battery_On
    Battery_SetBank "XRAM Gamestate"
    ld e, [hl]
    ld d, $00
    Battery_Off
    xor a
    cp e
    jr nz, jr_005_4D0F

    ld a, $F0
    ld hl, wX1
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_005_4D12

jr_005_4D0F:
    call Math_ConvertNumberToDigits

jr_005_4D12:
    ld hl, wMenu_Battle_TableRowBuffer
    Math_DigitsToStringHL
    ld a, [wBattle_TempCounter]
    ld b, a
    ld c, $03
    call Math_Mult
    Sla16 hl, 4

    ld bc, $8C70
    add hl, bc
    push hl
    ld a, [wBattle_TempCounter]
    ld b, a
    ld c, $20
    call Math_Mult
    ld bc, $9C10
    add hl, bc
    ld b, h
    ld c, l
    ld hl, wMenu_Battle_TableRowBuffer
    pop de

    Menu_TextSetup $01, de, bc, $03, hl
    Menu_TextUpdateLoop

    ld hl, wBattle_TempCounter
    inc [hl]
    ld a, $05
    cp [hl]
    jp nz, Jump_005_4CDF

Jump_005_4DC5:
    ld hl, $CC78
    ld de, wBattle_CursorTableValidIDs
    ld c, $05

jr_005_4DCD:
    push de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push hl
    TwosComp de
    FGet16 hl, $CC82
    add hl, de
    ld a, h
    or l
    pop hl
    pop de
    ld [de], a
    inc de
    inc hl
    dec c
    jr nz, jr_005_4DCD

    ld a, $01
    ld [de], a
    inc de
    ld [de], a
    Battery_On
    Battery_SetBank "XRAM Gamestate"
    FGet16 bc, $CC82
    TwosComp bc
    FGet16 hl, $CC78
    add hl, bc
    ld b, $00
    ld c, l

jr_005_4E13:
    FGet16 hl, $CC82
    dec bc
    ld a, $FF
    cp c
    jr z, jr_005_4E26

    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_4E13

    jr jr_005_4E2A

jr_005_4E26:
    xor a
    ld [$D0A0], a

jr_005_4E2A:
    FGet16 bc, $CC82
    TwosComp bc
    FGet16 hl, $CC80
    add hl, bc
    ld b, $00
    ld c, l
    ld a, c
    and c
    jr z, jr_005_4E58

jr_005_4E45:
    FGet16 hl, $CC82
    inc bc
    ld a, $FF
    cp c
    jr z, jr_005_4E58

    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_005_4E45

    jr jr_005_4E5C

jr_005_4E58:
    xor a
    ld [$D0A1], a

jr_005_4E5C:
    Battery_Off
    ld a, $31
    ld [wVBlank_Func], a
    ld a, $39
    ld [wVBlank_Func+1], a
    call System_UpdateGame

Jump_005_4E6D:
    Set16_M hInterrupt_HBlank_Func, Interrupt_HBlankFunc_WindowSprite

    Do_Menu_Init Menu_CursorTable_Battle_SpellItem, %11110011, wBattle_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, Option0, Menu_CURSOR_BLINK, Menu_CURSOR_SPRITE

    ld hl, wCntDown
    xor a
    ld [hl], a

jr_005_4EC3:
    Do_CallForeign Menu_Do
    call System_UpdateGame
    ld a, [wMenu_ReturnValue]
    cp $FF
    jr z, jr_005_4EC3

    cp $FE
    ret z

    cp $05
    jp nc, Jump_005_4B70

    ld c, a
    ld b, $00
    ld hl, $CC78
    add hl, bc
    add hl, bc
    DerefHL
    ld a, [$CC83]
    ld d, a
    ld a, [$CC82]
    ld e, a
    TwosComp de
    add hl, de
    ld b, l
    ld c, $22
    call Math_Mult
    ld a, [$CC85]
    ld b, a
    ld a, [$CC84]
    ld c, a
    add hl, bc
    push hl
    ld a, h
    ld [wBattle_CopyBuffer_Source + 1], a
    ld a, l
    ld [wBattle_CopyBuffer_Source], a
    ld bc, wMenu_Battle_TableRowBuffer
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign ItemSpell_GetDataFromAddress
    ld a, [$CD9A]
    and $01
    jr z, jr_005_4F43

    ld a, [$CD96]
    ld [wBattle_Creature_Current.BattleCmd_Target], a
    ld a, [$CD95]
    ld [wBattle_Creature_Current.BattleCmd_Cost], a
    ld a, [$CD98]
    ld [wBattle_Creature_Current.BattleCmd_Rating], a
    call Battle_Helpers_CheckValidTarget
    ld a, [wBattle_CurCreature_ValidBattleCmd]
    and a
    jr nz, jr_005_4F4C

jr_005_4F43:
    pop bc
    Sound_Request_StartSFX0 SFXID_SfxCancel
    jp Jump_005_4E6D


jr_005_4F4C:
    pop bc
    FSet16 $D107, bc
    ret


Battle_Menu_Ring:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, $01
    ld [$D0C0], a
    ld a, $04
    ld [wMenu_CursorID], a
    ; wMenu_SelectedRingIndex = 0 (first page)
    xor a

    .ReloadMenu: ; Jump to here when swapping the Summon page

    ld [wMenu_SelectedRingIndex], a
    Battle_TextboxClose
    Battle_TextboxOpen
    ; Load the Creature names (0-4 or 5-9)
    Do_CallForeign CreatureName_SummonMenuLoadNames
    ; Load the summon costs
    ; First, let's default all the 5 values to "   "
    ld a, " "
    ld hl, wBattle_Menu_CommandCostString
    ld b, wBattle_Menu_CommandCostString.End - wBattle_Menu_CommandCostString
    .Loop1:
        ld [hl+], a
        dec b
        jr nz, .Loop1

    ; Let's set the valid selections for the Menu
    ; By default, we assume we have no creatures (so first 5 options are invalid) (Enum_Menu_CursorTable_Battle_Summon_Creatur0-4)
    xor a
    ld hl, wBattle_CursorTableValidIDs
    ld b, $05
    .Loop2:
        ld [hl+], a
        dec b
        jr nz, .Loop2

    ; If the 6th creature is not $FF/INVENTORY_RINGS_NORING,
    ; Then we are allowed to select the second page of creatures
    ; (Enum_Menu_CursorTable_Battle_Summon_SwapRing)
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [xInventory_Rings + 5]
    push af
    Battery_Off
    pop af
    inc a
    ld [hl+], a

    ; Even though the 7th option doesn't exist, we need to set it to 0 so that
    ; Battle00_VBlank_UpdatePreviousNextArrows does not add a "Next" arrow
    xor a
    ld [hl+], a

    ; Let's check and process all 5 rings now
    SwitchRAMBank BANK("WRAM BATTLE")
    FOR loop, 0, 5
        IF loop != 0
            ; Increment the index except for the first loop
            ld hl, wMenu_SelectedRingIndex
            inc [hl]
        ENDC
        ; First, we get the ring id
        Menu_RingToID wMenu_SelectedRingIndex

        ; Process the ring if the ring is valid
        Battery_SetBank "XRAM Creatures"
        Battery_On
        ld a, b
        cp CreatureID_Null ; == INVENTORY_RINGS_NORING
        jr z, .SkipRing\@
            ; Valid menu option
            Set8 wBattle_CursorTableValidIDs + loop, $01
            ; Let's write the creature's max energy
            ; First we get the value (big-endian)
            ld c, (oCreature_Struct_MaxEnergy - oCreature_Struct_ID)
            ld b, $00
            add hl, bc
            ld a, [hl+]
            ld e, [hl]
            ld d, a

            ; Then we save the value as a string
            call Math_ConvertNumberToDigits
            ld hl, wBattle_Menu_CommandCostString + loop*(wBattle_Menu_CommandCostString.Cmd1 - wBattle_Menu_CommandCostString.Cmd0)
            Math_DigitsToStringHL
        .SkipRing\@:
    ENDR

    ; We marked all the valid rings as valid menu options, but actually we now need to disable
    ; the creatures that have already been summoned (since you can't summon them twice)

    ; We've incremented wBattle_SelectedRingIndex so we need to figure out the original value
    ; 9 -> 5
    ; 4 -> 0
    Battery_Off
    ld c, $00
    ld a, [wBattle_SelectedRingIndex]
    cp $09
    jr nz, .RingIndex0
    .RingIndex5:
        ld c, $05
    .RingIndex0:
    ld b, $00
    ld hl, wBattle_UsedRings
    add hl, bc
    ; Now we have wBattle_UsedRings + [0 or 5]
    ; Check each ring. If the ring is summoned and alive, disable its corresponding menu option
    ld bc, wBattle_CursorTableValidIDs
    ld d, $05
    .CheckSummonedRingLoop:
        ld a, [hl+]
        cp BATTLE_USEDRINGS_ALIVE
        jr nz, .NotSummonedRing
        .SummonedRing:
            ; Disable
            xor a
            ld [bc], a
        .NotSummonedRing:
        inc bc
        dec d
        jr nz, .CheckSummonedRingLoop

    ; Check to see if we have at least 1 valid menu option
    ld hl, wBattle_CursorTableValidIDs
    ld d, $07
    xor a
    .CountValidOptions:
        add [hl]
        inc hl
        dec d
        jr nz, .CountValidOptions

    and a
    jr nz, .Pass
    .NoValidMenuOptions:
        ; No valid menu options. Cancel the Summon menu!
        Set8 wMenu_ReturnValue, Menu_CANCEL
        ret
    .Pass:

    ; Lets draw the Summon costs
    Menu_TextSetup $01, BATTLE_MENU_VRAM_SUMMONCOST0, BATTLE_MENU_TILEMAP_SUMMONCOST0, $03, wBattle_Menu_CommandCostString.Cmd0
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_SUMMONCOST1, BATTLE_MENU_TILEMAP_SUMMONCOST1, $03, wBattle_Menu_CommandCostString.Cmd1
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_SUMMONCOST2, BATTLE_MENU_TILEMAP_SUMMONCOST2, $03, wBattle_Menu_CommandCostString.Cmd2
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_SUMMONCOST3, BATTLE_MENU_TILEMAP_SUMMONCOST3, $03, wBattle_Menu_CommandCostString.Cmd3
    Menu_TextUpdateLoop
    Menu_TextSetup $01, BATTLE_MENU_VRAM_SUMMONCOST4, BATTLE_MENU_TILEMAP_SUMMONCOST4, $03, wBattle_Menu_CommandCostString.Cmd4
    Menu_TextUpdateLoop

    ; Conditionally draw the Prev (SwapRing) arrow. We never draw the Next arrow
    Set16_M wVBlank_Func, Battle00_VBlank_UpdatePreviousNextArrows
    call System_UpdateGame

    Set16_M hInterrupt_HBlank_Func, Interrupt_HBlankFunc_WindowSprite
    ld a, [wMenu_CursorID] ; TODO - isn't this useless as we are going to reset it in Do_Menu_Init?
    cp $04
    jr z, .DoMenu
        Set8 wMenu_ReturnValue, Menu_NULL
        jr .MenuLoop

    .DoMenu:

    ; Let the user choose an option
    Do_Menu_Init Menu_CursorTable_Battle_Summon, %11110011, wBattle_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, Creatur0, Menu_CURSOR_NOBLINK, Menu_CURSOR_SPRITE
    .MenuLoop:
        Do_CallForeign Menu_Do
        call System_UpdateGame
        ld a, [wMenu_ReturnValue]
        cp Menu_NULL
        jr z, .MenuLoop

    ; Cancel -> Exit
    cp Menu_CANCEL
    ret z

    cp Enum_Menu_CursorTable_Battle_Summon_SwapRing
    jr c, .SelectedCreature
    .SwapRing:
        ; We selected SwapRing, so we need to change wBattle_SelectedRingIndex to 0 or 5, and then reload the Menu
        ld a, [wBattle_SelectedRingIndex]
        inc a
        cp $0A
        jp nz, .ReloadMenu
        xor a
        jp .ReloadMenu
    .SelectedCreature:
        ; We selected a creature! The selected ring is the wMenu_ReturnValue, +5 if we are on the second page
        ld a, [wMenu_ReturnValue]
        ld [wMenu_SelectedRingIndex], a
        ld b, a
        ld a, [wBattle_SelectedRingIndex]
        cp $09
        jr nz, .FirstPage
        .SecondPage:
            ld a, b
            add $05
            ld [wMenu_SelectedRingIndex], a
        .FirstPage:

        ld a, [wMenu_SelectedRingIndex]
        ld [$D06F], a ; TODO?

        ; Use this Macro to get the Creature_Struct saved in hl
        Menu_RingToID wMenu_SelectedRingIndex

        Battery_SetBank "XRAM Creatures"
        Battery_On
        Set8 wBattle_Creature_Current.BattleCmd_Target, Battle_TARGET_ALLYEMPTY

        Set16 $D107, hl ; TODO?

        ; Check to see if we have enough energy to summon the creature
        ; And that there is an empty card to target

        ; We can't take the upper byte of the energy because the checking function caps out at 255
        ld bc, oCreature_Struct_MaxEnergy + 1
        add hl, bc
        Mov8 wBattle_Creature_Current.BattleCmd_Cost, hl
        call Battle_Helpers_CheckValidTarget
        ld a, [wBattle_CurCreature_ValidBattleCmd]
        and a
        jp z, .DoMenu

        ret

    ; $5553
Battle_Menu_Spell:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld bc, $A5A5                                  ; $555A: $01 $A5 $A5
    FSet16 $CC82, bc                                    ; $5562: $70
    ld bc, Spell_Table                                  ; $5563: $01 $F5 $6F
    FSet16 $CC84, bc                                    ; $556B: $70
    ld a, ItemSpell_ROWSIZE                                     ; $556C: $3E $22
    ld [$CC88], a                                 ; $556E: $EA $88 $CC
    xor a                                         ; $5571: $AF
    jp Jump_005_4B70                              ; $5572: $C3 $70 $4B


Call_005_5575:
    ld a, [$D0DB]                                 ; $5575: $FA $DB $D0
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $5578: $EA $8C $CD
    ld bc, wText_StringBuffer                                  ; $557B: $01 $49 $C9
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $5583: $70
    Do_CallForeign CreatureName_CopyToDest
    ld a, $FC                                     ; $558C: $3E $FC
    ld [$C953], a                                 ; $558E: $EA $53 $C9
    ld a, [wBattle_Creature_Target.ID]                                 ; $5591: $FA $12 $D1
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $5594: $EA $8C $CD
    ld bc, $C954                                  ; $5597: $01 $54 $C9
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $559F: $70
    Do_CallForeign CreatureName_CopyToDest
    ld a, $FC                                     ; $55A8: $3E $FC
    ld [$C95E], a                                 ; $55AA: $EA $5E $C9
    ld hl, $C95F                                  ; $55AD: $21 $5F $C9
    ld a, [wBattle_DamageOverrideFlag]                                 ; $55B0: $FA $76 $D0
    and a                                         ; $55B3: $A7
    jr z, jr_005_55BB                             ; $55B4: $28 $05

    ld a, [wBattle_DamageOverrideMagnitude]                                 ; $55B6: $FA $77 $D0
    jr jr_005_55BE                                ; $55B9: $18 $03

jr_005_55BB:
    ld a, [$D073]                                 ; $55BB: $FA $73 $D0

jr_005_55BE:
    ld e, a                                       ; $55BE: $5F
    ld d, $00                                     ; $55BF: $16 $00
    call Math_ConvertNumberToDigits                                    ; $55C1: $CD $1A $04
    ld a, [wX100]                                 ; $55C4: $FA $2F $C9
    and a                                         ; $55C7: $A7
    jr z, jr_005_55CD                             ; $55C8: $28 $03

    add $30                                       ; $55CA: $C6 $30
    ld [hl+], a                                   ; $55CC: $22

jr_005_55CD:
    ld a, [wX10]                                 ; $55CD: $FA $2E $C9
    and a                                         ; $55D0: $A7
    jr z, jr_005_55D6                             ; $55D1: $28 $03

    add $30                                       ; $55D3: $C6 $30
    ld [hl+], a                                   ; $55D5: $22

jr_005_55D6:
    ld a, [wX1]                                 ; $55D6: $FA $2D $C9
    add $30                                       ; $55D9: $C6 $30
    ld [hl+], a                                   ; $55DB: $22
    ld a, $FC                                     ; $55DC: $3E $FC
    ld [hl+], a                                   ; $55DE: $22
    ret                                           ; $55DF: $C9

Call_005_55E0::
    ld a, [$D0DB]                                 ; $55E0: $FA $DB $D0
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $55E3: $EA $8C $CD
    ld bc, wText_StringBuffer                                  ; $55E6: $01 $49 $C9
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $55EE: $70
    Do_CallForeign CreatureName_CopyToDest
    ld a, $FC                                     ; $55F7: $3E $FC
    ld [$C953], a                                 ; $55F9: $EA $53 $C9
    ld bc, $C954                                  ; $55FC: $01 $54 $C9
    ld hl, $CD9D                                  ; $55FF: $21 $9D $CD
    ld d, $0D                                     ; $5602: $16 $0D

jr_005_5604:
    LdBCIHLI                                        ; $5606: $03
    dec d                                         ; $5607: $15
    jr nz, jr_005_5604                            ; $5608: $20 $FA

    ld a, $FC                                     ; $560A: $3E $FC
    ld [bc], a                                    ; $560C: $02
    ret                                           ; $560D: $C9

Call_005_560E::
    ld hl, wText_StringBuffer                                  ; $560E: $21 $49 $C9
    ld a, $FC                                     ; $5611: $3E $FC
    ld [hl+], a                                   ; $5613: $22
    ld a, h                                       ; $5614: $7C
    ld [wBattle_CopyBuffer_Destination+1], a                                 ; $5615: $EA $90 $CD
    ld a, l                                       ; $5618: $7D
    ld [wBattle_CopyBuffer_Destination], a                                 ; $5619: $EA $8F $CD
    ld a, [$D0C7]                                 ; $561C: $FA $C7 $D0
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $561F: $EA $8C $CD
    Do_CallForeign CreatureName_CopyToDest
    ld a, $FC                                     ; $562A: $3E $FC
    ld [$C954], a                                 ; $562C: $EA $54 $C9
    ld a, [$D0C8]                                 ; $562F: $FA $C8 $D0
    ld e, a                                       ; $5632: $5F
    ld d, $00                                     ; $5633: $16 $00
    call Math_ConvertNumberToDigits                                    ; $5635: $CD $1A $04
    ld hl, $C955                                  ; $5638: $21 $55 $C9
    ld a, [wX100]                                 ; $563B: $FA $2F $C9
    and a                                         ; $563E: $A7
    jr z, jr_005_5644                             ; $563F: $28 $03

    add $30                                       ; $5641: $C6 $30
    ld [hl+], a                                   ; $5643: $22

jr_005_5644:
    ld a, [wX10]                                 ; $5644: $FA $2E $C9
    and a                                         ; $5647: $A7
    jr z, jr_005_564D                             ; $5648: $28 $03

    add $30                                       ; $564A: $C6 $30
    ld [hl+], a                                   ; $564C: $22

jr_005_564D:
    ld a, [wX1]                                 ; $564D: $FA $2D $C9
    add $30                                       ; $5650: $C6 $30
    ld [hl+], a                                   ; $5652: $22
    ld a, $FC                                     ; $5653: $3E $FC
    ld [hl+], a                                   ; $5655: $22
    ret                                           ; $5656: $C9

Call_005_5657::
    ld a, [$D0DB]                                 ; $5657: $FA $DB $D0
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $565A: $EA $8C $CD
    ld bc, wText_StringBuffer                                  ; $565D: $01 $49 $C9
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $5665: $70
    Do_CallForeign CreatureName_CopyToDest
    ld a, $FC                                     ; $566E: $3E $FC
    ld [$C953], a                                 ; $5670: $EA $53 $C9
    ld hl, $D109                                  ; $5673: $21 $09 $D1
    ld bc, $C954                                  ; $5676: $01 $54 $C9
    ld d, $07                                     ; $5679: $16 $07

jr_005_567B:
    LdBCIHLI                                        ; $567D: $03
    dec d                                         ; $567E: $15
    jr nz, jr_005_567B                            ; $567F: $20 $FA

    ld a, [$C95A]                                 ; $5681: $FA $5A $C9
    cp $0C                                        ; $5684: $FE $0C
    jr nz, jr_005_568D                            ; $5686: $20 $05

    ld a, $20                                     ; $5688: $3E $20
    ld [$C95A], a                                 ; $568A: $EA $5A $C9

jr_005_568D:
    ld a, $FC                                     ; $568D: $3E $FC
    ld [$C95B], a                                 ; $568F: $EA $5B $C9
    ld a, [wBattle_Creature_Target.ID]                                 ; $5692: $FA $12 $D1
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $5695: $EA $8C $CD
    ld bc, $C95C                                  ; $5698: $01 $5C $C9
    FSet16 wBattle_CopyBuffer_Destination, bc                                    ; $56A0: $70
    Do_CallForeign CreatureName_CopyToDest
    ld a, $FC                                     ; $56A9: $3E $FC
    ld [$C966], a                                 ; $56AB: $EA $66 $C9
    ret                                           ; $56AE: $C9

    ; $56AF
Battle_Helpers_ChooseBattleCmd::
    ; Loads the selected BattleCmd, taking care of special cases
    ; The selected BattleCmd is copied into the Battle_Creature_BattleCmd_Struct
    ; 1) Depending on Magi vs Creature, will choose Summon vs FightDefend
    ; 2) Check Fight/Defend and change the target to Battle_TARGET_NONE if defending
    ; 3) Apply Relics' Relic_Cmd0 functions
    ; Inputs:
    ;   wMenu_ReturnValue - selected menu option corresponding to a battlecmd
    ;   wBattle_CurCreature_Slot - to check if magi or not
    ;   wBattle_Creature_Current
    SwitchRAMBank BANK("WRAM BATTLE")
    xor a
    ld [wBattle_CurCreature_FightDef], a
    ld a, [wMenu_ReturnValue]
    cp Enum_Menu_CursorTable_Battle_CreatureCommand_FightDef ; or Enum_Menu_CursorTable_Battle_HeroCommand_Summon
    jr nz, .Ability

    .FightDefOrFocus:
        ; For Hero/Magi, do Focus
        ; For Creatures, do Fight/Def
        ld a, [wBattle_CurCreature_Slot]
        res 7, a
        cp 0 ; Hero
        jr z, .Focus
        cp 9 ; Enemy Magi
        jr z, .Focus
        .FightDefend:
            ld hl, BattleCmd_Table.BattleCmd_FIGHT
            Mov8 wBattle_CurCreature_FightDef, wBattle_Creature_Current.Other
            jr .ParseAbility
        .Focus:
            ld hl, BattleCmd_Table.BattleCmd_FOCUS
            jr .ParseAbility

    .Ability:
        ; Safety check, but should not happen
        cp Enum_Menu_CursorTable_Battle_CreatureCommand_SwapFiDe
        jr z, .FightDefOrFocus

        ; Get the pointer to the ability
        dec a
        ld c, a
        ld b, $00
        ld hl, wBattle_Creature_Current.Ability0
        add hl, bc
        add hl, bc
        DerefHL

    .ParseAbility:
    ; Copy the battlecmd row
    Set16 wBattle_CopyBuffer_Source, hl
    ld bc, wBattle_Creature_Current.BattleCmd
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign BattleCmd_GetDataFromAddress

    ; If the user selected Defend, remove the target
    ld a, [wBattle_CurCreature_FightDef] ; This variable is only non-zero if Defend was selected
    and a
    jr z, .SkipDef
    .Defend:
        ; No target if defending (as opposed to Fight)
        Set8 wBattle_Creature_Current.BattleCmd_Target, Battle_TARGET_NONE
    .SkipDef:

    ; Apply Relic0Relic_Cmd0
    .Relic0:
    ; Skip if no relic
    ld a, [wBattle_Creature_Current.Relic0]
    and a
    jr z, .Relic1

    ; call Relic_Cmd0
    Mov8 wBattle_CopyBuffer_ListIndex, wBattle_Creature_Current.Relic0
    ld bc, wMenu_Battle_TableRowBuffer
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign Relic_GetDataFromID
    FGet16 hl, wMenu_Battle_TableRowBuffer.Relic_Cmd0
    ld e, BANK(RelicCmd_Null)
    call CallForeign

    .Relic1:
    ; Skip if no relic
    ld a, [wBattle_Creature_Current.Relic1]
    and a
    ret z

    ; call Relic_Cmd1
    Mov8 wBattle_CopyBuffer_ListIndex, wBattle_Creature_Current.Relic1
    ld bc, wMenu_Battle_TableRowBuffer
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign Relic_GetDataFromID
    FGet16 hl, wMenu_Battle_TableRowBuffer.Relic_Cmd0
    ld e, BANK(RelicCmd_Null)
    call CallForeign
    ret


Call_005_5762:
    ld hl, $D0B8                                  ; $5762: $21 $B8 $D0
    ld d, $08                                     ; $5765: $16 $08
    ld a, $FF                                     ; $5767: $3E $FF

jr_005_5769:
    cp [hl]                                       ; $5769: $BE
    jr z, jr_005_5772                             ; $576A: $28 $06

    dec d                                         ; $576C: $15
    jr z, jr_005_5772                             ; $576D: $28 $03

    inc hl                                        ; $576F: $23
    jr jr_005_5769                                ; $5770: $18 $F7

jr_005_5772:
    ld a, $08                                     ; $5772: $3E $08
    sub d                                         ; $5774: $92
    jr z, jr_005_5788                             ; $5775: $28 $11

    ld b, a                                       ; $5777: $47
    call Math_RandomIncrement                                    ; $5778: $CD $4F $05
    ld c, a                                       ; $577B: $4F
    call Math_Div                                    ; $577C: $CD $AC $04
    ld c, l                                       ; $577F: $4D
    ld b, $00                                     ; $5780: $06 $00
    ld hl, $D0B8                                  ; $5782: $21 $B8 $D0
    add hl, bc                                    ; $5785: $09
    ld a, [hl]                                    ; $5786: $7E
    ret                                           ; $5787: $C9


jr_005_5788:
    ld a, $FF                                     ; $5788: $3E $FF
    ret                                           ; $578A: $C9

Battle_Helpers_SelectMenu::
    ; Opens the Ring/Item/Spell menu and lets the user choose an option
    ; Inputs:
    ;   wBattle_Creature_Current.BattleCmd_Menu - id of selection
    ; Run the function by index
    ld a, [wBattle_Creature_Current.BattleCmd_Menu]
    add a
    ld hl, Battle_Menu_Table
    ld c, a
    ld b, $00
    add hl, bc
    ECallHL
    ret

Call_005_579D::
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [$D0C0]                                 ; $57A4: $FA $C0 $D0
    and a                                         ; $57A7: $A7
    ret z                                         ; $57A8: $C8

    cp $01                                        ; $57A9: $FE $01
    jr nz, jr_005_57B9                            ; $57AB: $20 $0C

    ld a, [$D0C1]                                 ; $57AD: $FA $C1 $D0
    ld d, $11                                     ; $57B0: $16 $11
    ld bc, $7438                                  ; $57B2: $01 $38 $74
    call Battle00_SetActorScript                                    ; $57B5: $CD $F0 $38
    ret                                           ; $57B8: $C9


jr_005_57B9:
    ret                                           ; $57B9: $C9

    ; $57BA
Call_005_57BA::
    ; Abort if index is out of range, i.e. id is >= CreatureID_NoMagi
    ld a, [$D0C2]
    cp CreatureID_NoMagi
    ret nc

    ; Lookup the nth entry (nth magi) from the magis' scripts' table
    sub CreatureID_MAGI
    add a
    ld c, a
    ld b, $00
    ld hl, Battle_MagiAnimTable
    add hl, bc
    DerefHL

    ; Navigate to the nth entry of the scripts' table
    push hl
    Get8 b, $D0C0
    ld c, $03
    call Math_Mult
    pop bc
    add hl, bc

    ; Update the actor's Script to the selected Script
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$D0C1]
    call Battle00_SetActorScript
    ret


    ld a, [$D0C0]                                 ; $57E5: $FA $C0 $D0
    ld b, a                                       ; $57E8: $47
    ld c, $03                                     ; $57E9: $0E $03
    call Math_Mult                                    ; $57EB: $CD $CA $04
    ld bc, $5E2D                                  ; $57EE: $01 $2D $5E
    add hl, bc                                    ; $57F1: $09
    ld d, [hl]                                    ; $57F2: $56
    inc hl                                        ; $57F3: $23
    ld a, [hl+]                                   ; $57F4: $2A
    ld b, [hl]                                    ; $57F5: $46
    ld c, a                                       ; $57F6: $4F
    ld a, [$D0C1]                                 ; $57F7: $FA $C1 $D0
    call Battle00_SetActorScript                                    ; $57FA: $CD $F0 $38
    ret                                           ; $57FD: $C9

    ; $57FE
Call_005_57FE:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld bc, $D091                                  ; $5805: $01 $91 $D0
    ld hl, wBattle_CursorTableValidIDs                                  ; $5808: $21 $9B $D0
    ld a, [wBattle_TargetMode]                                 ; $580B: $FA $B0 $D0
    cp $18                                        ; $580E: $FE $18
    jr z, jr_005_5821                             ; $5810: $28 $0F

    cp $19                                        ; $5812: $FE $19
    jr z, jr_005_5821                             ; $5814: $28 $0B

    cp $1C                                        ; $5816: $FE $1C
    jr z, jr_005_5821                             ; $5818: $28 $07

    cp $1D                                        ; $581A: $FE $1D
    jr z, jr_005_5821                             ; $581C: $28 $03

    xor a                                         ; $581E: $AF
    jr jr_005_5823                                ; $581F: $18 $02

jr_005_5821:
    ld a, $01                                     ; $5821: $3E $01

jr_005_5823:
    ld [hl+], a                                   ; $5823: $22
    inc bc                                        ; $5824: $03
    ld d, $FF                                     ; $5825: $16 $FF
    ld a, [wBattle_TargetMode]                                 ; $5827: $FA $B0 $D0
    cp $14                                        ; $582A: $FE $14
    jr z, jr_005_5834                             ; $582C: $28 $06

    cp $15                                        ; $582E: $FE $15
    jr z, jr_005_5834                             ; $5830: $28 $02

    jr jr_005_5836                                ; $5832: $18 $02

jr_005_5834:
    ld d, $00                                     ; $5834: $16 $00

jr_005_5836:
    ld a, [bc]                                    ; $5836: $0A
    and d                                         ; $5837: $A2
    ld [hl+], a                                   ; $5838: $22
    inc bc                                        ; $5839: $03
    ld a, [bc]                                    ; $583A: $0A
    and d                                         ; $583B: $A2
    ld [hl+], a                                   ; $583C: $22
    inc bc                                        ; $583D: $03
    ld a, [bc]                                    ; $583E: $0A
    and d                                         ; $583F: $A2
    ld [hl+], a                                   ; $5840: $22
    inc bc                                        ; $5841: $03
    ld a, [bc]                                    ; $5842: $0A
    and d                                         ; $5843: $A2
    ld [hl+], a                                   ; $5844: $22
    inc bc                                        ; $5845: $03
    ld d, $FF                                     ; $5846: $16 $FF
    ld a, [wBattle_TargetMode]                                 ; $5848: $FA $B0 $D0
    cp $16                                        ; $584B: $FE $16
    jr z, jr_005_585D                             ; $584D: $28 $0E

    cp $17                                        ; $584F: $FE $17
    jr z, jr_005_585D                             ; $5851: $28 $0A

    cp $18                                        ; $5853: $FE $18
    jr z, jr_005_585D                             ; $5855: $28 $06

    cp $19                                        ; $5857: $FE $19
    jr z, jr_005_585D                             ; $5859: $28 $02

    jr jr_005_585F                                ; $585B: $18 $02

jr_005_585D:
    ld d, $00                                     ; $585D: $16 $00

jr_005_585F:
    ld a, [bc]                                    ; $585F: $0A
    and d                                         ; $5860: $A2
    ld [hl+], a                                   ; $5861: $22
    inc bc                                        ; $5862: $03
    ld a, [bc]                                    ; $5863: $0A
    and d                                         ; $5864: $A2
    ld [hl+], a                                   ; $5865: $22
    inc bc                                        ; $5866: $03
    ld a, [bc]                                    ; $5867: $0A
    and d                                         ; $5868: $A2
    ld [hl+], a                                   ; $5869: $22
    inc bc                                        ; $586A: $03
    ld a, [bc]                                    ; $586B: $0A
    and d                                         ; $586C: $A2
    ld [hl+], a                                   ; $586D: $22
    ld a, [wBattle_TargetMode]                                 ; $586E: $FA $B0 $D0
    cp $15                                        ; $5871: $FE $15
    jr z, jr_005_5880                             ; $5873: $28 $0B

    cp $1C                                        ; $5875: $FE $1C
    jr z, jr_005_5880                             ; $5877: $28 $07

    cp $1D                                        ; $5879: $FE $1D
    jr z, jr_005_5880                             ; $587B: $28 $03

    xor a                                         ; $587D: $AF
    jr jr_005_5882                                ; $587E: $18 $02

jr_005_5880:
    ld a, $01                                     ; $5880: $3E $01

jr_005_5882:
    ld [hl], a                                    ; $5882: $77
    ld a, [wBattle_TargetMode]                                 ; $5883: $FA $B0 $D0
    cp $16                                        ; $5886: $FE $16
    jr z, jr_005_5898                             ; $5888: $28 $0E

    cp $18                                        ; $588A: $FE $18
    jr z, jr_005_5898                             ; $588C: $28 $0A

    cp $1A                                        ; $588E: $FE $1A
    jr z, jr_005_5898                             ; $5890: $28 $06

    cp $1C                                        ; $5892: $FE $1C
    jr z, jr_005_5898                             ; $5894: $28 $02

    jr jr_005_58A3                                ; $5896: $18 $0B

jr_005_5898:
    ld hl, wBattle_CursorTableValidIDs                                  ; $5898: $21 $9B $D0
    ld a, [wBattle_CurCreature_Slot]                                 ; $589B: $FA $B1 $D0
    ld c, a                                       ; $589E: $4F
    ld b, $00                                     ; $589F: $06 $00
    add hl, bc                                    ; $58A1: $09
    ld [hl], b                                    ; $58A2: $70

jr_005_58A3:
    ld d, $00                                     ; $58A3: $16 $00
    ret                                           ; $58A5: $C9

    ; $58A6
Call_005_58A6:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld hl, wBattle_CursorTableValidIDs                                  ; $58AD: $21 $9B $D0
    ld a, $01                                     ; $58B0: $3E $01
    ld [hl+], a                                   ; $58B2: $22
    xor a                                         ; $58B3: $AF
    ld b, $0A                                     ; $58B4: $06 $0A

jr_005_58B6:
    ld [hl+], a                                   ; $58B6: $22
    dec b                                         ; $58B7: $05
    jr nz, jr_005_58B6                            ; $58B8: $20 $FC

    ld d, $03                                     ; $58BA: $16 $03
    ret                                           ; $58BC: $C9

    ; $58BD
Call_005_58BD:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld bc, $D091                                  ; $58C4: $01 $91 $D0
    ld hl, wBattle_CursorTableValidIDs                                  ; $58C7: $21 $9B $D0
    ld a, [wBattle_TargetMode]                                 ; $58CA: $FA $B0 $D0
    cp $0E                                        ; $58CD: $FE $0E
    jr z, jr_005_58D5                             ; $58CF: $28 $04

    ld a, $01                                     ; $58D1: $3E $01
    jr jr_005_58D6                                ; $58D3: $18 $01

jr_005_58D5:
    xor a                                         ; $58D5: $AF

jr_005_58D6:
    ld [hl+], a                                   ; $58D6: $22
    inc bc                                        ; $58D7: $03
    ld d, $08                                     ; $58D8: $16 $08

jr_005_58DA:
    LdHLIBCI                                        ; $58DC: $03
    dec d                                         ; $58DD: $15
    jr nz, jr_005_58DA                            ; $58DE: $20 $FA

    ld a, [wBattle_CreatureSlots.Magi]                                 ; $58E0: $FA $9A $D0
    cp $00                                        ; $58E3: $FE $00
    jr z, jr_005_5902                             ; $58E5: $28 $1B

    ld a, [wBattle_TargetMode]                                 ; $58E7: $FA $B0 $D0
    cp $13                                        ; $58EA: $FE $13
    jr z, jr_005_58FB                             ; $58EC: $28 $0D

    ld hl, wBattle_CreatureSlots.Enemy0                                  ; $58EE: $21 $96 $D0
    ld d, $04                                     ; $58F1: $16 $04
    xor a                                         ; $58F3: $AF

jr_005_58F4:
    ld a, [hl+]                                   ; $58F4: $2A
    and a                                         ; $58F5: $A7
    jr nz, jr_005_5902                            ; $58F6: $20 $0A

    dec d                                         ; $58F8: $15
    jr nz, jr_005_58F4                            ; $58F9: $20 $F9

jr_005_58FB:
    ld a, $01                                     ; $58FB: $3E $01
    ld [$D0A4], a                                 ; $58FD: $EA $A4 $D0
    jr jr_005_5906                                ; $5900: $18 $04

jr_005_5902:
    xor a                                         ; $5902: $AF
    ld [$D0A4], a                                 ; $5903: $EA $A4 $D0

jr_005_5906:
    ld d, $05                                     ; $5906: $16 $05
    ret                                           ; $5908: $C9

    ; $5909
Battle_Target_Crash::
    ; Unimplemented error or invalid index
    jr Battle_Target_Crash

Call_005_590B::
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [wBattle_TargetMode]                                 ; $5912: $FA $B0 $D0
    sub $0A                                       ; $5915: $D6 $0A
    add a                                         ; $5917: $87
    ld c, a                                       ; $5918: $4F
    ld b, $00                                     ; $5919: $06 $00
    ld hl, $402A                                  ; $591B: $21 $2A $40
    add hl, bc                                    ; $591E: $09
    ECallHL                                    ; $5922: $CD $89 $07
    ld a, $02                                     ; $5925: $3E $02
    cp d                                          ; $5927: $BA
    jr z, jr_005_5937                             ; $5928: $28 $0D

    ld d, $05                                     ; $592A: $16 $05
    ld a, [wBattle_Creature_Current.BattleCmd_Rating]                                 ; $592C: $FA $05 $D1
    res 7, a                                      ; $592F: $CB $BF
    cp $05                                        ; $5931: $FE $05
    jr c, jr_005_5937                             ; $5933: $38 $02

    ld d, $01                                     ; $5935: $16 $01

jr_005_5937:
    ld a, [wBattle_TargetMode]                                 ; $5937: $FA $B0 $D0
    cp $14                                        ; $593A: $FE $14
    jr c, jr_005_5942                             ; $593C: $38 $04

    ld a, $00                                     ; $593E: $3E $00
    jr jr_005_5944                                ; $5940: $18 $02

jr_005_5942:
    ld a, $01                                     ; $5942: $3E $01

jr_005_5944:

    Do_Menu_Init Menu_CursorTable_Battle_ChooseTarget, %11110011, wBattle_CursorTableValidIDs, MenuFunc_Flash, MenuFunc_Flash, d, Menu_CURSOR_NOBLINK, Menu_CURSOR_ACTOR


jr_005_598A:
    ld a, [wBattle_TargetMode]                                 ; $598A: $FA $B0 $D0
    cp $14                                        ; $598D: $FE $14
    jr c, jr_005_5996                             ; $598F: $38 $05

    ld hl, wCntDown                                  ; $5991: $21 $32 $C9
    set 4, [hl]                                   ; $5994: $CB $E6

jr_005_5996:
    Do_CallForeign Menu_Do
    call System_UpdateGame                                    ; $599E: $CD $BB $08
    ld a, [wMenu_ReturnValue]                                 ; $59A1: $FA $A7 $CC
    cp $FF                                        ; $59A4: $FE $FF
    jr z, jr_005_598A                             ; $59A6: $28 $E2

    xor a                                         ; $59A8: $AF
    ld [wActor_Cursor.XTile], a                                 ; $59A9: $EA $D2 $C2
    ld [wActor_Cursor.YTile], a                                 ; $59AC: $EA $D3 $C2
    ret                                           ; $59AF: $C9

    ; $59B0
Call_005_59B0:
    ld bc, $D091                                  ; $59B0: $01 $91 $D0
    ld hl, wBattle_CursorTableValidIDs                                  ; $59B3: $21 $9B $D0
    xor a                                         ; $59B6: $AF
    ld [hl+], a                                   ; $59B7: $22
    inc bc                                        ; $59B8: $03
    ld a, [wBattle_TargetMode]                                 ; $59B9: $FA $B0 $D0
    cp $0C                                        ; $59BC: $FE $0C
    jr z, jr_005_59D7                             ; $59BE: $28 $17

    xor a                                         ; $59C0: $AF
    ld d, $04                                     ; $59C1: $16 $04

jr_005_59C3:
    ld [hl+], a                                   ; $59C3: $22
    inc bc                                        ; $59C4: $03
    dec d                                         ; $59C5: $15
    jr nz, jr_005_59C3                            ; $59C6: $20 $FB

    ld d, $04                                     ; $59C8: $16 $04

jr_005_59CA:
    ld a, [bc]                                    ; $59CA: $0A
    xor $01                                       ; $59CB: $EE $01
    ld [hl+], a                                   ; $59CD: $22
    inc bc                                        ; $59CE: $03
    dec d                                         ; $59CF: $15
    jr nz, jr_005_59CA                            ; $59D0: $20 $F8

    ld d, $05                                     ; $59D2: $16 $05
    xor a                                         ; $59D4: $AF
    jr jr_005_59EB                                ; $59D5: $18 $14

jr_005_59D7:
    ld d, $04                                     ; $59D7: $16 $04

jr_005_59D9:
    ld a, [bc]                                    ; $59D9: $0A
    xor $01                                       ; $59DA: $EE $01
    ld [hl+], a                                   ; $59DC: $22
    inc bc                                        ; $59DD: $03
    dec d                                         ; $59DE: $15
    jr nz, jr_005_59D9                            ; $59DF: $20 $F8

    xor a                                         ; $59E1: $AF
    ld d, $04                                     ; $59E2: $16 $04

jr_005_59E4:
    ld [hl+], a                                   ; $59E4: $22
    inc bc                                        ; $59E5: $03
    dec d                                         ; $59E6: $15
    jr nz, jr_005_59E4                            ; $59E7: $20 $FB

    ld d, $02                                     ; $59E9: $16 $02

jr_005_59EB:
    ld [hl], a                                    ; $59EB: $77
    push de                                       ; $59EC: $D5
    ld de, $0008                                  ; $59ED: $11 $08 $00
    ld bc, $D085                                  ; $59F0: $01 $85 $D0

jr_005_59F3:
    ld hl, wBattle_CursorTableValidIDs                                  ; $59F3: $21 $9B $D0
    add hl, de                                    ; $59F6: $19
    ld a, [bc]                                    ; $59F7: $0A
    and a                                         ; $59F8: $A7
    jr z, jr_005_59FD                             ; $59F9: $28 $02

    xor a                                         ; $59FB: $AF
    ld a, [hl]                                    ; $59FC: $7E

jr_005_59FD:
    dec bc                                        ; $59FD: $0B
    dec e                                         ; $59FE: $1D
    jr nz, jr_005_59F3                            ; $59FF: $20 $F2

    pop de                                        ; $5A01: $D1
    ret                                           ; $5A02: $C9

    ; $5A03
Call_005_5A03:
    SwitchRAMBank BANK("WRAM BATTLE")
    ld hl, wBattle_CursorTableValidIDs                                  ; $5A0A: $21 $9B $D0
    xor a                                         ; $5A0D: $AF
    ld b, $09                                     ; $5A0E: $06 $09

jr_005_5A10:
    ld [hl+], a                                   ; $5A10: $22
    dec b                                         ; $5A11: $05
    jr nz, jr_005_5A10                            ; $5A12: $20 $FC

    ld a, $01                                     ; $5A14: $3E $01
    ld [hl+], a                                   ; $5A16: $22
    ld d, $03                                     ; $5A17: $16 $03
    ret                                           ; $5A19: $C9

    ; $5A1A
UNK_AwaitTextEnd::
    ; Loops until wScript_Text is done
    .Loop:
        call System_UpdateGame
        ld a, [wScript_Text.Frame + 1]
        and a
        jr nz, .Loop
    ret

    ; $5A24
Call_005_5A24::
    SwitchRAMBank BANK("WRAM BATTLE")
    ld hl, wBattle_CursorTableValidIDs                                  ; $5A2B: $21 $9B $D0
    xor a                                         ; $5A2E: $AF
    ld b, $0A                                     ; $5A2F: $06 $0A

jr_005_5A31:
    ld [hl+], a                                   ; $5A31: $22
    dec b                                         ; $5A32: $05
    jr nz, jr_005_5A31                            ; $5A33: $20 $FC

    ld a, [wBattle_CurCreature_Slot]                                 ; $5A35: $FA $B1 $D0
    ld c, a                                       ; $5A38: $4F
    ld b, $00                                     ; $5A39: $06 $00
    ld hl, wBattle_CursorTableValidIDs                                  ; $5A3B: $21 $9B $D0
    add hl, bc                                    ; $5A3E: $09
    ld a, $01                                     ; $5A3F: $3E $01
    ld [hl], a                                    ; $5A41: $77
    ld d, $08                                     ; $5A42: $16 $08
    ret                                           ; $5A44: $C9

Call_005_5A45::
    ld hl, $D07E                                  ; $5A45: $21 $7E $D0
    ld a, $08                                     ; $5A48: $3E $08
    ld [wBattle_TempCounter], a                                 ; $5A4A: $EA $74 $D0

Jump_005_5A4D:
    ld a, [hl]                                    ; $5A4D: $7E
    and a                                         ; $5A4E: $A7
    jp z, Jump_005_5AF2                           ; $5A4F: $CA $F2 $5A

    dec a                                         ; $5A52: $3D
    ld [hl], a                                    ; $5A53: $77
    and a                                         ; $5A54: $A7
    jp nz, Jump_005_5AF2                          ; $5A55: $C2 $F2 $5A

    push hl                                       ; $5A58: $E5
    ld a, [wBattle_TempCounter]                                 ; $5A59: $FA $74 $D0
    ld b, a                                       ; $5A5C: $47
    ld a, $09                                     ; $5A5D: $3E $09
    sub b                                         ; $5A5F: $90
    push af                                       ; $5A60: $F5
    call Battle00_DisableActorScript                                    ; $5A61: $CD $C7 $38
    Battle_Set_MagiAnim [wBattle_Creature_Magi.ID], BATTLE_MAGIANIM_IDLE, BATTLE_ACTOR_MAGI
    pop af                                        ; $5A7C: $F1
    push af                                       ; $5A7D: $F5
    ld b, a                                       ; $5A7E: $47
    ld c, $37                                     ; $5A7F: $0E $37
    call Math_Mult                                    ; $5A81: $CD $CA $04
    ld bc, $D149                                  ; $5A84: $01 $49 $D1
    add hl, bc                                    ; $5A87: $09
    ld d, [hl]                                    ; $5A88: $56
    ld a, d                                       ; $5A89: $7A
    ld [wBattle_Creature_Target.ID], a                                 ; $5A8A: $EA $12 $D1
    pop bc                                        ; $5A8D: $C1
    push bc                                       ; $5A8E: $C5
    dec b                                         ; $5A8F: $05
    ld a, d                                       ; $5A90: $7A
    ld [$C9D8], a                                 ; $5A91: $EA $D8 $C9
    ld a, b                                       ; $5A94: $78
    ld [$C9D9], a                                 ; $5A95: $EA $D9 $C9
    Do_CallForeign Cardscene_SpawnCreature
    pop af                                        ; $5AA0: $F1
    ld [wBattle_Creature_Current.BattleCmd_Target], a                                 ; $5AA1: $EA $03 $D1
    call Call_005_405C                            ; $5AA4: $CD $5C $40
    ld hl, $D384                                  ; $5AA7: $21 $84 $D3
    inc [hl]                                      ; $5AAA: $34
    Do_CallForeign Call_005_5575
    ld a, $49                                     ; $5AB3: $3E $49
    ld [wText_StringFormatFrame], a                                 ; $5AB5: $EA $3D $C9
    ld a, $C9                                     ; $5AB8: $3E $C9
    ld [wText_StringFormatFrame+1], a                                 ; $5ABA: $EA $3E $C9
    ld a, [wBattle_CreatureSlots.Magi]                                 ; $5ABD: $FA $9A $D0
    and a                                         ; $5AC0: $A7
    jr z, jr_005_5AD7                             ; $5AC1: $28 $14

    ld hl, $C71B                                  ; $5AC3: $21 $1B $C7
    ld a, $4C                                     ; $5AC6: $3E $4C
    ld [hl+], a                                   ; $5AC8: $22
    ld a, $F5                                     ; $5AC9: $3E $F5
    ld [hl+], a                                   ; $5ACB: $22
    ld a, $4A                                     ; $5ACC: $3E $4A
    ld [hl+], a                                   ; $5ACE: $22
    ld a, $66                                     ; $5ACF: $3E $66
    ld [hl+], a                                   ; $5AD1: $22
    ld a, $0A                                     ; $5AD2: $3E $0A
    ld [hl+], a                                   ; $5AD4: $22
    jr jr_005_5AE9                                ; $5AD5: $18 $12

jr_005_5AD7:
    ld hl, $C71B                                  ; $5AD7: $21 $1B $C7
    ld a, $4C                                     ; $5ADA: $3E $4C
    ld [hl+], a                                   ; $5ADC: $22
    ld a, $0A                                     ; $5ADD: $3E $0A
    ld [hl+], a                                   ; $5ADF: $22
    ld a, $4B                                     ; $5AE0: $3E $4B
    ld [hl+], a                                   ; $5AE2: $22
    ld a, $66                                     ; $5AE3: $3E $66
    ld [hl+], a                                   ; $5AE5: $22
    ld a, $0A                                     ; $5AE6: $3E $0A
    ld [hl+], a                                   ; $5AE8: $22

jr_005_5AE9:
    Do_CallForeign UNK_AwaitTextEnd
    pop hl                                        ; $5AF1: $E1

Jump_005_5AF2:
    inc hl                                        ; $5AF2: $23
    ld a, [wBattle_TempCounter]                                 ; $5AF3: $FA $74 $D0
    dec a                                         ; $5AF6: $3D
    ld [wBattle_TempCounter], a                                 ; $5AF7: $EA $74 $D0
    jp nz, Jump_005_5A4D                          ; $5AFA: $C2 $4D $5A

    ld a, [$D075]                                 ; $5AFD: $FA $75 $D0
    ld b, $08                                     ; $5B00: $06 $08
    ld c, $01                                     ; $5B02: $0E $01
    ld hl, wBattle_CreatureSlots.Ally0                                  ; $5B04: $21 $92 $D0

jr_005_5B07:
    bit 0, a                                      ; $5B07: $CB $47
    jr z, jr_005_5B0C                             ; $5B09: $28 $01

    ld [hl], c                                    ; $5B0B: $71

jr_005_5B0C:
    srl a                                         ; $5B0C: $CB $3F
    jr z, jr_005_5B16                             ; $5B0E: $28 $06

    dec b                                         ; $5B10: $05
    jr z, jr_005_5B16                             ; $5B11: $28 $03

    inc hl                                        ; $5B13: $23
    jr jr_005_5B07                                ; $5B14: $18 $F1

jr_005_5B16:
    ld hl, $D0A5                                  ; $5B16: $21 $A5 $D0
    ld bc, $D091                                  ; $5B19: $01 $91 $D0
    ld d, $0A                                     ; $5B1C: $16 $0A

jr_005_5B1E:
    ld a, [hl+]                                   ; $5B1E: $2A
    and a                                         ; $5B1F: $A7
    jr z, jr_005_5B24                             ; $5B20: $28 $02

    xor a                                         ; $5B22: $AF
    ld [bc], a                                    ; $5B23: $02

jr_005_5B24:
    dec d                                         ; $5B24: $15
    ret z                                         ; $5B25: $C8

    inc bc                                        ; $5B26: $03
    jr jr_005_5B1E                                ; $5B27: $18 $F5

    ; $5B29
Battle_CheckTarget_AllAlly:
    ; A function that checks if there are same-team creatures, excluding the requesting creature
    ; Due to a bug, in the case of Battle_TARGET_ALLALLY_MAGI, it does not check for an allied magi
    ;   and is identical to Battle_TARGET_ALLALLY
    ; Outputs:
    ;   wBattle_CurCreature_ValidBattleCmd = 1 if (team has non-self creature) else 0

    ; This check excludes the requesting creature
    ; Temporarily pretend that the requesting creature does not exist
    ; We will restore the creature before we ret
    Get8 c, wBattle_CurCreature_Slot
    ld b, $00
    res 7, c
    ld hl, wBattle_CreatureSlots
    add hl, bc
    xor a
    ld [hl], a

    ; Figure out who the same-team creatures are
    ld a, [wBattle_CurCreature_Slot]
    bit 7, a
    jr z, .HeroTeam
    .EnemyTeam:
        ld hl, wBattle_CreatureSlots.Enemy0
        jr .CreatureCheck
    .HeroTeam:
        ld hl, wBattle_CreatureSlots.Ally0

    .CreatureCheck:
    ; If there is at least 1 same-team creature, success
    ld b, $04
    .CreatureCheckLoop:
        ld a, [hl+]
        and a
        jr nz, .Valid
        dec b
        jr nz, .CreatureCheckLoop


    ; We are supposed to compared between Battle_TARGET_ALLALLY and Battle_TARGET_ALLALLY_MAGI
    ; In the case of Battle_TARGET_ALLALLY we would return invalid
    ; However, due to the bug, we check the wrong Enum
    ; Therefore, this check will always return .Invalid
    ld a, [wBattle_TargetMode]
    cp Battle_TARGET_ALLENEMY_MAGI ; BUG!! This should be Battle_TARGET_ALLALLY
    jr nz, .Invalid

    ; Due to the aforementioned bug, Battle_TARGET_ALLALLY_MAGI never manages to do this check
    ; The hero's team always has a magi
    ld a, [wBattle_CurCreature_Slot]
    bit 7, a
    jr z, ._Valid

    ; The enemy's team - we have to check to see if there is a magi or not
    ld a, [wBattle_CreatureSlots.Magi]
    cp $00
    jr z, .Invalid
    jr .Valid

    ._Valid:
        jr .Valid

    .Invalid:
        xor a
        ld [wBattle_CurCreature_ValidBattleCmd], a
        ; Restore the creature
        Get8 c, wBattle_CurCreature_Slot
        ld b, $00
        res 7, c
        ld hl, wBattle_CreatureSlots
        add hl, bc
        Set8 hl, $01
        ret

    .Valid:
        Set8 wBattle_CurCreature_ValidBattleCmd, $01
        ; Restore the creature
        Get8 c, wBattle_CurCreature_Slot
        ld b, $00
        res 7, c
        ld hl, wBattle_CreatureSlots
        add hl, bc
        Set8 hl, $01
        ret

    ; $5B91
Battle_CheckTarget_AllEnemy:
    ; Checks to see if the team has a magi
    ; Output:
    ;   wBattle_CurCreature_ValidBattleCmd = 1 if (team has a magi) else 0

    ; Which team is requesting?
    ld a, [wBattle_CurCreature_Slot]
    bit 7, a
    jr z, .HeroTeam
    .EnemyTeam:
        ld hl, wBattle_CreatureSlots.Ally0
        jr .CreatureCheck

    .HeroTeam:
        ld hl, wBattle_CreatureSlots.Enemy0
        ;jr .CreatureCheck

    .CreatureCheck:
    ; If the opposing team has at least 1 creature, then valid
    ld b, $04
    .CreatureCheckLoop:
        ld a, [hl+]
        cp $00
        jr nz, .Valid
        dec b
        jr nz, .CreatureCheckLoop

    ; If Battle_TARGET_ALLENEMY, then invalid as we need at least 1 creature
    ld a, [wBattle_TargetMode]
    cp Battle_TARGET_ALLENEMY_MAGI
    jr nz, .Invalid

    ; If Battle_TARGET_ALLENEMY_MAGI, then we can still success if the opponent has a magi
    ld a, [wBattle_CurCreature_Slot]
    bit 7, a
    jr z, .EnemyHasMagi
    .HeroHasMagi:
        ; Hero always has a magi, so pass
        jr .Valid
    .EnemyHasMagi:
        ; Check if enemy magi exists
        ld a, [wBattle_CreatureSlots.Magi]
        cp $00
        jr z, .Invalid
        jr .Valid

    .Invalid:
        xor a
        ld [wBattle_CurCreature_ValidBattleCmd], a
        ret
    .Valid:
        Set8 wBattle_CurCreature_ValidBattleCmd, $01
        ret

    ; $5BCE
Battle_CheckTarget_AllyMagi:
    ; Checks to see if the team has a magi
    ; Output:
    ;   wBattle_CurCreature_ValidBattleCmd = 1 if (team has a magi) else 0

    ; Hero's team always has a magi
    ld a, [wBattle_CurCreature_Slot]
    bit 7, a
    jr z, .Valid

    ; For enemy's team, check if magi exists
    ld a, [wBattle_CreatureSlots.Magi]
    cp 0
    jr nz, .Valid

    .Invalid:
        xor a
        ld [wBattle_CurCreature_ValidBattleCmd], a
        ret
    .Valid:
        Set8 wBattle_CurCreature_ValidBattleCmd, $01
        ret

    ; $5BE7
Battle_CheckTarget_AnyCreature:
    ; Check to see if there is at least 1 creature on the board
    ; Output:
    ;   wBattle_CurCreature_ValidBattleCmd = 1 if (at least one creature on the board) else 0
    ld hl, wBattle_CreatureSlots.Ally0
    ld d, $08
    .CheckLoop:
        ld a, [hl+]
        and a
        jr nz, .FoundCreature
        dec d
        jr nz, .CheckLoop
    .NoCreature:
    xor a
    ld [wBattle_CurCreature_ValidBattleCmd], a
    ret

    .FoundCreature:
        Set8 wBattle_CurCreature_ValidBattleCmd, $01
    ret

    ; $5BFE
Battle_CheckTarget_AlwaysValid::
    ; Always valid
    ; Output:
    ;   wBattle_CurCreature_ValidBattleCmd = 1
    Set8 wBattle_CurCreature_ValidBattleCmd, $01
    ret

    ; $5C04
Battle_CheckTarget_EmptyCard:
    ; Check if the requester is the hero or the enemy
    ; Then check to see if the target side of the board has at least 1 empty card
    ;   (a card with a pending summon is considered non-empty)
    ; Output:
    ;   wBattle_CurCreature_ValidBattleCmd = 1 (if empty card exists on target side of board) else 0
    ld a, [wBattle_CurCreature_Slot]
    bit 7, a
    jr z, .HeroTeam
    .EnemyTeam:
        ; If the requester is the enemy, then "allied" cards are the enemy cards, and "enemy" cards are the ally cards
        ld a, [wBattle_TargetMode]
        cp Battle_TARGET_ALLYEMPTY
        jr nz, .CheckHeroCards ; Battle_TARGET_ENEMYEMPTY
        jr .CheckEnemyCards
    .HeroTeam:
        ; If the requester is the hero, then allied cards are the ally cards, and enemy cards are the enemy cards
        ld a, [wBattle_TargetMode]
        cp Battle_TARGET_ALLYEMPTY
        jr nz, .CheckEnemyCards ; Battle_TARGET_ENEMYEMPTY
        ;jr .CheckHeroCards


    .CheckHeroCards:
        ld hl, wBattle_CreatureSlots.Ally0
        ld bc, $D07E ; Todo - creatures being summoned?
        jr .DoCheck
    .CheckEnemyCards:
        ld hl, wBattle_CreatureSlots.Enemy0
        ld bc, $D082 ; Todo - creatures being summoned?
        ;jr .DoCheck

    .DoCheck:
    ; Let's check to see if at least one out of the 4 target cards is empty
    ld d, $04
    .CheckLoop:
        ld a, [hl+]
        cp $00
        jr z, .EmptySlot
        .ContinueLoop:
        inc bc
        dec d
        jr nz, .CheckLoop

    .AllFull:
    ; All 4 card slots are non-empty, so refuse the command
    xor a
    ld [wBattle_CurCreature_ValidBattleCmd], a
    ret

    .EmptySlot:
        ; Even though the slot appears empty, maybe there is a creature summon that is pending
        ; in which case the slot is not truely empty
        ld a, [bc]
        cp $00
        jr nz, .ContinueLoop

        ; Slot is truely empty! Command is valid
        Set8 wBattle_CurCreature_ValidBattleCmd, $01
        ret

    ; $5C44
Battle_CheckTarget_EnemyMagi:
    ; Checks to see if the target magi is targettable
    ; -If Battle_TARGET_ENEMYMAGI_EVASION, enemy magi must exist
    ; -If Battle_TARGET_ENEMYMAGI, enemy magi must exist and not be protected by creatures
    ; Output:
    ;   wBattle_CurCreature_ValidBattleCmd = 1 if valid else 0
    ld a, [wBattle_CurCreature_Slot]
    bit 7, a
    jr z, .HeroTeam
    .EnemyTeam:
        ; If Evasion, hero team always has a magi
        ld a, [wBattle_TargetMode]
        cp Battle_TARGET_ENEMYMAGI_EVASION
        jr z, .Valid

        ; Otherwise, check for defending creatures
        ld hl, wBattle_CreatureSlots.Ally0
        ld b, $04
        jr .CheckCreatureLoop
    .HeroTeam:
        ; Make sure that enemy team has a magi
        ld a, [wBattle_CreatureSlots.Magi]
        cp $00
        jr z, .Invalid

        ; If Evasion, then valid
        ld a, [wBattle_TargetMode]
        cp Battle_TARGET_ENEMYMAGI_EVASION
        jr z, .Valid

        ; Otherwise, check for defending creatures
        ld hl, wBattle_CreatureSlots.Enemy0
        ld b, $04
        ;jr .CheckCreatureLoop

    .CheckCreatureLoop:
        ; If we have at least 1 defending creature, then invalid
        ld a, [hl+]
        cp $00
        jr nz, .Invalid
        dec b
        jr nz, .CheckCreatureLoop
    jr .Valid

    .Invalid:
        xor a
        ld [wBattle_CurCreature_ValidBattleCmd], a
        ret
    .Valid:
        Set8 wBattle_CurCreature_ValidBattleCmd, $01
        ret


    ; $5C81
Battle_Helpers_VBlank_DrawMenuCreatureIcon::
    ; Draws the target card into the battle menu
    ; Inputs:
    ;   wBattle_CurCreature_CardTileID = TileID of the topleft corner of the card
    ;   The source rVBK is assumed to be 0 since we only ever use this function for allied creatures
    SwitchRAMBank BANK("WRAM BATTLE")
    xor a
    ld [rVBK], a
    ld hl, BATTLE_MENU_TILEMAP_CARD
    ld a, [wBattle_CurCreature_CardTileID]
    ld de, (SCRN_VX_B - 4) ; Card is 4 wide and 5 tall

    ; TILEIDS
    ; Copy the first 4 rows
    REPT 4
        ; Copy a row
        REPT 4
            ld [hl+], a
            inc a
        ENDR
        add hl, de
    ENDR
    ; The 5th row:
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a

    ; ATTRIBUTES
    ld hl, BATTLE_MENU_TILEMAP_CARD
    Set8 rVBK, $01
    ld a, BATTLE_MENU_TILEMAP_CARD_ATTR
    REPT 4
        ld [hl+], a
        ld [hl+], a
        ld [hl+], a
        ld [hl+], a
        add hl, de
    ENDR
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

    xor a
    ld [wVBlank_Bank], a
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret

    ; $5CF1
Battle_MagiAnimTable::
    dw .Tony
    dw .Togoth
    dw .Ogar
    dw .Korremar
    dw .Warrada
    dw .Korg
    dw .Zet
    dw .Morag
    dw .Agram
    dw .Agram
    dw .Agram
    dw .ShadowMagi1
    dw .ShadowMagi2
    dw .ShadowMagi3
    dw .ShadowMagi4
    dw .ShadowMagi5
    dw .ShadowMagi6
    dw .ShadowMagi7
    dw .ShadowMagi8
    dw .Salafy

    .ShadowMagi1::
        BankAddress SCRIPT_ANIM_ShadowMagi1Battle_Idle
        BankAddress SCRIPT_ANIM_ShadowMagi1Battle_Taunt
        BankAddress SCRIPT_ANIM_ShadowMagi1Battle_Summon
        BankAddress SCRIPT_ANIM_ShadowMagi1Battle_Victory
        BankAddress SCRIPT_ANIM_ShadowMagi1Battle_Defeat

    .ShadowMagi2::
        BankAddress SCRIPT_ANIM_ShadowMagi2Battle_Idle
        BankAddress SCRIPT_ANIM_ShadowMagi2Battle_Taunt
        BankAddress SCRIPT_ANIM_ShadowMagi2Battle_Summon
        BankAddress SCRIPT_ANIM_ShadowMagi2Battle_Victory
        BankAddress SCRIPT_ANIM_ShadowMagi2Battle_Defeat

    .ShadowMagi3::
        BankAddress SCRIPT_ANIM_ShadowMagi3Battle_Idle
        BankAddress SCRIPT_ANIM_ShadowMagi3Battle_Taunt
        BankAddress SCRIPT_ANIM_ShadowMagi3Battle_Summon
        BankAddress SCRIPT_ANIM_ShadowMagi3Battle_Victory
        BankAddress SCRIPT_ANIM_ShadowMagi3Battle_Defeat

    .ShadowMagi4::
        BankAddress SCRIPT_ANIM_ShadowMagi4Battle_Idle
        BankAddress SCRIPT_ANIM_ShadowMagi4Battle_Taunt
        BankAddress SCRIPT_ANIM_ShadowMagi4Battle_Summon
        BankAddress SCRIPT_ANIM_ShadowMagi4Battle_Victory
        BankAddress SCRIPT_ANIM_ShadowMagi4Battle_Defeat

    .ShadowMagi5::
        BankAddress SCRIPT_ANIM_ShadowMagi5Battle_Idle
        BankAddress SCRIPT_ANIM_ShadowMagi5Battle_Taunt
        BankAddress SCRIPT_ANIM_ShadowMagi5Battle_Summon
        BankAddress SCRIPT_ANIM_ShadowMagi5Battle_Victory
        BankAddress SCRIPT_ANIM_ShadowMagi5Battle_Defeat

    .ShadowMagi6::
        BankAddress SCRIPT_ANIM_ShadowMagi6Battle_Idle
        BankAddress SCRIPT_ANIM_ShadowMagi6Battle_Taunt
        BankAddress SCRIPT_ANIM_ShadowMagi6Battle_Summon
        BankAddress SCRIPT_ANIM_ShadowMagi6Battle_Victory
        BankAddress SCRIPT_ANIM_ShadowMagi6Battle_Defeat

    .ShadowMagi7::
        BankAddress SCRIPT_ANIM_ShadowMagi7Battle_Idle
        BankAddress SCRIPT_ANIM_ShadowMagi7Battle_Taunt
        BankAddress SCRIPT_ANIM_ShadowMagi7Battle_Summon
        BankAddress SCRIPT_ANIM_ShadowMagi7Battle_Victory
        BankAddress SCRIPT_ANIM_ShadowMagi7Battle_Defeat

    .ShadowMagi8::
        BankAddress SCRIPT_ANIM_ShadowMagi8Battle_Idle
        BankAddress SCRIPT_ANIM_ShadowMagi8Battle_Taunt
        BankAddress SCRIPT_ANIM_ShadowMagi8Battle_Summon
        BankAddress SCRIPT_ANIM_ShadowMagi8Battle_Victory
        BankAddress SCRIPT_ANIM_ShadowMagi8Battle_Defeat

    .Agram::
        BankAddress SCRIPT_ANIM_AgramBattle_Idle
        BankAddress SCRIPT_ANIM_AgramBattle_Taunt
        BankAddress SCRIPT_ANIM_AgramBattle_Summon
        BankAddress SCRIPT_ANIM_AgramBattle_Victory
        BankAddress SCRIPT_ANIM_AgramBattle_Defeat

    .Korg::
        BankAddress SCRIPT_ANIM_KorgBattle_Idle
        BankAddress SCRIPT_ANIM_KorgBattle_Taunt
        BankAddress SCRIPT_ANIM_KorgBattle_Summon
        BankAddress SCRIPT_ANIM_KorgBattle_Victory
        BankAddress SCRIPT_ANIM_KorgBattle_Defeat

    .Korremar::
        BankAddress SCRIPT_ANIM_KorremarBattle_Idle
        BankAddress SCRIPT_ANIM_KorremarBattle_Taunt
        BankAddress SCRIPT_ANIM_KorremarBattle_Summon
        BankAddress SCRIPT_ANIM_KorremarBattle_Victory
        BankAddress SCRIPT_ANIM_KorremarBattle_Defeat

    .Morag::
        BankAddress SCRIPT_ANIM_MoragBattle_Idle
        BankAddress SCRIPT_ANIM_MoragBattle_Taunt
        BankAddress SCRIPT_ANIM_MoragBattle_Summon
        BankAddress SCRIPT_ANIM_MoragBattle_Victory
        BankAddress SCRIPT_ANIM_MoragBattle_Defeat

    .Ogar::
        BankAddress SCRIPT_ANIM_OgarBattle_Idle
        BankAddress SCRIPT_ANIM_OgarBattle_Taunt
        BankAddress SCRIPT_ANIM_OgarBattle_Summon
        BankAddress SCRIPT_ANIM_OgarBattle_Victory
        BankAddress SCRIPT_ANIM_OgarBattle_Defeat

    .Togoth::
        BankAddress SCRIPT_ANIM_TogothBattle_Idle
        BankAddress SCRIPT_ANIM_TogothBattle_Taunt
        BankAddress SCRIPT_ANIM_TogothBattle_Summon
        BankAddress SCRIPT_ANIM_TogothBattle_Victory
        BankAddress SCRIPT_ANIM_TogothBattle_Defeat

    .Warrada::
        BankAddress SCRIPT_ANIM_WarradaBattle_Idle
        BankAddress SCRIPT_ANIM_WarradaBattle_Taunt
        BankAddress SCRIPT_ANIM_WarradaBattle_Summon
        BankAddress SCRIPT_ANIM_WarradaBattle_Victory
        BankAddress SCRIPT_ANIM_WarradaBattle_Defeat

    .Zet::
        BankAddress SCRIPT_ANIM_ZetBattle_Idle
        BankAddress SCRIPT_ANIM_ZetBattle_Taunt
        BankAddress SCRIPT_ANIM_ZetBattle_Summon
        BankAddress SCRIPT_ANIM_ZetBattle_Victory
        BankAddress SCRIPT_ANIM_ZetBattle_Defeat

    .Tony::
        BankAddress SCRIPT_ANIM_TonyBattle_Idle
        BankAddress SCRIPT_ANIM_TonyBattle_Taunt
        BankAddress SCRIPT_ANIM_TonyBattle_Summon
        BankAddress SCRIPT_ANIM_TonyBattle_Victory
        BankAddress SCRIPT_ANIM_TonyBattle_Defeat
        BankAddress SCRIPT_ANIM_TonyBattle_Focus
        BankAddress SCRIPT_ANIM_TonyBattle_Choose

    .Salafy::
        BankAddress SCRIPT_ANIM_SalafyBattle_Idle
        BankAddress SCRIPT_ANIM_SalafyBattle_Taunt
        BankAddress SCRIPT_ANIM_SalafyBattle_Summon
        BankAddress SCRIPT_ANIM_SalafyBattle_Victory
        BankAddress SCRIPT_ANIM_SalafyBattle_Defeat

    ld b, c                                       ; $5E2D: $41
    adc c                                         ; $5E2E: $89
    ld [hl], b                                    ; $5E2F: $70
    ld b, c                                       ; $5E30: $41
    or [hl]                                       ; $5E31: $B6
    ld [hl], b                                    ; $5E32: $70
    ld b, c                                       ; $5E33: $41
    rst $30                                       ; $5E34: $F7
    ld l, a                                       ; $5E35: $6F
    ld b, c                                       ; $5E36: $41
    push af                                       ; $5E37: $F5
    ld l, [hl]                                    ; $5E38: $6E
    ld b, c                                       ; $5E39: $41
    inc e                                         ; $5E3A: $1C
    ld [hl], b                                    ; $5E3B: $70
    ld b, c                                       ; $5E3C: $41
    dec [hl]                                      ; $5E3D: $35
    ld [hl], b                                    ; $5E3E: $70
    ld b, c                                       ; $5E3F: $41
    call z, $416E                                 ; $5E40: $CC $6E $41
    push hl                                       ; $5E43: $E5
    ld l, [hl]                                    ; $5E44: $6E

BattleCmd_GetByteFromAddress::
    ; A not very useful function...
    ; Gets one byte of data from the address table when you provide the address within the table...
    ; Inputs:
    ;   wBattle_CopyBuffer_Source - pointer within BattleCmd_Table
    ; Outputs:
    ;   d = [[wBattle_CopyBuffer_Source]]
    FGet16 hl, wBattle_CopyBuffer_Source
    ld d, [hl]
    ret

    ; $5E4D
BattleCmd_GetDataFromAddress::
    ; Inputs:
    ;   wBattle_CopyBuffer_Source = address of the target command in the BattleCmd_Table
    ; Outputs:
    ;   wBattle_CopyBuffer_Destination - contains the copied data
    FGet16 bc, wBattle_CopyBuffer_Source
    ld hl, wBattle_CopyBuffer_Destination
    DerefHL
    ld d, BATTLECMD_STRUCT_SIZE
    .Loop:
        LdHLIBCI
        dec d
        jr nz, .Loop
    ret

    ; $5E62
BattleCmd_GetNameAndEnergy::
    ; Get the name of the ability, given its address in the data table
    ; 
    ; Inputs:
    ;   wMenu_BattleCmd_TablePointer - Pointer to the ability, or null ($0000)
    ;   wMenu_BattleCmd_DestBuffer - Pointer to the 7-byte or 11-byte buffer where the name will be written
    ;   wMenu_BattleCmd_GetEnergyFlag - If non-zero, it will store the energy cost on offset 8. Total space of buffer required is $0B because it can pad with zeros
    ; Outputs:
    ;  [wMenu_BattleCmd_DestBuffer]:
    ;        db "CMDNAME" (or "       " if null pointer)
    ;        if wMenu_BattleCmd_GetEnergyFlag
    ;            db " ", ENERGYCOST (if pointer is defined)
    ;            db $00, $00, $00, $00 (if null pointer) - bug - an extra 2 bytes are defined if the pointer is a null-pointer. I guess originally the cost was going to be split into the individual digits? e.g. 2,0,0 for 200

    ; Get the ability pointer and check if null or not
    FGet16 bc, wMenu_BattleCmd_TablePointer
    ld a, b
    or c
    jr z, .NullAbility
    .NotNull:
        ; Get the ability's name
        ld hl, abilityDataName
        add hl, bc
        ld b, h
        ld c, l
        ; Copy the name
        FGet16 hl, wMenu_BattleCmd_DestBuffer
        ld d, BATTLECMD_STRUCT_NAMESIZE
        .CopyLetters:
            LdHLIBCI
            dec d
            jr nz, .CopyLetters
        ; Check if the energy cost is requested
        ld a, [wMenu_BattleCmd_GetEnergyFlag]
        and a
        ret z

        ld a, " "
        ld [hl+], a
        Get16 bc, wMenu_BattleCmd_TablePointer
        inc bc
        inc bc  ;abilityDataEnergyCost
        ld a, [bc]
        ld [hl], a
        ret

    .NullAbility: ;Paste 7 spaces and $00 x 4 instead of the energy cost
        FGet16 hl, wMenu_BattleCmd_DestBuffer
        ld a, " "
        ld d, BATTLECMD_STRUCT_NAMESIZE
        .LoopSpaces:
            ld [hl+], a
            dec d
            jr nz, .LoopSpaces

        ld a, [wMenu_BattleCmd_GetEnergyFlag]
        and a
        ret z

        xor a
        ld [hl+], a
        ld [hl+], a
        ld [hl+], a ; bug - extra 2 bytes that are not set if ability is defined
        ld [hl+], a ; bug - extra 2 bytes that are not set if ability is defined
        ret

    ; $5EAE
BattleCmd_Table::
    BattleCmd_Struct BattleCmd_FIGHT,   BattleCmd_517D, 0,      Battle_TARGET_ANY,              0,  $00,    elementNone,        80,     240, "Fight 🡆"
    BattleCmd_Struct BattleCmd_SUMMON,  BattleCmd_5272, 0,      Battle_TARGET_ALLYEMPTY,        1,  $04,    elementNone,        0,      0,   "Summon "
    BattleCmd_Struct BattleCmd_SUMMONX, BattleCmd_5331, 0,      Battle_TARGET_ALLYEMPTY,        0,  $04,    elementNone,        0,      0,   "SummonX"
    BattleCmd_Struct BattleCmd_ITEM,    BattleCmd_50E6, 0,      Battle_TARGET_DEPENDANT,        2,  $05,    elementNone,        0,      0,   "Item   "
    BattleCmd_Struct BattleCmd_RUN,     BattleCmd_51D2, 0,      Battle_TARGET_NONE,             0,  $00,    elementNone,        1,      252, "Run    "
    BattleCmd_Struct BattleCmd_SPELL,   BattleCmd_5207, 0,      Battle_TARGET_DEPENDANT,        3,  $00,    elementNone,        0,      0,   "Spell  "
    BattleCmd_Struct BattleCmd_FOCUS,   BattleCmd_504A, 0,      Battle_TARGET_ME,               0,  $09,    elementNone,        0,      0,   "Focus  "
    BattleCmd_Struct BattleCmd_BARRAGE, BattleCmd_47D0, 12,     Battle_TARGET_ALLENEMY,         0,  $80,    elementNone,        100,    230, "Barrage"
    BattleCmd_Struct BattleCmd_BEAM,    BattleCmd_47DA, 12,     Battle_TARGET_ANY,              0,  $00,    elementEarth,       230,    243, "Beam   "
    BattleCmd_Struct BattleCmd_BITE,    BattleCmd_47E4, 5,      Battle_TARGET_ANY,              0,  $80,    elementNone,        100,    243, "Bite   "
    BattleCmd_Struct BattleCmd_BLAST,   BattleCmd_47EE, 10,     Battle_TARGET_ANY,              0,  $80,    elementWind,        200,    243, "Blast  "
    BattleCmd_Struct BattleCmd_BLAZE,   BattleCmd_47F8, 8,      Battle_TARGET_ANY,              0,  $00,    elementFire,        160,    243, "Blaze  "
    BattleCmd_Struct BattleCmd_BOOST,   BattleCmd_4802, 15,     Battle_TARGET_ALLALLY_ME,       0,  $05,    elementElectrical,  0,      230, "Boost  "
    BattleCmd_Struct BattleCmd_BRAMBLE, BattleCmd_4838, 20,     Battle_TARGET_ANY,              0,  $00,    elementGrass,       180,    243, "Bramble"
    BattleCmd_Struct BattleCmd_BURROW,  BattleCmd_4850, 5,      Battle_TARGET_ME,               0,  $05,    elementEarth,       0,      255, "Burrow "
    BattleCmd_Struct BattleCmd_CARNAGE, BattleCmd_4865, 12,     Battle_TARGET_ALLENEMY,         0,  $80,    elementNone,        100,    230, "Carnage"
    BattleCmd_Struct BattleCmd_CHARGE,  BattleCmd_486F, 8,      Battle_TARGET_ANY,              0,  $05,    elementElectrical,  0,      243, "Charge "
    BattleCmd_Struct BattleCmd_CHOKE,   BattleCmd_48A5, 10,     Battle_TARGET_ANY,              0,  $80,    elementNone,        125,    243, "Choke  "
    BattleCmd_Struct BattleCmd_CLAW,    BattleCmd_48E3, 8,      Battle_TARGET_ANY,              0,  $80,    elementNone,        160,    243, "Claw   "
    BattleCmd_Struct BattleCmd_COIL,    BattleCmd_48ED, 8,      Battle_TARGET_ANY,              0,  $00,    elementShadow,      0,      243, "Coil   "
    BattleCmd_Struct BattleCmd_CONSUME, BattleCmd_4929, 10,     Battle_TARGET_ANY,              0,  $80,    elementNone,        160,    243, "Consume"
    BattleCmd_Struct BattleCmd_CRACK,   BattleCmd_4951, 10,     Battle_TARGET_ANY,              0,  $00,    elementEarth,       200,    243, "Crack  "
    BattleCmd_Struct BattleCmd_CREMATE, BattleCmd_495B, 20,     Battle_TARGET_ANY,              0,  $00,    elementFire,        180,    243, "Cremate"
    BattleCmd_Struct BattleCmd_CRUMBLE, BattleCmd_4973, 8,      Battle_TARGET_ANY,              0,  $00,    elementEarth,       160,    243, "Crumble"
    BattleCmd_Struct BattleCmd_CRUSH,   BattleCmd_497D, 20,     Battle_TARGET_ANY,              0,  $80,    elementNone,        180,    243, "Crush  "
    BattleCmd_Struct BattleCmd_CURSE,   BattleCmd_4995, 10,     Battle_TARGET_ANY,              0,  $00,    elementShadow,      200,    243, "Curse  "
    BattleCmd_Struct BattleCmd_CUTE,    BattleCmd_499F, 5,      Battle_TARGET_ANY,              0,  $00,    elementGrass,       0,      243, "Cute   "
    BattleCmd_Struct BattleCmd_CYCLONE, BattleCmd_49BC, 12,     Battle_TARGET_ALLENEMY,         0,  $80,    elementWind,        100,    230, "Cyclone"
    BattleCmd_Struct BattleCmd_DEVOUR,  BattleCmd_49C6, 20,     Battle_TARGET_ANY,              0,  $80,    elementNone,        180,    243, "Devour "
    BattleCmd_Struct BattleCmd_DREAM,   BattleCmd_49DE, 0,      Battle_TARGET_ME,               0,  $05,    elementWind,        0,      255, "Dream  "
    BattleCmd_Struct BattleCmd_DROWN,   BattleCmd_49F7, 20,     Battle_TARGET_ANY,              0,  $00,    elementWater,       180,    243, "Drown  "
    BattleCmd_Struct BattleCmd_FANG,    BattleCmd_4A0F, 8,      Battle_TARGET_ANY,              0,  $80,    elementNone,        160,    243, "Fang   "
    BattleCmd_Struct BattleCmd_FLAME,   BattleCmd_4A19, 5,      Battle_TARGET_ANY,              0,  $00,    elementFire,        100,    243, "Flame  "
    BattleCmd_Struct BattleCmd_FLASH,   BattleCmd_4A23, 12,     Battle_TARGET_ALLENEMY,         0,  $00,    elementElectrical,  0,      230, "Flash  "
    BattleCmd_Struct BattleCmd_FLOCK,   BattleCmd_4A40, 35,     Battle_TARGET_ALLENEMY,         0,  $00,    elementWind,        175,    230, "Flock  "
    BattleCmd_Struct BattleCmd_FORTUNE, BattleCmd_4A4A, 8,      Battle_TARGET_ANY,              0,  $05,    elementGrass,       0,      243, "Fortune"
    BattleCmd_Struct BattleCmd_FRENZY,  BattleCmd_4A80, 12,     Battle_TARGET_ALLENEMY,         0,  $80,    elementNone,        100,    230, "Frenzy "
    BattleCmd_Struct BattleCmd_GALE,    BattleCmd_4A8A, 8,      Battle_TARGET_ANY,              0,  $80,    elementWind,        160,    243, "Gale   "
    BattleCmd_Struct BattleCmd_GOO,     BattleCmd_4A94, 8,      Battle_TARGET_ANY,              0,  $00,    elementEarth,       0,      243, "Goo    "
    BattleCmd_Struct BattleCmd_GRAVITY, BattleCmd_4AC8, 12,     Battle_TARGET_ALLENEMY,         0,  $00,    elementShadow,      100,    230, "Gravity"
    BattleCmd_Struct BattleCmd_GUST,    BattleCmd_4AD2, 5,      Battle_TARGET_ANY,              0,  $80,    elementWind,        100,    243, "Gust   "
    BattleCmd_Struct BattleCmd_HAUNT,   BattleCmd_4ADC, 8,      Battle_TARGET_ANY,              0,  $00,    elementShadow,      160,    243, "Haunt  "
    BattleCmd_Struct BattleCmd_HEAL,    BattleCmd_4AE6, 3,      Battle_TARGET_ANY,              0,  $05,    elementGrass,       0,      243, "Heal   "
    BattleCmd_Struct BattleCmd_IGNITE,  BattleCmd_4B01, 10,     Battle_TARGET_ANY,              0,  $00,    elementFire,        125,    243, "Ignite "
    BattleCmd_Struct BattleCmd_IMPALE,  BattleCmd_4B27, 10,     Battle_TARGET_ANY_EVASION,      0,  $80,    elementNone,        160,    243, "Impale "
    BattleCmd_Struct BattleCmd_INFECT,  BattleCmd_4B31, 8,      Battle_TARGET_ANY,              0,  $00,    elementShadow,      150,    243, "Infect "
    BattleCmd_Struct BattleCmd_INFERNO, BattleCmd_4B4A, 12,     Battle_TARGET_ALLENEMY,         0,  $00,    elementFire,        100,    230, "Inferno"
    BattleCmd_Struct BattleCmd_INK,     BattleCmd_4B54, 5,      Battle_TARGET_ME,               0,  $05,    elementWater,       0,      255, "Ink    "
    BattleCmd_Struct BattleCmd_JIGGLE,  BattleCmd_4B69, 8,      Battle_TARGET_ALLENEMY,         0,  $00,    elementEarth,       80,     230, "Jiggle "
    BattleCmd_Struct BattleCmd_JOLT,    BattleCmd_4B73, 10,     Battle_TARGET_ANY,              0,  $00,    elementElectrical,  200,    243, "Jolt   "
    BattleCmd_Struct BattleCmd_LAMP,    BattleCmd_4B7D, 8,      Battle_TARGET_ANY,              0,  $00,    elementEarth,       0,      243, "Lamp   "
    BattleCmd_Struct BattleCmd_LEAF,    BattleCmd_4BB9, 5,      Battle_TARGET_ANY,              0,  $00,    elementGrass,       100,    243, "Leaf   "
    BattleCmd_Struct BattleCmd_MAGMA,   BattleCmd_4BC3, 10,     Battle_TARGET_ANY,              0,  $00,    elementFire,        200,    243, "Magma  "
    BattleCmd_Struct BattleCmd_MAUL,    BattleCmd_4BCD, 10,     Battle_TARGET_ANY,              0,  $80,    elementNone,        200,    243, "Maul   "
    BattleCmd_Struct BattleCmd_MELODY,  BattleCmd_4BD7, 12,     Battle_TARGET_ALLENEMY,         0,  $00,    elementShadow,      0,      230, "Melody "
    BattleCmd_Struct BattleCmd_MEND,    BattleCmd_4BF4, 5,      Battle_TARGET_ALLALLY,          0,  $05,    elementGrass,       0,      230, "Mend   "
    BattleCmd_Struct BattleCmd_MIST,    BattleCmd_4C0A, 15,     Battle_TARGET_ALLALLY_ME,       0,  $05,    elementWater,       0,      230, "Mist   "
    BattleCmd_Struct BattleCmd_MUNCH,   BattleCmd_4C40, 10,     Battle_TARGET_ANY,              0,  $80,    elementNone,        200,    243, "Munch  "
    BattleCmd_Struct BattleCmd_PACK,    BattleCmd_4C4A, 35,     Battle_TARGET_ALLENEMY,         0,  $80,    elementNone,        175,    230, "Pack   "
    BattleCmd_Struct BattleCmd_PETRIFY, BattleCmd_4C54, 20,     Battle_TARGET_ANY,              0,  $00,    elementEarth,       180,    243, "Petrify"
    BattleCmd_Struct BattleCmd_PINCH,   BattleCmd_4C6C, 3,      Battle_TARGET_ANY,              0,  $80,    elementNone,        150,    127, "Pinch  "
    BattleCmd_Struct BattleCmd_POLLEN,  BattleCmd_4C76, 5,      Battle_TARGET_ANY,              0,  $00,    elementGrass,       0,      243, "Pollen "
    BattleCmd_Struct BattleCmd_PRISM,   BattleCmd_4C93, 5,      Battle_TARGET_ANY,              0,  $05,    elementWind,        0,      243, "Prism  "
    BattleCmd_Struct BattleCmd_PUMMEL,  BattleCmd_4CA8, 8,      Battle_TARGET_ANY,              0,  $80,    elementNone,        160,    243, "Pummel "
    BattleCmd_Struct BattleCmd_PUNCH,   BattleCmd_4CB2, 5,      Battle_TARGET_ANY,              0,  $80,    elementNone,        100,    243, "Punch  "
    BattleCmd_Struct BattleCmd_QUAKE,   BattleCmd_4CBC, 20,     Battle_TARGET_ALL_ME,           0,  $00,    elementEarth,       200,    230, "Quake  "
    BattleCmd_Struct BattleCmd_ROAR,    BattleCmd_4CC6, 8,      Battle_TARGET_ANY,              0,  $00,    elementWind,        0,      243, "Roar   "
    BattleCmd_Struct BattleCmd_ROOTS,   BattleCmd_4D02, 8,      Battle_TARGET_ANY,              0,  $00,    elementGrass,       160,    243, "Roots  "
    BattleCmd_Struct BattleCmd_SCRATCH, BattleCmd_4D0C, 5,      Battle_TARGET_ANY,              0,  $80,    elementNone,        100,    243, "Scratch"
    BattleCmd_Struct BattleCmd_SEVER,   BattleCmd_4D16, 20,     Battle_TARGET_ANY,              0,  $80,    elementNone,        180,    243, "Sever  "
    BattleCmd_Struct BattleCmd_SHADE,   BattleCmd_4D2E, 5,      Battle_TARGET_ANY,              0,  $00,    elementShadow,      100,    243, "Shade  "
    BattleCmd_Struct BattleCmd_SHAKE,   BattleCmd_4D38, 5,      Battle_TARGET_ANY,              0,  $00,    elementEarth,       100,    243, "Shake  "
    BattleCmd_Struct BattleCmd_SHIELD,  BattleCmd_4D42, 8,      Battle_TARGET_ME,               0,  $05,    elementEarth,       0,      255, "Shield "
    BattleCmd_Struct BattleCmd_SHOCK,   BattleCmd_4D78, 8,      Battle_TARGET_ANY,              0,  $00,    elementElectrical,  160,    243, "Shock  "
    BattleCmd_Struct BattleCmd_SHRED,   BattleCmd_4D82, 20,     Battle_TARGET_ANY,              0,  $80,    elementNone,        180,    243, "Shred  "
    BattleCmd_Struct BattleCmd_SLIDE,   BattleCmd_4D9A, 3,      Battle_TARGET_ME,               0,  $05,    elementEarth,       0,      255, "Slide  "
    BattleCmd_Struct BattleCmd_SOAR,    BattleCmd_4DAF, 8,      Battle_TARGET_ME,               0,  $85,    elementWind,        0,      243, "Soar   "
    BattleCmd_Struct BattleCmd_SONIC,   BattleCmd_4DE5, 15,     Battle_TARGET_ANY,              0,  $00,    elementWind,        125,    243, "Sonic  "
    BattleCmd_Struct BattleCmd_SPARK,   BattleCmd_4E1D, 5,      Battle_TARGET_ANY,              0,  $00,    elementElectrical,  100,    243, "Spark  "
    BattleCmd_Struct BattleCmd_SPONGE,  BattleCmd_4E27, 8,      Battle_TARGET_ME,               0,  $05,    elementWater,       0,      255, "Sponge "
    BattleCmd_Struct BattleCmd_SPORE,   BattleCmd_4E5D, 15,     Battle_TARGET_ALLENEMY,         0,  $00,    elementEarth,       100,    230, "Spore  "
    BattleCmd_Struct BattleCmd_SQUIRT,  BattleCmd_4E7C, 5,      Battle_TARGET_ANY,              0,  $00,    elementWater,       100,    243, "Squirt "
    BattleCmd_Struct BattleCmd_STING,   BattleCmd_4E86, 10,     Battle_TARGET_ANY,              0,  $80,    elementWater,       100,    243, "Sting  "
    BattleCmd_Struct BattleCmd_STORM,   BattleCmd_4EA5, 12,     Battle_TARGET_ALLENEMY,         0,  $00,    elementElectrical,  100,    230, "Storm  "
    BattleCmd_Struct BattleCmd_SWARM,   BattleCmd_4EAF, 20,     Battle_TARGET_ALLENEMY,         0,  $00,    elementWind,        175,    230, "Swarm  "
    BattleCmd_Struct BattleCmd_SWING,   BattleCmd_4EB9, 5,      Battle_TARGET_ANY,              0,  $00,    elementGrass,       0,      243, "Swing  "
    BattleCmd_Struct BattleCmd_SYPHON,  BattleCmd_4ECE, 30,     Battle_TARGET_ALLENEMY_MAGI,    0,  $00,    elementGrass,       90,     230, "Syphon "
    BattleCmd_Struct BattleCmd_TACKLE,  BattleCmd_4EE8, 10,     Battle_TARGET_ANY,              0,  $80,    elementNone,        200,    243, "Tackle "
    BattleCmd_Struct BattleCmd_TANGLE,  BattleCmd_4EF2, 12,     Battle_TARGET_ALLENEMY,         0,  $00,    elementGrass,       100,    230, "Tangle "
    BattleCmd_Struct BattleCmd_TEMPEST, BattleCmd_4EFC, 12,     Battle_TARGET_ALLENEMY,         0,  $00,    elementWater,       100,    230, "Tempest"
    BattleCmd_Struct BattleCmd_TERROR,  BattleCmd_4F06, 20,     Battle_TARGET_ANY,              0,  $00,    elementShadow,      180,    243, "Terror "
    BattleCmd_Struct BattleCmd_THORNS,  BattleCmd_4F1E, 10,     Battle_TARGET_ANY,              0,  $00,    elementGrass,       200,    243, "Thorns "
    BattleCmd_Struct BattleCmd_THRUST,  BattleCmd_4F28, 10,     Battle_TARGET_ANY,              0,  $80,    elementNone,        200,    243, "Thrust "
    BattleCmd_Struct BattleCmd_THUNDER, BattleCmd_4F32, 20,     Battle_TARGET_ANY,              0,  $00,    elementElectrical,  180,    243, "Thunder"
    BattleCmd_Struct BattleCmd_TICTOC,  BattleCmd_4F4A, 5,      Battle_TARGET_ANY,              0,  $00,    elementShadow,      0,      243, "Tic Toc"
    BattleCmd_Struct BattleCmd_TIDE,    BattleCmd_4F5F, 8,      Battle_TARGET_ANY,              0,  $00,    elementWater,       160,    243, "Tide   "
    BattleCmd_Struct BattleCmd_TIMBER,  BattleCmd_4F69, 20,     Battle_TARGET_ALLENEMY,         0,  $00,    elementGrass,       175,    230, "Timber "
    BattleCmd_Struct BattleCmd_TSUNAMI, BattleCmd_4F73, 10,     Battle_TARGET_ANY,              0,  $00,    elementWater,       200,    243, "Tsunami"
    BattleCmd_Struct BattleCmd_TURTLE,  BattleCmd_4F7D, 8,      Battle_TARGET_ME,               0,  $05,    elementWater,       0,      255, "Turtle "
    BattleCmd_Struct BattleCmd_VAMPIRE, BattleCmd_4FB3, 10,     Battle_TARGET_ANY,              0,  $00,    elementShadow,      160,    243, "Vampire"
    BattleCmd_Struct BattleCmd_VORTEX,  BattleCmd_4FCD, 20,     Battle_TARGET_ANY,              0,  $80,    elementWind,        180,    243, "Vortex "
    BattleCmd_Struct BattleCmd_WHIRL,   BattleCmd_4FE5, 12,     Battle_TARGET_ALLENEMY,         0,  $00,    elementWater,       75,     230, "Whirl  "
    BattleCmd_Struct BattleCmd_WRECK,   BattleCmd_5032, 20,     Battle_TARGET_ALLENEMY,         0,  $00,    elementEarth,       175,    230, "Wreck  "

    db $DF, $68, $36, $69, $88, $69, $08, $6A, $60, $6A, $B1, $6A, $31, $6B, $9E, $6B
    db $AE, $65, $B5, $65, $B5, $65, $B5, $65, $BC, $65

    db $C3                                        ; $6538: $C3
    ld h, l                                       ; $6539: $65

    db $BC, $65

    db $C3                                        ; $653C: $C3
    ld h, l                                       ; $653D: $65

    db $AE, $65, $B5, $65, $B5, $65, $B5, $65, $BC, $65

    db $C3                                        ; $6548: $C3
    ld h, l                                       ; $6549: $65

    db $BC, $65

    db $C3                                        ; $654C: $C3
    ld h, l                                       ; $654D: $65

    db $AE, $65

    jp z, $E465                                   ; $6550: $CA $65 $E4

    ld h, l                                       ; $6553: $65

    db $FF, $65, $25, $66

    ld [hl], $66                                  ; $6558: $36 $66
    ld d, e                                       ; $655A: $53
    ld h, [hl]                                    ; $655B: $66

    db $BC, $65, $AE, $65, $B5, $65

    or l                                          ; $6562: $B5
    ld h, l                                       ; $6563: $65

    db $B5, $65, $BC, $65

    db $C3                                        ; $6568: $C3
    ld h, l                                       ; $6569: $65

    db $BC, $65, $C3, $65, $AE, $65, $B5, $65

    or l                                          ; $6572: $B5
    ld h, l                                       ; $6573: $65

    db $B5, $65, $BC, $65

    db $C3                                        ; $6578: $C3
    ld h, l                                       ; $6579: $65

    db $BC, $65

    db $C3                                        ; $657C: $C3
    ld h, l                                       ; $657D: $65

    db $AE, $65

    jp z, $E465                                   ; $6580: $CA $65 $E4

    ld h, l                                       ; $6583: $65

    db $FF, $65, $25, $66

    ld [hl], $66                                  ; $6588: $36 $66
    ld d, e                                       ; $658A: $53
    ld h, [hl]                                    ; $658B: $66

    db $BC, $65, $AE, $65

    ld [hl], b                                    ; $6590: $70
    ld h, [hl]                                    ; $6591: $66
    adc e                                         ; $6592: $8B
    ld h, [hl]                                    ; $6593: $66

    db $A6, $66, $CC, $66

    db $DD                                        ; $6598: $DD
    ld h, [hl]                                    ; $6599: $66
    db $FA                                        ; $659A: $FA
    ld h, [hl]                                    ; $659B: $66

    db $B5, $65, $AE, $65

    ld [hl], b                                    ; $65A0: $70
    ld h, [hl]                                    ; $65A1: $66
    adc e                                         ; $65A2: $8B
    ld h, [hl]                                    ; $65A3: $66

    db $A6, $66, $CC, $66

    db $DD                                        ; $65A8: $DD
    ld h, [hl]                                    ; $65A9: $66
    db $FA                                        ; $65AA: $FA
    ld h, [hl]                                    ; $65AB: $66

    db $B5, $65

    call Object_MoveX                            ; $65AE: $CD $B1 $67
    call Object_MoveY                            ; $65B1: $CD $E7 $67
    ret                                           ; $65B4: $C9


    call Object_MoveX                            ; $65B5: $CD $B1 $67
    call Call_005_675A                            ; $65B8: $CD $5A $67
    ret                                           ; $65BB: $C9


    call Call_005_6717                            ; $65BC: $CD $17 $67
    call Object_MoveY                            ; $65BF: $CD $E7 $67
    ret                                           ; $65C2: $C9


    call Call_005_6717                            ; $65C3: $CD $17 $67
    call Call_005_675A                            ; $65C6: $CD $5A $67
    ret                                           ; $65C9: $C9


    ld a, [wColl_YMove]                                 ; $65CA: $FA $D3 $C6
    cp $00                                        ; $65CD: $FE $00
    jr nz, jr_005_65DD                            ; $65CF: $20 $0C

    ld a, [hActor.YOffset]                                 ; $65D1: $FA $90 $FF
    cp $09                                        ; $65D4: $FE $09
    jr c, jr_005_65E0                             ; $65D6: $38 $08

    ld a, $FF                                     ; $65D8: $3E $FF
    ld [wColl_YMove], a                                 ; $65DA: $EA $D3 $C6

jr_005_65DD:
    call Object_MoveY                            ; $65DD: $CD $E7 $67

jr_005_65E0:
    call Object_MoveX                            ; $65E0: $CD $B1 $67
    ret                                           ; $65E3: $C9


    ld a, [wColl_YMove]                                 ; $65E4: $FA $D3 $C6
    cp $00                                        ; $65E7: $FE $00
    jr nz, jr_005_65F7                            ; $65E9: $20 $0C

    ld a, [hActor.YOffset]                                 ; $65EB: $FA $90 $FF
    cp $08                                        ; $65EE: $FE $08
    jr nc, jr_005_65FB                            ; $65F0: $30 $09

    ld a, $01                                     ; $65F2: $3E $01
    ld [wColl_YMove], a                                 ; $65F4: $EA $D3 $C6

jr_005_65F7:
    call Object_MoveY                            ; $65F7: $CD $E7 $67
    ret                                           ; $65FA: $C9


jr_005_65FB:
    call Object_MoveX                            ; $65FB: $CD $B1 $67
    ret                                           ; $65FE: $C9


    ld a, [wColl_YMove]                                 ; $65FF: $FA $D3 $C6
    cp $00                                        ; $6602: $FE $00
    jr nz, jr_005_6614                            ; $6604: $20 $0E

    ld a, [hActor.YOffset]                                 ; $6606: $FA $90 $FF
    cp $08                                        ; $6609: $FE $08
    jr z, jr_005_6621                             ; $660B: $28 $14

    jr nc, jr_005_6618                            ; $660D: $30 $09

    ld a, $01                                     ; $660F: $3E $01
    ld [wColl_YMove], a                                 ; $6611: $EA $D3 $C6

jr_005_6614:
    call Object_MoveY                            ; $6614: $CD $E7 $67
    ret                                           ; $6617: $C9


jr_005_6618:
    ld a, $FF                                     ; $6618: $3E $FF
    ld [wColl_YMove], a                                 ; $661A: $EA $D3 $C6
    call Object_MoveY                            ; $661D: $CD $E7 $67
    ret                                           ; $6620: $C9


jr_005_6621:
    call Object_MoveX                            ; $6621: $CD $B1 $67
    ret                                           ; $6624: $C9


    call Call_005_6717                            ; $6625: $CD $17 $67
    ld a, [wColl_YMove]                                 ; $6628: $FA $D3 $C6
    cp $00                                        ; $662B: $FE $00
    jr nz, jr_005_6632                            ; $662D: $20 $03

    call Call_005_6787                            ; $662F: $CD $87 $67

jr_005_6632:
    call Object_MoveY                            ; $6632: $CD $E7 $67
    ret                                           ; $6635: $C9


    ld hl, $C6D6                                  ; $6636: $21 $D6 $C6
    ld a, [hl]                                    ; $6639: $7E
    and a                                         ; $663A: $A7
    jr z, jr_005_6640                             ; $663B: $28 $03

    dec [hl]                                      ; $663D: $35
    jr jr_005_664F                                ; $663E: $18 $0F

jr_005_6640:
    call Call_005_6717                            ; $6640: $CD $17 $67
    ld a, [wColl_YMove]                                 ; $6643: $FA $D3 $C6
    cp $00                                        ; $6646: $FE $00
    jr nz, jr_005_664F                            ; $6648: $20 $05

    ld a, $FF                                     ; $664A: $3E $FF
    ld [wColl_YMove], a                                 ; $664C: $EA $D3 $C6

jr_005_664F:
    call Object_MoveY                            ; $664F: $CD $E7 $67
    ret                                           ; $6652: $C9


    ld hl, $C6D6                                  ; $6653: $21 $D6 $C6
    ld a, [hl]                                    ; $6656: $7E
    and a                                         ; $6657: $A7
    jr z, jr_005_665D                             ; $6658: $28 $03

    dec [hl]                                      ; $665A: $35
    jr jr_005_666C                                ; $665B: $18 $0F

jr_005_665D:
    call Call_005_6717                            ; $665D: $CD $17 $67
    ld a, [wColl_YMove]                                 ; $6660: $FA $D3 $C6
    cp $00                                        ; $6663: $FE $00
    jr nz, jr_005_666C                            ; $6665: $20 $05

    ld a, $01                                     ; $6667: $3E $01
    ld [wColl_YMove], a                                 ; $6669: $EA $D3 $C6

jr_005_666C:
    call Object_MoveY                            ; $666C: $CD $E7 $67
    ret                                           ; $666F: $C9


    ld a, [wColl_XMove]                                 ; $6670: $FA $D2 $C6
    cp $00                                        ; $6673: $FE $00
    jr nz, jr_005_6683                            ; $6675: $20 $0C

    ld a, [hActor.XOffset]                                 ; $6677: $FA $8F $FF
    cp $09                                        ; $667A: $FE $09
    jr c, jr_005_6687                             ; $667C: $38 $09

    ld a, $FF                                     ; $667E: $3E $FF
    ld [wColl_XMove], a                                 ; $6680: $EA $D2 $C6

jr_005_6683:
    call Object_MoveX                            ; $6683: $CD $B1 $67
    ret                                           ; $6686: $C9


jr_005_6687:
    call Object_MoveY                            ; $6687: $CD $E7 $67
    ret                                           ; $668A: $C9


    ld a, [wColl_XMove]                                 ; $668B: $FA $D2 $C6
    cp $00                                        ; $668E: $FE $00
    jr nz, jr_005_669E                            ; $6690: $20 $0C

    ld a, [hActor.XOffset]                                 ; $6692: $FA $8F $FF
    cp $08                                        ; $6695: $FE $08
    jr nc, jr_005_66A2                            ; $6697: $30 $09

    ld a, $01                                     ; $6699: $3E $01
    ld [wColl_XMove], a                                 ; $669B: $EA $D2 $C6

jr_005_669E:
    call Object_MoveX                            ; $669E: $CD $B1 $67
    ret                                           ; $66A1: $C9


jr_005_66A2:
    call Object_MoveY                            ; $66A2: $CD $E7 $67
    ret                                           ; $66A5: $C9


    ld a, [wColl_XMove]                                 ; $66A6: $FA $D2 $C6
    cp $00                                        ; $66A9: $FE $00
    jr nz, jr_005_66BB                            ; $66AB: $20 $0E

    ld a, [hActor.XOffset]                                 ; $66AD: $FA $8F $FF
    cp $08                                        ; $66B0: $FE $08
    jr z, jr_005_66C8                             ; $66B2: $28 $14

    jr nc, jr_005_66BF                            ; $66B4: $30 $09

    ld a, $01                                     ; $66B6: $3E $01
    ld [wColl_XMove], a                                 ; $66B8: $EA $D2 $C6

jr_005_66BB:
    call Object_MoveX                            ; $66BB: $CD $B1 $67
    ret                                           ; $66BE: $C9


jr_005_66BF:
    ld a, $FF                                     ; $66BF: $3E $FF
    ld [wColl_XMove], a                                 ; $66C1: $EA $D2 $C6
    call Object_MoveX                            ; $66C4: $CD $B1 $67
    ret                                           ; $66C7: $C9


jr_005_66C8:
    call Object_MoveY                            ; $66C8: $CD $E7 $67
    ret                                           ; $66CB: $C9


    ld a, [wColl_XMove]                                 ; $66CC: $FA $D2 $C6
    cp $00                                        ; $66CF: $FE $00
    jr nz, jr_005_66D6                            ; $66D1: $20 $03

    call Call_005_673E                            ; $66D3: $CD $3E $67

jr_005_66D6:
    call Object_MoveX                            ; $66D6: $CD $B1 $67
    call Call_005_675A                            ; $66D9: $CD $5A $67
    ret                                           ; $66DC: $C9


    ld hl, $C6D6                                  ; $66DD: $21 $D6 $C6
    ld a, [hl]                                    ; $66E0: $7E
    and a                                         ; $66E1: $A7
    jr z, jr_005_66E7                             ; $66E2: $28 $03

    dec [hl]                                      ; $66E4: $35
    jr jr_005_66F6                                ; $66E5: $18 $0F

jr_005_66E7:
    call Call_005_675A                            ; $66E7: $CD $5A $67
    ld a, [wColl_XMove]                                 ; $66EA: $FA $D2 $C6
    cp $00                                        ; $66ED: $FE $00
    jr nz, jr_005_66F6                            ; $66EF: $20 $05

    ld a, $FF                                     ; $66F1: $3E $FF
    ld [wColl_XMove], a                                 ; $66F3: $EA $D2 $C6

jr_005_66F6:
    call Object_MoveX                            ; $66F6: $CD $B1 $67
    ret                                           ; $66F9: $C9


    ld hl, $C6D6                                  ; $66FA: $21 $D6 $C6
    ld a, [hl]                                    ; $66FD: $7E
    and a                                         ; $66FE: $A7
    jr z, jr_005_6704                             ; $66FF: $28 $03

    dec [hl]                                      ; $6701: $35
    jr jr_005_6713                                ; $6702: $18 $0F

jr_005_6704:
    call Call_005_675A                            ; $6704: $CD $5A $67
    ld a, [wColl_XMove]                                 ; $6707: $FA $D2 $C6
    cp $00                                        ; $670A: $FE $00
    jr nz, jr_005_6713                            ; $670C: $20 $05

    ld a, $01                                     ; $670E: $3E $01
    ld [wColl_XMove], a                                 ; $6710: $EA $D2 $C6

jr_005_6713:
    call Object_MoveX                            ; $6713: $CD $B1 $67
    ret                                           ; $6716: $C9


Call_005_6717:
    ld hl, hActor.XOffset                                  ; $6717: $21 $8F $FF
    ld a, [wColl_XMove]                                 ; $671A: $FA $D2 $C6
    ld b, a                                       ; $671D: $47
    bit 7, a                                      ; $671E: $CB $7F
    jr z, jr_005_6730                             ; $6720: $28 $0E

    ld a, [hl]                                    ; $6722: $7E
    add b                                         ; $6723: $80
    cp $08                                        ; $6724: $FE $08
    jr nc, jr_005_672E                            ; $6726: $30 $06

    xor a                                         ; $6728: $AF
    ld [wColl_XMove], a                                 ; $6729: $EA $D2 $C6
    ld a, $08                                     ; $672C: $3E $08

jr_005_672E:
    ld [hl], a                                    ; $672E: $77
    ret                                           ; $672F: $C9


jr_005_6730:
    ld a, [hl]                                    ; $6730: $7E
    add b                                         ; $6731: $80
    cp $08                                        ; $6732: $FE $08
    jr c, jr_005_673C                             ; $6734: $38 $06

    xor a                                         ; $6736: $AF
    ld [wColl_XMove], a                                 ; $6737: $EA $D2 $C6
    ld a, $08                                     ; $673A: $3E $08

jr_005_673C:
    ld [hl], a                                    ; $673C: $77
    ret                                           ; $673D: $C9


Call_005_673E:
    ld a, [hActor.XOffset]                                 ; $673E: $FA $8F $FF
    cp $00                                        ; $6741: $FE $00
    jr z, jr_005_6754                             ; $6743: $28 $0F

    cp $0F                                        ; $6745: $FE $0F
    jr z, jr_005_674E                             ; $6747: $28 $05

    xor a                                         ; $6749: $AF
    ld [wColl_XMove], a                                 ; $674A: $EA $D2 $C6
    ret                                           ; $674D: $C9


jr_005_674E:
    ld a, $01                                     ; $674E: $3E $01
    ld [wColl_XMove], a                                 ; $6750: $EA $D2 $C6
    ret                                           ; $6753: $C9


jr_005_6754:
    ld a, $FF                                     ; $6754: $3E $FF
    ld [wColl_XMove], a                                 ; $6756: $EA $D2 $C6
    ret                                           ; $6759: $C9


Call_005_675A:
    ld hl, hActor.YOffset                                  ; $675A: $21 $90 $FF
    ld a, [wColl_YMove]                                 ; $675D: $FA $D3 $C6
    ld b, a                                       ; $6760: $47
    bit 7, a                                      ; $6761: $CB $7F
    jr z, jr_005_6776                             ; $6763: $28 $11

    ld a, [hl]                                    ; $6765: $7E
    add b                                         ; $6766: $80
    cp $08                                        ; $6767: $FE $08
    ld [wColl_YMove], a                                 ; $6769: $EA $D3 $C6
    jr nc, jr_005_6774                            ; $676C: $30 $06

    xor a                                         ; $676E: $AF
    ld [wColl_YMove], a                                 ; $676F: $EA $D3 $C6
    ld a, $08                                     ; $6772: $3E $08

jr_005_6774:
    ld [hl], a                                    ; $6774: $77
    ret                                           ; $6775: $C9


jr_005_6776:
    ld a, [hl]                                    ; $6776: $7E
    add b                                         ; $6777: $80
    cp $08                                        ; $6778: $FE $08
    ld [wColl_YMove], a                                 ; $677A: $EA $D3 $C6
    jr c, jr_005_6785                             ; $677D: $38 $06

    xor a                                         ; $677F: $AF
    ld [wColl_YMove], a                                 ; $6780: $EA $D3 $C6
    ld a, $08                                     ; $6783: $3E $08

jr_005_6785:
    ld [hl], a                                    ; $6785: $77
    ret                                           ; $6786: $C9


Call_005_6787:
    ld a, [hActor.YOffset]                                 ; $6787: $FA $90 $FF
    cp $00                                        ; $678A: $FE $00
    jr z, jr_005_679D                             ; $678C: $28 $0F

    cp $0F                                        ; $678E: $FE $0F
    jr z, jr_005_6797                             ; $6790: $28 $05

    xor a                                         ; $6792: $AF
    ld [wColl_YMove], a                                 ; $6793: $EA $D3 $C6
    ret                                           ; $6796: $C9


jr_005_6797:
    ld a, $01                                     ; $6797: $3E $01
    ld [wColl_YMove], a                                 ; $6799: $EA $D3 $C6
    ret                                           ; $679C: $C9


jr_005_679D:
    ld a, $FF                                     ; $679D: $3E $FF
    ld [wColl_YMove], a                                 ; $679F: $EA $D3 $C6
    ret                                           ; $67A2: $C9

    ; $67A3
Coll_FreeMove::
    ; Updates the position of the current Object
    SwitchRAMBank $05
    call Object_MoveX
    call Object_MoveY
    ret

    ; $67B1
Object_MoveX:
    ; Updates the X-position of the current Object
    ; Inputs:
    ;   wColl_XMove
    ;   hActor.XTile
    ;   hActor.XOffset
    ;   hActor.TileAddress
    ; Output:
    ;   hActor.XOffset += wColl_XMove
    ;   hActor.XTile and hActor.TileAddress adjusted by 1 if the Subtile overflows
    ld a, [wColl_XMove]
    ld b, a
    and a
    ret z ;Skip if no DeltaX

    ld hl, hActor.XOffset
    ld a, [hl]
    add b
    bit 4, a
    jr z, .UpdateXSubtile ;Subtile did not overflow

        and $0F ;Subtile overflowed to either -1 or $10
        ld [hl], a ;Store the modulo value into the subtile
        ld a, [hActor.TileAddress+1]
        ld h, a
        ld a, [hActor.TileAddress]
        ld l, a
        ld a, [hActor.XTile]
        bit 7, b
        jp z, .PositiveOverflow
        ;NegativeOverflow
            dec hl ;Adjust the TileAddress and the XTile +1 or -1 depending on the overflow direction
            dec a
            jr .UpdateXTile
        .PositiveOverflow:
            inc hl
            inc a
    .UpdateXTile:
        ld [hActor.XTile], a
        ld a, h
        ld [hActor.TileAddress+1], a
        ld a, l
        ld [hActor.TileAddress], a
        ret
    .UpdateXSubtile:
        ld [hl], a
        ret

    ; $67E7
Object_MoveY:
    ; Updates the Y-position of the current Object
    ; Inputs:
    ;   wColl_YMove
    ;   hActor.YTile
    ;   hActor.YOffset
    ;   hActor.TileAddress
    ; Output:
    ;   hActor.YOffset += wColl_YMove
    ;   hActor.YTile adjusted by 1 if the Subtile overflows
    ;   hActor.TileAddress adjusted by +-wMapWidth if the Subtile overflows
    ld a, [wColl_YMove] ;See Object_MoveX documentation
    ld b, a
    and a
    ret z

    ld hl, hActor.YOffset
    ld a, [hl]
    add b
    bit 4, a
    jr z, .UpdateYSubtile

        and $0F
        ld [hl], a
        ld a, [hActor.TileAddress+1]
        ld h, a
        ld a, [hActor.TileAddress]
        ld l, a
        ld a, [hActor.YTile]
        ld c, a
        bit 7, b
        jp z, .PositiveOverflow
        ;NegativeOverflow
            ld a, [wMapWidth]
            cpl
            ld e, a
            ld d, $FF
            inc de
            add hl, de ;Adjust the TileAddres by -Width
            dec c
            jr .UpdateYTile
        .PositiveOverflow:
            ld a, [wMapWidth]
            ld e, a
            ld d, $00
            add hl, de ;Adjust the TileAddres by +Width
            inc c
    .UpdateYTile:
        ld a, c
        ld [hActor.YTile], a
        ld a, h
        ld [hActor.TileAddress+1], a
        ld a, l
        ld [hActor.TileAddress], a
        ret
    .UpdateYSubtile:
        ld [hl], a
        ret

Call_005_682D::
    SwitchRAMBank $05
    ld a, [wColl_XMove]                                 ; $6834: $FA $D2 $C6
    ld [wColl_XDelta], a                                 ; $6837: $EA $D0 $C6
    ld b, a                                       ; $683A: $47
    ld a, [wColl_YMove]                                 ; $683B: $FA $D3 $C6
    ld [wColl_YDelta], a                                 ; $683E: $EA $D1 $C6
    or b                                          ; $6841: $B0
    ret z                                         ; $6842: $C8

    ld a, [wColl_YMove]                                 ; $6843: $FA $D3 $C6
    and b                                         ; $6846: $A0
    jr z, jr_005_684E                             ; $6847: $28 $05

    ld a, $02                                     ; $6849: $3E $02
    ld [$C6D6], a                                 ; $684B: $EA $D6 $C6

jr_005_684E:
    call Call_005_6884                            ; $684E: $CD $84 $68
    cp $08                                        ; $6851: $FE $08
    jr nz, jr_005_685C                            ; $6853: $20 $07

    call Object_MoveX                            ; $6855: $CD $B1 $67
    call Object_MoveY                            ; $6858: $CD $E7 $67
    ret                                           ; $685B: $C9


jr_005_685C:
    ld hl, $651E                                  ; $685C: $21 $1E $65
    add a                                         ; $685F: $87
    ld c, a                                       ; $6860: $4F
    add a                                         ; $6861: $87
    add a                                         ; $6862: $87
    ld [$C6D5], a                                 ; $6863: $EA $D5 $C6
    ld b, $00                                     ; $6866: $06 $00
    add hl, bc                                    ; $6868: $09
    ECallHL                                    ; $686C: $CD $89 $07
    ld hl, $C6D5                                  ; $686F: $21 $D5 $C6
    ld a, [hl]                                    ; $6872: $7E
    add c                                         ; $6873: $81
    ld [hl], a                                    ; $6874: $77
    ld hl, $652E                                  ; $6875: $21 $2E $65
    add a                                         ; $6878: $87
    ld c, a                                       ; $6879: $4F
    ld b, $00                                     ; $687A: $06 $00
    add hl, bc                                    ; $687C: $09
    ECallHL                                    ; $6880: $CD $89 $07
    ret                                           ; $6883: $C9


Call_005_6884:
    ld a, $00                                     ; $6884: $3E $00
    ld [$C6D5], a                                 ; $6886: $EA $D5 $C6
    ld a, [wColl_XMove]                                 ; $6889: $FA $D2 $C6
    bit 7, a                                      ; $688C: $CB $7F
    jr z, jr_005_689D                             ; $688E: $28 $0D

    ld b, a                                       ; $6890: $47
    ld a, [hActor.XOffset]                                 ; $6891: $FA $8F $FF
    add b                                         ; $6894: $80
    cp $08                                        ; $6895: $FE $08
    jr nc, jr_005_68AE                            ; $6897: $30 $15

    ld a, $01                                     ; $6899: $3E $01
    jr jr_005_68B0                                ; $689B: $18 $13

jr_005_689D:
    cp $00                                        ; $689D: $FE $00
    jr z, jr_005_68AE                             ; $689F: $28 $0D

    ld b, a                                       ; $68A1: $47
    ld a, [hActor.XOffset]                                 ; $68A2: $FA $8F $FF
    add b                                         ; $68A5: $80
    cp $09                                        ; $68A6: $FE $09
    jr c, jr_005_68AE                             ; $68A8: $38 $04

    ld a, $04                                     ; $68AA: $3E $04
    jr jr_005_68B0                                ; $68AC: $18 $02

jr_005_68AE:
    ld a, $07                                     ; $68AE: $3E $07

jr_005_68B0:
    ld [$C6D5], a                                 ; $68B0: $EA $D5 $C6
    ld a, [wColl_YMove]                                 ; $68B3: $FA $D3 $C6
    bit 7, a                                      ; $68B6: $CB $7F
    jr z, jr_005_68C7                             ; $68B8: $28 $0D

    ld b, a                                       ; $68BA: $47
    ld a, [hActor.YOffset]                                 ; $68BB: $FA $90 $FF
    add b                                         ; $68BE: $80
    cp $08                                        ; $68BF: $FE $08
    jr nc, jr_005_68D8                            ; $68C1: $30 $15

    ld b, $FF                                     ; $68C3: $06 $FF
    jr jr_005_68DA                                ; $68C5: $18 $13

jr_005_68C7:
    cp $00                                        ; $68C7: $FE $00
    jr z, jr_005_68D8                             ; $68C9: $28 $0D

    ld b, a                                       ; $68CB: $47
    ld a, [hActor.YOffset]                                 ; $68CC: $FA $90 $FF
    add b                                         ; $68CF: $80
    cp $09                                        ; $68D0: $FE $09
    jr c, jr_005_68D8                             ; $68D2: $38 $04

    ld b, $00                                     ; $68D4: $06 $00
    jr jr_005_68DA                                ; $68D6: $18 $02

jr_005_68D8:
    ld b, $01                                     ; $68D8: $06 $01

jr_005_68DA:
    ld a, [$C6D5]                                 ; $68DA: $FA $D5 $C6
    add b                                         ; $68DD: $80
    ret                                           ; $68DE: $C9


    ld a, [hActor.TileAddress+1]                                 ; $68DF: $FA $94 $FF
    ld h, a                                       ; $68E2: $67
    ld a, [hActor.TileAddress]                                 ; $68E3: $FA $93 $FF
    ld l, a                                       ; $68E6: $6F
    ld c, $00                                     ; $68E7: $0E $00
    dec hl                                        ; $68E9: $2B
    ld a, [hl]                                    ; $68EA: $7E
    cp $80                                        ; $68EB: $FE $80
    jr nc, jr_005_68FF                            ; $68ED: $30 $10

    cp $08                                        ; $68EF: $FE $08
    jr nc, jr_005_68FD                            ; $68F1: $30 $0A

    ld de, wCollMask                                  ; $68F3: $11 $2A $C1
    add e                                         ; $68F6: $83
    ld e, a                                       ; $68F7: $5F
    ld a, [de]                                    ; $68F8: $1A
    cp $00                                        ; $68F9: $FE $00
    jr z, jr_005_68FF                             ; $68FB: $28 $02

jr_005_68FD:
    set 2, c                                      ; $68FD: $CB $D1

jr_005_68FF:
    ld a, [wMapWidth]                                 ; $68FF: $FA $CF $C6
    ld e, a                                       ; $6902: $5F
    ld d, $00                                     ; $6903: $16 $00
    TwosComp de
    add hl, de                                    ; $690C: $19
    ld a, [hl+]                                   ; $690D: $2A
    cp $80                                        ; $690E: $FE $80
    jr nc, jr_005_6922                            ; $6910: $30 $10

    cp $08                                        ; $6912: $FE $08
    jr nc, jr_005_6920                            ; $6914: $30 $0A

    ld de, wCollMask                                  ; $6916: $11 $2A $C1
    add e                                         ; $6919: $83
    ld e, a                                       ; $691A: $5F
    ld a, [de]                                    ; $691B: $1A
    cp $00                                        ; $691C: $FE $00
    jr z, jr_005_6922                             ; $691E: $28 $02

jr_005_6920:
    set 1, c                                      ; $6920: $CB $C9

jr_005_6922:
    ld a, [hl]                                    ; $6922: $7E
    cp $80                                        ; $6923: $FE $80
    ret nc                                        ; $6925: $D0

    cp $08                                        ; $6926: $FE $08
    jr nc, jr_005_6933                            ; $6928: $30 $09

    ld de, wCollMask                                  ; $692A: $11 $2A $C1
    add e                                         ; $692D: $83
    ld e, a                                       ; $692E: $5F
    ld a, [de]                                    ; $692F: $1A
    cp $00                                        ; $6930: $FE $00
    ret z                                         ; $6932: $C8

jr_005_6933:
    set 0, c                                      ; $6933: $CB $C1
    ret                                           ; $6935: $C9


    ld a, [hActor.TileAddress+1]                                 ; $6936: $FA $94 $FF
    ld h, a                                       ; $6939: $67
    ld a, [hActor.TileAddress]                                 ; $693A: $FA $93 $FF
    ld l, a                                       ; $693D: $6F
    ld c, $00                                     ; $693E: $0E $00
    dec hl                                        ; $6940: $2B
    ld a, [hl]                                    ; $6941: $7E
    cp $80                                        ; $6942: $FE $80
    jr nc, jr_005_6957                            ; $6944: $30 $11

    cp $08                                        ; $6946: $FE $08
    jr nc, jr_005_6955                            ; $6948: $30 $0B

    ld de, wCollMask                                  ; $694A: $11 $2A $C1
    add e                                         ; $694D: $83
    ld e, a                                       ; $694E: $5F
    ld a, [de]                                    ; $694F: $1A
    cp $00                                        ; $6950: $FE $00
    jp z, Jump_005_6957                           ; $6952: $CA $57 $69

jr_005_6955:
    set 2, c                                      ; $6955: $CB $D1

Jump_005_6957:
jr_005_6957:
    ld a, [wMapWidth]                                 ; $6957: $FA $CF $C6
    ld e, a                                       ; $695A: $5F
    ld d, $00                                     ; $695B: $16 $00
    add hl, de                                    ; $695D: $19
    ld a, [hl+]                                   ; $695E: $2A
    cp $80                                        ; $695F: $FE $80
    jr nc, jr_005_6974                            ; $6961: $30 $11

    cp $08                                        ; $6963: $FE $08
    jr nc, jr_005_6972                            ; $6965: $30 $0B

    ld de, wCollMask                                  ; $6967: $11 $2A $C1
    add e                                         ; $696A: $83
    ld e, a                                       ; $696B: $5F
    ld a, [de]                                    ; $696C: $1A
    cp $00                                        ; $696D: $FE $00
    jp z, Jump_005_6974                           ; $696F: $CA $74 $69

jr_005_6972:
    set 1, c                                      ; $6972: $CB $C9

Jump_005_6974:
jr_005_6974:
    ld a, [hl]                                    ; $6974: $7E
    cp $80                                        ; $6975: $FE $80
    ret nc                                        ; $6977: $D0

    cp $08                                        ; $6978: $FE $08
    jr nc, jr_005_6985                            ; $697A: $30 $09

    ld de, wCollMask                                  ; $697C: $11 $2A $C1
    add e                                         ; $697F: $83
    ld e, a                                       ; $6980: $5F
    ld a, [de]                                    ; $6981: $1A
    cp $00                                        ; $6982: $FE $00
    ret z                                         ; $6984: $C8

jr_005_6985:
    set 0, c                                      ; $6985: $CB $C1
    ret                                           ; $6987: $C9


    ld a, [hActor.TileAddress+1]                                 ; $6988: $FA $94 $FF
    ld h, a                                       ; $698B: $67
    ld a, [hActor.TileAddress]                                 ; $698C: $FA $93 $FF
    ld l, a                                       ; $698F: $6F
    ld c, $00                                     ; $6990: $0E $00
    dec hl                                        ; $6992: $2B
    ld a, [hl]                                    ; $6993: $7E
    cp $80                                        ; $6994: $FE $80
    jr nc, jr_005_69A8                            ; $6996: $30 $10

    cp $08                                        ; $6998: $FE $08
    jr nc, jr_005_69A6                            ; $699A: $30 $0A

    ld de, wCollMask                                  ; $699C: $11 $2A $C1
    add e                                         ; $699F: $83
    ld e, a                                       ; $69A0: $5F
    ld a, [de]                                    ; $69A1: $1A
    cp $00                                        ; $69A2: $FE $00
    jr z, jr_005_69A8                             ; $69A4: $28 $02

jr_005_69A6:
    set 2, c                                      ; $69A6: $CB $D1

jr_005_69A8:
    ld a, [hActor.YOffset]                                 ; $69A8: $FA $90 $FF
    cp $08                                        ; $69AB: $FE $08
    jr nz, jr_005_69B4                            ; $69AD: $20 $05

    set 1, c                                      ; $69AF: $CB $C9
    set 0, c                                      ; $69B1: $CB $C1
    ret                                           ; $69B3: $C9


jr_005_69B4:
    jr c, jr_005_69C6                             ; $69B4: $38 $10

    ld a, [wMapWidth]                                 ; $69B6: $FA $CF $C6
    ld e, a                                       ; $69B9: $5F
    ld d, $00                                     ; $69BA: $16 $00
    TwosComp de
    add hl, de                                    ; $69C3: $19
    jr jr_005_69EA                                ; $69C4: $18 $24

jr_005_69C6:
    ld a, [wMapWidth]                                 ; $69C6: $FA $CF $C6
    ld e, a                                       ; $69C9: $5F
    ld d, $00                                     ; $69CA: $16 $00
    TwosComp de
    add hl, de                                    ; $69D3: $19
    ld a, [hl]                                    ; $69D4: $7E
    cp $80                                        ; $69D5: $FE $80
    ret nc                                        ; $69D7: $D0

    cp $08                                        ; $69D8: $FE $08
    jr nc, jr_005_69E5                            ; $69DA: $30 $09

    ld de, wCollMask                                  ; $69DC: $11 $2A $C1
    add e                                         ; $69DF: $83
    ld e, a                                       ; $69E0: $5F
    ld a, [de]                                    ; $69E1: $1A
    cp $00                                        ; $69E2: $FE $00
    ret z                                         ; $69E4: $C8

jr_005_69E5:
    set 1, c                                      ; $69E5: $CB $C9
    set 0, c                                      ; $69E7: $CB $C1
    ret                                           ; $69E9: $C9


jr_005_69EA:
    ld a, [wMapWidth]                                 ; $69EA: $FA $CF $C6
    ld e, a                                       ; $69ED: $5F
    ld d, $00                                     ; $69EE: $16 $00
    add hl, de                                    ; $69F0: $19
    add hl, de                                    ; $69F1: $19
    ld a, [hl]                                    ; $69F2: $7E
    cp $80                                        ; $69F3: $FE $80
    ret nc                                        ; $69F5: $D0

    cp $08                                        ; $69F6: $FE $08
    jr nc, jr_005_6A03                            ; $69F8: $30 $09

    ld de, wCollMask                                  ; $69FA: $11 $2A $C1
    add e                                         ; $69FD: $83
    ld e, a                                       ; $69FE: $5F
    ld a, [de]                                    ; $69FF: $1A
    cp $00                                        ; $6A00: $FE $00
    ret z                                         ; $6A02: $C8

jr_005_6A03:
    set 0, c                                      ; $6A03: $CB $C1
    set 1, c                                      ; $6A05: $CB $C9
    ret                                           ; $6A07: $C9


    ld a, [hActor.TileAddress+1]                                 ; $6A08: $FA $94 $FF
    ld h, a                                       ; $6A0B: $67
    ld a, [hActor.TileAddress]                                 ; $6A0C: $FA $93 $FF
    ld l, a                                       ; $6A0F: $6F
    ld c, $00                                     ; $6A10: $0E $00
    inc hl                                        ; $6A12: $23
    ld a, [hl]                                    ; $6A13: $7E
    cp $80                                        ; $6A14: $FE $80
    jr nc, jr_005_6A28                            ; $6A16: $30 $10

    cp $08                                        ; $6A18: $FE $08
    jr nc, jr_005_6A26                            ; $6A1A: $30 $0A

    ld de, wCollMask                                  ; $6A1C: $11 $2A $C1
    add e                                         ; $6A1F: $83
    ld e, a                                       ; $6A20: $5F
    ld a, [de]                                    ; $6A21: $1A
    cp $00                                        ; $6A22: $FE $00
    jr z, jr_005_6A28                             ; $6A24: $28 $02

jr_005_6A26:
    set 2, c                                      ; $6A26: $CB $D1

jr_005_6A28:
    ld a, [wMapWidth]                                 ; $6A28: $FA $CF $C6
    ld e, a                                       ; $6A2B: $5F
    ld d, $00                                     ; $6A2C: $16 $00
    TwosComp de
    add hl, de                                    ; $6A35: $19
    ld a, [hl]                                    ; $6A36: $7E
    cp $80                                        ; $6A37: $FE $80
    jr nc, jr_005_6A4B                            ; $6A39: $30 $10

    cp $08                                        ; $6A3B: $FE $08
    jr nc, jr_005_6A49                            ; $6A3D: $30 $0A

    ld de, wCollMask                                  ; $6A3F: $11 $2A $C1
    add e                                         ; $6A42: $83
    ld e, a                                       ; $6A43: $5F
    ld a, [de]                                    ; $6A44: $1A
    cp $00                                        ; $6A45: $FE $00
    jr z, jr_005_6A4B                             ; $6A47: $28 $02

jr_005_6A49:
    set 1, c                                      ; $6A49: $CB $C9

jr_005_6A4B:
    dec hl                                        ; $6A4B: $2B
    ld a, [hl]                                    ; $6A4C: $7E
    cp $80                                        ; $6A4D: $FE $80
    ret nc                                        ; $6A4F: $D0

    cp $08                                        ; $6A50: $FE $08
    jr nc, jr_005_6A5D                            ; $6A52: $30 $09

    ld de, wCollMask                                  ; $6A54: $11 $2A $C1
    add e                                         ; $6A57: $83
    ld e, a                                       ; $6A58: $5F
    ld a, [de]                                    ; $6A59: $1A
    cp $00                                        ; $6A5A: $FE $00
    ret z                                         ; $6A5C: $C8

jr_005_6A5D:
    set 0, c                                      ; $6A5D: $CB $C1
    ret                                           ; $6A5F: $C9


    ld a, [hActor.TileAddress+1]                                 ; $6A60: $FA $94 $FF
    ld h, a                                       ; $6A63: $67
    ld a, [hActor.TileAddress]                                 ; $6A64: $FA $93 $FF
    ld l, a                                       ; $6A67: $6F
    ld c, $00                                     ; $6A68: $0E $00
    inc hl                                        ; $6A6A: $23
    ld a, [hl]                                    ; $6A6B: $7E
    cp $80                                        ; $6A6C: $FE $80
    jr nc, jr_005_6A80                            ; $6A6E: $30 $10

    cp $08                                        ; $6A70: $FE $08
    jr nc, jr_005_6A7E                            ; $6A72: $30 $0A

    ld de, wCollMask                                  ; $6A74: $11 $2A $C1
    add e                                         ; $6A77: $83
    ld e, a                                       ; $6A78: $5F
    ld a, [de]                                    ; $6A79: $1A
    cp $00                                        ; $6A7A: $FE $00
    jr z, jr_005_6A80                             ; $6A7C: $28 $02

jr_005_6A7E:
    set 2, c                                      ; $6A7E: $CB $D1

jr_005_6A80:
    ld a, [wMapWidth]                                 ; $6A80: $FA $CF $C6
    ld e, a                                       ; $6A83: $5F
    ld d, $00                                     ; $6A84: $16 $00
    add hl, de                                    ; $6A86: $19
    ld a, [hl]                                    ; $6A87: $7E
    cp $80                                        ; $6A88: $FE $80
    jr nc, jr_005_6A9C                            ; $6A8A: $30 $10

    cp $08                                        ; $6A8C: $FE $08
    jr nc, jr_005_6A9A                            ; $6A8E: $30 $0A

    ld de, wCollMask                                  ; $6A90: $11 $2A $C1
    add e                                         ; $6A93: $83
    ld e, a                                       ; $6A94: $5F
    ld a, [de]                                    ; $6A95: $1A
    cp $00                                        ; $6A96: $FE $00
    jr z, jr_005_6A9C                             ; $6A98: $28 $02

jr_005_6A9A:
    set 1, c                                      ; $6A9A: $CB $C9

jr_005_6A9C:
    dec hl                                        ; $6A9C: $2B
    ld a, [hl]                                    ; $6A9D: $7E
    cp $80                                        ; $6A9E: $FE $80
    ret nc                                        ; $6AA0: $D0

    cp $08                                        ; $6AA1: $FE $08
    jr nc, jr_005_6AAE                            ; $6AA3: $30 $09

    ld de, wCollMask                                  ; $6AA5: $11 $2A $C1
    add e                                         ; $6AA8: $83
    ld e, a                                       ; $6AA9: $5F
    ld a, [de]                                    ; $6AAA: $1A
    cp $00                                        ; $6AAB: $FE $00
    ret z                                         ; $6AAD: $C8

jr_005_6AAE:
    set 0, c                                      ; $6AAE: $CB $C1
    ret                                           ; $6AB0: $C9


    ld a, [hActor.TileAddress+1]                                 ; $6AB1: $FA $94 $FF
    ld h, a                                       ; $6AB4: $67
    ld a, [hActor.TileAddress]                                 ; $6AB5: $FA $93 $FF
    ld l, a                                       ; $6AB8: $6F
    ld c, $00                                     ; $6AB9: $0E $00
    inc hl                                        ; $6ABB: $23
    ld a, [hl]                                    ; $6ABC: $7E
    cp $80                                        ; $6ABD: $FE $80
    jr nc, jr_005_6AD1                            ; $6ABF: $30 $10

    cp $08                                        ; $6AC1: $FE $08
    jr nc, jr_005_6ACF                            ; $6AC3: $30 $0A

    ld de, wCollMask                                  ; $6AC5: $11 $2A $C1
    add e                                         ; $6AC8: $83
    ld e, a                                       ; $6AC9: $5F
    ld a, [de]                                    ; $6ACA: $1A
    cp $00                                        ; $6ACB: $FE $00
    jr z, jr_005_6AD1                             ; $6ACD: $28 $02

jr_005_6ACF:
    set 2, c                                      ; $6ACF: $CB $D1

jr_005_6AD1:
    ld a, [hActor.YOffset]                                 ; $6AD1: $FA $90 $FF
    cp $08                                        ; $6AD4: $FE $08
    jr nz, jr_005_6ADD                            ; $6AD6: $20 $05

    set 1, c                                      ; $6AD8: $CB $C9
    set 0, c                                      ; $6ADA: $CB $C1
    ret                                           ; $6ADC: $C9


jr_005_6ADD:
    jr c, jr_005_6AEF                             ; $6ADD: $38 $10

    ld a, [wMapWidth]                                 ; $6ADF: $FA $CF $C6
    ld e, a                                       ; $6AE2: $5F
    ld d, $00                                     ; $6AE3: $16 $00
    TwosComp de
    add hl, de                                    ; $6AEC: $19
    jr jr_005_6B13                                ; $6AED: $18 $24

jr_005_6AEF:
    ld a, [wMapWidth]                                 ; $6AEF: $FA $CF $C6
    ld e, a                                       ; $6AF2: $5F
    ld d, $00                                     ; $6AF3: $16 $00
    TwosComp de
    add hl, de                                    ; $6AFC: $19
    ld a, [hl]                                    ; $6AFD: $7E
    cp $80                                        ; $6AFE: $FE $80
    ret nc                                        ; $6B00: $D0

    cp $08                                        ; $6B01: $FE $08
    jr nc, jr_005_6B0E                            ; $6B03: $30 $09

    ld de, wCollMask                                  ; $6B05: $11 $2A $C1
    add e                                         ; $6B08: $83
    ld e, a                                       ; $6B09: $5F
    ld a, [de]                                    ; $6B0A: $1A
    cp $00                                        ; $6B0B: $FE $00
    ret z                                         ; $6B0D: $C8

jr_005_6B0E:
    set 1, c                                      ; $6B0E: $CB $C9
    set 0, c                                      ; $6B10: $CB $C1
    ret                                           ; $6B12: $C9


jr_005_6B13:
    ld a, [wMapWidth]                                 ; $6B13: $FA $CF $C6
    ld e, a                                       ; $6B16: $5F
    ld d, $00                                     ; $6B17: $16 $00
    add hl, de                                    ; $6B19: $19
    add hl, de                                    ; $6B1A: $19
    ld a, [hl]                                    ; $6B1B: $7E
    cp $80                                        ; $6B1C: $FE $80
    ret nc                                        ; $6B1E: $D0

    cp $08                                        ; $6B1F: $FE $08
    jr nc, jr_005_6B2C                            ; $6B21: $30 $09

    ld de, wCollMask                                  ; $6B23: $11 $2A $C1
    add e                                         ; $6B26: $83
    ld e, a                                       ; $6B27: $5F
    ld a, [de]                                    ; $6B28: $1A
    cp $00                                        ; $6B29: $FE $00
    ret z                                         ; $6B2B: $C8

jr_005_6B2C:
    set 1, c                                      ; $6B2C: $CB $C9
    set 0, c                                      ; $6B2E: $CB $C1
    ret                                           ; $6B30: $C9


    ld a, [hActor.TileAddress+1]                                 ; $6B31: $FA $94 $FF
    ld h, a                                       ; $6B34: $67
    ld a, [hActor.TileAddress]                                 ; $6B35: $FA $93 $FF
    ld l, a                                       ; $6B38: $6F
    ld c, $00                                     ; $6B39: $0E $00
    ld a, [wMapWidth]                                 ; $6B3B: $FA $CF $C6
    ld e, a                                       ; $6B3E: $5F
    ld d, $00                                     ; $6B3F: $16 $00
    TwosComp de
    add hl, de                                    ; $6B48: $19
    ld a, [hl]                                    ; $6B49: $7E
    cp $80                                        ; $6B4A: $FE $80
    jr nc, jr_005_6B5E                            ; $6B4C: $30 $10

    cp $08                                        ; $6B4E: $FE $08
    jr nc, jr_005_6B5C                            ; $6B50: $30 $0A

    ld de, wCollMask                                  ; $6B52: $11 $2A $C1
    add e                                         ; $6B55: $83
    ld e, a                                       ; $6B56: $5F
    ld a, [de]                                    ; $6B57: $1A
    cp $00                                        ; $6B58: $FE $00
    jr z, jr_005_6B5E                             ; $6B5A: $28 $02

jr_005_6B5C:
    set 2, c                                      ; $6B5C: $CB $D1

jr_005_6B5E:
    ld a, [hActor.XOffset]                                 ; $6B5E: $FA $8F $FF
    cp $08                                        ; $6B61: $FE $08
    jr nz, jr_005_6B6A                            ; $6B63: $20 $05

    set 1, c                                      ; $6B65: $CB $C9
    set 0, c                                      ; $6B67: $CB $C1
    ret                                           ; $6B69: $C9


jr_005_6B6A:
    jr c, jr_005_6B6F                             ; $6B6A: $38 $03

    dec hl                                        ; $6B6C: $2B
    jr jr_005_6B86                                ; $6B6D: $18 $17

jr_005_6B6F:
    dec hl                                        ; $6B6F: $2B
    ld a, [hl]                                    ; $6B70: $7E
    cp $80                                        ; $6B71: $FE $80
    ret nc                                        ; $6B73: $D0

    cp $08                                        ; $6B74: $FE $08
    jr nc, jr_005_6B81                            ; $6B76: $30 $09

    ld de, wCollMask                                  ; $6B78: $11 $2A $C1
    add e                                         ; $6B7B: $83
    ld e, a                                       ; $6B7C: $5F
    ld a, [de]                                    ; $6B7D: $1A
    cp $00                                        ; $6B7E: $FE $00
    ret z                                         ; $6B80: $C8

jr_005_6B81:
    set 1, c                                      ; $6B81: $CB $C9
    set 0, c                                      ; $6B83: $CB $C1
    ret                                           ; $6B85: $C9


jr_005_6B86:
    inc hl                                        ; $6B86: $23
    inc hl                                        ; $6B87: $23
    ld a, [hl]                                    ; $6B88: $7E
    cp $80                                        ; $6B89: $FE $80
    ret nc                                        ; $6B8B: $D0

    cp $08                                        ; $6B8C: $FE $08
    jr nc, jr_005_6B99                            ; $6B8E: $30 $09

    ld de, wCollMask                                  ; $6B90: $11 $2A $C1
    add e                                         ; $6B93: $83
    ld e, a                                       ; $6B94: $5F
    ld a, [de]                                    ; $6B95: $1A
    cp $00                                        ; $6B96: $FE $00
    ret z                                         ; $6B98: $C8

jr_005_6B99:
    set 1, c                                      ; $6B99: $CB $C9
    set 0, c                                      ; $6B9B: $CB $C1
    ret                                           ; $6B9D: $C9


    ld a, [hActor.TileAddress+1]                                 ; $6B9E: $FA $94 $FF
    ld h, a                                       ; $6BA1: $67
    ld a, [hActor.TileAddress]                                 ; $6BA2: $FA $93 $FF
    ld l, a                                       ; $6BA5: $6F
    ld a, [wCollMask]                                 ; $6BA6: $FA $2A $C1
    ld b, a                                       ; $6BA9: $47
    ld c, $00                                     ; $6BAA: $0E $00
    ld a, [wMapWidth]                                 ; $6BAC: $FA $CF $C6
    ld e, a                                       ; $6BAF: $5F
    ld d, $00                                     ; $6BB0: $16 $00
    add hl, de                                    ; $6BB2: $19
    ld a, [hl]                                    ; $6BB3: $7E
    cp $80                                        ; $6BB4: $FE $80
    jr nc, jr_005_6BC8                            ; $6BB6: $30 $10

    cp $08                                        ; $6BB8: $FE $08
    jr nc, jr_005_6BC6                            ; $6BBA: $30 $0A

    ld de, wCollMask                                  ; $6BBC: $11 $2A $C1
    add e                                         ; $6BBF: $83
    ld e, a                                       ; $6BC0: $5F
    ld a, [de]                                    ; $6BC1: $1A
    cp $00                                        ; $6BC2: $FE $00
    jr z, jr_005_6BC8                             ; $6BC4: $28 $02

jr_005_6BC6:
    set 2, c                                      ; $6BC6: $CB $D1

jr_005_6BC8:
    ld a, [hActor.XOffset]                                 ; $6BC8: $FA $8F $FF
    cp $08                                        ; $6BCB: $FE $08
    jr nz, jr_005_6BD4                            ; $6BCD: $20 $05

    set 1, c                                      ; $6BCF: $CB $C9
    set 0, c                                      ; $6BD1: $CB $C1
    ret                                           ; $6BD3: $C9


jr_005_6BD4:
    jr c, jr_005_6BD9                             ; $6BD4: $38 $03

    dec hl                                        ; $6BD6: $2B
    jr jr_005_6BF0                                ; $6BD7: $18 $17

jr_005_6BD9:
    dec hl                                        ; $6BD9: $2B
    ld a, [hl]                                    ; $6BDA: $7E
    cp $80                                        ; $6BDB: $FE $80
    ret nc                                        ; $6BDD: $D0

    cp $08                                        ; $6BDE: $FE $08
    jr nc, jr_005_6BEB                            ; $6BE0: $30 $09

    ld de, wCollMask                                  ; $6BE2: $11 $2A $C1
    add e                                         ; $6BE5: $83
    ld e, a                                       ; $6BE6: $5F
    ld a, [de]                                    ; $6BE7: $1A
    cp $00                                        ; $6BE8: $FE $00
    ret z                                         ; $6BEA: $C8

jr_005_6BEB:
    set 1, c                                      ; $6BEB: $CB $C9
    set 0, c                                      ; $6BED: $CB $C1
    ret                                           ; $6BEF: $C9


jr_005_6BF0:
    inc hl                                        ; $6BF0: $23
    inc hl                                        ; $6BF1: $23
    ld a, [hl]                                    ; $6BF2: $7E
    cp $80                                        ; $6BF3: $FE $80
    ret nc                                        ; $6BF5: $D0

    cp $08                                        ; $6BF6: $FE $08
    jr nc, jr_005_6C03                            ; $6BF8: $30 $09

    ld de, wCollMask                                  ; $6BFA: $11 $2A $C1
    add e                                         ; $6BFD: $83
    ld e, a                                       ; $6BFE: $5F
    ld a, [de]                                    ; $6BFF: $1A
    cp $00                                        ; $6C00: $FE $00
    ret z                                         ; $6C02: $C8

jr_005_6C03:
    set 1, c                                      ; $6C03: $CB $C9
    set 0, c                                      ; $6C05: $CB $C1
    ret                                           ; $6C07: $C9

Collision_Init::
    ld hl, wCollMask                                  ; $6C08: $21 $2A $C1
    xor a                                         ; $6C0B: $AF
    ld [hl+], a                                   ; $6C0C: $22
    cpl                                           ; $6C0D: $2F
    ld [hl+], a                                   ; $6C0E: $22
    ld [hl+], a                                   ; $6C0F: $22
    cpl                                           ; $6C10: $2F
    ld [hl+], a                                   ; $6C11: $22
    cpl                                           ; $6C12: $2F
    ld [hl+], a                                   ; $6C13: $22
    ld [hl+], a                                   ; $6C14: $22
    ld [hl+], a                                   ; $6C15: $22
    ld [hl+], a                                   ; $6C16: $22
    ret                                           ; $6C17: $C9