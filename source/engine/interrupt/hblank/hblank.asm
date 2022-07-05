
    ; $2A07
Interrupt_HBlank_Do::
    ; Upon interrupt, run [hInterrupt_HBlank_Func]
    push af
    push hl
    Get16FF_V hl, hInterrupt_HBlank_Func
    jp hl