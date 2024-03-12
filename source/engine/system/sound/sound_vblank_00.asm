; Sound VBlank functions
; The function Sound_SetupSoundVB should be called every frame to determine which VBlank function should run
; The Macro Do_Sound_VBlank should be called once per frame to actually run the VBlank functions

; Before any snd call, the "MUSYX" ROM bank and the "WARM_MUSYX" WRAM bank are assumed to have been loaded
; None of these VBlank functions set the bank - it is assumed that these functions are called via the macro Do_Sound_VBlank
; which sets the banks appropriately


SoundVB_SetSongVolume:
    ; private function
    ; The public function is SoundVB_SetVolumeSong
    ld a, [wSound_VolumeSong]
    call snd_SetSongVolume
    ret


SoundVB_Init::
    ; Sets everything to max volume
    ld a, $07
    call snd_SetMasterVolume
    ld a, $0F
    ld [wSound_VolumeSong], a
    call snd_SetSongVolume
    ld a, $0F
    ld [wSound_VolumeSFX], a
    call snd_SetSFXVolume
    ret


SoundVB_Nop::
    ; Do nothing
    ret


SoundVB_PlaySong::
    ; Changes the song to wSound_CurrentSong
    xor a
    ld [wSound_Control_StartSong], a
    ld [wSound_Control_Fanfare], a
    call snd_StopSong
    ld a, [wSound_CurrentSong]
    call snd_StartSong
    call SoundVB_SetSongVolume
    ret


SoundVB_FadeoutSong::
    ; Fades the music out then stops the song
    ; Inputs:
    ;   wSound_FaderSongDelta - the number of cycles between each delta volume
    ;   wSound_FaderSongCount - counts the number of cycles
    ;   wSound_VolumeSong - current volume
    ; Outputs:
    ;   wSound_VolumeSong - new volume
    Get8 e, wSound_FaderSongDelta
    ld a, [wSound_FaderSongCount]
    inc a
    ld [wSound_FaderSongCount], a
    cp e   ;Adjust the volume every wSound_FaderSongDelta cycles
    jp nz, .UpdateVolume ; Skip adjusting if the counter hasn't hit Delta
        xor a 
        ld [wSound_FaderSongCount], a
        ld a, [wSound_VolumeSong]
        and a
        jp z, .FadeDone ;If volume is 0, turn off song
        dec a
        jp z, .FadeDone
        ld [wSound_VolumeSong], a ; Or else update volume
    .UpdateVolume:
    call SoundVB_SetSongVolume
    ret

    .FadeDone:
        Set8 wSound_CurrentSong, SOUND_NULL ; This is also set to SOUND_NULL in Sound_SetupSoundVB, so unnecessary line
        xor a
        ld [wSound_VolumeSong], a
        ld [wSound_Control_Volume], a
        Set8 wSound_FaderSongDelta, $01
        call SoundVB_SetSongVolume
        call snd_StopSong
        ret


SoundVB_FadeinSong::
    ; Fades the music in to max volume
    ; Inputs:
    ;   wSound_FaderSongDelta - the number of cycles between each delta volume
    ;   wSound_FaderSongCount - counts the number of cycles
    ;   wSound_VolumeSong - current volume
    ; Outputs:
    ;   wSound_VolumeSong - new volume
    Get8 e, wSound_FaderSongDelta
    ld a, [wSound_FaderSongCount]
    inc a
    ld [wSound_FaderSongCount], a
    cp e
    jp nz, .UpdateVolume ;Adjust the volume every wSound_FaderSongDelta cycles
        xor a
        ld [wSound_FaderSongCount], a
        ld a, [wSound_VolumeSong]
        inc a
        cp $0F
        jp z, .FadeDone
        ld [wSound_VolumeSong], a
    .UpdateVolume:
    call SoundVB_SetSongVolume
    ret

    .FadeDone:
        ld [wSound_VolumeSong], a
        xor a
        ld [wSound_Control_Volume], a
        Set8 wSound_FaderSongDelta, $01
        call SoundVB_SetSongVolume
        ret


SoundVB_SetVolumeSong::
    ; Sets the song's volume
    ; Input:
    ;   wSound_VolumeSong ($00-$0F)
    call SoundVB_SetSongVolume
    xor a
    ld [wSound_Control_Volume], a ;Disable fade/volume effects
    ret


SoundVB_StopSong::
    ; Stops the song
    Set8 wSound_CurrentSong, SOUND_NULL
    call snd_StopSong
    ret


SoundVB_PauseSong::
    ; Pauses the song.
    ; Bug - this function is inaccessible due to a bug in Sound_SetupSoundVB
    ; Instead of this being triggered, SoundVB_StopSong is requested instead
    call snd_PauseSong
    ret


SoundVB_ResumeSong::
    ; Resumes the song. Not useful for now as SoundVB_PauseSong is not accessible.
    call snd_ResumeSong
    ret


SoundVB_PlaySFX0::
    ; Plays SFXs (should be for the sfxids that are intended for Audio Channel 1)
    ld a, [wSound_Control_SFX0]
    ld b, $0F ;Volume max
    ld c, $01 ;Position center
    call snd_StartSFX
    Set8 wSound_Control_SFX0, SOUND_NULL
    ret


SoundVB_PlaySFX1::
    ; Plays SFXs (should be for the sfxids that are intended for Audio Channel 2)
    ld a, [wSound_Control_SFX1]
    ld b, $0F ;Volume max
    ld c, $01 ;Position center
    call snd_StartSFX
    Set8 wSound_Control_SFX1, SOUND_NULL
    ret


SoundVB_StartFanfare::
    ; A fanfare is a short song that plays over a usual song. The active song
    ; will be paused, the fanfare will play, and then the old song will resume.
    ; There are 4 fanfares. 2 examples are
    ;   1) Obtaining a key item
    ;   2) Battle Victory
    Sound_PushSong
    ld a, [wSound_CurrentFanfare]
    call snd_StartSong
    ret


SoundVB_CheckFanfareIfDone::
    ; Waits for fanfare to be finished
    ; Then restores the old song
    call snd_SongActive
    jr nz, .Continue
    .FanfareFinished:
        ld [wSound_Control_Fanfare], a ;Set to 0 to stop checking
        Sound_PopSong
    .Continue:
    ret