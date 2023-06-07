; A few Macros to generate the tables in the file:
MACRO Fightscene_FightFX_MoveTable_TableStart
    ; Set table label
    ; Keep track of the offset of the table
\1:
DEF offset = 0
REDEF FIGHTSCENE_FIGHTFX_MOVETABLE_LABELNAME EQUS "\1"
ENDM

MACRO Fightscene_FightFX_MoveTable_Instruction
       ;ΔX    ΔY  num(frames)-1
    db (\1), (\2), (\3 - 1)
    DEF offset += 3
ENDM

MACRO Fightscene_FightFX_MoveTable_LoopStart
    ; Save the current offset so we can GOTO here at LoopEnd
    DEF FIGHTSCENE_FIGHTFX_MOVETABLE_LOOPSTART EQU offset
ENDM

MACRO Fightscene_FightFX_MoveTable_LoopEnd
        ; Magic number identifying a loop
    db $00, $00, $00
        ; Jump to this position          Number of loops
    db FIGHTSCENE_FIGHTFX_MOVETABLE_LOOPSTART, \1
    DEF offset += 5
ENDM

MACRO Fightscene_FightFX_MoveTable_TableEnd
    DEF {FIGHTSCENE_FIGHTFX_MOVETABLE_LABELNAME}_Size EQU offset
ENDM


    Fightscene_FightFX_MoveTable_TableStart Fightscene_FightFX_MoveTable_BlowAway
        Fightscene_FightFX_MoveTable_Instruction 1, 2, 1
        Fightscene_FightFX_MoveTable_Instruction 2, -2, 1
        Fightscene_FightFX_MoveTable_Instruction 3, 1, 1
        Fightscene_FightFX_MoveTable_Instruction 3, -1, 1

        Fightscene_FightFX_MoveTable_Instruction 4, 0, 1
        Fightscene_FightFX_MoveTable_Instruction 5, 0, 1
        Fightscene_FightFX_MoveTable_Instruction 6, 0, 1
        Fightscene_FightFX_MoveTable_Instruction 7, 0, 1

        Fightscene_FightFX_MoveTable_Instruction 8, 0, 1
        Fightscene_FightFX_MoveTable_Instruction 10, 0, 1
        Fightscene_FightFX_MoveTable_Instruction 12, 0, 1
        Fightscene_FightFX_MoveTable_Instruction 14, 0, 1

        Fightscene_FightFX_MoveTable_Instruction 14, 0, 1
        Fightscene_FightFX_MoveTable_Instruction 16, 0, 1
        Fightscene_FightFX_MoveTable_Instruction 18, 0, 1
        Fightscene_FightFX_MoveTable_Instruction 20, 0, 1
    Fightscene_FightFX_MoveTable_TableEnd


    Fightscene_FightFX_MoveTable_TableStart Fightscene_FightFX_MoveTable_Recoil
        Fightscene_FightFX_MoveTable_Instruction 2, 0, 1
        Fightscene_FightFX_MoveTable_Instruction 4, 0, 2
        Fightscene_FightFX_MoveTable_Instruction 6, 0, 2
        Fightscene_FightFX_MoveTable_Instruction 1, 0, 3
        Fightscene_FightFX_MoveTable_Instruction -2, 0, 1
        Fightscene_FightFX_MoveTable_Instruction -4, 0, 2
        Fightscene_FightFX_MoveTable_Instruction -6, 0, 3
        Fightscene_FightFX_MoveTable_Instruction -1, 0, 3

        Fightscene_FightFX_MoveTable_Instruction 2, 0, 2
        Fightscene_FightFX_MoveTable_Instruction -2, 0, 2
        Fightscene_FightFX_MoveTable_Instruction 3, 0, 2
        Fightscene_FightFX_MoveTable_Instruction -3, 0, 2
        Fightscene_FightFX_MoveTable_Instruction 2, 0, 3
        Fightscene_FightFX_MoveTable_Instruction -2, 0, 3
        Fightscene_FightFX_MoveTable_Instruction 2, 0, 3
        Fightscene_FightFX_MoveTable_Instruction -2, 0, 3
    Fightscene_FightFX_MoveTable_TableEnd


    Fightscene_FightFX_MoveTable_TableStart Fightscene_FightFX_MoveTable_UNKTODO  ; Todo rename UNK
        Fightscene_FightFX_MoveTable_Instruction 2, 0, 1
        Fightscene_FightFX_MoveTable_Instruction 4, 0, 2
        Fightscene_FightFX_MoveTable_Instruction -2, 0, 1
        Fightscene_FightFX_MoveTable_Instruction -4, 0, 2

        Fightscene_FightFX_MoveTable_Instruction 2, 0, 2
        Fightscene_FightFX_MoveTable_Instruction -2, 0, 2
        Fightscene_FightFX_MoveTable_Instruction 3, 0, 2
        Fightscene_FightFX_MoveTable_Instruction -3, 0, 2
        Fightscene_FightFX_MoveTable_Instruction 2, 0, 2
        Fightscene_FightFX_MoveTable_Instruction -2, 0, 2
        Fightscene_FightFX_MoveTable_Instruction 2, 0, 2
        Fightscene_FightFX_MoveTable_Instruction -2, 0, 2
    Fightscene_FightFX_MoveTable_TableEnd


    Fightscene_FightFX_MoveTable_TableStart Fightscene_FightFX_MoveTable_Shake
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 1
        Fightscene_FightFX_MoveTable_Instruction -1, -1, 3
        Fightscene_FightFX_MoveTable_Instruction 2, 2, 3
        Fightscene_FightFX_MoveTable_Instruction -2, -2, 3
        Fightscene_FightFX_MoveTable_Instruction 3, 3, 3
        Fightscene_FightFX_MoveTable_Instruction -3, -3, 3
        Fightscene_FightFX_MoveTable_Instruction 4, 4, 3
        Fightscene_FightFX_MoveTable_Instruction -4, -4, 3
            ; Fightscene_FightFX_MoveTable_LoopStart  ; A loop that was going to loop 9 times, then once, then was removed
                Fightscene_FightFX_MoveTable_Instruction 1, 1, 2
                Fightscene_FightFX_MoveTable_Instruction -1, -1, 2
                Fightscene_FightFX_MoveTable_Instruction 2, 2, 2
                Fightscene_FightFX_MoveTable_Instruction -2, -2, 2
                Fightscene_FightFX_MoveTable_Instruction 3, 3, 2
                Fightscene_FightFX_MoveTable_Instruction -3, -3, 2
                Fightscene_FightFX_MoveTable_Instruction 4, 4, 2
                Fightscene_FightFX_MoveTable_Instruction -4, -4, 2
            ; Fightscene_FightFX_MoveTable_LoopEnd 1; 9
        Fightscene_FightFX_MoveTable_Instruction 3, 3, 3
        Fightscene_FightFX_MoveTable_Instruction -3, -3, 2
        Fightscene_FightFX_MoveTable_Instruction 4, 4, 3
        Fightscene_FightFX_MoveTable_Instruction -4, -4, 2
        Fightscene_FightFX_MoveTable_Instruction 3, 3, 3
        Fightscene_FightFX_MoveTable_Instruction -3, -3, 2
        Fightscene_FightFX_MoveTable_Instruction 4, 4, 3
        Fightscene_FightFX_MoveTable_Instruction -4, -4, 3

        Fightscene_FightFX_MoveTable_Instruction 3, 3, 3
        Fightscene_FightFX_MoveTable_Instruction -3, -3, 3
        Fightscene_FightFX_MoveTable_Instruction 4, 4, 3
        Fightscene_FightFX_MoveTable_Instruction -4, -4, 2
    Fightscene_FightFX_MoveTable_TableEnd
    

    Fightscene_FightFX_MoveTable_TableStart Fightscene_FightFX_MoveTable_Sink
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 1
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 15
        Fightscene_FightFX_MoveTable_Instruction 2, 1, 15
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 15
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 15
        Fightscene_FightFX_MoveTable_Instruction -2, 1, 15
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 15
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 15

        Fightscene_FightFX_MoveTable_Instruction -1, 1, 15
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 15
        Fightscene_FightFX_MoveTable_Instruction 2, 1, 15
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 15
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 15
        Fightscene_FightFX_MoveTable_Instruction -2, 1, 15
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 15
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 15

        Fightscene_FightFX_MoveTable_Instruction 2, 1, 13
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 13
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 13
        Fightscene_FightFX_MoveTable_Instruction -2, 1, 13
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 13
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 13
        Fightscene_FightFX_MoveTable_Instruction 2, 1, 13
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 13

        Fightscene_FightFX_MoveTable_Instruction 1, 1, 10
        Fightscene_FightFX_MoveTable_Instruction -2, 1, 10
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 10
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 10
        Fightscene_FightFX_MoveTable_Instruction 2, 1, 10
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 10
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 10
        Fightscene_FightFX_MoveTable_Instruction -2, 1, 10

        Fightscene_FightFX_MoveTable_Instruction 1, 1, 9
        Fightscene_FightFX_MoveTable_Instruction -2, 1, 9
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 9
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 9
        Fightscene_FightFX_MoveTable_Instruction 2, 1, 9
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 9
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 9
        Fightscene_FightFX_MoveTable_Instruction -2, 1, 9

        Fightscene_FightFX_MoveTable_Instruction 1, 1, 7
        Fightscene_FightFX_MoveTable_Instruction -2, 1, 7
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 7
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 7
        Fightscene_FightFX_MoveTable_Instruction 2, 1, 7
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 7
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 7
        Fightscene_FightFX_MoveTable_Instruction -2, 1, 7

        Fightscene_FightFX_MoveTable_Instruction 1, 1, 7
        Fightscene_FightFX_MoveTable_Instruction -1, 1, 7
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 7
        Fightscene_FightFX_MoveTable_Instruction 0, 1, 7
        Fightscene_FightFX_MoveTable_Instruction 0, 1, 7
        Fightscene_FightFX_MoveTable_Instruction 0, 1, 7
        Fightscene_FightFX_MoveTable_Instruction 0, 1, 7
        Fightscene_FightFX_MoveTable_Instruction 0, 1, 7
    Fightscene_FightFX_MoveTable_TableEnd
    

    Fightscene_FightFX_MoveTable_TableStart Fightscene_FightFX_MoveTable_Tremble
        Fightscene_FightFX_MoveTable_Instruction 1, 1, 1
        Fightscene_FightFX_MoveTable_Instruction -1, -1, 2
        Fightscene_FightFX_MoveTable_Instruction 0, 2, 2
        Fightscene_FightFX_MoveTable_Instruction 0, -2, 2
            Fightscene_FightFX_MoveTable_LoopStart
                Fightscene_FightFX_MoveTable_Instruction 1, 1, 2
                Fightscene_FightFX_MoveTable_Instruction -1, -1, 2
                Fightscene_FightFX_MoveTable_Instruction 1, 0, 2
                Fightscene_FightFX_MoveTable_Instruction -1, 0, 2
            Fightscene_FightFX_MoveTable_LoopEnd 10
    Fightscene_FightFX_MoveTable_TableEnd