; The size of the verification string
DEF Battery_VerificationString_LENGTH EQU $10


MACRO Battery_On
    ; Enables read/write to external ram
    ld a, $0A
    ld [rRAMG], a
ENDM

MACRO Battery_Off
    ; Disables read/write to external ram
    xor a
    ld [rRAMG], a
ENDM

MACRO Battery_SetBank
    ; The RAM is composed of 4 banks, which represent 2 save slots (saved game and current game)
    ; wBattery_ActiveSavefileBaseBank determines the base bank of the active savefile ($00 or $02)
    ; This function is used to access bank $00 or $01 relative to the save slot
    ; Inputs:
    ;   \1 = Name of the target bank
    ld a, [wBattery_ActiveSavefileBaseBank]
    add BANK(\1)
    ld [rRAMB], a
ENDM