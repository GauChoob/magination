SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]


    ; $4000
INCLUDE "source/engine/battery/battery_xx.asm"

; source/engine/system/graphics/palette/palette_fx.s

    ; $416B
PaletteFX_Battle_CreatureCycle::
    xor a                                         ; $416B: $AF
    ld [wPalette_VBlankReady], a                                 ; $416C: $EA $31 $C8
    ld a, [wTemp_9.Palette_BattleFX_CreatureSide]                                 ; $416F: $FA $D9 $C9
    and a                                         ; $4172: $A7
    jr nz, jr_007_4199                            ; $4173: $20 $24

    ld hl, wPalette_AnimBuffers.Background                                  ; $4175: $21 $AB $C7
    ld e, $00                                     ; $4178: $1E $00
    ld a, $03                                     ; $417A: $3E $03
    call Palette_PaletteCycleColors                            ; $417C: $CD $B2 $45
    ld hl, wPalette_AnimBuffers.Background                                  ; $417F: $21 $AB $C7
    ld e, $01                                     ; $4182: $1E $01
    ld a, $03                                     ; $4184: $3E $03
    call Palette_PaletteCycleColors                            ; $4186: $CD $B2 $45
    ld hl, wPalette_AnimBuffers.Background                                  ; $4189: $21 $AB $C7
    ld e, $02                                     ; $418C: $1E $02
    ld a, $03                                     ; $418E: $3E $03
    call Palette_PaletteCycleColors                            ; $4190: $CD $B2 $45
    ld a, $01                                     ; $4193: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $4195: $EA $31 $C8
    ret                                           ; $4198: $C9


jr_007_4199:
    ld hl, wPalette_AnimBuffers.Background                                  ; $4199: $21 $AB $C7
    ld e, $03                                     ; $419C: $1E $03
    ld a, $03                                     ; $419E: $3E $03
    call Palette_PaletteCycleColors                            ; $41A0: $CD $B2 $45
    ld hl, wPalette_AnimBuffers.Background                                  ; $41A3: $21 $AB $C7
    ld e, $04                                     ; $41A6: $1E $04
    ld a, $03                                     ; $41A8: $3E $03
    call Palette_PaletteCycleColors                            ; $41AA: $CD $B2 $45
    ld hl, wPalette_AnimBuffers.Background                                  ; $41AD: $21 $AB $C7
    ld e, $05                                     ; $41B0: $1E $05
    ld a, $03                                     ; $41B2: $3E $03
    call Palette_PaletteCycleColors                            ; $41B4: $CD $B2 $45
    ld a, $01                                     ; $41B7: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $41B9: $EA $31 $C8
    ret                                           ; $41BC: $C9

PaletteFX_Battle_CreatureFadeMultiColor::
    ld a, [$C9D9]                                 ; $41BD: $FA $D9 $C9
    and a                                         ; $41C0: $A7
    jr nz, jr_007_41C7                            ; $41C1: $20 $04

    call Call_007_43BD                            ; $41C3: $CD $BD $43
    ret                                           ; $41C6: $C9


jr_007_41C7:
    call Call_007_440D                            ; $41C7: $CD $0D $44
    ret                                           ; $41CA: $C9

    ; $41CB
PaletteFX_Battle_CreatureFadeUniColor::
    xor a                                         ; $41CB: $AF
    ld [wPalette_VBlankReady], a                                 ; $41CC: $EA $31 $C8
    ld a, [wTemp_B.Palette_FadeMagnitude]                                 ; $41CF: $FA $DC $C9
    ld [wPalette_FadeMagnitudeCounter], a                                 ; $41D2: $EA $30 $C8
    ld a, [wTemp_A.Palette_SetColor+1]                                 ; $41D5: $FA $DB $C9
    ld d, a                                       ; $41D8: $57
    ld a, [wTemp_A.Palette_SetColor]                                 ; $41D9: $FA $DA $C9
    ld e, a                                       ; $41DC: $5F
    ld a, [wTemp_9.Palette_BattleFX_CreatureSide]                                 ; $41DD: $FA $D9 $C9
    and a                                         ; $41E0: $A7
    jr nz, jr_007_4221                            ; $41E1: $20 $3E

    ld hl, $C7AD                                  ; $41E3: $21 $AD $C7
    ld bc, $0003                                  ; $41E6: $01 $03 $00
    call Palette_PaletteBufferFadeUniColor                            ; $41E9: $CD $E4 $46
    ld hl, $C7B5                                  ; $41EC: $21 $B5 $C7
    ld bc, $0003                                  ; $41EF: $01 $03 $00
    call Palette_PaletteBufferFadeUniColor                            ; $41F2: $CD $E4 $46
    ld hl, $C7BD                                  ; $41F5: $21 $BD $C7
    ld bc, $0003                                  ; $41F8: $01 $03 $00
    call Palette_PaletteBufferFadeUniColor                            ; $41FB: $CD $E4 $46
    ld a, [wFightscene_CreatureLeft_3rdPaletteTransparent]                                 ; $41FE: $FA $E2 $C9
    and a                                         ; $4201: $A7
    jr z, jr_007_420A                             ; $4202: $28 $06

    ld a, $01                                     ; $4204: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $4206: $EA $31 $C8
    ret                                           ; $4209: $C9


jr_007_420A:
    ld a, [wTemp_A.Unknown+1]                                 ; $420A: $FA $DB $C9
    ld d, a                                       ; $420D: $57
    ld a, [wTemp_A.Unknown]                                 ; $420E: $FA $DA $C9
    ld e, a                                       ; $4211: $5F
    ld hl, $C7BB                                  ; $4212: $21 $BB $C7
    ld bc, $0001                                  ; $4215: $01 $01 $00
    call Palette_PaletteBufferFadeUniColor                            ; $4218: $CD $E4 $46
    ld a, $01                                     ; $421B: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $421D: $EA $31 $C8
    ret                                           ; $4220: $C9


jr_007_4221:
    ld hl, $C7C5                                  ; $4221: $21 $C5 $C7
    ld bc, $0003                                  ; $4224: $01 $03 $00
    call Palette_PaletteBufferFadeUniColor                            ; $4227: $CD $E4 $46
    ld hl, $C7CD                                  ; $422A: $21 $CD $C7
    ld bc, $0003                                  ; $422D: $01 $03 $00
    call Palette_PaletteBufferFadeUniColor                            ; $4230: $CD $E4 $46
    ld hl, $C7D5                                  ; $4233: $21 $D5 $C7
    ld bc, $0003                                  ; $4236: $01 $03 $00
    call Palette_PaletteBufferFadeUniColor                            ; $4239: $CD $E4 $46
    ld a, [wFightscene_CreatureRight_3rdPaletteTransparent]                                 ; $423C: $FA $E3 $C9
    and a                                         ; $423F: $A7
    jr z, jr_007_4248                             ; $4240: $28 $06

    ld a, $01                                     ; $4242: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $4244: $EA $31 $C8
    ret                                           ; $4247: $C9


jr_007_4248:
    ld a, [wTemp_A.Unknown+1]                                 ; $4248: $FA $DB $C9
    ld d, a                                       ; $424B: $57
    ld a, [wTemp_A.Unknown]                                 ; $424C: $FA $DA $C9
    ld e, a                                       ; $424F: $5F
    ld hl, $C7D3                                  ; $4250: $21 $D3 $C7
    ld bc, $0001                                  ; $4253: $01 $01 $00
    call Palette_PaletteBufferFadeUniColor                            ; $4256: $CD $E4 $46
    ld a, $01                                     ; $4259: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $425B: $EA $31 $C8
    ret                                           ; $425E: $C9


    PushROMBank
    Do_CallForeign Fightscene_GetCreaturePointers
    ld bc, $0008                                  ; $426B: $01 $08 $00
    add hl, bc                                    ; $426E: $09
    ld b, $00                                     ; $426F: $06 $00
    ld a, [wTemp_A.Unknown]                                 ; $4271: $FA $DA $C9
    cp b                                          ; $4274: $B8
    jr z, jr_007_4290                             ; $4275: $28 $19

    cp $01                                        ; $4277: $FE $01
    jr nz, jr_007_427F                            ; $4279: $20 $04

    ld a, $18                                     ; $427B: $3E $18
    jr jr_007_4290                                ; $427D: $18 $11

jr_007_427F:
    cp $02                                        ; $427F: $FE $02
    jr nz, jr_007_4287                            ; $4281: $20 $04

    ld a, $30                                     ; $4283: $3E $30
    jr z, jr_007_4290                             ; $4285: $28 $09

jr_007_4287:
    cp $03                                        ; $4287: $FE $03
    jr nz, jr_007_428F                            ; $4289: $20 $04

    ld a, $48                                     ; $428B: $3E $48
    jr z, jr_007_4290                             ; $428D: $28 $01

jr_007_428F:
    xor a                                         ; $428F: $AF

jr_007_4290:
    ld c, a                                       ; $4290: $4F
    ld a, [hl+]                                   ; $4291: $2A
    push hl                                       ; $4292: $E5
    ld h, [hl]                                    ; $4293: $66
    ld l, a                                       ; $4294: $6F
    add hl, bc                                    ; $4295: $09
    ld b, h                                       ; $4296: $44
    ld c, l                                       ; $4297: $4D
    ld a, c                                       ; $4298: $79
    ld [$C9D5], a                                 ; $4299: $EA $D5 $C9
    ld a, b                                       ; $429C: $78
    ld [$C9D6], a                                 ; $429D: $EA $D6 $C9
    pop hl                                        ; $42A0: $E1
    inc hl                                        ; $42A1: $23
    ld a, [hl+]                                   ; $42A2: $2A
    ld [$C9D7], a                                 ; $42A3: $EA $D7 $C9
    call $35F1                                    ; $42A6: $CD $F1 $35
    PopROMBank
    ret                                           ; $42B0: $C9


    xor a                                         ; $42B1: $AF
    ld [wPalette_VBlankReady], a                                 ; $42B2: $EA $31 $C8
    ld a, [wTemp_A.Unknown+1]                                 ; $42B5: $FA $DB $C9
    ld b, a                                       ; $42B8: $47
    ld a, [wTemp_A.Unknown]                                 ; $42B9: $FA $DA $C9
    ld c, a                                       ; $42BC: $4F
    ld a, [$C9D9]                                 ; $42BD: $FA $D9 $C9
    and a                                         ; $42C0: $A7
    jr nz, jr_007_42D3                            ; $42C1: $20 $10

    ld hl, $C7AB                                  ; $42C3: $21 $AB $C7
    ld e, $01                                     ; $42C6: $1E $01
    ld a, $02                                     ; $42C8: $3E $02
    call Palette_PaletteBufferSetColor                            ; $42CA: $CD $74 $47
    ld a, $01                                     ; $42CD: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $42CF: $EA $31 $C8
    ret                                           ; $42D2: $C9


jr_007_42D3:
    ld hl, $C7AB                                  ; $42D3: $21 $AB $C7
    ld e, $0D                                     ; $42D6: $1E $0D
    ld a, $02                                     ; $42D8: $3E $02
    call Palette_PaletteBufferSetColor                            ; $42DA: $CD $74 $47
    ld a, $01                                     ; $42DD: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $42DF: $EA $31 $C8
    ret                                           ; $42E2: $C9

    ;BTL_SWAP_CREATURE_PALETTE
    ; $42E3
PaletteFX_Battle_CreatureSwapRGB::
    xor a                                         ; $42E3: $AF
    ld [wPalette_VBlankReady], a                                 ; $42E4: $EA $31 $C8
    ld a, [wTemp_8.Palette_ColorSwapType]                                 ; $42E7: $FA $D8 $C9
    ld e, a                                       ; $42EA: $5F
    ld a, [wTemp_9.Palette_BattleFX_CreatureSide]                                 ; $42EB: $FA $D9 $C9
    and a                                         ; $42EE: $A7
    jr nz, jr_007_4312                            ; $42EF: $20 $21

    ld hl, $C7AD                                  ; $42F1: $21 $AD $C7
    ld bc, $0003                                  ; $42F4: $01 $03 $00
    call Palette_PaletteBufferSwapRGB                            ; $42F7: $CD $87 $47
    ld hl, $C7B5                                  ; $42FA: $21 $B5 $C7
    ld bc, $0003                                  ; $42FD: $01 $03 $00
    call Palette_PaletteBufferSwapRGB                            ; $4300: $CD $87 $47
    ld hl, $C7BD                                  ; $4303: $21 $BD $C7
    ld bc, $0003                                  ; $4306: $01 $03 $00
    call Palette_PaletteBufferSwapRGB                            ; $4309: $CD $87 $47
    ld a, $01                                     ; $430C: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $430E: $EA $31 $C8
    ret                                           ; $4311: $C9


jr_007_4312:
    ld hl, $C7C5                                  ; $4312: $21 $C5 $C7
    ld bc, $0003                                  ; $4315: $01 $03 $00
    call Palette_PaletteBufferSwapRGB                            ; $4318: $CD $87 $47
    ld hl, $C7CD                                  ; $431B: $21 $CD $C7
    ld bc, $0003                                  ; $431E: $01 $03 $00
    call Palette_PaletteBufferSwapRGB                            ; $4321: $CD $87 $47
    ld hl, $C7D5                                  ; $4324: $21 $D5 $C7
    ld bc, $0003                                  ; $4327: $01 $03 $00
    call Palette_PaletteBufferSwapRGB                            ; $432A: $CD $87 $47
    ld a, $01                                     ; $432D: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $432F: $EA $31 $C8
    ret                                           ; $4332: $C9

PaletteFX_Battle_CreatureInvert::
    xor a                                         ; $4333: $AF
    ld [wPalette_VBlankReady], a                                 ; $4334: $EA $31 $C8
    ld a, [wTemp_8.Palette_PackedInterval]                                 ; $4337: $FA $D8 $C9
    ld e, a                                       ; $433A: $5F
    ld a, [$C9D9]                                 ; $433B: $FA $D9 $C9
    and a                                         ; $433E: $A7
    jr nz, jr_007_437F                            ; $433F: $20 $3E

    ld hl, $C7AD                                  ; $4341: $21 $AD $C7
    ld bc, $0003                                  ; $4344: $01 $03 $00
    call Palette_PaletteBufferInvertColors                            ; $4347: $CD $D1 $47
    ld hl, $C7B5                                  ; $434A: $21 $B5 $C7
    ld bc, $0003                                  ; $434D: $01 $03 $00
    call Palette_PaletteBufferInvertColors                            ; $4350: $CD $D1 $47
    ld hl, $C7BD                                  ; $4353: $21 $BD $C7
    ld bc, $0003                                  ; $4356: $01 $03 $00
    call Palette_PaletteBufferInvertColors                            ; $4359: $CD $D1 $47
    ld a, [wFightscene_CreatureLeft_3rdPaletteTransparent]                                 ; $435C: $FA $E2 $C9
    and a                                         ; $435F: $A7
    jr z, jr_007_4368                             ; $4360: $28 $06

    ld a, $01                                     ; $4362: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $4364: $EA $31 $C8
    ret                                           ; $4367: $C9


jr_007_4368:
    ld a, [wTemp_A.Unknown+1]                                 ; $4368: $FA $DB $C9
    ld d, a                                       ; $436B: $57
    ld a, [wTemp_A.Unknown]                                 ; $436C: $FA $DA $C9
    ld e, a                                       ; $436F: $5F
    ld hl, $C7BB                                  ; $4370: $21 $BB $C7
    ld bc, $0001                                  ; $4373: $01 $01 $00
    call Palette_PaletteBufferInvertColors                            ; $4376: $CD $D1 $47
    ld a, $01                                     ; $4379: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $437B: $EA $31 $C8
    ret                                           ; $437E: $C9


jr_007_437F:
    ld hl, $C7C5                                  ; $437F: $21 $C5 $C7
    ld bc, $0003                                  ; $4382: $01 $03 $00
    call Palette_PaletteBufferInvertColors                            ; $4385: $CD $D1 $47
    ld hl, $C7CD                                  ; $4388: $21 $CD $C7
    ld bc, $0003                                  ; $438B: $01 $03 $00
    call Palette_PaletteBufferInvertColors                            ; $438E: $CD $D1 $47
    ld hl, $C7D5                                  ; $4391: $21 $D5 $C7
    ld bc, $0003                                  ; $4394: $01 $03 $00
    call Palette_PaletteBufferInvertColors                            ; $4397: $CD $D1 $47
    ld a, [wFightscene_CreatureRight_3rdPaletteTransparent]                                 ; $439A: $FA $E3 $C9
    and a                                         ; $439D: $A7
    jr z, jr_007_43A6                             ; $439E: $28 $06

    ld a, $01                                     ; $43A0: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $43A2: $EA $31 $C8
    ret                                           ; $43A5: $C9


jr_007_43A6:
    ld a, [wTemp_A.Unknown+1]                                 ; $43A6: $FA $DB $C9
    ld d, a                                       ; $43A9: $57
    ld a, [wTemp_A.Unknown]                                 ; $43AA: $FA $DA $C9
    ld e, a                                       ; $43AD: $5F
    ld hl, $C7D3                                  ; $43AE: $21 $D3 $C7
    ld bc, $0001                                  ; $43B1: $01 $01 $00
    call Palette_PaletteBufferInvertColors                            ; $43B4: $CD $D1 $47
    ld a, $01                                     ; $43B7: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $43B9: $EA $31 $C8
    ret                                           ; $43BC: $C9

    ; $43BD
Call_007_43BD:
    xor a                                         ; $43BD: $AF
    ld [wPalette_VBlankReady], a                                 ; $43BE: $EA $31 $C8
    ld a, [wTemp_B.Palette_FadeMagnitude]                                 ; $43C1: $FA $DC $C9
    ld [wPalette_FadeMagnitudeCounter], a                                 ; $43C4: $EA $30 $C8
    ld hl, $C7AD                                  ; $43C7: $21 $AD $C7
    ld bc, $C72D                                  ; $43CA: $01 $2D $C7
    ld a, $03                                     ; $43CD: $3E $03
    ld [wTemp_4.Palette_ColorCounter], a                                 ; $43CF: $EA $D3 $C9
    call Palette_PaletteBufferFadeMultiColor                            ; $43D2: $CD $B6 $48
    ld hl, $C7B7                                  ; $43D5: $21 $B7 $C7
    ld bc, $C737                                  ; $43D8: $01 $37 $C7
    ld a, $03                                     ; $43DB: $3E $03
    ld [wTemp_4.Palette_ColorCounter], a                                 ; $43DD: $EA $D3 $C9
    call Palette_PaletteBufferFadeMultiColor                            ; $43E0: $CD $B6 $48
    ld a, [wFightscene_CreatureLeft_3rdPaletteTransparent]                                 ; $43E3: $FA $E2 $C9
    and a                                         ; $43E6: $A7
    jr z, jr_007_43F9                             ; $43E7: $28 $10

    ld hl, $C7BB                                  ; $43E9: $21 $BB $C7
    ld bc, $C73B                                  ; $43EC: $01 $3B $C7
    ld a, $04                                     ; $43EF: $3E $04
    ld [wTemp_4.Palette_ColorCounter], a                                 ; $43F1: $EA $D3 $C9
    call Palette_PaletteBufferFadeMultiColor                            ; $43F4: $CD $B6 $48
    jr jr_007_4407                                ; $43F7: $18 $0E

jr_007_43F9:
    ld hl, $C7C3                                  ; $43F9: $21 $C3 $C7
    ld bc, $C743                                  ; $43FC: $01 $43 $C7
    ld a, $03                                     ; $43FF: $3E $03
    ld [wTemp_4.Palette_ColorCounter], a                                 ; $4401: $EA $D3 $C9
    call Palette_PaletteBufferFadeMultiColor                            ; $4404: $CD $B6 $48

jr_007_4407:
    ld a, $01                                     ; $4407: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $4409: $EA $31 $C8
    ret                                           ; $440C: $C9


Call_007_440D:
    xor a                                         ; $440D: $AF
    ld [wPalette_VBlankReady], a                                 ; $440E: $EA $31 $C8
    ld a, [wTemp_B.Palette_FadeMagnitude]                                 ; $4411: $FA $DC $C9
    ld [wPalette_FadeMagnitudeCounter], a                                 ; $4414: $EA $30 $C8
    ld hl, $C7C5                                  ; $4417: $21 $C5 $C7
    ld bc, $C745                                  ; $441A: $01 $45 $C7
    ld a, $03                                     ; $441D: $3E $03
    ld [wTemp_4.Palette_ColorCounter], a                                 ; $441F: $EA $D3 $C9
    call Palette_PaletteBufferFadeMultiColor                            ; $4422: $CD $B6 $48
    xor a                                         ; $4425: $AF
    ld [wPalette_VBlankReady], a                                 ; $4426: $EA $31 $C8
    ld hl, $C7CD                                  ; $4429: $21 $CD $C7
    ld bc, $C74D                                  ; $442C: $01 $4D $C7
    ld a, $03                                     ; $442F: $3E $03
    ld [wTemp_4.Palette_ColorCounter], a                                 ; $4431: $EA $D3 $C9
    call Palette_PaletteBufferFadeMultiColor                            ; $4434: $CD $B6 $48
    xor a                                         ; $4437: $AF
    ld [wPalette_VBlankReady], a                                 ; $4438: $EA $31 $C8
    ld a, [wFightscene_CreatureRight_3rdPaletteTransparent]                                 ; $443B: $FA $E3 $C9
    and a                                         ; $443E: $A7
    jr nz, jr_007_4450                            ; $443F: $20 $0F

    ld hl, $C7D3                                  ; $4441: $21 $D3 $C7
    ld bc, $C753                                  ; $4444: $01 $53 $C7
    ld a, $04                                     ; $4447: $3E $04
    ld [wTemp_4.Palette_ColorCounter], a                                 ; $4449: $EA $D3 $C9
    call Palette_PaletteBufferFadeMultiColor                            ; $444C: $CD $B6 $48
    ret                                           ; $444F: $C9


jr_007_4450:
    ld hl, $C7D5                                  ; $4450: $21 $D5 $C7
    ld bc, $C755                                  ; $4453: $01 $55 $C7
    ld a, $03                                     ; $4456: $3E $03
    ld [wTemp_4.Palette_ColorCounter], a                                 ; $4458: $EA $D3 $C9
    call Palette_PaletteBufferFadeMultiColor                            ; $445B: $CD $B6 $48
    ret                                           ; $445E: $C9

;above is source/engine/system/graphics/palette/palette_fx.s

    ; $445F
INCLUDE "source/engine/system/graphics/palette/palette_vb_xx.asm"

; This palette module contains general use functions for manipulating colors

; Terminology:
;   There are 16 palettes - 8 background palettes and 8 sprite palettes
;   Each palette is made up of 4 15-bit Colors. The 16th bit is sometimes be used as a transparency marker
;   A 15-bit Color can be converted into 3 hues (R, G and B) of value $00-$1F

; wTemp_8.Palette_PackedInterval -> See the variable definition for details

; Public functions
;   Utility
;       Palette_DeterminePaletteVBlankFunc - Determines whether or not to update the palette during VBlank
;       Palette_DecodePaletteInterval - Returns Palette_DecodePaletteInterval_Index and Palette_DecodePaletteInterval_Length
;   FX
;       All of these functions will enable wPalette_VBlankReady at the end
;       All of these functions can choose which palette ids to affect
;       PaletteFX_RefreshAnimBuffer - Copies wPalette_BaseBuffers to wPalette_AnimBuffers
;       PaletteFX_ClearAnimBuffer - Replaces wPalette_AnimBuffers with a single Color
;       PaletteFX_ClearBaseBuffer - Replaces wPalette_BaseBuffers with a single Color
;       PaletteFX_CycleAnimBuffer - Rotates Colors within palettes (Palette_PaletteCycleColors)
;       PaletteFX_FadeAnimToBase - Fades wPalette_AnimBuffers towards wPalette_BaseBuffers
;       PaletteFX_InvertAnimBuffer - Inverts Colors in wPalette_AnimBuffers
;       PaletteFX_FadeAnimToColor - Fades wPalette_AnimBuffers towards a single Color
;       

; Private
;   Palette_ColorToRGB - Splits a Color into RGB hues to manipulate
;   Palette_RGBToColor - Reassembles RGB hues into a Color to store value
;   Palette_PaletteCycleColors - Rotates Colors within a palette for special effect (used in the BattleFX screen for attacks and defends)
;   Palette_PaletteBufferFadeUniColor - Fades Colors in a palette buffer towards a target Color
;       Subroutines: Palette_ColorFadeToBlack -> Palette_RGBFadeToBlack
;                    Palette_ColorFadeToWhite -> Palette_RGBFadeToWhite
;                    Palette_ColorFadeToRGB -> Palette_RGBFadeToRGB
;   Palette_PaletteBufferSetColor - Sets the Xth Color of Y sequential palettes to a target Color
;   Palette_PaletteBufferSwapRGB - Swaps or rotates the R,G,B values of X sequential Colors in a palette buffer
;                                   The R<->G swap is bugged and rotates the RGB values instead
;   Palette_PaletteBufferInvertColors - Inverts the X sequential Colors in the palette buffer
;   Palette_DecodePaletteInterval_Index - Parses the upper nibble of wTemp_8.Palette_PackedInterval
;   Palette_DecodePaletteInterval_Length - Parses the lower nibble of wTemp_8.Palette_PackedInterval
;   Palette_ClearLoop - Subfunction used in PaletteFX_ClearAnimBuffer, PaletteFX_ClearBaseBuffer, and others
;   Palette_PaletteBufferFadeMultiColor - Subfunction used in PaletteFX_FadeAnimToBase and others

    ; $4586
Palette_ColorToRGB::
    ; Takes a 15-bit Color and returns the individual hues
    ;
    ; Inputs:
    ;   bc = Color used in a palette (%0BBBBBGG_GGGRRRRR)
    ; Outputs:
    ;   a = Red ($00-$1F)
    ;   e = Green ($00-$1F)
    ;   d = Blue ($00-$1F)
    ld a, c
    srl b
    rr c
    srl b
    rr c
    ld d, b
    srl c
    srl c
    srl c
    ld e, c
    and $1F
    ret

    ; $459A
Palette_RGBToColor::
    ; Takes 3 hues and returns a 15-bit Color
    ; This function assumes that the RGB values are valid without checking (i.e. assumes they are <= $1F)
    ; Inputs:
    ;   a = Red ($00-$1F)
    ;   e = Green ($00-$1F)
    ;   d = Blue ($00-$1F)
    ; Outputs:
    ;   bc = Color used in a palette (%0BBBBBGG_GGGRRRRR)
    rlca
    rlca
    rlca
    ld c, a
    srl e
    rr c
    srl e
    rr c
    srl e
    rr c
    ld a, d
    add a
    add a
    add e
    and $7F
    ld b, a
    ret

    ; $45B2
Palette_PaletteCycleColors::
    ; This function rotates the Colors within a single palette
    ; By quickly rotating Colors, you can make a blurry flashing effect
    ; This is used in the battle fx scene when a creature attacks and gets hit
    ; Inputs:
    ;   hl = The target palette buffer (e.g. wPalette_AnimBuffers)
    ;   e = Palette id, used as an offset from hl
    ;   a = The number of Colors within the palette to cycle (2-4) (value is not sanitized)
    ; Outputs:
    ;   The last 2-4 Colors of a Palette are cycled rightwise circularly
    cp $04
    jr z, .Cycle4
    cp $03
    jr z, .Cycle3
    .Cycle2:
        ; Swap the 3rd and 4th Color

        ; Each palette is 8 bytes long, so navigate to the target palette
        ld d, $00
        sla e
        sla e
        sla e
        add hl, de

        ; Get the address of the 4th Color -> hl
        ld e, $06
        add hl, de

        ; Get the address of the 3rd Color -> bc
        push hl
        pop bc
        dec bc
        dec bc
        push bc ;Push the address of the 3rd Color

        ; Store the 4th Color in de
        ld a, [hl+]
        ld e, a
        ld a, [hl-]
        ld d, a

        ; Copy the 3rd Color onto the 4th Color
        LdHLIBCI
        LdHLIBCI

        ; Copy de (original 4th Color) onto the 3rd Color
        pop hl ;Address of the 3rd Color
        ld a, e
        ld [hl+], a
        ld [hl], d
        ret
    .Cycle3:
        ; Rotate the 2nd, 3rd and 4th Color 4->2->3->4

        ; Each palette is 8 bytes long, so navigate to the target palette
        ld d, $00
        sla e
        sla e
        sla e
        add hl, de

        ; Get the address of the 3rd Color -> hl
        ld e, $04
        add hl, de

        ; Get the address of the 2nd Color -> bc
        push hl
        pop bc
        dec bc
        dec bc

        ; Store the 3rd Color in de
        ld a, [hl+]
        ld e, a
        ld a, [hl-]
        ld d, a

        ; Copy the 2nd Color onto the 3rd Color
        LdHLIBCI
        ld a, [bc]
        ld [hl+], a ; hl now targets the 4th Color
        dec bc

        ; Copy the 4th Color onto the 2nd Color
        push hl
        LdBCIHLI
        LdBCIHLI
        pop hl

        ; Copy de (original 3rd Color) onto the 4th Color
        ld a, e
        ld [hl+], a
        ld [hl], d
        ret
    .Cycle4:
        ; Rotate the 1st, 2nd, 3rd and 4th Color 4->1->2->3->4

        ; Each palette is 8 bytes long, so navigate to the target palette
        ld d, $00
        sla e
        sla e
        sla e
        add hl, de

        ; Get the address of the 4th Color -> hl
        ld e, $06
        add hl, de

        ; Get the address of the 3rd Color -> bc
        push hl
        pop bc
        dec bc
        dec bc
        push bc ;3rd Color address pushed

        ; Store the 4th Color in de
        ld a, [hl+]
        ld e, a
        ld a, [hl-]
        ld d, a

        ; Copy the 3rd Color onto the 4th Color
        LdHLIBCI
        ld a, [bc]
        ld [hl+], a
        dec bc

        ; Get the address of the 2nd Color -> hl
        pop hl ;3rd Color address
        dec hl
        dec hl
        push hl ;2nd Color address pushed

        ; Copy the 2nd Color onto the 3rd Color
        LdBCIHLI
        ld a, [hl+]
        ld [bc], a
        dec bc

        ; Get the 2nd Color -> bc
        dec bc
        dec bc

        ; Get the 1st Color -> hl
        pop hl ;2nd Color address
        dec hl
        dec hl

        ; Copy the 1st Color onto the 2nd Color
        LdBCIHLI
        ld a, [hl-]
        ld [bc], a

        ; Copy de (original 4th Color) onto the 1st Color
        ld a, e
        ld [hl+], a
        ld [hl], d
        ret

    ; $4633
Palette_RGBFadeToRGB::
    ; This function should be called by Palette_ColorFadeToRGB
    ; Given an RGB, fades each individual hue by wTemp_B.Palette_FadeMagnitude units to a target RGB
    ; Inputs:
    ;   aed = RGB of real palette (from wPalette_AnimBuffers)
    ;   wPalette_TargetHue.Red = Target hue
    ;   wPalette_TargetHue.Green = Target hue
    ;   wPalette_TargetHue.Blue = Target hue
    ;   wTemp_B.Palette_FadeMagnitude = Magnitude by which to shift each hue
    ;   wPalette_FadeMagnitudeCounter = Used to count the magnitude. Must be preset to the same value as wTemp_B.Palette_FadeMagnitude
    ; Outputs:
    ;   x = wPalette_FadeMagnitudeCounter
    ;   Then, a is changed by x towards wPalette_TargetHue.Red
    ;         e is changed by x towards wPalette_TargetHue.Green
    ;         d is changed by x towards wPalette_TargetHue.Blue
    ;   wPalette_FadeMagnitudeCounter is reset to wTemp_B.Palette_FadeMagnitude
    ;   Returns aed, new hues.
    push hl
    ld b, a
    ld a, [wPalette_TargetHue.Red]
    ld h, a
    ld a, [wPalette_TargetHue.Green]
    ld l, a
    ld a, [wPalette_TargetHue.Blue]
    ld c, a

    ; bed = source RGB
    ; hlc = target RGB
    ; Now, check R, G, B individually, and change each value by 1 towards the target value
    .CheckRed:
        ld a, b
        cp h
        jr z, .CheckGreen
        jr nc, .DecreaseRed
        .IncreaseRed:
            adc $00 ; = inc a
            ld b, a
            jr .CheckGreen
        .DecreaseRed:
            dec a
            ld b, a
    .CheckGreen:
        ld a, e
        cp l
        jr z, .CheckBlue
        jr nc, .DecreaseGreen
        .IncreaseGreen:
            adc $00 ; = inc a
            ld e, a
            jr .CheckBlue
        .DecreaseGreen:
            dec a
            ld e, a
    .CheckBlue:
        ld a, d
        cp c
        jr z, .DoneRGB
        jr nc, .DecreaseBlue
        .IncreaseBlue:
            adc $00 ; = inc a
            ld d, a
            jr .DoneRGB
        .DecreaseBlue:
            dec a
            ld d, a
    .DoneRGB:
        ; Now that we've changed everything by 1, loop wPalette_FadeMagnitudeCounter
        ;  times to produce the fade of the desired magnitude
        ld a, [wPalette_FadeMagnitudeCounter]
        dec a
        jr z, .ResetCounter
            ld [wPalette_FadeMagnitudeCounter], a
            ld a, b
            pop hl
            jr Palette_RGBFadeToRGB
        .ResetCounter:
            ld a, [wTemp_B.Palette_FadeMagnitude]
            ld [wPalette_FadeMagnitudeCounter], a
            ld a, b
            pop hl
            ret

    ; $467E
Palette_RGBFadeToBlack::
    ; This function should be called by Palette_ColorFadeToBlack
    ; Fades an RGB to black by a magnitude of wTemp_B.Palette_FadeMagnitude units
    ; Inputs:
    ;   aed = RGB of real palette (from wPalette_AnimBuffers)
    ;   wTemp_B.Palette_FadeMagnitude = Magnitude by which to shift each hue
    ;   wPalette_FadeMagnitudeCounter = Used to count the magnitude. Must be preset to the same value as wTemp_B.Palette_FadeMagnitude
    ; Outputs:
    ;   x = wPalette_FadeMagnitudeCounter
    ;   Then, a is decreased by x down to 0
    ;         e is decreased by x down to 0
    ;         d is decreased by x down to 0
    ;   wPalette_FadeMagnitudeCounter is reset to wTemp_B.Palette_FadeMagnitude
    ;   Returns aed, new hues.
    .CheckRed:
        or a
        jr z, .CheckGreen
            dec a
    .CheckGreen:
        ld b, a
        xor a
        cp e
        jr z, .CheckBlue
            dec e
    .CheckBlue:
        xor a
        cp d
        jr z, .DoneRGB
            dec d
    .DoneRGB:
        ; Now that we've changed everything by 1, loop wPalette_FadeMagnitudeCounter
        ;  times to produce the fade of the desired magnitude
        ld a, [wPalette_FadeMagnitudeCounter]
        dec a
        jr z, .ResetCounter
            ld [wPalette_FadeMagnitudeCounter], a
            ld a, b
            jr Palette_RGBFadeToBlack
        .ResetCounter:
            ld a, [wTemp_B.Palette_FadeMagnitude]
            ld [wPalette_FadeMagnitudeCounter], a
            ld a, b
            ret

    ; $46A1
Palette_RGBFadeToWhite::
    ; This function should be called by Palette_ColorFadeToWhite
    ; Fades an RGB to white by a magnitude of wTemp_B.Palette_FadeMagnitude units
    ; Inputs:
    ;   aed = RGB of real palette (from wPalette_AnimBuffers)
    ;   wTemp_B.Palette_FadeMagnitude = Magnitude by which to shift each hue
    ;   wPalette_FadeMagnitudeCounter = Used to count the magnitude. Must be preset to the same value as wTemp_B.Palette_FadeMagnitude
    ; Outputs:
    ;   x = wPalette_FadeMagnitudeCounter
    ;   Then, a is increased by x up to 1F
    ;         e is increased by x up to 1F
    ;         d is increased by x up to 1F
    ;   wPalette_FadeMagnitudeCounter is reset to wTemp_B.Palette_FadeMagnitude
    ;   Returns aed, new hues.
    .CheckRed:
        cp $1F
        adc $00
        ld b, a
    .CheckGreen:
        ld a, e
        cp $1F
        adc $00
        ld e, a
    .CheckBlue:
        ld a, d
        cp $1F
        adc $00
        ld d, a
    .DoneRGB:
        ; Now that we've changed everything by 1, loop wPalette_FadeMagnitudeCounter
        ;  times to produce the fade of the desired magnitude
        ld a, [wPalette_FadeMagnitudeCounter]
        dec a
        jr z, .ResetCounter
            ld [wPalette_FadeMagnitudeCounter], a
            ld a, b
            jr Palette_RGBFadeToWhite
        .ResetCounter:
            ld a, [wTemp_B.Palette_FadeMagnitude]
            ld [wPalette_FadeMagnitudeCounter], a
            ld a, b
            ret

    ; $46C6
Palette_ColorFadeToBlack::
    ; Converts a Color into RGB values, runs Palette_RGBFadeToBlack, and then converts
    ; the result back into a Color
    ; See Palette_RGBFadeToBlack for details
    ; Inputs:
    ;   bc = Color from a palette
    ;   wTemp_B.Palette_FadeMagnitude, wPalette_FadeMagnitudeCounter
    ; Outputs:
    ;   bc = Color shifted by wTemp_B.Palette_FadeMagnitude units towards black
    call Palette_ColorToRGB
    call Palette_RGBFadeToBlack
    call Palette_RGBToColor
    ret

    ; $46D0
Palette_ColorFadeToRGB::
    ; Converts a Color into RGB values, runs Palette_RGBFadeToRGB, and then converts
    ; the result back into a Color
    ; See Palette_RGBFadeToBlack for details
    ; Inputs:
    ;   bc = Color from a palette
    ;   wTemp_B.Palette_FadeMagnitude, wPalette_FadeMagnitudeCounter
    ;   wPalette_TargetHue.Red, wPalette_TargetHue.Green, wPalette_TargetHue.Blue
    ; Outputs:
    ;   bc = Color shifted by wTemp_B.Palette_FadeMagnitude units towards target RGB
    call Palette_ColorToRGB
    call Palette_RGBFadeToRGB
    call Palette_RGBToColor
    ret

    ; $46DA
Palette_ColorFadeToWhite::
    ; Converts a Color into RGB values, runs Palette_RGBFadeToColor, and then converts
    ; the result back into a Color
    ; See Palette_RGBFadeToBlack for details
    ; Inputs:
    ;   bc = Color from a palette
    ;   wTemp_B.Palette_FadeMagnitude, wPalette_FadeMagnitudeCounter
    ; Outputs:
    ;   bc = Color shifted by wTemp_B.Palette_FadeMagnitude units towards white
    call Palette_ColorToRGB
    call Palette_RGBFadeToWhite
    call Palette_RGBToColor
    ret


    ; $46E4
Palette_PaletteBufferFadeUniColor::
    ; Fades bc Colors from [hl] (wPalette_AnimBuffers) by [wTemp_B.Palette_FadeMagnitude] towards a single Color de
    ; Inputs:
    ;   hl = Base palette buffer address (e.g. wPalette_AnimBuffers)
    ;   bc = Number of sequential Colors to fade towards the same target Color
    ;   de = Target Color
    ;   [wTemp_B.Palette_FadeMagnitude] = fade magnitude
    ;   [wPalette_FadeMagnitudeCounter] needs to be preset to the same value as [wTemp_B.Palette_FadeMagnitude]
    ; Intermediate Vars:
    ;   wPalette_FadeFunction stores the target function that will handle the fade
    ;       Points to one of {Palette_ColorFadeToBlack, Palette_ColorFadeToRGB, Palette_ColorFadeToWhite}
    ;   wPalette_TargetHue is set to the RGB hues of de iff the de is not Black or White
    ; Outputs:
    ;   The Colors in hl to (hl+2*bc) are all faded by wTemp_B.Palette_FadeMagnitude units towards de

    ; First, determine if the target Color is pure Black/White/Other
    ; Then, save the corresponding function for Black/White/Other into wPalette_FadeFunction
    ; (this code is pretty bloated and confusing - it would have maybe been better to always use the "Other" and not handle White/Black specially as it does not add any value)
    ; (I think this code might have initially only supported White and Black, and Other was eventually added as a final option)
    push de
    push hl
    ld a, d
    or $80 ;We don't care about the 16th bit so let's just set it
    cp $FF
    jr z, .PossiblyWhite
    and $7F ;We don't care about the 16th bit so let's just reset it
    cp $00
    jr z, .PossiblyBlack
    .RegularColor:                     ;"Other" - Non White/Black Color
        push bc
        ld b, d
        ld c, e
        call Palette_ColorToRGB                   ;If the target Color is not white or black, the individual hues need to be stored
        ld [wPalette_TargetHue.Red], a
        Set8 wPalette_TargetHue.Green, e
        Set8 wPalette_TargetHue.Blue, d
        pop bc
        ld hl, Palette_ColorFadeToRGB
        Set16_M wPalette_FadeFunction, hl
        jr .FadeFunctionFound
    .PossiblyWhite:
        ; Upper 8-bits are good, check the lower 8 bits
        cp e
        jr nz, .RegularColor
            ld hl, Palette_ColorFadeToWhite        ;White Color 7FFF
            Set16_M wPalette_FadeFunction, hl
            jr .FadeFunctionFound
    .PossiblyBlack:
        ; Upper 8-bits are good, check the lower 8 bits
        cp e
        jr nz, .RegularColor
            ld hl, Palette_ColorFadeToBlack        ;Black Color 0000
            Set16_M wPalette_FadeFunction, hl

    .FadeFunctionFound:
    ; Now that we figured out which Fade Function to use
    ; Iterate and fade each Color
        pop hl
        .LoopColors:
            push bc
            ld a, [hl+] ; hl = PaletteBuffer
            ld c, a
            ld a, [hl-]
            ld b, a
            push hl
            Get16 hl, wPalette_FadeFunction
            call CallHL
            pop hl
            ld a, c
            ld [hl+], a
            ld a, b
            ld [hl+], a
            pop bc
            Dec16Loop bc, .LoopColors
        pop de
        ret

    ; $474F
Palette_DeterminePaletteVBlankFunc::
    ; TODO - figure out when this function is relevant and why it exists
    ;   Seems like this function is only called from Cardscene_Do and Fightscene_Update
    ; Determines if the palette can be pushed to palette memory
    ; If wPalette_VBlankReady == 1, then palette is finished being modified by a function
    ;   and so we should push the new palette into palette memory
    ; If wPalette_VBlankReady == 0, then
    ;   a) the palette memory has already been updated, or
    ;   b) the palette is in the middle of being modified
    ;   so it is not appropriate to push the palette into palette memory
    ld a, [wPalette_VBlankReady]
    and a
    jr z, .SetIdle
    .SetVBlankUpdatePalettes:
        ; Yes the palettes should be updated
        xor a
        ld [wPalette_VBlankReady], a ;Set to 0 so we don't push updates unnecessarily
        Set8 wVBlank_Bank, BANK(PaletteVB_UpdatePalettes)
        Set16_M wVBlank_Func, PaletteVB_UpdatePalettes ; Prep an update
        ret
    .SetIdle:
        Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle ;No need to update
        ret

    ; $4774
Palette_PaletteBufferSetColor::
    ; For a specified number of sequential palettes, sets either the 1st, 2nd, 3rd or 4th
    ; Color all to the same target Color
    ; e.g. You can set the 1st Color for palette 0-7 all to red
    ; Inputs:
    ;   hl = Palette buffer address (e.g. wPalette_AnimBuffers)
    ;   e = Number of Colors by which to offset (e.g. 1 will target the 2nd Color)
    ;   a = Number of sequential palettes that will be set
    ;   bc = Target Color
    ; Outputs:
    ;   The palette buffer hl will be updated
    ;   The Color at hl+2*e will be set to bc
    ;   And the corresponding Color of the subsequent palettes will also be set for a total of a palettes
    ld d, $00
    sla e
    add hl, de ; First target Color
    ld de, $0008
    .NextPalette:
        push af
        ld a, c
        ld [hl+], a
        ld [hl], b
        dec hl
        add hl, de
        pop af
        dec a
        jr nz, .NextPalette
    ret

    ; $4787
Palette_PaletteBufferSwapRGB::
    ; Swaps the R,G,B values of a number of sequential Colors in the palette buffer
    ; Inputs:
    ;   hl = Palette buffer address (e.g. wPalette_AnimBuffers)
    ;   bc = Number of sequential Colors to which to apply the effect
    ;   e = Type of Color swap
    ;       PALETTE_SWAP_RB -> Swap R<->B
    ;       PALETTE_SWAP_BG -> Swap B<->G
    ;       PALETTE_SWAP_RG_Bugged -> BUGGED. Supposed to do Swap R<->G, but actually does Rotate R->G->B->R
    ;       PALETTE_SWAP_RGB/Undefined -> Rotate R<-G<-B<-R
    ; Outputs:
    ;   As described
    push bc ; loop counter
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    push hl ; Palette buffer
    push de ; Type of Color swap
    ld a, e
    cp PALETTE_SWAP_RB
    jr z, .SwapRB
    cp PALETTE_SWAP_BG
    jr z, .SwapBG
    cp PALETTE_SWAP_RG_Bugged
    jr z, .SwapRG_BUGGED ; Bugged, see comments
    ;cp PALETTE_SWAP_RGB
    ;jr z, .RotateRGB
    .RotateRGB:
        call Palette_ColorToRGB ; aed -> RGB
        ld b, a                 ; RGB -> GBR
        ld a, e
        ld e, d
        ld d, b
        call Palette_RGBToColor
        jr .DoneSwap
    .SwapBG:
        call Palette_ColorToRGB ; aed -> RGB
        ld b, e                 ; RGB -> RBG
        ld e, d
        ld d, b
        call Palette_RGBToColor
        jr .DoneSwap
    .SwapRG_BUGGED:
        call Palette_ColorToRGB ; aed -> RGB
        ld b, e                 ; RGB -> GRB ---------------------
        ld e, a                 ;                                |
        ld a, b                 ;                                |
        call Palette_RGBToColor ;                                | Second transformation applied
        ;jr .DoneSwap    BUG MISSING THIS LINE                   |
        ; CONTINUES INTO .SwapRB                                 |
    .SwapRB:                    ;                                |
        call Palette_ColorToRGB ; aed -> RGB                     v
        ld b, a                 ; RGB -> BGR                  GRB -> BRG
        ld a, d
        ld d, b
        call Palette_RGBToColor

    .DoneSwap:
    ; Increment the buffer to the next Color and loop if not done
    pop de ; Type of Color swap
    pop hl ; Palette buffer
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc ; loop counter
    Dec16Loop bc, Palette_PaletteBufferSwapRGB
    ret

    ; $47D1
Palette_PaletteBufferInvertColors::
    ; Inverts the RGB values of a number of sequential Colors in the palette buffer
    ; Inputs:
    ;   hl = Palette buffer address (e.g. wPalette_AnimBuffers)
    ;   bc = Number of sequential Colors to which to apply the effect
    ; Outputs:
    ;   As described
    ;   The 16th bit is also inverted
    ld a, [hl]
    cpl
    ld [hl+], a
    ld a, [hl]
    cpl
    ld [hl+], a
    Dec16Loop bc, Palette_PaletteBufferInvertColors
    ret


    ; $47DD
Palette_DecodePaletteInterval_Index::
    ; Offsets a base address to the specified palette based on the index
    ; specified in wTemp_8.Palette_PackedInterval
    ; See also Palette_DecodePaletteInterval_Length
    ;
    ; Palettes 0-7 are background sprites; 8-15 are the sprite palettes
    ; wTemp_8.Palette_PackedInterval -> Upper nibble - Palette index (0-15)
    ;                     Lower nibble - Length (1-16)
    ;
    ; Inputs:
    ;   [wTemp_8.Palette_PackedInterval] -> Upper nibble specifies the palette index
    ;       e.g. Palette 0 -> %0000
    ;            Palette 15 -> %1111
    ; Outputs:
    ;   Returns hl = wPalette_BaseBuffers + 8*index
    ld hl, wPalette_BaseBuffers
    ld a, [wTemp_8.Palette_PackedInterval]
    swap a
    and $0F
    ld b, $00
    ld c, a
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    ret

    ; $47F7
Palette_DecodePaletteInterval_Length::
    ; Reads wTemp_8.Palette_PackedInterval to determine the number of palettes targetted
    ; Returns the result as a number of Colors (i.e. palettes*4)
    ;
    ; Palettes 0-7 are background sprites; 8-15 are the sprite palettes
    ; wTemp_8.Palette_PackedInterval -> Upper nibble - Palette index (0-15)
    ;                     Lower nibble - Length (1-16)
    ;
    ; Inputs:
    ;   [wTemp_8.Palette_PackedInterval] -> (Lower nibble + 1) determines the number of palettes
    ;       e.g. Length of 1  -> %0000
    ;            Length of 2  -> %0001
    ;            Length of 16 -> %1111
    ; Outputs:
    ;   a = length*4    (Number of Colors)
    ;   e = 0           (Offset)
    ld a, [wTemp_8.Palette_PackedInterval]
    and $0F
    inc a
    ld d, $00
    ld e, a
    sla e
    rl d
    sla e
    rl d
    ld a, e
    ld e, d
    ret

    ; $480C
Palette_DecodePaletteInterval::
    call Palette_DecodePaletteInterval_Index
    Set16 wTemp_A.Palette_PaletteBufferStartAddress, hl
    call Palette_DecodePaletteInterval_Length
    ld [wTemp_9.Palette_NumColors], a
    ret

    ; $481E
PaletteFX_RefreshAnimBuffer::
    ; Copies the specified palettes from the Base Buffers to the Anim Buffers
    ; Inputs:
    ;   wTemp_8.Palette_PackedInterval = The palette interval that will be copied
    ; Outputs:
    ;   Copies the specified palette range from wPalette_BaseBuffers to wPalette_AnimBuffers
    xor a
    ld [wPalette_VBlankReady], a
    call Palette_DecodePaletteInterval_Index
    push hl
    ld bc, wPalette_AnimBuffers - wPalette_BaseBuffers
    add hl, bc
    pop bc
    call Palette_DecodePaletteInterval_Length
    call Unpack_Palette_Palettes
    Set8 wPalette_VBlankReady, $01
    ret

    ; $4837
PaletteFX_ClearAnimBuffer::
    ; Clears out the specified palettes from the Anim Buffer by replacing with a single Color
    ; 
    ; Inputs:
    ;   wTemp_8.Palette_PackedInterval = The palette interval that will be cleared
    ;   wTemp_A.Palette_SetColor = Color to use
    ; Outputs:
    ;   Copies [wTemp_A.Palette_SetColor] onto wPalette_AnimBuffers for the specified palettes
    xor a
    ld [wPalette_VBlankReady], a
    call Palette_DecodePaletteInterval_Index
    ld bc, wPalette_AnimBuffers - wPalette_BaseBuffers
    add hl, bc
    call Palette_DecodePaletteInterval_Length
    ld e, a             ;Number of colors
    Get16 bc, wTemp_A.Palette_SetColor
    jr Palette_ClearLoop

    ; $4850
PaletteFX_ClearBaseBuffer::
    ; Clears out the specified palettes from the Base Buffer by replacing with a single Color
    ; 
    ; Inputs:
    ;   wTemp_8.Palette_PackedInterval = The palette interval that will be cleared
    ;   wTemp_A.Palette_SetColor = Color to use
    ; Outputs:
    ;   Copies [wTemp_A.Palette_SetColor] onto wPalette_BaseBuffers for the specified palettes
    xor a
    ld [wPalette_VBlankReady], a
    call Palette_DecodePaletteInterval_Index
    call Palette_DecodePaletteInterval_Length
    ld e, a             ;Number of colors
    Get16 bc, wTemp_A.Palette_SetColor
    ;jr Palette_ClearLoop

    ; $4863
Palette_ClearLoop::
    ld a, c
    ld [hl+], a
    ld [hl], b
    inc hl
    dec e
    jr nz, Palette_ClearLoop
    ld a, $01
    ld [wPalette_VBlankReady], a
    ret

    ; $4870
PaletteFX_CycleAnimBuffer::
    ; Causes a palette cycle effect for the specified palettes in wPalette_AnimBuffers
    ; Inputs:
    ;   wTemp_8.Palette_PackedInterval = The palette interval that will be cleared
    ;   wTemp_9.Palette_CyclePattern = Cycle the last X Colors of each Palette (2, 3 or 4)
    ; Outputs:
    ;   Designated palettes cycled

    ; Get the base address within wPalette_AnimBuffers
    xor a
    ld [wPalette_VBlankReady], a
    call Palette_DecodePaletteInterval_Index
    ld bc, wPalette_AnimBuffers - wPalette_BaseBuffers
    add hl, bc
    ; Get the number of palettes to affect
    ld a, [wTemp_8.Palette_PackedInterval]
    and $0F
    inc a
    ld [wTemp_A.Palette_Counter], a

    .LoopNextPalette:
        push hl
        dec a
        ld e, a ; e = palette id relative to hl
        ld a, [wTemp_9.Palette_CyclePattern]
        call Palette_PaletteCycleColors
        pop hl
        ld a, [wTemp_A.Palette_Counter]
        dec a
        ld [wTemp_A.Palette_Counter], a
        jr nz, .LoopNextPalette

    ld a, $01
    ld [wPalette_VBlankReady], a
    ret


    ; $489D
PaletteFX_FadeAnimToBase::
    ; Fades specified palettes of wPalette_AnimBuffers towards colors from wPalette_BaseBuffers
    ; 
    ; Inputs:
    ;   wTemp_8.Palette_PackedInterval = The palette interval that will be faded
    ;   wTemp_B.Palette_FadeMagnitude = Magnitude by which to fade wPalette_AnimBuffers
    ; Outputs:
    ;   Specified palettes are faded by "Magnitude" units towards wPalette_BaseBuffers
    xor a
    ld [wPalette_VBlankReady], a
    Mov8 wPalette_FadeMagnitudeCounter, wTemp_B.Palette_FadeMagnitude
    call Palette_DecodePaletteInterval_Index
    push hl
    ld bc, wPalette_AnimBuffers - wPalette_BaseBuffers
    add hl, bc
    pop bc
    call Palette_DecodePaletteInterval_Length
    ld [wTemp_4.Palette_ColorCounter], a
    ;jr Palette_PaletteBufferFadeMultiColor

    ; $48B6
Palette_PaletteBufferFadeMultiColor::
    ; Fades a specified number of Colors at hl towards the Colors at bc
    ; This function differs from directly calling Palette_PaletteBufferFadeUniColor in that
    ; each Color fades to a different Color target
    ; Inputs:
    ;   wTemp_4.Palette_ColorCounter -> Number of Colors to copy
    ;   hl -> address of Colors to change
    ;   bc -> address of Target Colors
    ;   wTemp_B.Palette_FadeMagnitude = Magnitude by which to fade wPalette_AnimBuffer
    ;   wPalette_FadeMagnitudeCounter = Should be same as wTemp_B.Palette_FadeMagnitude
    ; Outputs:
    ;   Specified Colors are faded by "Magnitude" units towards target Colors
    push hl
    push bc ;Kinda inefficient to push here instead of after increment bc but oh well
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    inc bc
    ld d, a
    ld bc, $0001
    call Palette_PaletteBufferFadeUniColor ;Fade 1 Color to 1 Color since each Color target is different
    pop bc
    inc bc
    inc bc
    pop hl
    inc hl
    inc hl
    ld a, [wTemp_4.Palette_ColorCounter]
    dec a
    jr z, .Finished
        ld [wTemp_4.Palette_ColorCounter], a
        jr Palette_PaletteBufferFadeMultiColor
    .Finished:
        ld a, $01
        ld [wPalette_VBlankReady], a
        ret
    .Unused:
        ; Unused
        ret

    ; $48DC
PaletteFX_InvertAnimBuffer::
    ; Inverts the specified palettes of wPalette_AnimBuffers
    ; 
    ; Inputs:
    ;   wTemp_8.Palette_PackedInterval = The palette interval that will be faded
    ; Outputs:
    ;   Specified palettes are inverted
    xor a
    ld [wPalette_VBlankReady], a

    ; Get the offsetted address in wPalette_AnimBuffers
    call Palette_DecodePaletteInterval_Index
    ld bc, wPalette_AnimBuffers - wPalette_BaseBuffers
    add hl, bc

    ; Get the number of Colors through which to iterate
    ld a, [wTemp_8.Palette_PackedInterval]
    and $0F
    inc a
    sla a
    sla a
    ld c, a
    ld b, $00

    call Palette_PaletteBufferInvertColors
    ld a, $01
    ld [wPalette_VBlankReady], a
    ret

    ; $48FD
PaletteFX_FadeAnimToColor::
    ; Fades specified palettes of wPalette_AnimBuffers towards a specific Color
    ; 
    ; Inputs:
    ;   wTemp_8.Palette_PackedInterval = The palette interval that will be faded
    ;   wTemp_B.Palette_FadeMagnitude = Magnitude by which to fade wPalette_AnimBuffer
    ;   wPalette_FadeMagnitudeCounter = Should be same as wTemp_B.Palette_FadeMagnitude
    ;   wTemp_A.Palette_SetColor = Color to which to fade
    ; Outputs:
    ;   Specified palettes are faded by "Magnitude" units towards Color
    xor a
    ld [wPalette_VBlankReady], a

    call Palette_DecodePaletteInterval_Index
    ld bc, wPalette_AnimBuffers - wPalette_BaseBuffers
    add hl, bc

    call Palette_DecodePaletteInterval_Length
    ld b, $00
    ld c, a
    Get16 de, wTemp_A.Palette_SetColor
    call Palette_PaletteBufferFadeUniColor
    ld a, $01
    ld [wPalette_VBlankReady], a
    ret






; source/engine/system/graphics/tilemap/tilemap_position.s

; Tilemap flags
; 0,YMIN,YMAX,YMOVE,0,XMIN,XMAX,XMOVE
DEF TILEMAP_FLAG_XFIXED EQU 3

    ; $491F
Tilemap_Clamp::
    ; Sets SCY and SCX. Exact mechanics unclear.
    ; Ensures the camera is not out of bounds of the tilemap?
    ld e, $00                                     ; $491F: $1E $00
    ld a, [wTilemap_Width]                                 ; $4921: $FA $47 $C8
    cp $0A                                        ; $4924: $FE $0A
    jr nz, jr_007_492C                            ; $4926: $20 $04

    set TILEMAP_FLAG_XFIXED, e                                      ; $4928: $CB $DB
    jr jr_007_4936                                ; $492A: $18 $0A

jr_007_492C:
    ld d, a                                       ; $492C: $57
    ld a, [wTilemap_XTile]                                 ; $492D: $FA $5F $C8
    and a                                         ; $4930: $A7
    jr z, jr_007_4936                             ; $4931: $28 $03

    cp d                                          ; $4933: $BA
    jr c, jr_007_4949                             ; $4934: $38 $13

jr_007_4936:
    xor a                                         ; $4936: $AF
    ld [wTilemap_XTile], a                                 ; $4937: $EA $5F $C8
    ld [wTilemap_XTileOffset], a                                 ; $493A: $EA $5D $C8
    set 2, e                                      ; $493D: $CB $D3
    ld a, [wTilemap_HStop]                                 ; $493F: $FA $45 $C8
    and a                                         ; $4942: $A7
    jr nz, jr_007_4963                            ; $4943: $20 $1E

    set 1, e                                      ; $4945: $CB $CB
    jr jr_007_4963                                ; $4947: $18 $1A

jr_007_4949:
    ld d, a                                       ; $4949: $57
    ld a, [wTilemap_HStop]                                 ; $494A: $FA $45 $C8
    ld l, a                                       ; $494D: $6F
    cp d                                          ; $494E: $BA
    jr z, jr_007_4953                             ; $494F: $28 $02

    jr nc, jr_007_4963                            ; $4951: $30 $10

jr_007_4953:
    set 1, e                                      ; $4953: $CB $CB
    ld a, $0F                                     ; $4955: $3E $0F
    ld [wTilemap_XTileOffset], a                                 ; $4957: $EA $5D $C8
    ld a, l                                       ; $495A: $7D
    ld [wTilemap_XTile], a                                 ; $495B: $EA $5F $C8
    and a                                         ; $495E: $A7
    jr nz, jr_007_4963                            ; $495F: $20 $02

    set 2, e                                      ; $4961: $CB $D3

jr_007_4963:
    ld a, [wTilemap_VStop]                                 ; $4963: $FA $46 $C8
    add $0A                                       ; $4966: $C6 $0A
    cp $09                                        ; $4968: $FE $09
    jr nz, jr_007_4970                            ; $496A: $20 $04

    set 7, e                                      ; $496C: $CB $FB
    jr jr_007_497A                                ; $496E: $18 $0A

jr_007_4970:
    ld d, a                                       ; $4970: $57
    ld a, [wTilemap_YTile]                                 ; $4971: $FA $60 $C8
    and a                                         ; $4974: $A7
    jr z, jr_007_497A                             ; $4975: $28 $03

    cp d                                          ; $4977: $BA
    jr c, jr_007_498D                             ; $4978: $38 $13

jr_007_497A:
    xor a                                         ; $497A: $AF
    ld [wTilemap_YTile], a                                 ; $497B: $EA $60 $C8
    ld [wTilemap_YTileOffset], a                                 ; $497E: $EA $5E $C8
    set 6, e                                      ; $4981: $CB $F3
    ld a, [wTilemap_VStop]                                 ; $4983: $FA $46 $C8
    and a                                         ; $4986: $A7
    jr nz, jr_007_49A7                            ; $4987: $20 $1E

    set 5, e                                      ; $4989: $CB $EB
    jr jr_007_49A7                                ; $498B: $18 $1A

jr_007_498D:
    ld d, a                                       ; $498D: $57
    ld a, [wTilemap_VStop]                                 ; $498E: $FA $46 $C8
    ld l, a                                       ; $4991: $6F
    cp d                                          ; $4992: $BA
    jr z, jr_007_4997                             ; $4993: $28 $02

    jr nc, jr_007_49A7                            ; $4995: $30 $10

jr_007_4997:
    set 5, e                                      ; $4997: $CB $EB
    ld a, $0F                                     ; $4999: $3E $0F
    ld [wTilemap_YTileOffset], a                                 ; $499B: $EA $5E $C8
    ld a, l                                       ; $499E: $7D
    ld [wTilemap_YTile], a                                 ; $499F: $EA $60 $C8
    and a                                         ; $49A2: $A7
    jr nz, jr_007_49A7                            ; $49A3: $20 $02

    set 6, e                                      ; $49A5: $CB $F3

jr_007_49A7:
    ld a, e                                       ; $49A7: $7B
    ld [wTilemap_Flags], a                                 ; $49A8: $EA $42 $C8
    ld a, [wTilemap_XTile]                                 ; $49AB: $FA $5F $C8
    add a                                         ; $49AE: $87
    add a                                         ; $49AF: $87
    add a                                         ; $49B0: $87
    add a                                         ; $49B1: $87
    ld b, a                                       ; $49B2: $47
    ld a, [wTilemap_XTileOffset]                                 ; $49B3: $FA $5D $C8
    add b                                         ; $49B6: $80
    ld [wSCXW], a                                 ; $49B7: $EA $35 $C9
    ldh [rSCX], a                                 ; $49BA: $E0 $43
    ld a, [wTilemap_YTile]                                 ; $49BC: $FA $60 $C8
    ld c, a                                       ; $49BF: $4F
    add a                                         ; $49C0: $87
    add a                                         ; $49C1: $87
    add a                                         ; $49C2: $87
    add a                                         ; $49C3: $87
    ld b, a                                       ; $49C4: $47
    ld a, [wTilemap_YTileOffset]                                 ; $49C5: $FA $5E $C8
    add b                                         ; $49C8: $80
    ld [wSCYW], a                                 ; $49C9: $EA $34 $C9
    ldh [rSCY], a                                 ; $49CC: $E0 $42
    ld a, [wTilemap_Width]                                 ; $49CE: $FA $47 $C8
    ld b, a                                       ; $49D1: $47
    call Math_Mult                                    ; $49D2: $CD $CA $04
    ld a, [wTilemap_XTile]                                 ; $49D5: $FA $5F $C8
    add l                                         ; $49D8: $85
    ld [$C861], a                                 ; $49D9: $EA $61 $C8
    ld a, $D0                                     ; $49DC: $3E $D0
    adc h                                         ; $49DE: $8C
    ld [$C862], a                                 ; $49DF: $EA $62 $C8
    ld a, [wTilemap_YTile]                                 ; $49E2: $FA $60 $C8
    ld c, a                                       ; $49E5: $4F
    ld b, $40                                     ; $49E6: $06 $40
    call Math_Mult                                    ; $49E8: $CD $CA $04
    ld a, h                                       ; $49EB: $7C
    and $03                                       ; $49EC: $E6 $03
    add $98                                       ; $49EE: $C6 $98
    ld [$C864], a                                 ; $49F0: $EA $64 $C8
    ld a, [wTilemap_XTile]                                 ; $49F3: $FA $5F $C8
    add a                                         ; $49F6: $87
    and $1F                                       ; $49F7: $E6 $1F
    add l                                         ; $49F9: $85
    ld [wTilemap_XYTileAddress], a                                 ; $49FA: $EA $63 $C8
    ld a, [$C864]                                 ; $49FD: $FA $64 $C8
    ld d, a                                       ; $4A00: $57
    ld a, [wTilemap_XYTileAddress]                                 ; $4A01: $FA $63 $C8
    ld e, a                                       ; $4A04: $5F
    ld hl, $0020                                  ; $4A05: $21 $20 $00
    ld a, [wTilemap_XTileOffset]                                 ; $4A08: $FA $5D $C8
    bit 3, a                                      ; $4A0B: $CB $5F
    jr nz, jr_007_4A27                            ; $4A0D: $20 $18

    ld a, [wTilemap_YTileOffset]                                 ; $4A0F: $FA $5E $C8
    bit 3, a                                      ; $4A12: $CB $5F
    jr nz, jr_007_4A17                            ; $4A14: $20 $01

    ret                                           ; $4A16: $C9


jr_007_4A17:
    add hl, de                                    ; $4A17: $19
    ld a, h                                       ; $4A18: $7C
    and $03                                       ; $4A19: $E6 $03
    add $98                                       ; $4A1B: $C6 $98
    ld h, a                                       ; $4A1D: $67
    ld a, h                                       ; $4A1E: $7C
    ld [$C864], a                                 ; $4A1F: $EA $64 $C8
    ld a, l                                       ; $4A22: $7D
    ld [wTilemap_XYTileAddress], a                                 ; $4A23: $EA $63 $C8
    ret                                           ; $4A26: $C9


jr_007_4A27:
    ld a, [wTilemap_YTileOffset]                                 ; $4A27: $FA $5E $C8
    bit 3, a                                      ; $4A2A: $CB $5F
    jr nz, jr_007_4A3B                            ; $4A2C: $20 $0D

    ld a, e                                       ; $4A2E: $7B
    inc a                                         ; $4A2F: $3C
    and $1F                                       ; $4A30: $E6 $1F
    ld c, a                                       ; $4A32: $4F
    ld a, e                                       ; $4A33: $7B
    and $E0                                       ; $4A34: $E6 $E0
    add c                                         ; $4A36: $81
    ld [wTilemap_XYTileAddress], a                                 ; $4A37: $EA $63 $C8
    ret                                           ; $4A3A: $C9


jr_007_4A3B:
    ld a, e                                       ; $4A3B: $7B
    inc a                                         ; $4A3C: $3C
    and $1F                                       ; $4A3D: $E6 $1F
    ld c, a                                       ; $4A3F: $4F
    ld a, e                                       ; $4A40: $7B
    and $E0                                       ; $4A41: $E6 $E0
    add c                                         ; $4A43: $81
    ld e, a                                       ; $4A44: $5F
    add hl, de                                    ; $4A45: $19
    ld a, h                                       ; $4A46: $7C
    and $03                                       ; $4A47: $E6 $03
    add $98                                       ; $4A49: $C6 $98
    ld h, a                                       ; $4A4B: $67
    ld a, h                                       ; $4A4C: $7C
    ld [$C864], a                                 ; $4A4D: $EA $64 $C8
    ld a, l                                       ; $4A50: $7D
    ld [wTilemap_XYTileAddress], a                                 ; $4A51: $EA $63 $C8
    ret                                           ; $4A54: $C9

    ; $4A55
Tilemap_Position::
    call Tilemap_Clamp                            ; $4A55: $CD $1F $49
    ld a, [$C862]                                 ; $4A58: $FA $62 $C8
    ld h, a                                       ; $4A5B: $67
    ld a, [$C861]                                 ; $4A5C: $FA $61 $C8
    ld l, a                                       ; $4A5F: $6F
    ld a, [wTilemap_XTile]                                 ; $4A60: $FA $5F $C8
    ld d, a                                       ; $4A63: $57
    ld a, [wTilemap_YTile]                                 ; $4A64: $FA $60 $C8
    ld e, a                                       ; $4A67: $5F
    ld c, $0A                                     ; $4A68: $0E $0A

Jump_007_4A6A:
    push hl                                       ; $4A6A: $E5
    push de                                       ; $4A6B: $D5
    ld b, $0B                                     ; $4A6C: $06 $0B

Jump_007_4A6E:
    push bc                                       ; $4A6E: $C5
    push de                                       ; $4A6F: $D5
    push hl                                       ; $4A70: $E5
    SwitchRAMBank $03
    ld a, [hl]                                    ; $4A78: $7E
    ld c, a                                       ; $4A79: $4F
    call Tilemap_Ready_DrawTile                            ; $4A7A: $CD $53 $4C
    call Call_007_4CBB                            ; $4A7D: $CD $BB $4C
    pop hl                                        ; $4A80: $E1
    pop de                                        ; $4A81: $D1
    pop bc                                        ; $4A82: $C1
    inc d                                         ; $4A83: $14
    inc hl                                        ; $4A84: $23
    dec b                                         ; $4A85: $05
    jp nz, Jump_007_4A6E                          ; $4A86: $C2 $6E $4A

    pop de                                        ; $4A89: $D1
    inc e                                         ; $4A8A: $1C
    pop hl                                        ; $4A8B: $E1
    ld a, [wTilemap_Width]                                 ; $4A8C: $FA $47 $C8
    add l                                         ; $4A8F: $85
    ld l, a                                       ; $4A90: $6F
    ld a, $00                                     ; $4A91: $3E $00
    adc h                                         ; $4A93: $8C
    ld h, a                                       ; $4A94: $67
    dec c                                         ; $4A95: $0D
    jp nz, Jump_007_4A6A                          ; $4A96: $C2 $6A $4A

    xor a                                         ; $4A99: $AF
    ld [rVBK], a                                 ; $4A9A: $EA $4F $FF
    SwitchRAMBank a ; causes a ld a, a instruction
    ret                                           ; $4AA3: $C9

    ; $4AA4
Tilemap_UpdateTile::
    ; Sets up the next VBlank function to draw a single tile onto the tilemap
    ;
    ; Inputs:
    ;   wTilemap_VBlank_DestAddress - temporary variable used to store
    ;       Xcoord (upper), Ycoord (lower) - TODO These are in Tilemap coords?
    ;   wTilemap_VBlank_SourceAddress - temporary variable used to store
    ;       MapAddress - the address of the target tile on the metatilemap
    SwitchRAMBank BANK(wMetatilemap)
    Get16 de, wTilemap_VBlank_DestAddress ; Temp var -> (d = X coord, e = Y coord)
    Get16 hl, wTilemap_VBlank_SourceAddress  ; Temp var -> (hl = MapAddress)
    ld c, [hl]
    call Tilemap_Ready_DrawTile
    Set16 wTilemap_VBlank_DestAddress, de
    Set16 wTilemap_VBlank_SourceAddress, hl
    Set8 wVBlank_Bank, BANK(Tilemap_VBlank_Drawtile2)
    Set16_M wVBlank_Func, Tilemap_VBlank_Drawtile2
    ret

Call_007_4ADF::
    SwitchRAMBank $03
    ld a, [wTilemap_VBlank_DestAddress+1]                                 ; $4AE6: $FA $C8 $C8
    ld d, a                                       ; $4AE9: $57
    ld a, [wTilemap_VBlank_DestAddress]                                 ; $4AEA: $FA $C7 $C8
    ld e, a                                       ; $4AED: $5F
    ld a, [wTilemap_VBlank_SourceAddress+1]                                 ; $4AEE: $FA $C6 $C8
    ld h, a                                       ; $4AF1: $67
    ld a, [wTilemap_VBlank_SourceAddress]                                 ; $4AF2: $FA $C5 $C8
    ld l, a                                       ; $4AF5: $6F
    ld c, [hl]                                    ; $4AF6: $4E
    call Tilemap_Ready_DrawTile                            ; $4AF7: $CD $53 $4C
    ld a, d                                       ; $4AFA: $7A
    ld [wTilemap_VBlank_DestAddress+1], a                                 ; $4AFB: $EA $C8 $C8
    ld a, e                                       ; $4AFE: $7B
    ld [wTilemap_VBlank_DestAddress], a                                 ; $4AFF: $EA $C7 $C8
    ld a, h                                       ; $4B02: $7C
    ld [wTilemap_VBlank_SourceAddress+1], a                                 ; $4B03: $EA $C6 $C8
    ld a, l                                       ; $4B06: $7D
    ld [wTilemap_VBlank_SourceAddress], a                                 ; $4B07: $EA $C5 $C8
    ld a, $07                                     ; $4B0A: $3E $07
    ld [wVBlank_Bank], a                                 ; $4B0C: $EA $E6 $C6
    ld a, $A1                                     ; $4B0F: $3E $A1
    ld [wVBlank_Func], a                                 ; $4B11: $EA $E4 $C6
    ld a, $4C                                     ; $4B14: $3E $4C
    ld [wVBlank_Func+1], a                                 ; $4B16: $EA $E5 $C6
    call System_DoVFunc                                    ; $4B19: $CD $0A $08
    ret                                           ; $4B1C: $C9

    ; $4B1D
Tilemap_VBlank_DrawRowCol::
    ; This seems to update rSCX and rSCY
    ; and then potentially copy some stuff into VRAM during the vblank
    ; But this function wasn't closely investigated
    ld a, [wSCXW]                                 ; $4B1D: $FA $35 $C9
    ldh [rSCX], a                                 ; $4B20: $E0 $43
    ld a, [wSCYW]                                 ; $4B22: $FA $34 $C9
    ldh [rSCY], a                                 ; $4B25: $E0 $42
    ld a, [wTilemap_ColTrig]                                 ; $4B27: $FA $92 $C8
    and a                                         ; $4B2A: $A7
    jp z, Jump_007_4BC1                           ; $4B2B: $CA $C1 $4B

    and $01                                       ; $4B2E: $E6 $01
    ldh [rVBK], a                                 ; $4B30: $E0 $4F
    xor a                                         ; $4B32: $AF
    ld [wTilemap_ColTrig], a                                 ; $4B33: $EA $92 $C8
    ld hl, wTilemap_VRAMCol                                  ; $4B36: $21 $9F $C8
    ld bc, wTilemap_Col_Tiles                                  ; $4B39: $01 $16 $C1

    REPT 19
        Tilemap_Col_ByteCopy
    ENDR

Jump_007_4BC1:
    ld a, [wTilemap_RowTrig]                                 ; $4BC1: $FA $6A $C8
    and a                                         ; $4BC4: $A7
    jp z, Jump_007_4C47                           ; $4BC5: $CA $47 $4C

    and $01                                       ; $4BC8: $E6 $01
    ldh [rVBK], a                                 ; $4BCA: $E0 $4F
    xor a                                         ; $4BCC: $AF
    ld [wTilemap_RowTrig], a                                 ; $4BCD: $EA $6A $C8
    ld hl, wTilemap_VRAMRow                                  ; $4BD0: $21 $78 $C8
    Get16 de, wTilemap_Row_Dest
    ld bc, wTilemap_Row_Tiles                                  ; $4BDB: $01 $00 $C1

    REPT 21
        Tilemap_Row_ByteCopy
    ENDR

Jump_007_4C47:
    xor a                                         ; $4C47: $AF
    ldh [rVBK], a                                 ; $4C48: $E0 $4F
    ld a, [wTilemap_Flags]                                 ; $4C4A: $FA $42 $C8
    and %11101110                                       ; $4C4D: $E6 $EE
    ld [wTilemap_Flags], a                                 ; $4C4F: $EA $42 $C8
    ret                                           ; $4C52: $C9

    ; $4C53
Tilemap_Ready_DrawTile::
    ; Given an (x,y) coordinate and a desired tile id
    ; Returns the destination address to update on the tilemap and
    ;   the source address to copy from the pattern
    ; Inputs:
    ;   d = X Map Tile
    ;   e = Y Map Tile
    ;   c = MetaTile ID
    ; Outputs:
    ;   de = VRAM tilemap dest addr
    ;   hl = copy source address (address within wPattern)

    ld b, d
    ; de = ((Y*$40)+(X*2)+$9800)
        ; de = Y*$40
        ld a, e ;Y
        rrca ; Instead of rotating left 6 times, do the same thing by rotating right twice and swaping the upper and lower
        rrca
        ld e, a
        and %00000011
        ld d, a
        ld a, e
        and %11000000
        ld e, a

        ; a = X*2
        ld a, b
        add a
        and $1F ; X*2 and, for safety, mask with $1F (screen width)

        ; de += a + $9800
        add e
        ld e, a
        ld a, HIGH($9800)
        adc d
        ld d, a

    ; hl = (TileID*$04 + $D000)
        ; a = l = TileID*$04
        ld a, c
        rlca
        rlca
        ld l, a

         ;Upper 2 bits go in upper register
        and %00000011
        add HIGH(wPattern)
        ld h, a

        ; Lower 6 bits go in lower register
        ld a, l
        and %11111100
        ld l, a
    ret

    ; $4C77
Tilemap_VBlank_Drawtile1::
    ld a, [wTilemap_VBlank_DestAddress+1]                                 ; $4C77: $FA $C8 $C8
    ld d, a                                       ; $4C7A: $57
    ld a, [wTilemap_VBlank_DestAddress]                                 ; $4C7B: $FA $C7 $C8
    ld e, a                                       ; $4C7E: $5F
    ld a, [wTilemap_VBlank_SourceAddress]                                 ; $4C7F: $FA $C5 $C8
    ld c, a                                       ; $4C82: $4F
    call Tilemap_Ready_DrawTile                            ; $4C83: $CD $53 $4C
    ld a, d                                       ; $4C86: $7A
    ld [wTilemap_VBlank_DestAddress+1], a                                 ; $4C87: $EA $C8 $C8
    ld a, e                                       ; $4C8A: $7B
    ld [wTilemap_VBlank_DestAddress], a                                 ; $4C8B: $EA $C7 $C8
    ld a, h                                       ; $4C8E: $7C
    ld [wTilemap_VBlank_SourceAddress+1], a                                 ; $4C8F: $EA $C6 $C8
    ld a, l                                       ; $4C92: $7D
    ld [wTilemap_VBlank_SourceAddress], a                                 ; $4C93: $EA $C5 $C8
    ld a, $A1                                     ; $4C96: $3E $A1
    ld [wVBlank_Func], a                                 ; $4C98: $EA $E4 $C6
    ld a, $4C                                     ; $4C9B: $3E $4C
    ld [wVBlank_Func+1], a                                 ; $4C9D: $EA $E5 $C6
    ret                                           ; $4CA0: $C9

    ; $4CA1
Tilemap_VBlank_Drawtile2::
    ; Copies a single metatile from source to dest into the visible tilemap
    ; Inputs:
    ;   wTilemap_VBlank_DestAddress - $9800 tilemap address
    ;   wTilemap_VBlank_SourceAddress - wPattern metatile address (first $400 bytes)
    Get16 de, wTilemap_VBlank_DestAddress ;address within $9800 tilemap
    Get16 hl, wTilemap_VBlank_SourceAddress ;address within wPattern
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle

Call_007_4CBB::
    SwitchRAMBank BANK(wPattern)
    ; tilemap
        xor a
        ldh [rVBK], a
        ld b, a
        ld c, $1F
        push de ;store the source and dest addresses
        push hl
        ; TopLeft tile
            ld a, [hl+]
            ld [de], a
        ; TopRight
            inc e
            ld a, [hl+]
            ld [de], a
        ; BottomLeft
            ; de += $1F
            ld a, c ; $00
            add e
            ld e, a
            ld a, b ; $1F
            adc d
            ld d, a

            ld a, [hl+]
            ld [de], a
            inc e
        ; BottomRight
            ld a, [hl]
            ld [de], a
    ; attrmap
        Set8FF rVBK, $01
        pop hl
        pop de
        ; hl += $400 (wPattern's attrmap)
        ld a, $04
        add h
        ld h, a
        ; TopLeft tile
            ld a, [hl+]
            ld [de], a
        ; TopRight
            inc e
            ld a, [hl+]
            ld [de], a
        ; BottomLeft
            ; de += $1F
            ld a, c ; $00
            add e
            ld e, a
            ld a, b ; $1F
            adc d
            ld d, a

            ld a, [hl+]
            ld [de], a
            inc e
        ; BottomRight
            ld a, [hl]
            ld [de], a
    ret

    ; $4CF5
Tilemap_Ready_ColCodes::
    ld hl, wTilemap_ColPhase                                  ; $4CF5: $21 $91 $C8
    sra [hl]                                      ; $4CF8: $CB $2E
    ld a, [wTilemap_Flags]                                 ; $4CFA: $FA $42 $C8
    bit 3, a                                      ; $4CFD: $CB $5F
    jp nz, Jump_007_4F38                          ; $4CFF: $C2 $38 $4F

    ld a, [wTilemap_XDelta]                                 ; $4D02: $FA $43 $C8
    and a                                         ; $4D05: $A7
    jp z, Jump_007_4F38                           ; $4D06: $CA $38 $4F

    ld e, a                                       ; $4D09: $5F
    bit 7, e                                      ; $4D0A: $CB $7B
    jp z, Jump_007_4D96                           ; $4D0C: $CA $96 $4D

    ld a, e                                       ; $4D0F: $7B
    cp $FC                                        ; $4D10: $FE $FC
    jr nc, jr_007_4D16                            ; $4D12: $30 $02

    ld e, $FC                                     ; $4D14: $1E $FC

jr_007_4D16:
    ld a, [wTilemap_Flags]                                 ; $4D16: $FA $42 $C8
    bit 2, a                                      ; $4D19: $CB $57
    jr z, jr_007_4D2E                             ; $4D1B: $28 $11

    ld a, [wTilemap_XTileOffset]                                 ; $4D1D: $FA $5D $C8
    ld b, a                                       ; $4D20: $47
    add e                                         ; $4D21: $83
    bit 7, a                                      ; $4D22: $CB $7F
    jr z, jr_007_4D2E                             ; $4D24: $28 $08

    ld a, b                                       ; $4D26: $78
    and a                                         ; $4D27: $A7
    jp z, Jump_007_4F38                           ; $4D28: $CA $38 $4F

    cpl                                           ; $4D2B: $2F
    inc a                                         ; $4D2C: $3C
    ld e, a                                       ; $4D2D: $5F

jr_007_4D2E:
    ld a, e                                       ; $4D2E: $7B
    ld hl, $C935                                  ; $4D2F: $21 $35 $C9
    add [hl]                                      ; $4D32: $86
    ld [hl], a                                    ; $4D33: $77
    ld a, [wTilemap_XTileOffset]                                 ; $4D34: $FA $5D $C8
    ld d, a                                       ; $4D37: $57
    add e                                         ; $4D38: $83
    ld e, a                                       ; $4D39: $5F
    bit 7, a                                      ; $4D3A: $CB $7F
    jr z, jr_007_4D40                             ; $4D3C: $28 $02

    add $10                                       ; $4D3E: $C6 $10

jr_007_4D40:
    ld [wTilemap_XTileOffset], a                                 ; $4D40: $EA $5D $C8
    xor d                                         ; $4D43: $AA
    bit 3, a                                      ; $4D44: $CB $5F
    jp z, Jump_007_4F38                           ; $4D46: $CA $38 $4F

    bit 7, e                                      ; $4D49: $CB $7B
    ld hl, $C861                                  ; $4D4B: $21 $61 $C8
    jr z, jr_007_4D6E                             ; $4D4E: $28 $1E

    push hl                                       ; $4D50: $E5
    ld hl, wTilemap_XTile                                  ; $4D51: $21 $5F $C8
    dec [hl]                                      ; $4D54: $35
    ld l, [hl]                                    ; $4D55: $6E
    ld a, l                                       ; $4D56: $7D
    and a                                         ; $4D57: $A7
    ld c, $05                                     ; $4D58: $0E $05
    jr z, jr_007_4D5E                             ; $4D5A: $28 $02

    ld c, $01                                     ; $4D5C: $0E $01

jr_007_4D5E:
    ld hl, wTilemap_Flags                                  ; $4D5E: $21 $42 $C8
    ld a, [hl]                                    ; $4D61: $7E
    and $F8                                       ; $4D62: $E6 $F8
    add c                                         ; $4D64: $81
    ld [hl], a                                    ; $4D65: $77
    pop hl                                        ; $4D66: $E1
    DecHL16

jr_007_4D6E:
    ld a, [hl+]                                   ; $4D6E: $2A
    ld b, [hl]                                    ; $4D6F: $46
    ld c, a                                       ; $4D70: $4F
    FSet16 $C88D, bc                                    ; $4D76: $70
    ld a, [wTilemap_XYTileAddress]                                 ; $4D77: $FA $63 $C8
    ld e, a                                       ; $4D7A: $5F
    dec a                                         ; $4D7B: $3D
    and $1F                                       ; $4D7C: $E6 $1F
    ld d, a                                       ; $4D7E: $57
    ld a, e                                       ; $4D7F: $7B
    and $E0                                       ; $4D80: $E6 $E0
    add d                                         ; $4D82: $82
    ld [$C88F], a                                 ; $4D83: $EA $8F $C8
    ld hl, wTilemap_XYTileAddress                                  ; $4D86: $21 $63 $C8
    ld [hl+], a                                   ; $4D89: $22
    ld a, [hl]                                    ; $4D8A: $7E
    ld [$C890], a                                 ; $4D8B: $EA $90 $C8
    ld a, $02                                     ; $4D8E: $3E $02
    ld [wTilemap_ColPhase], a                                 ; $4D90: $EA $91 $C8
    jp Jump_007_4F38                              ; $4D93: $C3 $38 $4F


Jump_007_4D96:
    ld a, e                                       ; $4D96: $7B
    cp $04                                        ; $4D97: $FE $04
    jr c, jr_007_4D9D                             ; $4D99: $38 $02

    ld e, $04                                     ; $4D9B: $1E $04

jr_007_4D9D:
    ld a, [wTilemap_Flags]                                 ; $4D9D: $FA $42 $C8
    bit 1, a                                      ; $4DA0: $CB $4F
    jr z, jr_007_4DB6                             ; $4DA2: $28 $12

    ld a, [wTilemap_XTileOffset]                                 ; $4DA4: $FA $5D $C8
    ld b, a                                       ; $4DA7: $47
    add e                                         ; $4DA8: $83
    bit 4, a                                      ; $4DA9: $CB $67
    jr z, jr_007_4DB6                             ; $4DAB: $28 $09

    ld a, b                                       ; $4DAD: $78
    cpl                                           ; $4DAE: $2F
    and $0F                                       ; $4DAF: $E6 $0F
    and a                                         ; $4DB1: $A7
    jp z, Jump_007_4F38                           ; $4DB2: $CA $38 $4F

    ld e, a                                       ; $4DB5: $5F

jr_007_4DB6:
    ld a, e                                       ; $4DB6: $7B
    ld hl, $C935                                  ; $4DB7: $21 $35 $C9
    add [hl]                                      ; $4DBA: $86
    ld [hl], a                                    ; $4DBB: $77
    ld a, [wTilemap_XTileOffset]                                 ; $4DBC: $FA $5D $C8
    ld d, a                                       ; $4DBF: $57
    add e                                         ; $4DC0: $83
    ld e, a                                       ; $4DC1: $5F
    and $0F                                       ; $4DC2: $E6 $0F
    ld [wTilemap_XTileOffset], a                                 ; $4DC4: $EA $5D $C8
    xor d                                         ; $4DC7: $AA
    bit 3, a                                      ; $4DC8: $CB $5F
    jp z, Jump_007_4F38                           ; $4DCA: $CA $38 $4F

    bit 4, e                                      ; $4DCD: $CB $63
    FGet16 bc, $C861                                  ; $4DCF: $21 $61 $C8                                       ; $4DD4: $4F
    jr z, jr_007_4DF5                             ; $4DD5: $28 $1E

    ld hl, wTilemap_XTile                                  ; $4DD7: $21 $5F $C8
    inc [hl]                                      ; $4DDA: $34
    ld l, [hl]                                    ; $4DDB: $6E
    ld a, [wTilemap_HStop]                                 ; $4DDC: $FA $45 $C8
    cp l                                          ; $4DDF: $BD
    ld d, $03                                     ; $4DE0: $16 $03
    jr z, jr_007_4DE6                             ; $4DE2: $28 $02

    ld d, $01                                     ; $4DE4: $16 $01

jr_007_4DE6:
    ld hl, wTilemap_Flags                                  ; $4DE6: $21 $42 $C8
    ld a, [hl]                                    ; $4DE9: $7E
    and $F8                                       ; $4DEA: $E6 $F8
    add d                                         ; $4DEC: $82
    ld [hl], a                                    ; $4DED: $77
    inc bc                                        ; $4DEE: $03
    FSet16 $C861, bc                                    ; $4DF4: $70

jr_007_4DF5:
    ld hl, $000A                                  ; $4DF5: $21 $0A $00
    add hl, bc                                    ; $4DF8: $09
    ld a, h                                       ; $4DF9: $7C
    ld [$C88E], a                                 ; $4DFA: $EA $8E $C8
    ld a, l                                       ; $4DFD: $7D
    ld [$C88D], a                                 ; $4DFE: $EA $8D $C8
    ld a, [wTilemap_XYTileAddress]                                 ; $4E01: $FA $63 $C8
    ld e, a                                       ; $4E04: $5F
    inc a                                         ; $4E05: $3C
    and $1F                                       ; $4E06: $E6 $1F
    ld d, a                                       ; $4E08: $57
    ld a, e                                       ; $4E09: $7B
    and $E0                                       ; $4E0A: $E6 $E0
    add d                                         ; $4E0C: $82
    ld [wTilemap_XYTileAddress], a                                 ; $4E0D: $EA $63 $C8
    ld e, a                                       ; $4E10: $5F
    add $14                                       ; $4E11: $C6 $14
    and $1F                                       ; $4E13: $E6 $1F
    ld d, a                                       ; $4E15: $57
    ld a, e                                       ; $4E16: $7B
    and $E0                                       ; $4E17: $E6 $E0
    add d                                         ; $4E19: $82
    ld [$C88F], a                                 ; $4E1A: $EA $8F $C8
    ld a, [$C864]                                 ; $4E1D: $FA $64 $C8
    ld [$C890], a                                 ; $4E20: $EA $90 $C8
    ld a, $02                                     ; $4E23: $3E $02
    ld [wTilemap_ColPhase], a                                 ; $4E25: $EA $91 $C8
    jp Jump_007_4F38                              ; $4E28: $C3 $38 $4F


Jump_007_4E2B:
    ld [wTilemap_ColTrig], a                                 ; $4E2B: $EA $92 $C8
    ld d, $00                                     ; $4E2E: $16 $00
    ld a, [$C893]                                 ; $4E30: $FA $93 $C8
    ld e, a                                       ; $4E33: $5F
    SwitchRAMBank $02
    ld bc, wTilemap_Col_Tiles                                  ; $4E3B: $01 $16 $C1
    ld a, [$C895]                                 ; $4E3E: $FA $95 $C8
    ld l, a                                       ; $4E41: $6F
    xor a                                         ; $4E42: $AF
    sla l                                         ; $4E43: $CB $25
    adc d                                         ; $4E45: $8A
    sla a                                         ; $4E46: $CB $27
    sla l                                         ; $4E48: $CB $25
    adc $D4                                       ; $4E4A: $CE $D4
    ld h, a                                       ; $4E4C: $67
    ld a, l                                       ; $4E4D: $7D
    add e                                         ; $4E4E: $83
    ld l, a                                       ; $4E4F: $6F
    ld a, [$C894]                                 ; $4E50: $FA $94 $C8
    bit 3, a                                      ; $4E53: $CB $5F
    jr nz, jr_007_4E5A                            ; $4E55: $20 $03

    ld a, [hl]                                    ; $4E57: $7E
    ld [bc], a                                    ; $4E58: $02
    inc bc                                        ; $4E59: $03

jr_007_4E5A:
    inc hl                                        ; $4E5A: $23
    inc hl                                        ; $4E5B: $23
    ld a, [hl]                                    ; $4E5C: $7E
    ld [bc], a                                    ; $4E5D: $02
    inc bc                                        ; $4E5E: $03
    ld a, [$C896]                                 ; $4E5F: $FA $96 $C8
    ld l, a                                       ; $4E62: $6F
    xor a                                         ; $4E63: $AF
    sla l                                         ; $4E64: $CB $25
    adc d                                         ; $4E66: $8A
    sla l                                         ; $4E67: $CB $25
    rla                                           ; $4E69: $17
    add $D4                                       ; $4E6A: $C6 $D4
    ld h, a                                       ; $4E6C: $67
    ld a, l                                       ; $4E6D: $7D
    add e                                         ; $4E6E: $83
    ld l, a                                       ; $4E6F: $6F
    LdBCIHLI                                        ; $4E72: $03
    inc hl                                        ; $4E73: $23
    ld a, [hl]                                    ; $4E74: $7E
    ld [bc], a                                    ; $4E75: $02
    inc bc                                        ; $4E76: $03
    ld a, [$C897]                                 ; $4E77: $FA $97 $C8
    ld l, a                                       ; $4E7A: $6F
    xor a                                         ; $4E7B: $AF
    sla l                                         ; $4E7C: $CB $25
    adc d                                         ; $4E7E: $8A
    sla l                                         ; $4E7F: $CB $25
    rla                                           ; $4E81: $17
    add $D4                                       ; $4E82: $C6 $D4
    ld h, a                                       ; $4E84: $67
    ld a, l                                       ; $4E85: $7D
    add e                                         ; $4E86: $83
    ld l, a                                       ; $4E87: $6F
    LdBCIHLI                                        ; $4E8A: $03
    inc hl                                        ; $4E8B: $23
    ld a, [hl]                                    ; $4E8C: $7E
    ld [bc], a                                    ; $4E8D: $02
    inc bc                                        ; $4E8E: $03
    ld a, [$C898]                                 ; $4E8F: $FA $98 $C8
    ld l, a                                       ; $4E92: $6F
    xor a                                         ; $4E93: $AF
    sla l                                         ; $4E94: $CB $25
    adc d                                         ; $4E96: $8A
    sla l                                         ; $4E97: $CB $25
    rla                                           ; $4E99: $17
    add $D4                                       ; $4E9A: $C6 $D4
    ld h, a                                       ; $4E9C: $67
    ld a, l                                       ; $4E9D: $7D
    add e                                         ; $4E9E: $83
    ld l, a                                       ; $4E9F: $6F
    LdBCIHLI                                        ; $4EA2: $03
    inc hl                                        ; $4EA3: $23
    ld a, [hl]                                    ; $4EA4: $7E
    ld [bc], a                                    ; $4EA5: $02
    inc bc                                        ; $4EA6: $03
    ld a, [$C899]                                 ; $4EA7: $FA $99 $C8
    ld l, a                                       ; $4EAA: $6F
    xor a                                         ; $4EAB: $AF
    sla l                                         ; $4EAC: $CB $25
    adc d                                         ; $4EAE: $8A
    sla l                                         ; $4EAF: $CB $25
    rla                                           ; $4EB1: $17
    add $D4                                       ; $4EB2: $C6 $D4
    ld h, a                                       ; $4EB4: $67
    ld a, l                                       ; $4EB5: $7D
    add e                                         ; $4EB6: $83
    ld l, a                                       ; $4EB7: $6F
    LdBCIHLI                                        ; $4EBA: $03
    inc hl                                        ; $4EBB: $23
    ld a, [hl]                                    ; $4EBC: $7E
    ld [bc], a                                    ; $4EBD: $02
    inc bc                                        ; $4EBE: $03
    ld a, [$C89A]                                 ; $4EBF: $FA $9A $C8
    ld l, a                                       ; $4EC2: $6F
    xor a                                         ; $4EC3: $AF
    sla l                                         ; $4EC4: $CB $25
    adc d                                         ; $4EC6: $8A
    sla l                                         ; $4EC7: $CB $25
    rla                                           ; $4EC9: $17
    add $D4                                       ; $4ECA: $C6 $D4
    ld h, a                                       ; $4ECC: $67
    ld a, l                                       ; $4ECD: $7D
    add e                                         ; $4ECE: $83
    ld l, a                                       ; $4ECF: $6F
    LdBCIHLI                                        ; $4ED2: $03
    inc hl                                        ; $4ED3: $23
    ld a, [hl]                                    ; $4ED4: $7E
    ld [bc], a                                    ; $4ED5: $02
    inc bc                                        ; $4ED6: $03
    ld a, [$C89B]                                 ; $4ED7: $FA $9B $C8
    ld l, a                                       ; $4EDA: $6F
    xor a                                         ; $4EDB: $AF
    sla l                                         ; $4EDC: $CB $25
    adc d                                         ; $4EDE: $8A
    sla l                                         ; $4EDF: $CB $25
    rla                                           ; $4EE1: $17
    add $D4                                       ; $4EE2: $C6 $D4
    ld h, a                                       ; $4EE4: $67
    ld a, l                                       ; $4EE5: $7D
    add e                                         ; $4EE6: $83
    ld l, a                                       ; $4EE7: $6F
    LdBCIHLI                                        ; $4EEA: $03
    inc hl                                        ; $4EEB: $23
    ld a, [hl]                                    ; $4EEC: $7E
    ld [bc], a                                    ; $4EED: $02
    inc bc                                        ; $4EEE: $03
    ld a, [$C89C]                                 ; $4EEF: $FA $9C $C8
    ld l, a                                       ; $4EF2: $6F
    xor a                                         ; $4EF3: $AF
    sla l                                         ; $4EF4: $CB $25
    adc d                                         ; $4EF6: $8A
    sla l                                         ; $4EF7: $CB $25
    rla                                           ; $4EF9: $17
    add $D4                                       ; $4EFA: $C6 $D4
    ld h, a                                       ; $4EFC: $67
    ld a, l                                       ; $4EFD: $7D
    add e                                         ; $4EFE: $83
    ld l, a                                       ; $4EFF: $6F
    LdBCIHLI                                        ; $4F02: $03
    inc hl                                        ; $4F03: $23
    ld a, [hl]                                    ; $4F04: $7E
    ld [bc], a                                    ; $4F05: $02
    inc bc                                        ; $4F06: $03
    ld a, [$C89D]                                 ; $4F07: $FA $9D $C8
    ld l, a                                       ; $4F0A: $6F
    xor a                                         ; $4F0B: $AF
    sla l                                         ; $4F0C: $CB $25
    adc d                                         ; $4F0E: $8A
    sla l                                         ; $4F0F: $CB $25
    rla                                           ; $4F11: $17
    add $D4                                       ; $4F12: $C6 $D4
    ld h, a                                       ; $4F14: $67
    ld a, l                                       ; $4F15: $7D
    add e                                         ; $4F16: $83
    ld l, a                                       ; $4F17: $6F
    LdBCIHLI                                        ; $4F1A: $03
    inc hl                                        ; $4F1B: $23
    ld a, [hl]                                    ; $4F1C: $7E
    ld [bc], a                                    ; $4F1D: $02
    inc bc                                        ; $4F1E: $03
    ld a, [$C89E]                                 ; $4F1F: $FA $9E $C8
    ld l, a                                       ; $4F22: $6F
    xor a                                         ; $4F23: $AF
    sla l                                         ; $4F24: $CB $25
    adc d                                         ; $4F26: $8A
    sla l                                         ; $4F27: $CB $25
    rla                                           ; $4F29: $17
    add $D4                                       ; $4F2A: $C6 $D4
    ld h, a                                       ; $4F2C: $67
    ld a, l                                       ; $4F2D: $7D
    add e                                         ; $4F2E: $83
    ld l, a                                       ; $4F2F: $6F
    LdBCIHLI                                        ; $4F32: $03
    inc hl                                        ; $4F33: $23
    ld a, [hl]                                    ; $4F34: $7E
    ld [bc], a                                    ; $4F35: $02
    inc bc                                        ; $4F36: $03
    ret                                           ; $4F37: $C9


Jump_007_4F38:
    ld a, [wTilemap_ColPhase]                                 ; $4F38: $FA $91 $C8
    and a                                         ; $4F3B: $A7
    ret z                                         ; $4F3C: $C8

    cp $02                                        ; $4F3D: $FE $02
    jp nz, Jump_007_4E2B                          ; $4F3F: $C2 $2B $4E

    ld [wTilemap_ColTrig], a                                 ; $4F42: $EA $92 $C8
    ld b, $00                                     ; $4F45: $06 $00
    ld a, [wTilemap_Width]                                 ; $4F47: $FA $47 $C8
    ld c, a                                       ; $4F4A: $4F
    ld a, [$C88E]                                 ; $4F4B: $FA $8E $C8
    ld h, a                                       ; $4F4E: $67
    ld a, [$C88D]                                 ; $4F4F: $FA $8D $C8
    ld l, a                                       ; $4F52: $6F
    SwitchRAMBank $03
    ld a, [hl]                                    ; $4F5A: $7E
    ld [$C895], a                                 ; $4F5B: $EA $95 $C8
    add hl, bc                                    ; $4F5E: $09
    ld a, [hl]                                    ; $4F5F: $7E
    ld [$C896], a                                 ; $4F60: $EA $96 $C8
    add hl, bc                                    ; $4F63: $09
    ld a, [hl]                                    ; $4F64: $7E
    ld [$C897], a                                 ; $4F65: $EA $97 $C8
    add hl, bc                                    ; $4F68: $09
    ld a, [hl]                                    ; $4F69: $7E
    ld [$C898], a                                 ; $4F6A: $EA $98 $C8
    add hl, bc                                    ; $4F6D: $09
    ld a, [hl]                                    ; $4F6E: $7E
    ld [$C899], a                                 ; $4F6F: $EA $99 $C8
    add hl, bc                                    ; $4F72: $09
    ld a, [hl]                                    ; $4F73: $7E
    ld [$C89A], a                                 ; $4F74: $EA $9A $C8
    add hl, bc                                    ; $4F77: $09
    ld a, [hl]                                    ; $4F78: $7E
    ld [$C89B], a                                 ; $4F79: $EA $9B $C8
    add hl, bc                                    ; $4F7C: $09
    ld a, [hl]                                    ; $4F7D: $7E
    ld [$C89C], a                                 ; $4F7E: $EA $9C $C8
    add hl, bc                                    ; $4F81: $09
    ld a, [hl]                                    ; $4F82: $7E
    ld [$C89D], a                                 ; $4F83: $EA $9D $C8
    add hl, bc                                    ; $4F86: $09
    ld a, [hl]                                    ; $4F87: $7E
    ld [$C89E], a                                 ; $4F88: $EA $9E $C8
    add hl, bc                                    ; $4F8B: $09
    ld de, $0000                                  ; $4F8C: $11 $00 $00
    ld a, [wTilemap_XTileOffset]                                 ; $4F8F: $FA $5D $C8
    bit 3, a                                      ; $4F92: $CB $5F
    jr z, jr_007_4F98                             ; $4F94: $28 $02

    ld e, $01                                     ; $4F96: $1E $01

jr_007_4F98:
    ld a, e                                       ; $4F98: $7B
    ld [$C893], a                                 ; $4F99: $EA $93 $C8
    ld a, [wTilemap_YTileOffset]                                 ; $4F9C: $FA $5E $C8
    ld [$C894], a                                 ; $4F9F: $EA $94 $C8
    SwitchRAMBank $02
    ld bc, wTilemap_Col_Tiles                                  ; $4FA9: $01 $16 $C1
    ld a, [$C895]                                 ; $4FAC: $FA $95 $C8
    ld l, a                                       ; $4FAF: $6F
    xor a                                         ; $4FB0: $AF
    sla l                                         ; $4FB1: $CB $25
    adc d                                         ; $4FB3: $8A
    sla a                                         ; $4FB4: $CB $27
    sla l                                         ; $4FB6: $CB $25
    adc $D0                                       ; $4FB8: $CE $D0
    ld h, a                                       ; $4FBA: $67
    ld a, l                                       ; $4FBB: $7D
    add e                                         ; $4FBC: $83
    ld l, a                                       ; $4FBD: $6F
    ld a, [$C894]                                 ; $4FBE: $FA $94 $C8
    bit 3, a                                      ; $4FC1: $CB $5F
    jr nz, jr_007_4FC8                            ; $4FC3: $20 $03

    ld a, [hl]                                    ; $4FC5: $7E
    ld [bc], a                                    ; $4FC6: $02
    inc bc                                        ; $4FC7: $03

jr_007_4FC8:
    inc hl                                        ; $4FC8: $23
    inc hl                                        ; $4FC9: $23
    ld a, [hl]                                    ; $4FCA: $7E
    ld [bc], a                                    ; $4FCB: $02
    inc bc                                        ; $4FCC: $03
    ld a, [$C896]                                 ; $4FCD: $FA $96 $C8
    ld l, a                                       ; $4FD0: $6F
    xor a                                         ; $4FD1: $AF
    sla l                                         ; $4FD2: $CB $25
    adc d                                         ; $4FD4: $8A
    sla l                                         ; $4FD5: $CB $25
    rla                                           ; $4FD7: $17
    add $D0                                       ; $4FD8: $C6 $D0
    ld h, a                                       ; $4FDA: $67
    ld a, l                                       ; $4FDB: $7D
    add e                                         ; $4FDC: $83
    ld l, a                                       ; $4FDD: $6F
    LdBCIHLI                                        ; $4FE0: $03
    inc hl                                        ; $4FE1: $23
    ld a, [hl]                                    ; $4FE2: $7E
    ld [bc], a                                    ; $4FE3: $02
    inc bc                                        ; $4FE4: $03
    ld a, [$C897]                                 ; $4FE5: $FA $97 $C8
    ld l, a                                       ; $4FE8: $6F
    xor a                                         ; $4FE9: $AF
    sla l                                         ; $4FEA: $CB $25
    adc d                                         ; $4FEC: $8A
    sla l                                         ; $4FED: $CB $25
    rla                                           ; $4FEF: $17
    add $D0                                       ; $4FF0: $C6 $D0
    ld h, a                                       ; $4FF2: $67
    ld a, l                                       ; $4FF3: $7D
    add e                                         ; $4FF4: $83
    ld l, a                                       ; $4FF5: $6F
    LdBCIHLI                                        ; $4FF8: $03
    inc hl                                        ; $4FF9: $23
    ld a, [hl]                                    ; $4FFA: $7E
    ld [bc], a                                    ; $4FFB: $02
    inc bc                                        ; $4FFC: $03
    ld a, [$C898]                                 ; $4FFD: $FA $98 $C8
    ld l, a                                       ; $5000: $6F
    xor a                                         ; $5001: $AF
    sla l                                         ; $5002: $CB $25
    adc d                                         ; $5004: $8A
    sla l                                         ; $5005: $CB $25
    rla                                           ; $5007: $17
    add $D0                                       ; $5008: $C6 $D0
    ld h, a                                       ; $500A: $67
    ld a, l                                       ; $500B: $7D
    add e                                         ; $500C: $83
    ld l, a                                       ; $500D: $6F
    LdBCIHLI                                        ; $5010: $03
    inc hl                                        ; $5011: $23
    ld a, [hl]                                    ; $5012: $7E
    ld [bc], a                                    ; $5013: $02
    inc bc                                        ; $5014: $03
    ld a, [$C899]                                 ; $5015: $FA $99 $C8
    ld l, a                                       ; $5018: $6F
    xor a                                         ; $5019: $AF
    sla l                                         ; $501A: $CB $25
    adc d                                         ; $501C: $8A
    sla l                                         ; $501D: $CB $25
    rla                                           ; $501F: $17
    add $D0                                       ; $5020: $C6 $D0
    ld h, a                                       ; $5022: $67
    ld a, l                                       ; $5023: $7D
    add e                                         ; $5024: $83
    ld l, a                                       ; $5025: $6F
    LdBCIHLI                                        ; $5028: $03
    inc hl                                        ; $5029: $23
    ld a, [hl]                                    ; $502A: $7E
    ld [bc], a                                    ; $502B: $02
    inc bc                                        ; $502C: $03
    ld a, [$C89A]                                 ; $502D: $FA $9A $C8
    ld l, a                                       ; $5030: $6F
    xor a                                         ; $5031: $AF
    sla l                                         ; $5032: $CB $25
    adc d                                         ; $5034: $8A
    sla l                                         ; $5035: $CB $25
    rla                                           ; $5037: $17
    add $D0                                       ; $5038: $C6 $D0
    ld h, a                                       ; $503A: $67
    ld a, l                                       ; $503B: $7D
    add e                                         ; $503C: $83
    ld l, a                                       ; $503D: $6F
    LdBCIHLI                                        ; $5040: $03
    inc hl                                        ; $5041: $23
    ld a, [hl]                                    ; $5042: $7E
    ld [bc], a                                    ; $5043: $02
    inc bc                                        ; $5044: $03
    ld a, [$C89B]                                 ; $5045: $FA $9B $C8
    ld l, a                                       ; $5048: $6F
    xor a                                         ; $5049: $AF
    sla l                                         ; $504A: $CB $25
    adc d                                         ; $504C: $8A
    sla l                                         ; $504D: $CB $25
    rla                                           ; $504F: $17
    add $D0                                       ; $5050: $C6 $D0
    ld h, a                                       ; $5052: $67
    ld a, l                                       ; $5053: $7D
    add e                                         ; $5054: $83
    ld l, a                                       ; $5055: $6F
    LdBCIHLI                                        ; $5058: $03
    inc hl                                        ; $5059: $23
    ld a, [hl]                                    ; $505A: $7E
    ld [bc], a                                    ; $505B: $02
    inc bc                                        ; $505C: $03
    ld a, [$C89C]                                 ; $505D: $FA $9C $C8
    ld l, a                                       ; $5060: $6F
    xor a                                         ; $5061: $AF
    sla l                                         ; $5062: $CB $25
    adc d                                         ; $5064: $8A
    sla l                                         ; $5065: $CB $25
    rla                                           ; $5067: $17
    add $D0                                       ; $5068: $C6 $D0
    ld h, a                                       ; $506A: $67
    ld a, l                                       ; $506B: $7D
    add e                                         ; $506C: $83
    ld l, a                                       ; $506D: $6F
    LdBCIHLI                                        ; $5070: $03
    inc hl                                        ; $5071: $23
    ld a, [hl]                                    ; $5072: $7E
    ld [bc], a                                    ; $5073: $02
    inc bc                                        ; $5074: $03
    ld a, [$C89D]                                 ; $5075: $FA $9D $C8
    ld l, a                                       ; $5078: $6F
    xor a                                         ; $5079: $AF
    sla l                                         ; $507A: $CB $25
    adc d                                         ; $507C: $8A
    sla l                                         ; $507D: $CB $25
    rla                                           ; $507F: $17
    add $D0                                       ; $5080: $C6 $D0
    ld h, a                                       ; $5082: $67
    ld a, l                                       ; $5083: $7D
    add e                                         ; $5084: $83
    ld l, a                                       ; $5085: $6F
    LdBCIHLI                                        ; $5088: $03
    inc hl                                        ; $5089: $23
    ld a, [hl]                                    ; $508A: $7E
    ld [bc], a                                    ; $508B: $02
    inc bc                                        ; $508C: $03
    ld a, [$C89E]                                 ; $508D: $FA $9E $C8
    ld l, a                                       ; $5090: $6F
    xor a                                         ; $5091: $AF
    sla l                                         ; $5092: $CB $25
    adc d                                         ; $5094: $8A
    sla l                                         ; $5095: $CB $25
    rla                                           ; $5097: $17
    add $D0                                       ; $5098: $C6 $D0
    ld h, a                                       ; $509A: $67
    ld a, l                                       ; $509B: $7D
    add e                                         ; $509C: $83
    ld l, a                                       ; $509D: $6F
    LdBCIHLI                                        ; $50A0: $03
    inc hl                                        ; $50A1: $23
    ld a, [hl]                                    ; $50A2: $7E
    ld [bc], a                                    ; $50A3: $02
    inc bc                                        ; $50A4: $03
    ld bc, $0020                                  ; $50A5: $01 $20 $00
    ld de, $0398                                  ; $50A8: $11 $98 $03
    ld a, [$C890]                                 ; $50AB: $FA $90 $C8
    ld h, a                                       ; $50AE: $67
    ld a, [$C88F]                                 ; $50AF: $FA $8F $C8
    ld l, a                                       ; $50B2: $6F
    ld a, l                                       ; $50B3: $7D
    ld [wTilemap_VRAMCol], a                                 ; $50B4: $EA $9F $C8
    ld a, h                                       ; $50B7: $7C
    and d                                         ; $50B8: $A2
    add e                                         ; $50B9: $83
    ld h, a                                       ; $50BA: $67
    ld [$C8A0], a                                 ; $50BB: $EA $A0 $C8
    add hl, bc                                    ; $50BE: $09
    ld a, l                                       ; $50BF: $7D
    ld [$C8A1], a                                 ; $50C0: $EA $A1 $C8
    ld a, h                                       ; $50C3: $7C
    and d                                         ; $50C4: $A2
    add e                                         ; $50C5: $83
    ld h, a                                       ; $50C6: $67
    ld [$C8A2], a                                 ; $50C7: $EA $A2 $C8
    add hl, bc                                    ; $50CA: $09
    ld a, l                                       ; $50CB: $7D
    ld [$C8A3], a                                 ; $50CC: $EA $A3 $C8
    ld a, h                                       ; $50CF: $7C
    and d                                         ; $50D0: $A2
    add e                                         ; $50D1: $83
    ld h, a                                       ; $50D2: $67
    ld [$C8A4], a                                 ; $50D3: $EA $A4 $C8
    add hl, bc                                    ; $50D6: $09
    ld a, l                                       ; $50D7: $7D
    ld [$C8A5], a                                 ; $50D8: $EA $A5 $C8
    ld a, h                                       ; $50DB: $7C
    and d                                         ; $50DC: $A2
    add e                                         ; $50DD: $83
    ld h, a                                       ; $50DE: $67
    ld [$C8A6], a                                 ; $50DF: $EA $A6 $C8
    add hl, bc                                    ; $50E2: $09
    ld a, l                                       ; $50E3: $7D
    ld [$C8A7], a                                 ; $50E4: $EA $A7 $C8
    ld a, h                                       ; $50E7: $7C
    and d                                         ; $50E8: $A2
    add e                                         ; $50E9: $83
    ld h, a                                       ; $50EA: $67
    ld [$C8A8], a                                 ; $50EB: $EA $A8 $C8
    add hl, bc                                    ; $50EE: $09
    ld a, l                                       ; $50EF: $7D
    ld [$C8A9], a                                 ; $50F0: $EA $A9 $C8
    ld a, h                                       ; $50F3: $7C
    and d                                         ; $50F4: $A2
    add e                                         ; $50F5: $83
    ld h, a                                       ; $50F6: $67
    ld [$C8AA], a                                 ; $50F7: $EA $AA $C8
    add hl, bc                                    ; $50FA: $09
    ld a, l                                       ; $50FB: $7D
    ld [$C8AB], a                                 ; $50FC: $EA $AB $C8
    ld a, h                                       ; $50FF: $7C
    and d                                         ; $5100: $A2
    add e                                         ; $5101: $83
    ld h, a                                       ; $5102: $67
    ld [$C8AC], a                                 ; $5103: $EA $AC $C8
    add hl, bc                                    ; $5106: $09
    ld a, l                                       ; $5107: $7D
    ld [$C8AD], a                                 ; $5108: $EA $AD $C8
    ld a, h                                       ; $510B: $7C
    and d                                         ; $510C: $A2
    add e                                         ; $510D: $83
    ld h, a                                       ; $510E: $67
    ld [$C8AE], a                                 ; $510F: $EA $AE $C8
    add hl, bc                                    ; $5112: $09
    ld a, l                                       ; $5113: $7D
    ld [$C8AF], a                                 ; $5114: $EA $AF $C8
    ld a, h                                       ; $5117: $7C
    and d                                         ; $5118: $A2
    add e                                         ; $5119: $83
    ld h, a                                       ; $511A: $67
    ld [$C8B0], a                                 ; $511B: $EA $B0 $C8
    add hl, bc                                    ; $511E: $09
    ld a, l                                       ; $511F: $7D
    ld [$C8B1], a                                 ; $5120: $EA $B1 $C8
    ld a, h                                       ; $5123: $7C
    and d                                         ; $5124: $A2
    add e                                         ; $5125: $83
    ld h, a                                       ; $5126: $67
    ld [$C8B2], a                                 ; $5127: $EA $B2 $C8
    add hl, bc                                    ; $512A: $09
    ld a, l                                       ; $512B: $7D
    ld [$C8B3], a                                 ; $512C: $EA $B3 $C8
    ld a, h                                       ; $512F: $7C
    and d                                         ; $5130: $A2
    add e                                         ; $5131: $83
    ld h, a                                       ; $5132: $67
    ld [$C8B4], a                                 ; $5133: $EA $B4 $C8
    add hl, bc                                    ; $5136: $09
    ld a, l                                       ; $5137: $7D
    ld [$C8B5], a                                 ; $5138: $EA $B5 $C8
    ld a, h                                       ; $513B: $7C
    and d                                         ; $513C: $A2
    add e                                         ; $513D: $83
    ld h, a                                       ; $513E: $67
    ld [$C8B6], a                                 ; $513F: $EA $B6 $C8
    add hl, bc                                    ; $5142: $09
    ld a, l                                       ; $5143: $7D
    ld [$C8B7], a                                 ; $5144: $EA $B7 $C8
    ld a, h                                       ; $5147: $7C
    and d                                         ; $5148: $A2
    add e                                         ; $5149: $83
    ld h, a                                       ; $514A: $67
    ld [$C8B8], a                                 ; $514B: $EA $B8 $C8
    add hl, bc                                    ; $514E: $09
    ld a, l                                       ; $514F: $7D
    ld [$C8B9], a                                 ; $5150: $EA $B9 $C8
    ld a, h                                       ; $5153: $7C
    and d                                         ; $5154: $A2
    add e                                         ; $5155: $83
    ld h, a                                       ; $5156: $67
    ld [$C8BA], a                                 ; $5157: $EA $BA $C8
    add hl, bc                                    ; $515A: $09
    ld a, l                                       ; $515B: $7D
    ld [$C8BB], a                                 ; $515C: $EA $BB $C8
    ld a, h                                       ; $515F: $7C
    and d                                         ; $5160: $A2
    add e                                         ; $5161: $83
    ld h, a                                       ; $5162: $67
    ld [$C8BC], a                                 ; $5163: $EA $BC $C8
    add hl, bc                                    ; $5166: $09
    ld a, l                                       ; $5167: $7D
    ld [$C8BD], a                                 ; $5168: $EA $BD $C8
    ld a, h                                       ; $516B: $7C
    and d                                         ; $516C: $A2
    add e                                         ; $516D: $83
    ld h, a                                       ; $516E: $67
    ld [$C8BE], a                                 ; $516F: $EA $BE $C8
    add hl, bc                                    ; $5172: $09
    ld a, l                                       ; $5173: $7D
    ld [$C8BF], a                                 ; $5174: $EA $BF $C8
    ld a, h                                       ; $5177: $7C
    and d                                         ; $5178: $A2
    add e                                         ; $5179: $83
    ld h, a                                       ; $517A: $67
    ld [$C8C0], a                                 ; $517B: $EA $C0 $C8
    add hl, bc                                    ; $517E: $09
    ld a, l                                       ; $517F: $7D
    ld [$C8C1], a                                 ; $5180: $EA $C1 $C8
    ld a, h                                       ; $5183: $7C
    and d                                         ; $5184: $A2
    add e                                         ; $5185: $83
    ld h, a                                       ; $5186: $67
    ld [$C8C2], a                                 ; $5187: $EA $C2 $C8
    add hl, bc                                    ; $518A: $09
    ld a, l                                       ; $518B: $7D
    ld [$C8C3], a                                 ; $518C: $EA $C3 $C8
    ld a, h                                       ; $518F: $7C
    and d                                         ; $5190: $A2
    add e                                         ; $5191: $83
    ld h, a                                       ; $5192: $67
    ld [$C8C4], a                                 ; $5193: $EA $C4 $C8
    add hl, bc                                    ; $5196: $09
    ret                                           ; $5197: $C9

    ; $5198
Call_007_5198::
    ld hl, wTilemap_RowPhase                                  ; $5198: $21 $69 $C8
    sra [hl]                                      ; $519B: $CB $2E
    ld a, [wTilemap_Flags]                                 ; $519D: $FA $42 $C8
    bit 7, a                                      ; $51A0: $CB $7F
    jp nz, Jump_007_5415                          ; $51A2: $C2 $15 $54

    ld a, [wTilemap_YDelta]                                 ; $51A5: $FA $44 $C8
    and a                                         ; $51A8: $A7
    jp z, Jump_007_5415                           ; $51A9: $CA $15 $54

    ld e, a                                       ; $51AC: $5F
    bit 7, e                                      ; $51AD: $CB $7B
    jp z, Jump_007_524A                           ; $51AF: $CA $4A $52

    ld a, e                                       ; $51B2: $7B
    cp $FC                                        ; $51B3: $FE $FC
    jr nc, jr_007_51B9                            ; $51B5: $30 $02

    ld e, $FC                                     ; $51B7: $1E $FC

jr_007_51B9:
    ld a, [wTilemap_Flags]                                 ; $51B9: $FA $42 $C8
    bit 6, a                                      ; $51BC: $CB $77
    jr z, jr_007_51D1                             ; $51BE: $28 $11

    ld a, [wTilemap_YTileOffset]                                 ; $51C0: $FA $5E $C8
    ld b, a                                       ; $51C3: $47
    add e                                         ; $51C4: $83
    bit 7, a                                      ; $51C5: $CB $7F
    jr z, jr_007_51D1                             ; $51C7: $28 $08

    ld a, b                                       ; $51C9: $78
    and a                                         ; $51CA: $A7
    jp z, Jump_007_5415                           ; $51CB: $CA $15 $54

    cpl                                           ; $51CE: $2F
    inc a                                         ; $51CF: $3C
    ld e, a                                       ; $51D0: $5F

jr_007_51D1:
    ld a, e                                       ; $51D1: $7B
    ld hl, $C934                                  ; $51D2: $21 $34 $C9
    add [hl]                                      ; $51D5: $86
    ld [hl], a                                    ; $51D6: $77
    ld a, [wTilemap_YTileOffset]                                 ; $51D7: $FA $5E $C8
    ld d, a                                       ; $51DA: $57
    add e                                         ; $51DB: $83
    ld e, a                                       ; $51DC: $5F
    bit 7, a                                      ; $51DD: $CB $7F
    jr z, jr_007_51E3                             ; $51DF: $28 $02

    add $10                                       ; $51E1: $C6 $10

jr_007_51E3:
    ld [wTilemap_YTileOffset], a                                 ; $51E3: $EA $5E $C8
    xor d                                         ; $51E6: $AA
    bit 3, a                                      ; $51E7: $CB $5F
    jp z, Jump_007_5415                           ; $51E9: $CA $15 $54

    bit 7, e                                      ; $51EC: $CB $7B
    FGet16 bc, $C861                                  ; $51EE: $21 $61 $C8                                       ; $51F3: $4F
    FGet16 de, wTilemap_XYTileAddress                                  ; $51F4: $21 $63 $C8                                       ; $51F9: $5F
    jr z, jr_007_5226                             ; $51FA: $28 $2A

    push de                                       ; $51FC: $D5
    ld hl, wTilemap_YTile                                  ; $51FD: $21 $60 $C8
    dec [hl]                                      ; $5200: $35
    ld l, [hl]                                    ; $5201: $6E
    ld a, l                                       ; $5202: $7D
    and a                                         ; $5203: $A7
    ld d, $50                                     ; $5204: $16 $50
    jr z, jr_007_520A                             ; $5206: $28 $02

    ld d, $10                                     ; $5208: $16 $10

jr_007_520A:
    ld hl, wTilemap_Flags                                  ; $520A: $21 $42 $C8
    ld a, [hl]                                    ; $520D: $7E
    and $8F                                       ; $520E: $E6 $8F
    add d                                         ; $5210: $82
    ld [hl], a                                    ; $5211: $77
    ld a, [wTilemap_Width]                                 ; $5212: $FA $47 $C8
    cpl                                           ; $5215: $2F
    inc a                                         ; $5216: $3C
    ld l, a                                       ; $5217: $6F
    ld h, $FF                                     ; $5218: $26 $FF
    add hl, bc                                    ; $521A: $09
    ld a, l                                       ; $521B: $7D
    ld [$C861], a                                 ; $521C: $EA $61 $C8
    ld a, h                                       ; $521F: $7C
    ld [$C862], a                                 ; $5220: $EA $62 $C8
    ld c, l                                       ; $5223: $4D
    ld b, h                                       ; $5224: $44
    pop de                                        ; $5225: $D1

jr_007_5226:
    FSet16 $C865, bc                                    ; $522B: $70
    ld hl, $FFE0                                  ; $522C: $21 $E0 $FF
    add hl, de                                    ; $522F: $19
    ld a, l                                       ; $5230: $7D
    ld [wTilemap_XYTileAddress], a                                 ; $5231: $EA $63 $C8
    ld [wTilemap_Row_Dest], a                                 ; $5234: $EA $67 $C8
    ld a, h                                       ; $5237: $7C
    and $03                                       ; $5238: $E6 $03
    add $98                                       ; $523A: $C6 $98
    ld [$C864], a                                 ; $523C: $EA $64 $C8
    ld [wTilemap_Row_Dest+1], a                                 ; $523F: $EA $68 $C8
    ld a, $02                                     ; $5242: $3E $02
    ld [wTilemap_RowPhase], a                                 ; $5244: $EA $69 $C8
    jp Jump_007_5415                              ; $5247: $C3 $15 $54


Jump_007_524A:
    ld a, e                                       ; $524A: $7B
    cp $04                                        ; $524B: $FE $04
    jr c, jr_007_5251                             ; $524D: $38 $02

    ld e, $04                                     ; $524F: $1E $04

jr_007_5251:
    ld a, [wTilemap_Flags]                                 ; $5251: $FA $42 $C8
    bit 5, a                                      ; $5254: $CB $6F
    jr z, jr_007_526A                             ; $5256: $28 $12

    ld a, [wTilemap_YTileOffset]                                 ; $5258: $FA $5E $C8
    ld b, a                                       ; $525B: $47
    add e                                         ; $525C: $83
    bit 4, a                                      ; $525D: $CB $67
    jr z, jr_007_526A                             ; $525F: $28 $09

    ld a, b                                       ; $5261: $78
    cpl                                           ; $5262: $2F
    and $0F                                       ; $5263: $E6 $0F
    and a                                         ; $5265: $A7
    jp z, Jump_007_5415                           ; $5266: $CA $15 $54

    ld e, a                                       ; $5269: $5F

jr_007_526A:
    ld a, e                                       ; $526A: $7B
    ld hl, $C934                                  ; $526B: $21 $34 $C9
    add [hl]                                      ; $526E: $86
    ld [hl], a                                    ; $526F: $77
    ld a, [wTilemap_YTileOffset]                                 ; $5270: $FA $5E $C8
    ld d, a                                       ; $5273: $57
    add e                                         ; $5274: $83
    ld e, a                                       ; $5275: $5F
    and $0F                                       ; $5276: $E6 $0F
    ld [wTilemap_YTileOffset], a                                 ; $5278: $EA $5E $C8
    xor d                                         ; $527B: $AA
    bit 3, a                                      ; $527C: $CB $5F
    jp z, Jump_007_5415                           ; $527E: $CA $15 $54

    bit 4, e                                      ; $5281: $CB $63
    FGet16 bc, $C861                                  ; $5283: $21 $61 $C8                                       ; $5288: $4F
    FGet16 de, wTilemap_XYTileAddress                                  ; $5289: $21 $63 $C8                                       ; $528E: $5F
    jr z, jr_007_52BB                             ; $528F: $28 $2A

    push de                                       ; $5291: $D5
    ld hl, wTilemap_YTile                                  ; $5292: $21 $60 $C8
    inc [hl]                                      ; $5295: $34
    ld l, [hl]                                    ; $5296: $6E
    ld a, [wTilemap_VStop]                                 ; $5297: $FA $46 $C8
    cp l                                          ; $529A: $BD
    ld d, $30                                     ; $529B: $16 $30
    jr z, jr_007_52A1                             ; $529D: $28 $02

    ld d, $10                                     ; $529F: $16 $10

jr_007_52A1:
    ld hl, wTilemap_Flags                                  ; $52A1: $21 $42 $C8
    ld a, [hl]                                    ; $52A4: $7E
    and $8F                                       ; $52A5: $E6 $8F
    add d                                         ; $52A7: $82
    ld [hl], a                                    ; $52A8: $77
    ld a, [wTilemap_Width]                                 ; $52A9: $FA $47 $C8
    ld l, a                                       ; $52AC: $6F
    ld h, $00                                     ; $52AD: $26 $00
    add hl, bc                                    ; $52AF: $09
    ld a, h                                       ; $52B0: $7C
    ld [$C862], a                                 ; $52B1: $EA $62 $C8
    ld a, l                                       ; $52B4: $7D
    ld [$C861], a                                 ; $52B5: $EA $61 $C8
    ld c, l                                       ; $52B8: $4D
    ld b, h                                       ; $52B9: $44
    pop de                                        ; $52BA: $D1

jr_007_52BB:
    ld hl, $0020                                  ; $52BB: $21 $20 $00
    add hl, de                                    ; $52BE: $19
    ld a, h                                       ; $52BF: $7C
    and $03                                       ; $52C0: $E6 $03
    add $98                                       ; $52C2: $C6 $98
    ld h, a                                       ; $52C4: $67
    ld a, h                                       ; $52C5: $7C
    ld [$C864], a                                 ; $52C6: $EA $64 $C8
    ld a, l                                       ; $52C9: $7D
    ld [wTilemap_XYTileAddress], a                                 ; $52CA: $EA $63 $C8
    ld e, l                                       ; $52CD: $5D
    ld d, h                                       ; $52CE: $54
    ld a, [wTilemap_YMapPad+1]                                 ; $52CF: $FA $4A $C8
    ld h, a                                       ; $52D2: $67
    ld a, [wTilemap_YMapPad]                                 ; $52D3: $FA $49 $C8
    ld l, a                                       ; $52D6: $6F
    add hl, bc                                    ; $52D7: $09
    ld a, h                                       ; $52D8: $7C
    ld [$C866], a                                 ; $52D9: $EA $66 $C8
    ld a, l                                       ; $52DC: $7D
    ld [$C865], a                                 ; $52DD: $EA $65 $C8
    ld hl, $0240                                  ; $52E0: $21 $40 $02
    add hl, de                                    ; $52E3: $19
    ld a, h                                       ; $52E4: $7C
    and $03                                       ; $52E5: $E6 $03
    add $98                                       ; $52E7: $C6 $98
    ld h, a                                       ; $52E9: $67
    ld a, h                                       ; $52EA: $7C
    ld [wTilemap_Row_Dest+1], a                                 ; $52EB: $EA $68 $C8
    ld a, l                                       ; $52EE: $7D
    ld [wTilemap_Row_Dest], a                                 ; $52EF: $EA $67 $C8
    ld a, $02                                     ; $52F2: $3E $02
    ld [wTilemap_RowPhase], a                                 ; $52F4: $EA $69 $C8
    jp Jump_007_5415                              ; $52F7: $C3 $15 $54


Jump_007_52FA:
    ld [wTilemap_RowTrig], a                                 ; $52FA: $EA $6A $C8
    ld de, $0000                                  ; $52FD: $11 $00 $00
    ld a, [$C86C]                                 ; $5300: $FA $6C $C8
    ld e, a                                       ; $5303: $5F
    SwitchRAMBank $02
    ld bc, wTilemap_Row_Tiles                                  ; $530B: $01 $00 $C1
    ld a, [$C86D]                                 ; $530E: $FA $6D $C8
    ld l, a                                       ; $5311: $6F
    xor a                                         ; $5312: $AF
    sla l                                         ; $5313: $CB $25
    adc d                                         ; $5315: $8A
    sla a                                         ; $5316: $CB $27
    sla l                                         ; $5318: $CB $25
    adc $D4                                       ; $531A: $CE $D4
    ld h, a                                       ; $531C: $67
    ld a, l                                       ; $531D: $7D
    add e                                         ; $531E: $83
    ld l, a                                       ; $531F: $6F
    ld a, [$C86B]                                 ; $5320: $FA $6B $C8
    bit 3, a                                      ; $5323: $CB $5F
    jr nz, jr_007_532A                            ; $5325: $20 $03

    ld a, [hl]                                    ; $5327: $7E
    ld [bc], a                                    ; $5328: $02
    inc bc                                        ; $5329: $03

jr_007_532A:
    inc hl                                        ; $532A: $23
    ld a, [hl]                                    ; $532B: $7E
    ld [bc], a                                    ; $532C: $02
    inc bc                                        ; $532D: $03
    ld a, [$C86E]                                 ; $532E: $FA $6E $C8
    ld l, a                                       ; $5331: $6F
    xor a                                         ; $5332: $AF
    sla l                                         ; $5333: $CB $25
    adc d                                         ; $5335: $8A
    sla l                                         ; $5336: $CB $25
    rla                                           ; $5338: $17
    add $D4                                       ; $5339: $C6 $D4
    ld h, a                                       ; $533B: $67
    ld a, l                                       ; $533C: $7D
    add e                                         ; $533D: $83
    ld l, a                                       ; $533E: $6F
    LdBCIHLI                                        ; $5341: $03
    ld a, [hl]                                    ; $5342: $7E
    ld [bc], a                                    ; $5343: $02
    inc bc                                        ; $5344: $03
    ld a, [$C86F]                                 ; $5345: $FA $6F $C8
    ld l, a                                       ; $5348: $6F
    xor a                                         ; $5349: $AF
    sla l                                         ; $534A: $CB $25
    adc d                                         ; $534C: $8A
    sla l                                         ; $534D: $CB $25
    rla                                           ; $534F: $17
    add $D4                                       ; $5350: $C6 $D4
    ld h, a                                       ; $5352: $67
    ld a, l                                       ; $5353: $7D
    add e                                         ; $5354: $83
    ld l, a                                       ; $5355: $6F
    LdBCIHLI                                        ; $5358: $03
    ld a, [hl]                                    ; $5359: $7E
    ld [bc], a                                    ; $535A: $02
    inc bc                                        ; $535B: $03
    ld a, [$C870]                                 ; $535C: $FA $70 $C8
    ld l, a                                       ; $535F: $6F
    xor a                                         ; $5360: $AF
    sla l                                         ; $5361: $CB $25
    adc d                                         ; $5363: $8A
    sla l                                         ; $5364: $CB $25
    rla                                           ; $5366: $17
    add $D4                                       ; $5367: $C6 $D4
    ld h, a                                       ; $5369: $67
    ld a, l                                       ; $536A: $7D
    add e                                         ; $536B: $83
    ld l, a                                       ; $536C: $6F
    LdBCIHLI                                        ; $536F: $03
    ld a, [hl]                                    ; $5370: $7E
    ld [bc], a                                    ; $5371: $02
    inc bc                                        ; $5372: $03
    ld a, [$C871]                                 ; $5373: $FA $71 $C8
    ld l, a                                       ; $5376: $6F
    xor a                                         ; $5377: $AF
    sla l                                         ; $5378: $CB $25
    adc d                                         ; $537A: $8A
    sla l                                         ; $537B: $CB $25
    rla                                           ; $537D: $17
    add $D4                                       ; $537E: $C6 $D4
    ld h, a                                       ; $5380: $67
    ld a, l                                       ; $5381: $7D
    add e                                         ; $5382: $83
    ld l, a                                       ; $5383: $6F
    LdBCIHLI                                        ; $5386: $03
    ld a, [hl]                                    ; $5387: $7E
    ld [bc], a                                    ; $5388: $02
    inc bc                                        ; $5389: $03
    ld a, [$C872]                                 ; $538A: $FA $72 $C8
    ld l, a                                       ; $538D: $6F
    xor a                                         ; $538E: $AF
    sla l                                         ; $538F: $CB $25
    adc d                                         ; $5391: $8A
    sla l                                         ; $5392: $CB $25
    rla                                           ; $5394: $17
    add $D4                                       ; $5395: $C6 $D4
    ld h, a                                       ; $5397: $67
    ld a, l                                       ; $5398: $7D
    add e                                         ; $5399: $83
    ld l, a                                       ; $539A: $6F
    LdBCIHLI                                        ; $539D: $03
    ld a, [hl]                                    ; $539E: $7E
    ld [bc], a                                    ; $539F: $02
    inc bc                                        ; $53A0: $03
    ld a, [$C873]                                 ; $53A1: $FA $73 $C8
    ld l, a                                       ; $53A4: $6F
    xor a                                         ; $53A5: $AF
    sla l                                         ; $53A6: $CB $25
    adc d                                         ; $53A8: $8A
    sla l                                         ; $53A9: $CB $25
    rla                                           ; $53AB: $17
    add $D4                                       ; $53AC: $C6 $D4
    ld h, a                                       ; $53AE: $67
    ld a, l                                       ; $53AF: $7D
    add e                                         ; $53B0: $83
    ld l, a                                       ; $53B1: $6F
    LdBCIHLI                                        ; $53B4: $03
    ld a, [hl]                                    ; $53B5: $7E
    ld [bc], a                                    ; $53B6: $02
    inc bc                                        ; $53B7: $03
    ld a, [$C874]                                 ; $53B8: $FA $74 $C8
    ld l, a                                       ; $53BB: $6F
    xor a                                         ; $53BC: $AF
    sla l                                         ; $53BD: $CB $25
    adc d                                         ; $53BF: $8A
    sla l                                         ; $53C0: $CB $25
    rla                                           ; $53C2: $17
    add $D4                                       ; $53C3: $C6 $D4
    ld h, a                                       ; $53C5: $67
    ld a, l                                       ; $53C6: $7D
    add e                                         ; $53C7: $83
    ld l, a                                       ; $53C8: $6F
    LdBCIHLI                                        ; $53CB: $03
    ld a, [hl]                                    ; $53CC: $7E
    ld [bc], a                                    ; $53CD: $02
    inc bc                                        ; $53CE: $03
    ld a, [$C875]                                 ; $53CF: $FA $75 $C8
    ld l, a                                       ; $53D2: $6F
    xor a                                         ; $53D3: $AF
    sla l                                         ; $53D4: $CB $25
    adc d                                         ; $53D6: $8A
    sla l                                         ; $53D7: $CB $25
    rla                                           ; $53D9: $17
    add $D4                                       ; $53DA: $C6 $D4
    ld h, a                                       ; $53DC: $67
    ld a, l                                       ; $53DD: $7D
    add e                                         ; $53DE: $83
    ld l, a                                       ; $53DF: $6F
    LdBCIHLI                                        ; $53E2: $03
    ld a, [hl]                                    ; $53E3: $7E
    ld [bc], a                                    ; $53E4: $02
    inc bc                                        ; $53E5: $03
    ld a, [$C876]                                 ; $53E6: $FA $76 $C8
    ld l, a                                       ; $53E9: $6F
    xor a                                         ; $53EA: $AF
    sla l                                         ; $53EB: $CB $25
    adc d                                         ; $53ED: $8A
    sla l                                         ; $53EE: $CB $25
    rla                                           ; $53F0: $17
    add $D4                                       ; $53F1: $C6 $D4
    ld h, a                                       ; $53F3: $67
    ld a, l                                       ; $53F4: $7D
    add e                                         ; $53F5: $83
    ld l, a                                       ; $53F6: $6F
    LdBCIHLI                                        ; $53F9: $03
    ld a, [hl]                                    ; $53FA: $7E
    ld [bc], a                                    ; $53FB: $02
    inc bc                                        ; $53FC: $03
    ld a, [$C877]                                 ; $53FD: $FA $77 $C8
    ld l, a                                       ; $5400: $6F
    xor a                                         ; $5401: $AF
    sla l                                         ; $5402: $CB $25
    adc d                                         ; $5404: $8A
    sla l                                         ; $5405: $CB $25
    rla                                           ; $5407: $17
    add $D4                                       ; $5408: $C6 $D4
    ld h, a                                       ; $540A: $67
    ld a, l                                       ; $540B: $7D
    add e                                         ; $540C: $83
    ld l, a                                       ; $540D: $6F
    LdBCIHLI                                        ; $5410: $03
    ld a, [hl]                                    ; $5411: $7E
    ld [bc], a                                    ; $5412: $02
    inc bc                                        ; $5413: $03
    ret                                           ; $5414: $C9


Jump_007_5415:
    ld a, [wTilemap_RowPhase]                                 ; $5415: $FA $69 $C8
    and a                                         ; $5418: $A7
    ret z                                         ; $5419: $C8

    cp $02                                        ; $541A: $FE $02
    jp nz, Jump_007_52FA                          ; $541C: $C2 $FA $52

    ld [wTilemap_RowTrig], a                                 ; $541F: $EA $6A $C8
    ld a, [$C866]                                 ; $5422: $FA $66 $C8
    ld h, a                                       ; $5425: $67
    ld a, [$C865]                                 ; $5426: $FA $65 $C8
    ld l, a                                       ; $5429: $6F
    SwitchRAMBank $03
    ld a, [hl+]                                   ; $5431: $2A
    ld [$C86D], a                                 ; $5432: $EA $6D $C8
    ld a, [hl+]                                   ; $5435: $2A
    ld [$C86E], a                                 ; $5436: $EA $6E $C8
    ld a, [hl+]                                   ; $5439: $2A
    ld [$C86F], a                                 ; $543A: $EA $6F $C8
    ld a, [hl+]                                   ; $543D: $2A
    ld [$C870], a                                 ; $543E: $EA $70 $C8
    ld a, [hl+]                                   ; $5441: $2A
    ld [$C871], a                                 ; $5442: $EA $71 $C8
    ld a, [hl+]                                   ; $5445: $2A
    ld [$C872], a                                 ; $5446: $EA $72 $C8
    ld a, [hl+]                                   ; $5449: $2A
    ld [$C873], a                                 ; $544A: $EA $73 $C8
    ld a, [hl+]                                   ; $544D: $2A
    ld [$C874], a                                 ; $544E: $EA $74 $C8
    ld a, [hl+]                                   ; $5451: $2A
    ld [$C875], a                                 ; $5452: $EA $75 $C8
    ld a, [hl+]                                   ; $5455: $2A
    ld [$C876], a                                 ; $5456: $EA $76 $C8
    ld a, [hl+]                                   ; $5459: $2A
    ld [$C877], a                                 ; $545A: $EA $77 $C8
    ld de, $0000                                  ; $545D: $11 $00 $00
    ld a, [wTilemap_YTileOffset]                                 ; $5460: $FA $5E $C8
    bit 3, a                                      ; $5463: $CB $5F
    jr z, jr_007_5469                             ; $5465: $28 $02

    ld e, $02                                     ; $5467: $1E $02

jr_007_5469:
    ld a, e                                       ; $5469: $7B
    ld [$C86C], a                                 ; $546A: $EA $6C $C8
    ld a, [wTilemap_XTileOffset]                                 ; $546D: $FA $5D $C8
    ld [$C86B], a                                 ; $5470: $EA $6B $C8
    SwitchRAMBank $02
    ld bc, wTilemap_Row_Tiles                                  ; $547A: $01 $00 $C1
    ld a, [$C86D]                                 ; $547D: $FA $6D $C8
    ld l, a                                       ; $5480: $6F
    xor a                                         ; $5481: $AF
    sla l                                         ; $5482: $CB $25
    adc d                                         ; $5484: $8A
    sla a                                         ; $5485: $CB $27
    sla l                                         ; $5487: $CB $25
    adc $D0                                       ; $5489: $CE $D0
    ld h, a                                       ; $548B: $67
    ld a, l                                       ; $548C: $7D
    add e                                         ; $548D: $83
    ld l, a                                       ; $548E: $6F
    ld a, [$C86B]                                 ; $548F: $FA $6B $C8
    bit 3, a                                      ; $5492: $CB $5F
    jr nz, jr_007_5499                            ; $5494: $20 $03

    ld a, [hl]                                    ; $5496: $7E
    ld [bc], a                                    ; $5497: $02
    inc bc                                        ; $5498: $03

jr_007_5499:
    inc hl                                        ; $5499: $23
    ld a, [hl]                                    ; $549A: $7E
    ld [bc], a                                    ; $549B: $02
    inc bc                                        ; $549C: $03
    ld a, [$C86E]                                 ; $549D: $FA $6E $C8
    ld l, a                                       ; $54A0: $6F
    xor a                                         ; $54A1: $AF
    sla l                                         ; $54A2: $CB $25
    adc d                                         ; $54A4: $8A
    sla l                                         ; $54A5: $CB $25
    rla                                           ; $54A7: $17
    add $D0                                       ; $54A8: $C6 $D0
    ld h, a                                       ; $54AA: $67
    ld a, l                                       ; $54AB: $7D
    add e                                         ; $54AC: $83
    ld l, a                                       ; $54AD: $6F
    LdBCIHLI                                        ; $54B0: $03
    ld a, [hl]                                    ; $54B1: $7E
    ld [bc], a                                    ; $54B2: $02
    inc bc                                        ; $54B3: $03
    ld a, [$C86F]                                 ; $54B4: $FA $6F $C8
    ld l, a                                       ; $54B7: $6F
    xor a                                         ; $54B8: $AF
    sla l                                         ; $54B9: $CB $25
    adc d                                         ; $54BB: $8A
    sla l                                         ; $54BC: $CB $25
    rla                                           ; $54BE: $17
    add $D0                                       ; $54BF: $C6 $D0
    ld h, a                                       ; $54C1: $67
    ld a, l                                       ; $54C2: $7D
    add e                                         ; $54C3: $83
    ld l, a                                       ; $54C4: $6F
    LdBCIHLI                                        ; $54C7: $03
    ld a, [hl]                                    ; $54C8: $7E
    ld [bc], a                                    ; $54C9: $02
    inc bc                                        ; $54CA: $03
    ld a, [$C870]                                 ; $54CB: $FA $70 $C8
    ld l, a                                       ; $54CE: $6F
    xor a                                         ; $54CF: $AF
    sla l                                         ; $54D0: $CB $25
    adc d                                         ; $54D2: $8A
    sla l                                         ; $54D3: $CB $25
    rla                                           ; $54D5: $17
    add $D0                                       ; $54D6: $C6 $D0
    ld h, a                                       ; $54D8: $67
    ld a, l                                       ; $54D9: $7D
    add e                                         ; $54DA: $83
    ld l, a                                       ; $54DB: $6F
    LdBCIHLI                                        ; $54DE: $03
    ld a, [hl]                                    ; $54DF: $7E
    ld [bc], a                                    ; $54E0: $02
    inc bc                                        ; $54E1: $03
    ld a, [$C871]                                 ; $54E2: $FA $71 $C8
    ld l, a                                       ; $54E5: $6F
    xor a                                         ; $54E6: $AF
    sla l                                         ; $54E7: $CB $25
    adc d                                         ; $54E9: $8A
    sla l                                         ; $54EA: $CB $25
    rla                                           ; $54EC: $17
    add $D0                                       ; $54ED: $C6 $D0
    ld h, a                                       ; $54EF: $67
    ld a, l                                       ; $54F0: $7D
    add e                                         ; $54F1: $83
    ld l, a                                       ; $54F2: $6F
    LdBCIHLI                                        ; $54F5: $03
    ld a, [hl]                                    ; $54F6: $7E
    ld [bc], a                                    ; $54F7: $02
    inc bc                                        ; $54F8: $03
    ld a, [$C872]                                 ; $54F9: $FA $72 $C8
    ld l, a                                       ; $54FC: $6F
    xor a                                         ; $54FD: $AF
    sla l                                         ; $54FE: $CB $25
    adc d                                         ; $5500: $8A
    sla l                                         ; $5501: $CB $25
    rla                                           ; $5503: $17
    add $D0                                       ; $5504: $C6 $D0
    ld h, a                                       ; $5506: $67
    ld a, l                                       ; $5507: $7D
    add e                                         ; $5508: $83
    ld l, a                                       ; $5509: $6F
    LdBCIHLI                                        ; $550C: $03
    ld a, [hl]                                    ; $550D: $7E
    ld [bc], a                                    ; $550E: $02
    inc bc                                        ; $550F: $03
    ld a, [$C873]                                 ; $5510: $FA $73 $C8
    ld l, a                                       ; $5513: $6F
    xor a                                         ; $5514: $AF
    sla l                                         ; $5515: $CB $25
    adc d                                         ; $5517: $8A
    sla l                                         ; $5518: $CB $25
    rla                                           ; $551A: $17
    add $D0                                       ; $551B: $C6 $D0
    ld h, a                                       ; $551D: $67
    ld a, l                                       ; $551E: $7D
    add e                                         ; $551F: $83
    ld l, a                                       ; $5520: $6F
    LdBCIHLI                                        ; $5523: $03
    ld a, [hl]                                    ; $5524: $7E
    ld [bc], a                                    ; $5525: $02
    inc bc                                        ; $5526: $03
    ld a, [$C874]                                 ; $5527: $FA $74 $C8
    ld l, a                                       ; $552A: $6F
    xor a                                         ; $552B: $AF
    sla l                                         ; $552C: $CB $25
    adc d                                         ; $552E: $8A
    sla l                                         ; $552F: $CB $25
    rla                                           ; $5531: $17
    add $D0                                       ; $5532: $C6 $D0
    ld h, a                                       ; $5534: $67
    ld a, l                                       ; $5535: $7D
    add e                                         ; $5536: $83
    ld l, a                                       ; $5537: $6F
    LdBCIHLI                                        ; $553A: $03
    ld a, [hl]                                    ; $553B: $7E
    ld [bc], a                                    ; $553C: $02
    inc bc                                        ; $553D: $03
    ld a, [$C875]                                 ; $553E: $FA $75 $C8
    ld l, a                                       ; $5541: $6F
    xor a                                         ; $5542: $AF
    sla l                                         ; $5543: $CB $25
    adc d                                         ; $5545: $8A
    sla l                                         ; $5546: $CB $25
    rla                                           ; $5548: $17
    add $D0                                       ; $5549: $C6 $D0
    ld h, a                                       ; $554B: $67
    ld a, l                                       ; $554C: $7D
    add e                                         ; $554D: $83
    ld l, a                                       ; $554E: $6F
    LdBCIHLI                                        ; $5551: $03
    ld a, [hl]                                    ; $5552: $7E
    ld [bc], a                                    ; $5553: $02
    inc bc                                        ; $5554: $03
    ld a, [$C876]                                 ; $5555: $FA $76 $C8
    ld l, a                                       ; $5558: $6F
    xor a                                         ; $5559: $AF
    sla l                                         ; $555A: $CB $25
    adc d                                         ; $555C: $8A
    sla l                                         ; $555D: $CB $25
    rla                                           ; $555F: $17
    add $D0                                       ; $5560: $C6 $D0
    ld h, a                                       ; $5562: $67
    ld a, l                                       ; $5563: $7D
    add e                                         ; $5564: $83
    ld l, a                                       ; $5565: $6F
    LdBCIHLI                                        ; $5568: $03
    ld a, [hl]                                    ; $5569: $7E
    ld [bc], a                                    ; $556A: $02
    inc bc                                        ; $556B: $03
    ld a, [$C877]                                 ; $556C: $FA $77 $C8
    ld l, a                                       ; $556F: $6F
    xor a                                         ; $5570: $AF
    sla l                                         ; $5571: $CB $25
    adc d                                         ; $5573: $8A
    sla l                                         ; $5574: $CB $25
    rla                                           ; $5576: $17
    add $D0                                       ; $5577: $C6 $D0
    ld h, a                                       ; $5579: $67
    ld a, l                                       ; $557A: $7D
    add e                                         ; $557B: $83
    ld l, a                                       ; $557C: $6F
    LdBCIHLI                                        ; $557F: $03
    ld a, [hl]                                    ; $5580: $7E
    ld [bc], a                                    ; $5581: $02
    inc bc                                        ; $5582: $03
    ld hl, wTilemap_VRAMRow                                  ; $5583: $21 $78 $C8
    ld d, $1F                                     ; $5586: $16 $1F
    ld a, [wTilemap_Row_Dest]                                 ; $5588: $FA $67 $C8
    ld c, a                                       ; $558B: $4F
    and $E0                                       ; $558C: $E6 $E0
    ld e, a                                       ; $558E: $5F
    ld a, c                                       ; $558F: $79
    ld [hl+], a                                   ; $5590: $22
    inc a                                         ; $5591: $3C
    and d                                         ; $5592: $A2
    add e                                         ; $5593: $83
    ld [hl+], a                                   ; $5594: $22
    inc a                                         ; $5595: $3C
    and d                                         ; $5596: $A2
    add e                                         ; $5597: $83
    ld [hl+], a                                   ; $5598: $22
    inc a                                         ; $5599: $3C
    and d                                         ; $559A: $A2
    add e                                         ; $559B: $83
    ld [hl+], a                                   ; $559C: $22
    inc a                                         ; $559D: $3C
    and d                                         ; $559E: $A2
    add e                                         ; $559F: $83
    ld [hl+], a                                   ; $55A0: $22
    inc a                                         ; $55A1: $3C
    and d                                         ; $55A2: $A2
    add e                                         ; $55A3: $83
    ld [hl+], a                                   ; $55A4: $22
    inc a                                         ; $55A5: $3C
    and d                                         ; $55A6: $A2
    add e                                         ; $55A7: $83
    ld [hl+], a                                   ; $55A8: $22
    inc a                                         ; $55A9: $3C
    and d                                         ; $55AA: $A2
    add e                                         ; $55AB: $83
    ld [hl+], a                                   ; $55AC: $22
    inc a                                         ; $55AD: $3C
    and d                                         ; $55AE: $A2
    add e                                         ; $55AF: $83
    ld [hl+], a                                   ; $55B0: $22
    inc a                                         ; $55B1: $3C
    and d                                         ; $55B2: $A2
    add e                                         ; $55B3: $83
    ld [hl+], a                                   ; $55B4: $22
    inc a                                         ; $55B5: $3C
    and d                                         ; $55B6: $A2
    add e                                         ; $55B7: $83
    ld [hl+], a                                   ; $55B8: $22
    inc a                                         ; $55B9: $3C
    and d                                         ; $55BA: $A2
    add e                                         ; $55BB: $83
    ld [hl+], a                                   ; $55BC: $22
    inc a                                         ; $55BD: $3C
    and d                                         ; $55BE: $A2
    add e                                         ; $55BF: $83
    ld [hl+], a                                   ; $55C0: $22
    inc a                                         ; $55C1: $3C
    and d                                         ; $55C2: $A2
    add e                                         ; $55C3: $83
    ld [hl+], a                                   ; $55C4: $22
    inc a                                         ; $55C5: $3C
    and d                                         ; $55C6: $A2
    add e                                         ; $55C7: $83
    ld [hl+], a                                   ; $55C8: $22
    inc a                                         ; $55C9: $3C
    and d                                         ; $55CA: $A2
    add e                                         ; $55CB: $83
    ld [hl+], a                                   ; $55CC: $22
    inc a                                         ; $55CD: $3C
    and d                                         ; $55CE: $A2
    add e                                         ; $55CF: $83
    ld [hl+], a                                   ; $55D0: $22
    inc a                                         ; $55D1: $3C
    and d                                         ; $55D2: $A2
    add e                                         ; $55D3: $83
    ld [hl+], a                                   ; $55D4: $22
    inc a                                         ; $55D5: $3C
    and d                                         ; $55D6: $A2
    add e                                         ; $55D7: $83
    ld [hl+], a                                   ; $55D8: $22
    inc a                                         ; $55D9: $3C
    and d                                         ; $55DA: $A2
    add e                                         ; $55DB: $83
    ld [hl+], a                                   ; $55DC: $22
    inc a                                         ; $55DD: $3C
    and d                                         ; $55DE: $A2
    add e                                         ; $55DF: $83
    ld [hl+], a                                   ; $55E0: $22
    inc a                                         ; $55E1: $3C
    and d                                         ; $55E2: $A2
    add e                                         ; $55E3: $83
    ret                                           ; $55E4: $C9

INCLUDE "source/engine/system/graphics/screenfx/screenfx.asm"

INCLUDE "source/engine/system/sound/sound_xx.asm"

INCLUDE "source/engine/system/system_xx.asm"


Call_007_5AC1::
    FGet16 bc, wBattle_CopyBuffer_Destination                                  ; $5AC1: $21 $8F $CD                                       ; $5AC6: $4F
    FGet16 hl, wBattle_CopyBuffer_Source                                  ; $5AC7: $21 $8D $CD
    LdBCIHLI                                        ; $5ACF: $03
    LdBCIHLI                                        ; $5AD2: $03
    LdBCIHLI                                        ; $5AD5: $03
    ret                                           ; $5AD6: $C9


    nop                                           ; $5AD7: $00
    nop                                           ; $5AD8: $00
    nop                                           ; $5AD9: $00
    dec b                                         ; $5ADA: $05
    nop                                           ; $5ADB: $00
    inc bc                                        ; $5ADC: $03
    ld a, [bc]                                    ; $5ADD: $0A
    nop                                           ; $5ADE: $00
    inc bc                                        ; $5ADF: $03

    db $0F, $00, $03

    inc d                                         ; $5AE3: $14
    nop                                           ; $5AE4: $00
    inc bc                                        ; $5AE5: $03
    add hl, de                                    ; $5AE6: $19
    nop                                           ; $5AE7: $00
    inc bc                                        ; $5AE8: $03
    ld e, $00                                     ; $5AE9: $1E $00
    inc bc                                        ; $5AEB: $03
    inc hl                                        ; $5AEC: $23
    nop                                           ; $5AED: $00
    inc bc                                        ; $5AEE: $03
    jr z, jr_007_5AF1                             ; $5AEF: $28 $00

jr_007_5AF1:
    inc bc                                        ; $5AF1: $03
    dec l                                         ; $5AF2: $2D
    nop                                           ; $5AF3: $00
    inc bc                                        ; $5AF4: $03
    ld [hl-], a                                   ; $5AF5: $32
    nop                                           ; $5AF6: $00
    inc bc                                        ; $5AF7: $03
    scf                                           ; $5AF8: $37
    nop                                           ; $5AF9: $00
    inc bc                                        ; $5AFA: $03
    inc a                                         ; $5AFB: $3C
    nop                                           ; $5AFC: $00
    inc bc                                        ; $5AFD: $03
    ld b, c                                       ; $5AFE: $41
    nop                                           ; $5AFF: $00
    inc bc                                        ; $5B00: $03
    ld b, [hl]                                    ; $5B01: $46
    nop                                           ; $5B02: $00
    inc bc                                        ; $5B03: $03
    ld c, e                                       ; $5B04: $4B
    nop                                           ; $5B05: $00
    inc bc                                        ; $5B06: $03
    ld d, b                                       ; $5B07: $50
    nop                                           ; $5B08: $00
    inc bc                                        ; $5B09: $03
    ld d, l                                       ; $5B0A: $55
    nop                                           ; $5B0B: $00
    inc bc                                        ; $5B0C: $03
    ld e, d                                       ; $5B0D: $5A
    nop                                           ; $5B0E: $00
    inc bc                                        ; $5B0F: $03
    ld e, a                                       ; $5B10: $5F
    nop                                           ; $5B11: $00
    inc b                                         ; $5B12: $04
    ld h, h                                       ; $5B13: $64
    nop                                           ; $5B14: $00
    inc b                                         ; $5B15: $04
    ld l, c                                       ; $5B16: $69
    nop                                           ; $5B17: $00
    inc b                                         ; $5B18: $04
    ld l, [hl]                                    ; $5B19: $6E
    nop                                           ; $5B1A: $00
    inc b                                         ; $5B1B: $04
    ld [hl], e                                    ; $5B1C: $73
    nop                                           ; $5B1D: $00
    inc b                                         ; $5B1E: $04
    ld a, b                                       ; $5B1F: $78
    nop                                           ; $5B20: $00
    inc b                                         ; $5B21: $04
    ld a, l                                       ; $5B22: $7D
    nop                                           ; $5B23: $00
    inc b                                         ; $5B24: $04
    add d                                         ; $5B25: $82
    nop                                           ; $5B26: $00
    inc b                                         ; $5B27: $04
    add a                                         ; $5B28: $87
    nop                                           ; $5B29: $00
    inc b                                         ; $5B2A: $04
    adc h                                         ; $5B2B: $8C
    nop                                           ; $5B2C: $00
    inc b                                         ; $5B2D: $04
    sub c                                         ; $5B2E: $91
    nop                                           ; $5B2F: $00
    inc b                                         ; $5B30: $04
    sub [hl]                                      ; $5B31: $96
    nop                                           ; $5B32: $00
    inc b                                         ; $5B33: $04
    sbc e                                         ; $5B34: $9B
    nop                                           ; $5B35: $00
    inc b                                         ; $5B36: $04
    and b                                         ; $5B37: $A0
    nop                                           ; $5B38: $00
    inc b                                         ; $5B39: $04
    and l                                         ; $5B3A: $A5
    nop                                           ; $5B3B: $00
    inc b                                         ; $5B3C: $04
    xor d                                         ; $5B3D: $AA
    nop                                           ; $5B3E: $00
    inc b                                         ; $5B3F: $04
    xor a                                         ; $5B40: $AF
    nop                                           ; $5B41: $00
    inc b                                         ; $5B42: $04
    or h                                          ; $5B43: $B4
    nop                                           ; $5B44: $00
    inc b                                         ; $5B45: $04
    cp c                                          ; $5B46: $B9
    nop                                           ; $5B47: $00
    inc b                                         ; $5B48: $04
    cp [hl]                                       ; $5B49: $BE
    nop                                           ; $5B4A: $00
    inc b                                         ; $5B4B: $04
    jp $0500                                      ; $5B4C: $C3 $00 $05


    ret z                                         ; $5B4F: $C8

    nop                                           ; $5B50: $00
    dec b                                         ; $5B51: $05
    call $0500                                    ; $5B52: $CD $00 $05
    jp nc, $0500                                  ; $5B55: $D2 $00 $05

    rst $10                                       ; $5B58: $D7
    nop                                           ; $5B59: $00
    dec b                                         ; $5B5A: $05
    call c, $0500                                 ; $5B5B: $DC $00 $05
    pop hl                                        ; $5B5E: $E1
    nop                                           ; $5B5F: $00
    dec b                                         ; $5B60: $05
    and $00                                       ; $5B61: $E6 $00
    dec b                                         ; $5B63: $05
    db $EB                                        ; $5B64: $EB
    nop                                           ; $5B65: $00
    dec b                                         ; $5B66: $05
    ldh a, [rP1]                                  ; $5B67: $F0 $00
    dec b                                         ; $5B69: $05
    push af                                       ; $5B6A: $F5
    nop                                           ; $5B6B: $00
    dec b                                         ; $5B6C: $05
    ld a, [$0500]                                 ; $5B6D: $FA $00 $05
    rst $38                                       ; $5B70: $FF
    nop                                           ; $5B71: $00
    dec b                                         ; $5B72: $05
    inc b                                         ; $5B73: $04
    ld bc, $0905                                  ; $5B74: $01 $05 $09
    ld bc, $0E05                                  ; $5B77: $01 $05 $0E
    ld bc, $1305                                  ; $5B7A: $01 $05 $13
    ld bc, $1805                                  ; $5B7D: $01 $05 $18
    ld bc, $1D05                                  ; $5B80: $01 $05 $1D
    ld bc, $2205                                  ; $5B83: $01 $05 $22
    ld bc, $2705                                  ; $5B86: $01 $05 $27
    ld bc, $2C06                                  ; $5B89: $01 $06 $2C
    ld bc, $3106                                  ; $5B8C: $01 $06 $31
    ld bc, $3606                                  ; $5B8F: $01 $06 $36
    ld bc, $3B06                                  ; $5B92: $01 $06 $3B
    ld bc, $4006                                  ; $5B95: $01 $06 $40
    ld bc, $4506                                  ; $5B98: $01 $06 $45
    ld bc, $4A06                                  ; $5B9B: $01 $06 $4A
    ld bc, $4F06                                  ; $5B9E: $01 $06 $4F
    ld bc, $5406                                  ; $5BA1: $01 $06 $54
    ld bc, $5906                                  ; $5BA4: $01 $06 $59
    ld bc, $5E06                                  ; $5BA7: $01 $06 $5E
    ld bc, $6306                                  ; $5BAA: $01 $06 $63
    ld bc, $6806                                  ; $5BAD: $01 $06 $68
    ld bc, $6D06                                  ; $5BB0: $01 $06 $6D
    ld bc, $7206                                  ; $5BB3: $01 $06 $72
    ld bc, $7706                                  ; $5BB6: $01 $06 $77
    ld bc, $7C06                                  ; $5BB9: $01 $06 $7C
    ld bc, $8106                                  ; $5BBC: $01 $06 $81
    ld bc, $8606                                  ; $5BBF: $01 $06 $86
    ld bc, $8B06                                  ; $5BC2: $01 $06 $8B
    ld bc, $9007                                  ; $5BC5: $01 $07 $90
    ld bc, $9507                                  ; $5BC8: $01 $07 $95
    ld bc, $9A07                                  ; $5BCB: $01 $07 $9A
    ld bc, $9F07                                  ; $5BCE: $01 $07 $9F
    ld bc, $A407                                  ; $5BD1: $01 $07 $A4
    ld bc, $A907                                  ; $5BD4: $01 $07 $A9
    ld bc, $AE07                                  ; $5BD7: $01 $07 $AE
    ld bc, $B307                                  ; $5BDA: $01 $07 $B3
    ld bc, $B807                                  ; $5BDD: $01 $07 $B8
    ld bc, $BD07                                  ; $5BE0: $01 $07 $BD
    ld bc, $C207                                  ; $5BE3: $01 $07 $C2
    ld bc, $C707                                  ; $5BE6: $01 $07 $C7
    ld bc, $CC07                                  ; $5BE9: $01 $07 $CC
    ld bc, $D107                                  ; $5BEC: $01 $07 $D1
    ld bc, $D607                                  ; $5BEF: $01 $07 $D6
    ld bc, $DB07                                  ; $5BF2: $01 $07 $DB
    ld bc, $E007                                  ; $5BF5: $01 $07 $E0
    ld bc, $E507                                  ; $5BF8: $01 $07 $E5
    ld bc, $EA07                                  ; $5BFB: $01 $07 $EA
    db $01, $07
Call_007_5C00::
    xor a
    ld [wPalette_VBlankReady], a                                 ; $5C01: $EA $31 $C8
    ld a, [wTemp_B.Palette_FadeMagnitude]                                 ; $5C04: $FA $DC $C9
    ld [wPalette_FadeMagnitudeCounter], a                                 ; $5C07: $EA $30 $C8
    ld a, $61                                     ; $5C0A: $3E $61
    ld [wTemp_8.Palette_PackedInterval], a                                 ; $5C0C: $EA $D8 $C9
    call PaletteFX_FadeAnimToColor                            ; $5C0F: $CD $FD $48
    FGet16 bc, $C7DB                                  ; $5C12: $21 $DB $C7
    Set16 wFightscene_ArenaColor, bc
    call Call_007_5CE2                            ; $5C20: $CD $E2 $5C
    ld a, $01                                     ; $5C23: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $5C25: $EA $31 $C8
    ret                                           ; $5C28: $C9

Call_007_5C29::
    xor a                                         ; $5C29: $AF
    ld [wPalette_VBlankReady], a                                 ; $5C2A: $EA $31 $C8
    ld a, [wTemp_B.Palette_FadeMagnitude]                                 ; $5C2D: $FA $DC $C9
    ld [wPalette_FadeMagnitudeCounter], a                                 ; $5C30: $EA $30 $C8
    ld a, $61                                     ; $5C33: $3E $61
    ld [wTemp_8.Palette_PackedInterval], a                                 ; $5C35: $EA $D8 $C9
    call PaletteFX_FadeAnimToBase                            ; $5C38: $CD $9D $48
    FGet16 bc, $C7DB                                  ; $5C3B: $21 $DB $C7
    Set16 wFightscene_ArenaColor, bc
    call Call_007_5CE2                            ; $5C49: $CD $E2 $5C
    ld a, $01                                     ; $5C4C: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $5C4E: $EA $31 $C8
    ret                                           ; $5C51: $C9


    ; $5C52
Fightscene_PalFX_SetCreaturePaletteArenaColor::
    ; Pastes a Color wFightscene_ArenaColor into the first color of each palette id
    ; To simulate a "transparency" color for the creatures
    ; CreatureLeft: Palettes 0 and 1 automatically take the palette color
    ;               Palette 2 optionally takes the color if the RGB value is 0, $F, $F
    ; CreatureRight:Palettes 3 and 4 automatically take the palette color
    ;               Palette 5 optionally takes the color if the RGB value is 0, $F, $F
    xor a
    ld [wPalette_VBlankReady], a
    Get16 bc, wFightscene_ArenaColor

    ; Palettes 0.0, 1.0
    ld hl, wPalette_BaseBuffers
    ld e, 4*0
    ld a, $02
    call Palette_PaletteBufferSetColor

    ; Palettes 3.0, 4.0
    ld hl, wPalette_BaseBuffers
    ld e, 4*3
    ld a, $02
    call Palette_PaletteBufferSetColor
    ld hl, wPalette_BaseBuffers

    call Fightscene_PalFX_SetOptionallyCreatureLastPaletteArenaColor

    Set8 wPalette_VBlankReady, $01
    ret

    ; $5C7E
Fightscene_PalFX_SetFightsceneArenaColor::
    ; Pastes a Color wFightscene_ArenaColor into:
    ;   Palette 0.0, 1.0, 3.0, 4.0, 6.0
    ; If Palette 2.0 and/or 5.0 are RGB 0,$F,$F (transparency color),
    ;   Also pastes over those values
    xor a
    ld [wPalette_VBlankReady], a
    Get16 bc, wFightscene_ArenaColor
    ld hl, wPalette_BaseBuffers
    ld e, 4*6
    ld a, $01
    call Palette_PaletteBufferSetColor
    call Fightscene_PalFX_SetCreaturePaletteArenaColor ; inefficiency? - this function is called again when a creature's palette is loaded
    Set8 wPalette_VBlankReady, $01
    ret

Fightscene_PalFX_SetCreatureRight3rdPaletteArenaColor::
    ; Forces Palette 5.0 to be Color wFightscene_ArenaColor (CreatureRight 3rd Palette)
    ; Inputs:
    ;   wFightscene_ArenaColor
    xor a
    ld [wPalette_VBlankReady], a
    Get16 bc, wFightscene_ArenaColor
    ld hl, wPalette_AnimBuffers
    ld e, 4*5
    ld a, $01
    call Palette_PaletteBufferSetColor
    Set8 wPalette_VBlankReady, $01
    ret

    ; $5CB9
Fightscene_PalFX_SetCardsceneArenaColor::
    ; Set the Palette 6 - populate it with the arena colors:
    ; Palette 6.0 <- wFightscene_ArenaColor
    ; Palette 6.1 <- Black
    ; Palette 6.2, 6.3 - undefined (not used, not changed)
    xor a
    ld [wPalette_VBlankReady], a

    ; Set Palette 6.0 to wFightscene_ArenaColor
    Get16 bc, wFightscene_ArenaColor
    ld hl, wPalette_BaseBuffers.Background
    ld e, 6*4
    ld a, 1
    call Palette_PaletteBufferSetColor

    ; Set Palette 6.0 to Black
    ld bc, $0000
    ld hl, wPalette_BaseBuffers.Background
    ld e, 6*4 + 1
    ld a, 1
    call Palette_PaletteBufferSetColor

    Set8 wPalette_VBlankReady, $01
    ret


Call_007_5CE2:
    xor a                                         ; $5CE2: $AF
    ld [wPalette_VBlankReady], a                                 ; $5CE3: $EA $31 $C8
    Get16 bc, wFightscene_ArenaColor
    ld hl, $C7AB                                  ; $5CEE: $21 $AB $C7
    ld e, $00                                     ; $5CF1: $1E $00
    ld a, $02                                     ; $5CF3: $3E $02
    call Palette_PaletteBufferSetColor                            ; $5CF5: $CD $74 $47
    ld hl, $C7AB                                  ; $5CF8: $21 $AB $C7
    ld e, $0C                                     ; $5CFB: $1E $0C
    ld a, $02                                     ; $5CFD: $3E $02
    call Palette_PaletteBufferSetColor                            ; $5CFF: $CD $74 $47
    ld hl, $C7AB                                  ; $5D02: $21 $AB $C7
    ld e, $18                                     ; $5D05: $1E $18
    ld a, $01                                     ; $5D07: $3E $01
    call Palette_PaletteBufferSetColor                            ; $5D09: $CD $74 $47
    ld a, [wFightscene_CreatureLeft_3rdPaletteTransparent]                                 ; $5D0C: $FA $E2 $C9
    and a                                         ; $5D0F: $A7
    jr z, jr_007_5D1C                             ; $5D10: $28 $0A

    ld hl, $C7AB                                  ; $5D12: $21 $AB $C7
    ld e, $08                                     ; $5D15: $1E $08
    ld a, $01                                     ; $5D17: $3E $01
    call Palette_PaletteBufferSetColor                            ; $5D19: $CD $74 $47

jr_007_5D1C:
    ld a, [wFightscene_CreatureRight_3rdPaletteTransparent]                                 ; $5D1C: $FA $E3 $C9
    and a                                         ; $5D1F: $A7
    jr z, jr_007_5D2C                             ; $5D20: $28 $0A

    ld hl, $C7AB                                  ; $5D22: $21 $AB $C7
    ld e, $14                                     ; $5D25: $1E $14
    ld a, $01                                     ; $5D27: $3E $01
    call Palette_PaletteBufferSetColor                            ; $5D29: $CD $74 $47

jr_007_5D2C:
    ld a, $01                                     ; $5D2C: $3E $01
    ld [wPalette_VBlankReady], a                                 ; $5D2E: $EA $31 $C8
    ret                                           ; $5D31: $C9


    ; $5D32
Fightscene_PalFX_SetOptionallyCreatureLastPaletteArenaColor::
    ; Pastes a Color wFightscene_ArenaColor into the first color of the third palette id
    ; To simulate a "transparency" color for the creatures
    ; CreatureLeft:  Palette 2 optionally takes the color if the RGB value is 0, $F, $F
    ; CreatureRight: Palette 5 optionally takes the color if the RGB value is 0, $F, $F
    ; Outputs:
    ;   Sets wFightscene_CreatureLeft_3rdPaletteTransparent and wFightscene_CreatureRight_3rdPaletteTransparent to non-zero if they are transparent
    push bc
    push hl
    xor a
    ld [wFightscene_CreatureLeft_3rdPaletteTransparent], a
    ld [wFightscene_CreatureRight_3rdPaletteTransparent], a

    ; Check Palette 2
    db $01 ;ld bc,
        RGB 0, $F, $F
    ld de, 8*2    ;+2 Palettes
    add hl, de
    DerefHL
    ld a, h
    cp b
    jr nz, .SkipPalette2
    ld a, l
    cp c
    jr nz, .SkipPalette2
    .SetPalette2Transparent
        pop hl
        pop bc
        push bc
        push hl
        ld e, 4*2 ; Palette 2.0
        ld a, $01
        ld [wFightscene_CreatureLeft_3rdPaletteTransparent], a
        call Palette_PaletteBufferSetColor
    .SkipPalette2:

    ; Check Palette 5
    db $01 ;ld bc,
        RGB 0, $F, $F
    pop hl
    push hl
    ld de, 8*5    ;+5 Palettes
    add hl, de
    DerefHL
    ld a, h
    cp b
    jr nz, .SkipPalette5
    ld a, l
    cp c
    jr nz, .SkipPalette5
    .SetPalette5Transparent
        pop hl
        pop bc
        ld e, 4*5 ; Palette 5.0
        ld a, $01
        ld [wFightscene_CreatureRight_3rdPaletteTransparent], a
        call Palette_PaletteBufferSetColor
        ret
    .SkipPalette5:
    pop hl
    pop bc
    ret

    ; $5D7F
    dw $6865
    dw $7419
    dw Relic_FormatRelicName_GiveRelic ;$02
    dw $72FF
    dw $7368
    dw $73A8
    dw $73E7
    dw $68DA
    dw $74A2
    dw $6FEE
    dw $7338
    dw $746B
    dw $7367
    dw $7367

Call_007_5D9B::
    FGet16 bc, wBattle_CopyBuffer_Destination                                  ; $5D9B: $21 $8F $CD                                       ; $5DA0: $4F
    FGet16 hl, wBattle_CopyBuffer_Source                                  ; $5DA1: $21 $8D $CD
    LdBCIHLI                                        ; $5DA9: $03
    LdBCIHLI                                        ; $5DAC: $03
    ret                                           ; $5DAD: $C9

    ; $5DAE
ItemSpell_GetDataFromAddress::
    ; Copies an entry from the Items or Spells data table to a buffer ($22 bytes)
    ; Inputs:
    ;   [wBattle_CopyBuffer_Destination] points to the storage buffer
    ;   [wBattle_CopyBuffer_Source] points to the specific item in the Items/Spell data table
    FGet16 bc, wBattle_CopyBuffer_Destination
    FGet16 hl, wBattle_CopyBuffer_Source
    ld d, ItemSpell_ROWSIZE
    .Loop:
        LdBCIHLI
        dec d
        jr nz, .Loop
    ret

    ; $5DC3
Item_GetDataFromID::
    ; todo - is this function used?
    ; Copies an entry from the Items data table to a buffer ($22 bytes)
    ; Inputs:
    ;   [wBattle_CopyBuffer_Destination] points to the storage buffer
    ;   [wBattle_CopyBuffer_ListIndex] points to the specific item id in the Items data table
    Get8 c, wBattle_CopyBuffer_ListIndex
    ld b, ItemSpell_ROWSIZE
    call Math_Mult
    ld bc, Item_Table
    add hl, bc
    Get16 bc, wBattle_CopyBuffer_Destination
    ld d, ItemSpell_ROWSIZE
    .Loop:
        LdBCIHLI
        dec d
        jr nz, .Loop
    ret

    ; $5DE1
Spell_GetDataFromID::
    ; todo - is this function used?
    ; Copies an entry from the Spell data table to a buffer ($22 bytes)
    ; Inputs:
    ;   [wBattle_CopyBuffer_Destination] points to the storage buffer
    ;   [wBattle_CopyBuffer_ListIndex] points to the specific spell id in the Spell data table
    Get8 c, wBattle_CopyBuffer_ListIndex
    ld b, ItemSpell_ROWSIZE
    call Math_Mult
    ld bc, Spell_Table
    add hl, bc
    Get16 bc, wBattle_CopyBuffer_Destination
    ld d, ItemSpell_ROWSIZE
    .Loop:
        LdBCIHLI
        dec d
        jr nz, .Loop
    ret

    ; $5DFF
Item_Table::

    RSRESET
    ItemSpell_Struct Item_NULL,             0,             0,   0,          0,  0,                           0,      0, 0,               0,      0,  "             ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_BALOOLEAF,        ItemCmd1_6551, 10,  Energy,     0,  Battle_TARGET_ANY,           8,      9, elementNone,     BOTH,   8,  "🍃Baloo Leaf  ",    ItemCombat_4C_4406, ItemMap_12_792E, SpellCom_4C_5225
    ItemSpell_Struct Item_BALOOSAP,         ItemCmd1_6551, 30,  Energy,     0,  Battle_TARGET_ANY,           5,      9, elementNone,     BOTH,   18, "🥣Baloo Sap   ",    ItemCombat_4C_4406, ItemMap_12_7954, SpellCom_4C_5225
    ItemSpell_Struct Item_BALOOROOT,        ItemCmd1_6551, 65,  Energy,     0,  Battle_TARGET_ANY,           5,      9, elementNone,     BOTH,   30, "🌴Baloo Root  ",    ItemCombat_4C_4406, ItemMap_12_797A, SpellCom_4C_5225
    ItemSpell_Struct Item_3HEADEDCOIN,      ItemCmd1_65AF, 1,   Luck,       0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   5,  "🌻3-HeadedCoin",    ItemCombat_4C_4663, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_BALANCESCALE,     ItemCmd1_650F, 1,   Luck,       0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   5,  "🌻BalanceScale",    ItemCombat_4C_4640, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_BUCKETOPINK,      ItemCmd1_650F, 10,  Luck,       0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   5,  "Bucket O'pink",    ItemCombat_4C_4663, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_PLODSPNEW,        ItemCmd1_65AF, 10,  Luck,       0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   5,  "🍄Plod Spnew  ",    ItemCombat_4C_4640, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_HASTEGEM,         ItemCmd1_6551, 5,   Speed,      0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BATTLE, 18, "💎Haste Gem   ",    ItemCombat_4C_48F5, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_GUARDGEM,         ItemCmd1_6551, 5,   Defence,    0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BATTLE, 18, "💎Guard Gem   ",    ItemCombat_4C_48B1, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_POWERGEM,         ItemCmd1_6551, 5,   Skill,      0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BATTLE, 18, "💎Power Gem   ",    ItemCombat_4C_490B, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_STRENGTHGEM,      ItemCmd1_6551, 5,   Strength,   0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BATTLE, 18, "💎Strength Gem",    ItemCombat_4C_4921, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_DEFLECTGEM,       ItemCmd1_6551, 5,   Resist,     0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BATTLE, 18, "💎Deflect Gem ",    ItemCombat_4C_48DE, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_REMEDYDRINK,      ItemCmd1_66D2, 255, 0,          0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BATTLE, 10, "🥣Remedy Drink",    ItemCombat_4C_4A4E, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_CRESCENTGEM,      ItemCmd1_67E3, ItemCmd1_67E3,   0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BATTLE, 18, "💎Crescent Gem",    ItemCombat_4C_4A94, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_GIBBOUSGEM,       ItemCmd1_6824, ItemCmd1_6824,   0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BATTLE, 18, "💎Gibbous Gem ",    ItemCombat_4C_4A94, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_RUNEOFMIGHT,      ItemCmd1_65AF, 2,   Strength,   0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   15, "🥣RuneOfMight ",    ItemCombat_4C_49F2, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_RUNEOFHOPE,       ItemCmd1_65AF, 2,   Defence,    0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   15, "🥣RuneOfHope  ",    ItemCombat_4C_4989, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_RUNEOFPOWER,      ItemCmd1_65AF, 2,   Skill,      0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   15, "🥣RuneOfPower ",    ItemCombat_4C_4967, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_RUNEOFWILL,       ItemCmd1_65AF, 2,   Resist,     0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   15, "🥣RuneOfWill  ",    ItemCombat_4C_49AD, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_RUNEOFFURY,       ItemCmd1_65AF, 2,   Speed,      0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   15, "🥣RuneOfFury  ",    ItemCombat_4C_49D0, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_MASTERRUNE,       ItemCmd1_6791, ItemCmd1_6791,   0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   30, "🥣Master Rune ",    ItemCombat_4C_493A, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_KARMICMIGHT,      ItemCmd1_6739, 3,   Strength,   0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   15, "🥣Karmic Might",    ItemCombat_4C_4575, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_KARMICHOPE,       ItemCmd1_6739, 3,   Defence,    0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   15, "🥣Karmic Hope ",    ItemCombat_4C_44D9, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_KARMICPOWER,      ItemCmd1_6739, 3,   Skill,      0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   15, "🥣Karmic Power",    ItemCombat_4C_44A6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_KARMICWILL,       ItemCmd1_6739, 3,   Resist,     0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   15, "🥣Karmic Will ",    ItemCombat_4C_450E, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_KARMICFURY,       ItemCmd1_6739, 3,   Speed,      0,  Battle_TARGET_ANYCREATURE,   20,     9, elementNone,     BOTH,   15, "🥣Karmic Fury ",    ItemCombat_4C_4542, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_CLOUDFROND,       ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANY,           1,      9, elementNone,     BOTH,   200,"🌴Cloud Frond ",    ItemCombat_4C_43B0, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_SHADOWKEY,        ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    5,  "🔑Shadow Key  ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_ASHGARSKEY,       ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    0,  "🔑Ashgar's Key",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_BLUSHORN,         ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    0,  "Blu's Horn   ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_WENCESARROW,      ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    0,  "Wence's Arrow",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_FEATHER,          ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    0,  "Feather      ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_STARKEY,          ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    5,  "🔑Star Key    ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_BLURRY,           ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    0,  "📜Blurry      ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_WATEROFLIFE,      ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    100,"Water of Life",    ItemCombat_4C_42E6, ItemMap_12_79A0, SpellCom_4C_5225
    ItemSpell_Struct Item_SCREWDRIVER,      ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    5,  "🔑Screwdriver ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_SPECIMENJAR,      ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    0,  "🧴Specimen Jar",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_JAROFFUNGUS,      ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    5,  "JarOfFungus  ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_ALGAE,            ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    5,  "Algae        ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_FUNGICIDE,        ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    5,  "Fungicide    ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_HOLLOWSTOOL,      ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    0,  "🪑Hollow Stool",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_BLASTURN,         ItemCmd1_729D, 10,  Energy,     0,  Battle_TARGET_ANYCREATURE,   255,    4, elementNone,     BOTH,   5,  "Blast Urn    ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_TICKET,           ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    1,  "Ticket       ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_BIRDSEED,         ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    1,  "Bird Seed    ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Item_ELDRITCHAWL,      ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    0,  "Eldritch Awl ",    ItemCombat_4C_42E6, ItemMap_12_79D3, SpellCom_4C_5225
    ItemSpell_Struct Item_ORNATEAWL,        ItemCmd1_6701, ItemCmd1_6701,   0,  Battle_TARGET_ANYCREATURE,   255,    9, elementNone,     MAP,    0,  "Ornate Awl   ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225

    ; $643D
    db "Strength"
    ; $6445
    db "Skill   "
    ; $644D
    db "Speed   "
    ; $6455
    db "Defense "
    ; $645D
    db "Resist  "
    ; $6465
    db "Luck    "

    ; $646D
    db "Plague   "
    ; $6476
    db "Stone    "
    ; $647D
    db "Hiccups  "
    ; $6488
    db "Eruption "
    ; $6491
    db "Hidden   "
    ; $649A
    db "Mirror   "
    ; $64A3
    db "Confusion"
    ; $64AC
    db "Diversion"
    

Call_007_64B5:
    ld hl, $CD94                                  ; $64B5: $21 $94 $CD
    ld a, [hl]                                    ; $64B8: $7E

jr_007_64B9:
    and a                                         ; $64B9: $A7
    jr z, jr_007_64E0                             ; $64BA: $28 $24

    ld b, $0A                                     ; $64BC: $06 $0A
    add b                                         ; $64BE: $80
    ld c, a                                       ; $64BF: $4F
    ld b, $00                                     ; $64C0: $06 $00

jr_007_64C2:
    ld hl, $D110                                  ; $64C2: $21 $10 $D1
    add hl, bc                                    ; $64C5: $09
    ld a, [hl]                                    ; $64C6: $7E
    push af                                       ; $64C7: $F5
    push hl                                       ; $64C8: $E5
    ld hl, $CD93                                  ; $64C9: $21 $93 $CD
    sub [hl]                                      ; $64CC: $96
    jr nc, jr_007_64D0                            ; $64CD: $30 $01

    xor a                                         ; $64CF: $AF

jr_007_64D0:
    pop hl                                        ; $64D0: $E1
    ld [hl], a                                    ; $64D1: $77
    pop bc                                        ; $64D2: $C1
    sub b                                         ; $64D3: $90
    cpl                                           ; $64D4: $2F
    inc a                                         ; $64D5: $3C
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $64D6: $EA $77 $D0
    ld a, $02                                     ; $64D9: $3E $02
    ld [wBattle_DamageOverrideFlag], a                                 ; $64DB: $EA $76 $D0
    jr jr_007_64EC                                ; $64DE: $18 $0C

jr_007_64E0:
    ld hl, $CD93                                  ; $64E0: $21 $93 $CD
    ld a, [hl]                                    ; $64E3: $7E
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $64E4: $EA $77 $D0

jr_007_64E7:
    ld a, $01                                     ; $64E7: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $64E9: $EA $76 $D0

jr_007_64EC:
    ld a, $01                                     ; $64EC: $3E $01
    ld [$D071], a                                 ; $64EE: $EA $71 $D0
    ld hl, $C71B                                  ; $64F1: $21 $1B $C7
    ld a, [$CDAA]                                 ; $64F4: $FA $AA $CD
    ld [hl+], a                                   ; $64F7: $22
    ld a, [$CDAB]                                 ; $64F8: $FA $AB $CD
    ld [hl+], a                                   ; $64FB: $22
    ld a, [$CDAC]                                 ; $64FC: $FA $AC $CD
    ld [hl+], a                                   ; $64FF: $22
    ld a, $66                                     ; $6500: $3E $66
    ld [hl+], a                                   ; $6502: $22
    ld a, $0A                                     ; $6503: $3E $0A
    ld [hl+], a                                   ; $6505: $22
    Do_CallForeign Call_005_5575
    ret                                           ; $650E: $C9


    call Call_007_64B5                            ; $650F: $CD $B5 $64
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $6512: $FA $03 $D1
    cp $05                                        ; $6515: $FE $05
    ret nc                                        ; $6517: $D0

    dec a                                         ; $6518: $3D
    add a                                         ; $6519: $87
    ld c, a                                       ; $651A: $4F
    ld b, $00                                     ; $651B: $06 $00
    ld hl, $D36E                                  ; $651D: $21 $6E $D3
    add hl, bc                                    ; $6520: $09
    DerefHL
    push hl                                       ; $6524: $E5
    ld hl, $CD94                                  ; $6525: $21 $94 $CD
    ld a, [hl]                                    ; $6528: $7E
    ld b, $08                                     ; $6529: $06 $08
    add b                                         ; $652B: $80
    ld c, a                                       ; $652C: $4F
    ld b, $00                                     ; $652D: $06 $00
    pop hl                                        ; $652F: $E1
    add hl, bc                                    ; $6530: $09
    Battery_SetBank "XRAM Creatures"
    Battery_On
    ld a, [hl]                                    ; $653E: $7E
    push hl                                       ; $653F: $E5
    ld hl, $CD93                                  ; $6540: $21 $93 $CD
    sub [hl]                                      ; $6543: $96
    jr nz, jr_007_654A                            ; $6544: $20 $04

    jr nc, jr_007_654A                            ; $6546: $30 $02

    ld a, $01                                     ; $6548: $3E $01

jr_007_654A:
    pop hl                                        ; $654A: $E1
    ld [hl], a                                    ; $654B: $77
    Battery_Off
    ret                                           ; $6550: $C9


Call_007_6551:
    ld hl, $CD94                                  ; $6551: $21 $94 $CD
    ld a, [hl]                                    ; $6554: $7E
    and a                                         ; $6555: $A7
    jr z, jr_007_657D                             ; $6556: $28 $25

    ld b, $0A                                     ; $6558: $06 $0A
    add b                                         ; $655A: $80
    ld c, a                                       ; $655B: $4F
    ld b, $00                                     ; $655C: $06 $00
    ld hl, $D110                                  ; $655E: $21 $10 $D1
    add hl, bc                                    ; $6561: $09
    ld a, [hl]                                    ; $6562: $7E
    push af                                       ; $6563: $F5
    push hl                                       ; $6564: $E5
    ld hl, $CD93                                  ; $6565: $21 $93 $CD
    add [hl]                                      ; $6568: $86
    ld b, $63                                     ; $6569: $06 $63
    cp b                                          ; $656B: $B8
    jr c, jr_007_656F                             ; $656C: $38 $01

    ld a, b                                       ; $656E: $78

jr_007_656F:
    pop hl                                        ; $656F: $E1
    ld [hl], a                                    ; $6570: $77
    pop bc                                        ; $6571: $C1
    sub b                                         ; $6572: $90
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $6573: $EA $77 $D0
    ld a, $02                                     ; $6576: $3E $02
    ld [wBattle_DamageOverrideFlag], a                                 ; $6578: $EA $76 $D0
    jr jr_007_658C                                ; $657B: $18 $0F

jr_007_657D:
    ld hl, $CD93                                  ; $657D: $21 $93 $CD
    ld a, [hl]                                    ; $6580: $7E
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $6581: $EA $77 $D0
    ld a, $01                                     ; $6584: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $6586: $EA $76 $D0
    ld [$D070], a                                 ; $6589: $EA $70 $D0

jr_007_658C:
    ld a, $01                                     ; $658C: $3E $01
    ld [$D071], a                                 ; $658E: $EA $71 $D0
    ld hl, $C71B                                  ; $6591: $21 $1B $C7
    ld a, [$CDAA]                                 ; $6594: $FA $AA $CD
    ld [hl+], a                                   ; $6597: $22
    ld a, [$CDAB]                                 ; $6598: $FA $AB $CD
    ld [hl+], a                                   ; $659B: $22
    ld a, [$CDAC]                                 ; $659C: $FA $AC $CD
    ld [hl+], a                                   ; $659F: $22
    ld a, $66                                     ; $65A0: $3E $66
    ld [hl+], a                                   ; $65A2: $22
    ld a, $0A                                     ; $65A3: $3E $0A
    ld [hl+], a                                   ; $65A5: $22
    Do_CallForeign Call_005_5575
    ret                                           ; $65AE: $C9


Call_007_65AF:
    call Call_007_6551                            ; $65AF: $CD $51 $65
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $65B2: $FA $03 $D1
    cp $05                                        ; $65B5: $FE $05
    ret nc                                        ; $65B7: $D0

    dec a                                         ; $65B8: $3D
    add a                                         ; $65B9: $87
    ld c, a                                       ; $65BA: $4F
    ld b, $00                                     ; $65BB: $06 $00
    ld hl, $D36E                                  ; $65BD: $21 $6E $D3
    add hl, bc                                    ; $65C0: $09
    DerefHL
    push hl                                       ; $65C4: $E5
    ld hl, $CD94                                  ; $65C5: $21 $94 $CD
    ld a, [hl]                                    ; $65C8: $7E
    ld b, $08                                     ; $65C9: $06 $08
    add b                                         ; $65CB: $80
    ld c, a                                       ; $65CC: $4F
    ld b, $00                                     ; $65CD: $06 $00
    pop hl                                        ; $65CF: $E1
    add hl, bc                                    ; $65D0: $09
    Battery_SetBank "XRAM Creatures"
    Battery_On
    ld a, [hl]                                    ; $65DE: $7E
    push hl                                       ; $65DF: $E5
    ld hl, $CD93                                  ; $65E0: $21 $93 $CD
    add [hl]                                      ; $65E3: $86
    ld b, $63                                     ; $65E4: $06 $63
    cp b                                          ; $65E6: $B8
    jr c, jr_007_65EA                             ; $65E7: $38 $01

    ld a, b                                       ; $65E9: $78

jr_007_65EA:
    pop hl                                        ; $65EA: $E1
    ld [hl], a                                    ; $65EB: $77
    Battery_Off
    ret                                           ; $65F0: $C9


    ld a, $01                                     ; $65F1: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $65F3: $EA $76 $D0
    xor a                                         ; $65F6: $AF
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $65F7: $EA $77 $D0
    ld a, [$CD93]                                 ; $65FA: $FA $93 $CD
    ld b, a                                       ; $65FD: $47
    ld a, [$D124]                                 ; $65FE: $FA $24 $D1
    and b                                         ; $6601: $A0
    jr z, jr_007_6618                             ; $6602: $28 $14

    ld hl, $C71B                                  ; $6604: $21 $1B $C7
    ld a, $4C                                     ; $6607: $3E $4C
    ld [hl+], a                                   ; $6609: $22
    ld a, $6D                                     ; $660A: $3E $6D
    ld [hl+], a                                   ; $660C: $22
    ld a, $41                                     ; $660D: $3E $41
    ld [hl+], a                                   ; $660F: $22
    ld a, $66                                     ; $6610: $3E $66
    ld [hl+], a                                   ; $6612: $22
    ld a, $0A                                     ; $6613: $3E $0A
    ld [hl+], a                                   ; $6615: $22
    jr jr_007_6637                                ; $6616: $18 $1F

jr_007_6618:
    ld a, b                                       ; $6618: $78
    ld hl, $D110                                  ; $6619: $21 $10 $D1
    ld bc, $0015                                  ; $661C: $01 $15 $00
    call BattleCmd_Stat_SetCreatureStatus                                    ; $661F: $CD $BE $38
    ld hl, $C71B                                  ; $6622: $21 $1B $C7
    ld a, [$CDAA]                                 ; $6625: $FA $AA $CD
    ld [hl+], a                                   ; $6628: $22
    ld a, [$CDAB]                                 ; $6629: $FA $AB $CD
    ld [hl+], a                                   ; $662C: $22
    ld a, [$CDAC]                                 ; $662D: $FA $AC $CD
    ld [hl+], a                                   ; $6630: $22
    ld a, $66                                     ; $6631: $3E $66
    ld [hl+], a                                   ; $6633: $22
    ld a, $0A                                     ; $6634: $3E $0A
    ld [hl+], a                                   ; $6636: $22

jr_007_6637:
    Do_CallForeign Call_005_5575
    call Call_007_68B4                            ; $663F: $CD $B4 $68
    ld a, $01                                     ; $6642: $3E $01
    ld [$D071], a                                 ; $6644: $EA $71 $D0
    ret                                           ; $6647: $C9


    ld a, $01                                     ; $6648: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $664A: $EA $76 $D0
    xor a                                         ; $664D: $AF
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $664E: $EA $77 $D0
    ld a, $01                                     ; $6651: $3E $01
    ld [$D071], a                                 ; $6653: $EA $71 $D0
    ld hl, $C71B                                  ; $6656: $21 $1B $C7
    ld a, [$CDAA]                                 ; $6659: $FA $AA $CD
    ld [hl+], a                                   ; $665C: $22
    ld a, [$CDAB]                                 ; $665D: $FA $AB $CD
    ld [hl+], a                                   ; $6660: $22
    ld a, [$CDAC]                                 ; $6661: $FA $AC $CD
    ld [hl+], a                                   ; $6664: $22
    ld a, $66                                     ; $6665: $3E $66
    ld [hl+], a                                   ; $6667: $22
    ld a, $0A                                     ; $6668: $3E $0A
    ld [hl+], a                                   ; $666A: $22
    ld a, [$D124]                                 ; $666B: $FA $24 $D1
    cpl                                           ; $666E: $2F
    ld [wBattle_Creature_Target.StatusActive], a                                 ; $666F: $EA $25 $D1
    Do_CallForeign Call_005_5575
    ret                                           ; $667A: $C9


    ld a, $01                                     ; $667B: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $667D: $EA $76 $D0
    xor a                                         ; $6680: $AF
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $6681: $EA $77 $D0
    ld a, [$CD93]                                 ; $6684: $FA $93 $CD
    ld b, a                                       ; $6687: $47
    ld a, [$D126]                                 ; $6688: $FA $26 $D1
    and b                                         ; $668B: $A0
    jr z, jr_007_66A2                             ; $668C: $28 $14

    ld hl, $C71B                                  ; $668E: $21 $1B $C7
    ld a, $4C                                     ; $6691: $3E $4C
    ld [hl+], a                                   ; $6693: $22
    ld a, $84                                     ; $6694: $3E $84
    ld [hl+], a                                   ; $6696: $22
    ld a, $41                                     ; $6697: $3E $41
    ld [hl+], a                                   ; $6699: $22
    ld a, $66                                     ; $669A: $3E $66
    ld [hl+], a                                   ; $669C: $22
    ld a, $0A                                     ; $669D: $3E $0A
    ld [hl+], a                                   ; $669F: $22
    jr jr_007_66C1                                ; $66A0: $18 $1F

jr_007_66A2:
    ld a, b                                       ; $66A2: $78
    ld hl, $D110                                  ; $66A3: $21 $10 $D1
    ld bc, $0015                                  ; $66A6: $01 $15 $00
    call BattleCmd_Stat_ClearCreatureStatus                                    ; $66A9: $CD $C2 $38
    ld hl, $C71B                                  ; $66AC: $21 $1B $C7
    ld a, [$CDAA]                                 ; $66AF: $FA $AA $CD
    ld [hl+], a                                   ; $66B2: $22
    ld a, [$CDAB]                                 ; $66B3: $FA $AB $CD
    ld [hl+], a                                   ; $66B6: $22
    ld a, [$CDAC]                                 ; $66B7: $FA $AC $CD
    ld [hl+], a                                   ; $66BA: $22
    ld a, $66                                     ; $66BB: $3E $66
    ld [hl+], a                                   ; $66BD: $22
    ld a, $0A                                     ; $66BE: $3E $0A
    ld [hl+], a                                   ; $66C0: $22

jr_007_66C1:
    Do_CallForeign Call_005_5575
    call Call_007_68B4                            ; $66C9: $CD $B4 $68
    ld a, $01                                     ; $66CC: $3E $01
    ld [$D071], a                                 ; $66CE: $EA $71 $D0
    ret                                           ; $66D1: $C9

Call_007_66D2::
    ld a, $01                                     ; $66D2: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $66D4: $EA $76 $D0
    xor a                                         ; $66D7: $AF
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $66D8: $EA $77 $D0
    ld a, $01                                     ; $66DB: $3E $01
    ld [$D071], a                                 ; $66DD: $EA $71 $D0
    ld hl, $C71B                                  ; $66E0: $21 $1B $C7
    ld a, $4C                                     ; $66E3: $3E $4C
    ld [hl+], a                                   ; $66E5: $22
    ld a, $4E                                     ; $66E6: $3E $4E
    ld [hl+], a                                   ; $66E8: $22
    ld a, $4A                                     ; $66E9: $3E $4A
    ld [hl+], a                                   ; $66EB: $22
    ld a, $66                                     ; $66EC: $3E $66
    ld [hl+], a                                   ; $66EE: $22
    ld a, $0A                                     ; $66EF: $3E $0A
    ld [hl+], a                                   ; $66F1: $22
    ld a, [$D126]                                 ; $66F2: $FA $26 $D1
    ld [wBattle_Creature_Target.StatusActive], a                                 ; $66F5: $EA $25 $D1
    Do_CallForeign Call_005_5575
    ret                                           ; $6700: $C9


    ld a, $01                                     ; $6701: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $6703: $EA $76 $D0
    xor a                                         ; $6706: $AF
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $6707: $EA $77 $D0
    ld hl, $D119                                  ; $670A: $21 $19 $D1
    ld bc, $D117                                  ; $670D: $01 $17 $D1
    LdBCIHLI                                        ; $6712: $03
    LdBCIHLI                                        ; $6715: $03
    ld a, $01                                     ; $6716: $3E $01
    ld [$D071], a                                 ; $6718: $EA $71 $D0
    Do_CallForeign Call_005_5575
    ld hl, $C71B                                  ; $6723: $21 $1B $C7
    ld a, [$CDAA]                                 ; $6726: $FA $AA $CD
    ld [hl+], a                                   ; $6729: $22
    ld a, [$CDAB]                                 ; $672A: $FA $AB $CD
    ld [hl+], a                                   ; $672D: $22
    ld a, [$CDAC]                                 ; $672E: $FA $AC $CD
    ld [hl+], a                                   ; $6731: $22
    ld a, $66                                     ; $6732: $3E $66
    ld [hl+], a                                   ; $6734: $22
    ld a, $0A                                     ; $6735: $3E $0A
    ld [hl+], a                                   ; $6737: $22
    ret                                           ; $6738: $C9


    call Call_007_65AF                            ; $6739: $CD $AF $65
    call Math_RandomIncrement                                    ; $673C: $CD $4F $05
    ld c, a                                       ; $673F: $4F
    ld b, $05                                     ; $6740: $06 $05
    call Math_Div                                    ; $6742: $CD $AC $04
    ld h, $00                                     ; $6745: $26 $00
    ld bc, $0009                                  ; $6747: $01 $09 $00
    push hl                                       ; $674A: $E5
    add hl, bc                                    ; $674B: $09
    push hl                                       ; $674C: $E5
    dec a                                         ; $674D: $3D
    add a                                         ; $674E: $87
    ld c, a                                       ; $674F: $4F
    ld b, $00                                     ; $6750: $06 $00
    ld hl, $D36E                                  ; $6752: $21 $6E $D3
    add hl, bc                                    ; $6755: $09
    DerefHL
    pop bc                                        ; $6759: $C1
    add hl, bc                                    ; $675A: $09
    ld a, [wBattle_Creature_Current.BattleCmd_Target]                                 ; $675B: $FA $03 $D1
    cp $05                                        ; $675E: $FE $05
    jr nc, jr_007_6774                            ; $6760: $30 $12

    Battery_SetBank "XRAM Creatures"
    Battery_On
    dec [hl]                                      ; $676F: $35
    jr nz, jr_007_6774                            ; $6770: $20 $02

    ld [hl], $01                                  ; $6772: $36 $01

jr_007_6774:
    Battery_Off
    pop bc                                        ; $6778: $C1
    ld b, $08                                     ; $6779: $06 $08
    call Math_Mult                                    ; $677B: $CD $CA $04
    ld bc, $643D                                  ; $677E: $01 $3D $64
    add hl, bc                                    ; $6781: $09
    ld bc, $C961                                  ; $6782: $01 $61 $C9
    ld d, $08                                     ; $6785: $16 $08

jr_007_6787:
    LdBCIHLI                                        ; $6789: $03
    dec d                                         ; $678A: $15
    jr nz, jr_007_6787                            ; $678B: $20 $FA

    ld a, $FC                                     ; $678D: $3E $FC
    ld [bc], a                                    ; $678F: $02
    ret                                           ; $6790: $C9


    ld bc, $0102                                  ; $6791: $01 $02 $01
    FSet16 $CD93, bc                                    ; $6799: $70
    call Call_007_65AF                            ; $679A: $CD $AF $65
    ld bc, $0202                                  ; $679D: $01 $02 $02
    FSet16 $CD93, bc                                    ; $67A5: $70
    call Call_007_65AF                            ; $67A6: $CD $AF $65
    ld bc, $0302                                  ; $67A9: $01 $02 $03
    FSet16 $CD93, bc                                    ; $67B1: $70
    call Call_007_65AF                            ; $67B2: $CD $AF $65
    ld bc, $0402                                  ; $67B5: $01 $02 $04
    FSet16 $CD93, bc                                    ; $67BD: $70
    call Call_007_65AF                            ; $67BE: $CD $AF $65
    ld bc, $0502                                  ; $67C1: $01 $02 $05
    FSet16 $CD93, bc                                    ; $67C9: $70
    call Call_007_65AF                            ; $67CA: $CD $AF $65
    ld hl, $C71B                                  ; $67CD: $21 $1B $C7
    ld a, [$CDAA]                                 ; $67D0: $FA $AA $CD
    ld [hl+], a                                   ; $67D3: $22
    ld a, [$CDAB]                                 ; $67D4: $FA $AB $CD
    ld [hl+], a                                   ; $67D7: $22
    ld a, [$CDAC]                                 ; $67D8: $FA $AC $CD
    ld [hl+], a                                   ; $67DB: $22
    ld a, $66                                     ; $67DC: $3E $66
    ld [hl+], a                                   ; $67DE: $22
    ld a, $0A                                     ; $67DF: $3E $0A
    ld [hl+], a                                   ; $67E1: $22
    ret                                           ; $67E2: $C9


    ld a, $01                                     ; $67E3: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $67E5: $EA $76 $D0
    xor a                                         ; $67E8: $AF
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $67E9: $EA $77 $D0
    ld hl, wBattle_Creature_Target.StatusActive                                  ; $67EC: $21 $25 $D1
    rlc [hl]                                      ; $67EF: $CB $06
    ld a, [$D126]                                 ; $67F1: $FA $26 $D1
    or [hl]                                       ; $67F4: $B6
    ld [hl], a                                    ; $67F5: $77
    ld a, [$D124]                                 ; $67F6: $FA $24 $D1
    cpl                                           ; $67F9: $2F
    and [hl]                                      ; $67FA: $A6
    ld [hl], a                                    ; $67FB: $77
    ld a, $33                                     ; $67FC: $3E $33
    ld [$D111], a                                 ; $67FE: $EA $11 $D1
    ld a, $01                                     ; $6801: $3E $01
    ld [$D071], a                                 ; $6803: $EA $71 $D0
    Do_CallForeign Call_005_5575
    ld hl, $C71B                                  ; $680E: $21 $1B $C7
    ld a, [$CDAA]                                 ; $6811: $FA $AA $CD
    ld [hl+], a                                   ; $6814: $22
    ld a, [$CDAB]                                 ; $6815: $FA $AB $CD
    ld [hl+], a                                   ; $6818: $22
    ld a, [$CDAC]                                 ; $6819: $FA $AC $CD
    ld [hl+], a                                   ; $681C: $22
    ld a, $66                                     ; $681D: $3E $66
    ld [hl+], a                                   ; $681F: $22
    ld a, $0A                                     ; $6820: $3E $0A
    ld [hl+], a                                   ; $6822: $22
    ret                                           ; $6823: $C9


    ld a, $01                                     ; $6824: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $6826: $EA $76 $D0
    xor a                                         ; $6829: $AF
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $682A: $EA $77 $D0
    ld hl, wBattle_Creature_Target.StatusActive                                  ; $682D: $21 $25 $D1
    rrc [hl]                                      ; $6830: $CB $0E
    ld a, [$D126]                                 ; $6832: $FA $26 $D1
    or [hl]                                       ; $6835: $B6
    ld [hl], a                                    ; $6836: $77
    ld a, [$D124]                                 ; $6837: $FA $24 $D1
    cpl                                           ; $683A: $2F
    and [hl]                                      ; $683B: $A6
    ld [hl], a                                    ; $683C: $77
    ld a, $33                                     ; $683D: $3E $33
    ld [$D111], a                                 ; $683F: $EA $11 $D1
    ld a, $01                                     ; $6842: $3E $01
    ld [$D071], a                                 ; $6844: $EA $71 $D0
    Do_CallForeign Call_005_5575
    ld hl, $C71B                                  ; $684F: $21 $1B $C7
    ld a, [$CDAA]                                 ; $6852: $FA $AA $CD
    ld [hl+], a                                   ; $6855: $22
    ld a, [$CDAB]                                 ; $6856: $FA $AB $CD
    ld [hl+], a                                   ; $6859: $22
    ld a, [$CDAC]                                 ; $685A: $FA $AC $CD
    ld [hl+], a                                   ; $685D: $22
    ld a, $66                                     ; $685E: $3E $66
    ld [hl+], a                                   ; $6860: $22
    ld a, $0A                                     ; $6861: $3E $0A
    ld [hl+], a                                   ; $6863: $22
    ret                                           ; $6864: $C9


    ld hl, $A3A7                                  ; $6865: $21 $A7 $A3
    add hl, de                                    ; $6868: $19
    push hl                                       ; $6869: $E5
    ld b, e                                       ; $686A: $43
    ld c, $22                                     ; $686B: $0E $22
    call Math_Mult                                    ; $686D: $CD $CA $04
    ld bc, $5E0B                                  ; $6870: $01 $0B $5E
    add hl, bc                                    ; $6873: $09
    ld bc, $000D                                  ; $6874: $01 $0D $00
    ld de, wText_StringBuffer                                  ; $6877: $11 $49 $C9
    call MemMov                                    ; $687A: $CD $A0 $07
    ld a, $FC                                     ; $687D: $3E $FC
    ld [de], a                                    ; $687F: $12
    ld bc, $FFED                                  ; $6880: $01 $ED $FF
    add hl, bc                                    ; $6883: $09
    ld a, [hl]                                    ; $6884: $7E
    ld b, a                                       ; $6885: $47
    xor a                                         ; $6886: $AF
    ld [$C9FD], a                                 ; $6887: $EA $FD $C9
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    pop hl                                        ; $6897: $E1
    ld a, [hl]                                    ; $6898: $7E
    ld c, a                                       ; $6899: $4F
    cp b                                          ; $689A: $B8
    jr z, jr_007_68AF                             ; $689B: $28 $12

    ld a, [$C9FE]                                 ; $689D: $FA $FE $C9
    add c                                         ; $68A0: $81
    jr c, jr_007_68A8                             ; $68A1: $38 $05

    cp b                                          ; $68A3: $B8
    jr z, jr_007_68A9                             ; $68A4: $28 $03

    jr c, jr_007_68A9                             ; $68A6: $38 $01

jr_007_68A8:
    ld a, b                                       ; $68A8: $78

jr_007_68A9:
    ld [hl], a                                    ; $68A9: $77
    ld a, $01                                     ; $68AA: $3E $01
    ld [$C9FD], a                                 ; $68AC: $EA $FD $C9

jr_007_68AF:
    Battery_Off
    ret                                           ; $68B3: $C9


Call_007_68B4:
    ld a, [$CD93]                                 ; $68B4: $FA $93 $CD
    ld b, $FF                                     ; $68B7: $06 $FF

jr_007_68B9:
    inc b                                         ; $68B9: $04
    bit 0, a                                      ; $68BA: $CB $47
    jr nz, jr_007_68C2                            ; $68BC: $20 $04

    srl a                                         ; $68BE: $CB $3F
    jr jr_007_68B9                                ; $68C0: $18 $F7

jr_007_68C2:
    ld c, $09                                     ; $68C2: $0E $09
    call Math_Mult                                    ; $68C4: $CD $CA $04
    ld bc, $646D                                  ; $68C7: $01 $6D $64
    add hl, bc                                    ; $68CA: $09
    ld bc, $C95F                                  ; $68CB: $01 $5F $C9
    ld d, $09                                     ; $68CE: $16 $09

jr_007_68D0:
    LdBCIHLI                                        ; $68D2: $03
    dec d                                         ; $68D3: $15
    jr nz, jr_007_68D0                            ; $68D4: $20 $FA

    ld a, $FC                                     ; $68D6: $3E $FC
    ld [bc], a                                    ; $68D8: $02
    ret                                           ; $68D9: $C9


    ld hl, $A3A7                                  ; $68DA: $21 $A7 $A3
    add hl, de                                    ; $68DD: $19
    jp Jump_007_74A6                              ; $68DE: $C3 $A6 $74

    ; relic_table.s

INCLUDE "source/game/battle/relic/relic_table.asm"
INCLUDE "source/game/battle/relic/relic_cmd.asm"


    ; $6FCF
Relic_FormatRelicName_GiveRelic::
    ; Formats the relic name for text, and then gives the relic
    ;
    ; Arguments:
    ;   e = relic id
    ;   todo Jump_007_743C
    ; Outputs:
    ;   [wText_StringBuffer] = formatted string, terminated with <FORMAT> 🔊 ("RELICNAME🔊") 
    ld hl, xInventory_Relics
    add hl, de
    push hl
    ld b, e
    ld c, Relic_ROWSIZE
    call Math_Mult
    ld bc, Relic_Table.Relic_NULL_Name
    add hl, bc
    ld bc, Relic_NAMESIZE
    ld de, wText_StringBuffer
    call MemMov
    ld a, "🔊"
    ld [de], a
    pop hl
    jp Jump_007_743C ; GIVERELICS

    ; todo
    ; Take away relic
    ld hl, xInventory_Relics                                  ; $6FEE: $21 $19 $A0
    add hl, de                                    ; $6FF1: $19
    jp Jump_007_74A6                              ; $6FF2: $C3 $A6 $74

    ; $6FF5
Spell_Table::
    RSRESET
    ItemSpell_Struct Spell_NULL,            0,             0,   0,          0,  0,                             0,      0, 0,               0,      0,  "             ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5225
    ItemSpell_Struct Spell_LEAFCUT,         ItemCmd1_729D, 5,   Energy,     8,  Battle_TARGET_ANYCREATURE,     20,     4, elementNone,     BATTLE, 8,  "📜Leaf Cut    ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5245
    ItemSpell_Struct Spell_GROW,            ItemCmd1_6551, 10,  Energy,     12, Battle_TARGET_ANYCREATURE,     5,      9, elementNone,     BATTLE, 8,  "📜Grow        ",    ItemCombat_4C_4406, 0,               SpellCom_4C_4D35
    ItemSpell_Struct Spell_BURROW,          ItemCmd1_6551, 20,  Defence,    10, Battle_TARGET_ANYCREATURE,     5,      9, elementNone,     BATTLE, 8,  "📜Burrow      ",    ItemCombat_4C_48B1, 0,               SpellCom_4C_4D35
    ItemSpell_Struct Spell_CAVEIN,          ItemCmd1_64B5, 15,  Defence,    12, Battle_TARGET_ANYCREATURE,     5,      4, elementNone,     BATTLE, 8,  "📜Cave In     ",    ItemCombat_4C_45C2, 0,               SpellCom_4C_505A
    ItemSpell_Struct Spell_THUNDERQUAKE,    ItemCmd1_729D, 6,   Energy,     10, Battle_TARGET_ALL,             20,     4, elementNone,     BATTLE, 8,  "📜Thunderquake",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5698
    ItemSpell_Struct Spell_FIREBALL,        ItemCmd1_729D, 12,  Energy,     15, Battle_TARGET_ANYCREATURE,     20,     4, elementNone,     BATTLE, 8,  "📜Fireball    ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_4F18
    ItemSpell_Struct Spell_FLAMEGEYSER,     ItemCmd1_729D, 20,  Energy,     4,  Battle_TARGET_ALL_MAGI_ME,     20,     4, elementNone,     BATTLE, 8,  "📜Flame Geyser",    ItemCombat_4C_42E6, 0,               SpellCom_4C_596F
    ItemSpell_Struct Spell_ENTANGLE,        ItemCmd1_64B5, 20,  Speed,      15, Battle_TARGET_ANYCREATURE,     5,      4, elementNone,     BATTLE, 8,  "📜Entangle    ",    ItemCombat_4C_460D, 0,               SpellCom_4C_5805
    ItemSpell_Struct Spell_TIDALWAVE,       ItemCmd1_729D, 12,  Energy,     24, Battle_TARGET_ALLENEMY,        20,     4, elementNone,     BATTLE, 8,  "📜Tidal Wave  ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_4C7E
    ItemSpell_Struct Spell_DISPELX,         ItemCmd1_66D2, 0,   0,          25, Battle_TARGET_ALLALLY,         20,     9, elementNone,     BATTLE, 8,  "📜Dispel X    ",    ItemCombat_4C_4A4E, 0,               SpellCom_4C_4D5C
    ItemSpell_Struct Spell_UPDRAFT,         ItemCmd1_6551, 20,  Defence,    20, Battle_TARGET_ALLALLY,         20,     9, elementNone,     BATTLE, 8,  "📜Updraft     ",    ItemCombat_4C_49D0, 0,               SpellCom_4C_4D35
    ItemSpell_Struct Spell_LIGHTNING,       ItemCmd1_729D, 23,  Energy,     40, Battle_TARGET_ANYCREATURE,     20,     4, elementNone,     BATTLE, 8,  "📜Lightning   ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5109
    ItemSpell_Struct Spell_CONDEMN,         ItemCmd1_729D, 70,  Energy,     20, Battle_TARGET_ANYCREATURE,     20,     4, elementShadow,   BATTLE, 8,  "📜Condemn     ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_56D6
    ItemSpell_Struct Spell_SINGULARITY,     ItemCmd1_729D, 50,  Energy,     20, Battle_TARGET_ALLENEMY,        20,     4, elementShadow,   BATTLE, 8,  "📜Singularity ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5B01
    ItemSpell_Struct Spell_JUDGE,           ItemCmd1_6551, 10,  Skill,      0,  Battle_TARGET_ALLALLY,         20,     4, elementShadow,   BATTLE, 8,  "📜Judge       ",    ItemCombat_4C_447A, 0,               SpellCom_4C_5ABF
    ItemSpell_Struct Spell_JURY,            ItemCmd1_64B5, 10,  Resist,     0,  Battle_TARGET_ALLENEMY,        20,     4, elementShadow,   BATTLE, 8,  "📜Jury        ",    ItemCombat_4C_4491, 0,               SpellCom_4C_5A7D
    ItemSpell_Struct Spell_EXECUTIONER,     ItemCmd1_72B1, 20,  Energy,     0,  Battle_TARGET_ALLENEMY_MAGI,   20,     4, elementShadow,   BATTLE, 8,  "📜Executioner ",    ItemCombat_4C_4333, 0,               SpellCom_4C_5B38
    ItemSpell_Struct Spell_FLOOD,           ItemCmd1_729D, 25,  Energy,     10, Battle_TARGET_ALLENEMY,        20,     4, elementNone,     BATTLE, 8,  "📜Flood       ",    ItemCombat_4C_42E6, 0,               SpellCom_4C_4CB8
    ItemSpell_Struct Spell_CUNNINGBLOW,     ItemCmd1_72F0, 25,  Energy,     30, Battle_TARGET_ANYCREATURE,     20,     4, elementNone,     BATTLE, 8,  "📜Cunning Blow",    ItemCombat_4C_42E6, 0,               SpellCom_4C_5854

jr_007_729D:
    ld a, $01                                     ; $729D: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $729F: $EA $76 $D0
    ld a, [$CD93]                                 ; $72A2: $FA $93 $CD
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $72A5: $EA $77 $D0
    Do_CallForeign Call_005_5575
    ret                                           ; $72B0: $C9


    ld a, $01                                     ; $72B1: $3E $01
    ld [wBattle_DamageOverrideFlag], a                                 ; $72B3: $EA $76 $D0
    call Math_RandomIncrement                                    ; $72B6: $CD $4F $05
    ld c, a                                       ; $72B9: $4F
    ld b, $1E                                     ; $72BA: $06 $1E
    call Math_Div                                    ; $72BC: $CD $AC $04

jr_007_72BF:
    ld a, l                                       ; $72BF: $7D
    add $0A                                       ; $72C0: $C6 $0A
    ld [wBattle_DamageOverrideMagnitude], a                                 ; $72C2: $EA $77 $D0
    Do_CallForeign Call_005_5575
    ld a, $01                                     ; $72CD: $3E $01
    ld [$D071], a                                 ; $72CF: $EA $71 $D0
    ld hl, $C71B                                  ; $72D2: $21 $1B $C7
    ld a, [$CDAA]                                 ; $72D5: $FA $AA $CD
    ld [hl+], a                                   ; $72D8: $22
    ld a, [$CDAB]                                 ; $72D9: $FA $AB $CD
    ld [hl+], a                                   ; $72DC: $22
    ld a, [$CDAC]                                 ; $72DD: $FA $AC $CD
    ld [hl+], a                                   ; $72E0: $22
    ld a, $66                                     ; $72E1: $3E $66
    ld [hl+], a                                   ; $72E3: $22
    ld a, $0A                                     ; $72E4: $3E $0A
    ld [hl+], a                                   ; $72E6: $22
    Do_CallForeign Call_005_5575
    ret                                           ; $72EF: $C9


    Do_CallForeign Call_005_4B45
    call Math_RandomIncrement                                    ; $72F8: $CD $4F $05
    cp $E6                                        ; $72FB: $FE $E6
    ret nc                                        ; $72FD: $D0

    ret                                           ; $72FE: $C9


    ld hl, $A5A5                                  ; $72FF: $21 $A5 $A5
    add hl, de                                    ; $7302: $19
    push hl                                       ; $7303: $E5
    ld b, e                                       ; $7304: $43
    ld c, $22                                     ; $7305: $0E $22
    call Math_Mult                                    ; $7307: $CD $CA $04
    ld bc, $7001                                  ; $730A: $01 $01 $70
    add hl, bc                                    ; $730D: $09
    ld bc, $000D                                  ; $730E: $01 $0D $00
    ld de, wText_StringBuffer                                  ; $7311: $11 $49 $C9
    call MemMov                                    ; $7314: $CD $A0 $07
    ld a, $FC                                     ; $7317: $3E $FC
    ld [de], a                                    ; $7319: $12
    ld bc, $FFEB                                  ; $731A: $01 $EB $FF
    add hl, bc                                    ; $731D: $09
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [hl]                                    ; $732B: $7E
    pop hl                                        ; $732C: $E1
    ld [hl], a                                    ; $732D: $77
    Battery_Off
    ld a, $01                                     ; $7332: $3E $01
    ld [$C9FD], a                                 ; $7334: $EA $FD $C9
    ret                                           ; $7337: $C9


    ld hl, $A5A5                                  ; $7338: $21 $A5 $A5
    add hl, de                                    ; $733B: $19
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    xor a                                         ; $7349: $AF
    ld [hl], a                                    ; $734A: $77
    Battery_Off
    ret                                           ; $734F: $C9

Unknown_GetNameAndGiveItem::
    ld hl, $5D7F                                  ; $7350: $21 $7F $5D

Jump_007_7353:
    ld a, [$C9FC]                                 ; $7353: $FA $FC $C9
    add a                                         ; $7356: $87
    ld e, a                                       ; $7357: $5F
    ld d, $00                                     ; $7358: $16 $00
    rlc d                                         ; $735A: $CB $02
    add hl, de                                    ; $735C: $19
    ld a, [$C9FD]                                 ; $735D: $FA $FD $C9
    ld e, a                                       ; $7360: $5F
    ld d, $00                                     ; $7361: $16 $00
    DerefHL
    jp hl                                         ; $7366: $E9


    ret                                           ; $7367: $C9

Call_007_7368::
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [$C9FE]                                 ; $7375: $FA $FE $C9
    ld e, a                                       ; $7378: $5F
    ld d, $00                                     ; $7379: $16 $00
    FGet16 hl, $A3A5                                  ; $737B: $21 $A5 $A3
    push hl                                       ; $7381: $E5
    add hl, de                                    ; $7382: $19
    ld de, $FC19                                  ; $7383: $11 $19 $FC
    push hl                                       ; $7386: $E5
    add hl, de                                    ; $7387: $19
    pop hl                                        ; $7388: $E1
    jr nc, jr_007_738E                            ; $7389: $30 $03

    ld hl, $03E7                                  ; $738B: $21 $E7 $03

jr_007_738E:
    ld a, h                                       ; $738E: $7C
    ld [$A3A6], a                                 ; $738F: $EA $A6 $A3
    ld a, l                                       ; $7392: $7D
    ld [$A3A5], a                                 ; $7393: $EA $A5 $A3
    Battery_Off
    pop bc                                        ; $739A: $C1
    TwosComp bc
    add hl, bc                                    ; $73A2: $09
    ld a, l                                       ; $73A3: $7D
    ld [$C9FE], a                                 ; $73A4: $EA $FE $C9
    ret                                           ; $73A7: $C9


    Battery_SetBank "XRAM Creatures"
    Battery_On
    ld a, [$C9FE]                                 ; $73B5: $FA $FE $C9
    ld c, a                                       ; $73B8: $4F
    ld b, $00                                     ; $73B9: $06 $00
    FGet16_BigEndian de, $A007                                  ; $73BB: $21 $07 $A0                                       ; $73C0: $57
    FGet16_BigEndian hl, $A005                                  ; $73C1: $21 $05 $A0                                       ; $73C6: $67
    add hl, bc                                    ; $73C7: $09
    TwosComp de
    push hl                                       ; $73CF: $E5
    add hl, de                                    ; $73D0: $19
    pop de                                        ; $73D1: $D1
    jr nc, jr_007_73DA                            ; $73D2: $30 $06

    FGet16_BigEndian de, $A007                                  ; $73D4: $21 $07 $A0                                       ; $73D9: $57

jr_007_73DA:
    ld a, e                                       ; $73DA: $7B
    ld [$A006], a                                 ; $73DB: $EA $06 $A0
    ld a, d                                       ; $73DE: $7A
    ld [$A005], a                                 ; $73DF: $EA $05 $A0
    Battery_Off
    ret                                           ; $73E6: $C9


    Battery_SetBank "XRAM Creatures"
    Battery_On
    ld a, [$C9FE]                                 ; $73F4: $FA $FE $C9
    ld c, a                                       ; $73F7: $4F
    ld b, $00                                     ; $73F8: $06 $00
    FGet16_BigEndian hl, $A007                                  ; $73FA: $21 $07 $A0                                       ; $73FF: $67
    add hl, bc                                    ; $7400: $09
    ld de, $FC19                                  ; $7401: $11 $19 $FC
    push hl                                       ; $7404: $E5
    add hl, de                                    ; $7405: $19
    pop de                                        ; $7406: $D1
    jr nc, jr_007_740C                            ; $7407: $30 $03

    ld de, $03E7                                  ; $7409: $11 $E7 $03

jr_007_740C:
    ld a, e                                       ; $740C: $7B
    ld [$A008], a                                 ; $740D: $EA $08 $A0
    ld a, d                                       ; $7410: $7A
    ld [$A007], a                                 ; $7411: $EA $07 $A0
    Battery_Off
    ret                                           ; $7418: $C9


    ld hl, $A4A6                                  ; $7419: $21 $A6 $A4
    add hl, de                                    ; $741C: $19
    push hl                                       ; $741D: $E5
    ld a, e                                       ; $741E: $7B
    ld [wBattle_CopyBuffer_ListIndex], a                                 ; $741F: $EA $8C $CD
    ld hl, wText_StringBuffer                                  ; $7422: $21 $49 $C9
    ld a, $11                                     ; $7425: $3E $11
    ld [hl+], a                                   ; $7427: $22
    ld a, h                                       ; $7428: $7C
    ld [wBattle_CopyBuffer_Destination+1], a                                 ; $7429: $EA $90 $CD
    ld a, l                                       ; $742C: $7D
    ld [wBattle_CopyBuffer_Destination], a                                 ; $742D: $EA $8F $CD
    Do_CallForeign CopyDreamCreatureNameToBuffer
    ld a, $FC                                     ; $7438: $3E $FC
    ld [bc], a                                    ; $743A: $02
    pop hl                                        ; $743B: $E1

    ; $743C
Jump_007_743C:
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [hl]
    ld c, a
    ld a, [$C9FE]
    add c
    jr nc, jr_007_745A

    ld a, $FF
    ld [hl], a
    xor a
    ld [$C9FD], a
    jr jr_007_7460

jr_007_745A:
    ld [hl], a
    ld a, $01
    ld [$C9FD], a

jr_007_7460:
    Battery_Off
    ret

Call_007_7465::
    ld hl, $5D8D                                  ; $7465: $21 $8D $5D
    jp Jump_007_7353                              ; $7468: $C3 $53 $73


    ld hl, $A4A6                                  ; $746B: $21 $A6 $A4
    add hl, de                                    ; $746E: $19
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [$C9FE]                                 ; $747C: $FA $FE $C9
    ld e, a                                       ; $747F: $5F
    ld d, $00                                     ; $7480: $16 $00
    TwosComp de
    FGet16 hl, $A3A5                                  ; $7489: $21 $A5 $A3
    add hl, de                                    ; $748F: $19
    jr nc, jr_007_7495                            ; $7490: $30 $03

    ld hl, $0000                                  ; $7492: $21 $00 $00

jr_007_7495:
    ld a, h                                       ; $7495: $7C
    ld [$A3A6], a                                 ; $7496: $EA $A6 $A3
    ld a, l                                       ; $7499: $7D
    ld [$A3A5], a                                 ; $749A: $EA $A5 $A3
    Battery_Off
    ret                                           ; $74A1: $C9


    ld hl, $A4A6                                  ; $74A2: $21 $A6 $A4
    add hl, de                                    ; $74A5: $19

Jump_007_74A6:
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [$C9FE]                                 ; $74B3: $FA $FE $C9
    ld c, a                                       ; $74B6: $4F
    ld a, [hl]                                    ; $74B7: $7E
    sub c                                         ; $74B8: $91
    jr nc, jr_007_74BC                            ; $74B9: $30 $01

    xor a                                         ; $74BB: $AF

jr_007_74BC:
    ld [hl], a                                    ; $74BC: $77
    Battery_Off
    ret                                           ; $74C1: $C9


    sub c                                         ; $74C2: $91
    jr nc, jr_007_74C6                            ; $74C3: $30 $01

    xor a                                         ; $74C5: $AF

jr_007_74C6:
    ld [hl], a                                    ; $74C6: $77
    Battery_Off
    ret                                           ; $74CB: $C9
