DEF SPRITE_END EQU -$80

MACRO INCSPRITE
    ; Includes a .spr file
    ; This Macro adds the EOF marker to the included binary file
    INCBIN \1
    db SPRITE_END
ENDM

MACRO BITMAP_Sprite
\1::
    INCBIN \2
DEF \1_TILES EQU (@ - \1)/$10
ENDM


MACRO Frame_Init
    ld a, LOW(wFrame_OAM) ; Since the OAM is $100 bytes long, this must always be $00
    ld [wFrame_OAMCursor], a
    ld [wFrame_OAMTop], a
    call Frame_ClearAll
ENDM