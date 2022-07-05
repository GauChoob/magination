; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

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
    jr z, jr_034_403B

    nop
    dec l
    jr nc, jr_034_4010

jr_034_4010:
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

jr_034_403B:
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
    ld a, [$0E00]
    nop
    jr jr_034_408F

jr_034_408F:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    dec h
    add b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec h
    add b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $8025
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    add b
    cp $00
    nop
    nop
    nop
    nop
    ld a, $07
    ld c, d
    ld c, $F3
    inc de
    ld [hl-], a
    ldh a, [rP1]
    and [hl]
    inc bc
    ld b, $F0
    jr @+$28

    ld b, $F0
    inc c
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
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
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06

jr_034_475B:
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
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
    or b
    daa
    ld e, [hl]
    ldh a, [$60]
    ld sp, $F05E
    ld h, b
    jr nc, jr_034_475B

    adc [hl]
    ldh a, [$C0]
    jr nc, jr_034_47F6

    ldh a, [$30]
    jr nc, jr_034_47FA

    ldh a, [$30]
    jr nc, jr_034_47FE

    ldh a, [$30]
    jr nc, @+$25

    ldh a, [rNR50]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_480A

    ldh a, [$30]

jr_034_47F6:
    jr nc, jr_034_480E

    ldh a, [$30]

jr_034_47FA:
    jr nc, jr_034_4812

    ldh a, [$30]

jr_034_47FE:
    jr nc, @+$25

    ldh a, [rNR50]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_481E

    ldh a, [$30]

jr_034_480A:
    jr nc, jr_034_4822

    ldh a, [$30]

jr_034_480E:
    jr nc, jr_034_4826

    ldh a, [$30]

jr_034_4812:
    jr nc, @+$25

    ldh a, [rNR50]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4832

    ldh a, [$30]

jr_034_481E:
    jr nc, jr_034_4836

    ldh a, [$30]

jr_034_4822:
    jr nc, jr_034_483A

    ldh a, [$30]

jr_034_4826:
    jr nc, @+$25

    ldh a, [rNR50]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4846

    ldh a, [$30]

jr_034_4832:
    jr nc, jr_034_484A

    ldh a, [$30]

jr_034_4836:
    jr nc, jr_034_484E

    ldh a, [$30]

jr_034_483A:
    jr nc, jr_034_485F

    ldh a, [rNR50]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$18

    ldh a, [$30]

jr_034_4846:
    jr nc, @+$18

    ldh a, [$30]

jr_034_484A:
    jr nc, @+$18

    ldh a, [$30]

jr_034_484E:
    jr nc, jr_034_4873

    ldh a, [rNR50]
    dec hl
    dec bc
    ldh a, [$0C]
    ld sp, $F016
    jr nc, jr_034_488C

    ld l, $F0
    jr nc, jr_034_488A

jr_034_485F:
    ld d, $F0
    jr nc, jr_034_488E

    ld l, $F0
    jr nc, @+$32

    ld d, $F0
    jr nc, jr_034_489B

    ld d, $F0
    jr nc, @+$32

    ld d, $F0
    jr nc, @+$32

jr_034_4873:
    inc hl
    ldh a, [rNR50]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4892

    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]

jr_034_488A:
    jr nc, @+$0D

jr_034_488C:
    ldh a, [$30]

jr_034_488E:
    jr nc, jr_034_48A2

    ldh a, [rNR23]

jr_034_4892:
    jr nc, jr_034_48AA

    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl

jr_034_489B:
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]

jr_034_48A2:
    jr nc, @+$0D

    ldh a, [$30]
    jr nc, jr_034_48BA

    ldh a, [rNR23]

jr_034_48AA:
    jr nc, jr_034_48C2

    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]

jr_034_48BA:
    jr nc, jr_034_48C7

    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [rOBP0]

jr_034_48C2:
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl

jr_034_48C7:
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_48D7

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [$30]
    dec hl
    ld d, $F0
    jr jr_034_4907

jr_034_48D7:
    dec bc
    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_48EF

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [$30]
    dec hl
    ld d, $F0
    jr jr_034_491F

jr_034_48EF:
    dec bc
    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4907

    ldh a, [rNR23]
    jr nc, jr_034_490B

    ldh a, [$30]
    dec hl
    ld d, $F0
    jr jr_034_4933

jr_034_4907:
    dec bc
    ldh a, [rOBP0]
    inc sp

jr_034_490B:
    dec bc
    ldh a, [$0C]
    inc l
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [$30]
    inc l
    ld d, $F0
    jr jr_034_494F

jr_034_491F:
    dec bc
    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4937

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [$30]
    dec hl

jr_034_4933:
    ld d, $F0
    jr jr_034_4967

jr_034_4937:
    dec bc
    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_494F

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [$30]
    dec hl
    ld d, $F0
    jr jr_034_497F

jr_034_494F:
    dec bc
    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4967

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [$30]
    dec hl
    ld d, $F0
    jr jr_034_4997

jr_034_4967:
    dec bc
    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_497F

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [$30]
    dec hl
    ld d, $F0
    jr jr_034_49AF

jr_034_497F:
    dec bc
    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4997

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [$30]
    dec hl
    ld d, $F0
    jr jr_034_49C7

jr_034_4997:
    dec bc
    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_49AF

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [$30]
    dec hl
    ld d, $F0
    jr @+$32

jr_034_49AF:
    dec bc
    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_49C7

    ldh a, [rNR23]
    jr nc, jr_034_49CB

    ldh a, [$30]
    dec hl
    ld d, $F0
    jr @+$2B

jr_034_49C7:
    dec bc
    ldh a, [rOBP0]
    add hl, hl

jr_034_49CB:
    ld d, $F0
    jr jr_034_49FA

    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    ld d, $F0
    jr @+$32

    dec bc
    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_49F3

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [$30]
    dec hl
    ld d, $F0
    jr jr_034_4A23

jr_034_49F3:
    dec bc
    ldh a, [rNR23]
    jr nc, jr_034_49FE

    ldh a, [$0C]

jr_034_49FA:
    jr nc, jr_034_4A02

    ldh a, [$0C]

jr_034_49FE:
    jr nc, jr_034_4A06

    ldh a, [$0C]

jr_034_4A02:
    jr nc, jr_034_4A0A

    ldh a, [$0C]

jr_034_4A06:
    jr nc, jr_034_4A0E

    ldh a, [$0C]

jr_034_4A0A:
    jr nc, jr_034_4A17

    ldh a, [$0C]

jr_034_4A0E:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_4A17:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_4A23:
    ld b, $F0
    inc c
    inc l
    dec bc
    ldh a, [$0C]
    add hl, hl
    dec bc
    ldh a, [rNR23]
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_4A6E

    ldh a, [$0C]
    jr nc, jr_034_4A72

    ldh a, [$0C]

jr_034_4A6E:
    jr nc, jr_034_4A76

    ldh a, [$0C]

jr_034_4A72:
    jr nc, jr_034_4A7A

    ldh a, [$0C]

jr_034_4A76:
    jr nc, jr_034_4A7E

    ldh a, [$0C]

jr_034_4A7A:
    jr nc, jr_034_4A87

    ldh a, [$0C]

jr_034_4A7E:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_4A87:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    dec bc
    ldh a, [$0C]
    add hl, hl
    dec bc
    ldh a, [rNR23]
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_4ADE

    ldh a, [$0C]
    jr nc, jr_034_4AE2

    ldh a, [$0C]

jr_034_4ADE:
    jr nc, jr_034_4AE6

    ldh a, [$0C]

jr_034_4AE2:
    jr nc, jr_034_4AEA

    ldh a, [$0C]

jr_034_4AE6:
    jr nc, jr_034_4AEE

    ldh a, [$0C]

jr_034_4AEA:
    jr nc, jr_034_4AF7

    ldh a, [$0C]

jr_034_4AEE:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_4AF7:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    dec bc
    ldh a, [$0C]
    add hl, hl
    dec bc
    ldh a, [rNR23]
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_4B4E

    ldh a, [$0C]
    jr nc, jr_034_4B52

    ldh a, [$0C]

jr_034_4B4E:
    jr nc, jr_034_4B56

    ldh a, [$0C]

jr_034_4B52:
    jr nc, jr_034_4B5A

    ldh a, [$0C]

jr_034_4B56:
    jr nc, jr_034_4B5E

    ldh a, [$0C]

jr_034_4B5A:
    jr nc, jr_034_4B67

    ldh a, [$0C]

jr_034_4B5E:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_4B67:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    dec bc
    ldh a, [$0C]
    add hl, hl
    dec bc
    ldh a, [rNR23]
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_4BA2

    ldh a, [$0C]
    jr nc, jr_034_4BA6

    ldh a, [$0C]

jr_034_4BA2:
    jr nc, jr_034_4BAA

    ldh a, [$0C]

jr_034_4BA6:
    jr nc, jr_034_4BAE

    ldh a, [$0C]

jr_034_4BAA:
    jr nc, @+$0D

    ldh a, [$0C]

jr_034_4BAE:
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_4BBE

    ldh a, [$0C]
    jr nc, jr_034_4BC2

    ldh a, [$0C]

jr_034_4BBE:
    jr nc, jr_034_4BC6

    ldh a, [$0C]

jr_034_4BC2:
    jr nc, jr_034_4BCA

    ldh a, [$0C]

jr_034_4BC6:
    jr nc, jr_034_4BCE

    ldh a, [$0C]

jr_034_4BCA:
    jr nc, jr_034_4BD7

    ldh a, [$0C]

jr_034_4BCE:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_4BD7:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    dec bc
    ldh a, [$0C]
    add hl, hl
    dec bc
    ldh a, [rNR23]
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_4C2E

    ldh a, [$0C]
    jr nc, jr_034_4C32

    ldh a, [$0C]

jr_034_4C2E:
    jr nc, jr_034_4C36

    ldh a, [$0C]

jr_034_4C32:
    jr nc, jr_034_4C3A

    ldh a, [$0C]

jr_034_4C36:
    jr nc, jr_034_4C3E

    ldh a, [$0C]

jr_034_4C3A:
    jr nc, jr_034_4C47

    ldh a, [$0C]

jr_034_4C3E:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_4C47:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    dec bc
    ldh a, [$0C]
    add hl, hl
    dec bc
    ldh a, [rNR23]
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_4C9E

    ldh a, [$0C]
    jr nc, jr_034_4CA2

    ldh a, [$0C]

jr_034_4C9E:
    jr nc, jr_034_4CA6

    ldh a, [$0C]

jr_034_4CA2:
    jr nc, jr_034_4CAA

    ldh a, [$0C]

jr_034_4CA6:
    jr nc, jr_034_4CAE

    ldh a, [$0C]

jr_034_4CAA:
    jr nc, jr_034_4CB7

    ldh a, [$0C]

jr_034_4CAE:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_4CB7:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    dec bc
    ldh a, [$0C]
    add hl, hl
    dec bc
    ldh a, [rNR23]
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_4D0E

    ldh a, [$0C]
    jr nc, jr_034_4D12

    ldh a, [$0C]

jr_034_4D0E:
    jr nc, jr_034_4D16

    ldh a, [$0C]

jr_034_4D12:
    jr nc, jr_034_4D1A

    ldh a, [$0C]

jr_034_4D16:
    jr nc, jr_034_4D1E

    ldh a, [$0C]

jr_034_4D1A:
    jr nc, jr_034_4D27

    ldh a, [$0C]

jr_034_4D1E:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_4D27:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    dec bc
    ldh a, [$0C]
    add hl, hl
    dec bc
    ldh a, [rNR23]
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4D5E

    ldh a, [$0C]
    jr nc, jr_034_4D62

    ldh a, [$0C]

jr_034_4D5E:
    jr nc, jr_034_4D66

    ldh a, [$0C]

jr_034_4D62:
    jr nc, jr_034_4D6A

    ldh a, [$0C]

jr_034_4D66:
    jr nc, jr_034_4D6E

    ldh a, [$0C]

jr_034_4D6A:
    jr nc, jr_034_4D72

    ldh a, [$0C]

jr_034_4D6E:
    jr nc, @+$0D

    ldh a, [$0C]

jr_034_4D72:
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4D7E

    ldh a, [$0C]
    jr nc, jr_034_4D82

    ldh a, [$0C]

jr_034_4D7E:
    jr nc, jr_034_4D86

    ldh a, [$0C]

jr_034_4D82:
    jr nc, jr_034_4D8A

    ldh a, [$0C]

jr_034_4D86:
    jr nc, jr_034_4D8E

    ldh a, [$0C]

jr_034_4D8A:
    jr nc, jr_034_4D92

    ldh a, [$0C]

jr_034_4D8E:
    jr nc, jr_034_4D96

    ldh a, [$0C]

jr_034_4D92:
    jr nc, jr_034_4D9A

    ldh a, [$0C]

jr_034_4D96:
    jr nc, jr_034_4D9E

    ldh a, [$0C]

jr_034_4D9A:
    jr nc, jr_034_4DA2

    ldh a, [$0C]

jr_034_4D9E:
    jr nc, jr_034_4DA6

    ldh a, [$0C]

jr_034_4DA2:
    jr nc, jr_034_4DAA

    ldh a, [$0C]

jr_034_4DA6:
    jr nc, jr_034_4DAE

    ldh a, [$0C]

jr_034_4DAA:
    jr nc, jr_034_4DB2

    ldh a, [$0C]

jr_034_4DAE:
    jr nc, @+$0D

    ldh a, [$0C]

jr_034_4DB2:
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4DBE

    ldh a, [$0C]
    jr nc, jr_034_4DC2

    ldh a, [$0C]

jr_034_4DBE:
    jr nc, jr_034_4DC6

    ldh a, [$0C]

jr_034_4DC2:
    jr nc, jr_034_4DCA

    ldh a, [$0C]

jr_034_4DC6:
    jr nc, jr_034_4DCE

    ldh a, [$0C]

jr_034_4DCA:
    jr nc, jr_034_4DD2

    ldh a, [$0C]

jr_034_4DCE:
    jr nc, jr_034_4DD6

    ldh a, [$0C]

jr_034_4DD2:
    jr nc, jr_034_4DDA

    ldh a, [$0C]

jr_034_4DD6:
    jr nc, jr_034_4DDE

    ldh a, [$0C]

jr_034_4DDA:
    jr nc, jr_034_4DE2

    ldh a, [$0C]

jr_034_4DDE:
    jr nc, jr_034_4DE6

    ldh a, [$0C]

jr_034_4DE2:
    jr nc, jr_034_4DEA

    ldh a, [$0C]

jr_034_4DE6:
    jr nc, jr_034_4DEE

    ldh a, [$0C]

jr_034_4DEA:
    jr nc, jr_034_4DF2

    ldh a, [$0C]

jr_034_4DEE:
    jr nc, @+$0D

    ldh a, [$0C]

jr_034_4DF2:
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4DFE

    ldh a, [$0C]
    jr nc, jr_034_4E02

    ldh a, [$0C]

jr_034_4DFE:
    jr nc, jr_034_4E06

    ldh a, [$0C]

jr_034_4E02:
    jr nc, jr_034_4E0A

    ldh a, [$0C]

jr_034_4E06:
    jr nc, jr_034_4E0E

    ldh a, [$0C]

jr_034_4E0A:
    jr nc, jr_034_4E12

    ldh a, [$0C]

jr_034_4E0E:
    jr nc, jr_034_4E16

    ldh a, [$0C]

jr_034_4E12:
    jr nc, jr_034_4E1A

    ldh a, [$0C]

jr_034_4E16:
    jr nc, jr_034_4E1E

    ldh a, [$0C]

jr_034_4E1A:
    jr nc, jr_034_4E22

    ldh a, [$0C]

jr_034_4E1E:
    jr nc, jr_034_4E26

    ldh a, [$0C]

jr_034_4E22:
    jr nc, jr_034_4E2A

    ldh a, [$0C]

jr_034_4E26:
    jr nc, jr_034_4E2E

    ldh a, [$0C]

jr_034_4E2A:
    jr nc, jr_034_4E32

    ldh a, [$0C]

jr_034_4E2E:
    jr nc, @+$0D

    ldh a, [$0C]

jr_034_4E32:
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4E3E

    ldh a, [$0C]
    jr nc, jr_034_4E42

    ldh a, [$0C]

jr_034_4E3E:
    jr nc, jr_034_4E46

    ldh a, [$0C]

jr_034_4E42:
    jr nc, jr_034_4E4A

    ldh a, [$0C]

jr_034_4E46:
    jr nc, jr_034_4E4E

    ldh a, [$0C]

jr_034_4E4A:
    jr nc, jr_034_4E52

    ldh a, [$0C]

jr_034_4E4E:
    jr nc, jr_034_4E56

    ldh a, [$0C]

jr_034_4E52:
    jr nc, jr_034_4E5A

    ldh a, [$0C]

jr_034_4E56:
    jr nc, jr_034_4E5E

    ldh a, [$0C]

jr_034_4E5A:
    jr nc, jr_034_4E62

    ldh a, [$0C]

jr_034_4E5E:
    jr nc, jr_034_4E66

    ldh a, [$0C]

jr_034_4E62:
    jr nc, jr_034_4E6A

    ldh a, [$0C]

jr_034_4E66:
    jr nc, jr_034_4E6E

    ldh a, [$0C]

jr_034_4E6A:
    jr nc, jr_034_4E72

    ldh a, [$0C]

jr_034_4E6E:
    jr nc, @+$0D

    ldh a, [$0C]

jr_034_4E72:
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4E7E

    ldh a, [$0C]
    jr nc, jr_034_4E82

    ldh a, [$0C]

jr_034_4E7E:
    jr nc, jr_034_4E86

    ldh a, [$0C]

jr_034_4E82:
    jr nc, jr_034_4E8A

    ldh a, [$0C]

jr_034_4E86:
    jr nc, jr_034_4E8E

    ldh a, [$0C]

jr_034_4E8A:
    jr nc, jr_034_4E92

    ldh a, [$0C]

jr_034_4E8E:
    jr nc, jr_034_4E96

    ldh a, [$0C]

jr_034_4E92:
    jr nc, jr_034_4E9A

    ldh a, [$0C]

jr_034_4E96:
    jr nc, jr_034_4E9E

    ldh a, [$0C]

jr_034_4E9A:
    jr nc, jr_034_4EA2

    ldh a, [$0C]

jr_034_4E9E:
    jr nc, jr_034_4EA6

    ldh a, [$0C]

jr_034_4EA2:
    jr nc, jr_034_4EAA

    ldh a, [$0C]

jr_034_4EA6:
    jr nc, jr_034_4EAE

    ldh a, [$0C]

jr_034_4EAA:
    jr nc, jr_034_4EB2

    ldh a, [$0C]

jr_034_4EAE:
    jr nc, @+$0D

    ldh a, [$0C]

jr_034_4EB2:
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4EBE

    ldh a, [$0C]
    jr nc, jr_034_4EC2

    ldh a, [$0C]

jr_034_4EBE:
    jr nc, jr_034_4EC6

    ldh a, [$0C]

jr_034_4EC2:
    jr nc, jr_034_4ECA

    ldh a, [$0C]

jr_034_4EC6:
    jr nc, jr_034_4ECE

    ldh a, [$0C]

jr_034_4ECA:
    jr nc, jr_034_4ED2

    ldh a, [$0C]

jr_034_4ECE:
    jr nc, jr_034_4ED6

    ldh a, [$0C]

jr_034_4ED2:
    jr nc, jr_034_4EDA

    ldh a, [$0C]

jr_034_4ED6:
    jr nc, jr_034_4EDE

    ldh a, [$0C]

jr_034_4EDA:
    jr nc, jr_034_4EE2

    ldh a, [$0C]

jr_034_4EDE:
    jr nc, jr_034_4EE6

    ldh a, [$0C]

jr_034_4EE2:
    jr nc, jr_034_4EEA

    ldh a, [$0C]

jr_034_4EE6:
    jr nc, jr_034_4EEE

    ldh a, [$0C]

jr_034_4EEA:
    jr nc, jr_034_4EF2

    ldh a, [$0C]

jr_034_4EEE:
    jr nc, jr_034_4EFB

    ldh a, [$0C]

jr_034_4EF2:
    dec hl
    dec bc
    ldh a, [$0C]
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_4EFB:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    dec bc
    ldh a, [$0C]
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_034_4F3E

    ldh a, [$0C]
    jr nc, jr_034_4F42

    ldh a, [$0C]

jr_034_4F3E:
    jr nc, jr_034_4F46

    ldh a, [$0C]

jr_034_4F42:
    jr nc, jr_034_4F4A

    ldh a, [$0C]

jr_034_4F46:
    jr nc, jr_034_4F4E

    ldh a, [$0C]

jr_034_4F4A:
    jr nc, jr_034_4F52

    ldh a, [$0C]

jr_034_4F4E:
    jr nc, jr_034_4F56

    ldh a, [$0C]

jr_034_4F52:
    jr nc, jr_034_4F5A

    ldh a, [$0C]

jr_034_4F56:
    jr nc, jr_034_4F5E

    ldh a, [$0C]

jr_034_4F5A:
    jr nc, jr_034_4F62

    ldh a, [$0C]

jr_034_4F5E:
    jr nc, jr_034_4F66

    ldh a, [$0C]

jr_034_4F62:
    jr nc, jr_034_4F6A

    ldh a, [$0C]

jr_034_4F66:
    jr nc, jr_034_4F6E

    ldh a, [$0C]

jr_034_4F6A:
    jr nc, jr_034_4F72

    ldh a, [$0C]

jr_034_4F6E:
    jr nc, jr_034_4F76

    ldh a, [$0C]

jr_034_4F72:
    jr nc, jr_034_4F7A

    ldh a, [rP1]

jr_034_4F76:
    rst $38
    ldh a, [rP1]
    cp h

jr_034_4F7A:
    ld d, c
    ld l, $F0
    inc h
    inc a
    ld a, [bc]
    ldh a, [$0C]
    ld b, e
    ld l, $F0
    jr nc, jr_034_4FC4

    ld d, $F0
    inc h
    dec a
    dec bc
    ldh a, [$0C]
    ld b, h
    ld a, [hl+]
    ldh a, [$30]
    inc a
    ld d, $F0
    jr nc, jr_034_4FD3

    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    inc a
    ld l, $F0
    jr nc, jr_034_4FE2

    ld a, [hl+]
    ldh a, [$30]
    ld a, $0B
    ldh a, [rNR50]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, l
    ld e, d
    ldh a, [$60]
    ld a, $2E
    ldh a, [$30]
    inc a
    dec bc
    ldh a, [rNR50]
    ld b, e
    dec bc

jr_034_4FC4:
    ldh a, [$0C]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    inc a
    ld l, $F0
    jr nc, @+$40

    dec bc
    ldh a, [rNR50]
    ld b, l

jr_034_4FD3:
    dec bc
    ldh a, [$0C]
    ld b, l
    ld e, d
    ldh a, [$60]
    ld b, l
    ld d, $F0
    jr @+$49

    dec bc
    ldh a, [$0C]

jr_034_4FE2:
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    add b
    adc d
    ldh a, [$90]
    inc a
    ld l, $F0
    jr nc, @+$40

    dec bc
    ldh a, [rNR50]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld a, $2E
    ldh a, [$30]
    inc a
    dec bc
    ldh a, [rNR50]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    inc a
    ld l, $F0
    jr nc, jr_034_504D

    dec bc
    ldh a, [$30]
    ld b, h
    ld l, $F0
    jr nc, @+$45

    dec bc
    ldh a, [$30]
    ld b, e
    ld l, $F0
    jr nc, jr_034_505C

    dec bc
    ldh a, [$30]
    inc a
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    inc a
    inc hl
    ldh a, [$30]
    inc a
    ld a, [hl+]
    ldh a, [$30]
    jr c, @+$0D

    ldh a, [rNR50]
    ccf
    dec bc
    ldh a, [$0C]
    ccf
    ld e, d
    ldh a, [$60]
    jr c, @+$30

    ldh a, [$30]
    scf
    dec bc

jr_034_504D:
    ldh a, [rNR50]
    ccf
    dec bc
    ldh a, [$0C]
    ccf
    ld e, d
    ldh a, [$60]
    scf
    ld l, $F0
    jr nc, jr_034_5094

jr_034_505C:
    dec bc
    ldh a, [rNR50]
    ccf
    dec bc
    ldh a, [$0C]
    ccf
    ld b, [hl]
    ldh a, [$60]
    ccf
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    add b
    adc d
    ldh a, [$90]
    ld b, e
    ld d, $F0
    jr jr_034_50B4

    ld d, $F0
    jr jr_034_50B9

    dec bc
    ldh a, [rNR50]
    ccf
    dec bc
    ldh a, [$0C]
    ccf
    ld e, d
    ldh a, [$60]
    jr c, @+$30

    ldh a, [$30]
    scf
    dec bc
    ldh a, [rNR50]

jr_034_5094:
    ccf
    dec bc
    ldh a, [$0C]
    ccf
    ld e, [hl]
    ldh a, [$60]
    scf
    ld l, $F0
    jr nc, jr_034_50D9

    dec bc
    ldh a, [rNR50]
    ccf
    dec bc
    ldh a, [$0C]
    ccf
    ld b, [hl]
    ldh a, [$60]
    ld a, $0B
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [$0C]

jr_034_50B4:
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    inc a

jr_034_50B9:
    ld l, $F0
    jr nc, jr_034_50F9

    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    inc a
    ld e, [hl]
    ldh a, [$60]
    ld c, d
    dec bc
    ldh a, [rNR50]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, c

jr_034_50D9:
    ld e, [hl]
    ldh a, [$60]
    ld c, d
    ld l, $F0
    jr nc, jr_034_5129

    dec bc
    ldh a, [rNR50]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, a
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld l, $F0
    jr nc, @+$4C

    dec bc
    ldh a, [rNR50]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, c

jr_034_50F9:
    ld e, d
    ldh a, [$60]
    ld d, c
    ld d, $F0
    jr @+$55

    dec bc
    ldh a, [$0C]
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    add b
    adc d
    ldh a, [$90]
    ld c, b
    ld l, $F0
    jr nc, jr_034_515C

    dec bc
    ldh a, [rNR50]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, c
    ld e, [hl]
    ldh a, [$60]
    ld c, d
    ld l, $F0
    jr nc, jr_034_516A

    dec bc
    ldh a, [rNR50]
    ld c, a
    dec bc
    ldh a, [$0C]

jr_034_5129:
    ld c, a
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld l, $F0
    jr nc, jr_034_517C

    dec bc
    ldh a, [rNR50]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld d, b
    ld l, $F0
    jr nc, jr_034_518D

    dec bc
    ldh a, [$30]
    ld c, a
    ld l, $F0
    jr nc, jr_034_518E

    dec bc
    ldh a, [$30]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, b
    ld d, $F0

jr_034_515C:
    jr nc, jr_034_519A

    ld d, $F0
    jr jr_034_51A0

    ld d, $F0
    jr jr_034_51A5

    inc hl
    ldh a, [rNR50]
    ld b, e

jr_034_516A:
    inc hl
    ldh a, [rNR50]
    ld c, b
    ld d, $F0
    jr jr_034_51BD

    inc hl
    ldh a, [rNR50]
    ld c, d
    inc hl
    ldh a, [rNR50]
    ld c, b
    ld d, $F0

jr_034_517C:
    jr jr_034_51C2

    inc hl
    ldh a, [rNR50]
    ld b, e
    inc hl
    ldh a, [rNR50]
    ld b, c
    ld d, $F0
    jr jr_034_51CD

    ld b, [hl]
    ldh a, [rOBP0]

jr_034_518D:
    inc a

jr_034_518E:
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    inc hl
    ldh a, [rNR50]
    ld b, e

jr_034_519A:
    inc hl
    ldh a, [rNR50]
    ld c, b
    ld d, $F0

jr_034_51A0:
    jr jr_034_51ED

    inc hl
    ldh a, [rNR50]

jr_034_51A5:
    ld c, d
    inc hl
    ldh a, [rNR50]
    ld c, b
    ld d, $F0
    jr jr_034_51F9

    inc hl
    ldh a, [rNR50]
    ld c, d
    inc hl
    ldh a, [rNR50]
    ld c, b
    ld d, $F0
    jr @+$4C

    ld b, d
    ldh a, [rOBP0]

jr_034_51BD:
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d

jr_034_51C2:
    dec bc
    ldh a, [$0C]
    ld c, e
    inc hl
    ldh a, [rNR50]
    ld c, l
    inc hl
    ldh a, [rNR50]

jr_034_51CD:
    ld c, a
    ld d, $F0
    jr jr_034_521D

    inc hl
    ldh a, [rNR50]
    ld c, d
    inc hl
    ldh a, [rNR50]
    ld c, b
    ld d, $F0
    jr jr_034_5222

    inc hl
    ldh a, [rNR50]
    ld b, e
    inc hl
    ldh a, [rNR50]
    ld b, c
    ld d, $F0
    jr jr_034_522D

    ld b, d
    ldh a, [rOBP0]

jr_034_51ED:
    inc a
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    inc hl
    ldh a, [rNR50]

jr_034_51F9:
    ld b, e
    inc hl
    ldh a, [rNR50]
    ld c, b
    ld d, $F0
    jr jr_034_524D

    inc hl
    ldh a, [rNR50]
    ld c, d
    inc hl
    ldh a, [rNR50]
    ld c, b
    ld d, $F0
    jr jr_034_5252

    inc hl
    ldh a, [rNR50]
    ld b, c
    inc hl
    ldh a, [rNR50]
    ld b, e
    ld d, $F0
    jr jr_034_5256

    ld b, d
    ldh a, [rOBP0]

jr_034_521D:
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d

jr_034_5222:
    dec bc
    ldh a, [$0C]
    ld c, e
    inc hl
    ldh a, [rNR50]
    ld c, a
    inc hl
    ldh a, [rNR50]

jr_034_522D:
    ld d, h
    ld d, $F0
    jr jr_034_5289

    inc hl
    ldh a, [rNR50]
    ld d, [hl]
    inc hl
    ldh a, [rNR50]
    ld d, h
    ld d, $F0
    jr jr_034_528E

    inc hl
    ldh a, [rNR50]
    ld c, a
    inc hl
    ldh a, [rNR50]
    ld c, l
    ld d, $F0
    jr jr_034_5299

    ld b, d
    ldh a, [rOBP0]

jr_034_524D:
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d

jr_034_5252:
    dec bc
    ldh a, [$0C]
    ld c, e

jr_034_5256:
    inc hl
    ldh a, [rNR50]
    ld c, a
    inc hl
    ldh a, [rNR50]
    ld d, h
    ld d, $F0
    jr jr_034_52B9

    inc hl
    ldh a, [rNR50]
    ld d, [hl]
    inc hl
    ldh a, [rNR50]
    ld d, h
    ld d, $F0
    jr jr_034_52C5

    inc hl
    ldh a, [rNR50]
    ld d, [hl]
    inc hl
    ldh a, [rNR50]
    ld d, h
    ld d, $F0
    jr @+$58

    ld b, d
    ldh a, [rOBP0]
    ld d, h
    dec bc
    ldh a, [$0C]
    ld d, [hl]
    dec bc
    ldh a, [$0C]
    ld d, a
    inc hl
    ldh a, [rNR50]

jr_034_5289:
    ld e, c
    inc hl
    ldh a, [rNR50]
    ld e, e

jr_034_528E:
    ld d, $F0
    jr jr_034_52E9

    inc hl
    ldh a, [rNR50]
    ld d, [hl]
    inc hl
    ldh a, [rNR50]

jr_034_5299:
    ld d, h
    ld d, $F0
    jr jr_034_52EE

    inc hl
    ldh a, [rNR50]
    ld c, a
    inc hl
    ldh a, [rNR50]
    ld c, l
    ld d, $F0
    jr @+$51

    ld b, d
    ldh a, [rOBP0]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    inc hl
    ldh a, [rNR50]

jr_034_52B9:
    ld c, a
    inc hl
    ldh a, [rNR50]
    ld d, h
    ld d, $F0
    jr jr_034_5319

    inc hl
    ldh a, [rNR50]

jr_034_52C5:
    ld d, [hl]
    inc hl
    ldh a, [rNR50]
    ld d, h
    ld d, $F0
    jr jr_034_531E

    inc hl
    ldh a, [rNR50]
    ld c, l
    inc hl
    ldh a, [rNR50]
    ld c, a
    ld d, $F0
    jr jr_034_5322

    ld b, d
    ldh a, [rOBP0]
    inc a
    ld d, $F0
    jr jr_034_531F

    dec bc
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [$0C]

jr_034_52E9:
    ld b, h
    dec sp
    ldh a, [rOBP0]
    ld b, h

jr_034_52EE:
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, h
    ld d, $F0
    jr jr_034_533B

    ld d, $F0
    jr jr_034_5341

    dec bc
    ldh a, [rNR50]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, b
    ld e, d
    ldh a, [$60]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [rNR50]

jr_034_5319:
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, h

jr_034_531E:
    dec sp

jr_034_531F:
    ldh a, [rOBP0]
    ld b, h

jr_034_5322:
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, h
    ld d, $F0
    jr jr_034_536F

    ld d, $F0
    jr @+$45

    dec bc
    ldh a, [rNR50]
    ld b, e
    dec bc
    ldh a, [$0C]
    inc a
    ld e, d

jr_034_533B:
    ldh a, [$60]
    inc a
    dec bc
    ldh a, [rNR23]

jr_034_5341:
    inc a
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, h
    ld b, d
    ldh a, [rOBP0]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, h
    ld d, $F0
    jr jr_034_53A3

    ld d, $F0
    jr jr_034_53A9

    dec bc
    ldh a, [rNR50]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, b
    ld e, d

jr_034_536F:
    ldh a, [$60]
    ld c, b
    ld d, $F0
    jr jr_034_53B2

    ld d, $F0
    jr @+$3F

    dec bc
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, h
    ld l, $F0
    jr nc, @+$45

    dec bc
    ldh a, [$30]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    inc a
    ld d, $F0
    jr nc, jr_034_53DA

    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc

jr_034_53A3:
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]

jr_034_53A9:
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    inc a
    ld a, [hl+]
    ldh a, [$30]
    inc a

jr_034_53B2:
    ld a, [hl+]
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    cp a
    ld d, b
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    ld l, $F0
    jr nc, jr_034_540B

    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld c, c
    ld l, $F0
    jr nc, jr_034_5419

jr_034_53DA:
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    ld d, $F0
    jr jr_034_5430

    ld d, $F0
    jr jr_034_5436

    ld l, $F0
    ld h, b
    dec [hl]
    dec bc
    ldh a, [rNR50]
    inc a
    ld b, $F0
    inc c
    inc a
    ld e, [hl]
    ldh a, [$60]
    dec [hl]
    ld l, $F0
    jr nc, jr_034_5436

    ld b, $F0
    inc h
    inc a
    ld b, $F0
    inc c
    inc a
    ld e, [hl]

jr_034_540B:
    ldh a, [$60]
    inc [hl]
    ld l, $F0
    jr nc, jr_034_5447

    dec bc
    ldh a, [rNR50]
    inc a
    ld b, $F0
    inc c

jr_034_5419:
    inc a
    ld b, [hl]
    ldh a, [$60]
    inc a
    ld d, $F0
    jr @+$40

    ld d, $F0
    jr @+$42

    add b
    adc [hl]
    ldh a, [$90]
    inc [hl]
    ld l, $F0
    jr nc, @+$37

    dec bc

jr_034_5430:
    ldh a, [rNR50]
    inc a
    ld b, $F0
    inc c

jr_034_5436:
    inc a
    ld e, [hl]
    ldh a, [$60]
    dec [hl]
    ld l, $F0
    jr nc, jr_034_5473

    dec bc
    ldh a, [rNR50]
    inc a
    ld b, $F0
    inc c
    inc a

jr_034_5447:
    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    ld l, $F0
    jr nc, @+$37

    ld b, $F0
    jr nc, @+$37

    ld l, $F0
    jr nc, jr_034_548E

    ld b, $F0
    jr nc, @+$39

    ld d, $F0
    jr jr_034_5491

    ld d, $F0
    jr jr_034_5497

    ld b, $F0
    jr nc, jr_034_549B

    ld d, $F0
    jr nc, jr_034_549F

    dec bc
    ldh a, [$30]
    inc [hl]
    ld d, $F0
    jr nc, jr_034_54B0

jr_034_5473:
    ld b, $F0
    inc h
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, [hl]
    ldh a, [$60]
    dec a
    ld l, $F0
    jr nc, jr_034_54BF

    ld b, $F0
    inc h
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld e, [hl]
    ldh a, [$60]

jr_034_548E:
    inc a
    ld l, $F0

jr_034_5491:
    jr nc, jr_034_54D0

    dec bc
    ldh a, [rNR50]
    ld b, h

jr_034_5497:
    ld b, $F0
    inc c
    ld b, h

jr_034_549B:
    ld d, e
    ldh a, [$60]
    ld b, h

jr_034_549F:
    inc hl
    ldh a, [$30]
    ld b, e
    dec sp
    ldh a, [rOBP0]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [rNR23]
    ld a, $0B

jr_034_54B0:
    ldh a, [rNR23]
    inc a
    ld d, $F0
    jr nc, jr_034_54F4

    dec bc
    ldh a, [rNR50]
    ld b, h
    ld b, $F0
    inc c
    ld b, h

jr_034_54BF:
    ld d, e
    ldh a, [$60]
    dec a
    ld l, $F0
    jr nc, jr_034_5503

    dec bc
    ldh a, [rNR50]
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld d, e

jr_034_54D0:
    ldh a, [$60]
    inc a
    ld l, $F0
    jr nc, jr_034_5514

    dec bc
    ldh a, [rNR50]
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld d, e
    ldh a, [$60]
    ld b, h
    ld d, $F0
    jr @+$48

    ld d, $F0
    jr jr_034_5533

    ld b, [hl]
    ldh a, [rOBP0]
    ld c, d
    ld d, $F0
    jr jr_034_553B

    ld e, [hl]

jr_034_54F4:
    ldh a, [$60]
    ld b, c
    dec bc
    ldh a, [rNR50]
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c

jr_034_5503:
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc

jr_034_5514:
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld d, c
    ld d, $F0
    jr nc, jr_034_555F

    dec bc
    ldh a, [rNR50]
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b

jr_034_5533:
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b

jr_034_553B:
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld c, a
    ld d, $F0
    jr nc, @+$43

    dec bc
    ldh a, [rNR50]
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, l

jr_034_555F:
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld d, c
    ld d, $F0
    jr nc, jr_034_55AF

    dec bc
    ldh a, [$30]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    ld a, [hl+]
    ldh a, [$30]
    ld b, b
    ld l, $F0
    jr nc, jr_034_55CC

    dec bc
    ldh a, [rNR50]
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld d, c

jr_034_55AF:
    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_034_55F7

    dec bc
    ldh a, [rNR50]
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc

jr_034_55CC:
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld c, a
    ld d, $F0
    jr jr_034_561F

    ld d, $F0
    jr @+$43

    dec bc
    ldh a, [rNR50]
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld l, $F0
    jr nc, jr_034_5636

    dec bc
    ldh a, [$30]
    ld b, a
    ld l, $F0
    jr nc, jr_034_563F

jr_034_55F7:
    dec bc
    ldh a, [$30]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, b
    ld l, $F0
    ld l, h
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e

jr_034_561F:
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_034_566F

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_034_5636:
    ld d, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e

jr_034_563F:
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    jr @+$43

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    jr jr_034_56A6

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a

jr_034_566F:
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_034_56BB

    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_034_56DF

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_034_56A6:
    ld d, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    jr @+$43

    ld b, $F0
    inc c
    ld b, h

jr_034_56BB:
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    jr jr_034_5716

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a

jr_034_56DF:
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_034_572B

    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_034_574F

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_034_5716:
    ld d, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    jr @+$43

    ld b, $F0
    inc c
    ld b, h

jr_034_572B:
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    jr jr_034_5786

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a

jr_034_574F:
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_034_579B

    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_034_57BF

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_034_5786:
    ld d, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    jr @+$43

    ld b, $F0
    inc c
    ld b, h

jr_034_579B:
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_034_57EF

    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b

jr_034_57BF:
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_034_580B

    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_034_582F

    ld b, $F0
    inc c
    ld c, b

jr_034_57EF:
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    jr @+$43

    ld b, $F0
    inc c
    ld b, h

jr_034_580B:
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    jr jr_034_5866

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a

jr_034_582F:
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_034_587B

    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_034_589F

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_034_5866:
    ld d, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    jr @+$43

    ld b, $F0
    inc c
    ld b, h

jr_034_587B:
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    jr jr_034_58D6

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a

jr_034_589F:
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_034_58EB

    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_034_590F

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_034_58D6:
    ld d, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    jr @+$43

    ld b, $F0
    inc c
    ld b, h

jr_034_58EB:
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    jr jr_034_5946

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a

jr_034_590F:
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_034_595B

    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_034_597F

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_034_5946:
    ld d, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    jr jr_034_5998

    ld b, $F0
    inc c
    ld b, h

jr_034_595B:
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_034_59AF

    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b

jr_034_597F:
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc h
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld c, c
    dec bc

jr_034_5998:
    ldh a, [rNR23]
    ld c, l
    dec bc
    ldh a, [rNR23]
    ld c, c
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b

jr_034_59AF:
    ld b, $F0
    inc c
    ld d, l
    ld b, $F0
    inc h
    ccf
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc h
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld c, c
    dec bc
    ldh a, [rNR23]
    ld c, l
    dec bc
    ldh a, [rNR23]
    ld c, c
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, l
    ld b, $F0
    inc h
    ccf
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc h
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld c, c
    dec bc
    ldh a, [rNR23]
    ld c, l
    dec bc
    ldh a, [rNR23]
    ld c, c
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, l
    ld b, $F0
    inc h
    ccf
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc h
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld c, c
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, a
    dec bc
    ldh a, [$30]
    ccf
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    nop
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
    jr z, jr_034_5AFE

    nop
    dec l
    jr nc, jr_034_5AD3

jr_034_5AD3:
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

jr_034_5AFE:
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

jr_034_5B1A:
    nop
    nop
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop

jr_034_5B24:
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

jr_034_5B38:
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
    ld a, [$0E00]
    nop
    jr jr_034_5B52

jr_034_5B52:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    jr jr_034_5B1A

    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    jr jr_034_5B24

    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $C018
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_034_5B38

    cp $00
    nop
    nop
    nop
    nop
    ld a, $03
    ld l, [hl]
    rlca
    sub d
    add hl, bc
    ld b, h
    ldh [rP1], a
    and [hl]
    inc bc
    ld b, $E0
    jr nc, jr_034_5BB3

    ld b, $E0
    jr jr_034_5BB7

    ld b, $E0
    jr jr_034_5BBB

    ld b, $E0
    jr nc, jr_034_5BBF

    ld b, $E0
    jr jr_034_5BC3

    ld b, $E0
    jr jr_034_5BC7

    ld b, $E0
    jr nc, jr_034_5BCB

    ld b, $E0
    jr jr_034_5BCF

    ld b, $E0
    jr jr_034_5BD3

    ld b, $E0
    jr nc, jr_034_5BD7

    ld b, $E0

jr_034_5BB3:
    jr jr_034_5BDB

    ld b, $E0

jr_034_5BB7:
    jr jr_034_5BDF

    ld b, $E0

jr_034_5BBB:
    jr nc, jr_034_5BE3

    ld b, $E0

jr_034_5BBF:
    jr jr_034_5BE7

    ld b, $E0

jr_034_5BC3:
    jr jr_034_5BEB

    ld b, $E0

jr_034_5BC7:
    jr nc, jr_034_5BEF

    ld b, $E0

jr_034_5BCB:
    jr jr_034_5BF3

    ld b, $E0

jr_034_5BCF:
    jr jr_034_5BF7

    ld b, $E0

jr_034_5BD3:
    jr nc, jr_034_5BFB

    ld b, $E0

jr_034_5BD7:
    jr jr_034_5BFF

    ld b, $E0

jr_034_5BDB:
    jr jr_034_5C03

    ld b, $E0

jr_034_5BDF:
    jr nc, jr_034_5C07

    ld b, $E0

jr_034_5BE3:
    jr jr_034_5C0B

    ld b, $E0

jr_034_5BE7:
    jr jr_034_5C0F

    ld b, $E0

jr_034_5BEB:
    jr nc, jr_034_5C13

    ld b, $E0

jr_034_5BEF:
    jr jr_034_5C17

    ld b, $E0

jr_034_5BF3:
    jr jr_034_5C1B

    ld b, $E0

jr_034_5BF7:
    jr nc, jr_034_5C1F

    ld b, $E0

jr_034_5BFB:
    jr jr_034_5C23

    ld b, $E0

jr_034_5BFF:
    jr jr_034_5C27

    ld b, $E0

jr_034_5C03:
    jr nc, jr_034_5C2B

    ld b, $E0

jr_034_5C07:
    jr jr_034_5C2F

    ld b, $E0

jr_034_5C0B:
    jr jr_034_5C33

    ld b, $E0

jr_034_5C0F:
    jr nc, jr_034_5C37

    ld b, $E0

jr_034_5C13:
    jr jr_034_5C3B

    ld b, $E0

jr_034_5C17:
    jr jr_034_5C3F

    ld b, $E0

jr_034_5C1B:
    jr nc, jr_034_5C43

    ld b, $E0

jr_034_5C1F:
    jr jr_034_5C47

    ld b, $E0

jr_034_5C23:
    jr jr_034_5C4B

    ld b, $E0

jr_034_5C27:
    jr nc, jr_034_5C4F

    ld b, $E0

jr_034_5C2B:
    jr jr_034_5C53

    ld b, $E0

jr_034_5C2F:
    jr jr_034_5C57

    ld b, $E0

jr_034_5C33:
    jr nc, jr_034_5C5B

    ld b, $E0

jr_034_5C37:
    jr jr_034_5C5F

    ld b, $E0

jr_034_5C3B:
    jr jr_034_5C63

    ld b, $E0

jr_034_5C3F:
    jr nc, jr_034_5C67

    ld b, $E0

jr_034_5C43:
    jr jr_034_5C6B

    ld b, $E0

jr_034_5C47:
    jr jr_034_5C6F

    ld b, $E0

jr_034_5C4B:
    jr nc, jr_034_5C73

    ld b, $E0

jr_034_5C4F:
    jr jr_034_5C77

    ld b, $E0

jr_034_5C53:
    jr jr_034_5C7B

    ld b, $E0

jr_034_5C57:
    jr nc, jr_034_5C7F

    ld b, $E0

jr_034_5C5B:
    jr jr_034_5C83

    ld b, $E0

jr_034_5C5F:
    jr jr_034_5C87

    ld b, $E0

jr_034_5C63:
    jr nc, jr_034_5C8B

    ld b, $E0

jr_034_5C67:
    jr jr_034_5C8F

    ld b, $E0

jr_034_5C6B:
    jr jr_034_5C93

    ld b, $E0

jr_034_5C6F:
    jr nc, jr_034_5C97

    ld b, $E0

jr_034_5C73:
    jr jr_034_5C9B

    ld b, $E0

jr_034_5C77:
    jr jr_034_5C9F

    ld b, $E0

jr_034_5C7B:
    jr nc, jr_034_5CA3

    ld b, $E0

jr_034_5C7F:
    jr jr_034_5CA7

    ld b, $E0

jr_034_5C83:
    jr jr_034_5CAB

    ld b, $E0

jr_034_5C87:
    jr nc, jr_034_5CAF

    ld b, $E0

jr_034_5C8B:
    jr jr_034_5CB3

    ld b, $E0

jr_034_5C8F:
    jr jr_034_5CB7

    ld b, $E0

jr_034_5C93:
    jr nc, jr_034_5CBB

    ld b, $E0

jr_034_5C97:
    jr jr_034_5CBF

    ld b, $E0

jr_034_5C9B:
    jr jr_034_5CC3

    ld b, $E0

jr_034_5C9F:
    jr nc, jr_034_5CC7

    ld b, $E0

jr_034_5CA3:
    jr jr_034_5CCB

    ld b, $E0

jr_034_5CA7:
    jr jr_034_5CCF

    ld b, $E0

jr_034_5CAB:
    jr nc, jr_034_5CD3

    ld b, $E0

jr_034_5CAF:
    jr jr_034_5CD7

    ld b, $E0

jr_034_5CB3:
    jr jr_034_5CDB

    ld b, $E0

jr_034_5CB7:
    jr nc, jr_034_5CDF

    ld b, $E0

jr_034_5CBB:
    jr jr_034_5CE3

    ld b, $E0

jr_034_5CBF:
    jr jr_034_5CE7

    ld b, $E0

jr_034_5CC3:
    jr nc, jr_034_5CEB

    ld b, $E0

jr_034_5CC7:
    jr jr_034_5CEF

    ld b, $E0

jr_034_5CCB:
    jr jr_034_5CF3

    ld b, $E0

jr_034_5CCF:
    jr nc, jr_034_5CF7

    ld b, $E0

jr_034_5CD3:
    jr jr_034_5CFB

    ld b, $E0

jr_034_5CD7:
    jr jr_034_5CFF

    ld b, $E0

jr_034_5CDB:
    jr nc, jr_034_5D03

    ld b, $E0

jr_034_5CDF:
    jr jr_034_5D07

    ld b, $E0

jr_034_5CE3:
    jr jr_034_5D0B

    ld b, $E0

jr_034_5CE7:
    jr nc, jr_034_5D0F

    ld b, $E0

jr_034_5CEB:
    jr jr_034_5D13

    ld b, $E0

jr_034_5CEF:
    jr jr_034_5D17

    ld b, $E0

jr_034_5CF3:
    jr nc, jr_034_5D1B

    ld b, $E0

jr_034_5CF7:
    jr jr_034_5D1F

    ld b, $E0

jr_034_5CFB:
    jr jr_034_5D23

    ld b, $E0

jr_034_5CFF:
    jr nc, jr_034_5D27

    ld b, $E0

jr_034_5D03:
    jr jr_034_5D2B

    ld b, $E0

jr_034_5D07:
    jr jr_034_5D2F

    ld b, $E0

jr_034_5D0B:
    jr nc, jr_034_5D33

    ld b, $E0

jr_034_5D0F:
    jr jr_034_5D37

    ld b, $E0

jr_034_5D13:
    jr jr_034_5D3B

    ld b, $E0

jr_034_5D17:
    jr nc, jr_034_5D3F

    ld b, $E0

jr_034_5D1B:
    jr jr_034_5D43

    ld b, $E0

jr_034_5D1F:
    jr jr_034_5D47

    ld b, $E0

jr_034_5D23:
    jr nc, jr_034_5D4B

    ld b, $E0

jr_034_5D27:
    jr jr_034_5D4F

    ld b, $E0

jr_034_5D2B:
    jr jr_034_5D53

    ld b, $E0

jr_034_5D2F:
    jr nc, jr_034_5D57

    ld b, $E0

jr_034_5D33:
    jr jr_034_5D5B

    ld b, $E0

jr_034_5D37:
    jr jr_034_5D5F

    ld b, $E0

jr_034_5D3B:
    jr nc, jr_034_5D63

    ld b, $E0

jr_034_5D3F:
    jr jr_034_5D67

    ld b, $E0

jr_034_5D43:
    jr jr_034_5D6B

    ld b, $E0

jr_034_5D47:
    jr nc, jr_034_5D6F

    ld b, $E0

jr_034_5D4B:
    jr jr_034_5D73

    ld b, $E0

jr_034_5D4F:
    jr jr_034_5D77

    ld b, $E0

jr_034_5D53:
    jr nc, jr_034_5D7B

    ld b, $E0

jr_034_5D57:
    jr jr_034_5D7F

    ld b, $E0

jr_034_5D5B:
    jr jr_034_5D83

    ld b, $E0

jr_034_5D5F:
    jr jr_034_5D87

    ld b, $E0

jr_034_5D63:
    jr jr_034_5D8B

    ld b, $E0

jr_034_5D67:
    jr jr_034_5D8F

    ld b, $E0

jr_034_5D6B:
    jr jr_034_5D93

    ld b, $E0

jr_034_5D6F:
    jr nc, jr_034_5D97

    ld b, $E0

jr_034_5D73:
    jr jr_034_5D9B

    ld b, $E0

jr_034_5D77:
    jr jr_034_5D9F

    ld b, $E0

jr_034_5D7B:
    jr nc, jr_034_5DA3

    ld b, $E0

jr_034_5D7F:
    jr jr_034_5DA7

    ld b, $E0

jr_034_5D83:
    jr jr_034_5DAB

    ld b, $E0

jr_034_5D87:
    jr nc, jr_034_5DAF

    ld b, $E0

jr_034_5D8B:
    jr jr_034_5DB3

    ld b, $E0

jr_034_5D8F:
    jr jr_034_5DB7

    ld b, $E0

jr_034_5D93:
    jr nc, jr_034_5DBB

    ld b, $E0

jr_034_5D97:
    jr jr_034_5DBF

    ld b, $E0

jr_034_5D9B:
    jr jr_034_5DC3

    ld b, $E0

jr_034_5D9F:
    jr nc, jr_034_5DC7

    ld b, $E0

jr_034_5DA3:
    jr jr_034_5DCB

    ld b, $E0

jr_034_5DA7:
    jr jr_034_5DCF

    ld b, $E0

jr_034_5DAB:
    jr nc, jr_034_5DD3

    ld b, $E0

jr_034_5DAF:
    jr jr_034_5DD7

    ld b, $E0

jr_034_5DB3:
    jr jr_034_5DDB

    ld b, $E0

jr_034_5DB7:
    jr nc, jr_034_5DDF

    ld b, $E0

jr_034_5DBB:
    jr jr_034_5DE3

    ld b, $E0

jr_034_5DBF:
    jr jr_034_5DE7

    ld b, $E0

jr_034_5DC3:
    jr nc, jr_034_5DEB

    ld b, $E0

jr_034_5DC7:
    jr jr_034_5DEF

    ld b, $E0

jr_034_5DCB:
    jr jr_034_5DF3

    ld b, $E0

jr_034_5DCF:
    jr nc, jr_034_5DF7

    ld b, $E0

jr_034_5DD3:
    jr jr_034_5DFB

    ld b, $E0

jr_034_5DD7:
    jr jr_034_5DFF

    ld b, $E0

jr_034_5DDB:
    jr nc, jr_034_5E03

    ld b, $E0

jr_034_5DDF:
    jr jr_034_5E07

    ld b, $E0

jr_034_5DE3:
    jr jr_034_5E0B

    ld b, $E0

jr_034_5DE7:
    jr nc, jr_034_5E0F

    ld b, $E0

jr_034_5DEB:
    jr jr_034_5E13

    ld b, $E0

jr_034_5DEF:
    jr jr_034_5E17

    ld b, $E0

jr_034_5DF3:
    jr nc, jr_034_5E1B

    ld b, $E0

jr_034_5DF7:
    jr jr_034_5E1F

    ld b, $E0

jr_034_5DFB:
    jr jr_034_5E23

    ld b, $E0

jr_034_5DFF:
    jr nc, jr_034_5E27

    ld b, $E0

jr_034_5E03:
    jr jr_034_5E2B

    ld b, $E0

jr_034_5E07:
    jr jr_034_5E2F

    ld b, $E0

jr_034_5E0B:
    jr nc, jr_034_5E33

    ld b, $E0

jr_034_5E0F:
    jr jr_034_5E37

    ld b, $E0

jr_034_5E13:
    jr jr_034_5E3B

    ld b, $E0

jr_034_5E17:
    jr nc, jr_034_5E3F

    ld b, $E0

jr_034_5E1B:
    jr jr_034_5E43

    ld b, $E0

jr_034_5E1F:
    jr jr_034_5E47

    ld b, $E0

jr_034_5E23:
    jr jr_034_5E4B

    ld b, $E0

jr_034_5E27:
    jr jr_034_5E4F

    ld b, $E0

jr_034_5E2B:
    jr jr_034_5E53

    ld b, $E0

jr_034_5E2F:
    jr jr_034_5E57

    ld b, $E0

jr_034_5E33:
    jr nc, jr_034_5E5B

    ld b, $E0

jr_034_5E37:
    jr jr_034_5E5F

    ld b, $E0

jr_034_5E3B:
    jr jr_034_5E63

    ld b, $E0

jr_034_5E3F:
    jr nc, jr_034_5E67

    ld b, $E0

jr_034_5E43:
    jr jr_034_5E6B

    ld b, $E0

jr_034_5E47:
    jr jr_034_5E6F

    ld b, $E0

jr_034_5E4B:
    jr nc, jr_034_5E73

    ld b, $E0

jr_034_5E4F:
    jr jr_034_5E77

    ld b, $E0

jr_034_5E53:
    jr jr_034_5E7B

    ld b, $E0

jr_034_5E57:
    jr jr_034_5E7F

    ld b, $E0

jr_034_5E5B:
    jr jr_034_5E83

    ld b, $E0

jr_034_5E5F:
    jr jr_034_5E87

    ld b, $E0

jr_034_5E63:
    jr jr_034_5E8B

    ld b, $E0

jr_034_5E67:
    jr nc, jr_034_5E8F

    ld b, $E0

jr_034_5E6B:
    jr jr_034_5E93

    ld b, $E0

jr_034_5E6F:
    jr jr_034_5E97

    ld b, $E0

jr_034_5E73:
    jr nc, jr_034_5E9B

    ld b, $E0

jr_034_5E77:
    jr jr_034_5E9F

    ld b, $E0

jr_034_5E7B:
    jr jr_034_5EA3

    ld b, $E0

jr_034_5E7F:
    jr nc, jr_034_5EA7

    ld b, $E0

jr_034_5E83:
    jr jr_034_5EAB

    ld b, $E0

jr_034_5E87:
    jr jr_034_5EAF

    ld b, $E0

jr_034_5E8B:
    jr jr_034_5EB3

    ld b, $E0

jr_034_5E8F:
    jr jr_034_5EB7

    ld b, $E0

jr_034_5E93:
    jr @+$28

    ld b, $E0

jr_034_5E97:
    jr @+$28

    ld b, $E0

jr_034_5E9B:
    jr nc, @+$28

    ld b, $E0

jr_034_5E9F:
    jr @+$28

    ld b, $E0

jr_034_5EA3:
    jr @+$28

    ld b, $E0

jr_034_5EA7:
    jr @+$28

    ld b, $E0

jr_034_5EAB:
    jr @+$28

    ld b, $E0

jr_034_5EAF:
    jr @+$28

    ld b, $F0

jr_034_5EB3:
    nop
    rst $38
    ldh a, [rP1]

jr_034_5EB7:
    or b
    daa
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_5EF9

    ldh a, [rNR23]
    jr nc, jr_034_5EFD

    ldh a, [rNR23]
    jr nc, jr_034_5F01

    ldh a, [rNR23]
    inc sp

jr_034_5EF9:
    dec bc
    ldh a, [rNR23]
    inc sp

jr_034_5EFD:
    dec bc
    ldh a, [rNR23]
    inc sp

jr_034_5F01:
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_5F31

    ldh a, [rNR23]
    jr nc, jr_034_5F35

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    dec hl

jr_034_5F31:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_034_5F35:
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_5F79

    ldh a, [rNR23]
    jr nc, jr_034_5F7D

    ldh a, [rNR23]
    jr nc, jr_034_5F81

    ldh a, [rNR23]
    inc sp

jr_034_5F79:
    dec bc
    ldh a, [rNR23]
    inc sp

jr_034_5F7D:
    dec bc
    ldh a, [rNR23]
    inc sp

jr_034_5F81:
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_5FB1

    ldh a, [rNR23]
    jr nc, jr_034_5FB5

    ldh a, [rNR23]
    jr nc, jr_034_5FB9

    ldh a, [rNR23]
    dec hl

jr_034_5FB1:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_034_5FB5:
    dec bc
    ldh a, [rNR23]
    inc l

jr_034_5FB9:
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    jr c, jr_034_5FCD

    ldh a, [rNR23]
    jr c, @+$0D

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l

jr_034_5FCD:
    dec bc
    ldh a, [rNR23]
    jr c, jr_034_5FDD

    ldh a, [rNR23]
    jr c, @+$0D

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l

jr_034_5FDD:
    dec bc
    ldh a, [rNR23]
    jr c, jr_034_5FED

    ldh a, [rNR23]
    jr c, @+$0D

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l

jr_034_5FED:
    dec bc
    ldh a, [rNR23]
    jr c, @+$0D

    ldh a, [rNR23]
    jr c, jr_034_6001

    ldh a, [rNR23]
    jr nc, jr_034_6005

    ldh a, [rNR23]
    jr nc, jr_034_6009

    ldh a, [rNR23]
    inc [hl]

jr_034_6001:
    dec bc
    ldh a, [rNR23]
    inc [hl]

jr_034_6005:
    dec bc
    ldh a, [rNR23]
    scf

jr_034_6009:
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    jr nc, jr_034_6025

    ldh a, [rNR23]
    jr nc, jr_034_6029

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]

jr_034_6025:
    dec bc
    ldh a, [rNR23]
    scf

jr_034_6029:
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    jr c, jr_034_604D

    ldh a, [rNR23]
    jr c, @+$0D

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l

jr_034_604D:
    dec bc
    ldh a, [rNR23]
    jr c, jr_034_605D

    ldh a, [rNR23]
    jr c, @+$0D

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l

jr_034_605D:
    dec bc
    ldh a, [rNR23]
    jr c, jr_034_606D

    ldh a, [rNR23]
    jr c, @+$0D

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l

jr_034_606D:
    dec bc
    ldh a, [rNR23]
    jr c, @+$0D

    ldh a, [rNR23]
    jr c, jr_034_6081

    ldh a, [rNR23]
    jr nc, jr_034_6085

    ldh a, [rNR23]
    jr nc, jr_034_6089

    ldh a, [rNR23]
    inc [hl]

jr_034_6081:
    dec bc
    ldh a, [rNR23]
    inc [hl]

jr_034_6085:
    dec bc
    ldh a, [rNR23]
    scf

jr_034_6089:
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    jr nc, jr_034_60A5

    ldh a, [rNR23]
    jr nc, jr_034_60A9

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]

jr_034_60A5:
    dec bc
    ldh a, [rNR23]
    scf

jr_034_60A9:
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    jr c, jr_034_60CD

    ldh a, [rNR23]
    jr c, @+$0D

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l

jr_034_60CD:
    dec bc
    ldh a, [rNR23]
    jr c, jr_034_60DD

    ldh a, [rNR23]
    jr c, jr_034_60E1

    ldh a, [rNR23]
    add hl, hl
    dec bc
    ldh a, [rNR23]
    add hl, hl

jr_034_60DD:
    dec bc
    ldh a, [rNR23]
    dec [hl]

jr_034_60E1:
    dec bc
    ldh a, [rNR23]
    dec [hl]
    dec bc
    ldh a, [rNR23]
    add hl, hl
    dec bc
    ldh a, [rNR23]
    add hl, hl
    dec bc
    ldh a, [rNR23]
    dec [hl]
    dec bc
    ldh a, [rNR23]
    dec [hl]
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    dec sp
    dec bc
    ldh a, [rNR23]
    dec sp
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_6179

    ldh a, [rNR23]
    jr nc, jr_034_617D

    ldh a, [rNR23]
    jr nc, jr_034_6181

    ldh a, [rNR23]
    inc sp

jr_034_6179:
    dec bc
    ldh a, [rNR23]
    inc sp

jr_034_617D:
    dec bc
    ldh a, [rNR23]
    inc sp

jr_034_6181:
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_61B1

    ldh a, [rNR23]
    jr nc, jr_034_61B5

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    dec hl

jr_034_61B1:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_034_61B5:
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_61F9

    ldh a, [rNR23]
    jr nc, jr_034_61FD

    ldh a, [rNR23]
    jr nc, jr_034_6201

    ldh a, [rNR23]
    inc sp

jr_034_61F9:
    dec bc
    ldh a, [rNR23]
    inc sp

jr_034_61FD:
    dec bc
    ldh a, [rNR23]
    inc sp

jr_034_6201:
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_6231

    ldh a, [rNR23]
    jr nc, jr_034_6235

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    dec hl

jr_034_6231:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_034_6235:
    dec bc
    ldh a, [rNR23]
    ld sp, $F00B
    jr jr_034_626E

    dec bc
    ldh a, [rNR23]
    ld sp, $F00B
    jr jr_034_6276

    dec bc
    ldh a, [rNR23]
    jr nc, jr_034_6255

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_034_6255:
    dec bc
    ldh a, [rNR23]
    ld sp, $F00B
    jr jr_034_628E

    dec bc
    ldh a, [rNR23]
    ld sp, $F00B
    jr jr_034_6296

    dec bc
    ldh a, [rNR23]
    jr nc, jr_034_6275

    ldh a, [rNR23]
    jr nc, @+$0D

jr_034_626E:
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_034_6275:
    dec bc

jr_034_6276:
    ldh a, [rNR23]
    ld sp, $F00B
    jr jr_034_62AE

    dec bc
    ldh a, [rNR23]
    ld sp, $F00B
    jr jr_034_62B6

    dec bc
    ldh a, [rNR23]
    jr nc, jr_034_6295

    ldh a, [rNR23]
    jr nc, jr_034_6299

jr_034_628E:
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_034_6295:
    dec bc

jr_034_6296:
    ldh a, [rNR23]
    inc l

jr_034_6299:
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B

jr_034_62AE:
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B

jr_034_62B6:
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_034_62D9

    ldh a, [rNR23]
    jr nc, jr_034_62DD

    ldh a, [rNR23]
    jr nc, jr_034_62E1

    ldh a, [rP1]
    rst $38

jr_034_62D9:
    ldh a, [rP1]
    pop bc
    ld d, c

jr_034_62DD:
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, b

jr_034_62E1:
    dec bc
    ldh a, [rNR23]
    ld b, b
    halt
    ldh a, [$90]
    inc a
    ld l, $F0
    jr nc, jr_034_632D

    ld l, $F0
    jr nc, jr_034_6334

    ld l, $F0
    jr nc, @+$48

    add b
    adc [hl]
    ldh a, [$90]
    ld b, l
    ld l, $F0
    jr nc, jr_034_6341

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, c
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    halt
    ldh a, [$90]
    inc a
    ld l, $F0
    jr nc, @+$42

    ld l, $F0
    jr nc, jr_034_635A

    ld l, $F0
    jr nc, jr_034_6361

    add b
    adc [hl]
    ldh a, [$90]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    ld d, $F0
    jr @+$45

    add b

jr_034_632D:
    cp [hl]
    ldh a, [$C0]
    ld c, b
    ld d, $F0
    inc h

jr_034_6334:
    ld c, d
    ld d, $F0
    inc h
    ld c, e
    inc hl
    ldh a, [$30]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d

jr_034_6341:
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld d, $F0
    inc h
    ld c, d
    ld d, $F0
    inc h
    ld c, e
    inc hl
    ldh a, [$30]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc

jr_034_635A:
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b

jr_034_6361:
    ld d, $F0
    inc h
    ld c, d
    ld d, $F0
    inc h
    ld c, h
    add c
    ld e, $F1
    jr c, jr_034_63B6

    ld d, $F0
    inc h
    ld c, d
    ld d, $F0
    inc h
    ld c, e
    inc hl
    ldh a, [$30]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld d, $F0
    inc h
    ld c, d
    ld d, $F0
    inc h
    ld c, e
    inc hl
    ldh a, [$30]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld d, $F0
    inc h
    ld c, d
    ld d, $F0
    inc h
    ld c, h
    add c
    ld e, $F1
    jr c, jr_034_63F3

    ld d, $F0
    inc h
    ld c, d
    ld d, $F0
    inc h
    ld c, e
    inc hl
    ldh a, [$30]

jr_034_63B6:
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld d, $F0
    inc h
    ld c, d
    ld d, $F0
    inc h
    ld c, e
    inc hl
    ldh a, [$30]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, d
    ld d, $F0
    inc h
    ld c, e
    ld d, $F0
    inc h
    ld c, l
    halt
    ldh a, [$78]
    ld c, a
    add b
    and [hl]
    ldh a, [$C0]
    ld b, c
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, b
    dec bc
    ldh a, [rNR23]

jr_034_63F3:
    ld b, b
    add b
    adc [hl]
    ldh a, [$90]
    inc a
    ld l, $F0
    jr nc, jr_034_643D

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, @+$48

    add b
    adc [hl]
    ldh a, [$90]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    ld d, $F0
    jr @+$45

    add b
    and [hl]
    ldh a, [$C0]
    ld b, c
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    add b
    adc [hl]
    ldh a, [$90]
    inc a
    ld l, $F0
    jr nc, jr_034_646C

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_034_647A

    add b
    adc [hl]
    ldh a, [$90]
    ld b, h
    ld d, $F0
    jr jr_034_6483

jr_034_643D:
    ld d, $F0
    jr @+$4A

    add b
    cp [hl]
    ldh a, [$C0]
    ld c, c
    ld d, $F0
    inc h
    ld c, e
    ld d, $F0
    inc h
    ld c, l
    ld d, $F0
    jr jr_034_64A1

    ld l, $F0
    jr nc, @+$4A

    ld l, $F0
    jr nc, jr_034_64A3

    ld d, $F0
    inc h
    ld c, e
    ld d, $F0
    inc h
    ld c, l
    ld d, $F0
    jr jr_034_64B5

    ld b, [hl]
    ldh a, [$60]
    ld c, c
    ld d, $F0

jr_034_646C:
    inc h
    ld c, e
    ld d, $F0
    inc h
    ld c, l
    ld d, $F0
    jr jr_034_64C5

    ld l, $F0
    jr nc, @+$4A

jr_034_647A:
    ld l, $F0
    jr nc, @+$46

    ld e, [hl]
    ldh a, [$60]
    ld b, [hl]
    ld e, [hl]

jr_034_6483:
    ldh a, [$60]
    ld c, b
    add b
    cp [hl]
    ldh a, [rP1]
    rst $38
    sub b
    nop
    cp h
    ld d, b
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b

jr_034_64A1:
    ld b, $4F

jr_034_64A3:
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b

jr_034_64B5:
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b

jr_034_64C5:
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3A
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3A
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3A
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3A
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $59
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $59
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $37
    dec b
    sub b
    ld b, $3B
    dec b
    sub b
    ld b, $3E
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $47
    dec b
    sub b
    ld b, $4A
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $53
    dec b
    sub b
    ld b, $56
    dec b
    sub b
    ld b, $53
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4A
    dec b
    sub b
    ld b, $47
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3E
    dec b
    sub b
    ld b, $3B
    dec b
    sub b
    ld b, $37
    dec b
    sub b
    ld b, $3B
    dec b
    sub b
    ld b, $3E
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $47
    dec b
    sub b
    ld b, $4A
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $53
    dec b
    sub b
    ld b, $56
    dec b
    sub b
    ld b, $53
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4A
    dec b
    sub b
    ld b, $47
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3E
    dec b
    sub b
    ld b, $3B
    dec b
    sub b
    ld b, $37
    dec b
    sub b
    ld b, $3B
    dec b
    sub b
    ld b, $3E
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $47
    dec b
    sub b
    ld b, $4A
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $53
    dec b
    sub b
    ld b, $56
    dec b
    sub b
    ld b, $53
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4A
    dec b
    sub b
    ld b, $47
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3E
    dec b
    sub b
    ld b, $3B
    dec b
    sub b
    ld b, $37
    dec b
    sub b
    ld b, $3B
    dec b
    sub b
    ld b, $3E
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $47
    dec b
    sub b
    ld b, $4A
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $53
    dec b
    sub b
    ld b, $56
    dec b
    sub b
    ld b, $53
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4A
    dec b
    sub b
    ld b, $47
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3E
    dec b
    sub b
    ld b, $3B
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3A
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3A
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3A
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3A
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3D
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $49
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $55
    dec b
    sub b
    ld b, $59
    dec b
    sub b
    ld b, $55
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $49
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $3D
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3D
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $49
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $55
    dec b
    sub b
    ld b, $59
    dec b
    sub b
    ld b, $55
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $49
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $3D
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3D
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $49
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $55
    dec b
    sub b
    ld b, $59
    dec b
    sub b
    ld b, $55
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $49
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $3D
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $38
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $57
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $50
    dec b
    sub b
    ld b, $4B
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $44
    dec b
    sub b
    ld b, $3F
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $3A
    dec b
    sub b
    ld b, $3E
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $4A
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $56
    dec b
    sub b
    ld b, $59
    dec b
    sub b
    ld b, $56
    dec b
    sub b
    ld b, $52
    dec b
    sub b
    ld b, $4D
    dec b
    sub b
    ld b, $4A
    dec b
    sub b
    ld b, $46
    dec b
    sub b
    ld b, $41
    dec b
    sub b
    ld b, $3E
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $3C
    dec b
    sub b
    ld b, $40
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $5B
    dec b
    sub b
    ld b, $58
    dec b
    sub b
    ld b, $54
    dec b
    sub b
    ld b, $4F
    dec b
    sub b
    ld b, $4C
    dec b
    sub b
    ld b, $48
    dec b
    sub b
    ld b, $43
    dec b
    sub b
    ld b, $40
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
    jr z, jr_034_754A

    nop
    dec l
    jr nc, jr_034_751F

jr_034_751F:
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

jr_034_754A:
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
    ld b, d
    nop
    add d
    nop
    ld c, $00
    dec de
    nop
    jr z, jr_034_75A0

jr_034_75A0:
    dec [hl]
    nop
    nop
    rlca
    ld bc, $0680
    rlca

jr_034_75A8:
    jr nz, jr_034_75A8

    nop
    inc bc
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0480
    rlca

jr_034_75B5:
    jr nz, jr_034_75B5

    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0280
    rlca

jr_034_75C2:
    jr nz, jr_034_75C2

    nop
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $8001
    nop
    rlca

jr_034_75CF:
    jr nz, jr_034_75CF

    nop
    inc bc
    nop
    nop
    nop
    ld d, d
    ld bc, $01AE
    and $02
    ld [hl], a
    ld [bc], a
    add b
    inc bc
    ld d, a
    inc b
    ld e, d
    add hl, bc
    ld e, $F0
    nop
    xor h
    inc bc
    jr @-$0E

    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_7635

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_7649

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_765D

    ld b, $F0
    inc c
    inc l

jr_034_7635:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_7671

    ld b, $F0
    inc c
    inc l

jr_034_7649:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_7685

    ld b, $F0
    inc c
    inc l

jr_034_765D:
    ld b, $F0
    inc c
    inc l
    inc c
    ldh a, [rNR50]
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_7699

    ld b, $F0
    inc c
    inc l

jr_034_7671:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_76AD

    ld b, $F0
    inc c
    inc l

jr_034_7685:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_7699:
    ld b, $F0
    jr jr_034_76C9

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_76AD:
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_76E5

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_76C9:
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_7701

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_76E5:
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_7725

    ld b, $F0
    jr jr_034_7729

    inc c
    ldh a, [rNR50]
    inc l

jr_034_7701:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_773D

    ld b, $F0
    jr jr_034_7741

    inc c
    ldh a, [rNR50]
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_034_774D

    ld b, $F0
    jr jr_034_7751

jr_034_7725:
    ld b, $F0
    inc h
    inc l

jr_034_7729:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    inc c
    ldh a, [rNR50]
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_773D:
    ld b, $F0
    nop
    rst $38

jr_034_7741:
    ldh a, [rP1]
    xor h
    inc bc
    jr @-$0E

    inc h
    inc l
    ld b, $F0
    inc c
    inc l

jr_034_774D:
    inc h
    ldh a, [$30]
    inc l

jr_034_7751:
    ld [de], a
    ldh a, [rNR50]
    inc l
    ld b, $F0
    inc c
    inc l
    ld e, $F0

jr_034_775B:
    jr nc, @+$2E

    jr @-$0E

    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld e, $F0
    jr nc, @+$2E

    jr jr_034_775B

    inc h
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr @+$2E

    ld b, $F0
    nop
    rst $38
    ldh a, [rP1]
    ret z

    ld [bc], a
    ld e, [hl]
    ldh a, [$60]
    jp $2E02


    ldh a, [$30]
    ld b, b
    ld l, $F0
    jr nc, jr_034_77D0

    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld l, $F0
    jr nc, jr_034_77D0

    ld l, $F0
    jr nc, jr_034_77D2

    ld l, $F0
    jr nc, jr_034_77DA

    ld l, $F0
    jr nc, @+$47

    ld l, $F0
    jr nc, jr_034_77EA

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld d, $F0
    jr jr_034_77F4

    ld d, $F0
    jr jr_034_77F9

    ld e, [hl]
    ldh a, [$60]
    ld c, d
    ld d, $F0
    jr jr_034_77FE

    ld d, $F0
    jr jr_034_7804

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld d, $F0
    jr jr_034_7808

    ld d, $F0
    jr jr_034_780A

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld d, $F0
    jr jr_034_780F

    ld d, $F0

jr_034_77D0:
    jr @+$41

jr_034_77D2:
    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_034_7822

jr_034_77DA:
    ld l, $F0
    jr nc, jr_034_7826

    ld e, [hl]
    ldh a, [$60]
    ld b, [hl]
    ld d, $F0
    jr jr_034_782A

    ld d, $F0
    jr @+$45

jr_034_77EA:
    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld d, $F0
    jr jr_034_7831

    ld d, $F0

jr_034_77F4:
    jr jr_034_7835

    ld e, [hl]
    ldh a, [$60]

jr_034_77F9:
    ld b, c
    ld l, $F0
    jr nc, @+$45

jr_034_77FE:
    ld l, $F0
    jr nc, @+$49

    ld l, $F0

jr_034_7804:
    jr nc, jr_034_7850

    ld l, $F0

jr_034_7808:
    nop
    rst $38

jr_034_780A:
    ldh a, [rP1]
    ret z

    ld [bc], a
    add c

jr_034_780F:
    ld a, d
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    ld c, d
    ld d, $F0
    jr jr_034_7866

    ld d, $F0
    jr jr_034_7866

    ld e, [hl]
    ldh a, [$60]
    ld b, e

jr_034_7822:
    ld l, $F0
    jr nc, jr_034_7870

jr_034_7826:
    ld d, $F0
    jr jr_034_7876

jr_034_782A:
    ld d, $F0
    jr @+$4F

    ld e, b
    ldh a, [$5A]

jr_034_7831:
    ld c, d
    dec b
    ldh a, [rTMA]

jr_034_7835:
    ld c, h
    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_034_7886

    ld d, $F0
    jr jr_034_788E

    ld d, $F0
    jr @+$53

    ld d, $F0
    jr jr_034_789E

    ld d, $F0
    jr jr_034_78A1

    ld d, $F0

jr_034_7850:
    jr jr_034_78A6

    ld d, $F0
    jr jr_034_78A6

    ld d, $F0
    jr jr_034_78A5

    ld d, $F0
    jr jr_034_78A6

    ld l, $F0
    jr nc, jr_034_78AF

    ld l, $F0
    jr nc, @+$51

jr_034_7866:
    ld d, $F0
    jr jr_034_78BA

    ld d, $F0
    jr @+$51

    ld l, $F0

jr_034_7870:
    jr nc, jr_034_78BF

    ld d, $F0
    jr jr_034_78C1

jr_034_7876:
    ld d, $F0
    jr @+$4F

    ld l, $F0
    jr nc, jr_034_78D0

    ld e, b
    ldh a, [$5A]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, b

jr_034_7886:
    ld d, $F0
    jr jr_034_78DC

    ld d, $F0
    jr jr_034_78DE

jr_034_788E:
    ld l, $F0
    jr nc, @+$51

    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr jr_034_78E9

    ld l, $F0
    jr nc, jr_034_78F2

jr_034_789E:
    ld e, b
    ldh a, [$5A]

jr_034_78A1:
    ld d, h
    dec b
    ldh a, [rTMA]

jr_034_78A5:
    ld d, [hl]

jr_034_78A6:
    ld d, $F0
    jr jr_034_7901

    ld d, $F0
    jr jr_034_7902

    ld b, [hl]

jr_034_78AF:
    ldh a, [rOBP0]
    ld d, [hl]
    ld d, $F0
    jr @+$58

    ld d, $F0
    jr jr_034_7911

jr_034_78BA:
    ld d, $F0
    jr jr_034_7912

    ld e, b

jr_034_78BF:
    ldh a, [$5A]

jr_034_78C1:
    ld d, [hl]
    dec b
    ldh a, [rTMA]
    ld d, a
    ld d, $F0
    jr jr_034_7923

    ld d, $F0
    jr jr_034_7925

    ld l, $F0

jr_034_78D0:
    jr nc, @+$58

    ld d, $F0

jr_034_78D4:
    jr jr_034_792A

    ld d, $F0
    jr @+$58

    ld l, $F0

jr_034_78DC:
    jr nc, jr_034_792D

jr_034_78DE:
    ld l, $F0
    jr nc, jr_034_7925

    jr z, jr_034_78D4

    ld a, [hl+]
    ld c, b
    dec b
    ldh a, [rP1]

jr_034_78E9:
    rst $38
    ldh a, [rTMA]
    cp h
    nop
    dec b
    ldh a, [rTMA]
    inc a

jr_034_78F2:
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]

jr_034_7901:
    ld b, e

jr_034_7902:
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]

jr_034_7911:
    inc a

jr_034_7912:
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b

jr_034_7923:
    ldh a, [rTMA]

jr_034_7925:
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b

jr_034_792A:
    dec b
    ldh a, [rTMA]

jr_034_792D:
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    nop
    dec b
    add c
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    cp h
    nop
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    add hl, sp
    dec b
    ldh a, [rTMA]
    add hl, sp
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    add hl, sp
    dec b
    ldh a, [rTMA]
    add hl, sp
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    add hl, sp
    dec b
    ldh a, [rTMA]
    add hl, sp
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    scf
    dec b
    ldh a, [rTMA]
    scf
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    cp h
    nop
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rP1]
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
