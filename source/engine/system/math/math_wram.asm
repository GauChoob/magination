    ;ds $C92D - @
wX1::
    ; Used in Math_ConvertNumberToDigits, which creates 3 digits out of a number
    ; For example, wX100 = 4, wX10 = 3, wX1 = 9 would represent 439
    ; This is the singles place
    ds 1
    ;ds $C92E - @
wX10::
    ; This is the tens place
    ds 1
    ;ds $C92F - @
wX100::
    ; This is the hundreds place
    ds 1
    ;ds $C930 - @
wMath_PercentCount::
    ; Temporary variable used exclusively in Math_CalcPercent
    ds 1