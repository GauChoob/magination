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