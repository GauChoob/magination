    ; To insert this into old rom, inject "call TESTING" at 01EB (CD 7E 38)

    ; $387E


if 1 == 0
; NEWROM PARAMETERS
vSound_Test_hl EQU $5997
vSound_Test_e EQU $07
vCallForeign_ EQU $0773
vwCntDown EQU $C932
vwSound_Control_StopSong EQU $C91F
vwSound_SoundInit EQU $C91D
vwSound_Control_SFX0 EQU $C921
STOP_COMMAND EQU $01

ELSE

; OLDROM PARAMETERS
vSound_Test_hl EQU $5A1F
vSound_Test_e EQU $01
vCallForeign_ EQU $060C
vwCntDown EQU $C77A
vwSound_Control_StopSong EQU $C768
vwSound_SoundInit EQU $C766
vwSound_Control_SFX0 EQU $C76B
STOP_COMMAND EQU $02

ENDC

TESTING:
    SaveRegisters

    ld hl, vSound_Test_hl
    ld e, vSound_Test_e
    call vCallForeign_ ;old rom - ld hl, $5A1F; ld e, $01

    ld a, [vwCntDown] ; old rom - C77A
    bit button_BIT_UP, a
    jr z, .SkipResetSound
        ld a, STOP_COMMAND
        ld [vwSound_Control_StopSong], a
    .SkipResetSound:

    ld a, [vwCntDown] ; old rom - C77A
    bit button_BIT_DOWN, a
    jr z, .SkipSFXReset
        ld a, $FF
        ld [vwSound_SoundInit], a ;hijack unused variable
    .SkipSFXReset:

    ld a, [vwCntDown] ; old rom - C77A
    bit button_BIT_LEFT, a
    jr z, .SkipSFX
        ld a, [vwSound_SoundInit]
        inc a
        ld [vwSound_SoundInit], a
        ld [vwSound_Control_SFX0], a
    .SkipSFX:

    RestoreRegisters
    ld a, [vwCntDown] ; old rom - C77A
    ret