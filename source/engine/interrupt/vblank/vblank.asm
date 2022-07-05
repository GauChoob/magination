
    ; $2A10
Interrupt_VBlank_Do::
    ; Upon interrupt, run [wVBlank_HandlerFunc]
    ; Also, update the buttons currently pressed (wCnt1, wCntDown, wCntUp)
    ; Resets hInterrupt_VBlank_Control

    SaveRegisters
    PushRAMBank
    PushROMBank

    Get16 hl, wVBlank_HandlerFunc
    call CallHL

    XCall SystemXX_UpdatePressedButtons

    xor a
    ldh [hInterrupt_VBlank_Control], a

    ei

    PopROMBank
    PopRAMBank
    RestoreRegisters
    reti

    ; $2A49
Interrupt_VBlank_Handler_Standard::
    ; Standard Vblank behaviour
    ; Graphics:
    ;   Bit 0: Update graphics
    ;   Bit 1: Do wVBlank_Func
    ; Sound:
    ;   Bit 2: Do wSound_VBlankFunction
    ;   Do snd_Handle
    Do_Graphics_VBlank
    Do_VBlank_Function
    Do_Sound_VBlank
    ret