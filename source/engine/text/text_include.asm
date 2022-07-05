; Also see: source/includes/charmap.asm

; Frames per character on the screen
DEF Text_SPEED EQU $02

MACRO Text_Setup
    ; Text_Setup VBK, VRAMDest, TilemapDEST, Length
    ;
    ; Sets up the destination of a string to be copied onto the screen
    ; Handles constants as well as registers (assuming VRAMDest is de)
    Set8 wVBlank_DestVBK, (\1)

    ld a, LOW(\2)
    ld [wVBlank_DestAddress], a
    ld [wText_VBlankBase], a
    ld a, HIGH(\2)
    ld [wVBlank_DestAddress+1], a
    ld [wText_VBlankBase+1], a

    Set16_M wText_MapDest, \3

    IF "\2" != "de"
        ld a, LOW((\2)/$10) ;Tileid that refers to wText_VBlankBase address
    ELSE
        Srl16 de, 4 ; divide by $10
        ld a, e
    ENDC
    ld [wText_TileCurrent], a
    ld [wText_TileStart], a

    Set8 wText_Attributes, %10000111 + %00001000*(\1)

    IF "\2" != "de"
        Set8 wText_TileLimit, LOW((\2)/$10 + (\4)) ;The tileid indicated the end of the VRAM buffer
    ELSE
        ld a, e
        add a, (\4)
        ld [wText_TileLimit], a
    ENDC
ENDM

MACRO Text_Update
    ; This Macro just runs wText_HandlerFunc
    ; You should call this Macro once per frame
    ld hl, wText_HandlerFunc
    ECallHL
ENDM