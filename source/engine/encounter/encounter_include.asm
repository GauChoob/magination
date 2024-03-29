; When set to this value, a new Countdown will be selected from the encounter table
DEF Encounter_Countdown_UNINITIALIZED EQU $FF

MACRO Encounter_RandomDelayTable
    ; Defines an encounter table with 16 random lookup values
    ; Max value: 1016 frames (16.933 seconds)
    ; If you specify 1020 frames (17 seconds), the value is $FF which
    ; will be incorrectly interpreted as Encounter_Countdown_UNINITIALIZED
    ; and so this value will be skipped and a new value will be chosen
    REPT _NARG
        db \1/4
        SHIFT
    ENDR
ENDM