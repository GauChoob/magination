;;;;;;;;;;;;;;;;;;;;
; wSound_SoundInit ;
;;;;;;;;;;;;;;;;;;;;

DEF SOUND_INIT_MAGICNUMBER EQU $55 ; Magic number to say that the sound system is initialized

;;;;;;;;;;;;;;;;;;;;;
; Control constants ;
;;;;;;;;;;;;;;;;;;;;;

; wSound_Control_SFX0, wSound_Control_SFX1, wSound_CurrentSong
DEF SOUND_NULL EQU $FF

; wSound_Control_StopSong
DEF SOUND_CONTROL_STOPSONG_STOP EQU %00000001
DEF SOUND_CONTROL_STOPSONG_PAUSE EQU %00000010
DEF SOUND_CONTROL_STOPSONG_RESUME EQU %00000100

; wSound_Control_StartSong
DEF SOUND_CONTROL_STARTSONG_START EQU 1

; wSound_Control_Fanfare
DEF SOUND_CONTROL_FANFARE_INIT_BIT EQU 1
DEF SOUND_CONTROL_FANFARE_INIT EQU %00000010 ; First frame
DEF SOUND_CONTROL_FANFARE_LOOP EQU %00000001 ; Waiting until the end of the song

; wSound_Control_Volume
DEF SOUND_CONTROL_VOLUME_FADEOUT EQU %00000001
DEF SOUND_CONTROL_VOLUME_FADEIN  EQU %00000010
DEF SOUND_CONTROL_VOLUME_SET     EQU %00000100
