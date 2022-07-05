TESTING::
    ld a, $30
    ld [rROMB0], a
    ld a, [wPressedDownButtons]
    bit button_BIT_RIGHT, a
    call nz,.Right
    bit button_BIT_LEFT, a
    call nz,.Left
    bit button_BIT_UP, a
    call nz,.Up
    bit button_BIT_DOWN, a
    call nz,.Down
    bit button_BIT_A, a
    call nz,.A
    bit button_BIT_B, a
    call nz,.B
    bit button_BIT_SELECT, a
    call nz,.Select
    ret
    ret

.Right::
    ld a,$02
    ;call snd_SetSFXVolume
    ret
    ;ld a, $06
    ;call snd_StartSong
    ;ld a, $0F
    ;call snd_SetSongVolume
.Left::
    call $57A0
.Up::
    ld a,0
    ld [wMenu_MainMenu_NeedsScreenUpdate],a

    ret
.Down::
    ld a, [wMenu_MainMenu_NeedsScreenUpdate]
    ld b, $0F
    ld c, $01
    call $4F44
    ld [wCardscene_CardPalette], a
    ld a, [wMenu_MainMenu_NeedsScreenUpdate]
    ld e,a
    ld d,0
    inc a
    ld [wMenu_MainMenu_NeedsScreenUpdate], a
    call ConvertDEto3Digits


    ld a,[w3NumberDigit]
    ld b, a
    ld c, $10
    call MultiplybBycReturnhl
    ld de, BITMAP_Font_0
    add hl,de
    ld a,l
    ld [wSourceTileAddress],a
    ld a,h
    ld [wSourceTileAddress+1],a
    ld a,$20
    ld [wTargetTileAddress],a
    ld a,$90
    ld [wTargetTileAddress+1],a
    ld a,$1
    ld [wTargetTileBank],a
    ld a, $6
    ld [rROMB0], a
    call CopyTileToTarget

    ld a,[w3NumberDigit+1]
    ld b, a
    ld c, $10
    call MultiplybBycReturnhl
    ld de, BITMAP_Font_0
    add hl,de
    ld a,l
    ld [wSourceTileAddress],a
    ld a,h
    ld [wSourceTileAddress+1],a
    ld a,$10
    ld [wTargetTileAddress],a
    ld a,$90
    ld [wTargetTileAddress+1],a
    ld a,$1
    ld [wTargetTileBank],a
    ld a, $6
    ld [rROMB0], a
    call CopyTileToTarget

    ld a,[w3NumberDigit+2]
    ld b, a
    ld c, $10
    call MultiplybBycReturnhl
    ld de, BITMAP_Font_0
    add hl,de
    ld a,l
    ld [wSourceTileAddress],a
    ld a,h
    ld [wSourceTileAddress+1],a
    ld a,$00
    ld [wTargetTileAddress],a
    ld a,$90
    ld [wTargetTileAddress+1],a
    ld a,$1
    ld [wTargetTileBank],a
    ld a, $6
    ld [rROMB0], a
    call CopyTileToTarget


    ret
.A
    ret
.B
    ret
.Select
    ld a, [wCardscene_CardPalette]
    call Call_030_4FD8 ;Cancel effect
    ret