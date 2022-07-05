; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03a", ROMX[$4000], BANK[$3a]

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
    jr z, jr_03A_403B

    nop
    dec l
    jr nc, jr_03A_4010

jr_03A_4010:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03A_403B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jp nc, $0E00

    nop
    jr jr_03A_408F

jr_03A_408F:
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
    ld a, $03
    ld h, d
    ld b, $86
    ld [$F050], sp
    nop
    xor h
    inc bc
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]

Jump_03A_4209:
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [$30]
    inc l
    ld a, [bc]
    ldh a, [rNR23]
    inc l
    ld a, [bc]
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or b
    daa
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03A_4430

    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr @+$39

    ld d, $F0
    jr jr_03A_442E

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03A_4444

    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr @+$39

    ld d, $F0
    jr jr_03A_444A

    ld l, $F0
    jr nc, jr_03A_4452

    ld l, $F0
    jr nc, @+$41

    ld l, $F0
    jr nc, jr_03A_4462

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03A_445E

    ld l, $F0
    jr nc, jr_03A_4466

    ld l, $F0
    jr nc, @+$41

jr_03A_442E:
    ld l, $F0

jr_03A_4430:
    jr nc, jr_03A_4476

    ld d, $F0
    jr jr_03A_446E

    ld d, $F0
    jr jr_03A_446A

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03A_4480

    ld l, $F0

jr_03A_4444:
    jr nc, @+$41

    ld d, $F0
    jr @+$39

jr_03A_444A:
    ld d, $F0
    jr jr_03A_447E

    ld l, $F0
    jr nc, @+$39

jr_03A_4452:
    ld l, $F0
    jr nc, jr_03A_4494

    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr @+$39

jr_03A_445E:
    ld d, $F0
    jr jr_03A_449A

jr_03A_4462:
    ld l, $F0
    jr nc, jr_03A_44A2

jr_03A_4466:
    ld l, $F0
    jr nc, @+$41

jr_03A_446A:
    ld l, $F0
    jr nc, jr_03A_44B2

jr_03A_446E:
    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03A_44AE

jr_03A_4476:
    ld l, $F0
    jr nc, jr_03A_44B6

    ld l, $F0
    jr nc, @+$41

jr_03A_447E:
    ld l, $F0

jr_03A_4480:
    jr nc, jr_03A_44C6

    ld d, $F0
    jr jr_03A_44BE

    ld d, $F0
    jr @+$35

    ld l, $F0
    jr nc, jr_03A_44C8

    ld l, $F0
    jr nc, @+$41

    ld l, $F0

jr_03A_4494:
    jr nc, @+$45

    ld d, $F0
    jr jr_03A_44D4

jr_03A_449A:
    ld d, $F0
    jr jr_03A_44D6

    ld l, $F0
    jr nc, jr_03A_44DE

jr_03A_44A2:
    ld l, $F0
    jr nc, @+$41

    ld l, $F0
    jr nc, jr_03A_44EE

    ld d, $F0
    jr jr_03A_44E6

jr_03A_44AE:
    ld d, $F0
    jr jr_03A_44E4

jr_03A_44B2:
    ld l, $F0
    jr nc, jr_03A_44EE

jr_03A_44B6:
    ld l, $F0
    jr nc, @+$43

    ld l, $F0
    jr nc, jr_03A_4502

jr_03A_44BE:
    ld d, $F0
    jr jr_03A_44FA

    ld d, $F0
    jr @+$39

jr_03A_44C6:
    ld l, $F0

jr_03A_44C8:
    jr nc, jr_03A_4508

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_03A_4510

    ld d, $F0

jr_03A_44D4:
    jr @+$39

jr_03A_44D6:
    ld d, $F0
    jr jr_03A_450A

    ld l, $F0
    jr nc, @+$39

jr_03A_44DE:
    ld l, $F0
    jr nc, jr_03A_4520

    ld l, $F0

jr_03A_44E4:
    jr nc, @+$41

jr_03A_44E6:
    ld d, $F0
    jr @+$39

    ld d, $F0
    jr jr_03A_451E

jr_03A_44EE:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03A_4534

    ld l, $F0
    jr nc, @+$41

jr_03A_44FA:
    ld d, $F0
    jr @+$39

    ld d, $F0
    jr jr_03A_453A

jr_03A_4502:
    ld l, $F0
    jr nc, jr_03A_4542

    ld l, $F0

jr_03A_4508:
    jr nc, @+$41

jr_03A_450A:
    ld l, $F0
    jr nc, jr_03A_4552

    ld d, $F0

jr_03A_4510:
    jr @+$41

    ld d, $F0
    jr jr_03A_454E

    ld l, $F0
    jr nc, jr_03A_4556

    ld l, $F0
    jr nc, @+$41

jr_03A_451E:
    ld l, $F0

jr_03A_4520:
    jr nc, jr_03A_4566

    ld d, $F0
    jr jr_03A_455E

    ld d, $F0
    jr jr_03A_455A

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03A_4570

    ld l, $F0

jr_03A_4534:
    jr nc, @+$41

    ld d, $F0
    jr @+$39

jr_03A_453A:
    ld d, $F0
    jr jr_03A_456E

    ld l, $F0
    jr nc, @+$39

jr_03A_4542:
    ld l, $F0
    jr nc, jr_03A_4584

    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr @+$39

jr_03A_454E:
    ld d, $F0
    jr jr_03A_458A

jr_03A_4552:
    ld l, $F0
    jr nc, jr_03A_4592

jr_03A_4556:
    ld l, $F0
    jr nc, @+$41

jr_03A_455A:
    ld l, $F0
    jr nc, jr_03A_45A2

jr_03A_455E:
    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03A_459E

jr_03A_4566:
    ld l, $F0
    jr nc, jr_03A_45A6

    ld l, $F0
    jr nc, @+$41

jr_03A_456E:
    ld l, $F0

jr_03A_4570:
    jr nc, jr_03A_45B6

    ld d, $F0
    jr jr_03A_45AE

    ld d, $F0
    jr jr_03A_45AC

    ld l, $F0
    jr nc, jr_03A_45B6

    ld l, $F0
    jr nc, @+$43

    ld l, $F0

jr_03A_4584:
    jr nc, jr_03A_45CA

    ld d, $F0
    jr jr_03A_45C2

jr_03A_458A:
    ld d, $F0
    jr @+$39

    ld l, $F0
    jr nc, jr_03A_45D0

jr_03A_4592:
    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_03A_45D8

    ld d, $F0
    jr @+$39

jr_03A_459E:
    ld d, $F0
    jr jr_03A_45D2

jr_03A_45A2:
    ld l, $F0
    jr nc, @+$39

jr_03A_45A6:
    ld l, $F0
    jr nc, jr_03A_45E8

    ld l, $F0

jr_03A_45AC:
    jr nc, @+$41

jr_03A_45AE:
    ld d, $F0
    jr @+$39

    ld d, $F0
    jr jr_03A_45E6

jr_03A_45B6:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03A_45FC

    ld l, $F0
    jr nc, @+$41

jr_03A_45C2:
    ld d, $F0
    jr @+$39

    ld d, $F0
    jr @+$37

jr_03A_45CA:
    ld l, $F0
    jr nc, jr_03A_460A

    ld l, $F0

jr_03A_45D0:
    jr nc, @+$45

jr_03A_45D2:
    ld l, $F0
    jr nc, jr_03A_461A

    ld d, $F0

jr_03A_45D8:
    jr jr_03A_4616

    ld d, $F0
    jr @+$37

    ld l, $F0
    jr nc, jr_03A_461E

    ld l, $F0
    jr nc, @+$45

jr_03A_45E6:
    ld l, $F0

jr_03A_45E8:
    jr nc, jr_03A_462E

    ld d, $F0
    jr jr_03A_462A

    ld d, $F0
    jr jr_03A_4622

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03A_4638

    ld l, $F0

jr_03A_45FC:
    jr nc, @+$41

    ld d, $F0
    jr @+$39

    ld d, $F0
    jr jr_03A_4636

    ld l, $F0
    jr nc, @+$39

jr_03A_460A:
    ld l, $F0
    jr nc, jr_03A_464A

    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr @+$39

jr_03A_4616:
    ld d, $F0
    jr @+$37

jr_03A_461A:
    ld l, $F0
    jr nc, jr_03A_465A

jr_03A_461E:
    ld l, $F0
    jr nc, @+$45

jr_03A_4622:
    ld l, $F0
    jr nc, jr_03A_466A

    ld d, $F0
    jr jr_03A_4666

jr_03A_462A:
    ld d, $F0
    jr @+$37

jr_03A_462E:
    ld l, $F0
    jr nc, jr_03A_466E

    ld l, $F0
    jr nc, @+$45

jr_03A_4636:
    ld l, $F0

jr_03A_4638:
    jr nc, jr_03A_467E

    ld d, $F0
    jr @+$37

    ld d, $F0
    jr jr_03A_4672

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03A_4688

jr_03A_464A:
    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr @+$39

    ld d, $F0
    jr jr_03A_4686

    ld l, $F0
    jr nc, @+$39

jr_03A_465A:
    ld l, $F0
    jr nc, jr_03A_469A

    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr @+$39

jr_03A_4666:
    ld d, $F0
    jr @+$37

jr_03A_466A:
    ld l, $F0
    jr nc, jr_03A_46AA

jr_03A_466E:
    ld l, $F0
    jr nc, @+$45

jr_03A_4672:
    ld l, $F0
    jr nc, jr_03A_46BA

    ld d, $F0
    jr jr_03A_46B6

    ld d, $F0
    jr @+$37

jr_03A_467E:
    ld l, $F0
    jr nc, jr_03A_46BE

    ld l, $F0
    jr nc, @+$45

jr_03A_4686:
    ld l, $F0

jr_03A_4688:
    jr nc, jr_03A_46CE

    ld d, $F0
    jr @+$37

    ld d, $F0
    jr jr_03A_46CA

    ld l, $F0
    jr nc, @+$41

    ld l, $F0
    jr nc, @+$45

jr_03A_469A:
    ld l, $F0
    jr nc, jr_03A_46E2

    ld d, $F0
    jr jr_03A_46DA

    ld d, $F0
    jr @+$33

    ld l, $F0
    jr nc, jr_03A_46E2

jr_03A_46AA:
    ld l, $F0
    jr nc, @+$43

    ld l, $F0
    jr nc, jr_03A_46EA

    ld d, $F0
    jr @+$33

jr_03A_46B6:
    ld d, $F0
    jr jr_03A_46F2

jr_03A_46BA:
    ld l, $F0
    jr nc, jr_03A_46FA

jr_03A_46BE:
    ld l, $F0
    jr nc, @+$41

    ld l, $F0
    jr nc, jr_03A_470A

    ld d, $F0
    jr jr_03A_4702

jr_03A_46CA:
    ld d, $F0
    jr @+$39

jr_03A_46CE:
    ld l, $F0
    jr nc, jr_03A_4710

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_03A_4718

jr_03A_46DA:
    ld d, $F0
    jr @+$39

    ld d, $F0
    jr jr_03A_4712

jr_03A_46E2:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03A_4728

jr_03A_46EA:
    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr jr_03A_4729

jr_03A_46F2:
    ld d, $F0
    jr jr_03A_4726

    ld l, $F0
    jr nc, @+$39

jr_03A_46FA:
    ld l, $F0
    jr nc, jr_03A_473C

    ld l, $F0
    jr nc, jr_03A_4741

jr_03A_4702:
    ld d, $F0
    jr @+$39

    ld d, $F0
    nop
    rst $38

jr_03A_470A:
    ldh a, [rP1]
    cp h
    ld d, c
    add b
    adc [hl]

jr_03A_4710:
    ldh a, [$90]

jr_03A_4712:
    ld a, $2E
    ldh a, [$30]
    ccf
    ld e, [hl]

jr_03A_4718:
    ldh a, [$60]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, d
    add b
    adc [hl]
    ldh a, [$90]
    ld b, c
    ld l, $F0

jr_03A_4726:
    jr nc, jr_03A_4767

jr_03A_4728:
    ld e, [hl]

jr_03A_4729:
    ldh a, [$60]
    scf
    ld l, $F0
    jr nc, jr_03A_476B

    ld l, $F0
    jr nc, jr_03A_4770

    ld e, [hl]
    ldh a, [$60]
    inc a
    ld l, $F0
    jr nc, jr_03A_477A

jr_03A_473C:
    ld l, $F0
    jr nc, @+$41

    ld e, b

jr_03A_4741:
    ldh a, [$5A]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    add b
    adc [hl]
    ldh a, [$90]
    ld b, e
    ld l, $F0
    jr nc, jr_03A_4796

    ld e, [hl]
    ldh a, [$60]
    ccf
    ld l, $F0
    jr nc, jr_03A_479E

    ld l, $F0
    jr nc, @+$45

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld l, $F0

jr_03A_4767:
    jr nc, jr_03A_47AD

    ld l, $F0

jr_03A_476B:
    jr nc, jr_03A_47B0

    ld e, [hl]
    ldh a, [$60]

jr_03A_4770:
    ld b, c
    ld l, $F0
    jr nc, @+$41

    ld l, $F0
    jr nc, @+$43

    ld e, b

jr_03A_477A:
    ldh a, [$5A]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, c
    ld l, $F0
    jr nc, jr_03A_47C8

    ld l, $F0
    jr nc, jr_03A_47CA

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld l, $F0
    jr nc, jr_03A_47C8

    ld l, $F0
    jr nc, @+$3E

    add b

jr_03A_4796:
    adc [hl]
    ldh a, [$90]
    ld a, $2E
    ldh a, [$30]
    ccf

jr_03A_479E:
    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, d
    add b
    adc [hl]
    ldh a, [$90]
    ld b, c
    ld l, $F0

jr_03A_47AD:
    jr nc, @+$41

    ld e, [hl]

jr_03A_47B0:
    ldh a, [$60]
    scf
    ld l, $F0
    jr nc, jr_03A_47F2

    ld l, $F0
    jr nc, @+$3E

    ld e, [hl]
    ldh a, [$60]
    inc a
    ld l, $F0
    jr nc, @+$40

    ld l, $F0
    jr nc, jr_03A_4806

    ld e, b

jr_03A_47C8:
    ldh a, [$5A]

jr_03A_47CA:
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    add b
    adc [hl]
    ldh a, [$90]
    ld b, e
    ld l, $F0
    jr nc, jr_03A_481D

    ld e, [hl]
    ldh a, [$60]
    ccf
    ld l, $F0
    jr nc, jr_03A_4825

    ld l, $F0
    jr nc, jr_03A_482B

    ld e, b
    ldh a, [$5A]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    ld l, $F0

jr_03A_47F2:
    jr nc, @+$46

    ld l, $F0
    jr nc, jr_03A_483B

    ld l, $F0
    jr nc, jr_03A_483D

    ld l, $F0
    jr nc, @+$41

    ld l, $F0
    jr nc, jr_03A_4842

    ld l, $F0

jr_03A_4806:
    jr nc, jr_03A_4844

    add c
    ld a, [hl]
    pop af
    add b
    ld c, e
    ld l, $F0
    jr nc, @+$4C

    ld l, $F0
    jr nc, @+$4A

    ld l, $F0
    jr nc, @+$48

    ld l, $F0
    jr nc, @+$46

jr_03A_481D:
    ld l, $F0
    jr nc, jr_03A_4867

    ld l, $F0
    jr nc, jr_03A_486D

jr_03A_4825:
    ld l, $F0
    jr nc, jr_03A_486D

    ld l, $F0

jr_03A_482B:
    jr nc, jr_03A_4870

    add b
    adc [hl]
    ldh a, [$90]
    ccf
    ld l, $F0
    jr nc, jr_03A_4872

    ld e, b
    ldh a, [$5A]
    ld a, $05

jr_03A_483B:
    ldh a, [rTMA]

jr_03A_483D:
    ccf
    ld l, $F0
    jr nc, @+$45

jr_03A_4842:
    ld l, $F0

jr_03A_4844:
    jr nc, @+$4D

    ld l, $F0
    jr nc, jr_03A_4894

    ld l, $F0
    jr nc, jr_03A_4896

    ld l, $F0
    jr nc, jr_03A_4898

    ld l, $F0
    jr nc, jr_03A_489A

    ld l, $F0
    jr nc, jr_03A_48A0

    ld l, $F0
    jr nc, jr_03A_48A6

    ld l, $F0
    jr nc, jr_03A_48A6

    ld l, $F0
    jr nc, jr_03A_48A9

    ld e, b

jr_03A_4867:
    ldh a, [$5A]
    ld b, d
    dec b
    ldh a, [rTMA]

jr_03A_486D:
    ld b, e
    ld l, $F0

jr_03A_4870:
    jr nc, @+$46

jr_03A_4872:
    ld l, $F0
    jr nc, @+$45

    ld e, [hl]
    ldh a, [$60]
    ccf
    ld l, $F0
    jr nc, jr_03A_48C1

    ld l, $F0
    jr nc, jr_03A_48CD

    ld l, $F0
    jr nc, jr_03A_48D0

    ld l, $F0
    jr nc, @+$4A

    ld l, $F0
    jr nc, jr_03A_48D4

    ld l, $F0
    jr nc, jr_03A_48D6

    ld l, $F0

jr_03A_4894:
    jr nc, @+$48

jr_03A_4896:
    ld l, $F0

jr_03A_4898:
    jr nc, @+$4A

jr_03A_489A:
    ld l, $F0
    jr nc, @+$46

    ld l, $F0

jr_03A_48A0:
    jr nc, jr_03A_48E5

    add b
    adc [hl]
    ldh a, [$90]

jr_03A_48A6:
    ccf
    ld l, $F0

jr_03A_48A9:
    jr nc, jr_03A_48E7

    ld e, [hl]
    ldh a, [$60]
    inc a
    ld l, $F0
    jr nc, jr_03A_48F1

    ld l, $F0
    jr nc, @+$41

    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld l, $F0
    jr nc, @+$41

    ld l, $F0

jr_03A_48C1:
    jr nc, jr_03A_4901

    ld l, $F0
    jr nc, jr_03A_490A

    ld e, [hl]
    ldh a, [$60]
    dec sp
    ld l, $F0

jr_03A_48CD:
    jr nc, jr_03A_490B

    add c

jr_03A_48D0:
    ld a, [hl]
    ldh a, [rP1]
    rst $38

jr_03A_48D4:
    ldh a, [rP1]

jr_03A_48D6:
    or b
    ld d, b
    nop
    ldh a, [rTMA]
    jr nc, jr_03A_48DD

jr_03A_48DD:
    ldh a, [rTMA]
    ld [hl-], a
    nop
    ldh a, [rTMA]
    ld [hl-], a
    nop

jr_03A_48E5:
    ldh a, [rTMA]

jr_03A_48E7:
    inc sp
    nop
    ldh a, [rTMA]
    inc sp
    nop
    ldh a, [rTMA]
    scf
    nop

jr_03A_48F1:
    ldh a, [rTMA]
    scf
    nop
    ldh a, [rTMA]
    inc a
    nop
    ldh a, [rTMA]
    inc a
    nop
    ldh a, [rTMA]
    ld a, $06

jr_03A_4901:
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0

jr_03A_490A:
    inc c

jr_03A_490B:
    ld c, b
    ld [de], a
    ldh a, [$60]
    jr nc, jr_03A_4917

    ldh a, [$0C]
    ld [hl-], a
    ld b, $F0
    inc c

jr_03A_4917:
    inc sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld [de], a
    ldh a, [$60]
    inc l
    ld b, $F0
    inc c
    ld l, $06
    ldh a, [$0C]
    jr nc, jr_03A_4943

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4943:
    jr c, jr_03A_494B

    ldh a, [$0C]
    ld a, [hl-]
    ld b, $F0
    inc c

jr_03A_494B:
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld [de], a
    ldh a, [$60]
    inc l
    ld b, $F0
    inc c
    ld l, $06
    ldh a, [$0C]
    jr nc, jr_03A_4967

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4967:
    jr c, jr_03A_496F

    ldh a, [$0C]
    ld a, [hl-]
    ld b, $F0
    inc c

jr_03A_496F:
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld [de], a
    ldh a, [$60]
    jr nc, jr_03A_4983

    ldh a, [$0C]
    ld [hl-], a
    ld b, $F0
    inc c

jr_03A_4983:
    inc sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld [de], a
    ldh a, [$60]
    jr nc, jr_03A_49A7

    ldh a, [$0C]
    ld [hl-], a
    ld b, $F0
    inc c

jr_03A_49A7:
    inc sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld [de], a
    ldh a, [$60]
    inc l
    ld b, $F0
    inc c
    ld l, $06
    ldh a, [$0C]
    cpl
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    jr c, jr_03A_49DB

    ldh a, [$0C]
    ld a, [hl-]
    ld b, $F0
    inc c

jr_03A_49DB:
    dec sp
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld [de], a
    ldh a, [$60]
    inc l
    ld b, $F0
    inc c
    ld l, $06
    ldh a, [$0C]
    cpl
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    jr c, jr_03A_49FF

    ldh a, [$0C]
    ld a, [hl-]
    ld b, $F0
    inc c

jr_03A_49FF:
    dec sp
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld [de], a
    ldh a, [$60]
    inc sp
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    ld a, [hl-]
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld [de], a
    ldh a, [$60]
    inc l
    ld b, $F0
    inc c
    ld l, $06
    ldh a, [$0C]
    jr nc, jr_03A_4A3F

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4A3F:
    jr c, jr_03A_4A47

    ldh a, [$0C]
    ld a, [hl-]
    ld b, $F0
    inc c

jr_03A_4A47:
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld [de], a
    ldh a, [$60]
    ld [hl-], a
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    jr c, jr_03A_4A63

    ldh a, [$0C]
    dec sp
    ld b, $F0
    inc c

jr_03A_4A63:
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld [de], a
    ldh a, [$60]
    dec hl
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    dec sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    jr nc, jr_03A_4ABF

    ldh a, [$0C]
    ld [hl-], a
    ld b, $F0
    inc c

jr_03A_4ABF:
    inc sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld [de], a
    ldh a, [$60]
    jr nc, jr_03A_4AE3

    ldh a, [$0C]
    ld [hl-], a
    ld b, $F0
    inc c

jr_03A_4AE3:
    inc sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld [de], a
    ldh a, [$60]
    inc l
    ld b, $F0
    inc c
    ld l, $06
    ldh a, [$0C]
    jr nc, jr_03A_4B0F

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4B0F:
    jr c, jr_03A_4B17

    ldh a, [$0C]
    ld a, [hl-]
    ld b, $F0
    inc c

jr_03A_4B17:
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld [de], a
    ldh a, [$60]
    inc l
    ld b, $F0
    inc c
    ld l, $06
    ldh a, [$0C]
    jr nc, jr_03A_4B33

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4B33:
    jr c, jr_03A_4B3B

    ldh a, [$0C]
    ld a, [hl-]
    ld b, $F0
    inc c

jr_03A_4B3B:
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld [de], a
    ldh a, [$60]
    jr nc, jr_03A_4B4F

    ldh a, [$0C]
    ld [hl-], a
    ld b, $F0
    inc c

jr_03A_4B4F:
    inc sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld [de], a
    ldh a, [$60]
    jr nc, jr_03A_4B73

    ldh a, [$0C]
    ld [hl-], a
    ld b, $F0
    inc c

jr_03A_4B73:
    inc sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld [de], a
    ldh a, [$60]
    inc l
    ld b, $F0
    inc c
    ld l, $06
    ldh a, [$0C]
    cpl
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    jr c, jr_03A_4BA7

    ldh a, [$0C]
    ld a, [hl-]
    ld b, $F0
    inc c

jr_03A_4BA7:
    dec sp
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld [de], a
    ldh a, [$60]
    inc l
    ld b, $F0
    inc c
    ld l, $06
    ldh a, [$0C]
    cpl
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    jr c, jr_03A_4BCB

    ldh a, [$0C]
    ld a, [hl-]
    ld b, $F0
    inc c

jr_03A_4BCB:
    dec sp
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, h
    ld [de], a
    ldh a, [$60]
    ld [hl-], a
    ld b, $F0
    inc c
    dec [hl]
    ld b, $F0
    inc c
    jr c, jr_03A_4BE7

    ldh a, [$0C]
    dec sp
    ld b, $F0
    inc c

jr_03A_4BE7:
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld [de], a
    ldh a, [$60]
    dec hl
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    dec sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    jr nc, jr_03A_4C43

    ldh a, [$0C]
    ld [hl-], a
    ld b, $F0
    inc c

jr_03A_4C43:
    inc sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld [de], a
    ldh a, [$60]
    jr nc, jr_03A_4C67

    ldh a, [$0C]
    ld [hl-], a
    ld b, $F0
    inc c

jr_03A_4C67:
    inc sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld [de], a
    ldh a, [$60]
    add hl, hl
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_03A_4C93

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4C93:
    jr c, jr_03A_4C9B

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03A_4C9B:
    ld b, c
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
    ld b, c
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    jr c, jr_03A_4CBB

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4CBB:
    jr nc, jr_03A_4CC3

    ldh a, [$0C]
    inc l
    ld b, $F0
    inc c

jr_03A_4CC3:
    add hl, hl
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_03A_4CD3

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4CD3:
    jr c, jr_03A_4CDB

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03A_4CDB:
    ld b, c
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
    ld b, c
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    jr c, jr_03A_4CFB

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4CFB:
    jr nc, jr_03A_4D03

    ldh a, [$0C]
    inc l
    ld b, $F0
    inc c

jr_03A_4D03:
    jr nc, jr_03A_4D0B

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4D0B:
    scf
    ld b, $F0
    inc c
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
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    jr nc, jr_03A_4D4B

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4D4B:
    scf
    ld b, $F0
    inc c
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
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_03A_4D93

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4D93:
    jr c, jr_03A_4D9B

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03A_4D9B:
    ld b, c
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
    ld b, c
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    jr c, jr_03A_4DBB

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4DBB:
    jr nc, jr_03A_4DC3

    ldh a, [$0C]
    inc l
    ld b, $F0
    inc c

jr_03A_4DC3:
    add hl, hl
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_03A_4DD3

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4DD3:
    jr c, jr_03A_4DDB

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03A_4DDB:
    ld b, c
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
    ld b, c
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    jr c, jr_03A_4DFB

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4DFB:
    jr nc, jr_03A_4E03

    ldh a, [$0C]
    inc l
    ld b, $F0
    inc c

jr_03A_4E03:
    jr nc, jr_03A_4E0B

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4E0B:
    scf
    ld b, $F0
    inc c
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
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    jr nc, jr_03A_4E4B

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4E4B:
    scf
    ld b, $F0
    inc c
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
    ld c, e
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc sp
    ld b, $F0
    inc c
    add hl, hl
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_03A_4E93

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4E93:
    jr c, jr_03A_4E9B

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03A_4E9B:
    ld b, c
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
    ld b, c
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    jr c, jr_03A_4EBB

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4EBB:
    jr nc, jr_03A_4EC3

    ldh a, [$0C]
    inc l
    ld b, $F0
    inc c

jr_03A_4EC3:
    add hl, hl
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_03A_4ED3

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4ED3:
    jr c, jr_03A_4EDB

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03A_4EDB:
    ld b, c
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
    ld b, c
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    jr c, jr_03A_4EFB

    ldh a, [$0C]
    dec [hl]
    ld b, $F0
    inc c

jr_03A_4EFB:
    jr nc, jr_03A_4F03

    ldh a, [$0C]
    add hl, hl
    ld b, $F0
    inc c

jr_03A_4F03:
    inc l
    ld b, $F0
    inc c
    jr nc, jr_03A_4F0F

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4F0F:
    jr c, jr_03A_4F17

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03A_4F17:
    ccf
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
    ld c, b
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    jr c, jr_03A_4F3F

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4F3F:
    jr nc, jr_03A_4F47

    ldh a, [$0C]
    ld sp, $F006
    inc c

jr_03A_4F47:
    dec [hl]
    ld b, $F0
    inc c
    jr c, jr_03A_4F53

    ldh a, [$0C]
    dec a
    ld b, $F0
    inc c

jr_03A_4F53:
    ld b, c
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld sp, $F006
    inc c
    jr c, jr_03A_4F6F

    ldh a, [$0C]
    dec a
    ld b, $F0
    inc c

jr_03A_4F6F:
    ld b, c
    ld b, $F0
    inc c
    ld sp, $F006
    inc c
    jr c, jr_03A_4F7F

    ldh a, [$0C]
    dec a
    ld b, $F0
    inc c

jr_03A_4F7F:
    ld b, c
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_03A_4F8F

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4F8F:
    jr c, jr_03A_4F97

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03A_4F97:
    ccf
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
    ld c, b
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    jr c, jr_03A_4FBF

    ldh a, [$0C]
    inc sp
    ld b, $F0
    inc c

jr_03A_4FBF:
    jr nc, jr_03A_4FC7

    ldh a, [$0C]
    dec hl
    ld b, $F0
    inc c

jr_03A_4FC7:
    cpl
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    dec sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    ld [hl-], a
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    jr nc, jr_03A_500B

    ldh a, [$0C]
    ld [hl-], a
    ld b, $F0
    inc c

jr_03A_500B:
    inc sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld [de], a
    ldh a, [$60]
    jr nc, jr_03A_502F

    ldh a, [$0C]
    ld [hl-], a
    ld b, $F0
    inc c

jr_03A_502F:
    inc sp
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ccf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld [de], a
    ldh a, [rP1]
    rst $38
    ld a, [hl+]
    ld l, $2B
    add hl, hl
    ld a, [hl+]
    inc l
    dec hl
    add hl, hl
    nop
    nop
    jr z, jr_03A_5087

    nop
    dec l
    jr nc, jr_03A_505C

jr_03A_505C:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03A_5087:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp e
    nop
    ld c, $00
    jr jr_03A_50DB

jr_03A_50DB:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    db $10
    add b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    db $10
    add b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $8010
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    add b
    cp $00
    nop
    nop
    nop
    nop
    ld a, $05
    jp nz, $1209

    inc c
    ld c, [hl]
    ldh a, [rP1]
    xor h
    ld b, $06
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
    ld b, $F0
    nop
    rst $38
    ldh a, [rP1]
    or b
    daa
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_56AE

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_56AE:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_56D6

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_56D6:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_56FE

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_56FE:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_5726

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_5726:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_574E

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_574E:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_5776

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_5776:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_579E

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_579E:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_57C6

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_57C6:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_57EE

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_57EE:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_5816

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_5816:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_583E

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_583E:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_5866

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_5866:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_588E

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_588E:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_58B6

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_58B6:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_58DE

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_58DE:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_5906

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_5906:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_592E

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_592E:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_5956

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_5956:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_597E

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_597E:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_59A6

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_59A6:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    scf
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_03A_59CE

    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [rNR23]
    dec [hl]

jr_03A_59CE:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    jr nc, jr_03A_59E2

    ldh a, [$0C]
    ld l, $12
    ldh a, [rNR23]
    jr nc, jr_03A_59F1

    ldh a, [rP1]
    rst $38

jr_03A_59E2:
    pop af
    ld a, a
    jp $0655


    ldh a, [$0C]
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c

jr_03A_59F1:
    ld b, e
    inc c
    ldh a, [rHDMA4]
    inc a
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld b, c
    inc c
    ldh a, [rHDMA4]
    inc a
    inc c
    ldh a, [rNR23]
    ld b, c
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, e
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    jr @+$43

    inc c
    ldh a, [rNR23]
    ld c, b
    ld b, $F0
    inc c
    ld b, c
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld b, e
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    jr @+$43

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    jr jr_03A_5AB6

    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    inc a
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, c
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    jr @+$48

    inc c
    ldh a, [rNR23]
    ld b, [hl]
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld [hl], $06
    ldh a, [$0C]
    ld b, d
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    jr jr_03A_5AE9

    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, c
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    jr jr_03A_5AFC

jr_03A_5AB6:
    inc c
    ldh a, [rNR23]
    ld b, [hl]
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld [hl], $06
    ldh a, [$0C]
    ld b, d
    ld b, $F0
    inc c
    inc a
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, c
    inc c
    ldh a, [$0C]
    ccf
    inc c
    ldh a, [rNR23]
    ld b, [hl]
    inc c
    ldh a, [rNR23]
    ld b, [hl]
    ld b, $F0
    inc c

jr_03A_5AE9:
    scf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld [hl], $06
    ldh a, [$0C]
    ld b, d
    ld b, $F0
    inc c
    inc a
    ld b, $F0

jr_03A_5AFC:
    jr jr_03A_5B41

    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, c
    ld b, $F0
    inc c
    ccf
    inc c
    ldh a, [rNR23]
    ld b, [hl]
    inc c
    ldh a, [rNR23]
    ld b, [hl]
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld [hl], $06
    ldh a, [$0C]
    ld b, d
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, a
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c

jr_03A_5B41:
    ld c, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, d
    inc c
    ldh a, [rNR23]
    dec a
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    dec a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, a
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, [hl]
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, d
    inc c
    ldh a, [rNR23]
    dec a
    ld b, $F0
    inc c
    scf
    ld b, $F0
    inc c
    dec a
    ld b, $F0
    inc c
    inc a
    inc c
    ldh a, [$0C]
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, a
    ld b, $F0
    inc c
    ld c, b
    inc c
    ldh a, [$0C]
    ld b, e
    ld b, $F0
    inc c
    ld b, c
    inc c
    ldh a, [$0C]
    ld c, [hl]
    inc c
    ldh a, [rNR23]
    ld c, [hl]
    inc c
    ldh a, [$0C]
    ld b, e
    inc c
    ldh a, [$0C]
    ld d, b
    ld b, $F0
    inc c
    ld d, b
    inc c
    ldh a, [rNR23]
    inc a
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, a
    ld b, $F0
    inc c
    ld c, b
    inc c
    ldh a, [$0C]
    ld b, e
    ld b, $F0
    inc c
    ld b, c
    ld b, $F0
    inc c
    ld c, [hl]
    inc c
    ldh a, [rNR23]
    ld c, [hl]
    inc c
    ldh a, [$0C]
    ld b, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, b
    inc c
    ldh a, [rNR23]
    ld d, h
    ld b, $F0
    inc h
    ld d, h
    ld b, $F0
    inc h
    ld d, h
    ld b, $F0
    jr nc, jr_03A_5C5E

    ld b, $F0
    jr jr_03A_5C62

    ld b, $F0
    jr jr_03A_5C66

    ld b, $F0
    jr jr_03A_5C6A

    inc b
    ldh a, [rTMA]
    ld d, e
    inc b
    ldh a, [rTMA]
    ld d, d
    inc b
    ldh a, [rTMA]
    ld d, c
    inc b
    ldh a, [rTMA]
    ld d, d
    inc b
    ldh a, [rTMA]
    ld d, c
    inc b
    ldh a, [rTMA]
    ld d, b
    inc b
    ldh a, [rTMA]
    ld c, a
    inc b
    ldh a, [rTMA]
    ld d, b
    inc b
    ldh a, [rTMA]
    ld c, a
    inc b
    ldh a, [rTMA]
    ld c, [hl]
    inc b
    ldh a, [rTMA]
    ld c, l
    inc b
    ldh a, [rTMA]
    ld c, h
    inc b
    ldh a, [rTMA]
    ld c, e
    inc b
    ldh a, [rTMA]
    ld c, d
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, b
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, [hl]

jr_03A_5C5E:
    inc b
    ldh a, [rTMA]
    ld b, l

jr_03A_5C62:
    inc b
    ldh a, [rTMA]
    ld b, h

jr_03A_5C66:
    inc b
    ldh a, [rTMA]
    ld b, e

jr_03A_5C6A:
    inc b
    ldh a, [rTMA]
    ld b, d
    inc b
    ldh a, [rTMA]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, b
    inc b
    ldh a, [rTMA]
    ccf
    inc b
    ldh a, [rTMA]
    ld a, $04
    ldh a, [rTMA]
    dec a
    inc b
    ldh a, [rTMA]
    inc a
    inc b
    ldh a, [rTMA]
    dec sp
    inc b
    ldh a, [rTMA]
    ld a, [hl-]
    inc b
    ldh a, [rTMA]
    add hl, sp
    inc b
    ldh a, [rTMA]
    scf
    ld b, $F0
    inc h
    scf
    ld b, $F0
    inc h
    scf
    ld b, $F0
    jr nc, jr_03A_5CD9

    ld b, $F0
    jr jr_03A_5CE0

    ld a, [bc]
    ldh a, [rNR23]
    add hl, sp
    ld b, $F0
    jr jr_03A_5CE5

    ld b, $F0
    inc h
    scf
    ld b, $F0
    inc h
    scf
    ld b, $F0
    jr nc, @+$39

    ld b, $F0
    jr jr_03A_5CF8

    ld a, [bc]
    ldh a, [rNR23]
    add hl, sp
    ld b, $F0
    jr jr_03A_5CFD

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
    sbc h
    scf
    ld b, $F0
    inc c

jr_03A_5CD9:
    scf
    ld b, $F0
    inc c
    scf
    ld b, $F0

jr_03A_5CE0:
    inc c
    scf
    ld b, $F0
    sbc h

jr_03A_5CE5:
    scf
    ld b, $F0
    inc h
    scf
    ld b, $F0
    inc h
    scf
    ld b, $F0
    jr jr_03A_5D29

    ld b, $F0
    jr nc, jr_03A_5D2D

    ld b, $F0

jr_03A_5CF8:
    jr nc, jr_03A_5D31

    ld b, $F0
    sub b

jr_03A_5CFD:
    ld c, e
    inc b
    ldh a, [rTMA]
    ld c, d
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, b
    inc b
    ldh a, [rTMA]
    ld b, [hl]
    inc b
    ldh a, [rTMA]
    ld b, l
    inc b
    ldh a, [rTMA]
    ld b, h
    inc b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rP1]
    rst $38
    add c
    add l
    jp $0650


    add b
    inc c
    ld b, e
    ld b, $80
    inc c

jr_03A_5D29:
    ld b, e
    ld b, $80
    inc c

jr_03A_5D2D:
    ld b, e
    ld b, $80
    ld d, h

jr_03A_5D31:
    inc a
    inc c
    add b
    jr @+$45

    inc c
    add b
    jr jr_03A_5D82

    inc c
    add b
    jr @+$43

    ld b, $80
    inc c
    ld b, c
    ld b, $80
    inc c
    ld b, c
    ld b, $80
    inc c
    ld b, c
    ld b, $80
    ld d, h
    inc a
    inc c
    add b
    jr jr_03A_5D93

    ld a, [bc]
    add b
    jr jr_03A_5D9E

    ld a, [bc]
    add b
    jr @+$45

    ld a, [bc]
    add b
    jr jr_03A_5DA1

    inc c
    add b
    jr jr_03A_5DAA

    inc c
    add b
    jr @+$45

    ld b, $80
    inc c
    ld b, c
    ld a, [bc]
    add b
    jr @+$43

    inc c
    add b
    jr jr_03A_5DBA

    ld b, $80
    inc c
    ld b, c
    inc c
    add b
    jr jr_03A_5DC2

    ld a, [bc]
    add b
    inc c
    ld b, c
    ld b, $80
    inc c
    ld b, e

jr_03A_5D82:
    ld b, $80
    inc c
    ld b, e
    ld b, $80
    inc c
    ld b, e
    ld b, $80
    inc c
    ld c, b
    ld a, [bc]
    add b
    jr jr_03A_5DD5

    ld a, [bc]

jr_03A_5D93:
    add b
    jr jr_03A_5DD9

    ld b, $80
    inc c
    ld b, c
    ld b, $80
    jr @+$43

jr_03A_5D9E:
    ld b, $80
    inc c

jr_03A_5DA1:
    ld c, b
    ld b, $80
    inc c
    ld b, c
    ld b, $80
    jr jr_03A_5DF2

jr_03A_5DAA:
    ld b, $80
    inc c
    ld b, c
    ld b, $80
    inc c
    inc a
    ld a, [bc]
    add b
    jr jr_03A_5DF9

    inc c
    add b
    jr @+$4A

jr_03A_5DBA:
    inc c
    add b
    jr @+$43

    ld b, $80
    inc c
    ccf

jr_03A_5DC2:
    ld a, [bc]
    add b
    jr jr_03A_5E0C

    inc c
    add b
    jr jr_03A_5E10

    ld b, $80
    inc c
    scf
    ld b, $80
    inc c
    ld b, e
    ld b, $80
    inc c

jr_03A_5DD5:
    ld [hl], $06
    add b
    inc c

jr_03A_5DD9:
    ld b, d
    ld b, $80
    inc c
    inc a
    ld b, $80
    jr jr_03A_5E25

    inc c
    add b
    jr @+$4A

    inc c
    add b
    jr @+$43

    ld b, $80
    inc c
    ccf
    ld a, [bc]
    add b
    jr jr_03A_5E38

jr_03A_5DF2:
    inc c
    add b
    jr jr_03A_5E3C

    ld b, $80
    inc c

jr_03A_5DF9:
    scf
    ld b, $80
    inc c
    ld b, e
    ld b, $80
    inc c
    ld [hl], $06
    add b
    inc c
    ld b, d
    ld b, $80
    inc c
    inc a
    ld a, [bc]
    add b

jr_03A_5E0C:
    jr jr_03A_5E51

    inc c
    add b

jr_03A_5E10:
    jr @+$4A

    inc c
    add b
    jr @+$43

    ld b, $80
    inc c
    ccf
    ld a, [bc]
    add b
    jr jr_03A_5E64

    inc c
    add b
    jr jr_03A_5E68

    ld b, $80
    inc c

jr_03A_5E25:
    scf
    ld b, $80
    inc c
    ld b, e
    ld b, $80
    inc c
    ld [hl], $06
    add b
    inc c
    ld b, d
    ld b, $80
    inc c
    inc a
    ld b, $80

jr_03A_5E38:
    jr jr_03A_5E7D

    inc c
    add b

jr_03A_5E3C:
    jr jr_03A_5E86

    inc c
    add b
    jr @+$43

    ld b, $80
    inc c
    ccf
    ld a, [bc]
    add b
    jr jr_03A_5E90

    inc c
    add b
    jr jr_03A_5E94

    ld b, $80
    inc c

jr_03A_5E51:
    scf
    ld b, $80
    inc c
    ld b, e
    ld b, $80
    inc c
    ld [hl], $06
    add b
    inc c
    ld b, d
    ld b, $80
    inc c
    inc a
    ld b, $80

jr_03A_5E64:
    inc c
    ld b, e
    ld b, $80

jr_03A_5E68:
    inc c
    ld c, b
    ld b, $80
    inc c
    ld c, a
    inc c
    add b
    jr jr_03A_5EC1

    ld b, $80
    inc c
    ld c, b
    ld b, $80
    inc c
    ld b, e
    ld b, $80
    inc c

jr_03A_5E7D:
    ld c, [hl]
    ld b, $80
    inc c
    ld c, e
    ld b, $80
    inc c
    ld c, b

jr_03A_5E86:
    ld b, $80
    inc c
    ld b, d
    inc c
    add b
    jr @+$3F

    ld b, $80

jr_03A_5E90:
    inc c
    scf
    ld b, $80

jr_03A_5E94:
    inc c
    dec a
    ld b, $80
    inc c
    inc a
    ld b, $80
    inc c
    ld b, e
    ld b, $80
    inc c
    ld c, b
    ld b, $80
    inc c
    ld c, a
    inc c
    add b
    jr jr_03A_5EF9

    ld b, $80
    inc c
    ld c, b
    ld b, $80
    inc c
    ld b, e
    ld b, $80
    inc c
    ld c, [hl]
    ld b, $80
    inc c
    ld c, e
    ld b, $80
    inc c
    ld c, b
    ld b, $80
    inc c

jr_03A_5EC1:
    ld b, d
    inc c
    add b
    jr jr_03A_5F03

    ld b, $80
    inc c
    scf
    ld b, $80
    inc c
    dec a
    ld b, $80
    inc c
    inc a
    inc c
    add b
    inc c
    ld b, e
    ld b, $80
    inc c
    ld c, b
    ld b, $80
    inc c
    ld c, a
    rrca
    add b
    jr jr_03A_5F31

    inc c
    add b
    inc c
    ld c, b
    inc c
    add b
    inc c
    ld b, e
    ld b, $80
    inc c
    ld b, c
    ld a, [bc]
    add b
    inc c
    ld c, [hl]
    inc c
    add b
    jr jr_03A_5F44

    inc c
    add b
    inc c

jr_03A_5EF9:
    ld b, e
    ld a, [bc]
    add b
    inc c
    ld d, b
    ld b, $80
    inc c
    ld d, b
    inc c

jr_03A_5F03:
    add b
    jr jr_03A_5F42

    ld a, [bc]
    add b
    inc c
    ld b, e
    ld b, $80
    inc c
    ld c, b
    ld b, $80
    inc c
    ld c, a
    inc c
    add b
    jr @+$51

    ld b, $80
    inc c
    ld c, b
    inc c
    add b
    inc c
    ld b, e
    ld b, $80
    inc c
    ld b, c
    ld b, $80
    inc c
    ld c, [hl]
    inc c
    add b
    jr jr_03A_5F78

    inc c
    add b
    inc c
    ld b, e
    ld b, $80
    inc c

jr_03A_5F31:
    ld d, b
    ld b, $80
    inc c
    ld d, b
    inc c
    add b
    jr jr_03A_5F8E

    ld b, $80
    inc h
    ld d, h
    ld b, $80
    inc h
    ld d, h

jr_03A_5F42:
    ld b, $80

jr_03A_5F44:
    jr nc, jr_03A_5F9A

    ld b, $80
    jr jr_03A_5F9E

    ld b, $80
    jr jr_03A_5FA2

    ld b, $80
    ret c

    scf
    ld b, $80
    inc h
    scf
    ld b, $80
    inc h
    scf
    ld b, $80
    jr nc, jr_03A_5F95

    ld b, $80
    jr jr_03A_5F9C

    inc c
    add b
    jr @+$3B

    ld a, [bc]
    add b
    jr jr_03A_5FA1

    ld b, $80
    inc h
    scf
    ld b, $80
    inc h
    scf
    ld b, $80
    jr nc, @+$39

    ld b, $80

jr_03A_5F78:
    jr jr_03A_5FB4

    ld a, [bc]
    add b
    jr @+$3B

    ld b, $80
    jr jr_03A_5FB9

    ld b, $80
    inc c
    scf
    ld b, $80
    inc c
    scf
    ld b, $80
    inc c
    scf

jr_03A_5F8E:
    ld b, $80
    sbc h
    scf
    ld b, $80
    inc c

jr_03A_5F95:
    scf
    ld b, $80
    inc c
    scf

jr_03A_5F9A:
    ld b, $80

jr_03A_5F9C:
    inc c
    scf

jr_03A_5F9E:
    ld b, $80
    sbc h

jr_03A_5FA1:
    scf

jr_03A_5FA2:
    ld b, $80
    inc h
    scf
    ld b, $80
    inc h
    scf
    ld b, $80
    jr jr_03A_5FE5

    ld b, $80
    jr nc, jr_03A_5FE9

    ld b, $80

jr_03A_5FB4:
    jr nc, jr_03A_5FED

    ld b, $F0
    nop

jr_03A_5FB9:
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
    jr z, jr_03A_5FF5

    nop
    dec l
    jr nc, jr_03A_5FCA

jr_03A_5FCA:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03A_5FE5:
    dec hl
    nop
    nop
    nop

jr_03A_5FE9:
    nop
    nop
    nop
    nop

jr_03A_5FED:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03A_5FF5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc h
    nop
    ld c, $00
    jr jr_03A_6049

jr_03A_6049:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    add hl, de
    add b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    add hl, de
    add b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $8019
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    add b
    cp $00
    nop
    nop
    nop
    nop
    ld a, $06
    ld b, d
    ld [$0A46], sp
    sbc d
    ldh a, [rP1]
    xor h
    inc bc
    ld b, $F0
    jr jr_03A_60B0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03A_60BC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03A_60C8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03A_60D4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_60B0:
    ld b, $F0
    jr jr_03A_60E0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_60BC:
    ld b, $F0
    jr jr_03A_60EC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_60C8:
    ld b, $F0
    jr jr_03A_60F8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_60D4:
    ld b, $F0
    jr jr_03A_6104

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_60E0:
    ld b, $F0
    jr jr_03A_6110

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_60EC:
    ld b, $F0
    jr jr_03A_611C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_60F8:
    ld b, $F0
    jr jr_03A_6128

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6104:
    ld b, $F0
    jr jr_03A_6134

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6110:
    ld b, $F0
    jr jr_03A_6140

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_611C:
    ld b, $F0
    jr jr_03A_614C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6128:
    ld b, $F0
    jr jr_03A_6158

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6134:
    ld b, $F0
    ld a, b
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6140:
    ld b, $F0
    jr jr_03A_6170

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_614C:
    ld b, $F0
    jr jr_03A_617C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6158:
    ld b, $F0
    jr jr_03A_6188

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03A_6194

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6170:
    ld b, $F0
    jr jr_03A_61A0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_617C:
    ld b, $F0
    jr jr_03A_61AC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6188:
    ld b, $F0
    jr jr_03A_61B8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6194:
    ld b, $F0
    jr jr_03A_61C4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_61A0:
    ld b, $F0
    jr jr_03A_61D0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_61AC:
    ld b, $F0
    jr jr_03A_61DC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_61B8:
    ld b, $F0
    jr jr_03A_61E8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_61C4:
    ld b, $F0
    jr jr_03A_61F4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_61D0:
    ld b, $F0
    jr jr_03A_6200

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_61DC:
    ld b, $F0
    jr jr_03A_620C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_61E8:
    ld b, $F0
    jr jr_03A_6218

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_61F4:
    ld b, $F0
    ld a, b
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6200:
    ld b, $F0
    jr jr_03A_6230

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_620C:
    ld b, $F0
    jr jr_03A_623C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6218:
    ld b, $F0
    jr jr_03A_6248

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03A_6254

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6230:
    ld b, $F0
    jr jr_03A_6260

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_623C:
    ld b, $F0
    jr jr_03A_626C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6248:
    ld b, $F0
    jr jr_03A_6278

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6254:
    ld b, $F0
    jr jr_03A_6284

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6260:
    ld b, $F0
    jr jr_03A_6290

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_626C:
    ld b, $F0
    jr jr_03A_629C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6278:
    ld b, $F0
    jr jr_03A_62A8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6284:
    ld b, $F0
    jr jr_03A_62B4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6290:
    ld b, $F0
    jr jr_03A_62C0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_629C:
    ld b, $F0
    jr jr_03A_62CC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_62A8:
    ld b, $F0
    jr jr_03A_62D8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_62B4:
    ld b, $F0
    jr jr_03A_62E4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_62C0:
    ld b, $F0
    jr jr_03A_62F0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_62CC:
    ld b, $F0
    jr jr_03A_62FC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_62D8:
    ld b, $F0
    jr jr_03A_6308

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_62E4:
    ld b, $F0
    jr jr_03A_6314

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_62F0:
    ld b, $F0
    jr jr_03A_6320

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_62FC:
    ld b, $F0
    jr jr_03A_632C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6308:
    ld b, $F0
    jr jr_03A_6338

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6314:
    ld b, $F0
    jr jr_03A_6344

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6320:
    ld b, $F0
    jr jr_03A_6350

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_632C:
    ld b, $F0
    jr jr_03A_635C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6338:
    ld b, $F0
    jr jr_03A_6368

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6344:
    ld b, $F0
    jr jr_03A_6374

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6350:
    ld b, $F0
    jr jr_03A_6380

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_635C:
    ld b, $F0
    jr jr_03A_638C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6368:
    ld b, $F0
    jr jr_03A_6398

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6374:
    ld b, $F0
    jr jr_03A_63A4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6380:
    ld b, $F0
    jr jr_03A_63B0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_638C:
    ld b, $F0
    jr jr_03A_63BC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6398:
    ld b, $F0
    jr jr_03A_63C8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_63A4:
    ld b, $F0
    jr jr_03A_63D4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_63B0:
    ld b, $F0
    jr jr_03A_63E0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_63BC:
    ld b, $F0
    jr jr_03A_63EC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_63C8:
    ld b, $F0
    jr jr_03A_63F8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_63D4:
    ld b, $F0
    jr jr_03A_6404

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_63E0:
    ld b, $F0
    jr jr_03A_6410

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_63EC:
    ld b, $F0
    jr jr_03A_641C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_63F8:
    ld b, $F0
    jr jr_03A_6428

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6404:
    ld b, $F0
    jr jr_03A_6434

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6410:
    ld b, $F0
    jr jr_03A_6440

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_641C:
    ld b, $F0
    jr jr_03A_644C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6428:
    ld b, $F0
    jr jr_03A_6458

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6434:
    ld b, $F0
    ld a, b
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6440:
    ld b, $F0
    jr jr_03A_6470

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_644C:
    ld b, $F0
    jr jr_03A_647C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6458:
    ld b, $F0
    jr jr_03A_6488

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03A_6494

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6470:
    ld b, $F0
    jr jr_03A_64A0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_647C:
    ld b, $F0
    jr jr_03A_64AC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6488:
    ld b, $F0
    jr jr_03A_64B8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6494:
    ld b, $F0
    jr jr_03A_64C4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_64A0:
    ld b, $F0
    jr jr_03A_64D0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_64AC:
    ld b, $F0
    jr jr_03A_64DC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_64B8:
    ld b, $F0
    jr jr_03A_64E8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_64C4:
    ld b, $F0
    jr jr_03A_64F4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_64D0:
    ld b, $F0
    jr jr_03A_6500

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_64DC:
    ld b, $F0
    jr jr_03A_650C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_64E8:
    ld b, $F0
    jr jr_03A_6518

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_64F4:
    ld b, $F0
    ld a, b
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6500:
    ld b, $F0
    jr jr_03A_6530

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_650C:
    ld b, $F0
    jr jr_03A_653C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6518:
    ld b, $F0
    jr jr_03A_6548

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03A_6554

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6530:
    ld b, $F0
    jr jr_03A_6560

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_653C:
    ld b, $F0
    jr jr_03A_656C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6548:
    ld b, $F0
    jr jr_03A_6578

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6554:
    ld b, $F0
    jr jr_03A_6584

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6560:
    ld b, $F0
    jr jr_03A_6590

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_656C:
    ld b, $F0
    jr jr_03A_659C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6578:
    ld b, $F0
    jr jr_03A_65A8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6584:
    ld b, $F0
    jr jr_03A_65B4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6590:
    ld b, $F0
    jr jr_03A_65C0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_659C:
    ld b, $F0
    jr jr_03A_65CC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_65A8:
    ld b, $F0
    jr jr_03A_65D8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_65B4:
    ld b, $F0
    jr jr_03A_65E4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_65C0:
    ld b, $F0
    jr jr_03A_65F0

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_65CC:
    ld b, $F0
    jr jr_03A_65FC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_65D8:
    ld b, $F0
    jr jr_03A_6608

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_65E4:
    ld b, $F0
    jr jr_03A_6614

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_65F0:
    ld b, $F0
    jr jr_03A_6620

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_65FC:
    ld b, $F0
    jr jr_03A_662C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6608:
    ld b, $F0
    jr jr_03A_6638

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6614:
    ld b, $F0
    jr jr_03A_6644

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6620:
    ld b, $F0
    jr jr_03A_6650

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_662C:
    ld b, $F0
    jr jr_03A_665C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6638:
    ld b, $F0
    jr jr_03A_6668

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6644:
    ld b, $F0
    jr jr_03A_6674

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6650:
    ld b, $F0
    jr jr_03A_6680

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_665C:
    ld b, $F0
    jr jr_03A_668C

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6668:
    ld b, $F0
    jr jr_03A_6698

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03A_6674:
    ld b, $F0
    jr jr_03A_66A4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    nop
    rst $38

jr_03A_6680:
    ldh a, [rP1]
    or l
    daa
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, jr_03A_66BC

jr_03A_668C:
    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, jr_03A_66C8

jr_03A_6698:
    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, jr_03A_66D4

jr_03A_66A4:
    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, jr_03A_66E0

    dec bc
    ldh a, [$C0]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, @+$32

jr_03A_66BC:
    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, jr_03A_66F8

jr_03A_66C8:
    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, @+$32

jr_03A_66D4:
    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, jr_03A_6710

jr_03A_66E0:
    dec bc
    ldh a, [$C0]
    dec [hl]
    ld d, $F0
    inc h
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, jr_03A_66F8

    ldh a, [rNR23]
    dec [hl]
    ld l, $F0
    jr nc, jr_03A_6727

    ld l, $F0
    jr nc, @+$36

jr_03A_66F8:
    ld d, $F0
    jr jr_03A_6731

    ld d, $F0
    inc h
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, jr_03A_6710

    ldh a, [rNR23]
    dec [hl]
    ld e, [hl]
    ldh a, [$78]
    dec [hl]
    ld d, $F0
    inc h
    dec [hl]

jr_03A_6710:
    dec bc
    ldh a, [$0C]
    jr c, @+$08

    ldh a, [rNR23]
    dec [hl]
    ld l, $F0
    jr nc, jr_03A_674F

    ld l, $F0
    jr nc, @+$36

    ld d, $F0
    jr jr_03A_6759

    ld d, $F0
    inc h

jr_03A_6727:
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, jr_03A_6733

    ldh a, [rNR23]
    dec [hl]
    ld e, [hl]

jr_03A_6731:
    ldh a, [$78]

jr_03A_6733:
    dec [hl]
    ld d, $F0
    inc h
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, jr_03A_6748

    ldh a, [rNR23]
    dec [hl]
    ld l, $F0
    jr nc, jr_03A_6777

    ld l, $F0
    jr nc, @+$36

jr_03A_6748:
    ld d, $F0
    jr jr_03A_6781

    ld d, $F0
    inc h

jr_03A_674F:
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, jr_03A_6760

    ldh a, [rNR23]
    dec [hl]
    ld e, [hl]

jr_03A_6759:
    ldh a, [$78]
    dec [hl]
    ld d, $F0
    inc h
    dec [hl]

jr_03A_6760:
    dec bc
    ldh a, [$0C]
    jr c, @+$08

    ldh a, [rNR23]
    dec [hl]
    ld l, $F0
    jr nc, jr_03A_679F

    ld l, $F0
    jr nc, jr_03A_67A4

    ld d, $F0
    jr jr_03A_67A9

    ld d, $F0
    inc h

jr_03A_6777:
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, @+$0D

    ldh a, [rNR23]
    dec [hl]
    ld e, [hl]

jr_03A_6781:
    ldh a, [$78]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, jr_03A_67BC

    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, jr_03A_67C8

    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc
    ldh a, [$30]

jr_03A_679F:
    ld sp, $F00B
    jr nc, jr_03A_67D4

jr_03A_67A4:
    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc

jr_03A_67A9:
    ldh a, [$30]
    ld sp, $F00B
    jr nc, jr_03A_67E0

    dec bc
    ldh a, [$C0]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, @+$32

jr_03A_67BC:
    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, jr_03A_67F8

jr_03A_67C8:
    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, @+$32

jr_03A_67D4:
    dec bc
    ldh a, [$60]
    dec [hl]
    dec bc
    ldh a, [$30]
    ld sp, $F00B
    jr nc, jr_03A_6810

jr_03A_67E0:
    dec bc
    ldh a, [$C0]
    dec [hl]
    ld d, $F0
    inc h
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, jr_03A_67F8

    ldh a, [rNR23]
    dec [hl]
    ld l, $F0
    jr nc, jr_03A_6827

    ld l, $F0
    jr nc, @+$36

jr_03A_67F8:
    ld d, $F0
    jr jr_03A_6831

    ld d, $F0
    inc h
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, jr_03A_6810

    ldh a, [rNR23]
    dec [hl]
    ld e, [hl]
    ldh a, [$78]
    dec [hl]
    ld d, $F0
    inc h
    dec [hl]

jr_03A_6810:
    dec bc
    ldh a, [$0C]
    jr c, @+$08

    ldh a, [rNR23]
    dec [hl]
    ld l, $F0
    jr nc, jr_03A_684F

    ld l, $F0
    jr nc, @+$36

    ld d, $F0
    jr jr_03A_6859

    ld d, $F0
    inc h

jr_03A_6827:
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, jr_03A_6833

    ldh a, [rNR23]
    dec [hl]
    ld e, [hl]

jr_03A_6831:
    ldh a, [$78]

jr_03A_6833:
    dec [hl]
    ld d, $F0
    inc h
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, jr_03A_6848

    ldh a, [rNR23]
    dec [hl]
    ld l, $F0
    jr nc, jr_03A_6877

    ld l, $F0
    jr nc, @+$36

jr_03A_6848:
    ld d, $F0
    jr jr_03A_6881

    ld d, $F0
    inc h

jr_03A_684F:
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, jr_03A_6860

    ldh a, [rNR23]
    dec [hl]
    ld e, [hl]

jr_03A_6859:
    ldh a, [$78]
    dec [hl]
    ld d, $F0
    inc h
    dec [hl]

jr_03A_6860:
    dec bc
    ldh a, [$0C]
    jr c, @+$08

    ldh a, [rNR23]
    dec [hl]
    ld l, $F0
    jr nc, @+$35

    ld l, $F0
    jr nc, jr_03A_68A4

    ld d, $F0
    jr @+$37

    ld d, $F0
    inc h

jr_03A_6877:
    dec [hl]
    dec bc
    ldh a, [$0C]
    jr c, jr_03A_6888

    ldh a, [rNR23]
    dec [hl]
    ld e, [hl]

jr_03A_6881:
    ldh a, [rP1]
    rst $38
    ldh a, [rNR50]
    pop bc
    ld d, c

jr_03A_6888:
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_68D3

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_68E3

    ld b, $F0
    inc c
    ld b, e

jr_03A_68A4:
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_68F3

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_6903

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    or h
    ld b, c
    ld b, $F0
    jr nc, jr_03A_690D

    ld b, $F0
    jr nc, jr_03A_6913

    ld b, $F0
    inc c

jr_03A_68D3:
    ld b, e
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_6923

    ld b, $F0
    inc c

jr_03A_68E3:
    ld b, e
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, jr_03A_692D

    ld b, $F0
    jr nc, jr_03A_6933

    ld b, $F0
    inc c

jr_03A_68F3:
    ld b, e
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_6943

    ld b, $F0
    inc c

jr_03A_6903:
    ld b, e
    ld b, $F0
    sub b
    inc a
    ld d, $F0
    inc h
    inc a
    dec bc

jr_03A_690D:
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]

jr_03A_6913:
    inc a
    ld l, $F0
    jr nc, @+$3C

    ld l, $F0
    jr nc, jr_03A_6957

    ld d, $F0
    jr jr_03A_695C

    ld d, $F0
    inc h

jr_03A_6923:
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    ld b, $F0
    jr jr_03A_6968

    ld e, [hl]

jr_03A_692D:
    ldh a, [$78]
    inc a
    ld d, $F0
    inc h

jr_03A_6933:
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]
    inc a
    jr z, @-$0E

    ld a, [hl+]
    add hl, sp
    dec b
    ldh a, [rTMA]

jr_03A_6943:
    ld a, [hl-]
    ld l, $F0
    jr nc, jr_03A_6983

    ld d, $F0
    jr jr_03A_6988

    ld d, $F0
    inc h
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]

jr_03A_6957:
    inc a
    ld e, [hl]
    ldh a, [$78]
    inc a

jr_03A_695C:
    ld d, $F0
    inc h
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]
    inc a

jr_03A_6968:
    ld l, $F0
    jr nc, @+$3C

    ld l, $F0
    jr nc, jr_03A_69AB

    ld d, $F0
    jr jr_03A_69B0

    ld d, $F0
    inc h
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    ld b, $F0
    jr jr_03A_69BC

    ld e, [hl]
    ldh a, [$78]

jr_03A_6983:
    inc a
    ld d, $F0
    inc h
    inc a

jr_03A_6988:
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]
    inc a
    jr z, @-$0E

    ld a, [hl+]
    add hl, sp
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    ld l, $F0
    jr nc, @+$3D

    ld d, $F0
    jr jr_03A_69DC

    ld d, $F0
    inc h
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]

jr_03A_69AB:
    inc a
    ld e, [hl]
    ldh a, [$9C]
    ld b, c

jr_03A_69B0:
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_69FB

    ld b, $F0
    inc c
    ld b, e

jr_03A_69BC:
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_6A0B

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_6A1B

    ld b, $F0
    inc c
    ld b, e

jr_03A_69DC:
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_6A2B

    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    or h
    ld b, c
    ld b, $F0
    jr nc, jr_03A_6A35

    ld b, $F0
    jr nc, jr_03A_6A3B

    ld b, $F0
    inc c

jr_03A_69FB:
    ld b, e
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_6A4B

    ld b, $F0
    inc c

jr_03A_6A0B:
    ld b, e
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, jr_03A_6A55

    ld b, $F0
    jr nc, jr_03A_6A5B

    ld b, $F0
    inc c

jr_03A_6A1B:
    ld b, e
    ld b, $F0
    ld d, h
    ld b, c
    ld b, $F0
    jr nc, @+$43

    ld b, $F0
    jr nc, jr_03A_6A6B

    ld b, $F0
    inc c

jr_03A_6A2B:
    ld b, e
    ld b, $F0
    sub b
    inc a
    ld d, $F0
    inc h
    inc a
    dec bc

jr_03A_6A35:
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]

jr_03A_6A3B:
    inc a
    ld l, $F0
    jr nc, @+$3C

    ld l, $F0
    jr nc, jr_03A_6A7F

    ld d, $F0
    jr jr_03A_6A84

    ld d, $F0
    inc h

jr_03A_6A4B:
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    ld b, $F0
    jr jr_03A_6A90

    ld h, [hl]

jr_03A_6A55:
    ldh a, [$78]
    inc a
    ld d, $F0
    inc h

jr_03A_6A5B:
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]
    inc a
    jr z, @-$0E

    ld a, [hl+]
    add hl, sp
    dec b
    ldh a, [rTMA]

jr_03A_6A6B:
    ld a, [hl-]
    ld l, $F0
    jr nc, jr_03A_6AAB

    ld d, $F0
    jr jr_03A_6AB0

    ld d, $F0
    inc h
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]

jr_03A_6A7F:
    inc a
    ld e, [hl]
    ldh a, [$78]
    inc a

jr_03A_6A84:
    ld d, $F0
    inc h
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]
    inc a

jr_03A_6A90:
    ld l, $F0
    jr nc, @+$3C

    ld l, $F0
    jr nc, jr_03A_6AD3

    ld d, $F0
    jr jr_03A_6AD8

    ld d, $F0
    inc h
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    ld b, $F0
    jr jr_03A_6AE4

    ld e, [hl]
    ldh a, [$78]

jr_03A_6AAB:
    inc a
    ld d, $F0
    inc h
    inc a

jr_03A_6AB0:
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]
    inc a
    jr z, @-$0E

    ld a, [hl+]
    add hl, sp
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    ld l, $F0
    jr nc, jr_03A_6AFF

    ld d, $F0
    jr jr_03A_6B04

    ld d, $F0
    inc h
    inc a
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]

jr_03A_6AD3:
    inc a
    ld e, [hl]
    ldh a, [rP1]
    rst $38

jr_03A_6AD8:
    db $FC
    ret nz

    call nc, $0B50
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$0C]
    ld d, d

jr_03A_6AE4:
    dec bc
    ldh a, [$0C]
    ld d, c
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
    ld d, h
    dec bc
    ldh a, [$0C]

jr_03A_6AFF:
    ld d, e
    dec bc
    ldh a, [$0C]
    ld d, d

jr_03A_6B04:
    dec bc
    ldh a, [$0C]
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
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$6C]
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
    ldh a, [$6C]
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
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
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
    dec bc
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
    jr z, jr_03A_6F17

    nop
    dec l
    jr nc, jr_03A_6EEC

jr_03A_6EEC:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03A_6F17:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_03A_6F6B

jr_03A_6F6B:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    ld hl, $FEC0
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld hl, $FEC0
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $C021
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $FEC0
    nop
    nop
    nop
    nop
    nop
    ld a, $03
    jp c, Jump_03A_4209

    dec bc
    ld l, c
    ldh a, [rP1]
    xor h
    inc bc
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rOBP0]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [$30]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [rNR23]
    inc l
    add hl, bc
    ldh a, [$60]
    inc l
    add hl, bc
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or h
    daa
    ld l, $F0
    jr nc, jr_03A_737A

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$3D

    ld l, $F0
    jr nc, jr_03A_738A

    ld l, $F0
    jr nc, jr_03A_738A

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$35

    ld l, $F0
    jr nc, jr_03A_7392

    ld l, $F0
    jr nc, jr_03A_739A

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$3D

    ld l, $F0
    jr nc, jr_03A_73AA

    ld l, $F0
    jr nc, jr_03A_73AA

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$35

jr_03A_737A:
    ld l, $F0
    jr nc, jr_03A_73B2

    ld l, $F0
    jr nc, jr_03A_73BA

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$3D

jr_03A_738A:
    ld l, $F0
    jr nc, jr_03A_73CA

    ld l, $F0
    jr nc, jr_03A_73CA

jr_03A_7392:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$35

jr_03A_739A:
    ld l, $F0
    jr nc, jr_03A_73D2

    ld l, $F0
    jr nc, jr_03A_73DA

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$3D

jr_03A_73AA:
    ld l, $F0
    jr nc, jr_03A_73EA

    ld l, $F0
    jr nc, jr_03A_73EA

jr_03A_73B2:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$35

jr_03A_73BA:
    ld l, $F0
    jr nc, jr_03A_73F2

    ld l, $F0
    jr nc, jr_03A_73FA

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$3D

jr_03A_73CA:
    ld l, $F0
    jr nc, jr_03A_740A

    ld l, $F0
    jr nc, jr_03A_740A

jr_03A_73D2:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$35

jr_03A_73DA:
    ld l, $F0
    jr nc, jr_03A_7412

    ld l, $F0
    jr nc, jr_03A_741A

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$3D

jr_03A_73EA:
    ld l, $F0
    jr nc, jr_03A_742A

    ld l, $F0
    jr nc, jr_03A_742A

jr_03A_73F2:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$35

jr_03A_73FA:
    ld l, $F0
    jr nc, jr_03A_7432

    ld l, $F0
    jr nc, jr_03A_743A

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$3D

jr_03A_740A:
    ld l, $F0
    jr nc, jr_03A_744A

    ld l, $F0
    jr nc, jr_03A_744A

jr_03A_7412:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$35

jr_03A_741A:
    ld l, $F0
    jr nc, jr_03A_7452

    ld l, $F0
    jr nc, jr_03A_745A

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$3D

jr_03A_742A:
    ld l, $F0
    jr nc, jr_03A_746A

    ld l, $F0
    jr nc, jr_03A_746A

jr_03A_7432:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$35

jr_03A_743A:
    ld l, $F0
    jr nc, jr_03A_7472

    ld l, $F0
    jr nc, jr_03A_747A

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03A_7485

jr_03A_744A:
    ld l, $F0
    jr nc, @+$3E

    ld l, $F0
    jr nc, @+$3A

jr_03A_7452:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$35

jr_03A_745A:
    ld l, $F0
    jr nc, jr_03A_7492

    ld l, $F0
    jr nc, jr_03A_749A

    ld l, $F0
    jr nc, jr_03A_749D

    ld l, $F0
    jr nc, @+$3D

jr_03A_746A:
    ld l, $F0
    jr nc, @+$3E

    ld l, $F0
    jr nc, @+$3A

jr_03A_7472:
    ld l, $F0
    jr nc, jr_03A_74AD

    ld l, $F0
    jr nc, jr_03A_74AD

jr_03A_747A:
    ld l, $F0
    jr nc, jr_03A_74B2

    add b
    add e
    ldh a, [$90]
    inc [hl]
    ld l, $F0

jr_03A_7485:
    jr nc, jr_03A_74B8

    add b
    add e
    ldh a, [$90]
    ld sp, $F02E
    jr nc, @+$35

    add b
    add e

jr_03A_7492:
    ldh a, [$90]
    inc sp
    ld l, $F0
    jr nc, jr_03A_74D2

    add b

jr_03A_749A:
    add e
    ldh a, [$90]

jr_03A_749D:
    ld sp, $F02E
    jr nc, jr_03A_74D6

    add b
    add e
    ldh a, [$90]
    inc [hl]
    ld l, $F0
    jr nc, jr_03A_74DC

    add b
    add e

jr_03A_74AD:
    ldh a, [$90]
    ld sp, $F02E

jr_03A_74B2:
    jr nc, @+$35

    add b
    add e
    ldh a, [$90]

jr_03A_74B8:
    inc sp
    ld l, $F0
    jr nc, jr_03A_74F6

    add c
    ld b, e
    pop af
    ld d, b
    ld sp, $F02E
    jr nc, jr_03A_74FA

    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0
    inc c
    inc [hl]

jr_03A_74D2:
    ld b, $F0
    inc c
    inc [hl]

jr_03A_74D6:
    ld b, $F0
    inc c
    inc [hl]
    ld b, $F0

jr_03A_74DC:
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

jr_03A_74F6:
    ld b, $F0
    inc c
    inc [hl]

jr_03A_74FA:
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
    nop
    rst $38
    ld a, [c]
    db $F4
    push bc
    ld d, c
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a
    add c
    ld e, $F1
    jr nz, jr_03A_78FD

    ld l, $F0
    jr nc, jr_03A_78FF

    ld l, $F0
    jr nc, jr_03A_7902

    add c
    ld e, $F1
    jr nz, jr_03A_790A

    ld l, $F0
    jr nc, jr_03A_790C

    ld l, $F0
    jr nc, jr_03A_790F

    ld e, b
    ldh a, [$5A]
    ld c, c
    dec b
    ldh a, [rTMA]
    ld c, d
    ld l, $F0
    jr nc, jr_03A_791C

    ld l, $F0
    jr nc, jr_03A_791F

    ld e, [hl]
    ldh a, [$60]
    ld c, d
    ld l, $F0
    jr nc, jr_03A_7928

    ld l, $F0
    jr nc, jr_03A_792B

    add c
    ld e, $F1
    jr nz, jr_03A_792F

    ld e, [hl]
    ldh a, [$60]
    ld b, a
    add c

jr_03A_78EE:
    ld e, $F1
    jr nz, jr_03A_793C

    ld l, $F0
    jr nc, jr_03A_793E

    ld l, $F0
    jr nc, jr_03A_7941

    add c
    jr jr_03A_78EE

jr_03A_78FD:
    ld a, [de]
    ld c, c

jr_03A_78FF:
    dec b
    ldh a, [rTMA]

jr_03A_7902:
    ld c, d
    ld l, $F0
    jr nc, @+$4A

    dec bc
    ldh a, [$0C]

jr_03A_790A:
    ld c, d
    dec bc

jr_03A_790C:
    ldh a, [$0C]
    ld c, b

jr_03A_790F:
    ld d, $F0
    jr @+$49

    ld e, [hl]
    ldh a, [$60]
    ld c, d
    ld l, $F0
    jr nc, @+$4A

    dec bc

jr_03A_791C:
    ldh a, [$0C]
    ld c, d

jr_03A_791F:
    dec bc
    ldh a, [$0C]
    ld c, b
    ld d, $F0
    jr jr_03A_796E

    ld e, [hl]

jr_03A_7928:
    ldh a, [$60]
    ld c, d

jr_03A_792B:
    ld l, $F0
    jr nc, @+$4A

jr_03A_792F:
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, b
    ld d, $F0
    jr @+$49

    add c

jr_03A_793C:
    nop
    pop af

jr_03A_793E:
    ld [bc], a
    ld b, l
    dec b

jr_03A_7941:
    ldh a, [rTMA]
    ld b, [hl]
    ld d, $F0
    jr jr_03A_798F

    ld d, $F0
    jr jr_03A_7992

    ld d, $F0
    jr @+$49

    ld d, $F0
    jr jr_03A_799A

    ld d, $F0
    jr @+$49

    ld e, b
    ldh a, [$5A]
    ld c, [hl]
    dec b
    ldh a, [rTMA]
    ld c, a
    ld l, $F0
    jr nc, @+$50

    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, [hl]
    ld d, $F0

jr_03A_796E:
    jr @+$4F

    ld l, $F0
    jr nc, @+$4B

    ld l, $F0
    jr nc, jr_03A_79BC

    ld l, $F0
    jr nc, @+$47

    ld l, $F0
    jr nc, jr_03A_79C6

    ld e, [hl]
    ldh a, [$60]
    ld c, e
    ld l, $F0
    jr nc, jr_03A_79D2

    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]

jr_03A_798F:
    ld c, d
    ld d, $F0

jr_03A_7992:
    jr @+$4B

    ld l, $F0
    jr nc, @+$47

    ld l, $F0

jr_03A_799A:
    jr nc, jr_03A_79E1

    ld l, $F0
    jr nc, jr_03A_79E6

    ld l, $F0
    jr nc, @+$49

    ld e, [hl]
    ldh a, [$60]
    ld c, a
    ld l, $F0
    jr nc, @+$50

    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, [hl]
    ld d, $F0

jr_03A_79B6:
    jr jr_03A_7A05

    ld l, $F0
    jr nc, jr_03A_7A05

jr_03A_79BC:
    ld l, $F0
    jr nc, jr_03A_7A04

    ld l, $F0
    jr nc, jr_03A_7A09

    jr z, jr_03A_79B6

jr_03A_79C6:
    ld a, [hl+]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    ld e, [hl]
    ldh a, [$60]
    ld c, e
    ld l, $F0

jr_03A_79D2:
    jr nc, jr_03A_7A1E

    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [$0C]
    ld c, d
    ld d, $F0
    jr jr_03A_7A29

    add c

jr_03A_79E1:
    ld e, $F1
    jr nz, jr_03A_7A26

    ld e, b

jr_03A_79E6:
    ldh a, [$60]
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, c
    ld l, $F0
    ld a, b
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, e
    dec bc
    ldh a, [$30]
    ld b, c
    ld l, $F0
    ld c, b
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, c
    ld l, $F0
    ld a, b

jr_03A_7A04:
    ld b, b

jr_03A_7A05:
    dec bc
    ldh a, [rOBP0]
    ld b, e

jr_03A_7A09:
    dec bc
    ldh a, [$30]
    ld b, c
    ld l, $F0
    ld c, b
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld c, e
    ld b, [hl]

jr_03A_7A1E:
    ldh a, [$78]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc

jr_03A_7A26:
    ldh a, [rNR23]
    ld b, a

jr_03A_7A29:
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [$30]
    ld c, d
    dec sp
    ldh a, [rOBP0]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld c, e
    ld b, [hl]
    ldh a, [$78]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [$30]
    ld c, d
    dec sp
    ldh a, [rOBP0]
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, c
    ld l, $F0
    ld a, b
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, e
    dec bc
    ldh a, [$30]
    ld b, c
    ld l, $F0
    ld c, b
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, c
    ld l, $F0
    ld a, b
    ld b, b
    dec bc
    ldh a, [rOBP0]
    ld b, e
    dec bc
    ldh a, [$30]
    ld b, c
    ld l, $F0
    ld c, b
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld c, e
    ld b, [hl]
    ldh a, [$78]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec bc
    ldh a, [$30]
    ld c, d
    ld l, $F0
    ld c, b
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld c, e
    dec sp
    ldh a, [$78]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR12]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, e
    dec bc
    ldh a, [rP1]
    rst $38
    ld sp, hl
    nop
    ret nz

    ld d, b
    ld d, $F0
    jr jr_03A_7B12

    ld d, $F0
    jr jr_03A_7B17

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03A_7B21

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03A_7B27

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_03A_7B2D

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, b
    ld d, $F0
    jr jr_03A_7B37

    ld d, $F0
    jr jr_03A_7B3C

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03A_7B46

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03A_7B4C

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_03A_7B52

jr_03A_7B12:
    add b
    cp [hl]
    ldh a, [$C0]
    ld b, b

jr_03A_7B17:
    ld d, $F0
    jr jr_03A_7B5C

    ld d, $F0
    jr jr_03A_7B61

    ld d, $F0

jr_03A_7B21:
    jr @+$45

    ld d, $F0
    jr jr_03A_7B6B

jr_03A_7B27:
    ld d, $F0
    jr @+$45

    ld d, $F0

jr_03A_7B2D:
    jr jr_03A_7B71

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_03A_7B77

jr_03A_7B37:
    add b
    cp [hl]
    ldh a, [$C0]
    ld b, b

jr_03A_7B3C:
    ld d, $F0
    jr jr_03A_7B81

    ld d, $F0
    jr @+$44

    ld d, $F0

jr_03A_7B46:
    jr jr_03A_7B8B

    ld d, $F0
    jr @+$46

jr_03A_7B4C:
    ld d, $F0
    jr jr_03A_7B93

    ld d, $F0

jr_03A_7B52:
    jr @+$44

    ld d, $F0
    jr jr_03A_7B99

    ld d, $F0
    jr @+$42

jr_03A_7B5C:
    add b
    cp [hl]
    ldh a, [$C0]
    ld b, b

jr_03A_7B61:
    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$49

    ld d, $F0

jr_03A_7B6B:
    jr jr_03A_7BB9

    ld d, $F0
    jr @+$51

jr_03A_7B71:
    ld d, $F0
    jr jr_03A_7BC1

    ld d, $F0

jr_03A_7B77:
    jr @+$49

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$3F

jr_03A_7B81:
    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_03A_7BCD

    ld d, $F0

jr_03A_7B8B:
    jr @+$4B

    ld d, $F0
    jr @+$4F

    ld d, $F0

jr_03A_7B93:
    jr @+$4B

    ld d, $F0
    jr jr_03A_7BDD

jr_03A_7B99:
    ld d, $F0
    jr @+$43

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03A_7BE7

    ld d, $F0
    jr jr_03A_7BEF

    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_03A_7BFF

    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_03A_7BFF

jr_03A_7BB9:
    ld d, $F0
    jr jr_03A_7BFF

    ld d, $F0
    jr @+$3F

jr_03A_7BC1:
    ld d, $F0
    jr jr_03A_7C05

    ld d, $F0
    jr @+$47

    ld d, $F0
    jr @+$49

jr_03A_7BCD:
    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr @+$47

    ld d, $F0
    jr jr_03A_7C1B

    ld d, $F0
    jr @+$3F

jr_03A_7BDD:
    ld d, $F0
    jr jr_03A_7C21

    ld d, $F0
    jr @+$45

    ld d, $F0

jr_03A_7BE7:
    jr @+$49

    ld d, $F0
    jr jr_03A_7C39

    ld d, $F0

jr_03A_7BEF:
    jr @+$51

    ld d, $F0
    jr jr_03A_7C41

    ld d, $F0
    jr @+$49

    ld d, $F0
    jr @+$45

    ld d, $F0

jr_03A_7BFF:
    jr @+$3F

    ld d, $F0
    jr @+$43

jr_03A_7C05:
    ld d, $F0
    jr jr_03A_7C4D

    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr jr_03A_7C5D

    ld d, $F0

jr_03A_7C1B:
    jr @+$43

    ld d, $F0
    jr @+$41

jr_03A_7C21:
    ld d, $F0
    jr @+$44

    ld d, $F0
    jr @+$48

    ld d, $F0
    jr jr_03A_7C78

    ld d, $F0
    jr @+$50

    ld d, $F0
    jr jr_03A_7C80

    ld d, $F0
    jr @+$48

jr_03A_7C39:
    ld d, $F0
    jr @+$44

    ld d, $F0
    jr jr_03A_7C7E

jr_03A_7C41:
    ld d, $F0
    jr jr_03A_7C86

    ld d, $F0
    jr jr_03A_7C8E

    ld d, $F0
    jr jr_03A_7C96

jr_03A_7C4D:
    ld d, $F0
    jr jr_03A_7C92

    ld d, $F0
    jr jr_03A_7C9A

    ld d, $F0
    jr jr_03A_7CA2

    ld d, $F0
    jr jr_03A_7CAA

jr_03A_7C5D:
    ld d, $F0
    jr @+$47

    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, l
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [$0C]

jr_03A_7C78:
    ld c, l
    dec bc
    ldh a, [$0C]
    ld c, c
    dec bc

jr_03A_7C7E:
    ldh a, [$0C]

jr_03A_7C80:
    ld d, c
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc

jr_03A_7C86:
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc

jr_03A_7C8E:
    ldh a, [$0C]
    ld c, c
    dec bc

jr_03A_7C92:
    ldh a, [$0C]
    ld b, l
    dec bc

jr_03A_7C96:
    ldh a, [$0C]
    ld b, c
    dec bc

jr_03A_7C9A:
    ldh a, [$0C]
    dec a
    dec bc
    ldh a, [$0C]
    dec sp
    dec bc

jr_03A_7CA2:
    ldh a, [rOBP0]
    inc a
    ld l, $F0
    ld a, b
    dec sp
    dec bc

jr_03A_7CAA:
    ldh a, [rOBP0]
    ld a, $0B
    ldh a, [$30]
    inc a
    ld l, $F0
    ld c, b
    dec sp
    dec bc
    ldh a, [rOBP0]
    inc a
    ld l, $F0
    ld a, b
    dec sp
    dec bc
    ldh a, [rOBP0]
    ld a, $0B
    ldh a, [$30]
    inc a
    ld l, $F0
    ld c, b
    inc [hl]
    ld l, $F0
    jr nc, jr_03A_7D05

    ld l, $F0
    jr nc, jr_03A_7D08

    ld l, $F0
    jr nc, jr_03A_7D10

    ld l, $F0
    jr nc, @+$3E

    ld l, $F0
    jr nc, @+$3A

    ld l, $F0
    jr nc, jr_03A_7D18

    ld l, $F0
    jr nc, jr_03A_7D18

    ld l, $F0
    jr nc, jr_03A_7D1D

    ld l, $F0
    jr nc, jr_03A_7D25

    ld l, $F0
    jr nc, jr_03A_7D28

    ld l, $F0
    jr nc, jr_03A_7D30

    ld l, $F0
    jr nc, jr_03A_7D35

    ld l, $F0
    jr nc, jr_03A_7D35

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, @+$35

jr_03A_7D05:
    ld a, [hl+]
    ldh a, [$30]

jr_03A_7D08:
    dec sp
    dec bc
    ldh a, [rOBP0]
    inc a
    ld l, $F0
    ld a, b

jr_03A_7D10:
    dec sp
    dec bc
    ldh a, [rOBP0]
    ld a, $0B
    ldh a, [$30]

jr_03A_7D18:
    inc a
    ld l, $F0
    ld c, b
    dec sp

jr_03A_7D1D:
    dec bc
    ldh a, [rOBP0]
    inc a
    ld l, $F0
    ld a, b
    dec sp

jr_03A_7D25:
    dec bc
    ldh a, [rOBP0]

jr_03A_7D28:
    ld a, $0B
    ldh a, [$30]
    inc a
    ld l, $F0
    ld c, b

jr_03A_7D30:
    inc [hl]
    ld l, $F0
    jr nc, jr_03A_7D6D

jr_03A_7D35:
    ld l, $F0
    jr nc, jr_03A_7D70

    ld l, $F0
    jr nc, @+$3D

    ld l, $F0
    jr nc, jr_03A_7D7D

    ld l, $F0
    jr nc, jr_03A_7D7D

    ld l, $F0
    jr nc, jr_03A_7D80

    ld l, $F0
    jr nc, jr_03A_7D80

    ld l, $F0
    jr nc, jr_03A_7D85

    ld l, $F0
    jr nc, jr_03A_7D8D

    ld l, $F0
    jr nc, jr_03A_7D90

    ld l, $F0
    jr nc, jr_03A_7D98

    ld l, $F0
    jr nc, jr_03A_7D9D

    ld l, $F0
    jr nc, jr_03A_7D9D

    dec bc
    ldh a, [rNR23]
    inc [hl]
    ld b, $F0
    nop
    rst $38

jr_03A_7D6D:
    ld a, [hl+]
    inc l
    dec hl

jr_03A_7D70:
    add hl, hl
    ld a, [hl+]
    inc l
    dec hl
    add hl, hl
    nop
    nop
    jr z, jr_03A_7D79

jr_03A_7D79:
    nop
    nop
    nop
    nop

jr_03A_7D7D:
    nop
    nop
    nop

jr_03A_7D80:
    nop
    nop
    nop
    nop
    nop

jr_03A_7D85:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03A_7D8D:
    nop
    nop
    nop

jr_03A_7D90:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl

jr_03A_7D98:
    dec hl
    nop
    nop
    nop
    nop

jr_03A_7D9D:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    nop
    ld h, $00
    nop
    ld b, $00
    ld [hl+], a
    nop
    ld a, [$0E00]
    nop
    jr jr_03A_7DFC

jr_03A_7DFC:
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
    ld h, $00
    ld l, d
    ret nc

    nop
    cp h
    ld d, c
    dec b
    ret nc

    ld b, $40
    dec b
    ret nc

    ld b, $43
    dec b
    ret nc

    ld b, $48
    dec b
    ret nc

    ld b, $40
    dec b
    ret nc

    ld b, $43
    dec b
    ret nc

    ld b, $48
    dec b
    ret nc

    ld b, $4C
    dec b
    ret nc

    ld b, $43
    dec b
    ret nc

    ld b, $48
    dec b
    ret nc

    ld b, $4C
    dec b
    ret nc

    ld b, $4F
    dec b
    ret nc

    ld b, $48
    dec b
    ret nc

    ld b, $4C
    dec b
    ret nc

    ld b, $4F
    dec b
    ret nc

    ld b, $54
    add hl, bc
    ldh a, [rP1]
    rst $38
    or b
    nop
    or b
    ld d, b
    dec b
    or b
    ld b, $34
    dec b
    or b
    ld b, $37
    dec b
    or b
    ld b, $34
    dec b
    or b
    ld b, $37
    dec b
    or b
    ld b, $3C
    dec b
    or b
    ld b, $37
    dec b
    or b
    ld b, $3C
    dec b
    or b
    ld b, $40
    dec b
    or b
    ld b, $3C
    dec b
    or b
    ld b, $40
    dec b
    or b
    ld b, $43
    dec b
    or b
    ld b, $48
    dec b
    or b
    ld b, $4C
    dec b
    or b
    ld b, $4F
    dec b
    or b
    ld b, $54
    add hl, bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
