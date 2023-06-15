
    ; $29AF
Interrupt_Timer_Do::
    ; This interrupt is only activated when the screen is disabled
    ; It is activated by Interrupt_Timer_Start (called by ScreenHide)
    ; It runs at a rate of 64 Hz (from Interrupt_Timer_Start - approximately the screen refresh rate) in order
    ; to continue playing sound
    SaveRegisters
    PushROMBank
    PushRAMBank

    Do_Sound_VBlank FORCE_SOUND_VBLANK_FUNCTION

    PopRAMBank
    PopROMBank
    RestoreRegisters
    reti

    ; $29F3
Interrupt_Timer_Start::
    ; Activates the Timer interrupt at a rate of 8192/128 = 64 interrupts per second
    ; This approximately is the same as the refresh rate, reducing the sound glitches when the screen is temporarily disabled, as
    ; the real VBlank is disabled while the screen is off
    ; I guess rTMA could be $77 instead of $80, which would change it to 59.8 interrupts per second
    Set8 rTMA, $80    ; Interrupt every 128 ticks
    Set8 rTAC, $04    ; 8192 Hz
    xor a
    ld [rIF], a       ; Disable pending interrupts
    Set8 rIE, $04     ; Timer interrupt enabled only
    ret