Cmd_Sound_PlaySFX0::
    ; Starts an SFX. Can be used simultaneously with SFX1
    ; Arguments:
    ;   db SFX ID
    Script_ReadByteA
    Sound_Request_StartSFX0
    jp Script_Start


Cmd_Sound_PlaySFX1::
    ; Starts an SFX. Can be used simultaneously with SFX0
    ; Arguments:
    ;   db SFX ID
    Script_ReadByteA
    Sound_Request_StartSFX1
    jp Script_Start


Cmd_Sound_SongPause_Bugged::
    ; Supposed to pause a song, but due to a bug, stops a song instead
    ; This is used a few times in the code, but the song is sometimes immediately stopped after, but in any case never resumed
    Sound_Request_PauseSong_Bugged
    jp Script_Start


Cmd_Sound_SongResume::
    ; Resumes a song, Not very useful because PauseSong is bugged
    ; This command is unused
    Sound_Request_ResumeSong
    jp Script_Start


Cmd_Sound_SongStart::
    ; Starts a song based on ID
    ; Arguments:
    ;   db Song ID
    Script_ReadByteA
    Sound_Request_StartSong a
    jp Script_Start


Cmd_Sound_FadeOutSong::
    ; Fades a song out from current volume to 0 volume
    ; Arguments:
    ;   db Duration of fadeout in frames.
    ; Output:
    ;   The volume fades by 1 tick every (Duration//16+1) frames (From $0F to $00)
    Script_ReadByteA
    Sound_Request_FadeSong FADEOUT
    jp Script_Start


Cmd_Sound_FadeInSong::
    ; Fades a song in from current volume to max volume
    ; Arguments:
    ;   db Duration of fadein in frames
    ; Output:
    ;   The volume fades by 1 tick every (Duration//16+1) frames (From currentvol to $0F)
    ;   The duration will be approximately the specified duration if it starts at $00
    Script_ReadByteA
    Sound_Request_FadeSong FADEIN
    jp Script_Start


Cmd_Sound_SetSongVolume::
    ; Sets the song volume and pauses any fade effects
    ; Arguments:
    ;   db  Volume (0-F)
    Script_ReadByteA
    and $0F ; Clamp volume first
    Sound_Request_SetVolume
    jp Script_Start


Cmd_Sound_FanfareStart::
    ; A fanfare will pause the current song, play the song, then resume the old song
    ; This command is bugged so that the song will just stop if a fanfare is already playing (it accidentally gotos Cmd_Sound_SongStop)
    ; This command is also unused, but probably functional
    ; Arguments:
    ;   db Song ID (for the fanfare)
    Script_ReadByteA
    ; This macro is bugged:
    ; When there is no fanfare playing, it works as expected
    ; If there is already a fanfare playing, it is supposed to skip playing the new fanfare
    ; Instead, the jump to skip is misaligned, and so it will jump 1 byte too far, to the second byte of
    ; the command jp Script_Start, causing the pc to instead goto Cmd_Sound_SongStop
    Sound_Request_StartFanfare_Bugged a
    
    jp Script_Start      ; $0EBA = $C3, $66, $0A
    ; If a fanfare is already playing:
    ; ld h,[hl]   ; $66 ;luckily these 2 bytes don't crash anything
    ; ld a,[bc]   ; $0A


Cmd_Sound_SongStop::
    ; Stops the current song
    Sound_Request_StopSong
    jp Script_Start