; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $035", ROMX[$4000], BANK[$35]

    ld a, [hl+]
    inc l
    dec hl
    add hl, hl
    ld a, [hl+]
    inc l
    dec hl
    add hl, hl
    nop
    nop
    jr z, jr_035_403B

    nop
    dec l
    jr nc, jr_035_4010

jr_035_4010:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_035_403B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    inc l
    nop
    nop
    nop
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    nop
    nop
    daa
    nop
    ld h, $31
    nop
    ld b, $00
    ld [hl], $00
    cp [hl]
    nop
    ld c, $00
    jr jr_035_408F

jr_035_408F:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    rra

jr_035_4096:
    jr nz, jr_035_4096

    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rra

jr_035_40A0:
    jr nz, jr_035_40A0

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $201F
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    rra

jr_035_40B4:
    jr nz, jr_035_40B4

    nop
    nop
    nop
    nop
    nop
    ld a, $05
    jp nc, $F90A

    ld c, $30
    ldh a, [rP1]
    and [hl]
    inc bc
    ld b, $F0
    inc c
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $00
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or d
    daa
    dec bc
    ldh a, [$0C]
    inc [hl]
    dec bc
    ldh a, [$0C]
    dec [hl]
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    add b
    adc [hl]
    ldh a, [$9C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    inc [hl]
    dec bc
    ldh a, [$0C]
    dec [hl]
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    add b
    adc [hl]
    ldh a, [$9C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    inc [hl]
    dec bc
    ldh a, [$0C]
    dec [hl]
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    add b
    adc [hl]
    ldh a, [$9C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    inc [hl]
    dec bc
    ldh a, [$0C]
    dec [hl]
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    halt
    ldh a, [$84]
    ld [hl-], a
    add hl, bc
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    dec l
    ld a, [hl+]
    ldh a, [$30]
    dec l
    ld [de], a
    ldh a, [rNR23]
    dec l
    ld [de], a
    ldh a, [rNR23]
    dec l
    ld [de], a
    ldh a, [rNR23]
    dec l
    ld [de], a
    ldh a, [rNR23]
    dec l
    ld [de], a
    ldh a, [rNR23]
    dec l
    ld [de], a
    ldh a, [rNR23]
    ld [hl-], a
    ld d, $F0
    inc h
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [rNR23]
    dec l
    ld d, $F0
    jr jr_035_4703

    ld d, $F0
    inc h
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [rNR23]
    dec l
    ld d, $F0
    jr jr_035_4713

    ld d, $F0
    inc h
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [rNR23]
    dec l
    ld d, $F0
    jr jr_035_4723

    ld d, $F0
    inc h
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [rNR23]
    dec l
    ld d, $F0
    jr jr_035_4733

    ld d, $F0

jr_035_4703:
    inc h
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [rNR23]
    dec l
    ld d, $F0
    jr jr_035_4743

    ld d, $F0

jr_035_4713:
    inc h
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [rNR23]
    dec l
    ld d, $F0
    jr jr_035_4753

    ld d, $F0

jr_035_4723:
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr @+$2F

    ld d, $F0
    jr @+$34

    ld d, $F0

jr_035_4733:
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_476A

    ld [de], a
    ldh a, [rNR23]
    dec l
    ld d, $F0

jr_035_4743:
    inc h
    dec l
    dec b
    ldh a, [$0C]
    dec l
    ld d, $F0
    jr jr_035_4781

    ld d, $F0
    jr @+$2F

    ld d, $F0

jr_035_4753:
    inc h
    dec l
    dec b
    ldh a, [$0C]
    dec l
    ld d, $F0
    jr jr_035_4791

    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    inc h
    ld [hl-], a
    dec b

jr_035_476A:
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_479E

    ld d, $F0
    jr @+$34

    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_47AE

jr_035_4781:
    ld d, $F0
    jr jr_035_47B5

    ld d, $F0
    inc h
    jr nc, @+$07

    ldh a, [$0C]
    jr nc, jr_035_47A4

    ldh a, [rNR23]
    dec hl

jr_035_4791:
    ld d, $F0
    jr jr_035_47C5

    ld d, $F0
    inc h
    jr nc, @+$07

    ldh a, [$0C]
    jr nc, jr_035_47B0

jr_035_479E:
    ldh a, [rNR23]
    jr nc, jr_035_47AD

    ldh a, [$0C]

jr_035_47A4:
    dec hl
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    inc h
    ld [hl-], a

jr_035_47AD:
    dec b

jr_035_47AE:
    ldh a, [$0C]

jr_035_47B0:
    ld [hl-], a
    ld d, $F0
    jr @+$2F

jr_035_47B5:
    ld d, $F0
    jr jr_035_47EB

    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr @+$2F

jr_035_47C5:
    ld d, $F0
    jr jr_035_47F5

    ld d, $F0
    inc h
    inc l
    dec b
    ldh a, [$0C]
    inc l
    ld d, $F0
    jr jr_035_4808

    ld [de], a
    ldh a, [rNR23]
    inc sp
    ld d, $F0
    inc h
    inc sp
    dec b
    ldh a, [$0C]
    inc sp
    ld d, $F0
    jr @+$30

    ld d, $F0
    jr jr_035_481D

    ld d, $F0

jr_035_47EB:
    inc h
    inc [hl]
    dec b
    ldh a, [$0C]
    inc [hl]
    ld d, $F0
    jr jr_035_4824

jr_035_47F5:
    ld d, $F0
    jr jr_035_482D

    ld d, $F0
    inc h
    inc [hl]
    dec b
    ldh a, [$0C]
    inc [hl]
    ld [de], a
    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [$0C]

jr_035_4808:
    cpl
    dec bc
    ldh a, [$0C]
    dec l
    ld d, $F0
    inc h
    dec l
    dec b
    ldh a, [$0C]
    dec l
    ld d, $F0
    jr jr_035_484D

    ld d, $F0
    jr @+$2F

jr_035_481D:
    ld d, $F0
    inc h
    dec l
    dec b
    ldh a, [$0C]

jr_035_4824:
    dec l
    ld d, $F0
    jr jr_035_485D

    dec bc
    ldh a, [$0C]
    dec l

jr_035_482D:
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr @+$2F

    ld d, $F0
    jr @+$34

    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_487A

jr_035_484D:
    ld [de], a
    ldh a, [rNR23]
    dec l
    ld d, $F0
    inc h
    dec l
    dec b
    ldh a, [$0C]
    dec l
    ld d, $F0
    jr jr_035_4891

jr_035_485D:
    ld d, $F0
    jr @+$2F

    ld d, $F0
    inc h
    dec l
    dec b
    ldh a, [$0C]
    dec l
    ld d, $F0
    jr jr_035_48A1

    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    inc h
    ld [hl-], a
    dec b

jr_035_487A:
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_48AE

    ld d, $F0
    jr @+$34

    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_48BE

jr_035_4891:
    ld d, $F0
    jr jr_035_48C5

    ld d, $F0
    inc h
    jr nc, @+$07

    ldh a, [$0C]
    jr nc, jr_035_48B4

    ldh a, [rNR23]
    dec hl

jr_035_48A1:
    ld d, $F0
    jr jr_035_48D5

    ld d, $F0
    inc h
    jr nc, @+$07

    ldh a, [$0C]
    jr nc, jr_035_48C0

jr_035_48AE:
    ldh a, [rNR23]
    jr nc, jr_035_48BD

    ldh a, [$0C]

jr_035_48B4:
    dec hl
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    inc h
    ld [hl-], a

jr_035_48BD:
    dec b

jr_035_48BE:
    ldh a, [$0C]

jr_035_48C0:
    ld [hl-], a
    ld d, $F0
    jr jr_035_48F2

jr_035_48C5:
    ld d, $F0
    jr jr_035_48FB

    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_4902

jr_035_48D5:
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    inc sp
    ld d, $F0
    inc h
    inc sp
    dec b
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    inc sp
    ld [de], a
    ldh a, [rNR23]
    inc sp
    ld d, $F0
    inc h
    inc sp
    dec b

jr_035_48F2:
    ldh a, [$0C]
    inc sp
    ld d, $F0
    jr @+$30

    ld d, $F0

jr_035_48FB:
    jr @+$2F

    ld d, $F0
    inc h
    dec l
    dec b

jr_035_4902:
    ldh a, [$0C]
    dec l
    ld d, $F0
    jr jr_035_493D

    ld d, $F0
    jr @+$2F

    ld d, $F0
    inc h
    dec l
    dec b
    ldh a, [$0C]
    dec l
    ld d, $F0
    jr jr_035_494D

    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_495A

    ld d, $F0
    jr @+$34

    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_496F

jr_035_493D:
    ld d, $F0
    jr @+$34

    dec bc
    ldh a, [$0C]
    inc [hl]
    dec bc
    ldh a, [$0C]
    dec [hl]
    dec bc
    ldh a, [$0C]
    ld [hl-], a

jr_035_494D:
    dec sp
    ldh a, [$3C]
    ld [hl-], a
    inc hl
    ldh a, [$30]
    ld [hl-], a
    ld l, $F0
    jr nc, jr_035_498D

    dec bc

jr_035_495A:
    ldh a, [$0C]
    dec [hl]
    dec bc
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    inc [hl]
    ld l, $F0
    inc a
    inc [hl]
    ld a, [hl+]
    ldh a, [$30]
    inc [hl]
    ld l, $F0

jr_035_496F:
    jr nc, jr_035_49A6

    dec bc
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    dec [hl]
    ld l, $F0
    inc a
    dec [hl]
    ld a, [hl+]
    ldh a, [$30]
    dec [hl]
    ld l, $F0
    jr nc, jr_035_49C0

    ld [de], a
    ldh a, [$0C]
    add hl, sp

jr_035_498D:
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    add hl, sp
    inc hl
    ldh a, [$30]
    add hl, sp
    ld l, $F0
    jr nc, jr_035_49CE

    ld l, $F0
    jr nc, @+$34

    dec bc

jr_035_49A6:
    ldh a, [$0C]
    inc [hl]
    dec bc
    ldh a, [$0C]
    dec [hl]
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    ld l, $F0
    inc a
    ld [hl-], a
    inc hl
    ldh a, [$30]
    ld [hl-], a
    ld l, $F0
    jr nc, jr_035_49F1

    dec bc
    ldh a, [$0C]

jr_035_49C0:
    dec [hl]
    dec bc
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    inc [hl]
    ld l, $F0
    inc a
    inc [hl]
    ld a, [hl+]

jr_035_49CE:
    ldh a, [$30]
    inc [hl]
    ld l, $F0
    jr nc, @+$37

    dec bc
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    dec [hl]
    ld l, $F0
    inc a
    dec [hl]
    ld a, [hl+]
    ldh a, [$30]
    dec [hl]
    ld l, $F0
    jr nc, @+$39

    dec bc
    ldh a, [$0C]
    add hl, sp

jr_035_49F1:
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    add hl, sp
    inc hl
    ldh a, [$30]
    add hl, sp
    ld l, $F0
    jr nc, @+$2F

    ld l, $F0
    jr nc, jr_035_4A3B

    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr @+$2F

    ld d, $F0
    jr @+$34

    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_4A52

    ld [de], a
    ldh a, [rNR23]
    dec l
    ld d, $F0
    inc h
    dec l
    dec b
    ldh a, [$0C]
    dec l
    ld d, $F0
    jr jr_035_4A69

    ld d, $F0
    jr @+$2F

    ld d, $F0

jr_035_4A3B:
    inc h
    dec l
    dec b
    ldh a, [$0C]
    dec l
    ld d, $F0
    jr jr_035_4A79

    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    inc h
    ld [hl-], a
    dec b

jr_035_4A52:
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_4A86

    ld d, $F0
    jr @+$34

    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_4A96

jr_035_4A69:
    ld d, $F0
    jr jr_035_4A9D

    ld d, $F0
    inc h
    jr nc, @+$07

    ldh a, [$0C]
    jr nc, jr_035_4A8C

    ldh a, [rNR23]
    dec hl

jr_035_4A79:
    ld d, $F0
    jr jr_035_4AAD

    ld d, $F0
    inc h
    jr nc, @+$07

    ldh a, [$0C]
    jr nc, jr_035_4A98

jr_035_4A86:
    ldh a, [rNR23]
    jr nc, jr_035_4A95

    ldh a, [$0C]

jr_035_4A8C:
    dec hl
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    inc h
    ld [hl-], a

jr_035_4A95:
    dec b

jr_035_4A96:
    ldh a, [$0C]

jr_035_4A98:
    ld [hl-], a
    ld d, $F0
    jr jr_035_4ACA

jr_035_4A9D:
    ld d, $F0
    jr jr_035_4AD3

    ld d, $F0
    inc h
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    ld d, $F0
    jr jr_035_4ADA

jr_035_4AAD:
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    inc sp
    ld d, $F0
    inc h
    inc sp
    dec bc
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    inc sp
    ld [de], a
    ldh a, [rNR23]
    inc sp
    ld d, $F0
    inc h
    inc sp
    dec b

jr_035_4ACA:
    ldh a, [$0C]
    inc sp
    ld d, $F0
    jr jr_035_4AFF

    ld d, $F0

jr_035_4AD3:
    jr jr_035_4B02

    ld d, $F0
    inc h
    dec l
    dec b

jr_035_4ADA:
    ldh a, [$0C]
    dec l
    ld d, $F0
    jr jr_035_4B15

    ld d, $F0
    jr jr_035_4B12

    ld d, $F0
    inc h
    dec l
    dec b
    ldh a, [$0C]
    dec l
    ld d, $F0
    jr jr_035_4B25

    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    ld sp, $F00B

jr_035_4AFF:
    inc c
    ld l, $0B

jr_035_4B02:
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    ld sp, $F00B
    inc c
    ld l, $0B

jr_035_4B12:
    ldh a, [$0C]
    dec l

jr_035_4B15:
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    ld sp, $F00B
    inc c
    ld l, $0B
    ldh a, [$0C]
    dec l

jr_035_4B25:
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    ld sp, $F00B
    inc c
    ld l, $0B
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    ld sp, $F00B
    inc c
    ld l, $0B
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    ld sp, $F00B
    inc c
    ld l, $0B
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    ld sp, $F00B
    inc c
    ld l, $0B
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    ld sp, $F00B
    inc c
    ld l, $0B
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    cp [hl]
    ld d, c
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld a, $80
    sub [hl]
    ldh a, [$9C]
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld a, $80
    sub [hl]
    ldh a, [$9C]
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld a, $80
    sub [hl]
    ldh a, [$9C]
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld a, $7E
    ldh a, [$84]
    ld a, $06
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, b
    add b
    and [hl]
    ld a, [c]
    ret nc

    ld [hl], $05
    ldh a, [rTMA]
    scf
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    add hl, sp
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $5E
    ldh a, [$60]
    ld b, l
    ld l, $F0
    jr nc, jr_035_4C37

    ld l, $F0
    jr nc, jr_035_4C3A

    dec bc
    ldh a, [$30]
    ld b, l
    add b
    adc [hl]
    ldh a, [$90]
    ld a, $5E
    ldh a, [$60]
    ld b, l
    ld l, $F0
    jr nc, jr_035_4C4C

    ld l, $F0
    jr nc, jr_035_4C51

    dec bc
    ldh a, [$30]
    ld b, [hl]
    ld [hl], b
    ldh a, [$78]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld c, d
    ld l, $F0
    jr nc, @+$47

    ld l, $F0
    jr nc, jr_035_4C7A

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, [hl]
    dec bc

jr_035_4C37:
    ldh a, [$0C]
    ld b, l

jr_035_4C3A:
    dec bc
    ldh a, [$0C]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, h
    ld e, [hl]
    ldh a, [$60]
    ld b, b
    ld l, $F0
    jr nc, jr_035_4C8E

    ld l, $F0

jr_035_4C4C:
    jr nc, jr_035_4C93

    dec sp
    ldh a, [rSCY]

jr_035_4C51:
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec bc
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, l
    ld [de], a
    ldh a, [$2A]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $5E
    ldh a, [$60]
    ld b, l
    ld l, $F0
    jr nc, jr_035_4CB0

    ld l, $F0
    jr nc, jr_035_4CB3

    dec bc
    ldh a, [$30]
    ld b, l

jr_035_4C7A:
    add b
    adc [hl]
    ldh a, [$90]
    ld a, $5E
    ldh a, [$60]
    ld b, l
    ld l, $F0
    jr nc, @+$40

    ld l, $F0
    jr nc, jr_035_4CCA

    dec bc
    ldh a, [$30]

jr_035_4C8E:
    ld b, [hl]
    halt
    ldh a, [$78]
    ld b, d

jr_035_4C93:
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld c, d
    ld l, $F0
    jr nc, jr_035_4CEC

    ld l, $F0
    jr nc, jr_035_4CF1

    dec bc
    ldh a, [$30]
    ld c, e
    ld e, [hl]

jr_035_4CB0:
    ldh a, [$60]
    ld c, l

jr_035_4CB3:
    ld a, [bc]
    ldh a, [$0C]
    ld c, [hl]
    ld a, [bc]
    ldh a, [$0C]
    ld c, a
    ld a, [bc]
    ldh a, [$0C]
    ld d, b
    ld a, [bc]
    ldh a, [$0C]
    ld d, c
    dec sp
    ldh a, [rSCY]
    ld d, c
    dec b
    ldh a, [rTMA]

jr_035_4CCA:
    ld d, d
    dec bc
    ldh a, [rNR23]
    ld d, c
    dec bc
    ldh a, [rNR23]
    ld c, a
    dec bc
    ldh a, [rNR23]
    ld c, l
    dec bc
    ldh a, [rNR23]
    ld c, c
    dec bc
    ldh a, [rNR23]
    ld c, d
    add b
    and [hl]
    ldh a, [$C0]
    ld a, $5E
    ldh a, [$60]
    ld b, [hl]
    ld l, $F0
    jr nc, jr_035_4D31

jr_035_4CEC:
    ld l, $F0
    jr nc, jr_035_4D34

    ld e, [hl]

jr_035_4CF1:
    ldh a, [$60]
    ld b, b
    ld l, $F0
    jr nc, jr_035_4D3C

    ld l, $F0

jr_035_4CFA:
    jr nc, @+$47

    ld e, [hl]
    ldh a, [$60]
    ld c, l
    ld l, $F0
    jr nc, jr_035_4D50

    ld l, $F0
    jr nc, jr_035_4D53

    jr z, jr_035_4CFA

    jr nc, jr_035_4D51

    ld l, $F0
    jr nc, jr_035_4D54

    ld l, $F0
    jr nc, jr_035_4D55

    ld l, $F0
    jr nc, @+$40

    ld e, [hl]
    ldh a, [$60]
    ld b, [hl]
    ld l, $F0
    jr nc, jr_035_4D65

    ld l, $F0
    jr nc, jr_035_4D68

    ld e, [hl]
    ldh a, [$60]
    ld b, b
    ld l, $F0
    jr nc, jr_035_4D70

    ld l, $F0
    jr nc, jr_035_4D75

    ld e, [hl]

jr_035_4D31:
    ldh a, [$60]
    ld c, l

jr_035_4D34:
    ld l, $F0
    jr nc, jr_035_4D84

    ld l, $F0
    jr nc, jr_035_4D87

jr_035_4D3C:
    ld l, $F0
    jr nc, jr_035_4D85

    ld l, $F0
    jr nc, jr_035_4D7D

    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    inc a

jr_035_4D50:
    dec b

jr_035_4D51:
    ldh a, [rTMA]

jr_035_4D53:
    dec a

jr_035_4D54:
    dec b

jr_035_4D55:
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b

jr_035_4D65:
    ldh a, [rTMA]
    ld b, d

jr_035_4D68:
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h

jr_035_4D70:
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b

jr_035_4D75:
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b

jr_035_4D7D:
    ldh a, [rTMA]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d

jr_035_4D84:
    ld b, [hl]

jr_035_4D85:
    ldh a, [rOBP0]

jr_035_4D87:
    ld c, d
    ld d, $F0
    jr jr_035_4DDD

    inc hl
    ldh a, [$30]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld c, d
    ld d, $F0
    jr jr_035_4DE5

    dec bc
    ldh a, [rNR50]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld d, c
    ld d, e
    ldh a, [$60]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld c, c
    ld d, $F0
    jr @+$4C

    dec sp
    ldh a, [rOBP0]
    ld c, d
    ld [de], a
    ldh a, [rNR23]
    ld d, c
    dec bc
    ldh a, [rNR23]
    ld d, c
    dec bc
    ldh a, [rNR23]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld c, d
    ld d, $F0
    jr jr_035_4E1B

    dec bc
    ldh a, [rNR50]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld d, d
    ld h, b
    ldh a, [$78]
    ld c, [hl]
    dec b

jr_035_4DDD:
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, b
    dec bc

jr_035_4DE5:
    ldh a, [$0C]
    ld d, c
    dec sp
    ldh a, [rOBP0]
    ld d, c
    dec bc
    ldh a, [rNR23]
    ld d, [hl]
    dec bc
    ldh a, [rNR23]
    ld d, [hl]
    dec bc
    ldh a, [rNR23]
    ld d, [hl]
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld c, l
    ld [de], a
    ldh a, [rNR23]
    ld d, d
    dec bc
    ldh a, [rNR50]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, a
    ld e, [hl]
    ldh a, [$78]
    ld d, a
    dec bc
    ldh a, [rNR23]
    ld d, c
    dec bc
    ldh a, [rNR50]
    ld d, c
    dec bc
    ldh a, [rNR50]

jr_035_4E1B:
    ld d, c
    dec bc
    ldh a, [rNR23]
    ld d, c
    dec bc
    ldh a, [rNR50]
    ld d, c
    dec bc
    ldh a, [rNR50]
    ld d, c
    ld a, [bc]
    ldh a, [$0C]
    ld d, c
    ld a, [bc]
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, l
    add hl, bc
    ldh a, [$0C]
    ld d, l
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, l
    add hl, bc
    ldh a, [$0C]
    ld d, l
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, l
    add hl, bc
    ldh a, [$0C]
    ld d, l
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, a
    add hl, bc
    ldh a, [$0C]
    ld d, l
    add hl, bc
    ldh a, [$0C]
    ld d, l
    add hl, bc
    ldh a, [$0C]
    ld d, [hl]
    dec bc
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    jp z, $0650

    ldh a, [$0C]
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    add b
    sub b
    ldh a, [$9C]
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    add b
    sub b
    ldh a, [$9C]
    ld c, l
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, l
    add b
    sub b
    ldh a, [$9C]
    ld c, a
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, a
    add b
    sub b
    ldh a, [$9C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$0C]
    ld e, b
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, a
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, [hl]
    dec bc
    ldh a, [$0C]
    ld e, c
    dec bc
    ldh a, [$0C]
    ld e, l
    dec bc
    ldh a, [$0C]
    ld e, c
    dec bc
    ldh a, [$0C]
    ld d, [hl]
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, a
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $06
    ldh a, [$30]
    ld d, c
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rP1]
    rst $38
    ld a, [hl+]
    inc l
    dec hl
    add hl, hl
    ld a, [hl+]
    inc l
    dec hl
    add hl, hl
    nop
    nop
    jr z, jr_035_589B

    nop
    dec l
    jr nc, jr_035_5870

jr_035_5870:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_035_589B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    inc l
    nop
    nop
    nop
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    nop
    nop
    daa
    nop
    ld h, $31
    nop
    ld b, $00
    ld [hl], $00
    or h
    nop
    ld c, $00
    jr jr_035_58EF

jr_035_58EF:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    daa
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    daa
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0027
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    nop
    cp $00
    nop
    nop
    nop
    nop
    ld a, $05
    ld c, d
    rlca
    dec e
    ld c, $D1
    ldh a, [rP1]
    and h
    inc bc
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rHDMA4]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$60]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rOBP0]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR50]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [rNR23]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [$0C]
    inc h
    dec bc
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    xor [hl]
    ld h, $80
    adc [hl]
    ldh a, [$90]
    ld a, [hl+]
    ld l, $F0
    jr nc, jr_035_5E69

    add b
    cp [hl]
    ldh a, [$C0]
    ld l, $80
    adc [hl]
    ldh a, [$90]
    ld a, [hl+]
    ld l, $F0
    jr nc, jr_035_5E77

    add b
    cp [hl]
    ldh a, [$C0]
    ld l, $80
    adc [hl]
    ldh a, [$90]
    ld a, [hl+]
    ld l, $F0
    jr nc, jr_035_5E85

    add b
    cp [hl]
    ldh a, [$C0]
    ld l, $80
    adc [hl]
    ldh a, [$90]
    ld a, [hl+]
    ld l, $F0
    jr nc, jr_035_5E93

    add b
    cp [hl]
    ldh a, [$C0]

jr_035_5E69:
    ld l, $80
    adc [hl]
    ldh a, [$90]
    ld a, [hl+]
    ld l, $F0
    jr nc, jr_035_5EA1

    add b
    cp [hl]
    ldh a, [$C0]

jr_035_5E77:
    ld l, $80
    adc [hl]
    ldh a, [$90]
    ld a, [hl+]
    ld l, $F0
    jr nc, jr_035_5EAF

    add b
    or [hl]
    ldh a, [$BA]

jr_035_5E85:
    call z, $0509
    ldh a, [rTMA]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld c, [hl]
    inc hl
    ldh a, [rNR50]

jr_035_5E93:
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld d, e
    ld d, $F0
    jr jr_035_5EF1

jr_035_5EA1:
    dec bc
    ldh a, [$0C]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, l
    add b
    adc [hl]

jr_035_5EAF:
    ldh a, [$90]
    ld c, [hl]
    inc hl
    ldh a, [rNR50]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, l
    add b
    or e
    ldh a, [$BA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld c, [hl]
    inc hl
    ldh a, [rNR50]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld d, e
    ld d, $F0
    jr jr_035_5F29

    dec bc
    ldh a, [$0C]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld c, [hl]
    inc hl
    ldh a, [rNR50]
    ld d, b
    dec bc
    ldh a, [$0C]

jr_035_5EF1:
    ld c, l
    add b
    cp b
    ldh a, [$BA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, l
    ld e, [hl]
    ldh a, [$60]
    ld d, e
    ld e, [hl]
    ldh a, [$60]
    ld d, d
    add b
    cp [hl]
    ldh a, [$C0]
    ld d, l
    ld e, [hl]
    ldh a, [$60]
    ld d, e
    ld e, [hl]
    ldh a, [$60]
    ld d, d
    add b
    cp b
    ldh a, [$BA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, l
    ld e, [hl]
    ldh a, [$60]
    ld d, e
    ld e, [hl]
    ldh a, [$60]
    ld d, d
    add b
    cp [hl]
    ldh a, [$C0]
    ld d, l
    ld e, [hl]
    ldh a, [$60]

jr_035_5F29:
    ld d, e
    ld e, [hl]
    ldh a, [$60]
    ld d, d
    add b
    or e
    ldh a, [$BA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld c, [hl]
    inc hl
    ldh a, [rNR50]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld d, e
    ld d, $F0
    jr jr_035_5F9D

    dec bc
    ldh a, [$0C]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld c, [hl]
    inc hl
    ldh a, [rNR50]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, l
    add b
    or [hl]
    ldh a, [$BA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld c, [hl]
    inc hl
    ldh a, [rNR50]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld d, e
    ld d, $F0
    jr jr_035_5FD5

    dec bc
    ldh a, [$0C]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld c, [hl]
    inc hl
    ldh a, [rNR50]
    ld d, b
    dec bc
    ldh a, [$0C]

jr_035_5F9D:
    ld c, l
    add b
    cp b
    ldh a, [$BA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, l
    ld e, [hl]
    ldh a, [$60]
    ld d, e
    ld e, [hl]
    ldh a, [$60]
    ld d, d
    add b
    cp [hl]
    ldh a, [$C0]
    ld d, l
    ld e, [hl]
    ldh a, [$60]
    ld d, e
    ld e, [hl]
    ldh a, [$60]
    ld d, d
    add b
    cp b
    ldh a, [$BA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, l
    ld e, [hl]
    ldh a, [$60]
    ld d, e
    ld e, [hl]
    ldh a, [$60]
    ld d, d
    add b
    cp [hl]
    ldh a, [$C0]
    ld d, l
    ld e, [hl]
    ldh a, [$60]

jr_035_5FD5:
    ld d, e
    ld e, [hl]
    ldh a, [$60]
    ld d, d
    add b
    or e
    ldh a, [$C0]
    ld a, [hl-]
    add b
    adc [hl]
    ldh a, [$90]
    xor d
    ld h, $2E
    ldh a, [$30]
    ld l, $80
    cp [hl]
    ldh a, [$C0]
    ld l, $80
    adc [hl]
    ldh a, [$90]
    ld a, [hl+]
    ld l, $F0
    jr nc, jr_035_6025

    add b
    cp [hl]
    ldh a, [$C0]
    ld l, $82
    cp $F0
    nop
    rst $38
    or e
    nop
    cp d
    ld d, c
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld e, [hl]
    or b
    ld h, b
    ld a, [hl-]
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld e, [hl]
    or b
    ld h, b
    ld a, [hl-]
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]

jr_035_6025:
    ld e, [hl]
    or b
    ld h, b
    ld a, [hl-]
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld e, [hl]
    or b
    ld h, b
    ld a, [hl-]
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld e, [hl]
    or b
    ld h, b
    ld a, [hl-]
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld e, [hl]
    or b
    ld h, b
    ld a, [hl-]
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld e, [hl]
    or b
    ld h, b
    ld a, [hl-]
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld e, [hl]
    or b
    ld h, b
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld [hl], $23
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    jr c, @+$0D

    or b
    inc c
    ld b, h
    dec bc
    or b
    inc c
    jr c, jr_035_6211

    or b
    inc c
    jr c, jr_035_622D

    or b
    inc h
    jr c, jr_035_6219

    or b
    inc c
    ld b, h

jr_035_6211:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]

jr_035_6219:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld a, [hl-]

jr_035_622D:
    dec bc
    or b
    inc c
    dec a
    dec bc
    or b
    inc c
    ld b, c
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld c, c
    dec bc
    or b
    inc c
    ld c, l
    dec bc
    or b
    inc c
    ld d, d
    dec bc
    or b
    inc c
    ld d, l
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld [hl], $23
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    jr c, @+$0D

    or b
    inc c
    ld b, h
    dec bc
    or b
    inc c
    jr c, jr_035_6279

    or b
    inc c
    jr c, jr_035_6295

    or b
    inc h
    jr c, jr_035_6281

    or b
    inc c
    ld b, h

jr_035_6279:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]

jr_035_6281:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld a, [hl-]

jr_035_6295:
    dec bc
    or b
    inc c
    dec a
    dec bc
    or b
    inc c
    ld b, c
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld c, c
    dec bc
    or b
    inc c
    ld c, l
    dec bc
    or b
    inc c
    ld d, d
    dec bc
    or b
    inc c
    ld d, l
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld [hl], $23
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    jr c, @+$0D

    or b
    inc c
    ld b, h
    dec bc
    or b
    inc c
    jr c, jr_035_62E1

    or b
    inc c
    jr c, jr_035_62FD

    or b
    inc h
    jr c, jr_035_62E9

    or b
    inc c
    ld b, h

jr_035_62E1:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]

jr_035_62E9:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld a, [hl-]

jr_035_62FD:
    dec bc
    or b
    inc c
    dec a
    dec bc
    or b
    inc c
    ld b, c
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld c, c
    dec bc
    or b
    inc c
    ld c, l
    dec bc
    or b
    inc c
    ld d, d
    dec bc
    or b
    inc c
    ld d, l
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld [hl], $23
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    jr c, @+$0D

    or b
    inc c
    ld b, h
    dec bc
    or b
    inc c
    jr c, jr_035_6349

    or b
    inc c
    jr c, jr_035_6365

    or b
    inc h
    jr c, jr_035_6351

    or b
    inc c
    ld b, h

jr_035_6349:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]

jr_035_6351:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld a, [hl-]

jr_035_6365:
    dec bc
    or b
    inc c
    dec a
    dec bc
    or b
    inc c
    ld b, c
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld c, c
    dec bc
    or b
    inc c
    ld c, l
    dec bc
    or b
    inc c
    ld d, d
    dec bc
    or b
    inc c
    ld d, l
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld [hl], $23
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    jr c, @+$0D

    or b
    inc c
    ld b, h
    dec bc
    or b
    inc c
    jr c, jr_035_6531

    or b
    inc c
    jr c, jr_035_654D

    or b
    inc h
    jr c, jr_035_6539

    or b
    inc c
    ld b, h

jr_035_6531:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]

jr_035_6539:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld a, [hl-]

jr_035_654D:
    dec bc
    or b
    inc c
    dec a
    dec bc
    or b
    inc c
    ld b, c
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld c, c
    dec bc
    or b
    inc c
    ld c, l
    dec bc
    or b
    inc c
    ld d, d
    dec bc
    or b
    inc c
    ld d, l
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld [hl], $23
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    jr c, @+$0D

    or b
    inc c
    ld b, h
    dec bc
    or b
    inc c
    jr c, jr_035_6599

    or b
    inc c
    jr c, jr_035_65B5

    or b
    inc h
    jr c, jr_035_65A1

    or b
    inc c
    ld b, h

jr_035_6599:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]

jr_035_65A1:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld a, [hl-]

jr_035_65B5:
    dec bc
    or b
    inc c
    dec a
    dec bc
    or b
    inc c
    ld b, c
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld c, c
    dec bc
    or b
    inc c
    ld c, l
    dec bc
    or b
    inc c
    ld d, d
    dec bc
    or b
    inc c
    ld d, l
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld [hl], $23
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    jr c, @+$0D

    or b
    inc c
    ld b, h
    dec bc
    or b
    inc c
    jr c, jr_035_6601

    or b
    inc c
    jr c, jr_035_661D

    or b
    inc h
    jr c, jr_035_6609

    or b
    inc c
    ld b, h

jr_035_6601:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]

jr_035_6609:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld a, [hl-]

jr_035_661D:
    dec bc
    or b
    inc c
    dec a
    dec bc
    or b
    inc c
    ld b, c
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld c, c
    dec bc
    or b
    inc c
    ld c, l
    dec bc
    or b
    inc c
    ld d, d
    dec bc
    or b
    inc c
    ld d, l
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld [hl], $23
    or b
    inc h
    ld [hl], $0B
    or b
    inc c
    ld b, d
    dec bc
    or b
    inc c
    jr c, @+$0D

    or b
    inc c
    ld b, h
    dec bc
    or b
    inc c
    jr c, jr_035_6669

    or b
    inc c
    jr c, jr_035_6685

    or b
    inc h
    jr c, jr_035_6671

    or b
    inc c
    ld b, h

jr_035_6669:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]

jr_035_6671:
    dec bc
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    inc hl
    or b
    inc h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld a, [hl-]

jr_035_6685:
    dec bc
    or b
    inc c
    dec a
    dec bc
    or b
    inc c
    ld b, c
    dec bc
    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld c, c
    dec bc
    or b
    inc c
    ld c, l
    dec bc
    or b
    inc c
    ld d, d
    dec bc
    or b
    inc c
    ld d, l
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld e, [hl]
    or b
    ld h, b
    ld a, [hl-]
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld e, [hl]
    or b
    ld h, b
    ld a, [hl-]
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld e, [hl]
    or b
    ld h, b
    ld a, [hl-]
    ld d, e
    or b
    ld d, h
    ld a, [hl-]
    dec bc
    or b
    inc c
    ld a, [hl-]
    ld d, [hl]
    or b
    ld e, d
    add hl, sp
    dec b
    or b
    ld b, $3A
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    ld b, c
    rlca
    or b
    inc c
    ld b, d
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    add hl, sp
    rlca
    or b
    inc c
    ld a, [hl-]
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    ld b, c
    rlca
    or b
    inc c
    ld b, d
    ld [de], a
    or b
    ld a, [hl+]
    add hl, sp
    dec b
    or b
    ld b, $3A
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    ld b, c
    rlca
    or b
    inc c
    ld b, d
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    add hl, sp
    rlca
    or b
    inc c
    ld a, [hl-]
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    ld b, c
    rlca
    or b
    inc c
    ld b, d
    ld [de], a
    or b
    ld a, [hl+]
    add hl, sp
    dec b
    or b
    ld b, $3A
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    ld b, c
    rlca
    or b
    inc c
    ld b, d
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    add hl, sp
    rlca
    or b
    inc c
    ld a, [hl-]
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    ld b, c
    rlca
    or b
    inc c
    ld b, d
    ld [de], a
    or b
    ld a, [hl+]
    add hl, sp
    dec b
    or b
    ld b, $3A
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    ld b, c
    rlca
    or b
    inc c
    ld b, d
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    add hl, sp
    rlca
    or b
    inc c
    ld a, [hl-]
    rlca
    or b
    inc c
    ld a, $07
    or b
    inc c
    dec a
    rlca
    or b
    inc c
    ld b, c
    rlca
    or b
    inc c
    ld b, d
    ld [de], a
    ldh a, [rP1]
    rst $38
    and [hl]
    nop
    cp d
    ld d, b
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6827

    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_685B

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6827:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_688F

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_685B:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_68C3

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_688F:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_68F7

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_68C3:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_692B

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_68F7:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_695F

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_692B:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6993

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_695F:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_69C7

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6993:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_69FB

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_69C7:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6A2F

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_69FB:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, @+$3C

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6A2F:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6C57

    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6C8B

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6C57:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6CBF

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6C8B:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6CF3

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6CBF:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6D27

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6CF3:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6D5B

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6D27:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6D8F

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6D5B:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, @+$3C

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6D8F:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$18A0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6FB7

    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_6FEB

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6FB7:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    and b
    jr nc, jr_035_701F

    ld [$0CA0], sp
    ld a, $08
    and b

jr_035_6FEB:
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    add hl, sp
    ld [$0CA0], sp
    ld a, [hl-]
    ld [$0CA0], sp
    ld a, $08
    and b
    inc c
    dec a
    ld [$0CA0], sp
    ld b, c
    ld [$0CA0], sp
    ld b, d
    ld [de], a
    ldh a, [rP1]
    rst $38
    ld a, [hl+]
    inc l
    dec hl
    add hl, hl
    ld a, [hl+]
    inc l

jr_035_701F:
    dec hl
    add hl, hl
    nop
    nop
    jr z, jr_035_7054

    nop
    dec l
    jr nc, jr_035_7029

jr_035_7029:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_035_7054:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    inc l
    nop
    nop
    nop
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    nop
    nop
    daa
    nop
    ld h, $31
    nop
    ld b, $00
    ld [hl], $00
    push hl
    nop
    ld c, $00
    jr jr_035_70A8

jr_035_70A8:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    dec de
    ret nz

    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec de
    ret nz

    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $C01B
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    ret nz

    cp $00
    nop
    nop
    nop
    nop
    ld a, $03
    ld h, [hl]
    add hl, bc
    ld h, d
    inc c
    ld e, c
    ldh a, [rP1]
    xor e
    inc bc
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_7116

    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_712A

    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_713E

    ld b, $F0
    inc c

jr_035_7116:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_7152

    ld b, $F0
    inc c

jr_035_712A:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_7166

    ld b, $F0
    inc c

jr_035_713E:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_717A

    ld b, $F0
    inc c

jr_035_7152:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_718E

    ld b, $F0
    inc c

jr_035_7166:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_71A2

    ld b, $F0
    inc c

jr_035_717A:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_71B6

    ld b, $F0
    inc c

jr_035_718E:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_71CA

    ld b, $F0
    inc c

jr_035_71A2:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_71DE

    ld b, $F0
    inc c

jr_035_71B6:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_71F2

    ld b, $F0
    inc c

jr_035_71CA:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_7206

    ld b, $F0
    inc c

jr_035_71DE:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_721A

    ld b, $F0
    inc c

jr_035_71F2:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_722E

    ld b, $F0
    inc c

jr_035_7206:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_7242

    ld b, $F0
    inc c

jr_035_721A:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_7256

    ld b, $F0
    inc c

jr_035_722E:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_726A

    ld b, $F0
    inc c

jr_035_7242:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr jr_035_727E

    ld b, $F0
    inc c

jr_035_7256:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, jr_035_728E

    ld b, $F0
    jr @+$2D

    ld b, $F0
    inc c

jr_035_726A:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld h, b
    dec hl
    ld b, $F0
    jr nc, jr_035_72A2

    ld b, $F0
    jr jr_035_72A6

    ld b, $F0
    inc c

jr_035_727E:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_728E:
    dec hl
    ld b, $F0
    jr nc, jr_035_72BE

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c

jr_035_72A2:
    dec hl
    ld b, $F0
    inc c

jr_035_72A6:
    dec hl
    ld b, $F0
    jr nc, jr_035_72D6

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_72BE:
    dec hl
    ld b, $F0
    jr nc, jr_035_72EE

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_72D6:
    dec hl
    ld b, $F0
    jr nc, jr_035_7306

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_72EE:
    dec hl
    ld b, $F0
    jr nc, jr_035_731E

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_7306:
    dec hl
    ld b, $F0
    jr nc, jr_035_7336

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_731E:
    dec hl
    ld b, $F0
    jr nc, jr_035_734E

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_7336:
    dec hl
    ld b, $F0
    jr nc, jr_035_7366

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_734E:
    dec hl
    ld b, $F0
    jr nc, jr_035_737E

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_7366:
    dec hl
    ld b, $F0
    jr nc, jr_035_7396

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_737E:
    dec hl
    ld b, $F0
    jr nc, jr_035_73AE

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_7396:
    dec hl
    ld b, $F0
    jr nc, jr_035_73C6

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_73AE:
    dec hl
    ld b, $F0
    jr nc, jr_035_73DE

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_73C6:
    dec hl
    ld b, $F0
    jr nc, jr_035_73F6

    ld b, $F0
    jr @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_73DE:
    dec hl
    ld b, $F0
    jr nc, jr_035_740E

    ld b, $F0
    jr jr_035_7412

    ld b, $F0
    jr jr_035_7416

    ld b, $F0
    ld c, b
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c

jr_035_73F6:
    dec hl
    ld b, $F0
    jr nc, @+$2D

    ld b, $F0
    jr @+$2D

    ld b, $F0
    nop
    rst $38
    ldh a, [rP1]
    xor [hl]
    daa
    ld e, h
    ldh a, [$60]
    ld l, $23
    ldh a, [$30]

jr_035_740E:
    ld l, $0B
    ldh a, [rNR23]

jr_035_7412:
    ld l, $08
    ldh a, [$0C]

jr_035_7416:
    ld l, $08
    ldh a, [$0C]
    ld l, $23
    ldh a, [$30]
    ld l, $16
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    jr jr_035_7455

    ld d, $F0
    jr @+$2B

    ld d, $F0
    jr jr_035_745D

    ld d, $F0
    jr @+$2B

    ld d, $F0
    jr jr_035_7465

    ld e, h
    ldh a, [$60]
    ld l, $23
    ldh a, [$30]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $23
    ldh a, [$30]
    ld l, $16
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0

jr_035_7455:
    jr @+$30

    ld d, $F0
    jr jr_035_7484

    ld d, $F0

jr_035_745D:
    jr @+$30

    ld d, $F0
    jr jr_035_748C

    ld d, $F0

jr_035_7465:
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08

jr_035_7484:
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16

jr_035_748C:
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld d, $F0
    jr @+$2E

    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$18F0], sp
    ld a, [hl+]
    ld d, $F0
    jr @+$2E

    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld d, $F0
    jr @+$2E

    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld d, $F0
    jr @+$2E

    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld d, $F0
    jr @+$2E

    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld d, $F0
    jr @+$2E

    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld d, $F0
    jr @+$2E

    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    ld sp, $F016
    jr jr_035_77BE

    dec bc
    ldh a, [rNR23]
    inc sp
    ld [$0CF0], sp
    inc sp
    ld [$0CF0], sp
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    ld [$0CF0], sp
    inc sp
    ld [$0CF0], sp
    dec [hl]
    dec bc
    ldh a, [rNR23]
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld d, $F0
    jr jr_035_77DC

    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]

jr_035_77BE:
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16

jr_035_77DC:
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    ld sp, $F016
    jr jr_035_7872

    dec bc
    ldh a, [rNR23]
    inc sp
    ld [$0CF0], sp
    inc sp
    ld [$0CF0], sp
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    ld [$0CF0], sp
    inc sp
    ld [$0CF0], sp
    dec [hl]
    dec bc
    ldh a, [rNR23]
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld d, $F0
    jr jr_035_7890

    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]

jr_035_7872:
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16

jr_035_7890:
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    ld sp, $F016
    jr jr_035_7926

    dec bc
    ldh a, [rNR23]
    inc sp
    ld [$0CF0], sp
    inc sp
    ld [$0CF0], sp
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    ld [$0CF0], sp
    inc sp
    ld [$0CF0], sp
    dec [hl]
    dec bc
    ldh a, [rNR23]
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld d, $F0
    jr jr_035_7944

    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]

jr_035_7926:
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16

jr_035_7944:
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld [$0CF0], sp
    ld a, [hl+]
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld [$0CF0], sp
    inc l
    ld [$0CF0], sp
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16
    ldh a, [rNR23]
    ld sp, $F016
    jr jr_035_79DA

    dec bc
    ldh a, [rNR23]
    inc sp
    ld [$0CF0], sp
    inc sp
    ld [$0CF0], sp
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    ld [$0CF0], sp
    inc sp
    ld [$0CF0], sp
    dec [hl]
    dec bc
    ldh a, [rNR23]
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld d, $F0
    jr jr_035_79F8

    ld d, $F0
    jr jr_035_7A01

    dec bc
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]

jr_035_79DA:
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $08
    ldh a, [$0C]
    ld l, $08
    ldh a, [$0C]
    ld l, $16

jr_035_79F8:
    ldh a, [rNR23]
    add hl, hl
    ld d, $F0
    nop
    rst $38
    ldh a, [rP1]

jr_035_7A01:
    pop bc
    ld d, c
    add b
    xor $F0
    ldh a, [rLY]
    ld d, $F0
    jr jr_035_7A46

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_035_7A4E

    ld d, $F0
    jr jr_035_7A5A

    ld d, $F0
    jr jr_035_7A56

    ld d, $F0
    jr jr_035_7A61

    add b
    xor $F0
    ldh a, [rLY]
    ld d, $F0
    jr @+$3C

    ld d, $F0
    jr jr_035_7A70

    ld d, $F0
    jr jr_035_7A6B

    ld d, $F0
    jr @+$44

    ld d, $F0
    jr @+$3C

    ld d, $F0
    jr jr_035_7A7E

    add b
    add [hl]
    ldh a, [$90]
    ld b, c
    ld d, $F0
    jr jr_035_7A8A

jr_035_7A46:
    ld d, $F0
    jr jr_035_7A90

    ld h, $F0
    jr nc, @+$48

jr_035_7A4E:
    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr jr_035_7A9F

jr_035_7A56:
    ld l, $F0
    jr nc, @+$4A

jr_035_7A5A:
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]

jr_035_7A61:
    ld c, b
    ld d, $F0
    inc h
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    ld d, [hl]

jr_035_7A6B:
    ldh a, [$60]
    ld b, c
    ld d, $F0

jr_035_7A70:
    jr jr_035_7AB6

    ld d, $F0
    jr jr_035_7ABC

    ld h, $F0
    jr nc, @+$48

    ld d, $F0
    jr @+$4A

jr_035_7A7E:
    ld d, $F0
    jr jr_035_7ACB

    ld l, $F0
    jr nc, jr_035_7ACF

    ld d, $F0
    jr jr_035_7AD5

jr_035_7A8A:
    ld d, $F0
    jr jr_035_7ADB

    add b
    add [hl]

jr_035_7A90:
    ldh a, [$90]
    ld b, c
    ld d, $F0
    jr jr_035_7ADB

    ld d, $F0
    jr jr_035_7AE1

    ld h, $F0
    jr nc, jr_035_7AE5

jr_035_7A9F:
    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr jr_035_7AF0

    ld l, $F0
    jr nc, @+$4A

    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    inc d
    ldh a, [rNR50]

jr_035_7AB6:
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    ld d, [hl]

jr_035_7ABC:
    ldh a, [$60]
    ld b, c
    ld d, $F0
    jr @+$46

    ld d, $F0
    jr jr_035_7B0D

    ld h, $F0
    jr nc, jr_035_7B11

jr_035_7ACB:
    ld d, $F0
    jr @+$4A

jr_035_7ACF:
    ld d, $F0
    jr jr_035_7B1C

    ld h, $F0

jr_035_7AD5:
    jr nc, @+$4A

    ld d, $F0
    jr @+$46

jr_035_7ADB:
    ld d, $F0
    jr @+$48

    add b
    add [hl]

jr_035_7AE1:
    ldh a, [$8A]
    ld b, b
    dec b

jr_035_7AE5:
    ldh a, [rTMA]
    ld b, c
    ld d, $F0
    jr jr_035_7B30

    ld d, $F0
    jr @+$48

jr_035_7AF0:
    ld h, $F0
    jr nc, jr_035_7B3A

    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr jr_035_7B45

    ld l, $F0
    jr nc, @+$4A

    ld d, $F0
    jr @+$46

    ld d, $F0
    jr @+$4A

    inc d
    ldh a, [rNR50]
    ld b, [hl]
    dec bc

jr_035_7B0D:
    ldh a, [$0C]
    ld b, [hl]
    ld e, [hl]

jr_035_7B11:
    ldh a, [$60]
    ld b, c
    ld d, $F0
    jr @+$46

    ld d, $F0
    jr jr_035_7B62

jr_035_7B1C:
    ld h, $F0
    jr nc, jr_035_7B66

    ld d, $F0
    jr jr_035_7B6C

    ld d, $F0
    jr jr_035_7B71

    ld l, $F0
    jr nc, @+$4A

    ld d, $F0
    jr jr_035_7B79

jr_035_7B30:
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld c, l
    add b
    adc [hl]

jr_035_7B3A:
    ldh a, [$90]
    ld b, c
    ld d, $F0
    jr jr_035_7B85

    ld d, $F0
    jr @+$48

jr_035_7B45:
    ld h, $F0
    jr nc, @+$48

    ld d, $F0
    jr jr_035_7B95

    ld d, $F0
    jr jr_035_7B9A

    ld l, $F0
    jr nc, @+$4A

    ld d, $F0
    jr @+$46

    ld d, $F0
    jr jr_035_7BA5

    inc d
    ldh a, [rNR50]
    ld b, [hl]
    dec bc

jr_035_7B62:
    ldh a, [$0C]
    ld b, [hl]
    ld d, [hl]

jr_035_7B66:
    ldh a, [$5A]
    ld b, b
    dec b
    ldh a, [rTMA]

jr_035_7B6C:
    ld b, c
    ld d, $F0
    jr @+$46

jr_035_7B71:
    ld d, $F0
    jr @+$48

    ld h, $F0
    jr nc, @+$48

jr_035_7B79:
    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr jr_035_7BCA

    ld l, $F0
    jr nc, jr_035_7BCE

jr_035_7B85:
    ld a, [bc]
    ldh a, [$0C]
    ld b, [hl]
    ld a, [bc]
    ldh a, [$0C]
    ld c, b
    ld a, [bc]
    ldh a, [$0C]
    ld b, h
    ld a, [bc]
    ldh a, [$0C]
    ld b, [hl]

jr_035_7B95:
    add b
    adc [hl]
    ldh a, [$90]
    dec [hl]

jr_035_7B9A:
    ld d, $F0
    jr jr_035_7BD6

    ld d, $F0
    jr jr_035_7BDC

    ld e, [hl]
    ldh a, [$60]

jr_035_7BA5:
    inc a
    ld d, [hl]
    ldh a, [$60]
    dec a
    ld d, $F0
    jr jr_035_7BEA

    ld d, $F0
    jr jr_035_7BEF

    ld d, $F0
    jr jr_035_7BF5

    ld d, $F0
    jr @+$43

    ld l, $F0
    jr nc, jr_035_7BF3

    ld d, $F0
    jr jr_035_7BFA

    ld d, $F0
    jr jr_035_7C00

    ld e, [hl]
    ldh a, [$60]
    inc a

jr_035_7BCA:
    ld d, [hl]
    ldh a, [$60]
    dec a

jr_035_7BCE:
    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_035_7C13

jr_035_7BD6:
    ld d, $F0
    jr jr_035_7C16

    ld d, $F0

jr_035_7BDC:
    jr @+$3C

    ld h, $F0
    ld a, [hl+]
    inc [hl]
    dec b
    ldh a, [rTMA]
    dec [hl]
    ld d, $F0
    jr jr_035_7C22

jr_035_7BEA:
    ld d, $F0
    jr @+$3C

    ld e, [hl]

jr_035_7BEF:
    ldh a, [$60]
    inc a
    ld d, [hl]

jr_035_7BF3:
    ldh a, [$60]

jr_035_7BF5:
    dec a
    ld d, $F0
    jr jr_035_7C36

jr_035_7BFA:
    ld d, $F0
    jr @+$3F

    ld d, $F0

jr_035_7C00:
    jr @+$41

    ld d, $F0
    jr jr_035_7C47

    ld l, $F0
    jr nc, @+$37

    ld d, $F0
    jr jr_035_7C46

    ld d, $F0
    jr @+$3C

    ld e, [hl]

jr_035_7C13:
    ldh a, [$60]
    inc a

jr_035_7C16:
    ld d, [hl]
    ldh a, [$60]
    dec a
    ld a, [bc]
    ldh a, [$0C]
    ccf
    ld a, [bc]
    ldh a, [$0C]
    dec a

jr_035_7C22:
    ld a, [bc]
    ldh a, [$0C]
    inc a
    ld a, [bc]
    ldh a, [$0C]
    dec a
    ld a, [bc]
    ldh a, [$0C]
    inc a
    ld a, [bc]
    ldh a, [$0C]
    ld a, [hl-]
    ld a, [bc]
    ldh a, [$0C]
    add hl, sp

jr_035_7C36:
    ld a, [bc]
    ldh a, [$0C]
    ld a, [hl-]
    ld l, $F0
    jr nc, @+$43

    ld d, $F0
    jr jr_035_7C86

    ld d, $F0
    jr jr_035_7C8C

jr_035_7C46:
    ld e, [hl]

jr_035_7C47:
    ldh a, [$60]
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    ld c, c
    ld d, $F0
    jr jr_035_7C9A

    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr @+$4F

    ld l, $F0
    jr nc, @+$43

    ld d, $F0
    jr jr_035_7CAA

    ld d, $F0
    jr jr_035_7CB0

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld d, [hl]
    ldh a, [$5A]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, c
    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr jr_035_7CCA

    ld d, $F0
    jr jr_035_7CCC

jr_035_7C86:
    ld l, $F0
    jr nc, @+$43

    ld d, $F0

jr_035_7C8C:
    jr jr_035_7CD2

    ld d, $F0
    jr jr_035_7CD8

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld d, [hl]
    ldh a, [$5A]
    ld c, b

jr_035_7C9A:
    dec b
    ldh a, [rTMA]
    ld c, c
    ld d, $F0
    jr jr_035_7CEA

    ld d, $F0
    jr jr_035_7CEF

    ld d, $F0
    jr jr_035_7CF5

jr_035_7CAA:
    ld d, $F0
    jr jr_035_7CFB

    ld l, $F0

jr_035_7CB0:
    jr nc, jr_035_7CFD

    ld d, $F0
    jr jr_035_7D03

    ld d, $F0
    jr @+$50

    ld d, $F0
    jr jr_035_7D09

    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr jr_035_7D14

    ld d, $F0
    jr jr_035_7D1A

jr_035_7CCA:
    ld d, $F0

jr_035_7CCC:
    jr @+$4F

    ld d, $F0
    jr jr_035_7D20

jr_035_7CD2:
    ld d, $F0
    jr jr_035_7D26

    ld d, $F0

jr_035_7CD8:
    jr jr_035_7D2C

    dec bc
    ldh a, [rNR23]
    ld d, d
    ld [$0CF0], sp
    ld d, d
    ld [$0CF0], sp
    ld d, d
    dec bc
    ldh a, [rNR23]
    ld d, d

jr_035_7CEA:
    dec bc
    ldh a, [rNR23]
    ld d, d
    inc d

jr_035_7CEF:
    ldh a, [$30]
    ld d, d
    inc hl
    ldh a, [rP1]

jr_035_7CF5:
    rst $38
    ldh a, [rP1]
    cp d
    ld d, b
    add b

jr_035_7CFB:
    xor $F0

jr_035_7CFD:
    ldh a, [$3D]
    ld l, $F0
    jr nc, jr_035_7D3F

jr_035_7D03:
    ld l, $F0
    jr nc, jr_035_7D42

    ld l, $F0

jr_035_7D09:
    jr nc, jr_035_7D45

    add b
    xor $F0
    ldh a, [$3D]
    ld l, $F0
    jr nc, jr_035_7D50

jr_035_7D14:
    ld l, $F0
    jr nc, jr_035_7D53

    ld l, $F0

jr_035_7D1A:
    jr nc, jr_035_7D56

    add b
    adc [hl]
    ldh a, [$90]

jr_035_7D20:
    ld b, c
    ld l, $F0
    jr nc, jr_035_7D67

    ld e, [hl]

jr_035_7D26:
    ldh a, [$60]
    ld b, h
    ld e, [hl]
    ldh a, [$60]

jr_035_7D2C:
    ld b, [hl]
    add b
    adc [hl]
    ldh a, [$90]
    ld b, c
    ld l, $F0
    jr nc, @+$44

    ld e, [hl]
    ldh a, [$60]
    ld b, h
    ld e, [hl]
    ldh a, [$60]
    ld b, [hl]
    add b

jr_035_7D3F:
    adc [hl]
    ldh a, [$90]

jr_035_7D42:
    ld b, c
    ld l, $F0

jr_035_7D45:
    jr nc, jr_035_7D89

    ld e, [hl]
    ldh a, [$60]
    ld b, h
    ld e, [hl]
    ldh a, [$60]
    ld b, [hl]
    add b

jr_035_7D50:
    adc [hl]
    ldh a, [$90]

jr_035_7D53:
    ld b, c
    ld l, $F0

jr_035_7D56:
    jr nc, @+$44

    ld e, [hl]
    ldh a, [$60]
    ld b, h
    ld e, [hl]
    ldh a, [$60]
    ld b, [hl]
    add b
    adc [hl]
    ldh a, [$90]
    ld b, c
    ld l, $F0

jr_035_7D67:
    jr nc, jr_035_7DAB

    ld l, $F0
    jr nc, jr_035_7DAF

    ld d, $F0
    jr jr_035_7DB3

    ld d, $F0

jr_035_7D73:
    jr jr_035_7DB9

    ld l, $F0
    jr nc, jr_035_7DBD

    ld d, $F0
    jr jr_035_7DC1

    ld d, $F0
    jr @+$48

    jr z, jr_035_7D73

    ld a, [hl+]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, [hl]

jr_035_7D89:
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, l
    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr jr_035_7DE7

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_035_7DEB

    ld l, $F0

jr_035_7DAB:
    jr nc, jr_035_7DEF

    ld d, $F0

jr_035_7DAF:
    jr jr_035_7DF3

    ld d, $F0

jr_035_7DB3:
    jr jr_035_7DF9

    ld l, $F0
    jr nc, jr_035_7DFD

jr_035_7DB9:
    ld d, $F0
    jr jr_035_7E01

jr_035_7DBD:
    db $10
    ldh a, [rNR12]
    ld b, l

jr_035_7DC1:
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, l
    ld d, $F0

jr_035_7DE7:
    jr jr_035_7E32

    ld d, $F0

jr_035_7DEB:
    jr @+$48

    ld d, $F0

jr_035_7DEF:
    jr jr_035_7E32

    ld d, $F0

jr_035_7DF3:
    jr @+$44

    ld l, $F0
    jr nc, @+$44

jr_035_7DF9:
    ld l, $F0
    jr nc, jr_035_7E41

jr_035_7DFD:
    ld l, $F0
    jr nc, jr_035_7E45

jr_035_7E01:
    jr z, jr_035_7DF3

    ld a, [hl+]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld c, [hl]
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc

jr_035_7E32:
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]

jr_035_7E41:
    dec bc
    ldh a, [$0C]
    ld b, h

jr_035_7E45:
    dec bc
    ldh a, [$0C]
    ld b, d
    ld l, $F0
    jr nc, jr_035_7E8F

    ld d, $F0
    jr jr_035_7E93

    ld d, $F0
    jr jr_035_7E99

    ld l, $F0
    jr nc, jr_035_7E9D

    ld d, $F0
    jr @+$46

    ld d, $F0
    jr jr_035_7EA7

    ld d, $F0
    jr jr_035_7EAB

    ld [$0CF0], sp
    ld b, [hl]
    ld [$0CF0], sp
    ld b, [hl]
    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_035_7EBB

    ld l, $F0
    jr nc, @+$48

    ld l, $F0
    jr nc, jr_035_7EB3

    ld e, [hl]
    ldh a, [$60]
    jr c, jr_035_7EE0

    ldh a, [$60]
    ld a, [hl-]
    ld d, $F0
    jr jr_035_7EC2

    ld d, $F0
    jr jr_035_7EC7

    ld d, $F0

jr_035_7E8F:
    jr jr_035_7ECD

    ld d, $F0

jr_035_7E93:
    jr @+$3F

    ld l, $F0
    jr nc, jr_035_7ED3

jr_035_7E99:
    ld l, $F0
    jr nc, jr_035_7ED3

jr_035_7E9D:
    ld e, [hl]
    ldh a, [$60]
    jr c, jr_035_7F00

    ldh a, [$60]
    ld a, [hl-]
    ld d, $F0

jr_035_7EA7:
    jr jr_035_7EE2

    ld d, $F0

jr_035_7EAB:
    jr jr_035_7EE7

    ld d, $F0
    jr @+$3E

    ld d, $F0

jr_035_7EB3:
    jr jr_035_7EF2

    ld l, $F0
    jr nc, @+$3C

    ld l, $F0

jr_035_7EBB:
    jr nc, @+$38

    ld e, [hl]
    ldh a, [$60]
    jr c, jr_035_7F20

jr_035_7EC2:
    ldh a, [$60]
    ld a, [hl-]
    ld d, $F0

jr_035_7EC7:
    jr jr_035_7F02

    ld d, $F0
    jr @+$3C

jr_035_7ECD:
    ld d, $F0
    jr @+$3E

    ld d, $F0

jr_035_7ED3:
    jr jr_035_7F12

    ld l, $F0
    jr nc, @+$3C

    ld l, $F0
    jr nc, @+$38

    ld e, [hl]
    ldh a, [$60]

jr_035_7EE0:
    jr c, jr_035_7F40

jr_035_7EE2:
    ldh a, [$60]
    ld a, [hl-]
    add b
    adc [hl]

jr_035_7EE7:
    ldh a, [$90]
    ld b, c
    ld l, $F0
    jr nc, jr_035_7F30

    ld d, $F0
    jr @+$43

jr_035_7EF2:
    ld d, $F0
    jr jr_035_7F38

    ld d, $F0
    jr jr_035_7F40

    ld d, $F0
    jr jr_035_7F42

    ld d, $F0

jr_035_7F00:
    jr jr_035_7F44

jr_035_7F02:
    ld d, $F0
    jr jr_035_7F4A

    ld d, $F0
    jr jr_035_7F52

    ld d, $F0
    jr jr_035_7F54

    ld d, $F0
    jr @+$47

jr_035_7F12:
    ld d, $F0
    jr jr_035_7F5C

    ld d, $F0
    jr jr_035_7F62

    ld d, $F0
    jr @+$4B

    ld d, $F0

jr_035_7F20:
    jr jr_035_7F68

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_035_7F6E

    ld d, $F0
    jr jr_035_7F70

    ld d, $F0

jr_035_7F30:
    jr @+$43

    ld d, $F0
    jr jr_035_7F78

    ld d, $F0

jr_035_7F38:
    jr jr_035_7F80

    ld d, $F0
    jr jr_035_7F82

    ld d, $F0

jr_035_7F40:
    jr jr_035_7F84

jr_035_7F42:
    ld d, $F0

jr_035_7F44:
    jr jr_035_7F8A

    ld d, $F0
    jr jr_035_7F92

jr_035_7F4A:
    ld d, $F0
    jr jr_035_7F94

    ld d, $F0
    jr jr_035_7F9A

jr_035_7F52:
    ld d, $F0

jr_035_7F54:
    jr jr_035_7F9C

    ld d, $F0
    jr @+$47

    ld d, $F0

jr_035_7F5C:
    jr jr_035_7FA4

    ld d, $F0
    jr nc, @+$43

jr_035_7F62:
    ld d, $F0
    jr jr_035_7FAA

    ld d, $F0

jr_035_7F68:
    jr jr_035_7FAC

    ld d, $F0
    jr @+$43

jr_035_7F6E:
    ld d, $F0

jr_035_7F70:
    jr @+$44

    ld d, $F0
    jr jr_035_7FBC

    ld d, $F0

jr_035_7F78:
    jr jr_035_7FBE

    ld d, $F0
    jr @+$44

    ld d, $F0

jr_035_7F80:
    jr jr_035_7FC6

jr_035_7F82:
    ld d, $F0

jr_035_7F84:
    jr jr_035_7FCE

    ld d, $F0
    jr @+$48

jr_035_7F8A:
    ld d, $F0
    jr @+$47

    ld d, $F0
    jr @+$48

jr_035_7F92:
    ld d, $F0

jr_035_7F94:
    jr jr_035_7FDE

    ld d, $F0
    jr @+$4B

jr_035_7F9A:
    ld d, $F0

jr_035_7F9C:
    jr jr_035_7FE7

    ld d, $F0
    jr jr_035_7FE8

    ld d, $F0

jr_035_7FA4:
    jr jr_035_7FEF

    ld d, $F0
    jr jr_035_7FF5

jr_035_7FAA:
    ld d, $F0

jr_035_7FAC:
    jr jr_035_7FF9

    ld [$18F0], sp
    ld c, e
    ld [$18F0], sp
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, l
    ld d, $F0

jr_035_7FBC:
    jr @+$4F

jr_035_7FBE:
    ld [$18F0], sp
    ld c, l
    ld [$18F0], sp
    ld c, l

jr_035_7FC6:
    db $10
    ldh a, [rNR23]
    ld c, l
    dec bc
    ldh a, [rNR23]
    ld c, l

jr_035_7FCE:
    ld [$0CF0], sp
    ld c, l
    ld [$0CF0], sp
    ld c, l
    dec bc
    ldh a, [rNR23]
    ld c, l
    dec bc
    ldh a, [rNR23]
    ld c, l

jr_035_7FDE:
    db $10
    ldh a, [$30]
    ld c, l
    jr z, @-$0E

    nop
    rst $38
    nop

jr_035_7FE7:
    nop

jr_035_7FE8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_035_7FEF:
    nop
    nop
    nop
    nop
    nop
    nop

jr_035_7FF5:
    nop
    nop
    nop
    nop

jr_035_7FF9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
