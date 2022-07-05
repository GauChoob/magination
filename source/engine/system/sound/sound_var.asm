
    ;ds $C8C9 - @
wSound_MusyXStateBuffer::
    ds $52 ; Value from snd_GetStateSize
    ASSERT $52 == wSnd_SequencerStateEnd - wSnd_SequencerStateStart
    .End:
    ;ds $C91B - @
wSound_VBlankFunction::
    ; Points to the SoundVB function that should be called in Vblank.
    ds 2
    ;ds $C91D - @
wSound_SoundInit::
    ; After SoundInit is called, set to a magic number of $55 to confirm initialized
    ; Never checked thereafter
    ds 1
    ;ds $C91E - @
wSound_Control_StartSong::
    ; Non-zero -> SoundVB_PlaySong
    ds 1
    ;ds $C91F - @
wSound_Control_StopSong::
    ; bit 0 -> SoundVB_StopSong - BUGGED but works anyways. It checks incorrectly and falls back to the bit3-7 check, so actually it works ok
    ; bit 1 -> SoundVB_PauseSong - BUGGED doesn't work. It accidentally does SoundVB_StopSong instead
    ; bit 2 -> SoundVB_ResumeSong - works but not useful because bit 1 is bugged
    ; bit 3-7 -> fallsback to SoundVB_StopSong
    ds 1
    ;ds $C920 - @
wSound_CurrentSong::
    ; ID of song currently playing
    ds 1
    ;ds $C921 - @
wSound_Control_SFX0::
    ; Channel 1 SFXs
    ; SOUND_NULL if no command
    ; Otherwise ID of the desired SFX to play -> SoundVB_PlaySFX1
    ds 1
    ;ds $C922 - @
wSound_Control_SFX1::
    ; Channel 2 SFXs
    ; SOUND_NULL if no command
    ; Otherwise ID of the desired SFX to play -> SoundVB_PlaySFX2
    ds 1
    ;ds $C923 - @
wSound_MapSong::
    ; todo - verify that this var's name and function is appropriate
    ; This song stores the song of the current map, so that a battle song can be played,
    ; and then the current map's song restored.
    ds 1
    ;ds $C924 - @
wSound_Control_Fanfare::
    ; bit 1 = Fanfare to start -> SoundVB_StartFanfare
    ; bit 0 = Fanfare playing -> SoundVB_CheckFanfareIfDone
    ; bit 2-7 = unused (fallback to bit 0 behaviour)
    ds 1
    ;ds $C925 - @
wSound_CurrentFanfare::
    ; SongID of the current fanfare
    ds 1
    ;ds $C926 - @
wSound_SoundTestSong::
    ; Debug variable unused in normal game. Contains the playing SONGID
    ds 1
    ;ds $C927 - @
wSound_SoundTestSFX::
    ; Debug variable unused in normal game. Contains the playing SFXID
    ds 1
    ;ds $C928 - @
wSound_FaderSongCount::
    ; Counter for the number of cycles for wSound_FaderSongDelta
    ds 1
    ;ds $C929 - @
wSound_FaderSongDelta::
    ; The number of timer cycles between each volume change of 1 (volume goes from $F->0)
    ds 1
    ;ds $C92A - @
wSound_Control_Volume::
    ; bit 0         SoundVB_FadeoutSong
    ; bit 1         SoundVB_FadeinSong
    ; bit 2         SoundVB_SetVolumeSong
    ; bit 3-7       unused (fallback to SoundVB_SetVolumeSong)
    ; When the fade is done, or when the volume is set, everything is set to 0
    ds 1
    ;ds $C92B - @
wSound_VolumeSFX::
    ; Volume is $00-$0F
    ds 1
    ;ds $C92C - @
wSound_VolumeSong::
    ; Volume is $00-$0F
    ds 1