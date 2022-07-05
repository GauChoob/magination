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

.Right::
    call snd_PauseSong
    ret
.Left::
    call snd_StopSong
    ret
.Up::
    call snd_ResumeSong
    ret
.Down::
    ld a, 6
    call snd_StartSong
    ret
.A
    call snd_Init
    ret
.B
    ;call snd_Unknown101
    ret
.Select
    ld bc,$100
    ld hl,$100
    call Call_030_40B0
    ret