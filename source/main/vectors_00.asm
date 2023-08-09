SECTION "RST_00", ROM0[$0000]


RST_00::
    ; Reboot (unused)
    jp Boot_SoftReset

    ; rst $08-$38 are unused
    ds $40 - @, 0


SECTION "Interrupt_VBlank", ROM0[$0040]
Interrupt_VBlank::
    jp Interrupt_VBlank_Do

    ds $48 - @, 0


SECTION "Interrupt_HBlank", ROM0[$0048]
Interrupt_HBlank::
    jp Interrupt_HBlank_Do

    ds $50 - @, 0


SECTION "Interrupt_Timer", ROM0[$0050]
Interrupt_Timer::
    jp Interrupt_Timer_Do

    ds $58 - @, 0


SECTION "Interrupt_Serial", ROM0[$0058]
Interrupt_Serial::
    ; Unused
    reti

    ds $60 - @, 0


SECTION "Interrupt_Joypad", ROM0[$0060]
Interrupt_Joypad::
    ; Unused
    reti

    ds $100 - @, 0