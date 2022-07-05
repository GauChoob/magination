; todo - assign enums to the vars

; The Sound_Request macros that can be inserted pretty much anywhere in the code. They will request a sound change which will be processed in the next VBlank

MACRO Sound_Request_StartSong
    ; Will request a song to be played
    ; If the song is already playing, it will not reset the song
    ; Sets the volume to max
    ; Inputs:
    ;   \1 = songid
    push de
    ld a, \1
    ld e, a
    ld a, [wSound_CurrentSong]
    cp e 
    jr z, .Continue\@
    .DifferentSong\@:
        ; Only start the song if the song is different
        Set8 wSound_CurrentSong, e
        Set8 wSound_Control_StartSong, SOUND_CONTROL_STARTSONG_START
    .Continue\@:
    xor a
    ld [wSound_Control_Volume], a
    Set8 wSound_VolumeSong, $0F
    pop de
ENDM

MACRO Sound_Request_ForceStartSong
    ; Will request a song to be played
    ; It will force the song to be reset, even if the song is already playing
    ; Inputs:
    ;   \1 = songid
    Set8 wSound_CurrentSong, \1
    Set8 wSound_Control_StartSong, SOUND_CONTROL_STARTSONG_START
ENDM

MACRO Sound_Request_StartFanfare_Bugged
    ; Sets an instruction to pause the current song and play a fanfare
    ; If a fanfare is already playing, it is supposed to not do anything. However, instead it triggers a bug.
    ; However, this macro has a bug - see below
    ; Inputs:
    ;   \1 = Songid
    ld e, \1
    ld a, [wSound_Control_Fanfare]
    and a
    IF FIX_BUGS == 1
    jr nz, .SkipFanfareBugged\@
    ELSE
    jr nz, .SkipFanfareBugged\@+1 ; Bugged jump
    ENDC
                                ; If a fanfare is already playing, the code is supposed to jump to the end
                                ; However, the label is bugged and so the frame becomes misaligned
        Set8 wSound_Control_Fanfare, $02
        Set8 wSound_CurrentFanfare, e
    .SkipFanfareBugged\@:
ENDM

MACRO Sound_Request_StartSFX0
    ; Will request an SFX. Can be played simultaneously with SFX1
    ; Inputs:
    ;   \1 - sfxid. If no argument is provided, then register a will be used instead
    IF _NARG == 1
        ld a, \1
    ENDC
    ld [wSound_Control_SFX0], a
ENDM

MACRO Sound_Request_StartSFX1
    ; Will request an SFX. Can be played simultaneously with SFX0
    ; Inputs:
    ;   \1 - sfxid. If no argument is provided, then register a will be used instead
    IF _NARG == 1
        ld a, \1
    ENDC
    ld [wSound_Control_SFX1], a
ENDM

MACRO Sound_Request_StopSong
    ; Sets an instruction to stop the song
    Set8 wSound_Control_StopSong, SOUND_CONTROL_STOPSONG_STOP
ENDM

MACRO Sound_Request_PauseSong_Bugged
    ; Sets an instruction to pause the song
    ; Unfortunately, the handler function is bugged and checks the wrong bit, so this will instead stop the song
    Set8 wSound_Control_StopSong, SOUND_CONTROL_STOPSONG_PAUSE
ENDM

MACRO Sound_Request_ResumeSong
    ; Sets an instruction to resume the song. Not very useful for now as Sound_Request_PauseSong_Bugged is bugged
    Set8 wSound_Control_StopSong, SOUND_CONTROL_STOPSONG_RESUME
ENDM

MACRO Sound_Request_FadeSong
    ; Requests a fade in or fade out
    ; a = $10 to $F0: the number of frames in which to complete the fadeout
    ; \1 = FADEOUT or FADEIN

    ; Divide a by 16. This is the number of frames per decrement of volume
    swap a
    and $0F
    inc a
    ld [wSound_FaderSongDelta], a

    xor a
    ld [wSound_FaderSongCount], a
    IF(STRCMP("FADEIN","\1")==0)
        ; If fading in, start from a volume of 0
        ; If fading out, keep the current volume (usually $0F)
        ld [wSound_VolumeSong], a
    ENDC
    Set8 wSound_Control_Volume, SOUND_CONTROL_VOLUME_\1
ENDM

MACRO Sound_Request_SetVolume
    ; Set the volume
    ; Inputs:
    ;   \1 - volume ($00 to $0F). If no argument is provided, then register a will be used instead
    IF _NARG == 1
        ld a, \1
    ENDC
    ld [wSound_VolumeSong], a
    xor a
    ld [wSound_FaderSongCount], a
    ld [wSound_FaderSongDelta], a
    Set8 wSound_Control_Volume, SOUND_CONTROL_VOLUME_SET
ENDM

; Helper song push/pop functions that are used to play fanfares

MACRO Sound_PushSong
    ; Pauses the song and stores the song data into a buffer
    XCall snd_PauseSong
    ld c, wSound_MusyXStateBuffer.End - wSound_MusyXStateBuffer
    ld hl, wSound_MusyXStateBuffer
    XCall snd_SaveState ; Could be just call since the current bank is open
ENDM

MACRO Sound_PopSong
    ; Retrieves the song data from buffer, and then resumes the song
    ld c, wSound_MusyXStateBuffer.End - wSound_MusyXStateBuffer
    ld hl, wSound_MusyXStateBuffer
    XCall snd_RestoreState
    XCall snd_ResumeSong ; Could be just call since the current bank is open
ENDM

; The macro that must be called once per frame in order to run the Sound VBlank functions

MACRO Do_Sound_VBlank
    ; Process sound during VBlank
    ; 1) Run the sound vblank function if the bit is set
    ; 2) Run MusyX's snd_Handle
    ; If you specify an argument value, then hInterrupt_VBlank_Control won't be checked and the sound vblank function will be run no matter what
    SwitchROMBank BANK("MUSYX")
    SwitchRAMBank BANK("WRAM_MUSYX")
    IF _NARG == 0
    ldh a, [hInterrupt_VBlank_Control]
    bit INTERRUPT_VBLANK_SOUND_BIT, a
    jr z, .Continue\@
    ENDC
    .DoSoundVBFunction\@:
        Get16 hl, wSound_VBlankFunction
        call CallHL
    .Continue\@:
    XCall snd_Handle
ENDM
