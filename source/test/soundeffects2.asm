;MusicPro

TESTING::
    ld a, [wPressedDownButtons]
    bit button_BIT_RIGHT, a
    jr nz,.Right
    bit button_BIT_LEFT, a
    jr nz,.Left
    bit button_BIT_UP, a
    jr nz,.Up
    bit button_BIT_DOWN, a
    jr nz,.Down
    bit button_BIT_A, a
    jr nz,.A
    bit button_BIT_B, a
    jr nz,.B
    bit button_BIT_SELECT, a
    jr nz,.Select
    ret

.Right::
    call IncA
    call Draw
    call PlaySong
    ret
.Left::
    call DecA
    call Draw
    call PlaySong
    ret
.Up::
    call IncA
    call Draw
    call PlaySFX
    ret
.Down::
    call DecA
    call Draw
    call PlaySFX
    ret

.A
    ld a, $30
    ld [rROMB0], a
    ld bc,$180
    call snd_ChangeSongSpeed
    ret
.B
    ld a, $30
    ld [rROMB0], a
    call snd_StopSong
    ret
.Select
    ret

IncA::
    ld a, [wMenu_MainMenu_NeedsScreenUpdate]
    inc a
    ld [wMenu_MainMenu_NeedsScreenUpdate], a
    ret
DecA::
    ld a, [wMenu_MainMenu_NeedsScreenUpdate]
    dec a
    ld [wMenu_MainMenu_NeedsScreenUpdate], a
    ret


PlaySong::
    ;input a
    ld a, $30
    ld [rROMB0], a
    ld a, [wMenu_MainMenu_NeedsScreenUpdate]
    call snd_StartSong
    ret

PlaySFX::
    ;input a
    ld a, $30
    ld [rROMB0], a
    ld a, [wMenu_MainMenu_NeedsScreenUpdate]
    ld b, $0F
    ld c, $01
    call $4F44
    ret

Draw::
    ld a, [wMenu_MainMenu_NeedsScreenUpdate]
    ld e,a
    ld d,0
    call ConvertDEto3Digits

    ld hl,w3NumberDigit
    ld de,$0320
.Loop
    ld a,[hl]
    inc hl
    push hl
    push de
    ld b, a
    ld c, $10
    call MultiplybBycReturnhl
    ld de, BITMAP_Font_0
    add hl,de
    ld a,l
    ld [wSourceTileAddress],a
    ld a,h
    ld [wSourceTileAddress+1],a
    pop de
    ld a,e
    push de
    ld [wTargetTileAddress],a
    ld a,$90
    ld [wTargetTileAddress+1],a
    ld a,$1
    ld [wTargetTileBank],a
    ld a, $6
    ld [rROMB0], a
    call CopyTileToTarget
    pop de
    pop hl
    ld a,e
    sub a,$10
    ld e,a
    dec d
    jp nz,.Loop
    ret