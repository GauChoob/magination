MACRO INCSPRITE
    ; Includes a .spr file
    ; This Macro adds the EOF marker to the included binary file
    INCBIN \1
    OAM_END
ENDM

MACRO OAM_End
    ; Indicates the end of a list of OAM entries (.oam.asm / OAM_)
    ; Used by Cmd_Frame_SpriteDraw and the other Cmd_Frame
    db -$80
ENDM