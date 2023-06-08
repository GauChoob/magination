
; Creature Palette-related functions
; This file was originally in the palette folder, but it makes more sense for it
; to be in the fightscene folder
; See also fightscene_palfx_arena.asm (seems to be a newer file)


Fightscene_CreaturePalFX_Cycle::
    ; Cycles once the 2nd, 3rd and 4th color for the 3 palettes of the creature
    ; You should cycle a multiple of 3 times to reset the colors back to normal by the end
    ; Inputs:
    ;   wTemp_9.Palette_BattleFX_CreatureIsRight
    xor a
    ld [wPalette_VBlankReady], a
    ld a, [wTemp_9.Palette_BattleFX_CreatureIsRight]
    and a
    jr nz, .CreatureRight
    .CreatureLeft:
        ; Cycle the 2nd-4th color for Palettes 0-2
        FOR paletteid, 0, 3
            ld hl, wPalette_AnimBuffers.Background
            ld e, paletteid
            ld a, $03
            call Palette_PaletteCycleColors
        ENDR
        Set8 wPalette_VBlankReady, $01
        ret
    .CreatureRight:
        ; Cycle the 2nd-4th color for Palettes 3-5
        FOR paletteid, 3, 6
            ld hl, wPalette_AnimBuffers.Background
            ld e, paletteid
            ld a, $03
            call Palette_PaletteCycleColors
        ENDR
        Set8 wPalette_VBlankReady, $01
        ret


Fightscene_CreaturePalFX_FadeToBase::
    ; Fades the target creature from wPalette_AnimBuffers to wPalette_BaseBuffers
    ; The CreatureLeft function has multiple bugs
    ; Inputs:
    ;   wTemp_9.Palette_BattleFX_CreatureIsRight
    ;   wPalette_BaseBuffers already set
    ld a, [wTemp_9.Palette_BattleFX_CreatureIsRight]
    and a
    jr nz, .CreatureRight
    .CreatureLeft:
        call Fightscene_CreaturePalFX_LeftFadeMultiColor
        ret
    .CreatureRight:
        call Fightscene_CreaturePalFX_RightFadeMultiColor
        ret


Fightscene_CreaturePalFX_FadeToColor::
    ; Fades the target creature to a specific color
    ; Inputs:
    ;   wTemp_9.Palette_BattleFX_CreatureIsRight
    ;   wTemp_A.Palette_SetColor
    xor a
    ld [wPalette_VBlankReady], a
    Mov8 wPalette_FadeMagnitudeCounter, wTemp_B.Palette_FadeMagnitude

    Get16 de, wTemp_A.Palette_SetColor
    ld a, [wTemp_9.Palette_BattleFX_CreatureIsRight]
    and a
    jr nz, .CreatureLeft
    .CreatureRight:
        ; Fade Palette 0, 1, 2, Colors 2nd-4th
        ld hl, wPalette_AnimBuffers.Background + 1*2
        ld bc, $0003
        call Palette_PaletteBufferFadeUniColor
        ld hl, wPalette_AnimBuffers.Background + 5*2
        ld bc, $0003
        call Palette_PaletteBufferFadeUniColor
        ld hl, wPalette_AnimBuffers.Background + 9*2
        ld bc, $0003
        call Palette_PaletteBufferFadeUniColor
        ld a, [wFightscene_CreatureLeft_3rdPaletteTransparent]
        and a
        jr z, .RightNonTransparent
        .RightTransparent:
            Set8 wPalette_VBlankReady, $01
            ret
        .RightNonTransparent:
            ; Conditionally fade Palette 2, Colors 1st
            Get16 de, wTemp_A.Palette_SetColor
            ld hl, wPalette_AnimBuffers.Background + 8*2
            ld bc, $0001
            call Palette_PaletteBufferFadeUniColor
            Set8 wPalette_VBlankReady, $01
            ret

    .CreatureLeft:
        ; Fade Palette 3, 4, 5, Colors 2nd-4th
        ld hl, wPalette_AnimBuffers.Background + 13*2
        ld bc, $0003
        call Palette_PaletteBufferFadeUniColor
        ld hl, wPalette_AnimBuffers.Background + 17*2
        ld bc, $0003
        call Palette_PaletteBufferFadeUniColor
        ld hl, wPalette_AnimBuffers.Background + 21*2
        ld bc, $0003
        call Palette_PaletteBufferFadeUniColor
        ld a, [wFightscene_CreatureRight_3rdPaletteTransparent]
        and a
        jr z, .LeftNonTransparent
        .LeftTransparent:
            Set8 wPalette_VBlankReady, $01
            ret
        .LeftNonTransparent:
            ; Conditionally fade Palette 5, Colors 1st
            Get16 de, wTemp_A.Palette_SetColor
            ld hl, wPalette_AnimBuffers.Background + 20*2
            ld bc, $0001
            call Palette_PaletteBufferFadeUniColor
            Set8 wPalette_VBlankReady, $01
            ret


Fightscene_CreaturePalFX_LoadPalette_UNUSED::
    ; Unused function
    ; Replaced by Cmd_Palette_CreatureLoad or Fightscene_LoadCreature
    ; Initially, the palettes of the creatures were saved 4 sets in 1 file
    ;   Fake example:
    ;       PAL0 AGOVO
    ;       PAL1 AGOVO
    ;       PAL2 AGOVO
    ;       PAL3 FUROK
    ;       PAL4 FUROK
    ;       PAL5 FUROK
    ;       PAL6 TUSK BWISP
    ;       PAL7 TUSK BWISP
    ;       PAL8 TUSK BWISP
    ;       PAL9 WEEBO
    ;       PAL10 WEEBO
    ;       PAL11 WEEBO
    ; So you would have the specify the offset within the target file (0, 1, 2, 3)
    ; But since we don't need to do this anymore, we don't need this function
    ;
    ; Inputs:
    ;   wTemp_8.Fightscene_CreatureID
    ;   wTemp_A.Palette_Offset
    PushROMBank
    ; Get the pointer to the palette
    Do_CallForeign Fightscene_GetCreaturePointers ; hl = wTemp_C.Fightscene_CreatureGraphicsPointer
    ld bc, oCreature_Table_Graphics_CombatPaletteAddress
    add hl, bc

    ; Calculate the offset within the .pal file and store it in c
    ; Offset = [3 Palettes i.e. 24 bytes] * Offset
    ld b, $00
    ld a, [wTemp_A.Palette_Offset]
    .Check0:
    cp b
    jr z, .Finally ; a = 0
    .Check1:
    cp $01
    jr nz, .Check2
    .Is1:
        ld a, 1*24
        jr .Finally
    .Check2:
    cp $02
    jr nz, .Check3
    .Is2
        ld a, 2*24
        jr z, .Finally
    .Check3:
    cp $03
    jr nz, .Unknown
    .Is3:
        ld a, 3*24
        jr z, .Finally
    .Unknown:
        xor a
    .Finally:
    ld c, a

    ; Get the reference to the .pal file, and offset by the offset
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    Set16_M wTemp_6.Palette_PaletteAddress, bc

    ; Save the bank
    pop hl
    inc hl
    Mov8 wTemp_7.Palette_PaletteBank, hl+

    call Fightscene00_LoadCreaturePalette
    PopROMBank
    ret


Fightscene_CreaturePalFX_ApplyArenaColor_UNUSED::
    ; An unused function
    ; Likely replaced by Fightscene_ArenaPalFX_SetCreaturePaletteArenaColor
    ; Sets the 2nd Color of the 3 palettes of the target creature to a target color
    ; Likely used to set the transparent arena color for the creature?
    xor a
    ld [wPalette_VBlankReady], a

    Get16 bc, wTemp_A.Palette_SetColor
    ld a, [wTemp_9.Palette_BattleFX_CreatureIsRight]
    and a
    jr nz, .CreatureRight
    .CreatureLeft:
        ; Set Color 2nd from Palettes 0-2
        ld hl, wPalette_AnimBuffers.Background
        ld e, 1
        ld a, $02
        call Palette_PaletteBufferSetColor
        Set8 wPalette_VBlankReady, $01
        ret
    .CreatureRight:
        ; Set Color 2nd from Palettes 3-5
        ld hl, wPalette_AnimBuffers.Background
        ld e, 13
        ld a, $02
        call Palette_PaletteBufferSetColor
        Set8 wPalette_VBlankReady, $01
    ret


Fightscene_CreaturePalFX_SwapRGB::
    ; Swaps R, G and B values of the palettes of the target creature
    ; Inputs:
    ;   wTemp_9.Palette_BattleFX_CreatureIsRight
    ;   wTemp_8.Palette_ColorSwapType - PALETTE_SWAP_RB, PALETTE_SWAP_BG, PALETTE_SWAP_RG_Bugged, PALETTE_SWAP_RGB
    xor a
    ld [wPalette_VBlankReady], a

    Get8 e, wTemp_8.Palette_ColorSwapType
    ld a, [wTemp_9.Palette_BattleFX_CreatureIsRight]
    and a
    jr nz, .CreatureRight
    .CreatureLeft:
        ; Apply the effect to the last 3 colors in palette 0, 1, 2
        ld hl, wPalette_AnimBuffers.Background + 1*2
        ld bc, $0003
        call Palette_PaletteBufferSwapRGB
        ld hl, wPalette_AnimBuffers.Background + 5*2
        ld bc, $0003
        call Palette_PaletteBufferSwapRGB
        ld hl, wPalette_AnimBuffers.Background + 9*2
        ld bc, $0003
        call Palette_PaletteBufferSwapRGB
        Set8 wPalette_VBlankReady, $01
        ret
    .CreatureRight:
        ; Apply the effect to the last 3 colors in palette 3, 4, 5
        ld hl, wPalette_AnimBuffers.Background + 13*2
        ld bc, $0003
        call Palette_PaletteBufferSwapRGB
        ld hl, wPalette_AnimBuffers.Background + 17*2
        ld bc, $0003
        call Palette_PaletteBufferSwapRGB
        ld hl, wPalette_AnimBuffers.Background + 21*2
        ld bc, $0003
        call Palette_PaletteBufferSwapRGB
        Set8 wPalette_VBlankReady, $01
        ret


Fightscene_CreaturePalFX_Invert::
    xor a
    ld [wPalette_VBlankReady], a

    Get8 e, wTemp_8.Palette_PackedInterval
    ld a, [wTemp_9.Palette_BattleFX_CreatureIsRight]
    and a
    jr nz, .CreatureRight
    .CreatureLeft:
        ; Apply the effect to the last 3 colors in palette 0, 1, 2
        ld hl, wPalette_AnimBuffers.Background + 1*2
        ld bc, $0003
        call Palette_PaletteBufferInvertColors
        ld hl, wPalette_AnimBuffers.Background + 5*2
        ld bc, $0003
        call Palette_PaletteBufferInvertColors
        ld hl, wPalette_AnimBuffers.Background + 9*2
        ld bc, $0003
        call Palette_PaletteBufferInvertColors
        ld a, [wFightscene_CreatureLeft_3rdPaletteTransparent]
        and a
        jr z, .LeftTransparent ; TODO - is there a bug here? Is the condition inversed?
        .LeftNonTransparent:
            Set8 wPalette_VBlankReady, $01
            ret
        .LeftTransparent:
            ; Conditionally apply the effect to the 1st color in palette 2
            Get16 de, wTemp_A.Palette_SetColor ; bug - unused (I guess Palette_PaletteBufferInvertColors used to take different parameters, or this line was accidentally copied from Fightscene_CreaturePalFX_FadeToColor)
            ld hl, wPalette_AnimBuffers.Background + 8*2
            ld bc, $0001
            call Palette_PaletteBufferInvertColors
            Set8 wPalette_VBlankReady, $01
            ret
    .CreatureRight:
        ; Apply the effect to the last 3 colors in palette 3, 4, 5
        ld hl, wPalette_AnimBuffers.Background + 13*2
        ld bc, $0003
        call Palette_PaletteBufferInvertColors
        ld hl, wPalette_AnimBuffers.Background + 17*2
        ld bc, $0003
        call Palette_PaletteBufferInvertColors
        ld hl, wPalette_AnimBuffers.Background + 21*2
        ld bc, $0003
        call Palette_PaletteBufferInvertColors
        ld a, [wFightscene_CreatureRight_3rdPaletteTransparent]
        and a
        jr z, .RightNonTransparent
        .RightTransparent
            Set8 wPalette_VBlankReady, $01
            ret
        .RightNonTransparent:
            ; Conditionally apply the effect to the 1st color in palette 5
            Get16 de, wTemp_A.Palette_SetColor ; bug - unused (I guess Palette_PaletteBufferInvertColors used to take different parameters, or this line was accidentally copied from Fightscene_CreaturePalFX_FadeToColor)
            ld hl, wPalette_AnimBuffers.Background + 20*2
            ld bc, $0001
            call Palette_PaletteBufferInvertColors
            Set8 wPalette_VBlankReady, $01
            ret


Fightscene_CreaturePalFX_LeftFadeMultiColor:
    ; Fade CreatureLeft's palettes from Anim to Base
    ; This function has multiple bugs, but the function is unused (effect only ever applied to CreatureRight)
    ; Inputs:
    ;   wTemp_B.Palette_FadeMagnitude
    ;   wFightscene_CreatureLeft_3rdPaletteTransparent
    xor a
    ld [wPalette_VBlankReady], a
    Mov8 wPalette_FadeMagnitudeCounter, wTemp_B.Palette_FadeMagnitude

    ; Fade Palette 0, Color 2nd-4th
    ld hl, wPalette_AnimBuffers.Background + 1*2
    ld bc, wPalette_BaseBuffers.Background + 1*2
    Set8 wTemp_4.Palette_ColorCounter, $03
    call Palette_PaletteBufferFadeMultiColor
    IF FIX_BUGS == 1
        ; The previous function sets wPalette_VBlankReady so we need to immediately reset it 
        xor a
        ld [wPalette_VBlankReady], a
    ENDC

    ; Bugged - Fade Palette 1, Color 3rd, 4th as well as Palette 2, Color 1st
    ; Should fade Palette 1, Color 2nd-4th
    IF FIX_BUGS == 0
        ld hl, wPalette_AnimBuffers.Background + 6*2
        ld bc, wPalette_BaseBuffers.Background + 6*2
    ELSE
        ld hl, wPalette_AnimBuffers.Background + 5*2
        ld bc, wPalette_BaseBuffers.Background + 5*2
    ENDC
    Set8 wTemp_4.Palette_ColorCounter, $03
    call Palette_PaletteBufferFadeMultiColor
    IF FIX_BUGS == 1
        xor a
        ld [wPalette_VBlankReady], a
    ENDC

    ; Fade only the non-transparent colors of the 3rd Palette
    ld a, [wFightscene_CreatureLeft_3rdPaletteTransparent]
    and a
    jr z, .NonTransparent
    .Transparent
        ; Fade Palette 2, Color 1st-4th
        ld hl, wPalette_AnimBuffers.Background + 8*2
        ld bc, wPalette_BaseBuffers.Background + 8*2
        Set8 wTemp_4.Palette_ColorCounter, $04
        call Palette_PaletteBufferFadeMultiColor
        jr .Finally

    .NonTransparent:
        ; Bugged - Fades Palette 3 (CreatureRight), Color 1st-3rd
        ; Should fade Palette 2, Color 2nd-4th
        IF FIX_BUGS == 0
        ld hl, wPalette_AnimBuffers.Background + 12*2
        ld bc, wPalette_BaseBuffers.Background + 12*2
        ELSE
            ld hl, wPalette_AnimBuffers.Background + 8*2
            ld bc, wPalette_BaseBuffers.Background + 8*2
        ENDC
        Set8 wTemp_4.Palette_ColorCounter, $03
        call Palette_PaletteBufferFadeMultiColor
    .Finally:
    Set8 wPalette_VBlankReady, $01 ; inefficiency - line not needed since the previous function already sets it to 1
    ret


Fightscene_CreaturePalFX_RightFadeMultiColor:
    ; Fade CreatureRight's palettes from Anim to Base
    ; Inputs:
    ;   wTemp_B.Palette_FadeMagnitude
    ;   wFightscene_CreatureRight_3rdPaletteTransparent
    xor a
    ld [wPalette_VBlankReady], a
    Mov8 wPalette_FadeMagnitudeCounter, wTemp_B.Palette_FadeMagnitude

    ; Fade Palette 3, Color 2nd-4th
    ld hl, wPalette_AnimBuffers.Background + 13*2
    ld bc, wPalette_BaseBuffers.Background + 13*2
    Set8 wTemp_4.Palette_ColorCounter, $03
    call Palette_PaletteBufferFadeMultiColor
    xor a
    ld [wPalette_VBlankReady], a

    ; Fade Palette 4, Color 2nd-4th
    ld hl, wPalette_AnimBuffers.Background + 17*2
    ld bc, wPalette_BaseBuffers.Background + 17*2
    Set8 wTemp_4.Palette_ColorCounter, $03
    call Palette_PaletteBufferFadeMultiColor
    xor a
    ld [wPalette_VBlankReady], a

    ; Fade only the non-transparent colors of the 5th Palette
    ld a, [wFightscene_CreatureRight_3rdPaletteTransparent]
    and a
    jr nz, .Transparent
    .NonTransparent:
        ; Fade Palette 5, Color 1st-4th
        ld hl, wPalette_AnimBuffers.Background + 20*2
        ld bc, wPalette_BaseBuffers.Background + 20*2
        Set8 wTemp_4.Palette_ColorCounter, $04
        call Palette_PaletteBufferFadeMultiColor
        ret
    .Transparent:
        ; Fade Palette 5, Color 2nd-4th
        ld hl, wPalette_AnimBuffers.Background + 21*2
        ld bc, wPalette_BaseBuffers.Background + 21*2
        Set8 wTemp_4.Palette_ColorCounter, $03
        call Palette_PaletteBufferFadeMultiColor
        ret