
; source/rom/bank00.s

; RST and Interrupt vectors

    ; source/ROM/bank00.s
SECTION "ROM0_RST_00", ROM0[$0000]

    ; $0000
RST_00::
    ; Try to catch errors and reset the game
    jp Boot_SoftReset
    ; rst $08-$38 are unused

    ds $40 - @, 0

    ; $0040
SECTION "ROM0_Interrupt_VBlank", ROM0[$0040]
Interrupt_VBlank::
    jp Interrupt_VBlank_Do

    ds $48 - @, 0

    ; $0048
SECTION "ROM0_Interrupt_HBlank", ROM0[$0048]
Interrupt_HBlank::
    jp Interrupt_HBlank_Do

    ds $50 - @, 0

    ; $0050
SECTION "ROM0_Interrupt_Timer", ROM0[$0050]
Interrupt_Timer::
    jp Interrupt_Timer_Do

    ds $58 - @, 0

    ; $0058
SECTION "ROM0_Interrupt_Serial", ROM0[$0058]
Interrupt_Serial:: ;Unused
    reti

    ds $60 - @, 0

    ; $0060
SECTION "ROM0_Interrupt_Joypad", ROM0[$0060]
Interrupt_Joypad:: ;Unused
    reti

    ds $100 - @, 0