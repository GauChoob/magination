
Fightscene_PalFX_FadeArenaToColor::
    ; Fades the Arena palettes (6 + 7) towards a Color by wTemp_B.Palette_FadeMagnitude
    ; Updates the tiles of the creatures as well to maintain transparency illusion
    ; Inputs:
    ;   wTemp_B.Palette_FadeMagnitude - magnitude of change
    ;   wTemp_A.Palette_SetColor - target Color
    xor a
    ld [wPalette_VBlankReady], a
    Mov8 wPalette_FadeMagnitudeCounter, wTemp_B.Palette_FadeMagnitude
    Palette_SetPackedInterval 6, 2
    call PaletteFX_FadeAnimToColor
    FGet16 bc, wPalette_AnimBuffers.Background + 2*4*6 ; 6th Palette, first Color
    Set16 wFightscene_ArenaColor, bc
    call Fightscene_PalFX_UpdateTransparencyWithNewArenaColor
    Set8 wPalette_VBlankReady, $01
    ret


Fightscene_PalFX_FadeArenaToBase::
    ; Fades the Arena palettes (6 + 7) towards a Color by wTemp_B.Palette_FadeMagnitude
    ; Updates the tiles of the creatures as well to maintain transparency illusion
    ; Inputs:
    ;   wTemp_B.Palette_FadeMagnitude - magnitude of change
    ;   wPalette_AnimBuffers.Background - target colors
    xor a
    ld [wPalette_VBlankReady], a
    Mov8 wPalette_FadeMagnitudeCounter, wTemp_B.Palette_FadeMagnitude
    Palette_SetPackedInterval 6, 2
    call PaletteFX_FadeAnimToBase
    FGet16 bc, wPalette_AnimBuffers.Background + 2*4*6 ; 6th Palette, first Color
    Set16 wFightscene_ArenaColor, bc
    call Fightscene_PalFX_UpdateTransparencyWithNewArenaColor
    Set8 wPalette_VBlankReady, $01
    ret


Fightscene_PalFX_SetCreaturePaletteArenaColor::
    ; Pastes a Color wFightscene_ArenaColor into the first color of each palette id
    ; To simulate a "transparency" color for the creatures
    ; CreatureLeft: Palettes 0 and 1 automatically take the palette color
    ;               Palette 2 optionally takes the color if the RGB value is FIGHTSCENE_TRANSPARENT_COLOR
    ; CreatureRight:Palettes 3 and 4 automatically take the palette color
    ;               Palette 5 optionally takes the color if the RGB value is FIGHTSCENE_TRANSPARENT_COLOR
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


Fightscene_PalFX_UpdateTransparencyWithNewArenaColor:
    ; When wFightscene_ArenaColor is changed, we need to apply the new color
    ; To the creature's palettes so that they maintain transparency
    ; Inputs:
    ;   wFightscene_ArenaColor
    ;   wFightscene_CreatureLeft_3rdPaletteTransparent
    ;   wFightscene_CreatureRight_3rdPaletteTransparent
    xor a
    ld [wPalette_VBlankReady], a

    ; Set CreatureLeft Pal 0+1 transparency
    Get16 bc, wFightscene_ArenaColor
    ld hl, wPalette_AnimBuffers.Background
    ld e, 0*4
    ld a, $02
    call Palette_PaletteBufferSetColor
    ; Set CreatureRight Pal 3+4 transparency
    ld hl, wPalette_AnimBuffers.Background
    ld e, 4*3
    ld a, $02
    call Palette_PaletteBufferSetColor
    ; Set Arena Pal 6 to the new wFightscene_ArenaColor
    ld hl, wPalette_AnimBuffers.Background
    ld e, 4*6
    ld a, $01
    call Palette_PaletteBufferSetColor
    ; Conditionally set CreatureLeft Pal 2 transparency
    ld a, [wFightscene_CreatureLeft_3rdPaletteTransparent]
    and a
    jr z, .Skip1
        ld hl, wPalette_AnimBuffers.Background
        ld e, 2*4
        ld a, $01
        call Palette_PaletteBufferSetColor
    .Skip1:
    ; Conditionally set CreatureRight Pal 5 transparency
    ld a, [wFightscene_CreatureRight_3rdPaletteTransparent]
    and a
    jr z, .Skip2
        ld hl, wPalette_AnimBuffers.Background
        ld e, 5*4
        ld a, $01
        call Palette_PaletteBufferSetColor
    .Skip2:
    Set8 wPalette_VBlankReady, $01
    ret


Fightscene_PalFX_SetOptionallyCreatureLastPaletteArenaColor::
    ; Pastes a Color wFightscene_ArenaColor into the first color of the third palette id
    ; To simulate a "transparency" color for the creatures
    ; CreatureLeft:  Palette 2 optionally takes the color if the RGB value is FIGHTSCENE_TRANSPARENT_COLOR
    ; CreatureRight: Palette 5 optionally takes the color if the RGB value is FIGHTSCENE_TRANSPARENT_COLOR
    ; Outputs:
    ;   Sets wFightscene_CreatureLeft_3rdPaletteTransparent and wFightscene_CreatureRight_3rdPaletteTransparent to non-zero if they are transparent
    push bc
    push hl
    xor a
    ld [wFightscene_CreatureLeft_3rdPaletteTransparent], a
    ld [wFightscene_CreatureRight_3rdPaletteTransparent], a

    ; Check Palette 2
    ld bc, FIGHTSCENE_TRANSPARENT_COLOR
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
    ld bc, FIGHTSCENE_TRANSPARENT_COLOR
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
        ld a, $01 ; Sequential palettes to set
        ld [wFightscene_CreatureRight_3rdPaletteTransparent], a
        call Palette_PaletteBufferSetColor
        ret
    .SkipPalette5:
    pop hl
    pop bc
    ret