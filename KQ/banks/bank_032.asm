; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

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
    jr z, jr_032_403B

    nop
    dec l
    jr nc, jr_032_4010

jr_032_4010:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_032_403B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_032_408F

jr_032_408F:
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
    ld a, $0A
    sub d
    inc de
    ld b, e
    ld a, [de]
    db $DD
    rst $38
    ret nz

    and [hl]
    ld b, $06
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
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
    ldh a, [$30]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rHDMA4]
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
    ldh a, [rHDMA4]
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
    ldh a, [rHDMA4]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rHDMA4]
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
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$4E]
    ld h, $06
    ldh a, [$8A]
    ld h, $06
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    ret z

    daa
    add c
    ld a, [hl]
    pop af
    add b
    ld c, b
    add b
    cp [hl]
    ldh a, [$C0]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, b
    ld e, [hl]
    ldh a, [$60]
    ld b, [hl]
    add b
    cp [hl]
    ldh a, [$C0]
    ld b, c
    ld e, [hl]
    ldh a, [$60]
    ld a, $5E
    ldh a, [$60]
    inc a
    ld e, [hl]
    ldh a, [$60]
    ld b, b
    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    add b
    cp [hl]
    ldh a, [$C0]
    ld c, b
    ld l, $F0
    jr nc, @+$4C

    ld l, $F0
    jr nc, jr_032_4B9D

    add b
    cp [hl]
    ldh a, [$C0]
    ld c, d
    ld l, $F0
    jr nc, jr_032_4BA3

    ld l, $F0
    jr nc, jr_032_4BA9

    add b
    cp [hl]
    ldh a, [$C0]
    ld c, b
    ld l, $F0
    jr nc, @+$48

    ld l, $F0
    jr nc, @+$46

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, e
    ld l, $F0
    jr nc, jr_032_4BB6

    ld l, $F0
    jr nc, jr_032_4BB8

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    add b
    cp [hl]
    ldh a, [$C0]
    ld b, [hl]
    ld l, $F0
    jr nc, @+$46

    ld l, $F0
    jr nc, jr_032_4BD5

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, c
    ld l, $F0
    jr nc, jr_032_4BDA

    ld l, $F0

jr_032_4B9D:
    jr nc, jr_032_4BE0

    add b
    cp [hl]
    ldh a, [$C0]

jr_032_4BA3:
    ld b, c
    ld e, [hl]
    ldh a, [$60]
    ld b, e
    add b

jr_032_4BA9:
    cp [hl]
    ldh a, [$C0]
    scf
    ld l, $F0
    jr nc, jr_032_4BDC

    ld l, $F0
    jr nc, jr_032_4BE1

    dec bc

jr_032_4BB6:
    ldh a, [rNR23]

jr_032_4BB8:
    inc l
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
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr jr_032_4C08

jr_032_4BD5:
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc

jr_032_4BDA:
    ldh a, [rNR23]

jr_032_4BDC:
    inc sp
    dec bc
    ldh a, [rNR23]

jr_032_4BE0:
    inc sp

jr_032_4BE1:
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
    inc sp
    ld d, $F0
    jr jr_032_4C21

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
    inc l
    dec bc
    ldh a, [rNR23]

jr_032_4C08:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr jr_032_4C48

    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp

jr_032_4C21:
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
    inc sp
    ld d, $F0
    jr @+$34

    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]

jr_032_4C48:
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    ld d, $F0
    jr jr_032_4C80

    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    ld d, $F0
    jr jr_032_4C9E

    ld d, $F0
    jr @+$30

    dec bc
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]

jr_032_4C80:
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $16
    ldh a, [rNR23]
    jr nc, jr_032_4C99

    ldh a, [rNR23]
    jr nc, @+$18

    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a

jr_032_4C99:
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc

jr_032_4C9E:
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    ld d, $F0
    jr jr_032_4CDC

    ld d, $F0
    jr jr_032_4CE2

    ld d, $F0
    jr jr_032_4CE8

    ld d, $F0
    jr jr_032_4CE1

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
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr jr_032_4D08

    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]

jr_032_4CDC:
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp

jr_032_4CE1:
    dec bc

jr_032_4CE2:
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]

jr_032_4CE8:
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    ld d, $F0
    jr jr_032_4D21

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
    inc l
    dec bc
    ldh a, [rNR23]

jr_032_4D08:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr jr_032_4D48

    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp

jr_032_4D21:
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
    inc sp
    ld d, $F0
    jr @+$34

    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]

jr_032_4D48:
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    ld d, $F0
    jr @+$39

    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    scf
    ld d, $F0
    jr jr_032_4DA2

    dec bc
    ldh a, [rNR23]
    dec [hl]
    ld d, $F0
    jr @+$35

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
    inc sp
    dec bc
    ldh a, [rNR23]
    inc sp
    ld d, $F0
    jr @+$37

    dec bc
    ldh a, [rNR23]
    dec [hl]
    ld d, $F0
    jr jr_032_4DCC

    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    scf
    dec bc

jr_032_4DA2:
    ldh a, [rNR23]
    scf
    ld l, $F0
    jr nc, @+$2D

    ld l, $F0
    jr nc, jr_032_4DDD

    ld b, [hl]
    ldh a, [rOBP0]
    inc [hl]
    ld b, [hl]
    ldh a, [rOBP0]
    scf
    ld l, $F0
    jr nc, jr_032_4DEE

    ld b, [hl]
    ldh a, [rOBP0]
    add hl, sp
    ld b, [hl]
    ldh a, [rOBP0]
    inc a
    ld l, $F0
    jr nc, jr_032_4DF5

    ld b, [hl]
    ldh a, [rOBP0]
    inc [hl]
    ld b, [hl]
    ldh a, [rOBP0]

jr_032_4DCC:
    scf
    ld l, $F0
    jr nc, @+$2D

    ld l, $F0
    jr nc, jr_032_4E0C

    ld l, $F0
    jr nc, jr_032_4E0E

    ld l, $F0
    jr nc, @+$34

jr_032_4DDD:
    ld l, $F0
    jr nc, jr_032_4E11

    ld b, [hl]
    ldh a, [rOBP0]
    inc [hl]
    ld b, [hl]
    ldh a, [rOBP0]
    scf
    ld l, $F0
    jr nc, @+$37

    ld b, [hl]

jr_032_4DEE:
    ldh a, [rOBP0]
    add hl, sp
    ld b, [hl]
    ldh a, [rOBP0]
    inc a

jr_032_4DF5:
    ld l, $F0
    jr nc, jr_032_4E29

    ld l, $F0
    jr nc, jr_032_4E34

    ld l, $F0
    jr nc, jr_032_4E2C

    ld l, $F0
    jr nc, jr_032_4E3C

    ld l, $F0
    jr nc, jr_032_4E39

    ld b, [hl]
    ldh a, [rOBP0]

jr_032_4E0C:
    scf
    ld b, [hl]

jr_032_4E0E:
    ldh a, [rOBP0]
    dec hl

jr_032_4E11:
    ld d, $F0
    jr jr_032_4E4C

    ld d, $F0
    jr @+$37

    ld d, $F0
    inc h
    dec [hl]
    ld d, $F0
    sbc h
    inc [hl]
    ld d, $F0
    inc h
    inc [hl]
    ld d, $F0
    sbc h
    inc sp

jr_032_4E29:
    ld d, $F0
    inc h

jr_032_4E2C:
    inc sp
    ld d, $F0
    sbc h
    ld [hl-], a
    ld d, $F0
    inc h

jr_032_4E34:
    ld [hl-], a
    ld d, $F0
    sbc h
    dec [hl]

jr_032_4E39:
    ld d, $F0
    inc h

jr_032_4E3C:
    dec [hl]
    ld d, $F0
    sbc h
    inc [hl]
    ld d, $F0
    inc h
    inc [hl]
    ld d, $F0
    sbc h
    inc sp
    ld d, $F0
    inc h

jr_032_4E4C:
    inc sp
    ld d, $F0
    sbc h
    ld [hl-], a
    ld d, $F0
    inc h
    ld [hl-], a
    ld d, $F0
    inc h
    ld [hl-], a
    ld d, $F0
    jr @+$39

    ld l, $F0
    jr nc, @+$2D

    ld l, $F0
    jr nc, jr_032_4E95

    ld b, [hl]
    ldh a, [rOBP0]
    inc [hl]
    ld b, [hl]
    ldh a, [rOBP0]
    scf
    ld l, $F0
    jr nc, jr_032_4EA6

    ld b, [hl]
    ldh a, [rOBP0]
    add hl, sp
    ld b, [hl]
    ldh a, [rOBP0]
    inc a
    ld l, $F0
    jr nc, jr_032_4EAD

    ld b, [hl]
    ldh a, [rOBP0]
    inc [hl]
    ld b, [hl]
    ldh a, [rOBP0]
    scf
    ld l, $F0
    jr nc, jr_032_4EB4

    ld l, $F0
    jr nc, jr_032_4EC4

    ld l, $F0
    jr nc, @+$37

    ld l, $F0
    jr nc, jr_032_4EC7

jr_032_4E95:
    ld l, $F0
    jr nc, jr_032_4EC9

    ld b, [hl]
    ldh a, [rOBP0]
    inc [hl]
    ld b, [hl]
    ldh a, [rOBP0]
    scf
    ld l, $F0
    jr nc, jr_032_4EDA

    ld b, [hl]

jr_032_4EA6:
    ldh a, [rOBP0]
    add hl, sp
    ld b, [hl]
    ldh a, [rOBP0]
    inc a

jr_032_4EAD:
    ld l, $F0
    jr nc, jr_032_4EE8

    ld e, [hl]
    ldh a, [$60]

jr_032_4EB4:
    dec hl
    ld e, [hl]
    ldh a, [$60]
    scf
    ld e, [hl]
    ldh a, [$60]
    dec hl
    ld e, [hl]
    ldh a, [$60]
    jr nc, jr_032_4ECD

    ldh a, [$30]

jr_032_4EC4:
    scf
    ld l, $F0

jr_032_4EC7:
    jr nc, jr_032_4EF4

jr_032_4EC9:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_032_4ECD:
    dec bc
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, @+$0D

jr_032_4EDA:
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]

jr_032_4EE8:
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]

jr_032_4EF4:
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
    jr nc, jr_032_4F19

    ldh a, [rNR23]
    jr nc, jr_032_4F1D

    ldh a, [rNR23]
    jr nc, jr_032_4F2C

    ldh a, [rNR23]
    inc sp

jr_032_4F19:
    dec bc
    ldh a, [rNR23]
    inc sp

jr_032_4F1D:
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

jr_032_4F2C:
    inc sp
    ld d, $F0
    jr @+$34

    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    ld d, $F0
    jr @+$32

    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_032_4F51

    ldh a, [rNR23]
    jr nc, jr_032_4F55

    ldh a, [rNR23]
    jr nc, jr_032_4F64

    ldh a, [rNR23]
    dec hl

jr_032_4F51:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_032_4F55:
    ld d, $F0
    jr @+$32

    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]

jr_032_4F64:
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
    jr nc, jr_032_4F99

    ldh a, [rNR23]
    jr nc, jr_032_4F9D

    ldh a, [rNR23]
    jr nc, jr_032_4FAC

    ldh a, [rNR23]
    inc sp

jr_032_4F99:
    dec bc
    ldh a, [rNR23]
    inc sp

jr_032_4F9D:
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

jr_032_4FAC:
    inc sp
    ld d, $F0
    jr @+$34

    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    ld d, $F0
    jr jr_032_4FE9

    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_032_4FD1

    ldh a, [rNR23]
    jr nc, jr_032_4FD5

    ldh a, [rNR23]
    jr nc, jr_032_4FE4

    ldh a, [rNR23]
    dec hl

jr_032_4FD1:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_032_4FD5:
    ld d, $F0
    jr @+$2E

    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr @+$3A

    dec bc
    ldh a, [rNR23]

jr_032_4FE4:
    jr c, jr_032_4FFC

    ldh a, [rNR23]
    inc l

jr_032_4FE9:
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr jr_032_5029

    dec bc
    ldh a, [rNR23]
    jr c, @+$0D

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]

jr_032_4FFC:
    inc l
    dec bc
    ldh a, [rNR23]
    jr c, jr_032_500D

    ldh a, [rNR23]
    jr c, jr_032_501C

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l

jr_032_500D:
    ld d, $F0
    jr jr_032_5049

    dec bc
    ldh a, [rNR23]
    jr c, jr_032_5021

    ldh a, [rNR23]
    jr nc, jr_032_5025

    ldh a, [rNR23]

jr_032_501C:
    jr nc, jr_032_5029

    ldh a, [rNR23]
    inc [hl]

jr_032_5021:
    dec bc
    ldh a, [rNR23]
    inc [hl]

jr_032_5025:
    dec bc
    ldh a, [rNR23]
    scf

jr_032_5029:
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
    jr nc, jr_032_5045

    ldh a, [rNR23]
    jr nc, jr_032_5049

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]

jr_032_5045:
    dec bc
    ldh a, [rNR23]
    scf

jr_032_5049:
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
    jr c, jr_032_506D

    ldh a, [rNR23]
    jr c, jr_032_507C

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l

jr_032_506D:
    dec bc
    ldh a, [rNR23]
    jr c, jr_032_507D

    ldh a, [rNR23]
    jr c, jr_032_508C

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]

jr_032_507C:
    inc l

jr_032_507D:
    dec bc
    ldh a, [rNR23]
    jr c, jr_032_508D

    ldh a, [rNR23]
    jr c, jr_032_509C

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]

jr_032_508C:
    inc l

jr_032_508D:
    ld d, $F0
    jr jr_032_50C9

    dec bc
    ldh a, [rNR23]
    jr c, jr_032_50AC

    ldh a, [rNR23]
    jr nc, jr_032_50A5

    ldh a, [rNR23]

jr_032_509C:
    jr nc, jr_032_50B4

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]

jr_032_50A5:
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]

jr_032_50AC:
    scf
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]

jr_032_50B4:
    inc a
    dec bc
    ldh a, [rNR23]
    jr nc, jr_032_50C5

    ldh a, [rNR23]
    jr nc, jr_032_50C9

    ldh a, [rNR23]
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]

jr_032_50C5:
    dec bc
    ldh a, [rNR23]
    scf

jr_032_50C9:
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
    ld d, $F0
    jr jr_032_5119

    dec bc
    ldh a, [rNR23]
    jr c, jr_032_50FC

    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    ld d, $F0
    jr jr_032_5129

    dec bc
    ldh a, [rNR23]
    jr c, jr_032_510C

    ldh a, [rNR23]
    add hl, hl
    dec bc
    ldh a, [rNR23]

jr_032_50FC:
    add hl, hl
    dec bc
    ldh a, [rNR23]
    dec [hl]
    dec bc
    ldh a, [rNR23]
    dec [hl]
    dec bc
    ldh a, [rNR23]
    add hl, hl
    dec bc
    ldh a, [rNR23]

jr_032_510C:
    add hl, hl
    ld d, $F0
    jr jr_032_5146

    dec bc
    ldh a, [rNR23]
    dec [hl]
    dec bc
    ldh a, [rNR23]
    dec hl

jr_032_5119:
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

jr_032_5129:
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

jr_032_5146:
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
    ld d, $F0
    jr jr_032_5189

    dec bc
    ldh a, [$30]
    ld l, $16
    ldh a, [$30]
    inc l
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    jr jr_032_519D

    dec bc
    ldh a, [$30]
    ld l, $0B
    ldh a, [$30]
    inc l
    dec bc
    ldh a, [rNR50]
    dec hl
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    jr jr_032_51B1

    ld d, $F0
    jr nc, jr_032_51B3

    ld d, $F0
    jr nc, jr_032_51B5

jr_032_5189:
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    jr jr_032_51C5

    ld d, $F0
    jr nc, jr_032_51C7

    ld d, $F0
    jr nc, jr_032_51C9

jr_032_519D:
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    jr jr_032_51D9

    ld d, $F0
    jr nc, jr_032_51DB

    ld d, $F0
    jr nc, jr_032_51DD

jr_032_51B1:
    ld d, $F0

jr_032_51B3:
    inc h
    dec hl

jr_032_51B5:
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    jr jr_032_51ED

    ld d, $F0
    jr nc, jr_032_51EF

    ld d, $F0
    jr nc, jr_032_51F1

jr_032_51C5:
    ld d, $F0

jr_032_51C7:
    inc h
    dec hl

jr_032_51C9:
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    jr jr_032_5201

    ld d, $F0
    jr nc, jr_032_5203

    ld d, $F0
    jr nc, jr_032_5205

jr_032_51D9:
    ld d, $F0

jr_032_51DB:
    inc h
    dec hl

jr_032_51DD:
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    jr jr_032_5215

    ld d, $F0
    jr nc, jr_032_5217

    ld d, $F0
    jr nc, jr_032_5219

jr_032_51ED:
    ld d, $F0

jr_032_51EF:
    inc h
    dec hl

jr_032_51F1:
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    jr jr_032_5229

    ld d, $F0
    jr nc, jr_032_522B

    ld d, $F0
    jr nc, jr_032_522D

jr_032_5201:
    ld d, $F0

jr_032_5203:
    inc h
    dec hl

jr_032_5205:
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    jr @+$32

    ld d, $F0
    jr nc, @+$30

    ld d, $F0
    jr nc, @+$2E

jr_032_5215:
    ld d, $F0

jr_032_5217:
    inc h
    dec hl

jr_032_5219:
    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    jr jr_032_524C

    ld d, $F0
    inc h
    dec hl
    ld d, $F0
    add h
    dec hl

jr_032_5229:
    ld d, $F0

jr_032_522B:
    jr @+$2F

jr_032_522D:
    ld d, $F0
    inc h
    dec l
    ld d, $F0
    add h
    dec l
    ld d, $F0
    jr @+$30

    ld d, $F0
    inc h
    ld l, $16
    ldh a, [$84]
    ld l, $16
    ldh a, [rNR23]
    cpl
    ld d, $F0
    inc h
    cpl
    ld d, $F0
    inc h

jr_032_524C:
    cpl
    ld d, $F0
    jr jr_032_5280

    ld l, $F0
    jr nc, jr_032_5280

    ld d, $F0
    jr @+$2D

    ld d, $F0
    jr jr_032_528D

    ld l, $F0
    jr nc, jr_032_529D

    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_5271

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_52A9

    ld d, $F0
    jr jr_032_529D

jr_032_5271:
    ld d, $F0
    jr jr_032_52A5

    ld l, $F0
    jr nc, jr_032_52B5

    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_5289

    ldh a, [$0C]

jr_032_5280:
    inc l
    ld l, $F0
    jr nc, jr_032_52C1

    ld d, $F0
    jr jr_032_52B5

jr_032_5289:
    ld d, $F0
    jr jr_032_52BD

jr_032_528D:
    ld l, $F0
    jr nc, jr_032_52CD

    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_52A1

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_52D9

jr_032_529D:
    ld d, $F0
    jr jr_032_52CD

jr_032_52A1:
    ld d, $F0
    jr jr_032_52D5

jr_032_52A5:
    ld l, $F0
    jr nc, jr_032_52E5

jr_032_52A9:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_52B9

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_52F1

jr_032_52B5:
    ld d, $F0
    jr jr_032_52E5

jr_032_52B9:
    ld d, $F0
    jr jr_032_52ED

jr_032_52BD:
    ld l, $F0
    jr nc, jr_032_52FD

jr_032_52C1:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_52D1

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_5309

jr_032_52CD:
    ld d, $F0
    jr jr_032_52FD

jr_032_52D1:
    ld d, $F0
    jr jr_032_5305

jr_032_52D5:
    ld l, $F0
    jr nc, jr_032_5315

jr_032_52D9:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_52E9

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_5321

jr_032_52E5:
    ld d, $F0
    jr jr_032_5315

jr_032_52E9:
    ld d, $F0
    jr jr_032_531D

jr_032_52ED:
    ld l, $F0
    jr nc, jr_032_532D

jr_032_52F1:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_5301

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_5339

jr_032_52FD:
    ld d, $F0
    jr jr_032_532D

jr_032_5301:
    ld d, $F0
    jr jr_032_5335

jr_032_5305:
    ld l, $F0
    jr nc, jr_032_5345

jr_032_5309:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_5319

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_5351

jr_032_5315:
    ld d, $F0
    jr jr_032_5345

jr_032_5319:
    ld d, $F0
    jr jr_032_534D

jr_032_531D:
    ld l, $F0
    jr nc, jr_032_535D

jr_032_5321:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_5331

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_5369

jr_032_532D:
    ld d, $F0
    jr jr_032_535D

jr_032_5331:
    ld d, $F0
    jr jr_032_5365

jr_032_5335:
    ld l, $F0
    jr nc, jr_032_5375

jr_032_5339:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_5349

    ldh a, [$0C]
    inc l
    ld l, $F0

jr_032_5343:
    jr nc, jr_032_5381

jr_032_5345:
    ld d, $F0
    jr jr_032_5375

jr_032_5349:
    ld d, $F0
    jr jr_032_537D

jr_032_534D:
    ld l, $F0
    jr nc, jr_032_538D

jr_032_5351:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_5361

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_5399

jr_032_535D:
    ld d, $F0
    jr jr_032_538D

jr_032_5361:
    ld d, $F0
    jr jr_032_5395

jr_032_5365:
    ld l, $F0
    jr nc, jr_032_53A5

jr_032_5369:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_5379

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_53B1

jr_032_5375:
    ld d, $F0
    jr jr_032_53A5

jr_032_5379:
    ld d, $F0
    jr jr_032_53AD

jr_032_537D:
    ld l, $F0
    jr nc, jr_032_53BD

jr_032_5381:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_5391

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_53C9

jr_032_538D:
    ld d, $F0
    jr jr_032_53BD

jr_032_5391:
    ld d, $F0
    jr @+$32

jr_032_5395:
    ld l, $F0
    jr nc, @+$3E

jr_032_5399:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_53A9

    ldh a, [$0C]
    inc l
    ld l, $F0
    jr nc, jr_032_53E1

jr_032_53A5:
    ld d, $F0
    jr @+$2E

jr_032_53A9:
    ld d, $F0
    jr jr_032_53DD

jr_032_53AD:
    ld l, $F0
    jr nc, jr_032_53ED

jr_032_53B1:
    inc hl
    ldh a, [rNR50]
    jr nc, jr_032_53C1

    ldh a, [$0C]
    inc l
    ld c, l
    ldh a, [$4E]
    inc a

jr_032_53BD:
    add b
    adc b
    ldh a, [$8A]

jr_032_53C1:
    jr nc, jr_032_5343

    sbc e
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]

jr_032_53C9:
    jp $8151


    ld a, [hl]
    pop af
    add b
    ld c, d
    ld l, $F0
    jr nc, jr_032_5420

    ld l, $F0
    jr nc, jr_032_5420

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, e

jr_032_53DD:
    ld e, [hl]
    ldh a, [$60]
    ld c, d

jr_032_53E1:
    ld l, $F0
    jr nc, @+$4E

    ld l, $F0
    jr nc, jr_032_5436

    add b
    cp [hl]
    ldh a, [$C0]

jr_032_53ED:
    ld c, h
    ld l, $F0
    jr nc, @+$4C

    ld l, $F0
    jr nc, @+$4A

    ld l, $F0
    jr nc, jr_032_5446

    ld l, $F0
    jr nc, jr_032_544F

    ld l, $F0
    jr nc, @+$56

    ld l, $F0
    jr nc, @+$55

    ld l, $F0
    jr nc, jr_032_545E

    ld l, $F0
    jr nc, jr_032_545E

    ld l, $F0
    jr nc, @+$4D

    ld l, $F0
    jr nc, jr_032_545E

    ld e, [hl]
    ldh a, [$60]
    ld c, l
    ld e, [hl]
    ldh a, [$60]
    ld c, a
    ld l, $F0

jr_032_5420:
    jr nc, jr_032_5472

    ld l, $F0
    jr nc, jr_032_5475

    ld e, [hl]
    ldh a, [$60]
    ld c, l
    ld l, $F0
    jr nc, @+$4D

    ld l, $F0
    jr nc, jr_032_547F

    ld e, [hl]
    ldh a, [$60]
    ld d, d

jr_032_5436:
    add b
    cp [hl]
    ldh a, [$C0]
    ld d, b
    ld l, $F0
    jr nc, @+$54

    ld l, $F0
    jr nc, jr_032_5493

    ld e, [hl]
    ldh a, [$60]

jr_032_5446:
    ld c, a
    ld l, $F0
    jr nc, jr_032_5498

    ld l, $F0
    jr nc, jr_032_549E

jr_032_544F:
    ld e, [hl]
    ldh a, [$60]
    ld d, h
    add b
    cp [hl]
    ldh a, [$C0]
    ld d, [hl]
    ld l, $F0
    jr nc, jr_032_54B3

    ld l, $F0

jr_032_545E:
    jr nc, jr_032_54B4

    add b
    adc [hl]
    ldh a, [$90]
    ld d, [hl]
    ld l, $F0
    jr nc, jr_032_54BF

    ld l, $F0
    jr nc, jr_032_54C4

    ld l, $F0
    jr nc, @+$56

    add b

jr_032_5472:
    cp [hl]
    ldh a, [$C0]

jr_032_5475:
    ld d, a
    ld l, $F0
    jr nc, @+$5B

    ld l, $F0
    jr nc, jr_032_54D5

    ld e, [hl]

jr_032_547F:
    ldh a, [$60]
    ld d, [hl]
    ld l, $F0
    jr nc, @+$56

    ld l, $F0
    jr nc, @+$58

    add b
    cp [hl]
    ldh a, [$C0]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, b

jr_032_5493:
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc

jr_032_5498:
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [$0C]

jr_032_549E:
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, b
    ld b, [hl]
    ldh a, [rOBP0]
    ld c, l

jr_032_54B3:
    ld b, [hl]

jr_032_54B4:
    ldh a, [rOBP0]
    ld c, b
    ld l, $F0
    jr nc, jr_032_5501

    add b
    adc [hl]
    ldh a, [$90]

jr_032_54BF:
    ld b, h
    ld d, $F0
    jr jr_032_550A

jr_032_54C4:
    ld d, $F0
    jr jr_032_5510

    ld b, [hl]
    ldh a, [rOBP0]
    ld c, l
    ld b, [hl]
    ldh a, [rOBP0]
    ld c, b
    ld l, $F0
    jr nc, @+$51

    add b

jr_032_54D5:
    adc [hl]
    ldh a, [$90]
    ld c, l
    ld d, $F0
    jr @+$51

    ld d, $F0
    jr @+$53

    ld b, [hl]
    ldh a, [rOBP0]
    ld c, d
    ld b, [hl]
    ldh a, [rOBP0]
    ld d, c
    ld l, $F0
    jr nc, jr_032_553F

    ld d, $F0
    jr @+$53

    ld d, $F0
    jr jr_032_5544

    ld e, [hl]
    ldh a, [$60]
    ld c, l
    ld l, $F0
    jr nc, @+$4C

    add b
    adc [hl]
    ldh a, [$90]

jr_032_5501:
    ld c, b
    ld l, $F0
    jr nc, jr_032_5550

    ld e, [hl]
    ldh a, [$60]
    ld b, d

jr_032_550A:
    ld d, $F0
    jr jr_032_5551

    ld d, $F0

jr_032_5510:
    jr @+$47

    ld d, $F0
    jr jr_032_555C

    ld d, $F0
    jr @+$4A

    ld b, [hl]
    ldh a, [rOBP0]
    ld c, l
    ld b, [hl]
    ldh a, [rOBP0]
    ld c, b
    ld l, $F0
    jr nc, jr_032_556C

    add b
    adc [hl]
    ldh a, [$90]
    ld b, h
    ld d, $F0
    jr @+$48

    ld d, $F0
    jr @+$4A

    ld b, [hl]
    ldh a, [rOBP0]
    ld c, l
    ld b, [hl]
    ldh a, [rOBP0]
    ld c, b
    ld l, $F0
    jr nc, jr_032_558E

jr_032_553F:
    add b
    adc [hl]
    ldh a, [$90]
    ld c, l

jr_032_5544:
    ld d, $F0
    jr jr_032_5597

    ld d, $F0
    jr jr_032_559D

    ld b, [hl]
    ldh a, [rOBP0]
    ld c, d

jr_032_5550:
    ld b, [hl]

jr_032_5551:
    ldh a, [rOBP0]
    ld d, c
    ld l, $F0
    jr nc, @+$54

    ld d, $F0
    jr jr_032_55AD

jr_032_555C:
    ld d, $F0
    jr jr_032_55AF

    ld e, [hl]
    ldh a, [$60]
    ld d, c
    ld l, $F0
    jr nc, @+$54

    ld d, $F0
    jr jr_032_55BD

jr_032_556C:
    ld d, $F0
    jr jr_032_55BF

    ld l, $F0
    jr nc, @+$51

    ld l, $F0
    jr nc, jr_032_55C9

    ld l, $F0
    jr nc, jr_032_55CF

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld l, $F0
    jr nc, jr_032_55D5

    ld l, $F0
    jr nc, @+$47

    ld e, [hl]

jr_032_558E:
    ldh a, [$60]
    ld c, d
    ld l, $F0
    jr nc, jr_032_55E2

    ld l, $F0

jr_032_5597:
    jr nc, @+$4E

    ld e, [hl]
    ldh a, [$60]
    ld c, b

jr_032_559D:
    ld l, $F0
    jr nc, jr_032_55ED

    ld l, $F0
    jr nc, jr_032_55EF

    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, jr_032_55F2

jr_032_55AD:
    ld l, $F0

jr_032_55AF:
    jr nc, @+$45

    ld l, $F0
    jr nc, @+$45

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld l, $F0
    jr nc, jr_032_5609

jr_032_55BD:
    ld l, $F0

jr_032_55BF:
    jr nc, jr_032_5606

    ld e, [hl]
    ldh a, [$60]
    ld c, d
    ld l, $F0
    jr nc, jr_032_5616

jr_032_55C9:
    ld l, $F0
    jr nc, jr_032_5619

    ld l, $F0

jr_032_55CF:
    jr nc, jr_032_5619

    ld l, $F0
    jr nc, jr_032_561F

jr_032_55D5:
    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, jr_032_5625

    add b
    adc [hl]
    ldh a, [$90]
    ld c, b

jr_032_55E2:
    ld l, $F0
    jr nc, jr_032_5627

    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]

jr_032_55ED:
    ld b, c
    add hl, bc

jr_032_55EF:
    ldh a, [$0C]
    ld b, c

jr_032_55F2:
    add hl, bc
    ldh a, [rNR50]
    inc a
    add hl, bc
    ldh a, [$0C]
    dec a
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [$0C]
    ld b, b

jr_032_5606:
    dec bc
    ldh a, [rNR23]

jr_032_5609:
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c

jr_032_5616:
    dec b
    ldh a, [rTMA]

jr_032_5619:
    ld b, c
    ld d, $F0
    jr jr_032_565E

    add hl, bc

jr_032_561F:
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]

jr_032_5625:
    ld b, b
    add hl, bc

jr_032_5627:
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [rNR50]
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc a
    add hl, bc
    ldh a, [$0C]
    dec a
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    ld d, $F0
    jr jr_032_5695

    add hl, bc
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [$0C]
    ccf

jr_032_565E:
    add hl, bc
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [rNR50]
    ld a, [hl-]
    add hl, bc
    ldh a, [$0C]
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc a
    add hl, bc
    ldh a, [$0C]
    dec a
    add hl, bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    ld d, $F0
    jr @+$40

    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]

jr_032_5695:
    ld a, $09
    ldh a, [$0C]
    ld a, $09
    ldh a, [rNR50]
    ld a, $09
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    ld d, $F0
    jr jr_032_5707

    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [rNR50]
    inc a
    add hl, bc
    ldh a, [$0C]
    dec a
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, c
    ld d, $F0
    jr jr_032_573E

    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc

jr_032_5707:
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [rNR50]
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc a
    add hl, bc
    ldh a, [$0C]
    dec a
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, b
    ld d, $F0
    jr jr_032_5775

    add hl, bc
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [$0C]
    ccf

jr_032_573E:
    add hl, bc
    ldh a, [$0C]
    ccf
    add hl, bc
    ldh a, [rNR50]
    ld a, [hl-]
    add hl, bc
    ldh a, [$0C]
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc a
    add hl, bc
    ldh a, [$0C]
    dec a
    add hl, bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ccf
    ld d, $F0
    jr @+$40

    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]

jr_032_5775:
    ld a, $09
    ldh a, [$0C]
    ld a, $09
    ldh a, [rNR50]
    scf
    dec b
    ldh a, [rTMA]
    scf
    dec b
    ldh a, [rTMA]
    scf
    add hl, bc
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    dec sp
    add hl, bc
    ldh a, [$0C]
    ld a, $05
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld a, $09
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, e
    add hl, bc
    ldh a, [rNR50]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld l, $F0
    jr nc, jr_032_5802

    ld l, $F0
    jr nc, jr_032_57FF

    ld e, [hl]
    ldh a, [$60]
    ld c, d
    ld l, $F0
    jr nc, @+$4F

    ld l, $F0
    jr nc, jr_032_5812

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld l, $F0
    jr nc, jr_032_581A

    ld l, $F0
    jr nc, @+$4C

    ld l, $F0
    jr nc, jr_032_581D

    ld l, $F0
    jr nc, jr_032_581F

    ld l, $F0
    jr nc, jr_032_5821

    ld l, $F0
    jr nc, jr_032_5825

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld l, $F0
    jr nc, jr_032_5836

    ld l, $F0
    jr nc, jr_032_5833

    ld e, [hl]
    ldh a, [$60]
    ld c, d
    ld l, $F0
    jr nc, jr_032_5843

    ld l, $F0
    jr nc, @+$4E

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld e, [hl]

jr_032_57FF:
    ldh a, [$60]
    ld c, d

jr_032_5802:
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld d, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_032_5854

jr_032_5812:
    ld l, $F0
    jr nc, @+$43

    ld d, $F0
    jr nc, @+$43

jr_032_581A:
    ld b, [hl]
    ldh a, [rOBP0]

jr_032_581D:
    ld b, b
    dec bc

jr_032_581F:
    ldh a, [rNR23]

jr_032_5821:
    ld b, b
    halt
    ldh a, [$90]

jr_032_5825:
    inc a
    ld l, $F0
    jr nc, jr_032_586A

    ld l, $F0
    jr nc, jr_032_5871

    ld l, $F0
    jr nc, jr_032_5878

    add b

jr_032_5833:
    adc [hl]
    ldh a, [$90]

jr_032_5836:
    ld b, l
    ld l, $F0
    jr nc, jr_032_587E

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, c
    ld b, [hl]
    ldh a, [rOBP0]

jr_032_5843:
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    halt
    ldh a, [$90]
    inc a
    ld l, $F0
    jr nc, jr_032_5890

    ld l, $F0
    jr nc, jr_032_5897

jr_032_5854:
    ld l, $F0
    jr nc, jr_032_589E

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
    jr jr_032_58AC

    add b

jr_032_586A:
    cp [hl]
    ldh a, [$C0]
    ld c, b
    db $10
    ldh a, [rNR50]

jr_032_5871:
    ld c, d
    dec bc
    ldh a, [rNR50]
    ld c, e
    ld d, $F0

jr_032_5878:
    jr nc, jr_032_58C2

    dec bc
    ldh a, [rNR23]
    ld c, d

jr_032_587E:
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    db $10
    ldh a, [rNR50]
    ld c, d
    dec bc
    ldh a, [rNR50]
    ld c, e
    ld d, $F0

jr_032_5890:
    jr nc, jr_032_58DA

    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc

jr_032_5897:
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b

jr_032_589E:
    db $10
    ldh a, [rNR50]
    ld c, d
    dec bc
    ldh a, [rNR50]
    ld c, h
    add c
    ld e, $F1
    jr c, @+$4A

    db $10

jr_032_58AC:
    ldh a, [rNR50]
    ld c, d
    dec bc
    ldh a, [rNR50]
    ld c, e
    ld d, $F0
    jr nc, jr_032_58FF

    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]

jr_032_58C2:
    ld c, b
    db $10
    ldh a, [rNR50]
    ld c, d
    dec bc
    ldh a, [rNR50]
    ld c, e
    ld d, $F0
    jr nc, jr_032_5917

    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]

jr_032_58DA:
    ld c, b
    db $10
    ldh a, [rNR50]
    ld c, d
    dec bc
    ldh a, [rNR50]
    ld c, h
    add c
    ld e, $F1
    jr c, jr_032_5930

    db $10
    ldh a, [rNR50]
    ld c, d
    dec bc
    ldh a, [rNR50]
    ld c, e
    ld d, $F0
    jr nc, jr_032_593C

    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]

jr_032_58FF:
    ld c, b
    db $10
    ldh a, [rNR50]
    ld c, d
    dec bc
    ldh a, [rNR50]
    ld c, e
    ld d, $F0
    jr nc, jr_032_5954

    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [rNR23]

jr_032_5917:
    ld c, d
    db $10
    ldh a, [rNR50]
    ld c, e
    dec bc
    ldh a, [rNR50]
    ld c, l
    halt
    ldh a, [$78]
    ld c, a
    add b
    and [hl]
    ld a, [c]
    ld e, b
    inc a
    db $10
    ldh a, [rNR12]
    ld b, d
    dec b
    ldh a, [rTMA]

jr_032_5930:
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, e
    ld d, $F0
    inc h

jr_032_593C:
    ld c, d
    inc hl
    ldh a, [rNR50]
    ld c, d
    ld d, $F0
    jr nc, jr_032_5981

    db $10
    ldh a, [rNR12]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]

jr_032_5954:
    ld c, e
    ld d, $F0
    inc h
    ld c, l
    ld d, $F0
    inc h
    ld c, l
    ld d, $F0
    jr nc, jr_032_599D

    db $10
    ldh a, [rNR12]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, e
    ld d, $F0
    jr @+$4F

    dec bc
    ldh a, [$0C]
    ld c, d
    ld d, $F0
    inc h
    ld c, d
    ld d, $F0
    jr nc, jr_032_59BD

jr_032_5981:
    db $10
    ldh a, [rNR12]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, e
    ld d, $F0
    inc h
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, [hl]
    dec b
    ldh a, [rTMA]
    ld c, a

jr_032_599D:
    ld d, $F0
    jr jr_032_59F0

    ld d, $F0
    jr nc, jr_032_59E1

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld a, [hl+]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, d

jr_032_59BD:
    ld d, $F0
    jr jr_032_5A04

    ld d, $F0
    jr nc, jr_032_5A01

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld a, [hl+]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    jr jr_032_5A24

jr_032_59E1:
    ld d, $F0
    jr nc, jr_032_5A21

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]

jr_032_59F0:
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld a, [hl+]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    jr jr_032_5A44

jr_032_5A01:
    ld d, $F0
    ld a, [hl+]

jr_032_5A04:
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
    ld b, e
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    ld d, $F0
    inc h
    ld b, e

jr_032_5A21:
    dec bc
    ldh a, [rNR23]

jr_032_5A24:
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, [hl]
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    inc hl
    ldh a, [rNR50]
    ld c, a
    ld d, $F0
    inc a
    ld b, e
    ld d, $F0
    inc h
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, a
    dec bc
    ldh a, [$0C]

jr_032_5A44:
    ld c, [hl]
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    inc hl
    ldh a, [rNR50]
    ld c, a
    ld d, $F0
    inc a
    ld b, e
    ld d, $F0
    inc h
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, [hl]
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    inc hl
    ldh a, [rNR50]
    ld c, a
    ld d, $F0
    inc a
    ld b, e
    ld d, $F0
    inc h
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, [hl]
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    inc hl
    ldh a, [rNR50]
    ld c, a
    ld d, $F0
    inc h
    ld b, e
    ld d, $F1
    sbc b
    ld b, e
    add b
    adc [hl]
    ldh a, [$90]
    ld b, [hl]
    inc hl
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    ld l, $F0
    jr nc, @+$41

    ld l, $F0
    jr nc, jr_032_5AE8

    ld l, $F0
    jr nc, jr_032_5AEB

    ld l, $F0
    jr nc, jr_032_5AED

    ld l, $F0
    jr nc, @+$3E

    ld l, $F0
    jr nc, @+$40

    ld b, [hl]
    ldh a, [rOBP0]
    inc a
    dec bc
    ldh a, [$0C]
    dec sp
    dec bc
    ldh a, [$0C]
    inc a
    ld e, [hl]
    ldh a, [$60]
    scf
    ld e, [hl]
    ldh a, [$60]
    ld b, e
    add b
    adc [hl]
    ldh a, [$90]
    ld b, [hl]
    inc hl
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    ld l, $F0
    jr nc, @+$41

    ld l, $F0
    jr nc, jr_032_5B21

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc

jr_032_5AE8:
    ldh a, [$0C]
    ld b, e

jr_032_5AEB:
    ld d, $F0

jr_032_5AED:
    jr jr_032_5B35

    ld d, $F0
    jr jr_032_5B3C

    ld d, $F0
    jr @+$4E

    ld d, $F0
    jr jr_032_5B4A

    ld d, $F0
    jr @+$4E

    ld d, $F0
    jr jr_032_5B4C

    ld d, $F0
    jr @+$48

    ld d, $F0
    jr jr_032_5B4E

    ld d, $F0
    jr jr_032_5B55

    ld d, $F0
    jr jr_032_5B5C

    ld d, $F0
    jr jr_032_5B63

    ld d, $F0
    jr @+$51

    ld d, $F0
    jr jr_032_5B6B

    ld d, $F0

jr_032_5B21:
    jr jr_032_5B6C

    ld d, $F0
    jr jr_032_5B6D

    ld d, $F0
    jr @+$45

    add b
    adc [hl]
    ldh a, [$90]
    ld b, [hl]
    inc hl
    ldh a, [rNR50]
    ld b, h
    dec bc

jr_032_5B35:
    ldh a, [$0C]
    ld b, e
    ld l, $F0
    jr nc, jr_032_5B7B

jr_032_5B3C:
    ld l, $F0
    jr nc, @+$44

    ld l, $F0
    jr nc, jr_032_5B85

    ld l, $F0
    jr nc, jr_032_5B87

    ld l, $F0

jr_032_5B4A:
    jr nc, jr_032_5B88

jr_032_5B4C:
    ld l, $F0

jr_032_5B4E:
    jr nc, @+$40

    ld b, [hl]
    ldh a, [rOBP0]
    inc a
    dec bc

jr_032_5B55:
    ldh a, [$0C]
    dec sp
    dec bc
    ldh a, [$0C]
    inc a

jr_032_5B5C:
    add b
    cp [hl]
    ldh a, [rP1]
    rst $38
    ldh a, [$0C]

jr_032_5B63:
    cp h
    ld d, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0

jr_032_5B6B:
    inc c

jr_032_5B6C:
    ld b, b

jr_032_5B6D:
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

jr_032_5B7B:
    inc c
    ld c, b
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    inc a

jr_032_5B85:
    ld b, $F0

jr_032_5B87:
    inc c

jr_032_5B88:
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
    inc a
    ld b, $F0
    inc c
    inc a
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
    inc a
    ld b, $F0
    inc c
    inc a
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
    inc a
    ld b, $F0
    inc c
    inc a
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
    inc a
    ld b, $F0
    inc c
    inc a
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
    inc a
    ld b, $F0
    inc c
    inc a
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
    inc a
    ld b, $F0
    inc c
    inc a
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
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    inc a
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
    inc a
    ld b, $F0
    inc c
    inc a
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
    inc a
    ld b, $F0
    inc c
    inc a
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
    inc a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
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
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
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
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
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
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
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
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
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
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
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
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, e
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
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, a
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
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, a
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
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    jr jr_032_60E0

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, h
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
    jr jr_032_60FC

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, h
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
    jr jr_032_6118

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c

jr_032_60E0:
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    jr jr_032_6134

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c

jr_032_60FC:
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    jr jr_032_6150

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c

jr_032_6118:
    ld c, b
    ld b, $F0
    inc c
    ld b, h
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
    jr jr_032_616C

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c

jr_032_6134:
    ld c, b
    ld b, $F0
    inc c
    ld b, h
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
    jr jr_032_6188

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c

jr_032_6150:
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    jr jr_032_61A4

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c

jr_032_616C:
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    jr jr_032_61BF

    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c

jr_032_6188:
    ld b, l
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, [hl]
    ld b, $F0
    jr jr_032_61DB

    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c

jr_032_61A4:
    ld b, l
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, [hl]
    ld b, $F0
    jr jr_032_61F7

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0

jr_032_61BF:
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    jr jr_032_6213

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0

jr_032_61DB:
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    jr jr_032_622F

    ld b, $F0
    inc c
    ld b, c
    ld b, $F0

jr_032_61F7:
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    jr @+$40

    ld b, $F0
    inc c
    ld b, c
    ld b, $F0

jr_032_6213:
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    jr @+$40

    ld b, $F0
    inc c
    ld b, d
    ld b, $F0

jr_032_622F:
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, [hl]
    ld b, $F0
    inc c
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
    ldh a, [rNR12]
    jr c, jr_032_628C

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_032_628C:
    ccf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    jr jr_032_62D9

    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    jr jr_032_62F7

    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_032_6313

jr_032_62D9:
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_032_632D

    ld b, $F0

jr_032_62F7:
    inc c
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    jr jr_032_6349

    ld b, $F0

jr_032_6313:
    inc c
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    jr jr_032_6367

jr_032_632D:
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_032_6383

jr_032_6349:
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    jr jr_032_63A3

    ld b, $F0

jr_032_6367:
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, [hl]
    ld b, $F0
    jr jr_032_63BF

    ld b, $F0

jr_032_6383:
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, [hl]
    ld b, $F0
    jr jr_032_63DB

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0

jr_032_63A3:
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    jr jr_032_63F7

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0

jr_032_63BF:
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    jr jr_032_6414

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0

jr_032_63DB:
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    jr jr_032_6430

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0

jr_032_63F7:
    inc c
    ld b, [hl]
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
    jr jr_032_6450

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c

jr_032_6414:
    ld c, d
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

jr_032_6430:
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

jr_032_6450:
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
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, b
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rOBP0]
    ld b, c
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, b
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rOBP0]
    ld a, $0B
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, b
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rOBP0]
    ld b, c
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, b
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [rOBP0]
    ld b, l
    ld d, $F0
    jr nc, jr_032_6598

    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rOBP0]
    ld b, e
    ld d, $F0
    jr nc, @+$44

    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rOBP0]
    ld b, d
    ld d, $F0
    jr nc, jr_032_65C0

    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rOBP0]
    ld b, e
    ld d, $F0
    jr nc, jr_032_65D6

    dec bc
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [rNR23]

jr_032_6598:
    ld b, l
    dec bc
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [rOBP0]
    ld b, l
    ld d, $F0
    jr nc, jr_032_65E8

    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rOBP0]
    ld b, e
    ld d, $F0
    jr nc, @+$44

    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]

jr_032_65C0:
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rOBP0]
    ld b, d
    ld d, $F0
    jr nc, jr_032_660E

    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc

jr_032_65D6:
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rOBP0]
    ld b, e
    ld d, $F0
    jr nc, jr_032_6621

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]

jr_032_65E8:
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, b
    ld d, $F0
    jr nc, @+$43

    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rOBP0]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld b, b
    dec bc

jr_032_660E:
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, b
    ld d, $F0
    jr nc, jr_032_6662

jr_032_6621:
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    ld d, $F0
    jr nc, @+$40

    ld d, $F0
    jr nc, jr_032_6679

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, b
    ld d, $F0
    jr nc, jr_032_668E

    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rOBP0]
    ld b, c
    ld d, $F0
    jr nc, @+$45

    dec bc

jr_032_6662:
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e

jr_032_6679:
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc

jr_032_668E:
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, b
    ld d, $F0
    jr jr_032_66DC

    ld b, $F0
    inc c
    jr c, jr_032_66B0

    ldh a, [$0C]
    add hl, sp
    ld b, $F0
    inc c

jr_032_66B0:
    ld a, [hl-]
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    dec a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c

jr_032_66DC:
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, d
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, a
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, c
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld e, c
    dec b
    ldh a, [rTMA]
    ld d, h
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    scf
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, [hl]
    dec b
    ldh a, [rTMA]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    scf
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, [hl]
    dec b
    ldh a, [rTMA]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    scf
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, e
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
    ldh a, [rNR34]
    inc a
    dec bc
    ldh a, [$30]
    inc a
    dec bc
    ldh a, [$30]
    inc a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc h
    inc a
    dec bc
    ldh a, [$30]
    inc a
    dec bc
    ldh a, [$30]
    inc a
    dec bc
    ldh a, [$30]
    inc a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc h
    inc a
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
    ld b, c
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
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
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
    ld b, c
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
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
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
    ld b, c
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
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
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
    ld b, c
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
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc h
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc h
    ld b, d
    dec bc
    ldh a, [$30]
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc h
    ld b, e
    dec bc
    ldh a, [$30]
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc h
    ld b, d
    dec bc
    ldh a, [$30]
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc h
    ld b, e
    dec bc
    ldh a, [$30]
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc h
    ld b, d
    dec bc
    ldh a, [$30]
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc h
    ld b, e
    dec bc
    ldh a, [$2A]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    inc a
    ld e, [hl]
    ldh a, [$60]
    dec sp
    ld d, $F0
    inc h
    dec sp
    dec bc
    ldh a, [$78]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    inc a
    ld d, $F0
    inc h
    inc a
    dec bc
    ldh a, [$78]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    dec a
    ld d, $F0
    inc h
    dec a
    dec bc
    ldh a, [$78]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld a, $16
    ldh a, [rNR50]
    ld a, $0B
    ldh a, [$3C]
    ld d, [hl]
    dec bc
    ldh a, [$0C]
    ld d, l
    dec bc
    ldh a, [$0C]
    ld d, h
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, a
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
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_72B9

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_72B9:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_72F9

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_72F9:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_7339

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_7339:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_7379

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_7379:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_73B9

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_73B9:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_73F9

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_73F9:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_7439

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_7439:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_7479

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_7479:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_74B9

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_74B9:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_74F9

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_74F9:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_7539

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_7539:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_7579

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_7579:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_75B9

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_75B9:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    jr c, jr_032_75F9

    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ccf

jr_032_75F9:
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
    ld d, h
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld d, b
    db $10
    ldh a, [rNR12]
    ld c, e
    db $10
    ldh a, [rNR12]
    ld c, b
    db $10
    ldh a, [rNR12]
    ld b, h
    ld d, $F0
    jr jr_032_7664

    dec e
    ldh a, [rNR34]
    inc a
    dec e
    ldh a, [rNR34]
    jr c, jr_032_764B

    ldh a, [rNR34]
    ccf
    ld l, $F0
    jr nc, jr_032_7671

    add b
    sbc e
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
    jr z, jr_032_7675

    nop
    dec l
    jr nc, jr_032_764A

jr_032_764A:
    nop

jr_032_764B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_032_7664:
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

jr_032_7671:
    nop
    nop
    nop
    nop

jr_032_7675:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0E00], a
    nop
    jr jr_032_76C9

jr_032_76C9:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    rrca
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rrca
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $000F
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    cp $00
    nop
    nop
    nop
    nop
    ld a, $02
    ld l, d
    inc b
    ld [hl], $05
    sub $F0
    nop
    and [hl]
    inc bc
    dec bc
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$30]
    ld h, $0B
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [$0C]
    ld h, $0B
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or b
    daa
    ld d, $F0
    jr jr_032_7963

    ld d, $F0
    jr @+$39

    dec bc
    ldh a, [rNR23]
    jr nc, jr_032_7967

    ldh a, [$30]
    inc sp
    ld d, $F0
    jr @+$39

    dec bc
    ldh a, [rNR23]
    cpl
    ld l, $F0
    jr nc, jr_032_797A

    ld d, $F0
    jr @+$39

    ld d, $F0
    jr nc, @+$39

    ld d, $F0
    jr nc, @+$39

    ld d, $F0
    jr nc, jr_032_7988

    ld d, $F0
    jr jr_032_798F

    ld d, $F0
    jr @+$39

    dec bc
    ldh a, [rNR23]

jr_032_7963:
    jr nc, jr_032_7993

    ldh a, [$30]

jr_032_7967:
    inc sp
    ld d, $F0
    jr @+$39

    dec bc
    ldh a, [rNR23]
    cpl
    ld l, $F0
    jr nc, jr_032_79A6

    ld d, $F0
    jr @+$39

    ld d, $F0

jr_032_797A:
    jr nc, @+$39

    ld d, $F0
    jr nc, @+$39

    ld d, $F0
    jr nc, jr_032_79B4

    ld d, $F0
    jr jr_032_79BB

jr_032_7988:
    ld d, $F0
    jr @+$39

    dec bc
    ldh a, [rNR23]

jr_032_798F:
    jr nc, @+$30

    ldh a, [$30]

jr_032_7993:
    inc sp
    ld d, $F0
    jr @+$39

    dec bc
    ldh a, [rNR23]
    cpl
    ld l, $F0
    jr nc, jr_032_79D2

    ld d, $F0
    jr @+$39

    ld d, $F0

jr_032_79A6:
    jr nc, @+$39

    ld d, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_032_79DC

    ld d, $F0
    jr jr_032_79E4

jr_032_79B4:
    ld d, $F0
    jr jr_032_79EB

    dec bc
    ldh a, [rNR23]

jr_032_79BB:
    inc l
    ld l, $F0
    jr nc, jr_032_79F0

    ld d, $F0
    jr @+$35

    dec bc
    ldh a, [rNR23]
    dec hl
    dec hl
    ldh a, [$30]
    cpl
    ld d, $F0
    jr @+$34

    ld d, $F0

jr_032_79D2:
    jr nc, jr_032_7A06

    ld d, $F0
    jr nc, jr_032_7A0A

    ld l, $F0
    jr nc, jr_032_7A0C

jr_032_79DC:
    ld d, $F0
    jr jr_032_7A13

    ld d, $F0
    jr @+$39

jr_032_79E4:
    dec bc
    ldh a, [rNR23]
    jr nc, @+$30

    ldh a, [$30]

jr_032_79EB:
    inc sp
    ld d, $F0
    jr @+$39

jr_032_79F0:
    dec bc
    ldh a, [rNR23]
    cpl
    ld l, $F0
    jr nc, jr_032_7A2A

    ld d, $F0
    jr jr_032_7A33

    ld d, $F0
    jr nc, @+$39

    inc hl
    ldh a, [$30]
    scf
    ld l, $F0

jr_032_7A06:
    jr nc, jr_032_7A34

    ld d, $F0

jr_032_7A0A:
    jr jr_032_7A3C

jr_032_7A0C:
    ld d, $F0
    jr jr_032_7A43

    dec bc
    ldh a, [rNR23]

jr_032_7A13:
    inc l
    ld l, $F0
    jr nc, jr_032_7A48

    ld d, $F0
    jr jr_032_7A4F

    dec bc
    ldh a, [rNR23]
    dec hl
    ld l, $F0
    jr nc, jr_032_7A53

    ld d, $F0
    jr @+$34

    ld d, $F0

jr_032_7A2A:
    jr nc, @+$2D

    ld l, $F0
    jr nc, jr_032_7A62

    dec bc
    ldh a, [rNR23]

jr_032_7A33:
    ld [hl-], a

jr_032_7A34:
    ld d, $F0
    jr @+$35

    ld d, $F0
    jr jr_032_7A76

jr_032_7A3C:
    ld d, $F0
    jr jr_032_7A7F

    dec bc
    ldh a, [rNR23]

jr_032_7A43:
    inc sp
    ld l, $F0
    jr nc, jr_032_7A82

jr_032_7A48:
    ld d, $F0
    jr jr_032_7A8B

    dec bc
    ldh a, [rNR23]

jr_032_7A4F:
    ld l, $2E
    ldh a, [$30]

jr_032_7A53:
    dec [hl]
    ld d, $F0
    jr jr_032_7A92

    dec bc
    ldh a, [rNR23]
    ld l, $2E
    ldh a, [$30]
    dec [hl]
    ld d, $F0

jr_032_7A62:
    jr jr_032_7A9E

    ld a, [hl+]
    ldh a, [$30]
    ld [hl-], a
    ld d, $F0
    jr @+$3B

    ld d, $F0
    jr @+$40

    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    ld l, $F0

jr_032_7A76:
    jr nc, jr_032_7AB1

    ld d, $F0
    jr @+$40

    dec bc
    ldh a, [rNR23]

jr_032_7A7F:
    dec l
    ld l, $F0

jr_032_7A82:
    jr nc, jr_032_7AB8

    ld d, $F0
    jr @+$3B

    dec bc
    ldh a, [rNR23]

jr_032_7A8B:
    dec l
    ld l, $F0
    jr nc, jr_032_7AC4

    ld d, $F0

jr_032_7A92:
    jr @+$3B

    ld l, $F0
    jr nc, @+$37

    ld d, $F0
    jr jr_032_7AD8

    ld d, $F0

jr_032_7A9E:
    jr @+$43

    dec bc
    ldh a, [rNR23]
    dec [hl]
    ld l, $F0
    jr nc, jr_032_7AE4

    ld d, $F0
    jr jr_032_7AED

    dec bc
    ldh a, [rNR23]
    jr nc, jr_032_7ADF

jr_032_7AB1:
    ldh a, [$30]
    scf
    ld d, $F0
    jr jr_032_7AF4

jr_032_7AB8:
    dec bc
    ldh a, [rNR23]
    jr nc, jr_032_7AEB

    ldh a, [$30]
    scf
    ld d, $F0
    jr jr_032_7B00

jr_032_7AC4:
    ld l, $F0
    jr nc, jr_032_7AF4

    ld d, $F0
    jr jr_032_7AFF

    ld d, $F0
    jr jr_032_7B08

    dec bc
    ldh a, [rNR23]
    inc l
    ld l, $F0
    jr nc, jr_032_7B0B

jr_032_7AD8:
    ld d, $F0
    jr jr_032_7B14

    dec bc
    ldh a, [rNR23]

jr_032_7ADF:
    dec hl
    ld l, $F0
    jr nc, jr_032_7B16

jr_032_7AE4:
    ld d, $F0
    jr jr_032_7B1F

    ld a, [hl+]
    ldh a, [$30]

jr_032_7AEB:
    scf
    inc hl

jr_032_7AED:
    ldh a, [$30]
    scf
    inc hl
    ldh a, [rP1]
    rst $38

jr_032_7AF4:
    ld a, [c]
    add sp, -$48
    ld d, c
    dec b
    ldh a, [rTMA]
    add hl, sp
    dec b
    ldh a, [rTMA]

jr_032_7AFF:
    ld a, [hl-]

jr_032_7B00:
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    inc a

jr_032_7B08:
    ld [hl], b
    ldh a, [$72]

jr_032_7B0B:
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld d, $F0
    jr @+$40

jr_032_7B14:
    ld d, $F0

jr_032_7B16:
    jr jr_032_7B57

    ld d, $F0
    jr jr_032_7B5F

    ld b, [hl]
    ldh a, [rOBP0]

jr_032_7B1F:
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    ld e, b
    ldh a, [$5A]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    ld d, $F0
    inc h
    ld b, e
    ld d, $F0
    inc h
    ld b, e
    db $10
    ldh a, [rNR12]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    ld d, $F0
    inc h
    ld b, e
    inc hl
    ldh a, [rNR50]
    ld b, c
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, c
    ld b, d
    ldh a, [rOBP0]
    ld b, c
    dec bc
    ldh a, [$0C]

jr_032_7B57:
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $42
    ldh a, [rOBP0]

jr_032_7B5F:
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
    ld l, e
    ldh a, [$72]
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld d, $F0
    jr jr_032_7BBA

    ld d, $F0
    jr jr_032_7BBF

    ld d, $F0
    jr jr_032_7BC7

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    ld c, b
    ldh a, [$5A]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    inc hl
    ldh a, [rNR50]
    ld b, h
    inc hl
    ldh a, [rNR50]
    ld b, l
    ld d, $F0
    jr jr_032_7BEA

    inc hl
    ldh a, [rNR50]
    ld b, a
    inc hl
    ldh a, [rNR50]
    ld c, b
    db $10
    ldh a, [rNR12]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    add b
    xor b
    ldh a, [$BA]
    ld c, d
    dec b

jr_032_7BBA:
    ldh a, [rTMA]
    ld c, e
    add b
    and h

jr_032_7BBF:
    ldh a, [$A8]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc

jr_032_7BC7:
    ldh a, [$0C]
    ld c, d
    ld e, [hl]
    ldh a, [$60]
    ld b, [hl]
    ld d, h
    ldh a, [$5A]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, l
    add b
    and l
    ldh a, [$A8]
    ld c, h
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, h
    ld e, [hl]
    ldh a, [$60]
    ld b, l
    inc a
    ldh a, [rOBP0]

jr_032_7BEA:
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
    add b
    and [hl]
    ldh a, [$A8]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld c, a
    ld e, [hl]
    ldh a, [$60]
    ld c, h
    ld e, b
    ldh a, [$5A]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, b
    ld a, [bc]
    ldh a, [$0C]
    ld c, a
    ld a, [bc]
    ldh a, [$0C]
    ld c, [hl]
    ld a, [bc]
    ldh a, [$0C]
    ld c, l
    ld a, [bc]
    ldh a, [$0C]
    ld c, [hl]
    ld a, [bc]
    ldh a, [$0C]
    ld c, l
    ld a, [bc]
    ldh a, [$0C]
    ld c, h
    ld a, [bc]
    ldh a, [$0C]
    ld c, e
    ld a, [bc]
    ldh a, [$0C]
    ld c, h
    ld a, [bc]
    ldh a, [$0C]
    ld c, e
    ld a, [bc]
    ldh a, [$0C]
    ld c, d
    ld a, [bc]
    ldh a, [$0C]
    ld c, c
    ld a, [bc]
    ldh a, [$0C]
    ld c, d
    ld a, [bc]
    ldh a, [$0C]
    ld c, c
    ld a, [bc]
    ldh a, [$0C]
    ld c, b
    ld a, [bc]
    ldh a, [$0C]
    ld b, a
    ld a, [bc]
    ldh a, [$0C]
    ld c, b
    ld a, [bc]
    ldh a, [$0C]
    ld b, a
    ld a, [bc]
    ldh a, [$0C]
    ld b, [hl]
    ld a, [bc]
    ldh a, [$0C]
    ld b, l
    ld a, [bc]
    ldh a, [$0C]
    ld b, [hl]
    ld a, [bc]
    ldh a, [$0C]
    ld b, l
    ld a, [bc]
    ldh a, [$0C]
    ld b, h
    ld a, [bc]
    ldh a, [$0C]
    ld b, e
    ld a, [bc]
    ldh a, [$0C]
    ld b, h
    ld a, [bc]
    ldh a, [$0C]
    ld b, e
    ld a, [bc]
    ldh a, [$0C]
    ld b, d
    ld a, [bc]
    ldh a, [$0C]
    ld b, e
    ld a, [bc]
    ldh a, [$0C]
    ld b, h
    ld a, [bc]
    ldh a, [$0C]
    ld b, e
    ld a, [bc]
    ldh a, [$0C]
    ld b, d
    ld a, [bc]
    ldh a, [$0C]
    ld b, e
    ld a, [bc]
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    cp a
    ld d, b
    ld d, $F0
    jr jr_032_7CDF

    ld d, $F0
    jr jr_032_7CE8

    dec bc
    ldh a, [rNR23]
    ld c, b
    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr jr_032_7CF4

    dec bc
    ldh a, [rNR23]
    ld b, a
    ld l, $F0
    jr nc, jr_032_7CF2

    ld d, $F0
    jr @+$49

    ld d, $F0
    ld a, [hl+]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    ld d, $F0
    jr nc, @+$49

    ld d, $F0
    jr nc, @+$41

    ld d, $F0
    jr jr_032_7D0F

    ld d, $F0
    jr jr_032_7D18

    dec bc
    ldh a, [rNR23]
    ld c, b
    ld l, $F0
    jr nc, jr_032_7D17

    ld d, $F0
    jr jr_032_7D24

    dec bc
    ldh a, [rNR23]

jr_032_7CDF:
    ld b, a
    ld l, $F0
    jr nc, jr_032_7D22

    ld d, $F0
    jr @+$49

jr_032_7CE8:
    ld d, $F0
    ld a, [hl+]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    ld d, $F0

jr_032_7CF2:
    jr nc, @+$49

jr_032_7CF4:
    ld d, $F0
    jr nc, @+$41

    ld d, $F0
    jr jr_032_7D3F

    ld d, $F0
    jr jr_032_7D48

    dec bc
    ldh a, [rNR23]
    ld c, b
    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr jr_032_7D54

    dec bc
    ldh a, [rNR23]

jr_032_7D0F:
    ld b, a
    dec l
    ldh a, [$30]
    ld a, $16
    ldh a, [rNR23]

jr_032_7D17:
    ld b, a

jr_032_7D18:
    ld d, $F0
    ld a, [hl+]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    ld d, $F0

jr_032_7D22:
    jr nc, @+$49

jr_032_7D24:
    ld d, $F0
    jr nc, @+$41

    ld d, $F0
    jr jr_032_7D70

    ld d, $F0
    jr jr_032_7D78

    dec bc
    ldh a, [rNR23]
    ld c, b
    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr jr_032_7D84

    dec bc
    ldh a, [rNR23]

jr_032_7D3F:
    ld b, a
    ld l, $F0
    jr nc, jr_032_7D82

    ld d, $F0
    jr @+$49

jr_032_7D48:
    ld d, $F0
    ld a, [hl+]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    ld d, $F0
    jr nc, @+$49

jr_032_7D54:
    ld d, $F0
    jr nc, @+$41

    ld d, $F0
    jr jr_032_7D9F

    ld d, $F0
    jr jr_032_7DA8

    dec bc
    ldh a, [rNR23]
    ld c, b
    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr jr_032_7DB4

    dec bc
    ldh a, [rNR23]
    ld b, a

jr_032_7D70:
    ld l, $F0
    jr nc, jr_032_7DB2

    ld d, $F0
    jr jr_032_7DBF

jr_032_7D78:
    ld d, $F0
    ld a, [hl+]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    ld d, $F0

jr_032_7D82:
    jr nc, jr_032_7DCB

jr_032_7D84:
    ld d, $F0
    jr nc, jr_032_7DC7

    ld d, $F0
    jr jr_032_7DD0

    ld d, $F0
    jr jr_032_7DD8

    dec bc
    ldh a, [rNR23]
    ld c, b
    ld l, $F0
    jr nc, jr_032_7DD7

    ld d, $F0
    jr jr_032_7DE4

    dec bc
    ldh a, [rNR23]

jr_032_7D9F:
    ld b, a
    ld l, $F0
    jr nc, @+$40

    ld d, $F0
    jr jr_032_7DEF

jr_032_7DA8:
    ld d, $F0
    ld a, [hl+]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    ld d, $F0

jr_032_7DB2:
    jr nc, jr_032_7DFB

jr_032_7DB4:
    ld d, $F0
    ld a, [hl+]
    ld a, $05
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [$0C]

jr_032_7DBF:
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]

jr_032_7DC7:
    ld b, e
    dec b
    ldh a, [$0C]

jr_032_7DCB:
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, [hl]

jr_032_7DD0:
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]

jr_032_7DD7:
    ld c, e

jr_032_7DD8:
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [$0C]
    ccf

jr_032_7DE4:
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]

jr_032_7DEF:
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]

jr_032_7DFB:
    ld c, e
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [rTMA]
    scf
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    ld a, $05
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
    ld c, a
    dec b
    ldh a, [$0C]
    ld d, e
    dec b
    ldh a, [$0C]
    ld d, [hl]
    dec b
    ldh a, [$0C]
    ld d, e
    dec b
    ldh a, [$0C]
    ld c, a
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    dec sp
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
