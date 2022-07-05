; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

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
    jr z, jr_033_403B

    nop
    dec l
    jr nc, jr_033_4010

jr_033_4010:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_033_403B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_033_408F

jr_033_408F:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, $07
    adc d
    ld de, $154F
    ld hl, sp-$10
    nop
    and [hl]
    inc bc
    ld b, $F0
    ld h, b
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$60]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$60]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$60]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$60]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rOBP0]
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
    ldh a, [rOBP0]
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
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rOBP0]
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
    ldh a, [rOBP0]
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
    ldh a, [rOBP0]
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
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rOBP0]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rHDMA4]
    ld h, $06
    ldh a, [$2A]
    ld h, $06
    ldh a, [rNR34]
    ld h, $06
    ldh a, [$6C]
    ld h, $06
    ldh a, [$72]
    ld h, $06
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or b
    daa
    ld d, $F0
    sub b
    jr nc, jr_033_4845

    ldh a, [$30]
    ld l, $16
    ldh a, [$90]
    ld l, $2E
    ldh a, [$30]
    dec l
    ld d, $F0
    sub b
    dec l
    ld l, $F0
    jr nc, jr_033_4856

    ld d, $F0
    ld h, b
    ld a, [hl+]
    ld d, $F0
    ld h, b
    dec hl
    ld l, $F0
    ld h, b
    dec hl
    ld l, $F0
    ld h, b
    jr nc, jr_033_4899

    ldh a, [$60]
    jr nc, @+$30

    ldh a, [$30]
    ld l, $2E
    ldh a, [$30]

jr_033_4845:
    daa
    ld b, [hl]
    ldh a, [rOBP0]
    ld l, $16
    ldh a, [rNR23]
    add hl, hl
    ld l, $F0
    jr nc, @+$37

    ld l, $F0
    jr nc, jr_033_4883

jr_033_4856:
    ld l, $F0
    jr nc, jr_033_488F

    ld l, $F0
    jr nc, jr_033_488D

    ld l, $F0
    jr nc, jr_033_488D

    ld l, $F0
    jr nc, jr_033_4896

    ld l, $F0
    jr nc, jr_033_4895

    ld l, $F0
    jr nc, @+$34

    ld l, $F0
    jr nc, jr_033_48A4

    ld l, $F0
    jr nc, jr_033_48A1

    ld e, [hl]
    ldh a, [$60]
    scf
    ld l, $F0
    jr nc, @+$2D

    ld l, $F0
    jr nc, @+$2D

    ld e, [hl]

jr_033_4883:
    ldh a, [$60]
    scf
    ld l, $F0
    jr nc, @+$2D

    inc hl
    ldh a, [$30]

jr_033_488D:
    dec hl
    inc hl

jr_033_488F:
    ldh a, [$30]
    dec hl
    inc hl
    ldh a, [$30]

jr_033_4895:
    dec hl

jr_033_4896:
    inc hl
    ldh a, [$30]

jr_033_4899:
    dec hl
    inc hl
    ldh a, [$30]
    dec hl
    inc hl
    ldh a, [$30]

jr_033_48A1:
    dec hl
    ld l, $F0

jr_033_48A4:
    jr nc, @+$2F

    ld l, $F0
    jr nc, @+$31

    ld l, $F0
    jr nc, jr_033_48DE

    ld l, $F0
    jr nc, jr_033_48E6

    ld l, $F0
    jr nc, @+$35

    ld l, $F0
    jr nc, jr_033_48F0

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$35

    ld l, $F0
    jr nc, jr_033_48F8

    ld l, $F0
    jr nc, @+$31

    ld l, $F0
    jr nc, jr_033_48FE

    ld l, $F0
    jr nc, jr_033_4906

    ld l, $F0
    jr nc, @+$35

    ld l, $F0
    jr nc, jr_033_4910

    ld l, $F0
    jr nc, @+$39

jr_033_48DE:
    ld l, $F0
    jr nc, @+$35

    ld l, $F0
    jr nc, jr_033_4918

jr_033_48E6:
    ld l, $F0
    jr nc, @+$31

    ld l, $F0
    jr nc, jr_033_491E

    ld l, $F0

jr_033_48F0:
    jr nc, jr_033_4926

    ld l, $F0
    jr nc, @+$35

    ld l, $F0

jr_033_48F8:
    jr nc, jr_033_4930

    ld l, $F0
    jr nc, @+$39

jr_033_48FE:
    ld l, $F0
    jr nc, @+$35

    ld l, $F0
    jr nc, jr_033_4938

jr_033_4906:
    ld l, $F0
    jr nc, @+$31

    ld l, $F0
    jr nc, jr_033_493E

    ld l, $F0

jr_033_4910:
    jr nc, jr_033_4946

    ld l, $F0
    jr nc, @+$35

    ld l, $F0

jr_033_4918:
    jr nc, jr_033_4950

    ld l, $F0
    jr nc, @+$39

jr_033_491E:
    ld l, $F0
    jr nc, @+$35

    ld l, $F0
    jr nc, jr_033_4958

jr_033_4926:
    ld l, $F0
    jr nc, @+$31

    ld l, $F0
    jr nc, jr_033_495E

    ld l, $F0

jr_033_4930:
    jr nc, jr_033_4966

    ld l, $F0
    jr nc, @+$35

    ld l, $F0

jr_033_4938:
    jr nc, jr_033_4970

    ld l, $F0
    jr nc, jr_033_4975

jr_033_493E:
    ld l, $F0
    jr nc, jr_033_4975

    ld l, $F0
    jr nc, @+$34

jr_033_4946:
    ld l, $F0
    jr nc, jr_033_4979

    ld l, $F0
    jr nc, @+$32

    ld l, $F0

jr_033_4950:
    jr nc, @+$36

    ld l, $F0
    jr nc, jr_033_4989

    ld l, $F0

jr_033_4958:
    jr nc, @+$38

    ld l, $F0
    jr nc, jr_033_4995

jr_033_495E:
    ld l, $F0
    jr nc, jr_033_4995

    ld l, $F0
    jr nc, @+$34

jr_033_4966:
    ld l, $F0
    jr nc, jr_033_4999

    ld l, $F0
    jr nc, @+$32

    ld b, $F0

jr_033_4970:
    inc c
    jr nc, jr_033_4979

    ldh a, [$0C]

jr_033_4975:
    jr nc, jr_033_497D

    ldh a, [$0C]

jr_033_4979:
    jr nc, jr_033_4981

    ldh a, [$0C]

jr_033_497D:
    jr nc, jr_033_4985

    ldh a, [$0C]

jr_033_4981:
    jr nc, jr_033_4989

    ldh a, [$0C]

jr_033_4985:
    jr nc, jr_033_498D

    ldh a, [$0C]

jr_033_4989:
    jr nc, jr_033_4991

    ldh a, [$0C]

jr_033_498D:
    jr nc, jr_033_4995

    ldh a, [$0C]

jr_033_4991:
    jr nc, jr_033_4999

    ldh a, [$0C]

jr_033_4995:
    jr nc, jr_033_499D

    ldh a, [$0C]

jr_033_4999:
    jr nc, jr_033_49A1

    ldh a, [$0C]

jr_033_499D:
    jr nc, jr_033_49A5

    ldh a, [$0C]

jr_033_49A1:
    jr nc, jr_033_49A9

    ldh a, [$0C]

jr_033_49A5:
    jr nc, jr_033_49AD

    ldh a, [$0C]

jr_033_49A9:
    jr nc, jr_033_49B1

    ldh a, [$0C]

jr_033_49AD:
    jr nc, jr_033_49B5

    ldh a, [$0C]

jr_033_49B1:
    jr nc, jr_033_49B9

    ldh a, [$0C]

jr_033_49B5:
    jr nc, jr_033_49BD

    ldh a, [$0C]

jr_033_49B9:
    jr nc, jr_033_49C1

    ldh a, [$0C]

jr_033_49BD:
    jr nc, jr_033_49C5

    ldh a, [$0C]

jr_033_49C1:
    jr nc, jr_033_49C9

    ldh a, [$0C]

jr_033_49C5:
    jr nc, jr_033_49CD

    ldh a, [$0C]

jr_033_49C9:
    jr nc, jr_033_49D1

    ldh a, [$0C]

jr_033_49CD:
    jr nc, jr_033_49D5

    ldh a, [$0C]

jr_033_49D1:
    jr nc, jr_033_49D9

    ldh a, [$0C]

jr_033_49D5:
    jr nc, jr_033_49DD

    ldh a, [$0C]

jr_033_49D9:
    jr nc, jr_033_49E1

    ldh a, [$0C]

jr_033_49DD:
    jr nc, jr_033_49E5

    ldh a, [$0C]

jr_033_49E1:
    jr nc, jr_033_49E9

    ldh a, [$0C]

jr_033_49E5:
    jr nc, jr_033_49ED

    ldh a, [$0C]

jr_033_49E9:
    jr nc, jr_033_49F1

    ldh a, [$0C]

jr_033_49ED:
    jr nc, jr_033_49F5

    ldh a, [$0C]

jr_033_49F1:
    jr nc, jr_033_49F9

    ldh a, [$0C]

jr_033_49F5:
    jr nc, jr_033_49FD

    ldh a, [$0C]

jr_033_49F9:
    jr nc, jr_033_4A01

    ldh a, [$0C]

jr_033_49FD:
    jr nc, jr_033_4A05

    ldh a, [$0C]

jr_033_4A01:
    jr nc, jr_033_4A09

    ldh a, [$0C]

jr_033_4A05:
    jr nc, jr_033_4A0D

    ldh a, [$0C]

jr_033_4A09:
    jr nc, jr_033_4A11

    ldh a, [$0C]

jr_033_4A0D:
    jr nc, jr_033_4A15

    ldh a, [$0C]

jr_033_4A11:
    jr nc, jr_033_4A19

    ldh a, [$0C]

jr_033_4A15:
    jr nc, jr_033_4A1D

    ldh a, [$0C]

jr_033_4A19:
    jr nc, jr_033_4A21

    ldh a, [$0C]

jr_033_4A1D:
    jr nc, jr_033_4A25

    ldh a, [$0C]

jr_033_4A21:
    jr nc, jr_033_4A29

    ldh a, [$0C]

jr_033_4A25:
    jr nc, jr_033_4A2D

    ldh a, [$0C]

jr_033_4A29:
    jr nc, jr_033_4A31

    ldh a, [$0C]

jr_033_4A2D:
    jr nc, jr_033_4A35

    ldh a, [$0C]

jr_033_4A31:
    jr nc, jr_033_4A39

    ldh a, [$0C]

jr_033_4A35:
    jr nc, jr_033_4A3D

    ldh a, [$0C]

jr_033_4A39:
    jr nc, jr_033_4A41

    ldh a, [$0C]

jr_033_4A3D:
    jr nc, jr_033_4A45

    ldh a, [$0C]

jr_033_4A41:
    jr nc, jr_033_4A49

    ldh a, [$0C]

jr_033_4A45:
    jr nc, jr_033_4A4D

    ldh a, [$0C]

jr_033_4A49:
    jr nc, jr_033_4A51

    ldh a, [$0C]

jr_033_4A4D:
    jr nc, jr_033_4A55

    ldh a, [$0C]

jr_033_4A51:
    jr nc, jr_033_4A59

    ldh a, [$0C]

jr_033_4A55:
    jr nc, jr_033_4A5D

    ldh a, [$0C]

jr_033_4A59:
    jr nc, jr_033_4A61

    ldh a, [$0C]

jr_033_4A5D:
    jr nc, jr_033_4A65

    ldh a, [$0C]

jr_033_4A61:
    jr nc, jr_033_4A69

    ldh a, [$0C]

jr_033_4A65:
    jr nc, jr_033_4A6D

    ldh a, [$0C]

jr_033_4A69:
    jr nc, jr_033_4A71

    ldh a, [$0C]

jr_033_4A6D:
    jr nc, jr_033_4A75

    ldh a, [$0C]

jr_033_4A71:
    jr nc, jr_033_4A79

    ldh a, [$0C]

jr_033_4A75:
    jr nc, jr_033_4A7D

    ldh a, [$0C]

jr_033_4A79:
    jr nc, jr_033_4A81

    ldh a, [$0C]

jr_033_4A7D:
    jr nc, jr_033_4A85

    ldh a, [$0C]

jr_033_4A81:
    jr nc, jr_033_4A89

    ldh a, [$0C]

jr_033_4A85:
    jr nc, jr_033_4A8D

    ldh a, [$0C]

jr_033_4A89:
    jr nc, jr_033_4A91

    ldh a, [$0C]

jr_033_4A8D:
    jr nc, jr_033_4A95

    ldh a, [$0C]

jr_033_4A91:
    jr nc, jr_033_4A99

    ldh a, [$0C]

jr_033_4A95:
    jr nc, jr_033_4A9D

    ldh a, [$0C]

jr_033_4A99:
    jr nc, jr_033_4AA1

    ldh a, [$0C]

jr_033_4A9D:
    jr nc, jr_033_4AA5

    ldh a, [$0C]

jr_033_4AA1:
    jr nc, jr_033_4AA9

    ldh a, [$0C]

jr_033_4AA5:
    jr nc, jr_033_4AAD

    ldh a, [$0C]

jr_033_4AA9:
    jr nc, jr_033_4AB1

    ldh a, [$0C]

jr_033_4AAD:
    jr nc, jr_033_4AB5

    ldh a, [$0C]

jr_033_4AB1:
    jr nc, jr_033_4AB9

    ldh a, [$0C]

jr_033_4AB5:
    jr nc, jr_033_4ABD

    ldh a, [$0C]

jr_033_4AB9:
    jr nc, jr_033_4AC1

    ldh a, [$0C]

jr_033_4ABD:
    jr nc, jr_033_4AC5

    ldh a, [$0C]

jr_033_4AC1:
    jr nc, jr_033_4AC9

    ldh a, [$0C]

jr_033_4AC5:
    jr nc, jr_033_4ACD

    ldh a, [$0C]

jr_033_4AC9:
    jr nc, jr_033_4AD1

    ldh a, [$0C]

jr_033_4ACD:
    jr nc, jr_033_4AD5

    ldh a, [$0C]

jr_033_4AD1:
    jr nc, jr_033_4AD9

    ldh a, [$0C]

jr_033_4AD5:
    jr nc, jr_033_4ADD

    ldh a, [$0C]

jr_033_4AD9:
    jr nc, jr_033_4AE1

    ldh a, [$0C]

jr_033_4ADD:
    jr nc, jr_033_4AE5

    ldh a, [$0C]

jr_033_4AE1:
    jr nc, jr_033_4AE9

    ldh a, [$0C]

jr_033_4AE5:
    jr nc, jr_033_4AED

    ldh a, [$0C]

jr_033_4AE9:
    jr nc, jr_033_4AF1

    ldh a, [$0C]

jr_033_4AED:
    jr nc, jr_033_4AF5

    ldh a, [$0C]

jr_033_4AF1:
    jr nc, jr_033_4AF9

    ldh a, [$0C]

jr_033_4AF5:
    jr nc, jr_033_4AFD

    ldh a, [$0C]

jr_033_4AF9:
    jr nc, jr_033_4B01

    ldh a, [$0C]

jr_033_4AFD:
    jr nc, jr_033_4B05

    ldh a, [$0C]

jr_033_4B01:
    jr nc, jr_033_4B09

    ldh a, [$0C]

jr_033_4B05:
    jr nc, jr_033_4B0D

    ldh a, [$0C]

jr_033_4B09:
    jr nc, jr_033_4B11

    ldh a, [$0C]

jr_033_4B0D:
    jr nc, jr_033_4B15

    ldh a, [$0C]

jr_033_4B11:
    jr nc, jr_033_4B19

    ldh a, [$0C]

jr_033_4B15:
    jr nc, jr_033_4B1D

    ldh a, [$0C]

jr_033_4B19:
    jr nc, jr_033_4B21

    ldh a, [$0C]

jr_033_4B1D:
    jr nc, jr_033_4B25

    ldh a, [$0C]

jr_033_4B21:
    jr nc, jr_033_4B29

    ldh a, [$0C]

jr_033_4B25:
    jr nc, jr_033_4B2D

    ldh a, [$0C]

jr_033_4B29:
    jr nc, jr_033_4B31

    ldh a, [$0C]

jr_033_4B2D:
    jr nc, jr_033_4B35

    ldh a, [$0C]

jr_033_4B31:
    jr nc, jr_033_4B39

    ldh a, [$0C]

jr_033_4B35:
    jr nc, jr_033_4B3D

    ldh a, [$0C]

jr_033_4B39:
    jr nc, jr_033_4B41

    ldh a, [$0C]

jr_033_4B3D:
    jr nc, jr_033_4B45

    ldh a, [$0C]

jr_033_4B41:
    jr nc, jr_033_4B49

    ldh a, [$0C]

jr_033_4B45:
    jr nc, jr_033_4B4D

    ldh a, [$0C]

jr_033_4B49:
    jr nc, jr_033_4B51

    ldh a, [$0C]

jr_033_4B4D:
    jr nc, jr_033_4B55

    ldh a, [$0C]

jr_033_4B51:
    jr nc, jr_033_4B59

    ldh a, [$0C]

jr_033_4B55:
    jr nc, jr_033_4B5D

    ldh a, [$0C]

jr_033_4B59:
    jr nc, jr_033_4B61

    ldh a, [$0C]

jr_033_4B5D:
    jr nc, jr_033_4B65

    ldh a, [$0C]

jr_033_4B61:
    jr nc, jr_033_4B69

    ldh a, [$0C]

jr_033_4B65:
    jr nc, jr_033_4B6D

    ldh a, [$0C]

jr_033_4B69:
    jr nc, jr_033_4B76

    ldh a, [$0C]

jr_033_4B6D:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl

jr_033_4B76:
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
    ld b, $F0
    inc c
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_033_4BF5

    ldh a, [$0C]
    jr nc, jr_033_4BF9

    ldh a, [$0C]

jr_033_4BF5:
    jr nc, jr_033_4BFD

    ldh a, [$0C]

jr_033_4BF9:
    jr nc, jr_033_4C01

    ldh a, [$0C]

jr_033_4BFD:
    jr nc, jr_033_4C05

    ldh a, [$0C]

jr_033_4C01:
    jr nc, jr_033_4C09

    ldh a, [$0C]

jr_033_4C05:
    jr nc, jr_033_4C0D

    ldh a, [$0C]

jr_033_4C09:
    jr nc, jr_033_4C11

    ldh a, [$0C]

jr_033_4C0D:
    jr nc, jr_033_4C15

    ldh a, [$0C]

jr_033_4C11:
    jr nc, jr_033_4C19

    ldh a, [$0C]

jr_033_4C15:
    jr nc, jr_033_4C1D

    ldh a, [$0C]

jr_033_4C19:
    jr nc, jr_033_4C21

    ldh a, [$0C]

jr_033_4C1D:
    jr nc, jr_033_4C25

    ldh a, [$0C]

jr_033_4C21:
    jr nc, jr_033_4C29

    ldh a, [$0C]

jr_033_4C25:
    jr nc, jr_033_4C2D

    ldh a, [$0C]

jr_033_4C29:
    jr nc, jr_033_4C36

    ldh a, [$0C]

jr_033_4C2D:
    dec hl
    ld b, $F0
    inc c
    dec hl
    ld b, $F0
    inc c
    dec hl

jr_033_4C36:
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
    jr nc, jr_033_4C75

    ldh a, [$0C]
    jr nc, jr_033_4C79

    ldh a, [$0C]

jr_033_4C75:
    jr nc, jr_033_4C7D

    ldh a, [$0C]

jr_033_4C79:
    jr nc, jr_033_4C81

    ldh a, [$0C]

jr_033_4C7D:
    jr nc, jr_033_4C85

    ldh a, [$0C]

jr_033_4C81:
    jr nc, jr_033_4C89

    ldh a, [$0C]

jr_033_4C85:
    jr nc, jr_033_4C8D

    ldh a, [$0C]

jr_033_4C89:
    jr nc, jr_033_4C91

    ldh a, [$0C]

jr_033_4C8D:
    jr nc, jr_033_4C95

    ldh a, [$0C]

jr_033_4C91:
    jr nc, jr_033_4C99

    ldh a, [$0C]

jr_033_4C95:
    jr nc, jr_033_4C9D

    ldh a, [$0C]

jr_033_4C99:
    jr nc, jr_033_4CA1

    ldh a, [$0C]

jr_033_4C9D:
    jr nc, jr_033_4CA5

    ldh a, [$0C]

jr_033_4CA1:
    jr nc, jr_033_4CA9

    ldh a, [$0C]

jr_033_4CA5:
    jr nc, jr_033_4CAD

    ldh a, [$0C]

jr_033_4CA9:
    jr nc, jr_033_4CB6

    ldh a, [$0C]

jr_033_4CAD:
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]

jr_033_4CB6:
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    dec bc
    ldh a, [$0C]
    ld sp, $F006
    inc c
    ld sp, $F006
    inc c
    ld sp, $F006
    inc c
    ld sp, $F006
    inc c
    ld sp, $F006
    inc c
    ld sp, $F006
    inc c
    ld sp, $F006
    inc c
    ld sp, $F00B
    inc c
    ld l, $06
    ldh a, [$0C]
    ld l, $06
    ldh a, [$0C]
    ld l, $06
    ldh a, [$0C]
    ld l, $06
    ldh a, [$0C]
    ld l, $06
    ldh a, [$0C]
    ld l, $06
    ldh a, [$0C]
    ld l, $06
    ldh a, [$0C]
    ld l, $0B
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
    jr nc, jr_033_4DF5

    ldh a, [$0C]
    jr nc, jr_033_4DF9

    ldh a, [$0C]

jr_033_4DF5:
    jr nc, jr_033_4DFD

    ldh a, [$0C]

jr_033_4DF9:
    jr nc, jr_033_4E01

    ldh a, [$0C]

jr_033_4DFD:
    jr nc, jr_033_4E05

    ldh a, [$0C]

jr_033_4E01:
    jr nc, jr_033_4E09

    ldh a, [$0C]

jr_033_4E05:
    jr nc, jr_033_4E0D

    ldh a, [$0C]

jr_033_4E09:
    jr nc, jr_033_4E11

    ldh a, [$0C]

jr_033_4E0D:
    jr nc, jr_033_4E15

    ldh a, [$0C]

jr_033_4E11:
    jr nc, jr_033_4E19

    ldh a, [$0C]

jr_033_4E15:
    jr nc, jr_033_4E1D

    ldh a, [$0C]

jr_033_4E19:
    jr nc, jr_033_4E21

    ldh a, [$0C]

jr_033_4E1D:
    jr nc, jr_033_4E25

    ldh a, [$0C]

jr_033_4E21:
    jr nc, jr_033_4E29

    ldh a, [$0C]

jr_033_4E25:
    jr nc, jr_033_4E2D

    ldh a, [$0C]

jr_033_4E29:
    jr nc, jr_033_4E31

    ldh a, [$0C]

jr_033_4E2D:
    jr nc, jr_033_4E35

    ldh a, [$0C]

jr_033_4E31:
    jr nc, jr_033_4E39

    ldh a, [$0C]

jr_033_4E35:
    jr nc, jr_033_4E3D

    ldh a, [$0C]

jr_033_4E39:
    jr nc, jr_033_4E41

    ldh a, [$0C]

jr_033_4E3D:
    jr nc, jr_033_4E45

    ldh a, [$0C]

jr_033_4E41:
    jr nc, jr_033_4E49

    ldh a, [$0C]

jr_033_4E45:
    jr nc, jr_033_4E4D

    ldh a, [$0C]

jr_033_4E49:
    jr nc, jr_033_4E51

    ldh a, [$0C]

jr_033_4E4D:
    jr nc, jr_033_4E55

    ldh a, [$0C]

jr_033_4E51:
    jr nc, jr_033_4E59

    ldh a, [$0C]

jr_033_4E55:
    jr nc, jr_033_4E5D

    ldh a, [$0C]

jr_033_4E59:
    jr nc, jr_033_4E61

    ldh a, [$0C]

jr_033_4E5D:
    jr nc, jr_033_4E65

    ldh a, [$0C]

jr_033_4E61:
    jr nc, jr_033_4E69

    ldh a, [$0C]

jr_033_4E65:
    jr nc, jr_033_4E6D

    ldh a, [$0C]

jr_033_4E69:
    jr nc, jr_033_4E71

    ldh a, [$0C]

jr_033_4E6D:
    jr nc, jr_033_4E75

    ldh a, [$0C]

jr_033_4E71:
    jr nc, jr_033_4E79

    ldh a, [$0C]

jr_033_4E75:
    jr nc, jr_033_4E7D

    ldh a, [$0C]

jr_033_4E79:
    jr nc, jr_033_4E81

    ldh a, [$0C]

jr_033_4E7D:
    jr nc, jr_033_4E85

    ldh a, [$0C]

jr_033_4E81:
    jr nc, jr_033_4E89

    ldh a, [$0C]

jr_033_4E85:
    jr nc, jr_033_4E8D

    ldh a, [$0C]

jr_033_4E89:
    jr nc, jr_033_4E91

    ldh a, [$0C]

jr_033_4E8D:
    jr nc, jr_033_4E95

    ldh a, [$0C]

jr_033_4E91:
    jr nc, jr_033_4E99

    ldh a, [$0C]

jr_033_4E95:
    jr nc, jr_033_4E9D

    ldh a, [$0C]

jr_033_4E99:
    jr nc, jr_033_4EA1

    ldh a, [$0C]

jr_033_4E9D:
    jr nc, jr_033_4EA5

    ldh a, [$0C]

jr_033_4EA1:
    jr nc, jr_033_4EA9

    ldh a, [$0C]

jr_033_4EA5:
    jr nc, jr_033_4EAD

    ldh a, [$0C]

jr_033_4EA9:
    jr nc, jr_033_4EB1

    ldh a, [$0C]

jr_033_4EAD:
    jr nc, jr_033_4EB5

    ldh a, [$0C]

jr_033_4EB1:
    jr nc, jr_033_4EB9

    ldh a, [$0C]

jr_033_4EB5:
    jr nc, jr_033_4EBD

    ldh a, [$0C]

jr_033_4EB9:
    jr nc, jr_033_4EC1

    ldh a, [$0C]

jr_033_4EBD:
    jr nc, jr_033_4EC5

    ldh a, [$0C]

jr_033_4EC1:
    jr nc, jr_033_4EC9

    ldh a, [$0C]

jr_033_4EC5:
    jr nc, jr_033_4ECD

    ldh a, [$0C]

jr_033_4EC9:
    jr nc, jr_033_4ED1

    ldh a, [$0C]

jr_033_4ECD:
    jr nc, jr_033_4ED5

    ldh a, [$0C]

jr_033_4ED1:
    jr nc, jr_033_4ED9

    ldh a, [$0C]

jr_033_4ED5:
    jr nc, jr_033_4EDD

    ldh a, [$0C]

jr_033_4ED9:
    jr nc, jr_033_4EE1

    ldh a, [$0C]

jr_033_4EDD:
    jr nc, jr_033_4EE5

    ldh a, [$0C]

jr_033_4EE1:
    jr nc, jr_033_4EE9

    ldh a, [$0C]

jr_033_4EE5:
    jr nc, jr_033_4EED

    ldh a, [$0C]

jr_033_4EE9:
    jr nc, jr_033_4EF1

    ldh a, [$0C]

jr_033_4EED:
    jr nc, jr_033_4EF5

    ldh a, [$0C]

jr_033_4EF1:
    jr nc, jr_033_4EF9

    ldh a, [$0C]

jr_033_4EF5:
    jr nc, jr_033_4EFD

    ldh a, [$0C]

jr_033_4EF9:
    jr nc, jr_033_4F01

    ldh a, [$0C]

jr_033_4EFD:
    jr nc, jr_033_4F05

    ldh a, [$0C]

jr_033_4F01:
    jr nc, jr_033_4F09

    ldh a, [$0C]

jr_033_4F05:
    jr nc, jr_033_4F0D

    ldh a, [$0C]

jr_033_4F09:
    jr nc, jr_033_4F11

    ldh a, [$0C]

jr_033_4F0D:
    jr nc, jr_033_4F15

    ldh a, [$0C]

jr_033_4F11:
    jr nc, jr_033_4F19

    ldh a, [$0C]

jr_033_4F15:
    jr nc, jr_033_4F1D

    ldh a, [$0C]

jr_033_4F19:
    jr nc, jr_033_4F21

    ldh a, [$0C]

jr_033_4F1D:
    jr nc, jr_033_4F25

    ldh a, [$0C]

jr_033_4F21:
    jr nc, jr_033_4F29

    ldh a, [$0C]

jr_033_4F25:
    jr nc, jr_033_4F2D

    ldh a, [$0C]

jr_033_4F29:
    jr nc, jr_033_4F31

    ldh a, [$0C]

jr_033_4F2D:
    jr nc, jr_033_4F35

    ldh a, [$0C]

jr_033_4F31:
    jr nc, jr_033_4F39

    ldh a, [$0C]

jr_033_4F35:
    jr nc, jr_033_4F3D

    ldh a, [$0C]

jr_033_4F39:
    jr nc, jr_033_4F41

    ldh a, [$0C]

jr_033_4F3D:
    jr nc, jr_033_4F45

    ldh a, [$0C]

jr_033_4F41:
    jr nc, jr_033_4F49

    ldh a, [$0C]

jr_033_4F45:
    jr nc, jr_033_4F4D

    ldh a, [$0C]

jr_033_4F49:
    jr nc, jr_033_4F51

    ldh a, [$0C]

jr_033_4F4D:
    jr nc, jr_033_4F55

    ldh a, [$0C]

jr_033_4F51:
    jr nc, jr_033_4F59

    ldh a, [$0C]

jr_033_4F55:
    jr nc, jr_033_4F5D

    ldh a, [$0C]

jr_033_4F59:
    jr nc, jr_033_4F61

    ldh a, [$0C]

jr_033_4F5D:
    jr nc, jr_033_4F65

    ldh a, [$0C]

jr_033_4F61:
    jr nc, jr_033_4F69

    ldh a, [$0C]

jr_033_4F65:
    jr nc, jr_033_4F6D

    ldh a, [$0C]

jr_033_4F69:
    jr nc, jr_033_4F71

    ldh a, [$0C]

jr_033_4F6D:
    jr nc, jr_033_4F75

    ldh a, [$0C]

jr_033_4F71:
    jr nc, jr_033_4F79

    ldh a, [$0C]

jr_033_4F75:
    jr nc, jr_033_4F7D

    ldh a, [$0C]

jr_033_4F79:
    jr nc, jr_033_4F81

    ldh a, [$0C]

jr_033_4F7D:
    jr nc, jr_033_4F85

    ldh a, [$0C]

jr_033_4F81:
    jr nc, jr_033_4F89

    ldh a, [$0C]

jr_033_4F85:
    jr nc, jr_033_4F8D

    ldh a, [$0C]

jr_033_4F89:
    jr nc, jr_033_4F91

    ldh a, [$0C]

jr_033_4F8D:
    jr nc, jr_033_4F95

    ldh a, [$0C]

jr_033_4F91:
    jr nc, jr_033_4F99

    ldh a, [$0C]

jr_033_4F95:
    jr nc, jr_033_4F9D

    ldh a, [$0C]

jr_033_4F99:
    jr nc, jr_033_4FA1

    ldh a, [$0C]

jr_033_4F9D:
    jr nc, jr_033_4FA5

    ldh a, [$0C]

jr_033_4FA1:
    jr nc, jr_033_4FA9

    ldh a, [$0C]

jr_033_4FA5:
    jr nc, jr_033_4FAD

    ldh a, [$0C]

jr_033_4FA9:
    jr nc, jr_033_4FB1

    ldh a, [$0C]

jr_033_4FAD:
    jr nc, jr_033_4FB5

    ldh a, [$0C]

jr_033_4FB1:
    jr nc, jr_033_4FB9

    ldh a, [$0C]

jr_033_4FB5:
    jr nc, jr_033_4FBD

    ldh a, [$0C]

jr_033_4FB9:
    jr nc, jr_033_4FC1

    ldh a, [$0C]

jr_033_4FBD:
    jr nc, jr_033_4FC5

    ldh a, [$0C]

jr_033_4FC1:
    jr nc, jr_033_4FC9

    ldh a, [$0C]

jr_033_4FC5:
    jr nc, jr_033_4FCD

    ldh a, [$0C]

jr_033_4FC9:
    jr nc, jr_033_4FD1

    ldh a, [$0C]

jr_033_4FCD:
    jr nc, jr_033_4FD5

    ldh a, [$0C]

jr_033_4FD1:
    jr nc, jr_033_4FD9

    ldh a, [$0C]

jr_033_4FD5:
    jr nc, jr_033_4FDD

    ldh a, [$0C]

jr_033_4FD9:
    jr nc, jr_033_4FE1

    ldh a, [$0C]

jr_033_4FDD:
    jr nc, jr_033_4FE5

    ldh a, [$0C]

jr_033_4FE1:
    jr nc, jr_033_4FE9

    ldh a, [$0C]

jr_033_4FE5:
    jr nc, jr_033_4FED

    ldh a, [$0C]

jr_033_4FE9:
    jr nc, jr_033_4FF6

    ldh a, [$0C]

jr_033_4FED:
    ld a, [hl+]
    ld b, [hl]
    ldh a, [rOBP0]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]

jr_033_4FF6:
    inc hl
    ldh a, [$30]
    ld a, [hl+]
    ld l, $F0
    jr nc, @+$32

    ld b, [hl]
    ldh a, [rOBP0]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$25

    ldh a, [$30]
    jr nc, jr_033_5016

    ldh a, [rNR23]
    jr nc, jr_033_5025

    ldh a, [rNR23]
    ld a, [hl+]
    dec sp
    ldh a, [rOBP0]
    ld a, [hl+]

jr_033_5016:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec sp
    ldh a, [rOBP0]
    ld a, [hl+]
    ld d, $F0
    jr @+$32

    dec sp
    ldh a, [rOBP0]

jr_033_5025:
    jr nc, jr_033_5032

    ldh a, [rNR23]
    jr nc, @+$25

    ldh a, [$30]
    ld sp, $F016
    jr jr_033_5062

jr_033_5032:
    ld d, $F0
    jr @+$2C

    dec sp
    ldh a, [rOBP0]
    ld a, [hl+]
    ld d, $F0
    jr jr_033_5068

    dec sp
    ldh a, [rOBP0]
    ld a, [hl+]
    ld d, $F0
    jr jr_033_5076

    dec sp
    ldh a, [rOBP0]
    jr nc, jr_033_5061

    ldh a, [rNR23]
    jr nc, @+$2A

    ldh a, [$30]
    jr nc, jr_033_505E

    ldh a, [rNR23]
    jr nc, jr_033_506D

    ldh a, [rNR23]
    ld a, [hl+]
    dec sp
    ldh a, [rOBP0]
    ld a, [hl+]

jr_033_505E:
    dec bc
    ldh a, [rNR23]

jr_033_5061:
    ld a, [hl+]

jr_033_5062:
    dec sp
    ldh a, [rOBP0]
    ld a, [hl+]
    ld d, $F0

jr_033_5068:
    jr jr_033_5095

    inc hl
    ldh a, [$30]

jr_033_506D:
    dec hl
    jr z, @-$0E

    jr nc, jr_033_509D

    inc hl
    ldh a, [$30]
    dec hl

jr_033_5076:
    ld d, $F0
    jr nc, @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld b, $F0
    inc c
    ld a, [hl+]
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_033_509E

    ldh a, [rNR23]

jr_033_5095:
    jr nc, jr_033_50A2

    ldh a, [rNR23]
    jr nc, jr_033_50B1

    ldh a, [rNR23]

jr_033_509D:
    dec hl

jr_033_509E:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_033_50A2:
    dec bc
    ldh a, [rNR23]
    dec hl
    ld d, $F0
    jr jr_033_50D6

    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]

jr_033_50B1:
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_033_50C6

    ldh a, [rNR23]
    jr nc, jr_033_50C5

    ldh a, [$0C]
    jr nc, jr_033_50CE

    ldh a, [$0C]

jr_033_50C5:
    ld a, [hl+]

jr_033_50C6:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]

jr_033_50CE:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld b, $F0
    inc c
    ld a, [hl+]

jr_033_50D6:
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_033_50EE

    ldh a, [rNR23]
    jr nc, jr_033_50ED

    ldh a, [$0C]
    jr nc, jr_033_50F6

    ldh a, [$0C]

jr_033_50ED:
    dec hl

jr_033_50EE:
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_033_50F6:
    ld d, $F0
    jr @+$2E

    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_033_5112

    ldh a, [rNR23]
    jr nc, jr_033_5116

    ldh a, [rNR23]
    jr nc, jr_033_5125

    ldh a, [rNR23]
    ld a, [hl+]

jr_033_5112:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]

jr_033_5116:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld b, $F0
    inc c
    ld a, [hl+]
    dec bc
    ldh a, [$0C]

jr_033_5125:
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_033_513A

    ldh a, [rNR23]
    jr nc, jr_033_5139

    ldh a, [$0C]
    jr nc, jr_033_5142

    ldh a, [$0C]

jr_033_5139:
    dec hl

jr_033_513A:
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_033_5142:
    ld d, $F0
    jr jr_033_5172

    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

jr_033_514F:
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_033_5162

    ldh a, [rNR23]
    jr nc, jr_033_5161

    ldh a, [$0C]
    jr nc, jr_033_516A

    ldh a, [$0C]

jr_033_5161:
    ld a, [hl+]

jr_033_5162:
    ld b, [hl]
    ldh a, [rOBP0]
    ld a, [hl+]
    ld d, $F0
    jr jr_033_519A

jr_033_516A:
    ld d, e
    ldh a, [rHDMA4]
    jr nc, jr_033_51B5

    ldh a, [rOBP0]
    dec hl

jr_033_5172:
    dec b
    ldh a, [rTMA]
    inc l
    dec b
    ldh a, [rTMA]
    dec hl
    dec b
    ldh a, [rTMA]
    inc l
    dec b
    ldh a, [rTMA]
    dec hl
    dec b
    ldh a, [rTMA]
    inc l
    dec b
    ldh a, [rTMA]
    dec hl
    dec b
    ldh a, [rTMA]
    inc l
    dec b
    ldh a, [rTMA]
    dec hl
    dec b
    ldh a, [rTMA]
    inc l
    dec b
    ldh a, [rTMA]
    dec hl

jr_033_519A:
    dec b
    ldh a, [rTMA]
    inc l
    dec b
    ldh a, [rTMA]
    dec hl
    dec b
    ldh a, [rTMA]
    inc l
    dec b
    ldh a, [rTMA]
    dec hl
    dec b
    ldh a, [rTMA]
    inc l
    dec b
    ldh a, [rTMA]
    dec hl
    dec b
    ldh a, [rTMA]

jr_033_51B5:
    inc l
    dec b
    ldh a, [rTMA]
    dec hl
    dec bc
    ldh a, [$0C]
    inc l
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    inc l
    db $10
    ldh a, [rNR12]
    dec hl
    dec sp
    ldh a, [$3C]
    jr nc, jr_033_514F

    set 6, b
    nop
    rst $38
    ldh a, [rP1]
    cp h
    ld d, c
    ld d, $F0
    jr nc, jr_033_5217

    ld d, $F0
    jr jr_033_521D

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_033_5225

    ld d, $F0
    jr jr_033_5227

    ld d, $F0
    jr nc, @+$45

    ld d, $F0
    jr nc, jr_033_522D

    ld l, $F0
    jr nc, @+$3B

    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld d, $F0
    jr nc, @+$3B

    ld l, $F0
    jr nc, jr_033_523B

    ld b, [hl]
    ldh a, [$60]
    ccf
    ld d, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_033_5245

    ld b, [hl]
    ldh a, [$60]
    scf
    ld d, $F0
    jr jr_033_524F

jr_033_5217:
    ld d, $F0
    jr @+$39

    ld d, $F0

jr_033_521D:
    jr jr_033_5255

    ld d, $F0
    jr jr_033_525A

    ld l, $F0

jr_033_5225:
    jr nc, jr_033_526A

jr_033_5227:
    ld d, $F0
    jr nc, jr_033_5273

    ld d, $F0

jr_033_522D:
    jr nc, jr_033_5277

    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_033_5282

    ld d, $F0
    jr @+$4C

jr_033_523B:
    ld d, $F0
    jr jr_033_5287

    ld l, $F0
    jr nc, jr_033_5292

    ld d, $F0

jr_033_5245:
    jr nc, @+$48

    ld l, $F0
    jr nc, jr_033_5290

    ld e, [hl]
    ldh a, [$60]
    ld c, l

jr_033_524F:
    ld d, $F0
    jr nc, jr_033_5298

    ld l, $F0

jr_033_5255:
    jr nc, jr_033_529B

    ld e, [hl]
    ldh a, [$60]

jr_033_525A:
    ld c, e
    ld d, $F0
    jr nc, jr_033_52A2

    ld l, $F0
    jr nc, @+$44

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld [de], a
    ldh a, [rNR23]

jr_033_526A:
    ld b, h
    ld [de], a
    ldh a, [rNR23]
    ld b, e
    ld [de], a
    ldh a, [rNR23]
    ld b, d

jr_033_5273:
    ld [de], a
    ldh a, [rNR23]
    ld b, e

jr_033_5277:
    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld [de], a
    ldh a, [rNR23]
    ld b, h
    ld [de], a
    ldh a, [rNR23]

jr_033_5282:
    ld b, e
    ld [de], a
    ldh a, [rNR23]
    ld b, d

jr_033_5287:
    ld [de], a
    ldh a, [rNR23]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld [de], a

jr_033_5290:
    ldh a, [rNR23]

jr_033_5292:
    ld b, h
    ld [de], a
    ldh a, [rNR23]
    ld b, e
    ld [de], a

jr_033_5298:
    ldh a, [rNR23]
    ld b, d

jr_033_529B:
    ld [de], a
    ldh a, [rNR23]
    ld b, e
    ld [de], a
    ldh a, [rNR23]

jr_033_52A2:
    ld b, h
    ld [de], a
    ldh a, [rNR23]
    ld b, e
    ld [de], a
    ldh a, [rNR23]
    ld b, d
    ld [de], a
    ldh a, [rNR23]
    ld b, e
    ld l, $F0
    jr nc, jr_033_52FA

    ld l, $F0
    jr nc, @+$4A

    ld l, $F0
    jr nc, jr_033_5305

    ld l, $F0
    jr nc, jr_033_5307

    add c
    ld a, [hl]
    di
    nop
    ld b, e
    add c
    ld e, $F1
    jr nz, jr_033_530F

    ld l, $F0
    jr nc, jr_033_5311

    ld l, $F0
    jr nc, jr_033_5314

    add c
    ld e, $F1
    jr nz, @+$48

    ld l, $F0
    jr nc, @+$46

    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, h
    ld d, $F0
    jr jr_033_5329

    ld e, [hl]
    ldh a, [$60]
    ld b, [hl]
    ld l, $F0
    jr nc, @+$46

    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, h
    ld d, $F0
    jr jr_033_533D

jr_033_52FA:
    ld e, [hl]
    ldh a, [$60]
    ld b, [hl]
    ld l, $F0
    jr nc, jr_033_5346

    dec bc
    ldh a, [$0C]

jr_033_5305:
    ld b, [hl]
    dec bc

jr_033_5307:
    ldh a, [$0C]
    ld b, h
    ld d, $F0
    jr jr_033_5351

    add c

jr_033_530F:
    ld b, $F1

jr_033_5311:
    ld [$1642], sp

jr_033_5314:
    ldh a, [rNR23]
    ld b, e
    ld d, $F0
    jr jr_033_535D

    ld d, $F0
    jr jr_033_5362

    ld d, $F0
    jr jr_033_5365

    ld d, $F0
    jr jr_033_536A

    add b
    adc [hl]

jr_033_5329:
    ldh a, [$90]
    ld b, h
    jr z, @-$0E

    ld a, [hl+]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, e
    add b
    cp [hl]
    ldh a, [$C0]
    ld c, b
    add b
    adc [hl]
    ldh a, [$90]

jr_033_533D:
    ld c, c
    inc hl
    ldh a, [rNR50]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b

jr_033_5346:
    add b
    cp [hl]
    ldh a, [$C0]
    ld c, a
    add b
    adc [hl]
    ldh a, [$90]
    ld d, b
    inc hl

jr_033_5351:
    ldh a, [$2A]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld c, a
    add b
    cp [hl]
    ldh a, [$C0]
    ld d, h

jr_033_535D:
    add b
    adc [hl]
    ldh a, [$90]
    ld d, l

jr_033_5362:
    inc hl
    ldh a, [rNR50]

jr_033_5365:
    ld d, a
    dec bc
    ldh a, [$0C]
    ld d, h

jr_033_536A:
    add b
    adc [hl]
    ldh a, [$C0]
    ld d, l
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld d, c
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, [hl]
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    add hl, sp
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    scf
    dec b
    ldh a, [rTMA]
    ld [hl], $05
    ldh a, [rTMA]
    scf
    ld e, [hl]
    ldh a, [$60]
    scf
    ld l, $F0
    jr nc, jr_033_5435

    ld d, $F0
    jr jr_033_5439

    ld d, $F0
    jr @+$41

    halt
    ldh a, [$78]
    ld a, $16
    ldh a, [rNR23]
    ccf
    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_033_544D

    add b
    adc [hl]
    ldh a, [$90]
    ld a, $2E
    ldh a, [$30]
    ccf
    halt
    ldh a, [$78]
    ld a, $16
    ldh a, [rNR23]
    ccf
    ld d, $F0
    jr jr_033_546A

    ld d, $F0
    jr jr_033_546C

    add b
    adc [hl]
    ldh a, [$90]
    ld b, e
    ld l, $F0
    jr nc, @+$46

    halt
    ldh a, [$78]
    ld b, c

jr_033_5435:
    ld d, $F0
    jr jr_033_547C

jr_033_5439:
    ld d, $F0
    jr @+$46

    ld d, $F0
    jr jr_033_5484

    ld l, $F0
    jr nc, jr_033_5484

    ld l, $F0
    jr nc, @+$3E

    ld d, $F0
    jr nc, @+$46

jr_033_544D:
    ld l, $F0
    jr nc, @+$45

    add b
    ret nz

    ldh a, [$F0]
    ld c, l
    ld l, $F0
    jr nc, jr_033_54A5

    ld l, $F0
    jr nc, jr_033_54A8

    ld l, $F0
    jr nc, jr_033_54AA

    ld l, $F0
    jr nc, @+$51

    ld l, $F0
    jr nc, jr_033_54B8

jr_033_546A:
    ld l, $F0

jr_033_546C:
    jr nc, jr_033_54BE

    ld l, $F0
    jr nc, @+$51

    ld l, $F0
    jr nc, jr_033_54BE

    ld l, $F0
    jr nc, jr_033_54BE

    ld l, $F0

jr_033_547C:
    jr nc, jr_033_54C0

    ld l, $F0
    jr nc, jr_033_54CA

    ld l, $F0

jr_033_5484:
    jr nc, jr_033_54D5

    ld l, $F0
    jr nc, jr_033_54D8

    ld l, $F0
    jr nc, jr_033_54DE

    ld l, $F0
    jr nc, @+$51

    dec bc
    ldh a, [rNR23]
    ld d, b
    dec bc
    ldh a, [rNR23]
    ld d, l
    dec bc
    ldh a, [rNR23]
    ld d, b
    dec bc
    ldh a, [rNR23]
    ld c, a
    ld e, [hl]
    ldh a, [$60]

jr_033_54A5:
    ld c, b
    ld l, $F0

jr_033_54A8:
    jr nc, @+$51

jr_033_54AA:
    ld l, $F0
    jr nc, jr_033_54FC

    ld l, $F0
    jr nc, jr_033_5502

    ld l, $F0
    jr nc, @+$51

    ld l, $F0

jr_033_54B8:
    jr nc, jr_033_5502

    ld l, $F0
    jr nc, jr_033_5502

jr_033_54BE:
    ld l, $F0

jr_033_54C0:
    jr nc, jr_033_5504

    ld l, $F0
    jr nc, jr_033_550E

    ld l, $F0
    jr nc, @+$51

jr_033_54CA:
    ld l, $F0
    jr nc, jr_033_551C

    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]

jr_033_54D5:
    ld c, d
    ld l, $F0

jr_033_54D8:
    jr nc, jr_033_5522

    add b
    cp [hl]
    ldh a, [$C0]

jr_033_54DE:
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [rNR23]
    ld c, c
    add hl, bc
    ldh a, [$30]
    ld c, c
    add hl, bc
    ldh a, [rNR50]
    ld c, c
    add hl, bc
    ldh a, [rNR50]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc

jr_033_54FC:
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]

jr_033_5502:
    ld c, b
    add hl, bc

jr_033_5504:
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [$30]

jr_033_550E:
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc

jr_033_551C:
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]

jr_033_5522:
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [rNR23]
    ld c, c
    add hl, bc
    ldh a, [$30]
    ld c, c
    add hl, bc
    ldh a, [rNR50]
    ld c, c
    add hl, bc
    ldh a, [rNR50]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [$30]
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [rNR23]
    ld c, c
    add hl, bc
    ldh a, [$30]
    ld c, c
    add hl, bc
    ldh a, [rNR50]
    ld c, c
    add hl, bc
    ldh a, [rNR50]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [$30]
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [rNR23]
    ld c, c
    add hl, bc
    ldh a, [$30]
    ld c, c
    add hl, bc
    ldh a, [rNR50]
    ld c, c
    add hl, bc
    ldh a, [rNR50]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld c, e
    add hl, bc
    ldh a, [$0C]
    ld c, [hl]
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld c, e
    add hl, bc
    ldh a, [$0C]
    ld c, [hl]
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld c, e
    add hl, bc
    ldh a, [$0C]
    ld c, [hl]
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld c, e
    add hl, bc
    ldh a, [$0C]
    ld c, [hl]
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld d, b
    ld b, [hl]
    ldh a, [rOBP0]
    ld d, b
    ld d, $F0
    jr @+$51

    ld l, $F0
    jr nc, jr_033_5653

    ld l, $F0
    jr nc, @+$4B

    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, jr_033_565F

    ld l, $F0
    jr nc, jr_033_566A

    ld l, $F0
    jr nc, jr_033_566F

    ld b, [hl]
    ldh a, [rOBP0]
    ld d, b
    ld d, $F0
    jr jr_033_5676

    ld l, $F0
    jr nc, jr_033_5673

    ld l, $F0
    jr nc, jr_033_567A

    ld l, $F0
    jr nc, @+$4C

    ld l, $F0
    jr nc, jr_033_567F

    ld e, [hl]
    ldh a, [$60]
    ld d, b
    ld b, [hl]
    ldh a, [rOBP0]
    ld d, b
    ld d, $F0
    jr jr_033_5692

    ld l, $F0
    jr nc, jr_033_568F

    ld l, $F0
    jr nc, jr_033_5694

    ld l, $F0
    jr nc, jr_033_5696

    ld l, $F0
    jr nc, jr_033_569B

jr_033_5653:
    ld l, $F0
    jr nc, @+$51

    ld l, $F0
    jr nc, @+$52

    ld l, $F0
    jr nc, @+$52

jr_033_565F:
    ld d, $F0
    jr @+$52

    ld d, $F0
    jr jr_033_56B6

    ld d, e
    ldh a, [rHDMA4]

jr_033_566A:
    ld d, h
    ld b, [hl]
    ldh a, [rOBP0]
    ld d, h

jr_033_566F:
    ld l, e
    ldh a, [$6C]
    ld d, e

jr_033_5673:
    ld [hl], b
    ldh a, [$72]

jr_033_5676:
    ld d, h
    add b
    set 6, b

jr_033_567A:
    nop
    rst $38
    ldh a, [rP1]
    cp a

jr_033_567F:
    ld d, b
    ld d, $F0
    sub b
    ccf
    ld l, $F0
    jr nc, jr_033_56C6

    ld d, $F0
    sub b
    ld a, $2E
    ldh a, [$30]

jr_033_568F:
    inc a
    ld d, $F0

jr_033_5692:
    sub b
    inc a

jr_033_5694:
    ld l, $F0

jr_033_5696:
    jr nc, @+$3D

    ld d, $F0
    ld h, b

jr_033_569B:
    ld a, $16
    ldh a, [$60]
    dec sp
    ld d, $F0
    ld h, b
    ld a, $16
    ldh a, [$60]
    ccf
    ld d, $F0
    jr jr_033_56EA

    ld d, $F0
    jr jr_033_56EC

    ld l, $F0
    jr nc, jr_033_56F0

    ld d, $F0

jr_033_56B6:
    jr jr_033_56F6

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr @+$41

    ld d, $F0

jr_033_56C6:
    jr @+$43

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_033_5720

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_033_5722

    ld d, $F0
    jr jr_033_5727

    ld d, $F0

jr_033_56EA:
    jr @+$43

jr_033_56EC:
    ld d, $F0
    jr jr_033_572E

jr_033_56F0:
    ld d, $F0
    jr @+$3D

    ld d, $F0

jr_033_56F6:
    jr jr_033_5736

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_033_5744

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_033_574C

    ld d, $F0
    jr jr_033_5752

    ld d, $F0
    jr jr_033_575A

    ld d, $F0
    jr @+$47

    ld d, $F0
    jr @+$47

jr_033_5720:
    ld d, $F0

jr_033_5722:
    jr @+$45

    ld e, [hl]
    ldh a, [$60]

jr_033_5727:
    ld b, e
    ld d, $F0
    jr jr_033_5770

    ld d, $F0

jr_033_572E:
    jr @+$45

    ld d, $F0
    jr jr_033_5776

    ld d, $F0

jr_033_5736:
    jr @+$45

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld d, $F0
    jr jr_033_5784

    ld d, $F0
    jr @+$45

jr_033_5744:
    ld d, $F0
    jr jr_033_578A

    ld d, $F0
    jr @+$45

jr_033_574C:
    ld d, $F0
    jr nc, @+$45

    ld d, $F0

jr_033_5752:
    jr jr_033_5796

    ld d, $F0
    jr @+$45

    ld l, $F0

jr_033_575A:
    jr nc, @+$45

    ld d, $F0
    jr jr_033_57A2

    ld d, $F0
    jr @+$45

    ld l, $F0
    jr nc, jr_033_57A6

    ld l, $F0
    jr nc, jr_033_57AB

    ld l, $F0
    jr nc, jr_033_57B1

jr_033_5770:
    ld l, $F0
    jr nc, @+$45

    add c
    ld a, [hl]

jr_033_5776:
    ld sp, hl
    nop
    jr nc, @+$0D

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]

jr_033_5784:
    ld [hl], $0B
    ldh a, [rNR23]
    scf
    dec bc

jr_033_578A:
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc

jr_033_5796:
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc

jr_033_57A2:
    ldh a, [rNR23]
    ld [hl], $0B

jr_033_57A6:
    ldh a, [rNR23]
    scf
    ld l, $F0

jr_033_57AB:
    ld h, b
    jr nc, @+$0D

    ldh a, [rNR23]
    inc [hl]

jr_033_57B1:
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl], $0B
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl], $0B
    ldh a, [rNR23]
    scf
    ld l, $F0
    ld h, b
    jr nc, @+$0D

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl], $0B
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl], $0B
    ldh a, [rNR23]
    scf
    ld l, $F0
    ld h, b
    jr nc, @+$0D

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl], $0B
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    ld [hl], $0B
    ldh a, [rNR23]
    scf
    ld l, $F0
    ld h, b
    ld e, c
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, [hl]
    dec b
    ldh a, [rTMA]
    ld d, l
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld d, c
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, [hl]
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    dec sp
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [rNR23]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [rNR23]
    dec a
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld c, b
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
    ldh a, [rNR23]
    dec sp
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$0C]
    ld d, [hl]
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$0C]
    ld d, [hl]
    dec bc
    ldh a, [$0C]
    ld e, e
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$0C]
    ld d, [hl]
    dec bc
    ldh a, [$0C]
    ld e, e
    dec bc
    ldh a, [$0C]
    ld e, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$0C]
    ld d, [hl]
    dec bc
    ldh a, [$0C]
    ld e, e
    dec bc
    ldh a, [$0C]
    ld e, a
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
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
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
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
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
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
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
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
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
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
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
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
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
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
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
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
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$30]
    ld b, h
    dec bc
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
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
    ld c, b
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$30]
    ld b, h
    dec bc
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
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
    ld c, b
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$30]
    ld b, h
    dec bc
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
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
    ld c, b
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$30]
    ld b, h
    dec bc
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    dec sp
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$0C]
    ld c, b
    ld l, $F0
    jr nc, @+$4D

    ld d, $F0
    jr jr_033_5E93

    ld d, $F0
    jr jr_033_5E95

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_033_5E99

    ld l, $F0
    jr nc, jr_033_5E9B

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_033_5EA9

    ld l, $F0
    jr nc, jr_033_5EAD

    ld l, $F0
    jr nc, @+$4D

    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_033_5EB9

    ld l, $F0
    jr nc, jr_033_5EB8

    ld l, $F0
    jr nc, jr_033_5EBD

    ld l, $F0
    jr nc, @+$44

    ld l, $F0
    jr nc, jr_033_5EC4

    ld l, $F0
    ld h, b
    ld c, b
    ld l, $F0
    jr nc, jr_033_5ED4

    ld d, $F0
    jr jr_033_5ED7

    ld d, $F0
    jr @+$4A

    ld l, $F0

jr_033_5E93:
    jr nc, jr_033_5ED8

jr_033_5E95:
    ld l, $F0
    jr nc, jr_033_5EDD

jr_033_5E99:
    ld l, $F0

jr_033_5E9B:
    jr nc, jr_033_5EDF

    ld l, $F0
    jr nc, jr_033_5EE4

    ld l, $F0
    jr nc, jr_033_5EED

    ld l, $F0
    jr nc, jr_033_5EF1

jr_033_5EA9:
    ld l, $F0
    jr nc, jr_033_5EF8

jr_033_5EAD:
    ld d, $F0
    jr jr_033_5EFB

    ld d, $F0
    jr jr_033_5EFD

    ld d, e
    ldh a, [rHDMA4]

jr_033_5EB8:
    ld c, e

jr_033_5EB9:
    ld b, [hl]
    ldh a, [rOBP0]
    ld c, e

jr_033_5EBD:
    ld l, e
    ldh a, [$6C]
    ld c, d
    ld [hl], b
    ldh a, [$72]

jr_033_5EC4:
    ld c, h
    add b
    set 6, b
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

jr_033_5ED4:
    jr z, jr_033_5F05

    nop

jr_033_5ED7:
    dec l

jr_033_5ED8:
    jr nc, jr_033_5EDA

jr_033_5EDA:
    nop
    nop
    nop

jr_033_5EDD:
    nop
    nop

jr_033_5EDF:
    nop
    nop
    nop
    nop
    nop

jr_033_5EE4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_5EED:
    nop
    nop
    nop
    nop

jr_033_5EF1:
    nop
    nop
    nop
    dec hl
    dec hl
    nop
    nop

jr_033_5EF8:
    nop
    nop
    nop

jr_033_5EFB:
    nop
    nop

jr_033_5EFD:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_5F05:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_033_5F59

jr_033_5F59:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, $05
    or d
    inc c
    cp a
    db $10
    cp c
    db $FC
    ld h, b
    and [hl]
    inc bc
    ld b, $F0
    ld h, b
    ld h, $06
    ldh a, [$60]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$60]
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
    ldh a, [$30]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rOBP0]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [rP1]
    rst $38
    ldh a, [$60]
    xor l
    daa
    ld l, $F0
    jr nc, jr_033_653C

    ld l, $F0
    jr nc, jr_033_6547

    ld l, $F0
    jr nc, jr_033_654C

    ld l, $F0
    jr nc, @+$3B

    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    ld e, [hl]
    ldh a, [$60]
    jr z, jr_033_654B

    ldh a, [$30]
    cpl
    ld l, $F0
    jr nc, jr_033_655A

    ld l, $F0
    jr nc, @+$3A

    ld l, $F0
    jr nc, @+$36

    ld e, [hl]
    ldh a, [$60]
    cpl
    ld e, [hl]
    ldh a, [$60]
    dec l
    ld l, $F0
    jr nc, jr_033_656C

    ld l, $F0
    jr nc, @+$3D

jr_033_653C:
    ld l, $F0
    jr nc, jr_033_657C

    ld l, $F0
    jr nc, @+$3B

    ld e, [hl]
    ldh a, [$60]

jr_033_6547:
    inc [hl]
    ld e, [hl]
    ldh a, [$60]

jr_033_654B:
    ld [hl-], a

jr_033_654C:
    ld l, $F0
    jr nc, @+$3B

    ld l, $F0
    jr nc, jr_033_6594

    ld l, $F0
    jr nc, @+$43

    ld l, $F0

jr_033_655A:
    jr nc, jr_033_659A

    ld e, [hl]
    ldh a, [$60]
    jr nc, @+$60

    ldh a, [$60]
    ld l, $2E
    ldh a, [$30]
    dec [hl]
    ld l, $F0
    jr nc, jr_033_65AA

jr_033_656C:
    ld l, $F0
    jr nc, @+$2F

    ld l, $F0
    jr nc, @+$2D

    ld l, $F0
    jr nc, jr_033_65AA

    ld l, $F0
    jr nc, jr_033_65B6

jr_033_657C:
    ld l, $F0
    jr nc, jr_033_65B2

    ld l, $F0
    jr nc, jr_033_65B8

    ld l, $F0
    jr nc, @+$3D

    ld l, $F0
    jr nc, jr_033_65CC

    ld l, $F0
    jr nc, jr_033_65C4

    ld l, $F0
    jr nc, @+$37

jr_033_6594:
    ld l, $F0
    jr nc, jr_033_65D4

    ld l, $F0

jr_033_659A:
    jr nc, jr_033_65DD

    ld l, $F0
    jr nc, jr_033_65D4

    ld l, $F0
    jr nc, jr_033_65D6

    ld l, $F0
    jr nc, jr_033_65E1

    ld l, $F0

jr_033_65AA:
    jr nc, @+$40

    ld l, $F0
    jr nc, jr_033_65E0

    ld l, $F0

jr_033_65B2:
    jr nc, @+$30

    ld l, $F0

jr_033_65B6:
    jr nc, jr_033_65ED

jr_033_65B8:
    ld l, $F0
    jr nc, @+$3C

    ld l, $F0
    jr nc, jr_033_65F5

    ld l, $F0
    jr nc, jr_033_65F8

jr_033_65C4:
    ld l, $F0
    jr nc, jr_033_6603

    ld l, $F0
    jr nc, jr_033_660C

jr_033_65CC:
    ld l, $F0
    jr nc, @+$3D

    ld l, $F0
    jr nc, jr_033_6608

jr_033_65D4:
    add b
    cp [hl]

jr_033_65D6:
    ldh a, [$C0]
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]

jr_033_65DD:
    ld b, $F0
    inc c

jr_033_65E0:
    inc [hl]

jr_033_65E1:
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]

jr_033_65ED:
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]

jr_033_65F5:
    ld b, $F0
    inc c

jr_033_65F8:
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0

jr_033_6603:
    inc c
    inc [hl]
    ld b, $F0
    inc c

jr_033_6608:
    inc [hl]
    db $10
    ldh a, [rNR23]

jr_033_660C:
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    jr nc, jr_033_66DA

    ldh a, [rNR23]
    jr nc, jr_033_66D4

    ldh a, [$0C]
    jr nc, jr_033_66D8

    ldh a, [$0C]

jr_033_66D4:
    jr nc, jr_033_66E6

    ldh a, [rNR23]

jr_033_66D8:
    jr nc, jr_033_66E0

jr_033_66DA:
    ldh a, [$0C]
    jr nc, jr_033_66E4

    ldh a, [$0C]

jr_033_66E0:
    jr nc, jr_033_66F2

    ldh a, [rNR23]

jr_033_66E4:
    jr nc, jr_033_66EC

jr_033_66E6:
    ldh a, [$0C]
    jr nc, jr_033_66F0

    ldh a, [$0C]

jr_033_66EC:
    jr nc, jr_033_66FE

    ldh a, [rNR23]

jr_033_66F0:
    jr nc, jr_033_66F8

jr_033_66F2:
    ldh a, [$0C]
    jr nc, jr_033_66FC

    ldh a, [$0C]

jr_033_66F8:
    jr nc, jr_033_670A

    ldh a, [rNR23]

jr_033_66FC:
    jr nc, jr_033_6704

jr_033_66FE:
    ldh a, [$0C]
    jr nc, jr_033_6708

    ldh a, [$0C]

jr_033_6704:
    jr nc, jr_033_6716

    ldh a, [rNR23]

jr_033_6708:
    jr nc, jr_033_6710

jr_033_670A:
    ldh a, [$0C]
    jr nc, jr_033_6714

    ldh a, [$0C]

jr_033_6710:
    jr nc, jr_033_6722

    ldh a, [rNR23]

jr_033_6714:
    jr nc, jr_033_671C

jr_033_6716:
    ldh a, [$0C]
    jr nc, jr_033_6720

    ldh a, [$0C]

jr_033_671C:
    jr nc, @+$12

    ldh a, [rNR23]

jr_033_6720:
    jr nc, jr_033_6728

jr_033_6722:
    ldh a, [$0C]
    jr nc, jr_033_672C

    ldh a, [$0C]

jr_033_6728:
    dec l
    db $10
    ldh a, [rNR23]

jr_033_672C:
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    cpl
    db $10
    ldh a, [rNR23]
    cpl
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld d, $F0
    jr jr_033_6810

    ld d, $F0
    jr @+$2F

    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c

jr_033_6810:
    dec l
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    db $10
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    dec [hl]
    db $10
    ldh a, [rNR23]
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    db $10
    ldh a, [rNR23]
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    db $10
    ldh a, [rNR23]
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    db $10
    ldh a, [rNR23]
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    cpl
    db $10
    ldh a, [rNR23]
    cpl
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    cpl
    db $10
    ldh a, [rNR23]
    cpl
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    cpl
    db $10
    ldh a, [rNR23]
    cpl
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    cpl
    db $10
    ldh a, [rNR23]
    cpl
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    inc [hl]
    ld d, $F0
    inc h
    inc [hl]
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, jr_033_69A5

    dec bc
    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld d, $F0
    inc h
    inc [hl]
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, jr_033_69BD

    dec bc
    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld d, $F0
    inc h
    inc [hl]
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, jr_033_69D5

    dec bc
    ldh a, [rNR23]
    inc [hl]

jr_033_69A5:
    dec bc
    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [$90]
    inc [hl]
    dec bc
    ldh a, [$30]
    inc [hl]
    ld d, $F0
    inc h
    inc [hl]
    dec bc
    ldh a, [rNR50]
    inc [hl]

jr_033_69BD:
    ld d, $F0
    jr nc, jr_033_69F5

    ld d, $F0
    jr jr_033_69F9

    ld d, $F0
    jr @+$31

    ld d, $F0
    jr jr_033_6A01

    ld d, $F0
    inc h
    inc [hl]
    dec bc
    ldh a, [rNR50]
    inc [hl]

jr_033_69D5:
    ld d, $F0
    jr nc, jr_033_6A0D

    ld d, $F0
    jr jr_033_6A11

    ld d, $F0
    jr @+$31

    ld d, $F0
    jr jr_033_6A19

    ld d, $F0
    inc h
    inc [hl]
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, jr_033_6A25

    ld d, $F0
    jr jr_033_6A29

jr_033_69F5:
    ld d, $F0
    jr @+$31

jr_033_69F9:
    ld d, $F0
    jr jr_033_6A31

    ld d, $F0
    inc h
    inc [hl]

jr_033_6A01:
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, jr_033_6A3D

    ld d, $F0
    jr jr_033_6A41

jr_033_6A0D:
    ld d, $F0
    jr @+$31

jr_033_6A11:
    ld d, $F0
    jr jr_033_6A49

    ld d, $F0
    inc h
    inc [hl]

jr_033_6A19:
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, jr_033_6A55

    ld d, $F0
    jr jr_033_6A59

jr_033_6A25:
    ld d, $F0
    jr @+$31

jr_033_6A29:
    ld d, $F0
    jr jr_033_6A61

    ld d, $F0
    inc h
    inc [hl]

jr_033_6A31:
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, jr_033_6A6D

    ld d, $F0
    jr jr_033_6A71

jr_033_6A3D:
    ld d, $F0
    jr @+$31

jr_033_6A41:
    ld d, $F0
    jr @+$36

    ld d, $F0
    inc h
    inc [hl]

jr_033_6A49:
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, @+$36

    ld d, $F0
    jr @+$36

jr_033_6A55:
    ld d, $F0
    jr jr_033_6A88

jr_033_6A59:
    ld d, $F0
    jr jr_033_6A91

    ld d, $F0
    inc h
    inc [hl]

jr_033_6A61:
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, jr_033_6A9D

    ld d, $F0
    jr jr_033_6AA1

jr_033_6A6D:
    ld d, $F0
    jr jr_033_6AA0

jr_033_6A71:
    ld d, $F0
    jr jr_033_6AA5

    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_033_6A8D

    ldh a, [rNR23]
    jr nc, jr_033_6A91

    ldh a, [rNR23]

jr_033_6A88:
    jr nc, jr_033_6A95

    ldh a, [rNR23]
    scf

jr_033_6A8D:
    ld d, $F0
    jr @+$32

jr_033_6A91:
    ld d, $F0
    jr jr_033_6AC4

jr_033_6A95:
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    cpl

jr_033_6A9D:
    dec bc
    ldh a, [rNR23]

jr_033_6AA0:
    cpl

jr_033_6AA1:
    dec bc
    ldh a, [rNR23]
    cpl

jr_033_6AA5:
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    scf
    ld d, $F0
    jr jr_033_6AE0

    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]

jr_033_6AC4:
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    scf
    ld d, $F0
    jr @+$30

    ld d, $F0
    jr jr_033_6B04

    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]

jr_033_6AE0:
    cpl
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    scf
    ld d, $F0
    jr jr_033_6B20

    ld d, $F0
    jr jr_033_6B25

    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_033_6B0D

    ldh a, [rNR23]

jr_033_6B04:
    jr nc, jr_033_6B11

    ldh a, [rNR23]
    jr nc, jr_033_6B15

    ldh a, [rNR23]
    scf

jr_033_6B0D:
    ld d, $F0
    jr @+$32

jr_033_6B11:
    ld d, $F0
    jr jr_033_6B44

jr_033_6B15:
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]

jr_033_6B20:
    cpl
    dec bc
    ldh a, [rNR23]
    cpl

jr_033_6B25:
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    scf
    ld d, $F0
    jr jr_033_6B60

    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]

jr_033_6B44:
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    scf
    ld d, $F0
    jr jr_033_6B7F

    ld d, $F0
    jr @+$31

    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]

jr_033_6B60:
    cpl
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    cpl
    dec bc
    ldh a, [rNR23]
    scf
    ld d, $F0
    jr @+$31

    ld d, $F0
    jr jr_033_6BA9

    ld d, $F0
    inc h
    inc [hl]
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0

jr_033_6B7F:
    jr nc, jr_033_6BB5

    ld d, $F0
    jr jr_033_6BB9

    ld d, $F0
    jr jr_033_6BBD

    ld d, $F0
    jr jr_033_6BC1

    ld d, $F0
    inc h
    inc [hl]
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, jr_033_6BCD

    ld d, $F0
    jr jr_033_6BD1

    ld d, $F0
    jr jr_033_6BD5

    ld d, $F0
    jr jr_033_6BD9

    ld d, $F0
    inc h
    inc [hl]

jr_033_6BA9:
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, jr_033_6BE5

    ld d, $F0
    jr jr_033_6BE9

jr_033_6BB5:
    ld d, $F0
    jr jr_033_6BED

jr_033_6BB9:
    ld d, $F0
    jr jr_033_6BF1

jr_033_6BBD:
    ld d, $F0
    ret nz

    inc [hl]

jr_033_6BC1:
    ld d, $F0
    inc h
    inc [hl]
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, jr_033_6C01

jr_033_6BCD:
    ld d, $F0
    jr jr_033_6C05

jr_033_6BD1:
    ld d, $F0
    jr jr_033_6C09

jr_033_6BD5:
    ld d, $F0
    jr jr_033_6C0D

jr_033_6BD9:
    ld d, $F0
    inc h
    inc [hl]
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, @+$36

jr_033_6BE5:
    ld d, $F0
    jr @+$36

jr_033_6BE9:
    ld d, $F0
    jr @+$36

jr_033_6BED:
    ld d, $F0
    jr @+$36

jr_033_6BF1:
    ld d, $F0
    inc h
    inc [hl]
    dec bc
    ldh a, [rNR50]
    inc [hl]
    ld d, $F0
    jr nc, @+$36

    ld d, $F0
    jr @+$36

jr_033_6C01:
    ld d, $F0
    jr @+$36

jr_033_6C05:
    ld d, $F0
    jr @+$36

jr_033_6C09:
    ld d, $F0
    nop
    rst $38

jr_033_6C0D:
    ldh a, [rP1]
    rst $00
    ld d, c
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    add b
    xor $F0
    ldh a, [rBGP]
    ld l, $F0
    jr nc, jr_033_6C66

    ld l, $F0
    jr nc, @+$4C

    ld l, $F0
    jr nc, jr_033_6C6D

    add c
    ld e, $F1
    jr nz, @+$49

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    add b
    xor $F0
    ldh a, [rBGP]
    ld l, $F0
    jr nc, jr_033_6C80

    ld l, $F0
    jr nc, @+$51

    ld l, $F0
    jr nc, @+$4F

    add c
    ld e, $F1
    jr nz, @+$4E

    ld e, [hl]
    ldh a, [$60]
    ld c, l
    add b
    xor $F0
    ldh a, [rWY]
    ld l, $F0
    jr nc, @+$4E

    ld l, $F0
    jr nc, jr_033_6CA3

    ld l, $F0
    jr nc, jr_033_6CA6

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld c, b

jr_033_6C66:
    ld e, [hl]
    ldh a, [$60]
    ld c, d
    add b
    xor $F0

jr_033_6C6D:
    ldh a, [rOBP1]
    ld l, $F0
    jr nc, jr_033_6CBD

    ld l, $F0
    jr nc, jr_033_6CC4

    ld l, $F0
    jr nc, @+$4E

    add d
    ld b, b
    di
    ret nz

    ld b, b

jr_033_6C80:
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld l, $F0
    jr nc, jr_033_6CCE

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_033_6CD4

    ld l, $F0
    jr nc, @+$3D

    ld l, $F0
    jr nc, jr_033_6CDC

    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld e, [hl]
    ldh a, [$60]

jr_033_6CA3:
    ld b, e
    ld l, $F0

jr_033_6CA6:
    jr nc, jr_033_6CEA

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_033_6CF0

    ld l, $F0
    jr nc, @+$3D

    ld l, $F0
    jr nc, jr_033_6CF4

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld e, [hl]

jr_033_6CBD:
    ldh a, [$60]
    ld b, l
    ld l, $F0
    jr nc, @+$45

jr_033_6CC4:
    ld d, $F0
    jr @+$47

    ld d, $F0
    jr jr_033_6D0E

    ld l, $F0

jr_033_6CCE:
    jr nc, jr_033_6D0B

    ld l, $F0
    jr nc, jr_033_6D14

jr_033_6CD4:
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld e, [hl]
    ldh a, [$60]
    ld b, e

jr_033_6CDC:
    ld l, $F0
    jr nc, jr_033_6D22

    ld d, $F0
    jr jr_033_6D27

    ld d, $F0
    jr @+$42

    ld l, $F0

jr_033_6CEA:
    jr nc, jr_033_6D33

    ld l, $F0
    jr nc, @+$4A

jr_033_6CF0:
    ld e, [hl]
    ldh a, [$60]
    ld b, l

jr_033_6CF4:
    ld l, $F0
    jr nc, @+$4A

    ld l, $F0
    jr nc, jr_033_6D43

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, jr_033_6D50

    halt
    ldh a, [$78]

jr_033_6D0B:
    ld c, d
    ld d, $F0

jr_033_6D0E:
    jr jr_033_6D5C

    ld d, $F0
    jr jr_033_6D5C

jr_033_6D14:
    ld d, $F0
    jr @+$49

    add b
    adc [hl]
    ldh a, [$90]
    ld b, a
    ld l, $F0
    jr nc, jr_033_6D69

    ld e, [hl]

jr_033_6D22:
    ldh a, [$60]
    ld b, l
    ld l, $F0

jr_033_6D27:
    jr nc, jr_033_6D71

    ld l, $F0
    jr nc, jr_033_6D74

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld l, $F0

jr_033_6D33:
    jr nc, @+$49

    ld l, $F0
    jr nc, jr_033_6D81

    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld l, $F0
    jr nc, jr_033_6D89

    ld l, $F0

jr_033_6D43:
    jr nc, jr_033_6D90

    ld e, [hl]
    ldh a, [$60]
    ld d, e
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld d, $F0
    inc h

jr_033_6D50:
    ld b, a
    dec bc
    ldh a, [rNR50]
    ld b, a
    ld d, $F0
    jr nc, @+$4C

    dec bc
    ldh a, [$0C]

jr_033_6D5C:
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, b

jr_033_6D69:
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, a

jr_033_6D71:
    ld d, $F0
    inc h

jr_033_6D74:
    ld b, a
    dec bc
    ldh a, [rNR50]
    ld b, a
    ld d, $F0
    jr nc, @+$49

    dec bc
    ldh a, [$0C]
    ld b, a

jr_033_6D81:
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, l

jr_033_6D89:
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]

jr_033_6D90:
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, a
    ld d, $F0
    inc h
    ld b, a
    dec bc
    ldh a, [rNR50]
    ld b, a
    ld d, $F0
    jr nc, jr_033_6DEB

    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, a
    ld d, $F0
    ret nz

    ld b, a
    halt
    ldh a, [$78]
    ld b, b
    ld d, $F0
    jr jr_033_6E0C

    ld d, $F0
    jr @+$4E

    ld d, $F0
    jr @+$48

    halt
    ldh a, [$78]
    ld b, b
    ld d, $F0
    jr @+$48

    ld d, $F0
    jr @+$4E

    ld d, $F0
    jr jr_033_6E22

    halt
    ldh a, [$78]
    ld b, b
    ld d, $F0
    jr jr_033_6E2A

    ld d, $F0
    jr jr_033_6E35

    ld d, $F0

jr_033_6DEB:
    jr @+$49

    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, a
    add b
    add e
    ldh a, [$84]
    ld b, b
    ld l, $F0
    jr nc, @+$49

    halt
    ldh a, [$78]
    ld b, b
    ld d, $F0
    jr @+$49

    ld d, $F0
    jr jr_033_6E56

    ld d, $F0

jr_033_6E0C:
    jr jr_033_6E54

    halt
    ldh a, [$78]
    ld b, b
    ld d, $F0
    jr jr_033_6E5C

    ld d, $F0
    jr jr_033_6E66

    ld d, $F0
    jr jr_033_6E63

    halt
    ldh a, [$78]
    ld b, b

jr_033_6E22:
    ld d, $F0
    jr jr_033_6E6B

    ld d, $F0
    jr jr_033_6E76

jr_033_6E2A:
    ld d, $F0
    jr @+$49

    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]

jr_033_6E35:
    ld b, a
    add b
    sbc e
    ldh a, [$9C]
    ld b, a
    ld d, $F0
    jr jr_033_6E87

    ld d, $F0
    inc h
    ld c, h
    dec bc
    ldh a, [rNR50]
    ld c, a
    ld d, $F0
    jr nc, jr_033_6E97

    dec bc
    ldh a, [rNR23]
    ld c, a
    dec bc
    ldh a, [rNR23]
    ld c, h
    dec bc

jr_033_6E54:
    ldh a, [rNR23]

jr_033_6E56:
    ld b, a
    ld d, $F0
    inc h
    ld c, h
    dec bc

jr_033_6E5C:
    ldh a, [rNR50]
    ld c, a
    halt
    ldh a, [$78]
    ld b, [hl]

jr_033_6E63:
    ld d, $F0
    inc h

jr_033_6E66:
    ld c, h
    dec bc
    ldh a, [rNR50]
    ld c, a

jr_033_6E6B:
    ld d, $F0
    jr nc, jr_033_6EBB

    dec bc
    ldh a, [rNR23]
    ld c, a
    dec bc
    ldh a, [rNR23]

jr_033_6E76:
    ld c, h
    dec bc
    ldh a, [rNR23]
    ld b, a
    ld d, $F0
    inc h
    ld c, h
    dec bc
    ldh a, [rNR50]
    ld c, a
    halt
    ldh a, [$78]
    ld c, b

jr_033_6E87:
    ld d, $F0
    inc h
    ld c, h
    dec bc
    ldh a, [rNR50]
    ld c, a
    ld d, $F0
    jr nc, jr_033_6EDF

    dec bc
    ldh a, [rNR23]
    ld c, a

jr_033_6E97:
    dec bc
    ldh a, [rNR23]
    ld c, h
    dec bc
    ldh a, [rNR23]
    ld b, a
    ld d, $F0
    inc h
    ld c, h
    dec bc
    ldh a, [rNR50]
    ld c, a
    halt
    ldh a, [$78]
    ld b, [hl]
    ld d, $F0
    inc h
    ld c, h
    dec bc
    ldh a, [rNR50]
    ld c, a
    ld d, $F0
    jr nc, jr_033_6F03

    dec bc
    ldh a, [rNR23]
    ld c, a

jr_033_6EBB:
    dec bc
    ldh a, [rNR23]
    ld c, h
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, h

jr_033_6EDF:
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, [hl]
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, c
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, e

jr_033_6F03:
    ld l, $F0
    jr nc, jr_033_6F5A

    dec b
    ldh a, [rTMA]
    ld d, c
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, a
    ld d, $F0
    inc h
    ld b, a
    dec bc
    ldh a, [rNR50]
    ld b, a
    ld d, $F0
    jr nc, @+$4C

    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, a
    ld d, $F0
    inc h
    ld b, a
    dec bc
    ldh a, [rNR50]
    ld b, a
    ld d, $F0
    jr nc, jr_033_6F9E

    dec bc
    ldh a, [$0C]

jr_033_6F5A:
    ld b, a
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, a
    ld d, $F0
    inc h
    ld b, a
    dec bc
    ldh a, [rNR50]
    ld b, a
    ld d, $F0
    jr nc, jr_033_6FC5

    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]

jr_033_6F92:
    ld b, a
    ld d, $F0
    ret nz

    ld b, a
    ld d, $F0
    inc h
    ld b, a
    dec bc
    ldh a, [rNR50]

jr_033_6F9E:
    ld b, a
    ld d, $F0
    jr nc, @+$4C

    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]

jr_033_6FAE:
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, a
    ld d, $F0
    inc h
    ld b, a
    dec bc
    ldh a, [rNR50]
    ld b, a
    ld d, $F0

jr_033_6FC5:
    jr nc, jr_033_700E

    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, a
    ld d, $F0
    inc h
    ld b, a
    dec bc
    ldh a, [rNR50]
    ld b, a
    ld d, $F0
    jr nc, jr_033_7037

    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, h
    ld d, $F0
    nop
    rst $38
    ldh a, [$60]
    cp c
    ld d, b
    add c
    ld a, [hl]
    pop af

jr_033_700E:
    add b
    jr c, jr_033_6F92

    ld a, [hl]
    pop af
    add b
    scf
    add c
    ld e, $F1
    jr nz, jr_033_7051

    ld e, [hl]
    ldh a, [$60]
    dec [hl]
    add c
    ld a, [hl]
    pop af
    add b
    dec [hl]
    add b
    cp [hl]
    ldh a, [$C0]
    scf
    add b
    cp [hl]
    ldh a, [$C0]
    jr c, jr_033_6FAE

    cp [hl]
    ldh a, [$C0]
    add hl, sp
    add b
    cp [hl]
    ldh a, [$C0]
    add hl, sp

jr_033_7037:
    add b
    cp [hl]
    ldh a, [$C0]
    ld a, [hl-]
    add b
    cp [hl]
    ldh a, [$C0]
    dec sp
    add c
    ld a, [hl]
    di
    ret nz

    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c

jr_033_7051:
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc c
    ld e, b
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld e, b
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc c
    ld e, b
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld e, b
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc c
    ld e, b
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld e, b
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld d, c
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, [hl]
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, b
    ld d, $F0
    inc h
    ld b, b
    dec bc
    ldh a, [rNR50]
    ld b, b
    ld d, $F0
    jr nc, jr_033_74B5

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, b
    ld d, $F0
    inc h
    ld b, b
    dec bc
    ldh a, [rNR50]
    ld b, b
    ld d, $F0
    jr nc, jr_033_74D6

    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, b
    ld d, $F0
    inc h
    ld b, b
    dec bc
    ldh a, [rNR50]

jr_033_74B5:
    ld b, b
    ld d, $F0
    jr nc, jr_033_74FD

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, b
    ld d, $F0
    ld h, b
    dec sp

jr_033_74D6:
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
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]

jr_033_74FD:
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld b, d
    add hl, bc
    ldh a, [$0C]
    ld b, d
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld b, d
    add hl, bc
    ldh a, [$0C]
    ld b, d
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld b, d
    add hl, bc
    ldh a, [$0C]
    ld b, d
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld b, d
    add hl, bc
    ldh a, [$0C]
    ld b, d
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [rOBP0]
    inc a
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    jr @+$3D

    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_033_77B8

    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, d
    ld b, $F0

jr_033_77B8:
    jr @+$3D

    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_033_7832

    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    jr @+$3D

jr_033_7832:
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_033_78A8

    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, d
    ld b, $F0

jr_033_78A8:
    jr jr_033_78E5

    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c

jr_033_78E5:
    ld b, b
    ld d, $F0
    inc h
    ld b, b
    dec bc
    ldh a, [rNR50]
    ld b, b
    ld d, $F0
    jr nc, jr_033_7935

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, b
    ld d, $F0
    inc h
    ld b, b
    dec bc
    ldh a, [rNR50]
    ld b, b
    ld d, $F0
    jr nc, jr_033_7956

    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, b
    ld d, $F0
    inc h
    ld b, b
    dec bc
    ldh a, [rNR50]

jr_033_7935:
    ld b, b
    ld d, $F0
    jr nc, jr_033_797D

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, b
    ld d, $F0
    ret nz

    ld b, b

jr_033_7956:
    ld d, $F0
    inc h
    ld b, b
    dec bc
    ldh a, [rNR50]
    ld b, b
    ld d, $F0
    jr nc, jr_033_79A5

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, b
    ld d, $F0
    inc h

jr_033_797D:
    ld b, b
    dec bc
    ldh a, [rNR50]
    ld b, b
    ld d, $F0
    jr nc, jr_033_79C6

    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, b
    ld d, $F0
    inc h
    ld b, b
    dec bc
    ldh a, [rNR50]

jr_033_79A5:
    ld b, b
    ld d, $F0
    jr nc, jr_033_79ED

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, b
    ld d, $F0
    nop
    rst $38

jr_033_79C6:
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
    jr z, jr_033_7A01

    nop
    dec l
    jr nc, jr_033_79D6

jr_033_79D6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_79ED:
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

jr_033_7A01:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and a
    nop
    ld c, $00
    jr jr_033_7A55

jr_033_7A55:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    ld b, $00
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $00
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0006
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    cp $00
    nop
    nop
    nop
    nop
    ld a, $01
    jp nz, $F202

    inc b
    ld b, $F0
    nop
    xor h
    inc bc
    ld b, $F0
    jr jr_033_7ABC

    inc b
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    dec b
    ldh a, [rNR23]
    inc l
    inc b
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc b
    ldh a, [rNR23]
    inc l
    inc b
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    dec b
    ldh a, [rNR23]
    inc l
    inc bc
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l

jr_033_7ABC:
    inc b
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc b
    ldh a, [rNR23]
    inc l
    inc bc
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc b
    ldh a, [rNR23]
    inc l
    inc bc
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc b
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc b
    ldh a, [rNR23]
    inc l
    inc bc
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc b
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    inc bc
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    inc bc
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    inc bc
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc b
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld bc, $06F0
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rTMA]
    inc l
    inc bc
    ldh a, [rNR23]
    inc l
    ld [bc], a
    ldh a, [rNR12]
    inc l
    ld [bc], a
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or b
    daa
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld a, [hl-]
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    jr c, jr_033_7C30

    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR12]
    scf

jr_033_7C30:
    dec b
    ldh a, [rTMA]
    jr nc, jr_033_7C40

    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld a, [hl-]

jr_033_7C40:
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    jr c, jr_033_7C54

    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR12]
    scf

jr_033_7C54:
    dec b
    ldh a, [rTMA]
    jr nc, jr_033_7C64

    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld a, [hl-]

jr_033_7C64:
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    jr c, jr_033_7C78

    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    add hl, hl

jr_033_7C78:
    dec bc
    ldh a, [rNR23]
    dec [hl]
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [$0C]
    jr c, @+$0D

    ldh a, [$0C]
    ld l, $0B
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    jr nc, jr_033_7CB4

    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld a, [hl-]

jr_033_7CB4:
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    jr c, jr_033_7CC8

    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR12]
    scf

jr_033_7CC8:
    dec b
    ldh a, [rTMA]
    jr nc, jr_033_7CD8

    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld a, [hl-]

jr_033_7CD8:
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    jr c, jr_033_7CEC

    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR12]
    scf

jr_033_7CEC:
    dec b
    ldh a, [rTMA]
    jr nc, jr_033_7CFC

    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld a, [hl-]

jr_033_7CFC:
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    jr c, jr_033_7D10

    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    add hl, hl

jr_033_7D10:
    dec bc
    ldh a, [$0C]
    dec [hl]
    dec bc
    ldh a, [$0C]
    ld a, [hl+]
    dec bc
    ldh a, [$0C]
    ld [hl], $0B
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    ld l, $0B
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    jr nc, jr_033_7D3C

    ldh a, [rNR50]
    jr nc, jr_033_7D40

    ldh a, [rNR50]
    jr nc, jr_033_7D44

    ldh a, [rP1]
    rst $38

jr_033_7D3C:
    ldh a, [$0C]
    cp h
    ld d, c

jr_033_7D40:
    dec bc
    ldh a, [rNR50]
    ld b, d

jr_033_7D44:
    dec b
    ldh a, [rTMA]
    ld b, e
    dec bc
    ldh a, [rNR12]
    ld c, b
    ld d, $F0
    jr jr_033_7D9B

    ld d, $F0
    inc h
    ld c, l
    ld d, $F0
    ld c, b
    inc a
    dec bc
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec bc
    ldh a, [rNR12]
    ld c, b
    ld d, $F0
    jr @+$50

    ld d, $F0
    jr @+$4F

    dec bc
    ldh a, [$0C]
    ld c, e
    ld d, $F0
    jr jr_033_7DBC

    ld d, $F0
    jr nc, jr_033_7DB4

    dec bc
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec bc
    ldh a, [rNR12]
    ld c, b
    ld d, $F0
    jr @+$44

    dec bc
    ldh a, [rNR12]
    ld b, e
    dec bc
    ldh a, [rNR12]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [rNR12]
    ld b, e
    dec bc
    ldh a, [rNR12]

jr_033_7D9B:
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR12]
    ld c, l
    dec bc
    ldh a, [rNR12]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [rNR12]
    ld c, b
    dec bc
    ldh a, [rNR12]
    ld b, e

jr_033_7DB4:
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    ld d, $F0
    jr jr_033_7E00

jr_033_7DBC:
    ld d, $F0
    jr jr_033_7E03

    ld d, $F0
    jr jr_033_7E05

    ld d, $F0
    inc h
    inc a
    dec bc
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec bc
    ldh a, [rNR12]
    ld c, b
    ld d, $F0
    jr jr_033_7E23

    ld d, $F0
    inc h
    ld c, l
    ld d, $F0
    ld c, b
    inc a
    dec bc
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec bc
    ldh a, [rNR12]
    ld c, b
    ld d, $F0
    jr @+$50

    dec bc
    ldh a, [rNR23]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld d, $F0
    inc h
    ld c, [hl]

jr_033_7E00:
    dec bc
    ldh a, [rNR12]

jr_033_7E03:
    ld c, a
    dec bc

jr_033_7E05:
    ldh a, [rNR12]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, [hl]
    dec bc
    ldh a, [rNR12]
    ld c, a
    dec bc
    ldh a, [rNR12]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [rNR12]
    ld c, b
    dec bc
    ldh a, [rNR12]
    ld b, d
    dec bc
    ldh a, [$0C]

jr_033_7E23:
    ld b, e
    dec bc
    ldh a, [rNR12]
    ld b, [hl]
    dec bc
    ldh a, [rNR12]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec bc
    ldh a, [rNR12]
    ld b, d
    ld a, [bc]
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR50]
    inc a
    dec bc
    ldh a, [rNR50]
    inc a
    dec bc
    ldh a, [rP1]
    rst $38
    ldh a, [$0C]
    cp h
    ld d, b
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [rNR23]
    dec sp
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [rNR23]
    dec sp
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [rNR23]
    dec sp
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [rNR23]
    dec sp
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [rNR23]
    dec sp
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR23]
    dec sp
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
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
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rNR50]
    ld c, b
    dec bc
    ldh a, [rNR50]
    ld c, b
    dec bc
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
