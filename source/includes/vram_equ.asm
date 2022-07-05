; Instead of using absolute addresses, create a coordinate system so the addresses are more readable
; BACKGROUND_COORD_00_00 = $9800
; BACKGROUND_COORD_01_00 = $9820
; BACKGROUND_COORD_00_01 = $9C01
; BACKGROUND_COORD_11_13 = $9E33
FOR Y, $00, $13
    FOR X, $00, $14
        DEF BACKGROUND_COORD_{02X:Y}_{02X:X} EQU $9800 + Y*SCRN_VX_B + X
    ENDR
ENDR

; WINDOW_COORD_00_00 = $9C00
; WINDOW_COORD_01_00 = $9C20
; WINDOW_COORD_00_01 = $9C01
; WINDOW_COORD_11_13 = $9E33
FOR Y, $00, $13
    FOR X, $00, $14
        DEF WINDOW_COORD_{02X:Y}_{02X:X} EQU $9C00 + Y*SCRN_VX_B + X
    ENDR
ENDR

MACRO VRAM_TILEID_SPRITE
    DEF tileidmode = 1
ENDM
MACRO VRAM_TILEID_BG
    DEF tileidmode = 0
ENDM
MACRO VRAM_TILEID
    ; Given a VRAM tileid, will define
    ; both the tileid as well as the tile address
    ; The addressing method is set by VRAM_TILEID_SPRITE or VRAM_TILEID_BG
    ; \1 Base name
    ; \2 End name
    ; \3 Tileid
    DEF \1_TILEID_\2 EQU \3
    IF \3 < $80
        IF tileidmode == 1
            DEF \1_VRAM_\2 EQU $8000 + (\3 * $10)
        ELSE
            DEF \1_VRAM_\2 EQU $9000 + (\3 * $10)
        ENDC
    ELSE
        DEF \1_VRAM_\2 EQU $8000 + (\3 * $10)
    ENDC
ENDM