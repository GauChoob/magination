MACRO Interrupt_Timer_Init
    ; Initializes the timer
    ; This is not useful because whenever we actually want to use the timer, we use the function Interrupt_Timer_Start which triggers at a rate of 64 Hz (doublespeed)
    ; Also there is a bug - rTMA is not initialized to the same value here as in Interrupt_Timer_Start
    ; This is probably because the developer miscalculated the frequency assuming single speed instead of double speed.
    ; The interrupt trigger rate in single speed from this function is 63 Hz, whereas the trigger rate in Interrupt_Timer_Start is 64 Hz, so it seems like they were aiming for the same rate
    Set8 rTMA, $BF       ; Overflow every 65 ticks
    Set8 rTAC, $04       ; 4096 Hz (8192 Hz after double speed)
    ; -> TIMA overflows at a rate of 63 Hz before double speed, or 126 Hz after double speed
ENDM