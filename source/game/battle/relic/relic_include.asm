
DEF Relic_ROWSIZE EQU $13
DEF Relic_NAMESIZE EQU $0D

MACRO Relic_Struct

    DEF \1 RB 1

    .\1_Cmd0:
        dw \2
    .\1_Cmd1:
        dw \3
    .\1_Cmd2:
        dw \4
    .\1_Name:
        db \5
        ASSERT STRLEN(\5) == Relic_NAMESIZE
ENDM