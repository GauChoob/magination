; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

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
    jr z, jr_038_403B

    nop
    dec l
    jr nc, jr_038_4010

jr_038_4010:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_038_403B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_038_408F

jr_038_408F:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    ld e, $00
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld e, $00
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $001E
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    cp $00
    nop
    nop
    nop
    nop
    ld a, $04
    cp [hl]
    ld c, $42
    db $10
    and c
    ldh a, [rP1]
    and [hl]
    inc bc
    dec bc
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $04
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $04
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $04
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $04
    ldh a, [$0C]
    ld h, $04
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $04
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $04
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $04
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR50]
    ld h, $03
    ldh a, [rNR50]
    ld h, $03
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $03
    ldh a, [rNR23]
    ld h, $03
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [rP1]
    ld h, $02
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR50]
    ld h, $03
    ldh a, [rNR50]
    ld h, $03
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $03
    ldh a, [rNR23]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [rNR50]
    ld h, $02
    ldh a, [rNR50]
    ld h, $03
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $02
    ldh a, [rNR23]
    ld h, $03
    ldh a, [$0C]
    ld h, $01
    ldh a, [rNR23]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [rNR50]
    ld h, $02
    ldh a, [rNR50]
    ld h, $03
    ldh a, [$0C]
    ld h, $01
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $03
    ldh a, [rNR23]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $04
    ldh a, [rNR50]
    ld h, $03
    ldh a, [rNR50]
    ld h, $03
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $03
    ldh a, [rNR23]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR50]
    ld h, $03
    ldh a, [rNR50]
    ld h, $03
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $02
    ldh a, [rNR23]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [rNR50]
    ld h, $02
    ldh a, [rNR50]
    ld h, $03
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $02
    ldh a, [rNR23]
    ld h, $03
    ldh a, [$0C]
    ld h, $02
    ldh a, [rNR23]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [rNR50]
    ld h, $02
    ldh a, [rNR50]
    ld h, $03
    ldh a, [$0C]
    ld h, $01
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $03
    ldh a, [rNR23]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $02
    ldh a, [$0C]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $03
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $04
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $04
    ldh a, [rNR23]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $0B
    ldh a, [rNR50]
    ld h, $05
    ldh a, [rNR23]
    ld h, $05
    ldh a, [$30]
    ld h, $06
    ldh a, [$30]
    ld h, $05
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $04
    ldh a, [rNR23]
    ld h, $05
    ldh a, [rNR23]
    ld h, $04
    ldh a, [rNR23]
    ld h, $04
    ldh a, [$0C]
    ld h, $03
    ldh a, [$0C]
    ld h, $03
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or h
    daa
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    scf
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
    dec bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
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
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    scf
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
    dec bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
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
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    inc c
    dec sp
    add hl, bc
    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    nop
    rst $38
    ld a, [c]
    add sp, -$3D
    ld d, c
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
    add b
    adc [hl]
    ldh a, [$90]
    ld c, d
    ld l, $F0
    jr nc, @+$4B

    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld a, l
    ldh a, [$8A]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    ld l, $F0

jr_038_4EF5:
    jr nc, jr_038_4F40

    ld l, $F0
    jr nc, jr_038_4F40

    ld l, $F0
    jr nc, jr_038_4F46

    ld l, $F0
    jr nc, @+$42

    jr z, jr_038_4EF5

    ld a, [hl+]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    add b
    adc [hl]
    ldh a, [$90]
    ld c, d
    ld l, $F0
    jr nc, jr_038_4F5D

    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    add b
    adc b
    ldh a, [$8A]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    ld l, $F0
    jr nc, jr_038_4F72

    ld l, $F0
    jr nc, jr_038_4F72

    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, jr_038_4F75

    ld l, $F3
    jr jr_038_4F7C

    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]

jr_038_4F40:
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b

jr_038_4F46:
    ldh a, [rTMA]
    ld b, a
    add b
    adc [hl]
    ldh a, [$90]
    ld c, d
    ld l, $F0
    jr nc, jr_038_4F9B

    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld a, [hl]
    ldh a, [$8A]

jr_038_4F5D:
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    ld l, $F0

jr_038_4F64:
    jr nc, jr_038_4FAF

    ld l, $F0
    jr nc, jr_038_4FAF

    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, jr_038_4FB2

jr_038_4F72:
    jr z, jr_038_4F64

    ld a, [hl+]

jr_038_4F75:
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    add b
    adc [hl]

jr_038_4F7C:
    ldh a, [$90]
    ld c, d
    ld l, $F0
    jr nc, jr_038_4FCC

    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld a, l
    ldh a, [$8A]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    ld l, $F0

jr_038_4F95:
    jr nc, jr_038_4FE0

    ld l, $F0
    jr nc, jr_038_4FE0

jr_038_4F9B:
    ld l, $F0
    jr nc, jr_038_4FE6

    ld l, $F0
    jr nc, jr_038_4FE3

    jr jr_038_4F95

    jr jr_038_4FEF

    dec b
    ldh a, [rTMA]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d

jr_038_4FAF:
    dec b
    ldh a, [rTMA]

jr_038_4FB2:
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR12]
    ld c, [hl]
    dec b
    ldh a, [rTMA]
    ld c, a
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc

jr_038_4FCC:
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [rNR12]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, h
    add hl, bc

jr_038_4FE0:
    ldh a, [rNR50]
    ld c, h

jr_038_4FE3:
    add hl, bc
    ldh a, [rNR50]

jr_038_4FE6:
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld c, a
    ld c, $F0
    ld c, b
    ld c, b

jr_038_4FEF:
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
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR12]
    ld c, [hl]
    dec b
    ldh a, [rTMA]
    ld c, a
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [rNR12]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR12]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, h
    ld c, $F0
    ld h, b
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld c, a
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld c, a
    ld c, $F0
    ld c, b
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
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR12]
    ld c, [hl]
    dec b
    ldh a, [rTMA]
    ld c, a
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, h
    dec bc
    ldh a, [rNR12]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR50]
    ld c, h
    add hl, bc
    ldh a, [rNR12]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, h
    ld c, $F0
    ld c, b
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
    add b
    adc [hl]
    ldh a, [$90]
    ld c, d
    ld l, $F0
    jr nc, jr_038_5119

    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld a, l
    ldh a, [$8A]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    ld l, $F0

jr_038_50E2:
    jr nc, jr_038_512D

    ld l, $F0
    jr nc, jr_038_512D

    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, jr_038_5130

    jr z, jr_038_50E2

    ld a, [hl+]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    add b
    adc [hl]
    ldh a, [$90]
    ld c, d
    ld l, $F0
    jr nc, jr_038_514A

    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld a, l
    ldh a, [$8A]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    ld l, $F0
    jr nc, jr_038_515E

    ld l, $F0
    jr nc, jr_038_515E

jr_038_5119:
    ld l, $F0
    jr nc, jr_038_5164

    ld l, $F0
    jr nc, jr_038_5161

    ld l, $F0
    nop
    rst $38
    ldh a, [rNR23]
    ret nz

    ld d, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h

jr_038_512D:
    add hl, bc
    ldh a, [rNR23]

jr_038_5130:
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc

jr_038_514A:
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc

jr_038_515E:
    ldh a, [$30]
    ld b, b

jr_038_5161:
    add hl, bc
    ldh a, [rNR23]

jr_038_5164:
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rOBP0]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR12]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, a
    add hl, bc
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [rNR12]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    dec bc
    ldh a, [rNR50]
    ld b, a
    dec bc
    ldh a, [rNR50]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld c, d
    ld c, $F0
    ld c, b
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
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR12]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, a
    add hl, bc
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [rNR12]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR23]
    ld b, e
    ld c, $F0
    ld c, b
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
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR12]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, a
    add hl, bc
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [rNR12]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    ld c, $F0
    ld c, b
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
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR12]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, a
    add hl, bc
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [rNR12]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR50]
    ld b, a
    add hl, bc
    ldh a, [rNR23]
    ld b, e
    ld c, $F0
    ld a, b
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [$30]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, h
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, b
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
    ldh a, [rNR23]
    ld c, d
    add hl, bc
    ldh a, [rNR23]
    ld b, b
    add hl, bc
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
    jr z, jr_038_55F8

    nop
    dec l
    jr nc, jr_038_55CD

jr_038_55CD:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_038_55F8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_038_564C

jr_038_564C:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    jr jr_038_5654

jr_038_5654:
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    jr jr_038_565E

jr_038_565E:
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0018
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_038_5672

jr_038_5672:
    cp $00
    nop
    nop
    nop
    nop
    ld a, $04
    ld b, $0B
    and [hl]
    inc c
    rst $18
    ldh a, [$60]
    and [hl]
    inc bc
    ld b, $F0
    inc h
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$78]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR50]
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
    cp c
    daa
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    jr c, jr_038_5ACA

    ldh a, [$0C]
    jr c, jr_038_5ACE

    ldh a, [$0C]

jr_038_5ACA:
    add hl, sp
    ld b, $F0
    inc c

jr_038_5ACE:
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
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
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    nop
    ld [hl-], a
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    jr c, jr_038_6096

    ldh a, [$0C]
    jr c, jr_038_609A

    ldh a, [$0C]

jr_038_6096:
    jr c, jr_038_609E

    ldh a, [$0C]

jr_038_609A:
    jr c, jr_038_60A2

    ldh a, [$0C]

jr_038_609E:
    jr c, jr_038_60A6

    ldh a, [$0C]

jr_038_60A2:
    jr c, jr_038_60AA

    ldh a, [$0C]

jr_038_60A6:
    jr c, jr_038_60AE

    ldh a, [$0C]

jr_038_60AA:
    jr c, jr_038_60B2

    ldh a, [$0C]

jr_038_60AE:
    add hl, sp
    ld b, $F0
    inc c

jr_038_60B2:
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    sub b
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0

jr_038_61B1:
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    nop
    rst $38
    di
    jr nc, jr_038_61B1

    ld d, c
    ld l, $F0
    jr nc, jr_038_6237

    add c
    ld [hl], $F1
    jr c, jr_038_623B

    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_038_6247

    add c
    ld e, $F1
    jr nz, @+$49

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    add c
    ld [hl], $F1
    jr c, jr_038_6255

jr_038_620E:
    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr jr_038_6265

    ld d, $F0
    jr jr_038_6267

    add c
    jr jr_038_620E

    ld a, [de]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, h
    ld e, [hl]
    ldh a, [$60]
    ld c, l
    halt
    ldh a, [$78]
    ld c, d
    ld d, $F0
    jr jr_038_627B

    ld d, $F0
    jr jr_038_6280

    ld d, $F0
    jr @+$4E

jr_038_6237:
    ld l, $F0
    jr nc, @+$4A

jr_038_623B:
    ld l, $F0
    jr nc, jr_038_6284

    ld l, $F0
    jr nc, @+$4A

    ld l, $F0
    jr nc, @+$4C

jr_038_6247:
    halt
    ldh a, [$78]
    ld c, c
    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr @+$4F

    ld d, $F0

jr_038_6255:
    jr jr_038_62A3

    ld l, $F0
    jr nc, jr_038_62A5

    ld l, $F0
    jr nc, jr_038_62A7

    ld l, $F0
    jr nc, @+$49

    ld l, $F0

jr_038_6265:
    jr nc, jr_038_62AF

jr_038_6267:
    add c
    ld [hl], $F1
    jr c, jr_038_62B3

    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_038_62BF

    add c
    ld e, $F1

jr_038_627B:
    jr nz, jr_038_62C4

    ld e, [hl]
    ldh a, [$60]

jr_038_6280:
    ld c, b
    add c
    ld [hl], $F1

jr_038_6284:
    jr c, @+$49

    ld d, $F0
    jr jr_038_62D2

    ld d, $F0
    jr @+$51

    ld d, $F0
    jr jr_038_62DF

    add c
    ld e, $F1
    jr nz, jr_038_62E3

    ld e, [hl]
    ldh a, [$60]
    ld c, l
    halt
    ldh a, [$78]
    ld c, d
    ld d, $F0
    jr jr_038_62EF

jr_038_62A3:
    ld d, $F0

jr_038_62A5:
    jr jr_038_62F4

jr_038_62A7:
    ld d, $F0
    jr jr_038_62F7

    ld l, $F0
    jr nc, jr_038_62F7

jr_038_62AF:
    ld l, $F0
    jr nc, jr_038_62F8

jr_038_62B3:
    ld l, $F0
    jr nc, jr_038_6304

    ld l, $F0
    jr nc, jr_038_6307

    add b
    cp [hl]
    ldh a, [$C0]

jr_038_62BF:
    ld c, h
    db $10
    ldh a, [$2A]
    ld d, l

jr_038_62C4:
    dec b
    ldh a, [rTMA]
    ld d, [hl]
    ld l, $F0
    jr nc, jr_038_6320

    ld l, $F0
    jr nc, @+$55

    ld l, $F0

jr_038_62D2:
    jr nc, jr_038_6325

    ld [$24F0], sp
    ld d, c
    ld [$24F0], sp
    ld d, c
    ld [$30F0], sp

jr_038_62DF:
    ld d, c
    ld [$18F0], sp

jr_038_62E3:
    ld d, h
    ld d, $F0
    jr jr_038_633B

    ld d, $F0
    jr jr_038_633D

    ld [$24F0], sp

jr_038_62EF:
    ld d, c
    ld [$24F0], sp
    ld d, c

jr_038_62F4:
    ld [$30F0], sp

jr_038_62F7:
    ld d, c

jr_038_62F8:
    ld [$18F0], sp
    ld c, a
    ld d, $F0
    jr jr_038_6350

    ld d, $F0
    jr jr_038_6355

jr_038_6304:
    ld [$24F0], sp

jr_038_6307:
    ld d, c
    ld [$24F0], sp
    ld d, c
    ld [$30F0], sp
    ld d, c
    ld [$18F0], sp
    ld d, h
    ld d, $F0
    jr jr_038_636B

    ld d, $F0
    jr jr_038_636D

    dec bc
    ldh a, [rP1]
    rst $38

jr_038_6320:
    ldh a, [rP1]
    sub $50
    dec b

jr_038_6325:
    ldh a, [rTMA]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld d, e
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]

jr_038_633B:
    ld c, l
    dec b

jr_038_633D:
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld b, a

jr_038_6350:
    dec b
    ldh a, [rTMA]
    ld c, l
    dec b

jr_038_6355:
    ldh a, [rTMA]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    add hl, sp
    dec bc
    ldh a, [rNR50]
    add hl, sp
    dec bc
    ldh a, [rNR50]

jr_038_636B:
    add hl, sp
    dec bc

jr_038_636D:
    ldh a, [$78]
    add hl, sp
    dec bc
    ldh a, [rNR50]
    add hl, sp
    dec bc
    ldh a, [rNR50]
    add hl, sp
    dec bc
    ldh a, [$78]
    add hl, sp
    dec bc
    ldh a, [rNR50]
    add hl, sp
    dec bc
    ldh a, [rNR50]
    add hl, sp
    dec bc
    ldh a, [$78]
    add hl, sp
    dec bc
    ldh a, [rNR50]
    add hl, sp
    dec bc
    ldh a, [rNR50]
    add hl, sp
    dec bc
    ldh a, [rNR23]
    inc [hl]
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    jr c, @+$07

    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    dec sp
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, h
    dec b
    ldh a, [rTMA]
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    jr c, jr_038_6463

    ldh a, [$0C]
    jr c, jr_038_6467

    ldh a, [$0C]

jr_038_6463:
    dec sp
    ld b, $F0
    inc c

jr_038_6467:
    dec sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
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
    ld d, b
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, b
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
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    jr c, jr_038_64D3

    ldh a, [$0C]
    jr c, jr_038_64D7

    ldh a, [$0C]

jr_038_64D3:
    add hl, sp
    ld b, $F0
    inc c

jr_038_64D7:
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
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
    ld b, l
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
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
    scf
    ld b, $F0
    inc c
    scf
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
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    jr c, jr_038_6623

    ldh a, [$0C]
    jr c, jr_038_6627

    ldh a, [$0C]

jr_038_6623:
    dec sp
    ld b, $F0
    inc c

jr_038_6627:
    dec sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
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
    ld a, [hl-]
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
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
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    jr c, jr_038_66A3

    ldh a, [$0C]
    jr c, jr_038_66A7

    ldh a, [$0C]

jr_038_66A3:
    dec sp
    ld b, $F0
    inc c

jr_038_66A7:
    dec sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
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
    ld d, b
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    jr c, jr_038_6763

    ldh a, [$0C]
    jr c, jr_038_6767

    ldh a, [$0C]

jr_038_6763:
    dec sp
    ld b, $F0
    inc c

jr_038_6767:
    dec sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
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
    ld d, b
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, b
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
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    jr c, jr_038_67D3

    ldh a, [$0C]
    jr c, jr_038_67D7

    ldh a, [$0C]

jr_038_67D3:
    add hl, sp
    ld b, $F0
    inc c

jr_038_67D7:
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
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
    ld b, l
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld d, c
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    dec [hl]
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
    scf
    ld b, $F0
    inc c
    scf
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
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    jr c, jr_038_6923

    ldh a, [$0C]
    jr c, jr_038_6927

    ldh a, [$0C]

jr_038_6923:
    dec sp
    ld b, $F0
    inc c

jr_038_6927:
    dec sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
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
    ld b, d
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    jr c, jr_038_6963

    ldh a, [$0C]
    jr c, jr_038_6967

    ldh a, [$0C]

jr_038_6963:
    dec sp
    ld b, $F0
    inc c

jr_038_6967:
    dec sp
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
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
    ld d, b
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr nc, jr_038_69F5

    dec b
    ldh a, [rTMA]
    ld e, h
    dec b
    ldh a, [rTMA]
    ld e, e
    dec b
    ldh a, [rTMA]
    ld e, d
    dec b
    ldh a, [rTMA]
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

jr_038_69F5:
    ldh a, [rTMA]
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
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
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
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
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
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
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
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
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
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
    add hl, sp
    ld b, $F0
    inc c
    add hl, sp
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
    add hl, sp
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
    jr z, jr_038_6AF7

    nop
    dec l
    jr nc, jr_038_6ACC

jr_038_6ACC:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_038_6AF7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_038_6B4B

jr_038_6B4B:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    ld hl, $FE00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld hl, $FE00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0021
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $FE00
    nop
    nop
    nop
    nop
    nop
    ld a, $03
    ld [bc], a
    add hl, bc
    xor [hl]
    rrca
    ld b, d
    ldh a, [rP1]
    and h
    inc bc
    ld b, $F0
    jr nc, jr_038_6BAA

    ld b, $F0
    jr nc, jr_038_6BAE

    ld b, $F0
    jr nc, jr_038_6BB2

    ld b, $F0
    jr nc, jr_038_6BB6

    ld b, $F0
    jr nc, jr_038_6BBA

    ld b, $F0
    jr nc, jr_038_6BBE

    ld b, $F0
    jr nc, jr_038_6BC2

    ld b, $F0
    jr nc, jr_038_6BC6

    ld b, $F0
    jr nc, jr_038_6BCA

    ld b, $F0
    jr nc, jr_038_6BCE

jr_038_6BAA:
    ld b, $F0
    jr nc, jr_038_6BD2

jr_038_6BAE:
    ld b, $F0
    jr nc, jr_038_6BD6

jr_038_6BB2:
    ld b, $F0
    jr nc, jr_038_6BDA

jr_038_6BB6:
    ld b, $F0
    jr nc, jr_038_6BDE

jr_038_6BBA:
    ld b, $F0
    jr nc, jr_038_6BE2

jr_038_6BBE:
    ld b, $F0
    jr nc, jr_038_6BE6

jr_038_6BC2:
    ld b, $F0
    jr nc, jr_038_6BEA

jr_038_6BC6:
    ld b, $F0
    jr nc, jr_038_6BEE

jr_038_6BCA:
    ld b, $F0
    jr nc, jr_038_6BF2

jr_038_6BCE:
    ld b, $F0
    jr nc, jr_038_6BF6

jr_038_6BD2:
    ld b, $F0
    jr nc, jr_038_6BFA

jr_038_6BD6:
    ld b, $F0
    jr nc, jr_038_6BFE

jr_038_6BDA:
    ld b, $F0
    jr nc, jr_038_6C02

jr_038_6BDE:
    ld b, $F0
    jr nc, jr_038_6C06

jr_038_6BE2:
    ld b, $F0
    jr nc, jr_038_6C0A

jr_038_6BE6:
    ld b, $F0
    jr nc, jr_038_6C0E

jr_038_6BEA:
    ld b, $F0
    jr nc, jr_038_6C12

jr_038_6BEE:
    ld b, $F0
    jr nc, jr_038_6C16

jr_038_6BF2:
    ld b, $F0
    jr nc, jr_038_6C1A

jr_038_6BF6:
    ld b, $F0
    jr nc, jr_038_6C1E

jr_038_6BFA:
    ld b, $F0
    jr nc, jr_038_6C22

jr_038_6BFE:
    ld b, $F0
    jr nc, jr_038_6C26

jr_038_6C02:
    ld b, $F0
    jr nc, jr_038_6C2A

jr_038_6C06:
    ld b, $F0
    jr nc, jr_038_6C2E

jr_038_6C0A:
    ld b, $F0
    jr nc, jr_038_6C32

jr_038_6C0E:
    ld b, $F0
    jr nc, jr_038_6C36

jr_038_6C12:
    ld b, $F0
    jr nc, jr_038_6C3A

jr_038_6C16:
    ld b, $F0
    jr nc, jr_038_6C3E

jr_038_6C1A:
    ld b, $F0
    jr nc, jr_038_6C42

jr_038_6C1E:
    ld b, $F0
    jr nc, jr_038_6C46

jr_038_6C22:
    ld b, $F0
    jr nc, jr_038_6C4A

jr_038_6C26:
    ld b, $F0
    jr nc, jr_038_6C4E

jr_038_6C2A:
    ld b, $F0
    jr nc, jr_038_6C52

jr_038_6C2E:
    ld b, $F0
    jr nc, jr_038_6C56

jr_038_6C32:
    ld b, $F0
    jr nc, jr_038_6C5A

jr_038_6C36:
    ld b, $F0
    jr nc, jr_038_6C5E

jr_038_6C3A:
    ld b, $F0
    jr nc, jr_038_6C62

jr_038_6C3E:
    ld b, $F0
    jr nc, jr_038_6C66

jr_038_6C42:
    ld b, $F0
    jr nc, jr_038_6C6A

jr_038_6C46:
    ld b, $F0
    jr nc, jr_038_6C6E

jr_038_6C4A:
    ld b, $F0
    jr nc, jr_038_6C72

jr_038_6C4E:
    ld b, $F0
    jr nc, jr_038_6C76

jr_038_6C52:
    ld b, $F0
    jr nc, jr_038_6C7A

jr_038_6C56:
    ld b, $F0
    jr nc, jr_038_6C7E

jr_038_6C5A:
    ld b, $F0
    jr nc, jr_038_6C82

jr_038_6C5E:
    ld b, $F0
    jr nc, jr_038_6C86

jr_038_6C62:
    ld b, $F0
    jr nc, jr_038_6C8A

jr_038_6C66:
    ld b, $F0
    jr nc, jr_038_6C8E

jr_038_6C6A:
    ld b, $F0
    jr nc, jr_038_6C92

jr_038_6C6E:
    ld b, $F0
    jr nc, jr_038_6C96

jr_038_6C72:
    ld b, $F0
    jr nc, jr_038_6C9A

jr_038_6C76:
    ld b, $F0
    jr nc, jr_038_6C9E

jr_038_6C7A:
    ld b, $F0
    jr nc, jr_038_6CA2

jr_038_6C7E:
    ld b, $F0
    jr nc, jr_038_6CA6

jr_038_6C82:
    ld b, $F0
    jr nc, jr_038_6CAA

jr_038_6C86:
    ld b, $F0
    jr nc, jr_038_6CAE

jr_038_6C8A:
    ld b, $F0
    jr nc, jr_038_6CB2

jr_038_6C8E:
    ld b, $F0
    jr nc, jr_038_6CB6

jr_038_6C92:
    ld b, $F0
    jr nc, jr_038_6CBA

jr_038_6C96:
    ld b, $F0
    jr nc, jr_038_6CBE

jr_038_6C9A:
    ld b, $F0
    jr nc, jr_038_6CC2

jr_038_6C9E:
    ld b, $F0
    jr nc, jr_038_6CC6

jr_038_6CA2:
    ld b, $F0
    jr nc, jr_038_6CCA

jr_038_6CA6:
    ld b, $F0
    jr nc, jr_038_6CCE

jr_038_6CAA:
    ld b, $F0
    jr nc, jr_038_6CD2

jr_038_6CAE:
    ld b, $F0
    jr nc, jr_038_6CD6

jr_038_6CB2:
    ld b, $F0
    jr nc, jr_038_6CDA

jr_038_6CB6:
    ld b, $F0
    jr nc, jr_038_6CDE

jr_038_6CBA:
    ld b, $F0
    jr nc, jr_038_6CE2

jr_038_6CBE:
    ld b, $F0
    jr nc, jr_038_6CE6

jr_038_6CC2:
    ld b, $F0
    jr nc, jr_038_6CEA

jr_038_6CC6:
    ld b, $F0
    jr nc, jr_038_6CEE

jr_038_6CCA:
    ld b, $F0
    jr nc, jr_038_6CF2

jr_038_6CCE:
    ld b, $F0
    jr nc, jr_038_6CF6

jr_038_6CD2:
    ld b, $F0
    jr nc, jr_038_6CFA

jr_038_6CD6:
    ld b, $F0
    jr nc, jr_038_6CFE

jr_038_6CDA:
    ld b, $F0
    jr nc, jr_038_6D02

jr_038_6CDE:
    ld b, $F0
    jr nc, jr_038_6D06

jr_038_6CE2:
    ld b, $F0
    jr nc, jr_038_6D0A

jr_038_6CE6:
    ld b, $F0
    jr nc, jr_038_6D0E

jr_038_6CEA:
    ld b, $F0
    jr nc, jr_038_6D12

jr_038_6CEE:
    ld b, $F0
    jr nc, jr_038_6D16

jr_038_6CF2:
    ld b, $F0
    jr nc, jr_038_6D1A

jr_038_6CF6:
    ld b, $F0
    jr nc, jr_038_6D1E

jr_038_6CFA:
    ld b, $F0
    jr nc, jr_038_6D22

jr_038_6CFE:
    ld b, $F0
    jr nc, jr_038_6D26

jr_038_6D02:
    ld b, $F0
    jr nc, jr_038_6D2A

jr_038_6D06:
    ld b, $F0
    jr nc, jr_038_6D2E

jr_038_6D0A:
    ld b, $F0
    jr nc, jr_038_6D32

jr_038_6D0E:
    ld b, $F0
    jr nc, jr_038_6D36

jr_038_6D12:
    ld b, $F0
    jr nc, jr_038_6D3A

jr_038_6D16:
    ld b, $F0
    jr nc, jr_038_6D3E

jr_038_6D1A:
    ld b, $F0
    jr nc, jr_038_6D42

jr_038_6D1E:
    ld b, $F0
    jr nc, jr_038_6D46

jr_038_6D22:
    ld b, $F0
    jr nc, jr_038_6D4A

jr_038_6D26:
    ld b, $F0
    jr nc, jr_038_6D4E

jr_038_6D2A:
    ld b, $F0
    jr nc, jr_038_6D52

jr_038_6D2E:
    ld b, $F0
    jr nc, jr_038_6D56

jr_038_6D32:
    ld b, $F0
    jr nc, jr_038_6D5A

jr_038_6D36:
    ld b, $F0
    jr nc, jr_038_6D5E

jr_038_6D3A:
    ld b, $F0
    jr nc, jr_038_6D62

jr_038_6D3E:
    ld b, $F0
    jr nc, jr_038_6D66

jr_038_6D42:
    ld b, $F0
    jr nc, jr_038_6D6A

jr_038_6D46:
    ld b, $F0
    jr nc, jr_038_6D6E

jr_038_6D4A:
    ld b, $F0
    jr nc, jr_038_6D72

jr_038_6D4E:
    ld b, $F0
    jr nc, jr_038_6D76

jr_038_6D52:
    ld b, $F0
    jr nc, jr_038_6D7A

jr_038_6D56:
    ld b, $F0
    jr nc, jr_038_6D7E

jr_038_6D5A:
    ld b, $F0
    jr nc, jr_038_6D82

jr_038_6D5E:
    ld b, $F0
    jr nc, jr_038_6D86

jr_038_6D62:
    ld b, $F0
    jr nc, jr_038_6D8A

jr_038_6D66:
    ld b, $F0
    jr nc, jr_038_6D8E

jr_038_6D6A:
    ld b, $F0
    jr nc, jr_038_6D92

jr_038_6D6E:
    ld b, $F0
    jr nc, jr_038_6D96

jr_038_6D72:
    ld b, $F0
    jr nc, jr_038_6D9A

jr_038_6D76:
    ld b, $F0
    jr nc, jr_038_6D9E

jr_038_6D7A:
    ld b, $F0
    jr nc, jr_038_6DA2

jr_038_6D7E:
    ld b, $F0
    jr nc, jr_038_6DA6

jr_038_6D82:
    ld b, $F0
    jr nc, jr_038_6DAA

jr_038_6D86:
    ld b, $F0
    jr nc, jr_038_6DAE

jr_038_6D8A:
    ld b, $F0
    jr nc, jr_038_6DB2

jr_038_6D8E:
    ld b, $F0
    jr nc, jr_038_6DB6

jr_038_6D92:
    ld b, $F0
    jr nc, jr_038_6DBA

jr_038_6D96:
    ld b, $F0
    jr nc, jr_038_6DBE

jr_038_6D9A:
    ld b, $F0
    jr nc, jr_038_6DC2

jr_038_6D9E:
    ld b, $F0
    jr nc, jr_038_6DC6

jr_038_6DA2:
    ld b, $F0
    jr nc, jr_038_6DCA

jr_038_6DA6:
    ld b, $F0
    jr nc, jr_038_6DCE

jr_038_6DAA:
    ld b, $F0
    jr nc, jr_038_6DD2

jr_038_6DAE:
    ld b, $F0
    jr nc, jr_038_6DD6

jr_038_6DB2:
    ld b, $F0
    jr nc, jr_038_6DDA

jr_038_6DB6:
    ld b, $F0
    jr nc, jr_038_6DDE

jr_038_6DBA:
    ld b, $F0
    jr nc, jr_038_6DE2

jr_038_6DBE:
    ld b, $F0
    jr nc, jr_038_6DE6

jr_038_6DC2:
    ld b, $F0
    jr nc, jr_038_6DEA

jr_038_6DC6:
    ld b, $F0
    jr nc, jr_038_6DEE

jr_038_6DCA:
    ld b, $F0
    jr nc, jr_038_6DF2

jr_038_6DCE:
    ld b, $F0
    jr nc, jr_038_6DF6

jr_038_6DD2:
    ld b, $F0
    jr nc, jr_038_6DFA

jr_038_6DD6:
    ld b, $F0
    jr nc, jr_038_6DFE

jr_038_6DDA:
    ld b, $F0
    jr nc, jr_038_6E02

jr_038_6DDE:
    ld b, $F0
    jr nc, jr_038_6E06

jr_038_6DE2:
    ld b, $F0
    jr nc, jr_038_6E0A

jr_038_6DE6:
    ld b, $F0
    jr nc, jr_038_6E0E

jr_038_6DEA:
    ld b, $F0
    jr nc, jr_038_6E12

jr_038_6DEE:
    ld b, $F0
    jr nc, jr_038_6E16

jr_038_6DF2:
    ld b, $F0
    jr nc, jr_038_6E1A

jr_038_6DF6:
    ld b, $F0
    jr nc, jr_038_6E1E

jr_038_6DFA:
    ld b, $F0
    jr nc, jr_038_6E22

jr_038_6DFE:
    ld b, $F0
    jr nc, jr_038_6E26

jr_038_6E02:
    ld b, $F0
    jr nc, jr_038_6E2A

jr_038_6E06:
    ld b, $F0
    jr nc, jr_038_6E2E

jr_038_6E0A:
    ld b, $F0
    jr nc, jr_038_6E32

jr_038_6E0E:
    ld b, $F0
    jr nc, jr_038_6E36

jr_038_6E12:
    ld b, $F0
    jr nc, jr_038_6E3A

jr_038_6E16:
    ld b, $F0
    jr nc, jr_038_6E3E

jr_038_6E1A:
    ld b, $F0
    jr nc, jr_038_6E42

jr_038_6E1E:
    ld b, $F0
    jr nc, jr_038_6E46

jr_038_6E22:
    ld b, $F0
    jr nc, jr_038_6E4A

jr_038_6E26:
    ld b, $F0
    jr nc, jr_038_6E4E

jr_038_6E2A:
    ld b, $F0
    jr nc, jr_038_6E52

jr_038_6E2E:
    ld b, $F0
    jr nc, jr_038_6E56

jr_038_6E32:
    ld b, $F0
    jr nc, jr_038_6E5A

jr_038_6E36:
    ld b, $F0
    jr nc, jr_038_6E5E

jr_038_6E3A:
    ld b, $F0
    jr nc, jr_038_6E62

jr_038_6E3E:
    ld b, $F0
    nop
    rst $38

jr_038_6E42:
    ldh a, [rP1]
    or d
    daa

jr_038_6E46:
    dec e
    ldh a, [$30]
    ld [hl-], a

jr_038_6E4A:
    dec e
    ldh a, [$30]
    ld [hl-], a

jr_038_6E4E:
    dec e
    ldh a, [$30]
    ld [hl-], a

jr_038_6E52:
    rra
    ldh a, [$30]
    ld [hl-], a

jr_038_6E56:
    add hl, de
    ldh a, [$30]
    ld [hl-], a

jr_038_6E5A:
    ld e, $F0
    jr nc, @+$34

jr_038_6E5E:
    jr @-$0E

    jr nc, @+$34

jr_038_6E62:
    add hl, de
    ldh a, [$30]
    ld [hl-], a
    rla
    ldh a, [$30]
    ld [hl-], a
    ld a, [de]
    ldh a, [$30]
    ld [hl-], a
    dec d
    ldh a, [$30]
    ld [hl-], a
    add hl, de
    ldh a, [$30]
    ld [hl-], a
    ld d, $F0
    jr nc, @+$34

    jr @-$0E

    jr nc, @+$34

    dec d
    ldh a, [$30]
    ld [hl-], a
    ld a, [de]
    ldh a, [$30]
    ld [hl-], a
    inc d
    ldh a, [$30]
    ld [hl-], a
    rrca
    ldh a, [$30]
    ld [hl-], a
    ld de, $18F0
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc bc
    ldh a, [$0C]
    ld [hl-], a
    dec c
    ldh a, [rNR23]
    ld [hl-], a
    rlca
    ldh a, [rNR23]
    ld [hl-], a
    inc d
    ldh a, [$30]
    ld [hl-], a
    inc de
    ldh a, [$30]
    ld [hl-], a
    dec c
    ldh a, [rNR23]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    rrca
    ldh a, [rNR23]
    ld [hl-], a
    ld [de], a
    ldh a, [rNR23]
    jr nc, @+$15

    ldh a, [$30]
    jr nc, jr_038_6ED7

    ldh a, [$30]
    jr nc, jr_038_6ED7

    ldh a, [rNR23]
    jr nc, jr_038_6ECF

    ldh a, [$0C]
    jr nc, jr_038_6ED3

jr_038_6ECF:
    ldh a, [$0C]
    jr nc, jr_038_6EE2

jr_038_6ED3:
    ldh a, [rNR23]
    jr nc, @+$0F

jr_038_6ED7:
    ldh a, [rNR23]
    ld [hl-], a
    rla
    ldh a, [$30]
    ld [hl-], a
    inc de
    ldh a, [$30]
    ld [hl-], a

jr_038_6EE2:
    ld de, $18F0
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    rrca
    ldh a, [rNR23]
    ld [hl-], a
    ld de, $18F0
    ld l, $06
    ldh a, [$0C]
    ld l, $04
    ldh a, [$0C]
    ld l, $02
    ldh a, [$0C]
    ld l, $11
    ldh a, [rNR23]
    ld l, $03
    ldh a, [$0C]
    ld l, $05
    ldh a, [$0C]
    ld l, $03
    ldh a, [$0C]
    ld l, $05
    ldh a, [$0C]
    ld l, $03
    ldh a, [$0C]
    ld l, $02
    ldh a, [$0C]
    ld l, $0E
    ldh a, [rNR23]
    ld l, $03
    ldh a, [$0C]
    ld l, $04
    ldh a, [$0C]
    ld l, $03
    ldh a, [$0C]
    ld l, $05
    ldh a, [$0C]
    ld l, $02
    ldh a, [$0C]
    ld l, $02
    ldh a, [$0C]
    ld l, $10
    ldh a, [rNR23]
    ld l, $03
    ldh a, [$0C]
    ld l, $04
    ldh a, [$0C]
    ld l, $03
    ldh a, [$0C]
    ld l, $05
    ldh a, [$0C]
    ld l, $03
    ldh a, [$0C]
    ld l, $02
    ldh a, [$0C]
    ld l, $0F
    ldh a, [rNR23]
    ld l, $03
    ldh a, [$0C]
    ld l, $04
    ldh a, [$0C]
    ld l, $0C
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    ld [bc], a
    ldh a, [$0C]
    dec l
    rrca
    ldh a, [rNR23]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    ld de, $18F0
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    ld de, $18F0
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    ld [bc], a
    ldh a, [$0C]
    dec l
    ld [bc], a
    ldh a, [$0C]
    dec l
    rrca
    ldh a, [rNR23]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc c
    ldh a, [$0C]
    inc l
    dec b
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    db $10
    ldh a, [rNR23]
    inc l
    inc b
    ldh a, [$0C]
    inc l
    inc b
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    dec b
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    ld de, $18F0
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    ld b, $F0
    inc c
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    ld [bc], a
    ldh a, [$0C]
    inc l
    ld de, $18F0
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc b
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc b
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    db $10
    ldh a, [rNR23]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc b
    ldh a, [$0C]
    inc l
    rlca
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    ld [bc], a
    ldh a, [$0C]
    dec l
    ld de, $18F0
    dec l
    inc b
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    ld b, $F0
    inc c
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc d
    ldh a, [$30]
    ld [hl-], a
    db $10
    ldh a, [$30]
    ld [hl-], a
    db $10
    ldh a, [rNR23]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc bc
    ldh a, [$0C]
    ld [hl-], a
    dec c
    ldh a, [rNR23]
    ld [hl-], a
    ld b, $F0
    jr @+$34

    inc d
    ldh a, [$30]
    ld [hl-], a
    inc de
    ldh a, [$30]
    ld [hl-], a
    ld c, $F0
    jr @+$34

    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    rrca
    ldh a, [rNR23]
    ld [hl-], a
    ld [de], a
    ldh a, [rNR23]
    jr nc, @+$15

    ldh a, [$30]
    jr nc, jr_038_710F

    ldh a, [$30]
    jr nc, jr_038_710F

    ldh a, [rNR23]
    jr nc, jr_038_7107

    ldh a, [$0C]
    jr nc, jr_038_710B

jr_038_7107:
    ldh a, [$0C]
    jr nc, jr_038_711A

jr_038_710B:
    ldh a, [rNR23]
    jr nc, @+$0F

jr_038_710F:
    ldh a, [rNR23]
    ld [hl-], a
    rla
    ldh a, [$30]
    ld [hl-], a
    inc de
    ldh a, [$30]
    ld [hl-], a

jr_038_711A:
    ld de, $18F0
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    db $10
    ldh a, [rNR23]
    ld [hl-], a
    ld de, $18F0
    ld l, $06
    ldh a, [$0C]
    ld l, $04
    ldh a, [$0C]
    ld l, $03
    ldh a, [$0C]
    ld l, $11
    ldh a, [rNR23]
    ld l, $03
    ldh a, [$0C]
    ld l, $05
    ldh a, [$0C]
    ld l, $03
    ldh a, [$0C]
    ld l, $05
    ldh a, [$0C]
    ld l, $03
    ldh a, [$0C]
    ld l, $02
    ldh a, [$0C]
    ld l, $0E
    ldh a, [rNR23]
    ld l, $03
    ldh a, [$0C]
    ld l, $04
    ldh a, [$0C]
    ld l, $03
    ldh a, [$0C]
    ld l, $05
    ldh a, [$0C]
    ld l, $02
    ldh a, [$0C]
    ld l, $02
    ldh a, [$0C]
    ld l, $0F
    ldh a, [rNR23]
    ld l, $02
    ldh a, [$0C]
    ld l, $04
    ldh a, [$0C]
    ld l, $03
    ldh a, [$0C]
    ld l, $04
    ldh a, [$0C]
    ld l, $03
    ldh a, [$0C]
    ld l, $02
    ldh a, [$0C]
    ld l, $0F
    ldh a, [rNR23]
    ld l, $04
    ldh a, [$0C]
    ld l, $04
    ldh a, [$0C]
    ld l, $0C
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    ld [bc], a
    ldh a, [$0C]
    dec l
    rrca
    ldh a, [rNR23]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    ld [bc], a
    ldh a, [$0C]
    dec l
    ld de, $18F0
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    ld de, $18F0
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    ld [bc], a
    ldh a, [$0C]
    dec l
    rrca
    ldh a, [rNR23]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc c
    ldh a, [$0C]
    inc l
    inc b
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    db $10
    ldh a, [rNR23]
    inc l
    inc b
    ldh a, [$0C]
    inc l
    inc b
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    dec b
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    ld de, $18F0
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    ld b, $F0
    inc c
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    ld de, $18F0
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc b
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    inc bc
    ldh a, [$0C]
    inc l
    db $10
    ldh a, [rNR23]
    inc l
    inc b
    ldh a, [$0C]
    inc l
    inc b
    ldh a, [$0C]
    inc l
    ld [$0CF0], sp
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    ld [bc], a
    ldh a, [$0C]
    dec l
    ld de, $18F0
    dec l
    inc b
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    db $10
    ldh a, [rNR23]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    ld b, $F0
    inc c
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc bc
    ldh a, [$0C]
    dec l
    dec b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    dec l
    inc b
    ldh a, [$0C]
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    ld b, $F0
    jr nc, @+$34

    ld b, $F0
    jr nc, @+$34

    ld [$18F0], sp
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    ld b, $F0
    jr nc, @+$34

    ld [$18F0], sp
    ld [hl-], a
    rlca
    ldh a, [rNR23]
    ld [hl-], a
    rlca
    ldh a, [rNR23]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    add hl, bc
    ldh a, [rNR23]
    ld [hl-], a
    add hl, bc
    ldh a, [$30]
    ld [hl-], a
    ld [$30F0], sp
    ld [hl-], a
    add hl, bc
    ldh a, [rNR23]
    ld [hl-], a
    dec b
    ldh a, [rNR23]
    ld [hl-], a
    ld a, [bc]
    ldh a, [rNR23]
    ld [hl-], a
    ld b, $F0
    jr @+$34

    ld b, $F0
    jr nc, @+$34

    ld [$18F0], sp
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    rlca
    ldh a, [rNR23]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    jr nc, @+$0B

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [$30]
    jr nc, @+$0B

    ldh a, [$30]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [$0C]
    jr nc, @+$07

    ldh a, [$0C]
    jr nc, jr_038_7397

    ldh a, [rNR23]
    jr nc, jr_038_7397

    ldh a, [rNR23]
    jr nc, jr_038_739B

    ldh a, [$30]
    jr nc, @+$09

jr_038_7397:
    ldh a, [rNR23]
    jr nc, jr_038_73A3

jr_038_739B:
    ldh a, [rNR23]
    jr nc, @+$0B

    ldh a, [rNR23]
    jr nc, @+$07

jr_038_73A3:
    ldh a, [$0C]
    jr nc, jr_038_73AB

    ldh a, [$0C]
    jr nc, @+$07

jr_038_73AB:
    ldh a, [$0C]
    jr nc, jr_038_73BB

    ldh a, [$0C]
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    ld [$30F0], sp
    ld [hl-], a
    rlca

jr_038_73BB:
    ldh a, [$30]
    ld [hl-], a
    rlca
    ldh a, [rNR23]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    ld [$30F0], sp
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    add hl, bc
    ldh a, [rNR23]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    rlca
    ldh a, [rNR23]
    ld [hl-], a
    ld b, $F0
    jr nc, @+$34

    ld b, $F0
    jr nc, @+$34

    ld [$18F0], sp
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    ld b, $F0
    jr nc, @+$34

    ld [$18F0], sp
    ld [hl-], a
    rlca
    ldh a, [rNR23]
    ld [hl-], a
    rlca
    ldh a, [rNR23]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld [hl-], a
    add hl, bc
    ldh a, [rNR23]
    ld [hl-], a
    add hl, bc
    ldh a, [$30]
    ld [hl-], a
    ld [$30F0], sp
    ld [hl-], a
    add hl, bc
    ldh a, [rNR23]
    ld [hl-], a
    dec b
    ldh a, [rNR23]
    ld [hl-], a
    ld a, [bc]
    ldh a, [rNR23]
    ld [hl-], a
    ld b, $F0
    jr @+$34

    ld b, $F0
    jr nc, @+$34

    ld [$18F0], sp
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    rlca
    ldh a, [rNR23]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    jr nc, @+$0B

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [$30]
    jr nc, @+$0B

    ldh a, [$30]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [$0C]
    jr nc, jr_038_7487

    ldh a, [$0C]
    jr nc, jr_038_7493

jr_038_7487:
    ldh a, [rNR23]
    jr nc, jr_038_7493

    ldh a, [rNR23]
    jr nc, jr_038_7497

    ldh a, [$30]
    jr nc, @+$09

jr_038_7493:
    ldh a, [rNR23]
    jr nc, jr_038_749F

jr_038_7497:
    ldh a, [rNR23]
    jr nc, @+$0B

    ldh a, [rNR23]
    jr nc, jr_038_74A3

jr_038_749F:
    ldh a, [$0C]
    jr nc, jr_038_74A7

jr_038_74A3:
    ldh a, [$0C]
    jr nc, @+$07

jr_038_74A7:
    ldh a, [$0C]
    jr nc, jr_038_74B7

    ldh a, [$0C]
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    ld [$30F0], sp
    ld [hl-], a
    rlca

jr_038_74B7:
    ldh a, [$30]
    ld [hl-], a
    rlca
    ldh a, [rNR23]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    ld [$30F0], sp
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    ld [$18F0], sp
    ld [hl-], a
    add hl, bc
    ldh a, [rNR23]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    inc b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [rP1]
    rst $38
    di
    nop
    cp c
    ld d, c
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    dec a
    ld d, $F0
    jr @+$40

    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    dec a
    ld d, $F0
    jr @+$40

    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, c
    ld d, $F0
    jr jr_038_75A9

    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    dec a
    ld d, $F0
    jr @+$40

    ld d, $F0
    ld a, b
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]

jr_038_75A9:
    ld l, $05
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$6C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld l, $05
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$6C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    add hl, sp
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$6C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    add hl, sp
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$6C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$6C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    inc l
    dec b
    ldh a, [$0C]
    dec l
    ld a, [bc]
    ldh a, [$0C]
    ld l, $0A
    ldh a, [$0C]
    cpl
    ld a, [bc]
    ldh a, [$0C]
    jr nc, jr_038_7669

    ldh a, [$0C]
    ld sp, $F00A
    inc c
    ld [hl-], a
    ld a, [bc]
    ldh a, [$0C]

jr_038_7669:
    inc sp
    ld a, [bc]
    ldh a, [$0C]
    inc [hl]
    ld a, [bc]
    ldh a, [$0C]
    dec [hl]
    ld a, [bc]
    ldh a, [$0C]
    ld [hl], $0A
    ldh a, [$0C]
    scf
    ld a, [bc]
    ldh a, [$0C]
    jr c, jr_038_7689

    ldh a, [$0C]
    add hl, sp
    ld a, [bc]
    ldh a, [$0C]
    ld a, [hl-]
    ld a, [bc]
    ldh a, [$0C]

jr_038_7689:
    dec sp
    ld a, [bc]
    ldh a, [$0C]
    inc a
    ld a, [bc]
    ldh a, [$0C]
    dec a
    ld a, [bc]
    ldh a, [$0C]
    ld a, $0A
    ldh a, [$0C]
    ccf
    ld a, [bc]
    ldh a, [$0C]
    ld b, b
    ld a, [bc]
    ldh a, [$0C]
    ld b, c
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
    ld b, l
    ld a, [bc]
    ldh a, [$0C]
    ld b, [hl]
    ld a, [bc]
    ldh a, [$0C]
    ld b, a
    ld a, [bc]
    ldh a, [$0C]
    ld c, b
    ld a, [bc]
    ldh a, [$0C]
    ld c, c
    ld a, [bc]
    ldh a, [$0C]
    ld c, d
    ld a, [bc]
    ldh a, [$0C]
    ld c, e
    ld a, [bc]
    ldh a, [$0C]
    ld c, h
    ld a, [bc]
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    dec a
    ld d, $F0
    jr @+$40

    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    dec a
    inc d
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, c
    ld d, $F0
    jr jr_038_7789

    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    dec a
    ld d, $F0
    jr @+$40

    dec bc
    ldh a, [$78]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]

jr_038_7789:
    ld l, $05
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$6C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    ld l, $05
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$6C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    add hl, sp
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$6C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    add hl, sp
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$6C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$6C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    ld [hl-], a
    dec b
    ldh a, [$0C]
    inc l
    dec b
    ldh a, [$0C]
    dec l
    ld a, [bc]
    ldh a, [$0C]
    ld l, $0A
    ldh a, [$0C]
    cpl
    ld a, [bc]
    ldh a, [$0C]
    jr nc, jr_038_7849

    ldh a, [$0C]
    ld sp, $F00A
    inc c
    ld [hl-], a
    ld a, [bc]
    ldh a, [$0C]

jr_038_7849:
    inc sp
    ld a, [bc]
    ldh a, [$0C]
    inc [hl]
    ld a, [bc]
    ldh a, [$0C]
    dec [hl]
    ld a, [bc]
    ldh a, [$0C]
    ld [hl], $0A
    ldh a, [$0C]
    scf
    ld a, [bc]
    ldh a, [$0C]
    jr c, jr_038_7869

    ldh a, [$0C]
    add hl, sp
    ld a, [bc]
    ldh a, [$0C]
    ld a, [hl-]
    ld a, [bc]
    ldh a, [$0C]

jr_038_7869:
    dec sp
    ld a, [bc]
    ldh a, [$0C]
    inc a
    ld a, [bc]
    ldh a, [$0C]
    dec a
    ld a, [bc]
    ldh a, [$0C]
    ld a, $0A
    ldh a, [$0C]
    ccf
    ld a, [bc]
    ldh a, [$0C]
    ld b, b
    ld a, [bc]
    ldh a, [$0C]
    ld b, c
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
    ld b, l
    ld a, [bc]
    ldh a, [$0C]
    ld b, [hl]
    ld a, [bc]
    ldh a, [$0C]
    ld b, a
    ld a, [bc]
    ldh a, [$0C]
    ld c, b
    ld a, [bc]
    ldh a, [$0C]
    ld c, c
    ld a, [bc]
    ldh a, [$0C]
    ld c, d
    ld a, [bc]
    ldh a, [$0C]
    ld c, e
    ld a, [bc]
    ldh a, [$0C]
    ld c, h
    ld a, [bc]
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, l
    ld l, $F0
    jr nc, @+$40

    jr z, @-$0E

    jr nc, jr_038_792F

    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld c, b
    dec b
    ldh a, [rNR23]
    ld b, a
    dec b
    ldh a, [rNR23]
    ld b, [hl]
    dec b
    ldh a, [rNR23]
    ld b, l
    ld l, $F0
    jr nc, @+$40

    jr z, @-$0E

    jr nc, jr_038_7965

    dec b
    ldh a, [rNR23]
    ld b, e
    dec b
    ldh a, [rNR23]
    ld b, d
    dec b
    ldh a, [rNR23]
    ld b, d
    dec b

jr_038_792F:
    ldh a, [rNR23]
    ld b, e
    dec b
    ldh a, [rNR23]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [rNR23]
    ld b, e
    dec b
    ldh a, [rNR23]
    ld b, e
    dec b
    ldh a, [rNR23]
    ld b, d
    dec b
    ldh a, [rNR23]
    ld b, d
    dec b
    ldh a, [rNR23]
    ld b, e
    ld l, $F0
    jr nc, jr_038_7992

    jr z, @-$0E

    jr nc, jr_038_799F

    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]

jr_038_7965:
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld c, b
    dec b
    ldh a, [rNR23]
    ld b, a
    dec b
    ldh a, [rNR23]
    ld b, [hl]
    dec b
    ldh a, [rNR23]
    ld b, l
    ld l, $F0
    jr nc, jr_038_79CC

    jr z, @-$0E

    ld a, [hl+]
    ld b, h

jr_038_7992:
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b

jr_038_799F:
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, l
    ld l, $F0
    jr nc, jr_038_7A08

    ld l, $F0

jr_038_79CC:
    jr nc, jr_038_7A13

    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR12]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld c, b
    dec b
    ldh a, [rNR23]
    ld b, a
    dec b
    ldh a, [rNR23]
    ld b, [hl]
    dec b
    ldh a, [rNR23]
    ld b, l
    ld l, $F0
    jr nc, jr_038_7A44

    ld l, $F0

jr_038_7A08:
    jr nc, jr_038_7A4D

    dec b
    ldh a, [rNR23]
    ld b, e
    dec b
    ldh a, [rNR23]
    ld b, d
    dec b

jr_038_7A13:
    ldh a, [rNR23]
    ld b, d
    dec b
    ldh a, [rNR23]
    ld b, e
    dec b
    ldh a, [rNR23]
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [rNR12]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rNR23]
    ld b, e
    dec b
    ldh a, [rNR23]
    ld b, d
    dec b
    ldh a, [rNR23]
    ld b, d
    dec b
    ldh a, [rNR23]
    ld b, e
    ld l, $F0
    jr nc, jr_038_7A7E

    ld l, $F0

jr_038_7A44:
    jr nc, @+$47

    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]

jr_038_7A4D:
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR23]
    ld a, $05
    ldh a, [rNR12]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rNR23]
    ld c, b
    dec b
    ldh a, [rNR23]
    ld b, a
    dec b
    ldh a, [rNR23]
    ld b, [hl]
    dec b
    ldh a, [rNR23]
    ld b, l
    ld l, $F0
    jr nc, jr_038_7ABC

jr_038_7A7E:
    ld l, $F0
    nop
    rst $38
    ldh a, [rP1]
    or d
    ld d, b
    ld b, $F0
    jr jr_038_7ABC

    ld b, $F0
    jr jr_038_7AC0

    ld d, $F0
    jr @+$37

    ld d, $F0
    jr jr_038_7AC8

    ld b, $F0
    jr jr_038_7ACC

    ld b, $F0
    jr jr_038_7AD0

    ld d, $F0
    jr @+$37

    ld d, $F0
    jr jr_038_7AD8

    ld b, $F0
    jr jr_038_7ADC

    ld b, $F0
    jr jr_038_7AE0

    ld d, $F0
    jr @+$37

    ld d, $F0
    jr jr_038_7AE8

    ld b, $F0
    jr jr_038_7AEC

    ld b, $F0

jr_038_7ABC:
    jr jr_038_7AF0

    ld d, $F0

jr_038_7AC0:
    jr @+$37

    ld d, $F0
    jr jr_038_7AF8

    ld b, $F0

jr_038_7AC8:
    jr jr_038_7AFC

    ld b, $F0

jr_038_7ACC:
    jr jr_038_7B00

    ld d, $F0

jr_038_7AD0:
    jr @+$37

    ld d, $F0
    jr jr_038_7B08

    ld b, $F0

jr_038_7AD8:
    jr jr_038_7B0C

    ld b, $F0

jr_038_7ADC:
    jr jr_038_7B10

    ld d, $F0

jr_038_7AE0:
    jr @+$37

    ld d, $F0
    jr jr_038_7B18

    ld b, $F0

jr_038_7AE8:
    jr jr_038_7B1C

    ld b, $F0

jr_038_7AEC:
    jr jr_038_7B20

    ld d, $F0

jr_038_7AF0:
    jr @+$37

    ld d, $F0
    jr jr_038_7B28

    ld b, $F0

jr_038_7AF8:
    jr jr_038_7B2C

    ld b, $F0

jr_038_7AFC:
    jr jr_038_7B30

    ld d, $F0

jr_038_7B00:
    jr @+$37

    ld d, $F0
    jr jr_038_7B38

    ld b, $F0

jr_038_7B08:
    jr jr_038_7B3C

    ld b, $F0

jr_038_7B0C:
    jr jr_038_7B40

    ld d, $F0

jr_038_7B10:
    jr @+$37

    ld d, $F0
    jr jr_038_7B48

    ld b, $F0

jr_038_7B18:
    jr jr_038_7B4C

    ld b, $F0

jr_038_7B1C:
    jr jr_038_7B50

    ld d, $F0

jr_038_7B20:
    jr @+$37

    ld d, $F0
    jr jr_038_7B58

    ld b, $F0

jr_038_7B28:
    jr jr_038_7B5C

    ld b, $F0

jr_038_7B2C:
    jr jr_038_7B60

    ld d, $F0

jr_038_7B30:
    jr @+$37

    ld d, $F0
    jr jr_038_7B68

    ld b, $F0

jr_038_7B38:
    jr jr_038_7B6C

    ld b, $F0

jr_038_7B3C:
    jr jr_038_7B70

    ld d, $F0

jr_038_7B40:
    jr @+$37

    ld d, $F0
    jr jr_038_7B7A

    ld b, $F0

jr_038_7B48:
    jr jr_038_7B7E

    ld b, $F0

jr_038_7B4C:
    jr jr_038_7B82

    ld d, $F0

jr_038_7B50:
    jr @+$39

    ld d, $F0
    jr jr_038_7B8A

    ld b, $F0

jr_038_7B58:
    jr jr_038_7B8E

    ld b, $F0

jr_038_7B5C:
    jr jr_038_7B92

    ld d, $F0

jr_038_7B60:
    jr @+$39

    ld d, $F0
    jr jr_038_7B98

    ld b, $F0

jr_038_7B68:
    jr jr_038_7B9C

    ld b, $F0

jr_038_7B6C:
    jr jr_038_7BA0

    ld d, $F0

jr_038_7B70:
    jr jr_038_7BA7

    ld d, $F0
    jr @+$34

    ld b, $F0
    jr jr_038_7BAC

jr_038_7B7A:
    ld b, $F0
    jr jr_038_7BB0

jr_038_7B7E:
    ld d, $F0
    jr @+$37

jr_038_7B82:
    ld d, $F0
    jr jr_038_7BCC

    ld d, $F0
    jr jr_038_7BD4

jr_038_7B8A:
    ld d, $F0
    jr jr_038_7BDA

jr_038_7B8E:
    ld d, $F0
    jr @+$4F

jr_038_7B92:
    ld d, $F0
    jr @+$51

    ld d, $F0

jr_038_7B98:
    jr jr_038_7BE7

    ld d, $F0

jr_038_7B9C:
    jr jr_038_7BEA

    ld d, $F0

jr_038_7BA0:
    jr @+$4C

    db $10
    ldh a, [rNR12]
    ld b, l
    dec b

jr_038_7BA7:
    ldh a, [rTMA]
    ld b, [hl]
    ld d, $F0

jr_038_7BAC:
    jr jr_038_7BF8

    ld d, $F0

jr_038_7BB0:
    jr jr_038_7BFE

    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr @+$51

    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr jr_038_7C0E

    ld d, $F0
    jr jr_038_7C10

    ld d, $F0
    jr @+$47

    ld d, $F0

jr_038_7BCC:
    jr jr_038_7C18

    ld d, $F0
    jr jr_038_7C1E

    ld d, $F0

jr_038_7BD4:
    jr @+$4F

    ld d, $F0
    jr @+$51

jr_038_7BDA:
    ld d, $F0
    jr jr_038_7C2B

    ld d, $F0
    jr jr_038_7C2E

    ld d, $F0
    jr @+$4C

    db $10

jr_038_7BE7:
    ldh a, [rNR12]
    ld b, h

jr_038_7BEA:
    dec b
    ldh a, [rTMA]
    ld b, l
    ld d, $F0
    jr jr_038_7C3C

    ld d, $F0
    jr jr_038_7C42

    ld d, $F0

jr_038_7BF8:
    jr @+$4F

    ld d, $F0
    jr @+$51

jr_038_7BFE:
    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr jr_038_7C52

    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_038_7C52

jr_038_7C0E:
    ld d, $F0

jr_038_7C10:
    jr @+$4C

    ld d, $F0
    jr jr_038_7C62

    ld d, $F0

jr_038_7C18:
    jr @+$4F

    ld d, $F0
    jr @+$51

jr_038_7C1E:
    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr jr_038_7C72

    ld d, $F0
    jr jr_038_7C74

    db $10

jr_038_7C2B:
    ldh a, [rNR12]
    ld b, e

jr_038_7C2E:
    dec b
    ldh a, [rTMA]
    ld b, h
    ld d, $F0
    jr jr_038_7C80

    ld d, $F0
    jr jr_038_7C86

    ld d, $F0

jr_038_7C3C:
    jr @+$4F

    ld d, $F0
    jr @+$51

jr_038_7C42:
    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr jr_038_7C96

    ld d, $F0
    jr jr_038_7C98

    ld d, $F0
    jr @+$47

jr_038_7C52:
    ld e, [hl]
    ldh a, [$60]
    ld c, a
    ld e, [hl]
    ldh a, [$60]
    ld c, l
    ld e, [hl]
    ldh a, [$60]
    ld c, h
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a

jr_038_7C62:
    ld b, $F0
    jr jr_038_7C98

    ld b, $F0
    jr jr_038_7C9C

    ld d, $F0
    jr @+$37

    ld d, $F0
    jr jr_038_7CA4

jr_038_7C72:
    ld b, $F0

jr_038_7C74:
    jr jr_038_7CA8

    ld b, $F0
    jr jr_038_7CAC

    ld d, $F0
    jr @+$37

    ld d, $F0

jr_038_7C80:
    jr jr_038_7CB4

    ld b, $F0
    jr jr_038_7CB8

jr_038_7C86:
    ld b, $F0
    jr jr_038_7CBC

    ld d, $F0
    jr @+$37

    ld d, $F0
    jr jr_038_7CC4

    ld b, $F0
    jr jr_038_7CC8

jr_038_7C96:
    ld b, $F0

jr_038_7C98:
    jr jr_038_7CCC

    ld d, $F0

jr_038_7C9C:
    jr @+$37

    ld d, $F0
    jr jr_038_7CD6

    ld b, $F0

jr_038_7CA4:
    jr jr_038_7CDA

    ld b, $F0

jr_038_7CA8:
    jr jr_038_7CDE

    ld d, $F0

jr_038_7CAC:
    jr @+$39

    ld d, $F0
    jr jr_038_7CE6

    ld b, $F0

jr_038_7CB4:
    jr jr_038_7CEA

    ld b, $F0

jr_038_7CB8:
    jr jr_038_7CEE

    ld d, $F0

jr_038_7CBC:
    jr @+$39

    ld d, $F0
    jr jr_038_7CF4

    ld b, $F0

jr_038_7CC4:
    jr jr_038_7CF8

    ld b, $F0

jr_038_7CC8:
    jr jr_038_7CFC

    ld d, $F0

jr_038_7CCC:
    jr jr_038_7D03

    ld d, $F0
    jr @+$34

    ld b, $F0
    jr jr_038_7D08

jr_038_7CD6:
    ld b, $F0
    jr jr_038_7D0C

jr_038_7CDA:
    ld d, $F0
    jr @+$37

jr_038_7CDE:
    ld d, $F0
    jr jr_038_7D28

    ld d, $F0
    jr jr_038_7D30

jr_038_7CE6:
    ld d, $F0
    jr jr_038_7D36

jr_038_7CEA:
    ld d, $F0
    jr @+$4F

jr_038_7CEE:
    ld d, $F0
    jr @+$51

    ld d, $F0

jr_038_7CF4:
    jr jr_038_7D43

    ld d, $F0

jr_038_7CF8:
    jr jr_038_7D46

    ld d, $F0

jr_038_7CFC:
    jr @+$4C

    db $10
    ldh a, [rNR12]
    ld b, l
    dec b

jr_038_7D03:
    ldh a, [rTMA]
    ld b, [hl]
    ld d, $F0

jr_038_7D08:
    jr jr_038_7D54

    ld d, $F0

jr_038_7D0C:
    jr jr_038_7D5A

    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr @+$51

    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr jr_038_7D6A

    ld d, $F0
    jr jr_038_7D6C

    ld d, $F0
    jr @+$47

    ld d, $F0

jr_038_7D28:
    jr jr_038_7D74

    ld d, $F0
    jr jr_038_7D7A

    ld d, $F0

jr_038_7D30:
    jr @+$4F

    ld d, $F0
    jr @+$51

jr_038_7D36:
    ld d, $F0
    jr jr_038_7D87

    ld d, $F0
    jr jr_038_7D8A

    ld d, $F0
    jr @+$4C

    db $10

jr_038_7D43:
    ldh a, [rNR12]
    ld b, h

jr_038_7D46:
    dec b
    ldh a, [rTMA]
    ld b, l
    ld d, $F0
    jr jr_038_7D98

    ld d, $F0
    jr jr_038_7D9E

    ld d, $F0

jr_038_7D54:
    jr @+$4F

    ld d, $F0
    jr @+$51

jr_038_7D5A:
    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr jr_038_7DAE

    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_038_7DAE

jr_038_7D6A:
    ld d, $F0

jr_038_7D6C:
    jr @+$4C

    ld d, $F0
    jr jr_038_7DBE

    ld d, $F0

jr_038_7D74:
    jr jr_038_7DC3

    ld d, $F0
    jr jr_038_7DC9

jr_038_7D7A:
    ld d, $F0
    jr jr_038_7DCB

    ld d, $F0
    jr jr_038_7DCE

    ld d, $F0
    jr @+$4C

    db $10

jr_038_7D87:
    ldh a, [rNR12]
    ld b, e

jr_038_7D8A:
    dec b
    ldh a, [rTMA]
    ld b, h
    ld d, $F0
    jr jr_038_7DDC

    ld d, $F0
    jr @+$4E

    ld d, $F0

jr_038_7D98:
    jr @+$4F

    ld d, $F0
    jr jr_038_7DED

jr_038_7D9E:
    ld d, $F0
    jr jr_038_7DEF

    ld d, $F0
    jr jr_038_7DF2

    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_038_7DF3

jr_038_7DAE:
    ld e, [hl]
    ldh a, [$60]
    ld c, a
    ld e, [hl]
    ldh a, [$60]
    ld c, l
    ld e, [hl]
    ldh a, [$60]
    ld c, h
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a

jr_038_7DBE:
    inc c
    ldh a, [$30]
    dec l
    inc c

jr_038_7DC3:
    ldh a, [$30]
    ld [hl-], a
    inc c
    ldh a, [$30]

jr_038_7DC9:
    dec l
    inc c

jr_038_7DCB:
    ldh a, [$30]
    ld [hl-], a

jr_038_7DCE:
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0

jr_038_7DDC:
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c

jr_038_7DED:
    ld c, d
    inc c

jr_038_7DEF:
    ldh a, [rNR23]
    ld [hl-], a

jr_038_7DF2:
    inc c

jr_038_7DF3:
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    inc c
    ldh a, [rNR23]
    jr nc, jr_038_7E33

    ldh a, [$30]
    dec hl
    inc c
    ldh a, [$30]
    jr nc, jr_038_7E3B

    ldh a, [$30]
    dec hl
    inc c

jr_038_7E33:
    ldh a, [$30]
    jr nc, @+$0E

    ldh a, [$30]
    dec hl
    inc c

jr_038_7E3B:
    ldh a, [$30]
    jr nc, jr_038_7E45

    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c

jr_038_7E45:
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    inc c
    ldh a, [rNR23]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    inc c
    ldh a, [rNR23]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    inc c
    ldh a, [rNR23]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    inc c
    ldh a, [rNR23]
    jr nc, jr_038_7F03

    ldh a, [$30]
    dec hl
    inc c
    ldh a, [$30]
    jr nc, jr_038_7F0B

    ldh a, [$30]
    dec hl
    inc c

jr_038_7F03:
    ldh a, [$30]
    jr nc, @+$0E

    ldh a, [$30]
    dec hl
    inc c

jr_038_7F0B:
    ldh a, [$30]
    jr nc, jr_038_7F15

    ldh a, [$0C]
    inc [hl]
    ld b, $F0
    inc c

jr_038_7F15:
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    inc c
    ldh a, [rNR23]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    inc c
    ldh a, [$30]
    dec l
    inc c
    ldh a, [$30]
    ld [hl-], a
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    add hl, sp
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, l
    ld b, $F0
    inc c
    ld c, d
    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
