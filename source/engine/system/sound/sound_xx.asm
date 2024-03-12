; Sound functions
; Sound_Init initializes all the sound variables
; Sound_SetupSoundVB should be run once per frame before VBlank to determine which Sound VBlank function should be run during VBlank
; Sound_Test is an unused function that can be used to test all the songs and sfx


Sound_Init::
    ; Initializes sound
    ; Inputs:
    ;   [$FF00+c] - After initialization, the ROM bank will be saved to this address whenever snd_Handle is called
    Set8 rSVBK, BANK("WRAM_MUSYX")  ;Bug - SwitchRAMBank is not used here
    xor a
    ld [wSound_Control_StartSong], a
    ld [wSound_SoundTestSong], a
    ld [wSound_SoundTestSFX], a
    ld [wSound_Control_StopSong], a
    ld [wSound_CurrentFanfare], a
    ld [wSound_Control_Fanfare], a
    ld [wSound_Control_Volume], a
    ld [wSound_SoundInit], a
    ld a, SOUND_NULL
    ld [wSound_Control_SFX0], a
    ld [wSound_Control_SFX1], a
    ld [wSound_CurrentSong], a
    ld a, $81 ;Gameboy Color game played on a Gameboy Color
    IF FIX_BUGS == 1
        ld c, $00 ; Make sure that we can do no harm (in case c is changed before calling this function)
    ENDC
    Do_CallForeign snd_Init ; MusyX sound initialization. Has an undocumented function where
                         ; the value of c is saved. Then, whenever MusyX loads a bank,
                         ; the loaded bank value is written to [$FF00+c]
                         ; By chance the value of c is $00 when this function is called, so
                         ; in this case, garbage is written to rP1 which is safe
    Set8 wSound_SoundInit, SOUND_INIT_MAGICNUMBER ; Magic number to say that sound is initialized (unused)
    Set16_M wSound_VBlankFunction, SoundVB_Init
    ret


Sound_SetupSoundVB::
    ; Updates wSound_VBlankFunction to the correct function
    ; This is called every cycle
    ;
    ; This function has a bug:
    ;   Requesting Sound_Request_PauseSong_Bugged will actually stop the song instead
    ;
    ; Inputs (in order of priority)
    ;   wSound_Control_StopSong
    ;   wSound_Control_StartSong
    ;   wSound_Control_SFX0
    ;   wSound_Control_SFX1
    ;   wSound_Control_Fanfare
    ;   wSound_Control_Volume
    ; See each individual function and variable for info
    .CheckStopSong:
    ld a, [wSound_Control_StopSong]
    and a
    jr z, .CheckStartSong
        .CheckStop_Bugged:
        ld a, [wSound_Control_StopSong]
        IF FIX_BUGS == 1
        and SOUND_CONTROL_STOPSONG_STOP
        ELSE
        and SOUND_CONTROL_STOPSONG_PAUSE ; BUG! This should be SOUND_CONTROL_STOPSONG_STOP, but the developer accidentally wrote SOUND_CONTROL_STOPSONG_PAUSE
                ; Therefore, when you do a pause request, it actually just stops the song
        ENDC
        jr z, .CheckPauseSong
            .StopSong:
                xor a
                ld [wSound_Control_StopSong], a
                Set8 wSound_CurrentSong, SOUND_NULL
                Set16_M wSound_VBlankFunction, SoundVB_StopSong
                ret
        .CheckPauseSong:
        ld a, [wSound_Control_StopSong]
        and SOUND_CONTROL_STOPSONG_PAUSE
        jr z, .CheckResumeSong
            .PauseSong:
                ;BUG! This section never triggers because CheckStop_Bugged accidentally steals the signal
                xor a
                ld [wSound_Control_StopSong], a
                Set16_M wSound_VBlankFunction, SoundVB_PauseSong
                ret
        .CheckResumeSong:
        ld a, [wSound_Control_StopSong]
        and SOUND_CONTROL_STOPSONG_RESUME
        jr z, .UnknownBit
            .ResumeSong:
                xor a
                ld [wSound_Control_StopSong], a
                Set16_M wSound_VBlankFunction, SoundVB_ResumeSong
                ret
        .UnknownBit:
            ; Fallback. Stop the song. This might have been added because the developer wasn't sure why the stop song request wasn't working.
            ; Due to the above bug, SOUND_CONTROL_STOPSONG_STOP will end up here 
            xor a
            ld [wSound_Control_StopSong], a
            Set16_M wSound_VBlankFunction, SoundVB_StopSong
            ret
    .CheckStartSong:
    ld a, [wSound_Control_StartSong]
    and a
    jr z, .CheckStartSFX0
        .StartSong:
            Set16_M wSound_VBlankFunction, SoundVB_PlaySong
            ret
    .CheckStartSFX0:
    ld a, [wSound_Control_SFX0]
    cp SOUND_NULL
    jr z, .CheckStartSFX1
        .StartSFX0:
            Set16_M wSound_VBlankFunction, SoundVB_PlaySFX0
            ret
    .CheckStartSFX1:
    ld a, [wSound_Control_SFX1]
    cp SOUND_NULL
    jr z, .CheckFanfare
        .StartSFX1:
            Set16_M wSound_VBlankFunction, SoundVB_PlaySFX1
            ret
    ; These must be the last in the list because they check every vblank for completion of their task
    .CheckFanfare:
    ld a, [wSound_Control_Fanfare]
    and a
    jr z, .CheckVolumeControl
        .CheckStartFanfare:
            bit SOUND_CONTROL_FANFARE_INIT_BIT, a
            jr z, .CheckPriorityVolumeControl
                dec a ; Change to SOUND_CONTROL_FANFARE_LOOP
                ld [wSound_Control_Fanfare], a
                Set16_M wSound_VBlankFunction, SoundVB_StartFanfare
                ret
        .CheckPriorityVolumeControl:
        ; We should run SoundVB_CheckFanfareIfDone only if there are no volume adjustments to make
        ld a, [wSound_Control_Volume]
        and a
        jr nz, .CheckVolumeControl
            .FanfareLoop:
                ; By exclusion, SOUND_CONTROL_FANFARE_LOOP is here
                Set16_M wSound_VBlankFunction, SoundVB_CheckFanfareIfDone
                ret
    .CheckVolumeControl:
    ; Should be last so that a new song can start before the volume is adjusted
    ld a, [wSound_Control_Volume]
    and a
    jr z, .DoNothing
        .CheckFadeout:
        ld a, [wSound_Control_Volume]
        and SOUND_CONTROL_VOLUME_FADEOUT
        jr z, .CheckFadein
            .Fadeout:
                    Set8 wSound_CurrentSong, SOUND_NULL
                    Set16_M wSound_VBlankFunction, SoundVB_FadeoutSong
                    ret
        .CheckFadein:
        ld a, [wSound_Control_Volume]
        and SOUND_CONTROL_VOLUME_FADEIN
        jr z, .FallbackSetVolume
            .Fadein:
                Set16_M wSound_VBlankFunction, SoundVB_FadeinSong
                ret
            .FallbackSetVolume:
                ; SOUND_CONTROL_VOLUME_SET and invalid bits
                Set16_M wSound_VBlankFunction, SoundVB_SetVolumeSong
                ret
    .DoNothing:
        Set16_M wSound_VBlankFunction, SoundVB_Nop
        ret


Sound_Test::
    ; Unused debug function for sound - add this at the start of Game_Loop if you want to enable the test
    ; Press A to play the songs in incrementing order by id
    ; Press B to play the sfx in incrementing order by id
    ; Press Start to test SFXID_EarthquakeEnd
    ; Press Select to test SFXID_Earthquake
    .CheckIncrementSong:
    ld a, [wCntDown]
    bit button_BIT_A, a
    jp z, .CheckSFXEarthquakeEnd
        .IncrementSong:
            ld a, [wSound_SoundTestSong]
            inc a
            cp MUSYX_NUM_SONGS
            jr nz, .Continue1
            .SongOverflow:
                ; Reset to 0 if at the last song
                xor a
            .Continue1:
            ld [wSound_SoundTestSong], a
            Sound_Request_StartSong [wSound_SoundTestSong]
            ret
    .CheckSFXEarthquakeEnd:
    ld a, [wCntDown]
    bit button_BIT_START, a
    jp z, .CheckSFXEarthquakeStart
        .SFXEarthquakeEnd:
            Sound_Request_StartSFX0 SFXID_EarthquakeEnd
            ret
    .CheckSFXEarthquakeStart:
    ld a, [wCntDown]
    bit button_BIT_SELECT, a
    jp z, .CheckIncrementSFX
        .SFXEarthquakeStart:
            Sound_Request_StartSFX0 SFXID_Earthquake
            ret
    .CheckIncrementSFX:
    ld a, [wCntDown]
    bit button_BIT_B, a
    ret z
        .IncrementSFX:
            Sound_Request_StartSFX0 [wSound_SoundTestSFX]
            ld a, [wSound_SoundTestSFX]
            inc a
            cp MUSYX_NUM_SFX
            jr nz, .Continue2
            .SFXOverflow:
                ; Reset to 0 if at the last sfx
                xor a
            .Continue2:
            ld [wSound_SoundTestSFX], a
            ret