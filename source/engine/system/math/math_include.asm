MACRO Math_DigitsToStringHL
    ; Store the values of wX100, wX10, wX1 into a string at hl
    ld a, [wX100]
    add "0"
    ld [hl+], a
    ld a, [wX10]
    add "0"
    ld [hl+], a
    ld a, [wX1]
    add "0"
    ld [hl+], a
ENDM

MACRO Math_Format3Digits
    ; Store the values of wX100, wX10, wX1, "🔊" into wram
    ; Inputs:
    ;   de = number
    ;   \1 = destination
    call Math_ConvertNumberToDigits
    ld a, [wX100]
    add "0"
    ld [\1 + 0], a
    ld a, [wX10]
    add "0"
    ld [\1 + 1], a
    ld a, [wX1]
    add "0"
    ld [\1 + 2], a
    Set8 (\1 + 3), "🔊"
ENDM

MACRO Math_Format2Digits
    ; Store the values of wX10, wX1, "🔊" into wram
    ; Inputs:
    ;   de = number
    ;   \1 = destination
    call Math_ConvertNumberToDigits
    ld a, [wX10]
    add "0"
    ld [\1 + 0], a
    ld a, [wX1]
    add "0"
    ld [\1 + 1], a
    Set8 (\1 + 2), "🔊"
ENDM