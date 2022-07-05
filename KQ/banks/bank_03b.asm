; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

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
    jr z, jr_03B_403B

    nop
    dec l
    jr nc, jr_03B_4010

jr_03B_4010:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03B_403B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_03B_408F

jr_03B_408F:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    jr jr_03B_4097

jr_03B_4097:
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    jr jr_03B_40A1

jr_03B_40A1:
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
    jr jr_03B_40B5

jr_03B_40B5:
    cp $00
    nop
    nop
    nop
    nop
    ld a, $03
    sbc $07
    ld h, d
    add hl, bc
    ld e, $F0
    nop
    xor e
    inc bc
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or b
    daa
    inc c
    ldh a, [rNR23]
    jr nc, jr_03B_4477

    ldh a, [rOBP0]
    jr nc, jr_03B_447B

    ldh a, [rNR23]
    jr nc, jr_03B_447F

    ldh a, [rOBP0]
    jr nc, jr_03B_4483

jr_03B_4477:
    ldh a, [rNR23]
    jr nc, jr_03B_4487

jr_03B_447B:
    ldh a, [rOBP0]
    jr nc, jr_03B_448B

jr_03B_447F:
    ldh a, [rNR23]
    jr nc, jr_03B_448F

jr_03B_4483:
    ldh a, [rOBP0]
    jr nc, jr_03B_4493

jr_03B_4487:
    ldh a, [rNR23]
    jr nc, jr_03B_4497

jr_03B_448B:
    ldh a, [rOBP0]
    jr nc, jr_03B_449B

jr_03B_448F:
    ldh a, [rNR23]
    jr nc, jr_03B_449F

jr_03B_4493:
    ldh a, [rOBP0]
    jr nc, jr_03B_44A3

jr_03B_4497:
    ldh a, [rNR23]
    jr nc, jr_03B_44A7

jr_03B_449B:
    ldh a, [rOBP0]
    jr nc, jr_03B_44AB

jr_03B_449F:
    ldh a, [rNR23]
    jr nc, jr_03B_44AF

jr_03B_44A3:
    ldh a, [rOBP0]
    jr nc, jr_03B_44B3

jr_03B_44A7:
    ldh a, [rNR23]
    jr nc, jr_03B_44B7

jr_03B_44AB:
    ldh a, [$30]
    jr nc, jr_03B_44BB

jr_03B_44AF:
    ldh a, [rNR23]
    jr nc, jr_03B_44BF

jr_03B_44B3:
    ldh a, [rNR23]
    jr nc, jr_03B_44C3

jr_03B_44B7:
    ldh a, [$30]
    jr nc, jr_03B_44C7

jr_03B_44BB:
    ldh a, [rNR23]
    jr nc, jr_03B_44CB

jr_03B_44BF:
    ldh a, [rNR23]
    jr nc, jr_03B_44CF

jr_03B_44C3:
    ldh a, [$30]
    jr nc, jr_03B_44D3

jr_03B_44C7:
    ldh a, [rNR23]
    jr nc, jr_03B_44D7

jr_03B_44CB:
    ldh a, [rNR23]
    jr nc, jr_03B_44DB

jr_03B_44CF:
    ldh a, [$30]
    jr nc, jr_03B_44DF

jr_03B_44D3:
    ldh a, [rNR23]
    jr nc, jr_03B_44E3

jr_03B_44D7:
    ldh a, [rNR23]
    jr nc, jr_03B_44E7

jr_03B_44DB:
    ldh a, [$30]
    jr nc, jr_03B_44EB

jr_03B_44DF:
    ldh a, [rNR23]
    jr nc, jr_03B_44EF

jr_03B_44E3:
    ldh a, [rNR23]
    jr nc, jr_03B_44F3

jr_03B_44E7:
    ldh a, [$30]
    jr nc, jr_03B_44F7

jr_03B_44EB:
    ldh a, [rNR23]
    jr nc, jr_03B_44FB

jr_03B_44EF:
    ldh a, [rNR23]
    jr nc, jr_03B_44FF

jr_03B_44F3:
    ldh a, [$30]
    jr nc, jr_03B_4503

jr_03B_44F7:
    ldh a, [rNR23]
    jr nc, jr_03B_4507

jr_03B_44FB:
    ldh a, [rNR23]
    jr nc, jr_03B_450B

jr_03B_44FF:
    ldh a, [$30]
    jr nc, jr_03B_450F

jr_03B_4503:
    ldh a, [rNR23]
    jr nc, jr_03B_4513

jr_03B_4507:
    ldh a, [rNR23]
    jr nc, jr_03B_4517

jr_03B_450B:
    ldh a, [$30]
    jr nc, jr_03B_451B

jr_03B_450F:
    ldh a, [rNR23]
    jr nc, jr_03B_451F

jr_03B_4513:
    ldh a, [rNR23]
    jr nc, jr_03B_4523

jr_03B_4517:
    ldh a, [$30]
    jr nc, jr_03B_4527

jr_03B_451B:
    ldh a, [rNR23]
    jr nc, jr_03B_452B

jr_03B_451F:
    ldh a, [rNR23]
    jr nc, jr_03B_452F

jr_03B_4523:
    ldh a, [$30]
    jr nc, jr_03B_4533

jr_03B_4527:
    ldh a, [rNR23]
    jr nc, jr_03B_4537

jr_03B_452B:
    ldh a, [rNR23]
    jr nc, jr_03B_453B

jr_03B_452F:
    ldh a, [$30]
    jr nc, jr_03B_453F

jr_03B_4533:
    ldh a, [rNR23]
    jr nc, jr_03B_4543

jr_03B_4537:
    ldh a, [rNR23]
    jr nc, jr_03B_4547

jr_03B_453B:
    ldh a, [$30]
    jr nc, jr_03B_454B

jr_03B_453F:
    ldh a, [rNR23]
    jr nc, jr_03B_454F

jr_03B_4543:
    ldh a, [rNR23]
    jr nc, jr_03B_4553

jr_03B_4547:
    ldh a, [$30]
    jr nc, jr_03B_4557

jr_03B_454B:
    ldh a, [rNR23]
    jr nc, jr_03B_455B

jr_03B_454F:
    ldh a, [rNR23]
    jr nc, jr_03B_455F

jr_03B_4553:
    ldh a, [$30]
    jr nc, jr_03B_4563

jr_03B_4557:
    ldh a, [rNR23]
    jr nc, jr_03B_4567

jr_03B_455B:
    ldh a, [rNR23]
    jr nc, jr_03B_456B

jr_03B_455F:
    ldh a, [$30]
    jr nc, jr_03B_456F

jr_03B_4563:
    ldh a, [rNR23]
    jr nc, jr_03B_4573

jr_03B_4567:
    ldh a, [rNR23]
    jr nc, jr_03B_4577

jr_03B_456B:
    ldh a, [$30]
    jr nc, jr_03B_457B

jr_03B_456F:
    ldh a, [rNR23]
    jr nc, jr_03B_457F

jr_03B_4573:
    ldh a, [rNR23]
    jr nc, jr_03B_4583

jr_03B_4577:
    ldh a, [$30]
    jr nc, jr_03B_4587

jr_03B_457B:
    ldh a, [rNR23]
    jr nc, jr_03B_458B

jr_03B_457F:
    ldh a, [rNR23]
    jr nc, jr_03B_458F

jr_03B_4583:
    ldh a, [$30]
    jr nc, jr_03B_4593

jr_03B_4587:
    ldh a, [rNR23]
    jr nc, jr_03B_4597

jr_03B_458B:
    ldh a, [rNR23]
    jr nc, jr_03B_459B

jr_03B_458F:
    ldh a, [$30]
    jr nc, jr_03B_459F

jr_03B_4593:
    ldh a, [rNR23]
    jr nc, jr_03B_45A3

jr_03B_4597:
    ldh a, [rNR23]
    jr nc, jr_03B_45A7

jr_03B_459B:
    ldh a, [$30]
    jr nc, jr_03B_45AB

jr_03B_459F:
    ldh a, [rNR23]
    jr nc, jr_03B_45AF

jr_03B_45A3:
    ldh a, [rNR23]
    jr nc, jr_03B_45B3

jr_03B_45A7:
    ldh a, [$30]
    jr nc, jr_03B_45B7

jr_03B_45AB:
    ldh a, [rNR23]
    jr nc, jr_03B_45BB

jr_03B_45AF:
    ldh a, [rNR23]
    jr nc, jr_03B_45BF

jr_03B_45B3:
    ldh a, [$30]
    jr nc, jr_03B_45C3

jr_03B_45B7:
    ldh a, [rNR23]
    jr nc, jr_03B_45C7

jr_03B_45BB:
    ldh a, [rNR23]
    jr nc, jr_03B_45CB

jr_03B_45BF:
    ldh a, [$30]
    jr nc, jr_03B_45CF

jr_03B_45C3:
    ldh a, [rNR23]
    jr nc, jr_03B_45D3

jr_03B_45C7:
    ldh a, [rNR23]
    jr nc, jr_03B_45D7

jr_03B_45CB:
    ldh a, [$30]
    jr nc, jr_03B_45DB

jr_03B_45CF:
    ldh a, [rNR23]
    jr nc, jr_03B_45DF

jr_03B_45D3:
    ldh a, [rNR23]
    jr nc, jr_03B_45E3

jr_03B_45D7:
    ldh a, [$30]
    jr nc, jr_03B_45E7

jr_03B_45DB:
    ldh a, [rNR23]
    jr nc, jr_03B_45EB

jr_03B_45DF:
    ldh a, [rNR23]
    jr nc, jr_03B_45EF

jr_03B_45E3:
    ldh a, [$30]
    jr nc, jr_03B_45F3

jr_03B_45E7:
    ldh a, [rNR23]
    jr nc, jr_03B_45F7

jr_03B_45EB:
    ldh a, [rNR23]
    jr nc, jr_03B_45FB

jr_03B_45EF:
    ldh a, [$30]
    jr nc, jr_03B_45FF

jr_03B_45F3:
    ldh a, [rNR23]
    jr nc, jr_03B_4603

jr_03B_45F7:
    ldh a, [rNR23]
    jr nc, jr_03B_4607

jr_03B_45FB:
    ldh a, [$30]
    jr nc, jr_03B_460B

jr_03B_45FF:
    ldh a, [rNR23]
    jr nc, jr_03B_460F

jr_03B_4603:
    ldh a, [rNR23]
    jr nc, jr_03B_4613

jr_03B_4607:
    ldh a, [$30]
    jr nc, jr_03B_4617

jr_03B_460B:
    ldh a, [rNR23]
    jr nc, jr_03B_461B

jr_03B_460F:
    ldh a, [rNR23]
    jr nc, jr_03B_461F

jr_03B_4613:
    ldh a, [$30]
    jr nc, jr_03B_4623

jr_03B_4617:
    ldh a, [rNR23]
    jr nc, jr_03B_4627

jr_03B_461B:
    ldh a, [rNR23]
    jr nc, jr_03B_462B

jr_03B_461F:
    ldh a, [$30]
    jr nc, jr_03B_462F

jr_03B_4623:
    ldh a, [rNR23]
    jr nc, jr_03B_4633

jr_03B_4627:
    ldh a, [rNR23]
    jr nc, jr_03B_4637

jr_03B_462B:
    ldh a, [$30]
    jr nc, jr_03B_463B

jr_03B_462F:
    ldh a, [rNR23]
    jr nc, jr_03B_463F

jr_03B_4633:
    ldh a, [rNR23]
    jr nc, jr_03B_4643

jr_03B_4637:
    ldh a, [$30]
    jr nc, jr_03B_4647

jr_03B_463B:
    ldh a, [rNR23]
    jr nc, jr_03B_464B

jr_03B_463F:
    ldh a, [rNR23]
    jr nc, jr_03B_464F

jr_03B_4643:
    ldh a, [$30]
    jr nc, jr_03B_4653

jr_03B_4647:
    ldh a, [rNR23]
    jr nc, jr_03B_4657

jr_03B_464B:
    ldh a, [rNR23]
    jr nc, jr_03B_465B

jr_03B_464F:
    ldh a, [$30]
    jr nc, jr_03B_465F

jr_03B_4653:
    ldh a, [rNR23]
    jr nc, jr_03B_4663

jr_03B_4657:
    ldh a, [rNR23]
    jr nc, jr_03B_4667

jr_03B_465B:
    ldh a, [$30]
    jr nc, jr_03B_466B

jr_03B_465F:
    ldh a, [rNR23]
    jr nc, jr_03B_466F

jr_03B_4663:
    ldh a, [rNR23]
    jr nc, jr_03B_4673

jr_03B_4667:
    ldh a, [$30]
    jr nc, jr_03B_4677

jr_03B_466B:
    ldh a, [rNR23]
    jr nc, jr_03B_467B

jr_03B_466F:
    ldh a, [rNR23]
    jr nc, jr_03B_467F

jr_03B_4673:
    ldh a, [$30]
    jr nc, jr_03B_4683

jr_03B_4677:
    ldh a, [rNR23]
    jr nc, jr_03B_4687

jr_03B_467B:
    ldh a, [rNR23]
    jr nc, jr_03B_468B

jr_03B_467F:
    ldh a, [$30]
    jr nc, jr_03B_468F

jr_03B_4683:
    ldh a, [rNR23]
    jr nc, jr_03B_4693

jr_03B_4687:
    ldh a, [rNR23]
    jr nc, jr_03B_4697

jr_03B_468B:
    ldh a, [$30]
    jr nc, jr_03B_469B

jr_03B_468F:
    ldh a, [rNR23]
    jr nc, jr_03B_469F

jr_03B_4693:
    ldh a, [rNR23]
    jr nc, jr_03B_46A3

jr_03B_4697:
    ldh a, [$30]
    jr nc, jr_03B_46A7

jr_03B_469B:
    ldh a, [rNR23]
    jr nc, jr_03B_46AB

jr_03B_469F:
    ldh a, [rNR23]
    jr nc, jr_03B_46AF

jr_03B_46A3:
    ldh a, [$30]
    jr nc, jr_03B_46B3

jr_03B_46A7:
    ldh a, [rNR23]
    jr nc, jr_03B_46B7

jr_03B_46AB:
    ldh a, [rNR23]
    jr nc, jr_03B_46BB

jr_03B_46AF:
    ldh a, [$30]
    jr nc, jr_03B_46BF

jr_03B_46B3:
    ldh a, [rNR23]
    jr nc, jr_03B_46C3

jr_03B_46B7:
    ldh a, [rNR23]
    jr nc, jr_03B_46C7

jr_03B_46BB:
    ldh a, [$30]
    jr nc, jr_03B_46CB

jr_03B_46BF:
    ldh a, [rNR23]
    jr nc, jr_03B_46CF

jr_03B_46C3:
    ldh a, [rNR23]
    jr nc, jr_03B_46D3

jr_03B_46C7:
    ldh a, [$30]
    jr nc, jr_03B_46D7

jr_03B_46CB:
    ldh a, [rNR23]
    jr nc, jr_03B_46DB

jr_03B_46CF:
    ldh a, [rNR23]
    jr nc, jr_03B_46DF

jr_03B_46D3:
    ldh a, [$30]
    jr nc, jr_03B_46E3

jr_03B_46D7:
    ldh a, [rNR23]
    jr nc, jr_03B_46E7

jr_03B_46DB:
    ldh a, [rNR23]
    jr nc, jr_03B_46EB

jr_03B_46DF:
    ldh a, [$30]
    jr nc, jr_03B_46EF

jr_03B_46E3:
    ldh a, [rNR23]
    jr nc, jr_03B_46ED

jr_03B_46E7:
    ldh a, [$0C]
    jr nc, jr_03B_46F1

jr_03B_46EB:
    ldh a, [$0C]

jr_03B_46ED:
    jr nc, jr_03B_46F5

jr_03B_46EF:
    ldh a, [$0C]

jr_03B_46F1:
    jr nc, jr_03B_46F9

    ldh a, [$0C]

jr_03B_46F5:
    jr nc, jr_03B_46FD

    ldh a, [$0C]

jr_03B_46F9:
    jr nc, jr_03B_4701

    ldh a, [$0C]

jr_03B_46FD:
    jr nc, jr_03B_4705

    ldh a, [$0C]

jr_03B_4701:
    jr nc, jr_03B_4709

    ldh a, [$0C]

jr_03B_4705:
    jr nc, jr_03B_470D

    ldh a, [$0C]

jr_03B_4709:
    jr nc, jr_03B_4711

    ldh a, [$0C]

jr_03B_470D:
    jr nc, jr_03B_4715

    ldh a, [$0C]

jr_03B_4711:
    jr nc, jr_03B_4719

    ldh a, [$0C]

jr_03B_4715:
    jr nc, jr_03B_471D

    ldh a, [$0C]

jr_03B_4719:
    jr nc, jr_03B_4721

    ldh a, [$0C]

jr_03B_471D:
    jr nc, jr_03B_4725

    ldh a, [$0C]

jr_03B_4721:
    jr nc, jr_03B_4729

    ldh a, [$0C]

jr_03B_4725:
    jr nc, jr_03B_472D

    ldh a, [$0C]

jr_03B_4729:
    jr nc, jr_03B_4731

    ldh a, [$0C]

jr_03B_472D:
    jr nc, jr_03B_4735

    ldh a, [$0C]

jr_03B_4731:
    jr nc, jr_03B_4739

    ldh a, [$0C]

jr_03B_4735:
    jr nc, jr_03B_473D

    ldh a, [$0C]

jr_03B_4739:
    jr nc, jr_03B_4741

    ldh a, [$0C]

jr_03B_473D:
    jr nc, jr_03B_4745

    ldh a, [$0C]

jr_03B_4741:
    jr nc, jr_03B_4749

    ldh a, [$0C]

jr_03B_4745:
    jr nc, jr_03B_474D

    ldh a, [$0C]

jr_03B_4749:
    jr nc, jr_03B_4751

    ldh a, [$0C]

jr_03B_474D:
    jr nc, jr_03B_4755

    ldh a, [$0C]

jr_03B_4751:
    jr nc, jr_03B_4759

    ldh a, [$0C]

jr_03B_4755:
    jr nc, jr_03B_475D

    ldh a, [$0C]

jr_03B_4759:
    jr nc, jr_03B_4761

    ldh a, [$0C]

jr_03B_475D:
    jr nc, jr_03B_4765

    ldh a, [$0C]

jr_03B_4761:
    jr nc, jr_03B_4769

    ldh a, [$0C]

jr_03B_4765:
    jr nc, jr_03B_476D

    ldh a, [$0C]

jr_03B_4769:
    jr nc, jr_03B_4771

    ldh a, [$0C]

jr_03B_476D:
    jr nc, jr_03B_4775

    ldh a, [$0C]

jr_03B_4771:
    jr nc, jr_03B_4779

    ldh a, [$0C]

jr_03B_4775:
    jr nc, jr_03B_477D

    ldh a, [$0C]

jr_03B_4779:
    jr nc, jr_03B_4781

    ldh a, [$0C]

jr_03B_477D:
    jr nc, jr_03B_4785

    ldh a, [$0C]

jr_03B_4781:
    jr nc, jr_03B_4789

    ldh a, [$0C]

jr_03B_4785:
    jr nc, jr_03B_478D

    ldh a, [$0C]

jr_03B_4789:
    jr nc, jr_03B_4791

    ldh a, [$0C]

jr_03B_478D:
    jr nc, jr_03B_4795

    ldh a, [$0C]

jr_03B_4791:
    jr nc, jr_03B_4799

    ldh a, [$0C]

jr_03B_4795:
    jr nc, jr_03B_479D

    ldh a, [$0C]

jr_03B_4799:
    jr nc, jr_03B_47A1

    ldh a, [$0C]

jr_03B_479D:
    jr nc, jr_03B_47A5

    ldh a, [$0C]

jr_03B_47A1:
    jr nc, jr_03B_47A9

    ldh a, [$0C]

jr_03B_47A5:
    jr nc, jr_03B_47AD

    ldh a, [$0C]

jr_03B_47A9:
    jr nc, jr_03B_47B1

    ldh a, [$0C]

jr_03B_47AD:
    jr nc, jr_03B_47B5

    ldh a, [$0C]

jr_03B_47B1:
    jr nc, jr_03B_47B9

    ldh a, [$0C]

jr_03B_47B5:
    jr nc, jr_03B_47BD

    ldh a, [$0C]

jr_03B_47B9:
    jr nc, jr_03B_47C1

    ldh a, [$0C]

jr_03B_47BD:
    jr nc, jr_03B_47C5

    ldh a, [$0C]

jr_03B_47C1:
    jr nc, jr_03B_47C9

    ldh a, [$0C]

jr_03B_47C5:
    jr nc, jr_03B_47CD

    ldh a, [$0C]

jr_03B_47C9:
    jr nc, jr_03B_47D1

    ldh a, [$0C]

jr_03B_47CD:
    jr nc, jr_03B_47D5

    ldh a, [$0C]

jr_03B_47D1:
    jr nc, jr_03B_47D9

    ldh a, [$0C]

jr_03B_47D5:
    jr nc, jr_03B_47DD

    ldh a, [$0C]

jr_03B_47D9:
    jr nc, jr_03B_47E1

    ldh a, [$0C]

jr_03B_47DD:
    jr nc, jr_03B_47E5

    ldh a, [$0C]

jr_03B_47E1:
    jr nc, @+$08

    ldh a, [rP1]

jr_03B_47E5:
    rst $38
    ldh a, [rP1]
    jp $0C51


jr_03B_47EB:
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rOBP0]
    ld b, h
    inc c
    ldh a, [rNR23]
    ld b, h
    inc c
    ldh a, [rOBP0]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rOBP0]
    ld b, h
    inc c
    ldh a, [rNR23]
    ld b, h
    inc c
    ldh a, [rOBP0]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rOBP0]
    ld b, h
    inc c
    ldh a, [rNR23]

jr_03B_4815:
    ld b, h
    inc c
    ldh a, [rOBP0]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rOBP0]
    ld b, h
    inc c
    ldh a, [rNR23]
    ld b, h
    inc c
    ldh a, [rOBP0]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rOBP0]
    ld b, h
    inc c
    ldh a, [rNR23]
    ld b, h

jr_03B_4836:
    inc c
    ldh a, [rOBP0]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rOBP0]
    ld b, h
    inc c
    ldh a, [rNR23]
    ld b, h
    inc c
    ldh a, [rOBP0]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rOBP0]
    ld b, h
    inc c
    ldh a, [rNR23]
    ld b, h
    inc c
    ldh a, [rOBP0]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rOBP0]
    ld b, h
    inc c
    ldh a, [rNR23]
    ld b, h
    inc c
    ldh a, [rOBP0]
    jr nc, jr_03B_47EB

    adc [hl]
    ldh a, [$90]
    scf
    ld l, $F0
    jr nc, jr_03B_48A9

    ld e, [hl]
    ldh a, [$60]
    ld a, [hl-]
    ld l, $F0
    jr nc, @+$38

    ld l, $F0
    jr nc, @+$32

    add b
    adc [hl]
    ldh a, [$90]
    scf
    ld l, $F0
    jr nc, jr_03B_48BE

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03B_48CF

    ld d, h
    ldh a, [$60]
    jr nc, jr_03B_4815

    adc [hl]
    ldh a, [$90]
    scf
    ld l, $F0
    jr nc, jr_03B_48D3

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03B_48DF

    ld l, $F0
    jr nc, jr_03B_48DF

jr_03B_48A9:
    ld a, [bc]
    ldh a, [$0C]
    scf
    ld a, [bc]
    ldh a, [$0C]
    ld [hl], $16
    ldh a, [rNR23]
    jr nc, jr_03B_4836

    adc [hl]
    ldh a, [$90]
    scf
    ld l, $F0
    jr nc, @+$38

jr_03B_48BE:
    ld l, $F0
    jr nc, jr_03B_48F9

    ld l, $F0
    jr nc, jr_03B_4905

    ld l, $F0
    jr nc, jr_03B_4905

    ld l, $F0
    jr nc, @+$4A

    inc c

jr_03B_48CF:
    ldh a, [rNR23]
    ld c, b

jr_03B_48D2:
    inc c

jr_03B_48D3:
    ldh a, [$30]
    ld c, c
    ld [hl], h
    ldh a, [$78]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c

jr_03B_48DF:
    ldh a, [$30]
    ld c, c
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, a
    ld a, [hl+]
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, c
    ld [hl], h
    ldh a, [$78]
    ld c, b
    inc c
    ldh a, [rNR23]

jr_03B_48F9:
    ld c, b
    inc c
    ldh a, [$30]
    ld c, c
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, a
    ld a, [hl+]
    ldh a, [$30]

jr_03B_4905:
    jr nc, @-$7E

    adc [hl]
    ldh a, [$90]
    scf
    ld l, $F0
    jr nc, jr_03B_4945

    ld e, [hl]
    ldh a, [$60]
    ld a, [hl-]
    ld l, $F0
    jr nc, @+$38

    ld l, $F0
    jr nc, @+$32

    add b
    adc [hl]
    ldh a, [$90]
    scf
    ld l, $F0
    jr nc, jr_03B_495A

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03B_496B

    ld d, h
    ldh a, [$60]
    jr nc, @-$7E

    adc [hl]
    ldh a, [$90]
    scf
    ld l, $F0
    jr nc, jr_03B_496F

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_03B_497B

    ld l, $F0
    jr nc, jr_03B_497B

jr_03B_4945:
    inc c
    ldh a, [$0C]
    scf
    inc c
    ldh a, [$0C]
    ld [hl], $16
    ldh a, [rNR23]
    jr nc, jr_03B_48D2

    adc [hl]
    ldh a, [$90]
    scf
    ld l, $F0
    jr nc, @+$38

jr_03B_495A:
    ld l, $F0
    jr nc, jr_03B_4995

    ld l, $F0
    jr nc, jr_03B_49A1

    ld l, $F0
    jr nc, jr_03B_49A1

    ld l, $F0
    jr nc, jr_03B_49B2

    inc c

jr_03B_496B:
    ldh a, [rNR23]
    ld c, b
    inc c

jr_03B_496F:
    ldh a, [$30]
    ld c, c
    ld [hl], h
    ldh a, [$78]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c

jr_03B_497B:
    ldh a, [$30]
    ld c, c
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, a
    ld a, [hl+]
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, c
    ld [hl], h
    ldh a, [$78]
    ld c, b
    inc c
    ldh a, [rNR23]

jr_03B_4995:
    ld c, b
    inc c
    ldh a, [$30]
    ld c, c
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, a
    ld a, [hl+]
    ldh a, [rP1]

jr_03B_49A1:
    rst $38
    ldh a, [rP1]
    cp h
    ld d, b
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a

jr_03B_49B2:
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    ld b, $F0
    ld b, $3C
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    ld b, $F0
    ld b, $3C
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [$36]
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
    inc c
    ldh a, [rOBP0]
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
    inc c
    ldh a, [rOBP0]
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
    inc c
    ldh a, [rOBP0]
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
    inc c
    ldh a, [rOBP0]
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
    inc c
    ldh a, [rOBP0]
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
    inc c
    ldh a, [rOBP0]
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
    inc c
    ldh a, [rOBP0]
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
    inc c
    ldh a, [rOBP0]
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
    inc c
    ldh a, [rOBP0]
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
    inc c
    ldh a, [rOBP0]
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
    dec b
    ldh a, [rTMA]
    inc a
    add b
    cp [hl]
    ldh a, [$C0]
    dec a
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, d
    ld b, [hl]
    ldh a, [rOBP0]
    dec sp
    ld l, $F0
    jr nc, @+$3E

    add b
    cp [hl]
    ldh a, [$C0]
    dec a
    ld l, $F0
    jr nc, @+$44

    ld l, $F0
    jr nc, jr_03B_4C31

    ld d, $F0
    jr jr_03B_4C38

    ld d, $F0
    jr @+$4D

    inc h
    ldh a, [$30]
    inc a
    add b
    cp [hl]
    ldh a, [$C0]
    dec a
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, d
    ld b, [hl]
    ldh a, [rOBP0]
    dec sp
    ld l, $F0
    jr nc, jr_03B_4C45

    add b
    cp [hl]
    ldh a, [$C0]
    dec a
    ld l, $F0
    jr nc, @+$44

    ld l, $F0
    jr nc, jr_03B_4C5B

    ld d, $F0
    jr jr_03B_4C62

    ld d, $F0
    jr jr_03B_4C69

    inc h
    ldh a, [$30]
    scf
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [$30]
    jr c, jr_03B_4C41

    ldh a, [rNR23]
    scf
    ld b, $F0
    inc c

jr_03B_4C31:
    jr c, jr_03B_4C39

    ldh a, [$0C]
    inc a
    ld b, $F0

jr_03B_4C38:
    inc c

jr_03B_4C39:
    ccf
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c

jr_03B_4C41:
    ld b, l
    ld b, $F0
    inc c

jr_03B_4C45:
    ld c, b
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [$30]
    jr c, jr_03B_4C69

    ldh a, [rNR23]
    scf
    ld b, $F0
    inc c
    jr c, jr_03B_4C61

jr_03B_4C5B:
    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03B_4C61:
    ccf

jr_03B_4C62:
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c

jr_03B_4C69:
    ccf
    ld b, $F0
    inc c
    inc a
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [$30]
    jr c, jr_03B_4C91

    ldh a, [rNR23]
    scf
    ld b, $F0
    inc c
    jr c, jr_03B_4C89

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03B_4C89:
    ccf
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c

jr_03B_4C91:
    ld b, l
    ld b, $F0
    inc c
    ld c, b
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [$30]
    jr c, jr_03B_4CB9

    ldh a, [rNR23]
    scf
    ld b, $F0
    inc c
    jr c, jr_03B_4CB1

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03B_4CB1:
    ccf
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c

jr_03B_4CB9:
    ccf
    ld b, $F0
    inc c
    inc a
    inc c
    ldh a, [rNR23]
    inc a
    add b
    cp [hl]
    ldh a, [$C0]
    dec a
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, d
    ld b, [hl]
    ldh a, [rOBP0]
    dec sp
    ld l, $F0
    jr nc, @+$3E

    add b
    cp [hl]
    ldh a, [$C0]
    dec a
    ld l, $F0
    jr nc, @+$44

    ld l, $F0
    jr nc, jr_03B_4D25

    ld d, $F0
    jr jr_03B_4D2C

    ld d, $F0
    jr @+$4D

    inc h
    ldh a, [$30]
    inc a
    add b
    cp [hl]
    ldh a, [$C0]
    dec a
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, d
    ld b, [hl]
    ldh a, [rOBP0]
    dec sp
    ld l, $F0
    jr nc, jr_03B_4D39

    add b
    cp [hl]
    ldh a, [$C0]
    dec a
    ld l, $F0
    jr nc, @+$44

    ld l, $F0
    jr nc, jr_03B_4D4F

    ld d, $F0
    jr jr_03B_4D56

    ld d, $F0
    jr jr_03B_4D5D

    inc h
    ldh a, [$30]
    scf
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [$30]
    jr c, jr_03B_4D35

    ldh a, [rNR23]
    scf
    ld b, $F0
    inc c

jr_03B_4D25:
    jr c, jr_03B_4D2D

    ldh a, [$0C]
    inc a
    ld b, $F0

jr_03B_4D2C:
    inc c

jr_03B_4D2D:
    ccf
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c

jr_03B_4D35:
    ld b, l
    ld b, $F0
    inc c

jr_03B_4D39:
    ld c, b
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [$30]
    jr c, jr_03B_4D5D

    ldh a, [rNR23]
    scf
    ld b, $F0
    inc c
    jr c, jr_03B_4D55

jr_03B_4D4F:
    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03B_4D55:
    ccf

jr_03B_4D56:
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c

jr_03B_4D5D:
    ccf
    ld b, $F0
    inc c
    inc a
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [$30]
    jr c, jr_03B_4D85

    ldh a, [rNR23]
    scf
    ld b, $F0
    inc c
    jr c, jr_03B_4D7D

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03B_4D7D:
    ccf
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c

jr_03B_4D85:
    ld b, l
    ld b, $F0
    inc c
    ld c, b
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [rNR23]
    scf
    inc c
    ldh a, [$30]
    jr c, jr_03B_4DAD

    ldh a, [rNR23]
    scf
    ld b, $F0
    inc c
    jr c, jr_03B_4DA5

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_03B_4DA5:
    ccf
    ld b, $F0
    inc c
    ld b, d
    ld b, $F0
    inc c

jr_03B_4DAD:
    ccf
    ld b, $F0
    inc c
    inc a
    inc c
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
    jr z, jr_03B_4DF1

    nop
    dec l
    jr nc, jr_03B_4DC6

jr_03B_4DC6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03B_4DF1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_03B_4E45

jr_03B_4E45:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    rla
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rla
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $4017
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    ld a, $04
    ld h, $07
    inc [hl]
    add hl, bc
    sub a
    ldh a, [rP1]
    xor h
    inc bc
    ld b, $F0
    jr jr_03B_4EAC

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_4EB8

    ld b, $F0
    jr nc, jr_03B_4EBC

    ld b, $F0
    jr nc, jr_03B_4EC0

    ld b, $F0
    jr jr_03B_4EC4

    ld b, $F0
    jr jr_03B_4EC8

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_4ED4

    ld b, $F0
    jr nc, jr_03B_4ED8

jr_03B_4EAC:
    ld b, $F0
    jr nc, jr_03B_4EDC

    ld b, $F0
    jr jr_03B_4EE0

    ld b, $F0
    jr jr_03B_4EE4

jr_03B_4EB8:
    ld b, $F0
    inc c
    inc l

jr_03B_4EBC:
    ld b, $F0
    inc c
    inc l

jr_03B_4EC0:
    ld b, $F0
    jr jr_03B_4EF0

jr_03B_4EC4:
    ld b, $F0
    jr nc, jr_03B_4EF4

jr_03B_4EC8:
    ld b, $F0
    jr nc, jr_03B_4EF8

    ld b, $F0
    jr jr_03B_4EFC

    ld b, $F0
    jr jr_03B_4F00

jr_03B_4ED4:
    ld b, $F0
    inc c
    inc l

jr_03B_4ED8:
    ld b, $F0
    inc c
    inc l

jr_03B_4EDC:
    ld b, $F0
    jr jr_03B_4F0C

jr_03B_4EE0:
    ld b, $F0
    jr nc, jr_03B_4F10

jr_03B_4EE4:
    ld b, $F0
    jr nc, jr_03B_4F14

    ld b, $F0
    jr jr_03B_4F18

    ld b, $F0
    jr jr_03B_4F1C

jr_03B_4EF0:
    ld b, $F0
    inc c
    inc l

jr_03B_4EF4:
    ld b, $F0
    inc c
    inc l

jr_03B_4EF8:
    ld b, $F0
    jr jr_03B_4F28

jr_03B_4EFC:
    ld b, $F0
    jr nc, jr_03B_4F2C

jr_03B_4F00:
    ld b, $F0
    jr nc, jr_03B_4F30

    ld b, $F0
    jr jr_03B_4F34

    ld b, $F0
    jr jr_03B_4F38

jr_03B_4F0C:
    ld b, $F0
    inc c
    inc l

jr_03B_4F10:
    ld b, $F0
    inc c
    inc l

jr_03B_4F14:
    ld b, $F0
    jr jr_03B_4F44

jr_03B_4F18:
    ld b, $F0
    jr nc, jr_03B_4F48

jr_03B_4F1C:
    ld b, $F0
    jr nc, jr_03B_4F4C

    ld b, $F0
    jr jr_03B_4F50

    ld b, $F0
    jr jr_03B_4F54

jr_03B_4F28:
    ld b, $F0
    inc c
    inc l

jr_03B_4F2C:
    ld b, $F0
    inc c
    inc l

jr_03B_4F30:
    ld b, $F0
    jr jr_03B_4F60

jr_03B_4F34:
    ld b, $F0
    jr nc, jr_03B_4F64

jr_03B_4F38:
    ld b, $F0
    jr nc, jr_03B_4F68

    ld b, $F0
    jr jr_03B_4F6C

    ld b, $F0
    jr jr_03B_4F70

jr_03B_4F44:
    ld b, $F0
    inc c
    inc l

jr_03B_4F48:
    ld b, $F0
    inc c
    inc l

jr_03B_4F4C:
    ld b, $F0
    jr jr_03B_4F7C

jr_03B_4F50:
    ld b, $F0
    jr nc, jr_03B_4F80

jr_03B_4F54:
    ld b, $F0
    jr nc, jr_03B_4F84

    ld b, $F0
    jr jr_03B_4F88

    ld b, $F0
    jr jr_03B_4F8C

jr_03B_4F60:
    ld b, $F0
    inc c
    inc l

jr_03B_4F64:
    ld b, $F0
    inc c
    inc l

jr_03B_4F68:
    ld b, $F0
    jr jr_03B_4F98

jr_03B_4F6C:
    ld b, $F0
    jr nc, jr_03B_4F9C

jr_03B_4F70:
    ld b, $F0
    jr nc, jr_03B_4FA0

    ld b, $F0
    jr jr_03B_4FA4

    ld b, $F0
    jr jr_03B_4FA8

jr_03B_4F7C:
    ld b, $F0
    inc c
    inc l

jr_03B_4F80:
    ld b, $F0
    inc c
    inc l

jr_03B_4F84:
    ld b, $F0
    jr jr_03B_4FB4

jr_03B_4F88:
    ld b, $F0
    jr nc, jr_03B_4FB8

jr_03B_4F8C:
    ld b, $F0
    jr nc, jr_03B_4FBC

    ld b, $F0
    jr jr_03B_4FC0

    ld b, $F0
    jr jr_03B_4FC4

jr_03B_4F98:
    ld b, $F0
    inc c
    inc l

jr_03B_4F9C:
    ld b, $F0
    inc c
    inc l

jr_03B_4FA0:
    ld b, $F0
    jr jr_03B_4FD0

jr_03B_4FA4:
    ld b, $F0
    jr nc, jr_03B_4FD4

jr_03B_4FA8:
    ld b, $F0
    jr nc, jr_03B_4FD8

    ld b, $F0
    jr jr_03B_4FDC

    ld b, $F0
    jr jr_03B_4FE0

jr_03B_4FB4:
    ld b, $F0
    inc c
    inc l

jr_03B_4FB8:
    ld b, $F0
    inc c
    inc l

jr_03B_4FBC:
    ld b, $F0
    jr jr_03B_4FEC

jr_03B_4FC0:
    ld b, $F0
    jr nc, jr_03B_4FF0

jr_03B_4FC4:
    ld b, $F0
    jr nc, jr_03B_4FF4

    ld b, $F0
    jr jr_03B_4FF8

    ld b, $F0
    jr jr_03B_4FFC

jr_03B_4FD0:
    ld b, $F0
    inc c
    inc l

jr_03B_4FD4:
    ld b, $F0
    inc c
    inc l

jr_03B_4FD8:
    ld b, $F0
    jr jr_03B_5008

jr_03B_4FDC:
    ld b, $F0
    jr nc, jr_03B_500C

jr_03B_4FE0:
    ld b, $F0
    jr nc, jr_03B_5010

    ld b, $F0
    jr jr_03B_5014

    ld b, $F0
    jr jr_03B_5018

jr_03B_4FEC:
    ld b, $F0
    inc c
    inc l

jr_03B_4FF0:
    ld b, $F0
    inc c
    inc l

jr_03B_4FF4:
    ld b, $F0
    jr jr_03B_5024

jr_03B_4FF8:
    ld b, $F0
    jr nc, jr_03B_5028

jr_03B_4FFC:
    ld b, $F0
    jr nc, jr_03B_502C

    ld b, $F0
    jr jr_03B_5030

    ld b, $F0
    jr jr_03B_5034

jr_03B_5008:
    ld b, $F0
    inc c
    inc l

jr_03B_500C:
    ld b, $F0
    inc c
    inc l

jr_03B_5010:
    ld b, $F0
    jr jr_03B_5040

jr_03B_5014:
    ld b, $F0
    jr nc, jr_03B_5044

jr_03B_5018:
    ld b, $F0
    jr nc, jr_03B_5048

    ld b, $F0
    jr jr_03B_504C

    ld b, $F0
    jr jr_03B_5050

jr_03B_5024:
    ld b, $F0
    jr jr_03B_5054

jr_03B_5028:
    ld b, $F0
    jr jr_03B_5058

jr_03B_502C:
    ld b, $F0
    inc c
    inc l

jr_03B_5030:
    ld b, $F0
    inc c
    inc l

jr_03B_5034:
    ld b, $F0
    jr jr_03B_5064

    ld b, $F0
    jr jr_03B_5068

    ld b, $F0
    jr jr_03B_506C

jr_03B_5040:
    ld b, $F0
    inc c
    inc l

jr_03B_5044:
    ld b, $F0
    inc c
    inc l

jr_03B_5048:
    ld b, $F0
    jr jr_03B_5078

jr_03B_504C:
    ld b, $F0
    jr jr_03B_507C

jr_03B_5050:
    ld b, $F0
    jr jr_03B_5080

jr_03B_5054:
    ld b, $F0
    inc c
    inc l

jr_03B_5058:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_508C

    ld b, $F0
    jr jr_03B_5090

jr_03B_5064:
    ld b, $F0
    jr jr_03B_5094

jr_03B_5068:
    ld b, $F0
    inc c
    inc l

jr_03B_506C:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_50A0

    ld b, $F0
    jr jr_03B_50A4

jr_03B_5078:
    ld b, $F0
    jr jr_03B_50A8

jr_03B_507C:
    ld b, $F0
    inc c
    inc l

jr_03B_5080:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_50B4

    ld b, $F0
    jr jr_03B_50B8

jr_03B_508C:
    ld b, $F0
    jr jr_03B_50BC

jr_03B_5090:
    ld b, $F0
    inc c
    inc l

jr_03B_5094:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_50C8

    ld b, $F0
    jr jr_03B_50CC

jr_03B_50A0:
    ld b, $F0
    jr jr_03B_50D0

jr_03B_50A4:
    ld b, $F0
    inc c
    inc l

jr_03B_50A8:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_50DC

    ld b, $F0
    jr jr_03B_50E0

jr_03B_50B4:
    ld b, $F0
    jr jr_03B_50E4

jr_03B_50B8:
    ld b, $F0
    inc c
    inc l

jr_03B_50BC:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_50F0

    ld b, $F0
    jr jr_03B_50F4

jr_03B_50C8:
    ld b, $F0
    jr jr_03B_50F8

jr_03B_50CC:
    ld b, $F0
    inc c
    inc l

jr_03B_50D0:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_5104

    ld b, $F0
    jr jr_03B_5108

jr_03B_50DC:
    ld b, $F0
    jr jr_03B_510C

jr_03B_50E0:
    ld b, $F0
    inc c
    inc l

jr_03B_50E4:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_5118

    ld b, $F0
    jr jr_03B_511C

jr_03B_50F0:
    ld b, $F0
    jr jr_03B_5120

jr_03B_50F4:
    ld b, $F0
    inc c
    inc l

jr_03B_50F8:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_512C

    ld b, $F0
    jr jr_03B_5130

jr_03B_5104:
    ld b, $F0
    jr jr_03B_5134

jr_03B_5108:
    ld b, $F0
    inc c
    inc l

jr_03B_510C:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_5140

    ld b, $F0
    jr jr_03B_5144

jr_03B_5118:
    ld b, $F0
    jr jr_03B_5148

jr_03B_511C:
    ld b, $F0
    inc c
    inc l

jr_03B_5120:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_5154

    ld b, $F0
    jr jr_03B_5158

jr_03B_512C:
    ld b, $F0
    jr jr_03B_515C

jr_03B_5130:
    ld b, $F0
    inc c
    inc l

jr_03B_5134:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_5168

    ld b, $F0
    jr jr_03B_516C

jr_03B_5140:
    ld b, $F0
    jr jr_03B_5170

jr_03B_5144:
    ld b, $F0
    inc c
    inc l

jr_03B_5148:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_03B_517C

    ld b, $F0
    jr jr_03B_5180

jr_03B_5154:
    ld b, $F0
    jr jr_03B_5184

jr_03B_5158:
    ld b, $F0
    inc c
    inc l

jr_03B_515C:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr nc, jr_03B_5190

    ld b, $F0
    jr jr_03B_5194

jr_03B_5168:
    ld b, $F0
    inc c
    inc l

jr_03B_516C:
    ld b, $F0
    inc c
    inc l

jr_03B_5170:
    ld b, $F0
    jr jr_03B_51A0

    ld b, $F0
    jr jr_03B_51A4

    ld b, $F0
    jr jr_03B_51A8

jr_03B_517C:
    ld b, $F0
    jr jr_03B_51AC

jr_03B_5180:
    ld b, $F0
    jr nc, jr_03B_51B0

jr_03B_5184:
    ld b, $F0
    jr jr_03B_51B4

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_03B_5190:
    ld b, $F0
    jr jr_03B_51C0

jr_03B_5194:
    ld b, $F0
    jr jr_03B_51C4

    ld b, $F0
    jr jr_03B_51C8

    ld b, $F0
    jr jr_03B_51CC

jr_03B_51A0:
    ld b, $F0
    jr nc, jr_03B_51D0

jr_03B_51A4:
    ld b, $F0
    jr jr_03B_51D4

jr_03B_51A8:
    ld b, $F0
    inc c
    inc l

jr_03B_51AC:
    ld b, $F0
    inc c
    inc l

jr_03B_51B0:
    ld b, $F0
    jr jr_03B_51E0

jr_03B_51B4:
    ld b, $F0
    jr jr_03B_51E4

    ld b, $F0
    jr jr_03B_51E8

    ld b, $F0
    jr jr_03B_51EC

jr_03B_51C0:
    ld b, $F0
    jr nc, jr_03B_51F0

jr_03B_51C4:
    ld b, $F0
    jr jr_03B_51F4

jr_03B_51C8:
    ld b, $F0
    inc c
    inc l

jr_03B_51CC:
    ld b, $F0
    inc c
    inc l

jr_03B_51D0:
    ld b, $F0
    jr jr_03B_5200

jr_03B_51D4:
    ld b, $F0
    jr jr_03B_5204

    ld b, $F0
    jr jr_03B_5208

    ld b, $F0
    jr jr_03B_520C

jr_03B_51E0:
    ld b, $F0
    jr nc, jr_03B_5210

jr_03B_51E4:
    ld b, $F0
    jr jr_03B_5214

jr_03B_51E8:
    ld b, $F0
    inc c
    inc l

jr_03B_51EC:
    ld b, $F0
    inc c
    inc l

jr_03B_51F0:
    ld b, $F0
    jr jr_03B_5220

jr_03B_51F4:
    ld b, $F0
    jr jr_03B_5224

    ld b, $F0
    jr jr_03B_5228

    ld b, $F0
    jr jr_03B_522C

jr_03B_5200:
    ld b, $F0
    jr nc, jr_03B_5230

jr_03B_5204:
    ld b, $F0
    jr jr_03B_5234

jr_03B_5208:
    ld b, $F0
    inc c
    inc l

jr_03B_520C:
    ld b, $F0
    inc c
    inc l

jr_03B_5210:
    ld b, $F0
    jr jr_03B_5240

jr_03B_5214:
    ld b, $F0
    jr jr_03B_5244

    ld b, $F0
    jr jr_03B_5248

    ld b, $F0
    jr jr_03B_524C

jr_03B_5220:
    ld b, $F0
    jr nc, jr_03B_5250

jr_03B_5224:
    ld b, $F0
    jr jr_03B_5254

jr_03B_5228:
    ld b, $F0
    inc c
    inc l

jr_03B_522C:
    ld b, $F0
    inc c
    inc l

jr_03B_5230:
    ld b, $F0
    jr jr_03B_5260

jr_03B_5234:
    ld b, $F0
    jr jr_03B_5264

    ld b, $F0
    jr jr_03B_5268

    ld b, $F0
    jr @+$2E

jr_03B_5240:
    ld b, $F0
    jr nc, @+$2E

jr_03B_5244:
    ld b, $F0
    jr @+$2E

jr_03B_5248:
    ld b, $F0
    inc c
    inc l

jr_03B_524C:
    ld b, $F0
    inc c
    inc l

jr_03B_5250:
    ld b, $F0
    jr @+$2E

jr_03B_5254:
    ld b, $F0
    jr jr_03B_5284

    ld b, $F0
    jr @+$2E

    ld b, $F0
    nop
    rst $38

jr_03B_5260:
    ldh a, [rP1]
    or b
    daa

jr_03B_5264:
    add b
    adc [hl]
    ldh a, [$90]

jr_03B_5268:
    dec hl
    ld l, $F0
    jr nc, jr_03B_529D

    add b
    adc [hl]
    ldh a, [$90]
    jr nc, jr_03B_5289

    ldh a, [rNR23]
    dec hl
    ld d, $F0
    jr @+$32

    add b
    adc [hl]
    ldh a, [$90]
    dec hl
    ld l, $F0
    jr nc, @+$32

    add b

jr_03B_5284:
    adc [hl]
    ldh a, [$90]
    jr nc, jr_03B_529F

jr_03B_5289:
    ldh a, [rNR23]
    dec hl
    ld d, $F0
    jr @+$32

    add b
    adc [hl]
    ldh a, [$90]
    dec hl
    ld l, $F0
    jr nc, jr_03B_52C9

    add b
    adc [hl]
    ldh a, [$90]

jr_03B_529D:
    jr nc, @+$18

jr_03B_529F:
    ldh a, [rNR23]
    dec hl
    ld d, $F0
    jr @+$32

    ld b, [hl]
    ldh a, [rOBP0]
    jr nc, jr_03B_52C1

    ldh a, [rNR23]
    ld a, [hl+]
    ld l, $F0
    jr nc, jr_03B_52DD

    ld l, $F0
    jr nc, @+$32

    ld d, $F0
    jr @+$32

    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]

jr_03B_52C1:
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_03B_52D2

    ldh a, [rNR23]

jr_03B_52C9:
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_52D2:
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]

jr_03B_52DD:
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_03B_52F2

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_52F2:
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
    jr nc, jr_03B_5312

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_5312:
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
    jr nc, jr_03B_5332

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_5332:
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
    jr nc, jr_03B_5352

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_5352:
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
    jr nc, jr_03B_5372

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_5372:
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
    jr nc, jr_03B_5392

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_5392:
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
    jr nc, jr_03B_53B2

    ldh a, [rNR23]
    jr nc, jr_03B_53B6

    ldh a, [rNR23]
    jr nc, jr_03B_53BA

    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_53B2:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_53B6:
    ld b, [hl]
    ldh a, [rOBP0]
    ld a, [hl+]

jr_03B_53BA:
    ld d, $F0
    jr jr_03B_53E8

    ld l, $F0
    jr nc, @+$2C

    ld l, $F0
    jr nc, @+$32

    ld b, [hl]
    ldh a, [rOBP0]
    jr nc, @+$18

    ldh a, [rNR23]
    jr nc, @+$30

    ldh a, [$30]
    jr nc, @+$18

    ldh a, [rNR23]
    jr nc, jr_03B_53ED

    ldh a, [rNR23]
    ld a, [hl+]
    ld b, [hl]
    ldh a, [rOBP0]
    ld a, [hl+]
    ld d, $F0
    jr jr_03B_540C

    ld b, [hl]
    ldh a, [rOBP0]
    ld a, [hl+]
    ld d, $F0

jr_03B_53E8:
    jr @+$32

    ld b, [hl]
    ldh a, [rOBP0]

jr_03B_53ED:
    jr nc, @+$18

    ldh a, [rNR23]
    jr nc, jr_03B_5421

    ldh a, [$30]
    ld sp, $F016
    jr jr_03B_542A

    ld d, $F0
    jr jr_03B_5428

    ld b, [hl]
    ldh a, [rOBP0]
    ld a, [hl+]
    ld d, $F0
    jr jr_03B_5430

    ld b, [hl]
    ldh a, [rOBP0]
    ld a, [hl+]
    ld d, $F0

jr_03B_540C:
    jr jr_03B_543E

    ld b, [hl]
    ldh a, [rOBP0]
    jr nc, @+$18

    ldh a, [rNR23]
    jr nc, jr_03B_5445

    ldh a, [$30]
    jr nc, @+$18

    ldh a, [rNR23]
    jr nc, @+$18

    ldh a, [rNR23]

jr_03B_5421:
    ld a, [hl+]
    ld b, [hl]
    ldh a, [rOBP0]
    ld a, [hl+]
    ld d, $F0

jr_03B_5428:
    jr @+$2C

jr_03B_542A:
    ld b, [hl]
    ldh a, [rOBP0]
    ld a, [hl+]
    ld d, $F0

jr_03B_5430:
    jr jr_03B_545D

    ld l, $F0
    jr nc, jr_03B_5461

    ld l, $F0
    jr nc, jr_03B_5465

    ld l, $F0
    jr nc, jr_03B_5469

jr_03B_543E:
    ld l, $F0
    jr nc, @+$2C

    dec bc
    ldh a, [rNR23]

jr_03B_5445:
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [$0C]
    ld a, [hl+]
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_03B_5466

    ldh a, [rNR23]

jr_03B_545D:
    jr nc, jr_03B_546A

    ldh a, [rNR23]

jr_03B_5461:
    jr nc, jr_03B_5479

    ldh a, [rNR23]

jr_03B_5465:
    dec hl

jr_03B_5466:
    dec bc
    ldh a, [rNR23]

jr_03B_5469:
    dec hl

jr_03B_546A:
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]

jr_03B_5479:
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_03B_548E

    ldh a, [rNR23]
    jr nc, jr_03B_5492

    ldh a, [$0C]
    jr nc, jr_03B_5496

    ldh a, [$0C]
    ld a, [hl+]

jr_03B_548E:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_5492:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_5496:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [$0C]
    ld a, [hl+]
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_03B_54B6

    ldh a, [rNR23]
    jr nc, jr_03B_54BA

    ldh a, [$0C]
    jr nc, jr_03B_54BE

    ldh a, [$0C]
    dec hl

jr_03B_54B6:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_03B_54BA:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_03B_54BE:
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_03B_54DA

    ldh a, [rNR23]
    jr nc, jr_03B_54DE

    ldh a, [rNR23]
    jr nc, jr_03B_54ED

    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_54DA:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_54DE:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [$0C]
    ld a, [hl+]
    dec bc
    ldh a, [$0C]

jr_03B_54ED:
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_03B_5502

    ldh a, [rNR23]
    jr nc, jr_03B_5506

    ldh a, [$0C]
    jr nc, jr_03B_550A

    ldh a, [$0C]
    dec hl

jr_03B_5502:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_03B_5506:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_03B_550A:
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_03B_552A

    ldh a, [rNR23]
    jr nc, jr_03B_552E

    ldh a, [$0C]
    jr nc, jr_03B_5532

    ldh a, [$0C]
    ld a, [hl+]

jr_03B_552A:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_552E:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]

jr_03B_5532:
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [$0C]
    ld a, [hl+]
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_03B_5552

    ldh a, [rNR23]
    jr nc, jr_03B_5556

    ldh a, [$0C]
    jr nc, jr_03B_555A

    ldh a, [$0C]
    dec hl

jr_03B_5552:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_03B_5556:
    dec bc
    ldh a, [rNR23]
    dec hl

jr_03B_555A:
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    jr nc, jr_03B_5595

    ldh a, [$30]
    jr nc, jr_03B_5595

    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    jp $8051


    cp [hl]
    ldh a, [$C0]
    ld b, h
    add b
    adc [hl]
    ldh a, [$90]
    ld b, d
    ld l, $F0
    jr nc, @+$45

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, h
    add b
    adc [hl]
    ldh a, [$90]
    ld b, d
    ld l, $F0
    jr nc, @+$45

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, h
    add b
    adc [hl]

jr_03B_5595:
    ldh a, [$90]
    ld b, d
    ld l, $F0
    jr nc, jr_03B_55DF

    ld e, [hl]
    ldh a, [$60]
    ld b, h
    ld l, $F0
    jr nc, jr_03B_55EB

    ld l, $F0
    jr nc, jr_03B_55F0

    ld l, $F0
    jr nc, @+$51

    ld l, $F0
    jr nc, jr_03B_55FE

    ld l, $F0
    jr nc, jr_03B_5604

    ld l, $F0

jr_03B_55B6:
    jr nc, @+$51

    ld l, $F0
    jr nc, jr_03B_5604

    ld l, $F0
    jr nc, jr_03B_5604

    ld l, $F0
    jr nc, jr_03B_5606

    jr z, jr_03B_55B6

    ld a, [hl+]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b
    ld l, $F0
    jr nc, jr_03B_561F

    ld l, $F0
    jr nc, @+$50

    ld l, $F0
    jr nc, jr_03B_5628

    ld l, $F0
    jr nc, @+$51

    inc c
    ldh a, [rNR23]

jr_03B_55DF:
    ld d, b
    inc c
    ldh a, [rNR23]
    ld d, l
    inc c
    ldh a, [rNR23]
    ld d, b
    inc c
    ldh a, [rNR23]

jr_03B_55EB:
    ld c, a
    ld e, b
    ldh a, [$5A]
    ld b, a

jr_03B_55F0:
    dec b
    ldh a, [rTMA]
    ld c, b
    ld l, $F0
    jr nc, jr_03B_5647

    ld l, $F0
    jr nc, @+$50

    ld l, $F0

jr_03B_55FE:
    jr nc, jr_03B_5650

    ld l, $F0
    jr nc, jr_03B_5653

jr_03B_5604:
    ld l, $F0

jr_03B_5606:
    jr nc, jr_03B_5650

    ld l, $F0

jr_03B_560A:
    jr nc, jr_03B_5650

    ld l, $F0
    jr nc, @+$44

    ld l, $F0
    jr nc, @+$4A

    ld l, $F0
    jr nc, jr_03B_5667

    jr z, jr_03B_560A

    ld a, [hl+]
    ld c, l
    dec b
    ldh a, [rTMA]

jr_03B_561F:
    ld c, [hl]
    inc c
    ldh a, [rNR23]
    ld c, e
    inc c
    ldh a, [rNR23]
    ld c, d

jr_03B_5628:
    ld l, $F0
    jr nc, jr_03B_5674

    add b
    cp [hl]
    ldh a, [$C0]
    ld c, c
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    jr @+$4B

    ld b, $F0
    jr nc, @+$4B

    ld b, $F0
    inc h
    ld c, c
    ld b, $F0

jr_03B_5647:
    inc h
    ld c, c
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c

jr_03B_5650:
    ld c, b
    ld b, $F0

jr_03B_5653:
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    jr jr_03B_56A5

    ld b, $F0
    jr nc, jr_03B_56A9

    ld b, $F0
    inc h
    ld c, b
    ld b, $F0

jr_03B_5667:
    inc h
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c

jr_03B_5674:
    ld c, c
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    jr @+$4B

    ld b, $F0
    jr nc, @+$4B

    ld b, $F0
    inc h
    ld c, c
    ld b, $F0
    inc h
    ld c, c
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    jr jr_03B_56E5

    ld b, $F0
    jr nc, jr_03B_56E9

    ld b, $F0
    inc h
    ld c, b

jr_03B_56A5:
    ld b, $F0
    inc h
    ld c, b

jr_03B_56A9:
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    jr @+$4B

    ld b, $F0
    jr nc, @+$4B

    ld b, $F0
    inc h
    ld c, c
    ld b, $F0
    inc h
    ld c, c
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    jr jr_03B_5725

    ld b, $F0
    jr nc, jr_03B_5729

    ld b, $F0
    inc h
    ld c, b

jr_03B_56E5:
    ld b, $F0
    inc h
    ld c, b

jr_03B_56E9:
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    jr @+$4B

    ld b, $F0
    jr nc, @+$4B

    ld b, $F0
    inc h
    ld c, c
    ld b, $F0
    inc h
    ld c, c
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, [hl]
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, e

jr_03B_5725:
    ld b, $F0
    inc c
    ld c, [hl]

jr_03B_5729:
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, [hl]
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, [hl]
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, b
    ld b, [hl]
    ldh a, [rOBP0]
    ld d, b
    ld d, $F0
    jr @+$51

    ld l, $F0
    jr nc, jr_03B_57A5

    ld l, $F0
    jr nc, @+$4B

    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, jr_03B_57B1

    ld l, $F0
    jr nc, @+$51

    ld l, $F0

jr_03B_576F:
    jr nc, jr_03B_57C1

    ld b, [hl]
    ldh a, [rOBP0]
    ld d, b
    ld d, $F0
    jr @+$51

    ld l, $F0
    jr nc, jr_03B_57C5

    jr z, jr_03B_576F

    ld a, [hl+]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, e
    ld l, $F0
    jr nc, jr_03B_57D3

    ld l, $F0
    jr nc, jr_03B_57D5

    ld e, [hl]
    ldh a, [$60]
    ld d, b
    ld b, [hl]
    ldh a, [rOBP0]
    ld d, b
    ld d, $F0
    jr jr_03B_57E8

    ld l, $F0
    jr nc, jr_03B_57E5

    ld l, $F0
    jr nc, jr_03B_57EA

    ld l, $F0
    jr nc, jr_03B_57EC

jr_03B_57A5:
    ld l, $F0
    jr nc, jr_03B_57F1

    ld l, $F0
    jr nc, jr_03B_57FC

    ld l, $F0

jr_03B_57AF:
    jr nc, jr_03B_5801

jr_03B_57B1:
    ld b, [hl]
    ldh a, [rOBP0]
    ld d, b
    ld d, $F0
    jr jr_03B_5808

    ld l, $F0
    jr nc, jr_03B_5811

    jr z, jr_03B_57AF

    ld a, [hl+]
    ld b, a

jr_03B_57C1:
    dec b
    ldh a, [rTMA]
    ld c, b

jr_03B_57C5:
    ld l, $F0
    jr nc, jr_03B_5810

    ld l, $F0
    jr nc, jr_03B_5815

    ld e, d
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]

jr_03B_57D3:
    ret z

    ld d, b

jr_03B_57D5:
    ld [de], a
    ldh a, [rNR23]
    ld c, c
    ld [de], a
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, b

jr_03B_57E5:
    inc c
    ldh a, [rNR23]

jr_03B_57E8:
    ld c, c
    inc c

jr_03B_57EA:
    ldh a, [rNR23]

jr_03B_57EC:
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, e

jr_03B_57F1:
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]

jr_03B_57FC:
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, c

jr_03B_5801:
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]

jr_03B_5808:
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]

jr_03B_5810:
    ld b, e

jr_03B_5811:
    inc c
    ldh a, [rNR23]
    ld c, b

jr_03B_5815:
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, c
    inc c
    ldh a, [rNR23]
    ld c, [hl]
    inc c
    ldh a, [rNR23]
    ld c, [hl]
    inc c
    ldh a, [rNR23]
    ld c, a
    ld l, $F0
    jr nc, jr_03B_58EC

    ld l, $F0
    jr nc, jr_03B_58E4

    halt
    ldh a, [$78]
    jr c, jr_03B_58E0

    ldh a, [$30]
    ld [hl], $16
    ldh a, [rNR23]
    scf
    halt
    ldh a, [$78]
    ccf
    ld l, $F0
    jr nc, jr_03B_58FC

    ld d, $F0
    jr jr_03B_5901

    halt
    ldh a, [$78]
    ld b, h
    ld l, $F0
    jr nc, jr_03B_590F

    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld b, d
    inc c
    ldh a, [rNR23]
    ld b, e
    inc c
    ldh a, [rNR23]
    ld b, h
    inc c
    ldh a, [rNR23]

jr_03B_58E0:
    ld b, e
    inc c
    ldh a, [rNR23]

jr_03B_58E4:
    ld b, c
    inc c
    ldh a, [rNR23]
    ccf
    inc c
    ldh a, [rNR23]

jr_03B_58EC:
    dec sp
    inc c
    ldh a, [rNR23]
    scf
    halt
    ldh a, [$78]
    jr c, @+$30

    ldh a, [$30]
    ld [hl], $16
    ldh a, [rNR23]

jr_03B_58FC:
    scf
    halt
    ldh a, [$78]
    ccf

jr_03B_5901:
    ld l, $F0
    jr nc, @+$3D

    ld d, $F0
    jr jr_03B_5945

    halt
    ldh a, [$78]
    ld b, e
    ld d, $F0

jr_03B_590F:
    jr jr_03B_5953

    ld d, $F0
    jr jr_03B_5959

    ld d, $F0
    jr jr_03B_595C

    ld l, $F0
    jr nc, jr_03B_595C

    ld l, $F0
    jr nc, jr_03B_595C

    ld l, $F0
    jr nc, jr_03B_5961

    ld d, $F0
    jr nc, jr_03B_596D

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    jr jr_03B_5979

    ld b, $F0
    jr nc, jr_03B_597D

    ld b, $F0
    inc h
    ld b, h
    ld b, $F0
    jr jr_03B_5985

    ld b, $F0
    inc c
    ld b, [hl]

jr_03B_5945:
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    inc a
    ld b, $F0

jr_03B_5953:
    inc c
    ccf
    ld b, $F0
    inc c
    ld b, e

jr_03B_5959:
    ld b, $F0
    inc c

jr_03B_595C:
    ld c, b
    ld b, $F0
    inc c
    ccf

jr_03B_5961:
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e

jr_03B_596D:
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e

jr_03B_5979:
    ld b, $F0
    inc c
    ld c, a

jr_03B_597D:
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, b

jr_03B_5985:
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    jr jr_03B_59DD

    ld b, $F0
    jr nc, jr_03B_59E1

    ld b, $F0
    inc h
    ld b, h
    ld b, $F0
    jr jr_03B_59E9

    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, e
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
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e

jr_03B_59DD:
    ld b, $F0
    inc c
    ld c, a

jr_03B_59E1:
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, b

jr_03B_59E9:
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    jr jr_03B_5A41

    ld b, $F0
    jr nc, jr_03B_5A45

    ld b, $F0
    inc h
    ld b, h
    ld b, $F0
    jr jr_03B_5A4D

    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, e
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
    ld b, e
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e

jr_03B_5A41:
    ld b, $F0
    inc c
    ld c, a

jr_03B_5A45:
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c
    ld c, b

jr_03B_5A4D:
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    jr jr_03B_5AA5

    ld b, $F0
    jr nc, jr_03B_5AA9

    ld b, $F0
    inc h
    ld b, h
    ld b, $F0
    jr jr_03B_5AB1

    ld b, $F0
    inc c
    ld b, [hl]
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld b, e
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
    ld b, e
    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d

jr_03B_5AA5:
    ld b, $F0
    inc c
    ld c, a

jr_03B_5AA9:
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a

jr_03B_5AB1:
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld c, b
    ld l, $F0
    jr nc, @+$4D

    ld d, $F0
    jr jr_03B_5B0B

    ld d, $F0
    jr jr_03B_5B0D

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_03B_5B11

    ld l, $F0
    jr nc, jr_03B_5B13

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_03B_5B21

    ld l, $F0
    jr nc, jr_03B_5B25

    ld l, $F0
    jr nc, @+$4D

    ld d, $F0
    jr jr_03B_5B2F

    ld d, $F0
    jr jr_03B_5B31

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_03B_5B35

    ld l, $F0
    jr nc, jr_03B_5B37

    ld l, $F0
    jr nc, @+$45

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld l, $F0
    jr nc, @+$4D

    ld d, $F0
    jr jr_03B_5B4F

    ld d, $F0
    jr jr_03B_5B51

    ld l, $F0

jr_03B_5B0B:
    jr nc, @+$45

jr_03B_5B0D:
    ld l, $F0
    jr nc, jr_03B_5B55

jr_03B_5B11:
    ld l, $F0

jr_03B_5B13:
    jr nc, jr_03B_5B57

    ld l, $F0
    jr nc, jr_03B_5B5C

    ld l, $F0
    jr nc, jr_03B_5B65

    ld l, $F0
    jr nc, jr_03B_5B69

jr_03B_5B21:
    ld l, $F0
    jr nc, jr_03B_5B70

jr_03B_5B25:
    ld d, $F0
    jr jr_03B_5B73

    ld d, $F0
    jr jr_03B_5B75

    ld l, $F0

jr_03B_5B2F:
    jr nc, jr_03B_5B74

jr_03B_5B31:
    ld l, $F0
    jr nc, jr_03B_5B79

jr_03B_5B35:
    ld l, $F0

jr_03B_5B37:
    jr nc, jr_03B_5B7B

    ld l, $F0
    jr nc, jr_03B_5B80

    ld e, d
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
    jr z, jr_03B_5B7C

    nop
    dec l

jr_03B_5B4F:
    jr nc, jr_03B_5B51

jr_03B_5B51:
    nop
    nop
    nop
    nop

jr_03B_5B55:
    nop
    nop

jr_03B_5B57:
    nop
    nop
    nop
    nop
    nop

jr_03B_5B5C:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03B_5B65:
    nop
    nop
    nop
    nop

jr_03B_5B69:
    nop
    nop
    dec hl
    dec hl
    nop
    nop
    nop

jr_03B_5B70:
    nop
    nop
    nop

jr_03B_5B73:
    nop

jr_03B_5B74:
    nop

jr_03B_5B75:
    nop
    nop
    nop
    nop

jr_03B_5B79:
    nop
    nop

jr_03B_5B7B:
    nop

jr_03B_5B7C:
    nop
    nop
    nop
    nop

jr_03B_5B80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    or b
    nop
    ld c, $00
    jr jr_03B_5BD0

jr_03B_5BD0:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    ld [de], a
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [de], a
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0012
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    cp $00
    nop
    nop
    nop
    nop
    ld a, $03
    ld l, $05
    add d
    add hl, bc
    ld l, $B0
    nop
    xor h
    inc bc
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$30B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$30B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$30B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$30B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$30B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$30B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$30B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$24B0], sp
    inc l
    ld [$0CB0], sp
    inc l
    ld [$18B0], sp
    inc l
    ld [$00F0], sp
    rst $38
    ldh a, [rP1]
    or b
    daa
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    inc l
    ld l, $F0
    jr nc, jr_03B_5F36

    ld l, $F0
    jr nc, jr_03B_5F3F

    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    dec l
    ld l, $F0
    jr nc, @+$31

    ld l, $F0
    jr nc, jr_03B_5F57

    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]

jr_03B_5F36:
    inc l
    ld l, $F0
    jr nc, jr_03B_5F66

    ld l, $F0
    jr nc, jr_03B_5F6F

jr_03B_5F3F:
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [rNR23]
    dec l
    ld l, $F0
    jr nc, jr_03B_5F82

    ld l, $F0
    jr nc, @+$32

jr_03B_5F57:
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    cpl
    dec bc
    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]

jr_03B_5F66:
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_03B_5F77

    ldh a, [$30]
    dec hl

jr_03B_5F6F:
    dec bc
    ldh a, [$3C]
    dec hl
    dec bc
    ldh a, [$0C]
    ld a, [hl+]

jr_03B_5F77:
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    inc l
    dec bc
    ldh a, [rNR23]

jr_03B_5F82:
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_03B_5F93

    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    cpl
    dec bc
    ldh a, [$30]
    dec hl

jr_03B_5F93:
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR50]
    dec hl
    dec bc
    ldh a, [$0C]
    ld a, [hl+]
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    inc l
    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld l, $0B
    ldh a, [$0C]
    cpl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_03B_5FCB

    ldh a, [rNR23]
    jr nc, jr_03B_5FCF

    ldh a, [rNR23]
    jr nc, jr_03B_5FD3

    ldh a, [$30]
    dec hl

jr_03B_5FCB:
    dec bc
    ldh a, [$30]
    cpl

jr_03B_5FCF:
    dec bc
    ldh a, [$30]
    dec hl

jr_03B_5FD3:
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_03B_5FE7

    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$3C]
    dec hl
    dec bc
    ldh a, [$0C]
    ld a, [hl+]

jr_03B_5FE7:
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    inc l
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_03B_6003

    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [$30]
    cpl
    dec bc
    ldh a, [$30]
    dec hl

jr_03B_6003:
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR50]
    dec hl
    dec bc
    ldh a, [$0C]
    ld a, [hl+]
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [$0C]
    inc l
    dec bc
    ldh a, [$0C]
    dec l
    dec bc
    ldh a, [$0C]
    ld l, $0B
    ldh a, [$0C]
    cpl
    dec bc
    ldh a, [$0C]
    jr nc, @+$0D

    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_03B_603B

    ldh a, [rNR23]
    jr nc, jr_03B_603F

    ldh a, [rNR23]
    ld sp, $F02E
    jr nc, jr_03B_606B

jr_03B_603B:
    dec bc
    ldh a, [$30]
    dec hl

jr_03B_603F:
    ld l, $F0
    jr nc, jr_03B_6073

    dec bc
    ldh a, [$30]
    dec hl
    ld l, $F0
    jr nc, @+$34

    dec bc
    ldh a, [$30]
    dec hl
    ld l, $F0
    jr nc, @+$34

    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    ld sp, $F02E
    jr nc, jr_03B_608F

    dec bc
    ldh a, [$30]
    dec hl
    ld l, $F0
    jr nc, jr_03B_6097

    dec bc
    ldh a, [$30]
    dec hl

jr_03B_606B:
    ld l, $F0
    jr nc, @+$34

    dec bc
    ldh a, [$30]
    dec hl

jr_03B_6073:
    ld l, $F0
    jr nc, @+$34

    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    ld sp, $F02E
    jr nc, jr_03B_60B3

    dec bc
    ldh a, [$30]
    dec hl
    ld l, $F0
    jr nc, jr_03B_60BB

    dec bc
    ldh a, [$30]
    dec hl

jr_03B_608F:
    ld l, $F0
    jr nc, @+$34

    dec bc
    ldh a, [$30]
    dec hl

jr_03B_6097:
    ld l, $F0
    jr nc, @+$34

    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    ld sp, $F02E
    jr nc, jr_03B_60D7

    dec bc
    ldh a, [$30]
    dec hl
    ld l, $F0
    jr nc, jr_03B_60DF

    dec bc
    ldh a, [$30]
    dec hl

jr_03B_60B3:
    ld l, $F0
    jr nc, @+$34

    dec bc
    ldh a, [$30]
    dec hl

jr_03B_60BB:
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_03B_60D7

    ldh a, [rNR50]
    jr nc, jr_03B_60DB

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_03B_60D7:
    dec bc
    ldh a, [rNR23]
    ld [hl-], a

jr_03B_60DB:
    dec bc
    ldh a, [rNR50]
    ld [hl-], a

jr_03B_60DF:
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_03B_60F7

    ldh a, [rNR50]
    jr nc, jr_03B_60FB

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_03B_60F7:
    dec bc
    ldh a, [rNR23]
    ld [hl-], a

jr_03B_60FB:
    dec bc
    ldh a, [rNR50]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_03B_6117

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_03B_6117:
    dec bc
    ldh a, [rNR23]
    ld sp, $F00B
    inc h
    ld sp, $F00B
    inc c
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    ld [hl-], a
    dec bc
    ldh a, [rNR50]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_03B_6147

    ldh a, [$30]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rP1]
    rst $38

jr_03B_6147:
    ldh a, [rNR23]
    jp $0951


    ldh a, [$30]
    ld b, e
    add hl, bc
    ldh a, [rNR12]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    jr z, @-$0E

    ld a, [hl+]
    ld b, e
    ld l, $F0
    ld c, b
    ld b, e
    add hl, bc
    ldh a, [$30]
    ld b, e
    add hl, bc
    ldh a, [rNR12]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, l
    jr z, @-$0E

    ld a, [hl+]
    ld b, a
    ld l, $F0
    ld c, b
    ld b, e
    add hl, bc
    ldh a, [$30]
    ld b, e
    add hl, bc
    ldh a, [rNR12]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    jr z, @-$0E

    ld a, [hl+]
    ld b, e
    ld l, $F0
    ld c, b
    ld b, e
    add hl, bc
    ldh a, [$30]
    ld b, e
    add hl, bc
    ldh a, [rNR12]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, l
    jr z, @-$0E

    ld a, [hl+]
    ld b, a
    ld l, $F0
    jr nc, jr_03B_61F3

    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, a
    ld l, $F0
    jr nc, jr_03B_6213

    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR50]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, h
    ld d, $F0
    jr jr_03B_6232

    dec bc
    ldh a, [rNR23]
    ld c, b

jr_03B_61F3:
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, a
    ld l, $F0
    inc a
    ld b, e

jr_03B_6213:
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [rNR23]

jr_03B_6232:
    ld b, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$30]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, a
    ld l, $F0
    jr nc, jr_03B_62A3

    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR50]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, h
    ld d, $F0
    jr jr_03B_62C2

    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, a
    ld l, $F0
    inc a
    ld b, e

jr_03B_62A3:
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [rNR23]

jr_03B_62C2:
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [$30]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, b
    dec bc
    ldh a, [$30]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld c, b
    dec bc
    ldh a, [$30]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, b
    dec bc
    ldh a, [$30]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld c, b
    dec bc
    ldh a, [$30]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, b
    dec bc
    ldh a, [$30]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld c, b
    dec bc
    ldh a, [$30]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, c
    inc b
    ldh a, [rTMA]
    ld c, b
    dec bc
    ldh a, [$30]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld b, a
    inc b
    ldh a, [rTMA]
    ld c, b
    dec bc
    ldh a, [$30]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, a
    ld l, $F0
    ld c, b
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld b, e
    ld l, $F0
    ld c, b
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$0C]
    ld c, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld d, b
    ld l, $F0
    ld c, b
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
    ldh a, [rNR23]
    ld d, h
    dec bc
    ldh a, [rP1]
    rst $38
    ldh a, [rNR23]
    cp a
    ld d, b
    ld [$30F0], sp
    ccf
    ld [$18F0], sp
    ld b, c
    ld l, $F0
    jr nc, jr_03B_6542

    ld l, $F0
    ld c, b
    ccf
    ld [$30F0], sp
    ccf
    ld [$18F0], sp
    ld b, c
    ld l, $F0
    jr nc, jr_03B_6556

    ld l, $F0
    ld c, b
    ccf
    ld [$30F0], sp
    ccf
    ld [$18F0], sp
    ld b, c
    ld l, $F0
    jr nc, jr_03B_6562

    ld l, $F0
    ld c, b
    ccf
    ld [$30F0], sp
    ccf
    ld [$18F0], sp
    ld b, c
    ld l, $F0
    jr nc, jr_03B_6576

    ld l, $F0
    ld c, b
    ccf
    ld [$18F0], sp
    inc a
    ld [$18F0], sp
    ld b, e
    ld [$30F0], sp

jr_03B_6542:
    dec sp
    ld [$18F0], sp
    ld a, $08
    ldh a, [rNR23]
    ld b, e
    ld [$30F0], sp
    ccf
    ld [$18F0], sp
    inc a
    ld [$18F0], sp

jr_03B_6556:
    ld b, e
    ld [$30F0], sp
    dec sp
    ld [$18F0], sp
    ld a, $08
    ldh a, [rNR23]

jr_03B_6562:
    ld b, e
    ld [$30F0], sp
    ccf
    ld [$18F0], sp
    inc a
    ld [$18F0], sp
    ld b, e
    ld [$30F0], sp
    dec sp
    ld [$18F0], sp

jr_03B_6576:
    ld a, $08
    ldh a, [rNR23]
    ld b, e
    ld [$30F0], sp
    dec sp
    ld [$18F0], sp
    ld a, $08
    ldh a, [rNR23]
    ld b, e
    ld [$18F0], sp
    ld c, b
    ld [$18F0], sp
    ld b, e
    ld [$18F0], sp
    inc a
    ld [$3CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
    ld [$18F0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$18F0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
    ld [$18F0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
    ld [$18F0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    ld d, e
    ld [$0CF0], sp
    ld d, d
    ld [$0CF0], sp
    ld d, c
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld c, [hl]
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld b, h
    ld l, $F0
    jr nc, @+$45

    dec bc
    ldh a, [$30]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$30]
    ld a, $0B
    ldh a, [rNR23]
    dec sp
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [$0C]
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld b, h
    ld l, $F0
    jr nc, @+$45

    dec bc
    ldh a, [$30]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$30]
    ld a, $0B
    ldh a, [rNR23]
    dec sp
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, a
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld b, h
    ld l, $F0
    jr nc, jr_03B_6752

    dec bc
    ldh a, [$30]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ccf
    dec bc
    ldh a, [$30]
    ld a, $0B
    ldh a, [$60]
    ld b, a
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
    ld [$0CF0], sp
    ld b, h
    ld l, $F0
    jr nc, jr_03B_678A

    dec bc
    ldh a, [$30]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]

jr_03B_6752:
    ccf
    dec bc
    ldh a, [$30]
    ld a, $0B
    ldh a, [rNR23]
    dec sp
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, a
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
    ld [$18F0], sp
    inc a
    ld [$0CF0], sp

jr_03B_678A:
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$18F0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$18F0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$18F0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$18F0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$18F0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$18F0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$18F0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$18F0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$18F0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$18F0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$18F0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$18F0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$18F0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    ld d, e
    ld [$0CF0], sp
    ld d, d
    ld [$0CF0], sp
    ld d, c
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld c, [hl]
    ld [$0CF0], sp
    ld c, a
    ld [$00F0], sp
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
    jr z, jr_03B_688A

    nop
    dec l
    jr nc, jr_03B_685F

jr_03B_685F:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03B_688A:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [$0E00]
    nop
    dec de
    nop
    jr z, jr_03B_68E0

jr_03B_68E0:
    dec [hl]
    nop
    nop
    rlca
    ld bc, $0680
    dec de
    nop
    cp $00
    inc bc
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0480
    dec de
    nop
    cp $00
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0280
    dec de
    nop
    cp $00
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $8001
    nop
    dec de
    nop
    cp $00
    inc bc
    nop
    nop
    nop
    ld d, d
    inc bc
    pop bc
    inc b
    ld bc, $C805
    dec b
    adc $07
    ld sp, hl
    rlca
    rst $38
    inc c
    halt
    ldh a, [rP1]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [$30]
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
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    and [hl]
    inc bc
    ld b, $F0
    jr jr_03B_6CC2

    ld b, $F0
    jr nc, jr_03B_6CC6

    ld b, $F0
    jr @+$28

    ld b, $F0
    jr @+$28

    ld b, $F0
    jr @+$28

    ld b, $F0
    jr nc, jr_03B_6CD6

    ld b, $F0
    jr jr_03B_6CDA

    ld b, $F0
    jr nc, jr_03B_6CDE

    ld b, $F0
    jr @+$28

    ld b, $F0
    jr jr_03B_6CE6

    ld b, $F0

jr_03B_6CC2:
    jr jr_03B_6CEA

    ld b, $F0

jr_03B_6CC6:
    inc c
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06

jr_03B_6CD1:
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]

jr_03B_6CD6:
    ld l, $46
    ldh a, [rOBP0]

jr_03B_6CDA:
    ld [hl-], a
    ld c, b
    ldh a, [rOBP0]

jr_03B_6CDE:
    dec [hl]
    jr nc, jr_03B_6CD1

    jr nc, @+$35

    ld c, b
    ldh a, [rOBP0]

jr_03B_6CE6:
    scf
    ld b, [hl]
    ldh a, [rOBP0]

jr_03B_6CEA:
    ld a, [hl-]
    jr nc, @-$0E

    jr nc, @+$30

    ld c, b
    ldh a, [rOBP0]
    ld [hl-], a
    ld b, [hl]
    ldh a, [rOBP0]
    dec [hl]
    jr nc, @-$0E

    jr nc, jr_03B_6D24

    ld l, $F0
    jr nc, @+$37

    jr nc, @-$0E

    jr nc, @+$35

    jr nc, @-$0E

jr_03B_6D05:
    jr nc, jr_03B_6D37

    ld l, $F0
    jr nc, jr_03B_6D39

    ld c, b
    ldh a, [rOBP0]
    ld [hl-], a
    ld c, b
    ldh a, [rOBP0]
    dec [hl]
    jr nc, jr_03B_6D05

    jr nc, @+$35

    ld c, b
    ldh a, [rOBP0]
    scf
    ld c, b
    ldh a, [rOBP0]
    ld a, [hl-]
    jr nc, @-$0E

jr_03B_6D21:
    jr nc, @+$30

    ld c, b

jr_03B_6D24:
    ldh a, [rOBP0]
    ld [hl-], a
    ld c, b
    ldh a, [rOBP0]
    dec [hl]
    jr nc, @-$0E

    jr nc, @+$2B

    jr nc, jr_03B_6D21

    jr nc, jr_03B_6D68

    jr nc, @-$0E

    jr nc, jr_03B_6D6A

jr_03B_6D37:
    jr nc, @-$0E

jr_03B_6D39:
    jr nc, jr_03B_6D6B

    ld l, $F0
    jr nc, @+$30

    ld c, b
    ldh a, [rOBP0]
    ld [hl-], a
    ld c, b
    ldh a, [rOBP0]
    dec [hl]
    jr nc, jr_03B_6D39

jr_03B_6D49:
    jr nc, jr_03B_6D7E

    ld b, [hl]
    ldh a, [rOBP0]
    scf
    ld c, b
    ldh a, [rOBP0]
    ld a, [hl-]
    jr nc, @-$0E

    jr nc, @+$30

    jr nc, jr_03B_6D49

    jr nc, jr_03B_6D90

    ld l, $F0
    jr nc, jr_03B_6D88

    jr nc, @-$0E

jr_03B_6D61:
    jr nc, @+$37

    ld l, $F0
    jr nc, @+$30

    ld c, b

jr_03B_6D68:
    ldh a, [rOBP0]

jr_03B_6D6A:
    dec [hl]

jr_03B_6D6B:
    ld b, [hl]
    ldh a, [rOBP0]
    add hl, hl
    jr jr_03B_6D61

jr_03B_6D71:
    jr @+$37

    ld d, $F0
    jr jr_03B_6DA5

    ld c, b
    ldh a, [rOBP0]
    ld [hl-], a
    ld c, b
    ldh a, [rOBP0]

jr_03B_6D7E:
    dec [hl]
    jr nc, jr_03B_6D71

    jr nc, @+$35

    ld c, b
    ldh a, [rOBP0]
    scf
    ld c, b

jr_03B_6D88:
    ldh a, [rOBP0]
    ld a, [hl-]
    jr nc, @-$0E

jr_03B_6D8D:
    jr nc, @+$30

    ld c, b

jr_03B_6D90:
    ldh a, [rOBP0]
    ld [hl-], a
    ld c, b
    ldh a, [rOBP0]
    dec [hl]
    jr nc, @-$0E

jr_03B_6D99:
    jr nc, @+$2B

    jr nc, jr_03B_6D8D

    jr nc, jr_03B_6DD4

    jr nc, @-$0E

    jr nc, jr_03B_6DD6

    jr nc, @-$0E

jr_03B_6DA5:
    jr nc, jr_03B_6DD7

    jr jr_03B_6D99

    jr nc, @+$30

    ld c, b
    ldh a, [rOBP0]
    ld [hl-], a
    ld c, b
    ldh a, [rOBP0]
    dec [hl]
    jr nc, jr_03B_6DA5

jr_03B_6DB5:
    jr nc, jr_03B_6DEA

    ld b, [hl]
    ldh a, [rOBP0]
    scf
    ld c, b
    ldh a, [rOBP0]
    ld a, [hl-]
    jr nc, @-$0E

    jr nc, @+$30

    jr nc, jr_03B_6DB5

    jr nc, jr_03B_6DFC

    ld l, $F0
    jr nc, @+$2B

    jr nc, @-$0E

jr_03B_6DCD:
    jr nc, @+$37

    ld l, $F0
    jr nc, @+$30

    ld c, b

jr_03B_6DD4:
    ldh a, [rOBP0]

jr_03B_6DD6:
    dec [hl]

jr_03B_6DD7:
    ld b, [hl]
    ldh a, [rOBP0]
    add hl, hl
    jr jr_03B_6DCD

jr_03B_6DDD:
    jr @+$37

    ld d, $F0
    jr jr_03B_6E16

    jr @-$0E

    inc h
    inc sp
    ld [de], a
    ldh a, [$9C]

jr_03B_6DEA:
    ld [hl-], a
    jr jr_03B_6DDD

    inc h
    ld [hl-], a
    ld [de], a
    ldh a, [$9C]
    ld sp, $F018

jr_03B_6DF5:
    inc h
    ld sp, $F012
    sbc h
    jr nc, @+$1A

jr_03B_6DFC:
    ldh a, [rNR50]
    jr nc, jr_03B_6E12

    ldh a, [$9C]
    inc sp
    jr jr_03B_6DF5

    inc h
    inc sp
    ld [de], a
    ldh a, [$9C]
    ld [hl-], a
    jr @-$0E

    inc h
    ld [hl-], a
    ld [de], a
    ldh a, [$9C]

jr_03B_6E12:
    ld sp, $F018
    inc h

jr_03B_6E16:
    ld sp, $F012

jr_03B_6E19:
    sbc h
    jr nc, jr_03B_6E34

    ldh a, [rNR50]
    jr nc, jr_03B_6E32

    ldh a, [rNR50]
    jr nc, jr_03B_6E3C

    ldh a, [rNR23]
    dec [hl]
    jr nc, jr_03B_6E19

jr_03B_6E29:
    jr nc, @+$2B

    ld l, $F0
    jr nc, jr_03B_6E5D

    ld c, b
    ldh a, [rOBP0]

jr_03B_6E32:
    ld [hl-], a
    ld c, b

jr_03B_6E34:
    ldh a, [rOBP0]
    dec [hl]
    jr nc, jr_03B_6E29

    jr nc, @+$35

    ld c, b

jr_03B_6E3C:
    ldh a, [rOBP0]
    scf
    ld c, b
    ldh a, [rOBP0]
    ld a, [hl-]
    jr nc, @-$0E

jr_03B_6E45:
    jr nc, @+$30

    ld c, b
    ldh a, [rOBP0]
    ld [hl-], a
    ld c, b
    ldh a, [rOBP0]
    dec [hl]
    jr nc, @-$0E

    jr nc, @+$2B

    jr nc, jr_03B_6E45

    jr nc, jr_03B_6E8C

    jr nc, @-$0E

    jr nc, jr_03B_6E8E

    jr nc, @-$0E

jr_03B_6E5D:
    jr nc, jr_03B_6E8F

    ld l, $F0
    jr nc, @+$30

    ld c, b
    ldh a, [rOBP0]
    ld [hl-], a
    ld c, b
    ldh a, [rOBP0]
    dec [hl]
    jr nc, jr_03B_6E5D

jr_03B_6E6D:
    jr nc, @+$35

    ld b, [hl]
    ldh a, [rOBP0]
    scf
    ld c, b
    ldh a, [rOBP0]
    ld a, [hl-]
    jr nc, @-$0E

    jr nc, @+$30

    jr nc, jr_03B_6E6D

    jr nc, jr_03B_6EB4

    ld l, $F0
    jr nc, jr_03B_6EAC

    jr nc, @-$0E

jr_03B_6E85:
    jr nc, jr_03B_6EBC

    ld l, $F0
    jr nc, jr_03B_6EB9

    ld c, b

jr_03B_6E8C:
    ldh a, [rOBP0]

jr_03B_6E8E:
    dec [hl]

jr_03B_6E8F:
    ld b, [hl]
    ldh a, [rOBP0]
    add hl, hl
    jr jr_03B_6E85

    jr jr_03B_6ECC

    ld d, $F0
    nop
    rst $38
    nop
    nop
    and a
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    ld c, d
    ld h, $F0
    ret nz

    ld c, e
    ld h, $F0
    ret nz

    ld c, d

jr_03B_6EAC:
    ld h, $F0
    ret nz

    ld c, b
    ld h, $F0
    ret nz

    ld b, c

jr_03B_6EB4:
    ld a, $F0
    ld h, b
    ld b, [hl]
    ld [hl+], a

jr_03B_6EB9:
    ldh a, [$30]
    ld c, d

jr_03B_6EBC:
    ld [hl+], a
    ldh a, [$30]
    ld b, e
    ld a, $F0
    ld h, b
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld c, e
    ld [hl+], a
    ldh a, [$30]
    ld c, d

jr_03B_6ECC:
    ld a, $F0
    ld h, b
    ld b, [hl]
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld [hl+], a
    ldh a, [$30]
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld b, l
    ld [hl+], a
    ldh a, [$30]
    ld b, e
    ld [hl+], a
    ldh a, [$30]
    ld b, c
    ld [hl+], a
    ldh a, [$30]
    ld b, c
    ld a, $F0
    ld h, b
    ld b, [hl]
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld [hl+], a
    ldh a, [$30]
    ld b, e
    ld a, $F0
    ld h, b
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld c, e
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld [hl+], a
    ldh a, [$30]
    ld b, [hl]
    ld [hl+], a
    ldh a, [$30]
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld b, l
    ld [hl+], a
    ldh a, [$30]
    ld b, [hl]
    ld a, $F0
    ret nz

    ld b, c
    ld a, $F0
    ld h, b
    ld b, [hl]
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld [hl+], a
    ldh a, [$30]
    ld b, e
    ld a, $F0
    ld h, b
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld c, e
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld a, $F0
    ld h, b
    ld b, [hl]
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld [hl+], a
    ldh a, [$30]
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld b, l
    ld [hl+], a
    ldh a, [$30]
    ld b, e
    ld [hl+], a
    ldh a, [$30]
    ld b, c
    ld [hl+], a
    ldh a, [$30]
    ld b, c
    ld a, $F0
    ld h, b
    ld b, [hl]
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld [hl+], a
    ldh a, [$30]
    ld b, e
    ld a, $F0
    ld h, b
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld c, e
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld [hl+], a
    ldh a, [$30]
    ld b, [hl]
    ld [hl+], a
    ldh a, [$30]
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld b, l
    ld [hl+], a
    ldh a, [$30]
    ld b, [hl]
    ld l, $F0
    ret nz

    ccf
    ld l, $F0
    ld c, b
    ld a, [hl-]
    inc b
    ldh a, [$0C]
    dec sp
    inc b
    ldh a, [$0C]
    inc a
    inc b
    ldh a, [$0C]
    dec a
    inc b
    ldh a, [$0C]
    ld a, $0A
    ldh a, [rNR23]
    ccf
    ld d, $F0
    jr nc, @+$40

    ld l, $F0
    ld c, b
    add hl, sp
    inc b
    ldh a, [$0C]
    ld a, [hl-]
    inc b
    ldh a, [$0C]
    dec sp
    inc b
    ldh a, [$0C]
    inc a
    inc b
    ldh a, [$0C]
    dec a
    inc c
    ldh a, [rNR23]
    ld a, $16
    ldh a, [$30]
    dec a
    ld l, $F0
    ld c, b
    jr c, jr_03B_6FB5

    ldh a, [$0C]
    add hl, sp
    inc b

jr_03B_6FB5:
    ldh a, [$0C]
    ld a, [hl-]
    inc b
    ldh a, [$0C]
    dec sp
    inc b
    ldh a, [$0C]
    inc a
    ld [de], a
    ldh a, [rNR23]
    dec a
    ld d, $F0
    jr nc, jr_03B_7004

    ld l, $F0
    ld c, b
    inc a
    inc b
    ldh a, [$0C]
    dec a
    inc b
    ldh a, [$0C]
    ld a, $04
    ldh a, [$0C]
    ccf
    inc b
    ldh a, [$0C]
    ld b, b
    inc c
    ldh a, [rNR23]
    ld b, c
    ld d, $F0
    jr nc, jr_03B_7023

    ld l, $F0
    ld c, b
    ld a, [hl-]
    inc b
    ldh a, [$0C]
    dec sp
    inc b
    ldh a, [$0C]
    inc a
    inc b
    ldh a, [$0C]
    dec a
    inc b
    ldh a, [$0C]
    ld a, $12
    ldh a, [rNR23]
    ccf
    ld d, $F0
    jr nc, @+$40

    ld l, $F0
    ld c, b
    add hl, sp

jr_03B_7004:
    inc b
    ldh a, [$0C]
    ld a, [hl-]
    inc b
    ldh a, [$0C]
    dec sp
    inc b
    ldh a, [$0C]
    inc a
    inc b
    ldh a, [$0C]
    dec a
    ld [de], a
    ldh a, [rNR23]
    ld a, $16
    ldh a, [$30]
    dec a
    ld l, $F0
    ld c, b
    jr c, jr_03B_7025

    ldh a, [$0C]

jr_03B_7023:
    add hl, sp
    inc b

jr_03B_7025:
    ldh a, [$0C]
    ld a, [hl-]
    inc b
    ldh a, [$0C]
    dec sp
    inc b
    ldh a, [$0C]
    inc a
    ld [de], a
    ldh a, [rNR23]
    dec a
    ld d, $F0
    jr nc, jr_03B_7074

    ld l, $F0
    ld c, b
    dec [hl]
    inc b
    ldh a, [rTMA]
    dec [hl]
    inc b
    ldh a, [rTMA]
    dec [hl]
    ld a, [bc]
    ldh a, [$0C]
    add hl, sp
    inc b
    ldh a, [rTMA]
    add hl, sp
    inc b
    ldh a, [rTMA]
    add hl, sp
    ld a, [bc]
    ldh a, [$0C]
    inc a
    inc b
    ldh a, [rTMA]
    inc a
    inc b
    ldh a, [rTMA]
    inc a
    ld a, [bc]
    ldh a, [$0C]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, c
    inc e
    ldh a, [rNR50]
    ld b, c
    ld a, $F0
    ld h, b
    ld b, [hl]
    ld [hl+], a
    ldh a, [$30]
    ld c, d

jr_03B_7074:
    ld [hl+], a
    ldh a, [$30]
    ld b, e
    ld a, $F0
    ld h, b
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld c, e
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld a, $F0
    ld h, b
    ld b, [hl]
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld [hl+], a
    ldh a, [$30]
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld b, l
    ld [hl+], a
    ldh a, [$30]
    ld b, e
    ld [hl+], a
    ldh a, [$30]
    ld b, c
    ld [hl+], a
    ldh a, [$30]
    ld b, c
    ld a, $F0
    ld h, b
    ld b, [hl]
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld [hl+], a
    ldh a, [$30]
    ld b, e
    ld a, $F0
    ld h, b
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld c, e
    ld [hl+], a
    ldh a, [$30]
    ld c, d
    ld [hl+], a
    ldh a, [$30]
    ld b, [hl]
    ld [hl+], a
    ldh a, [$30]
    ld c, b
    ld [hl+], a
    ldh a, [$30]
    ld b, l
    ld [hl+], a
    ldh a, [$30]
    ld b, [hl]
    ld a, $F0
    nop
    rst $38
    nop
    nop
    pop de
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld b, $F0
    jr @+$41

    ld b, $F0
    jr @+$41

    ld b, $F0
    jr @+$41

    ld d, $F0
    ld b, d
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld b, $F0
    jr @+$37

    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld b, $F0
    jr jr_03B_7175

    ld b, $F0
    jr jr_03B_7179

    ld b, $F0
    jr jr_03B_717D

    ld d, $F0
    ld b, d
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld b, $F0
    jr @+$37

    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    ld a, $05
    ldh a, [rTMA]
    ccf

jr_03B_7175:
    ld b, $F0
    jr @+$41

jr_03B_7179:
    ld b, $F0
    jr @+$41

jr_03B_717D:
    ld b, $F0
    jr @+$41

    ld d, $F0
    ld b, d
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld b, $F0
    jr @+$37

    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld b, $F0
    jr jr_03B_71F5

    ld b, $F0
    jr jr_03B_71F9

    ld b, $F0
    jr jr_03B_71FD

    ld d, $F0
    ld b, d
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld b, $F0
    jr @+$37

    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    ld a, $05
    ldh a, [rTMA]
    ccf

jr_03B_71F5:
    ld b, $F0
    jr jr_03B_7238

jr_03B_71F9:
    ld b, $F0
    jr jr_03B_723C

jr_03B_71FD:
    ld b, $F0
    jr jr_03B_7240

    ld d, $F0
    ld b, d
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld b, $F0
    jr jr_03B_7242

    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld b, $F0
    jr @+$3E

    ld b, $F0
    jr jr_03B_726D

    ld b, $F0
    jr jr_03B_726A

    db $10
    ldh a, [rNR12]

jr_03B_7238:
    dec a
    dec b
    ldh a, [rTMA]

jr_03B_723C:
    ld a, $06
    ldh a, [rNR23]

jr_03B_7240:
    ld a, $06

jr_03B_7242:
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16

jr_03B_726A:
    ldh a, [rSCY]
    dec a

jr_03B_726D:
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld b, $F0
    jr @+$41

    ld b, $F0
    jr @+$41

    ld b, $F0
    jr @+$41

    ld d, $F0
    ld b, d
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld b, $F0
    jr @+$37

    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld b, $F0
    jr jr_03B_72FD

    ld b, $F0
    jr jr_03B_7301

    ld b, $F0
    jr jr_03B_7305

    ld d, $F0
    ld b, d
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld b, $F0
    jr @+$37

    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    ld a, $05
    ldh a, [rTMA]
    ccf

jr_03B_72FD:
    ld b, $F0
    jr jr_03B_7340

jr_03B_7301:
    ld b, $F0
    jr jr_03B_7344

jr_03B_7305:
    ld b, $F0
    jr jr_03B_7348

    ld d, $F0
    ld b, d
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld b, $F0
    jr jr_03B_734A

    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld b, $F0
    jr jr_03B_7371

    ld b, $F0
    jr jr_03B_7375

    ld b, $F0
    jr @+$37

    db $10
    ldh a, [rNR12]

jr_03B_7340:
    dec a
    dec b
    ldh a, [rTMA]

jr_03B_7344:
    ld a, $06
    ldh a, [rNR23]

jr_03B_7348:
    ld a, $06

jr_03B_734A:
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    ld b, $F0
    jr jr_03B_73AC

    ld b, $F0

jr_03B_736B:
    jr jr_03B_73B0

    ld b, $F0
    jr jr_03B_73B4

jr_03B_7371:
    ld d, $F0
    ld b, d
    ld b, d

jr_03B_7375:
    dec b
    ldh a, [rTMA]
    ld b, e
    jr z, jr_03B_736B

    ld a, [hl+]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, c
    ld b, $F0
    jr @+$43

    ld b, $F0

jr_03B_7387:
    jr jr_03B_73CA

    ld b, $F0
    jr @+$43

    ld d, $F0
    ld b, d
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, c
    jr z, jr_03B_7387

    ld a, [hl+]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, b
    ld b, $F0
    jr jr_03B_73E1

    ld b, $F0

jr_03B_73A3:
    jr jr_03B_73E5

    ld b, $F0
    jr jr_03B_73E9

    ld d, $F0
    ld b, d

jr_03B_73AC:
    ccf
    dec b
    ldh a, [rTMA]

jr_03B_73B0:
    ld b, b
    jr z, jr_03B_73A3

    ld a, [hl+]

jr_03B_73B4:
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, c
    ld b, $F0
    jr @+$43

    ld b, $F0

jr_03B_73BF:
    jr jr_03B_7402

    ld b, $F0
    jr @+$43

    ld d, $F0
    ld b, d
    ld b, b
    dec b

jr_03B_73CA:
    ldh a, [rTMA]
    ld b, c
    jr z, jr_03B_73BF

    ld a, [hl+]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    ld b, $F0
    jr jr_03B_741C

    ld b, $F0

jr_03B_73DB:
    jr jr_03B_7420

    ld b, $F0
    jr jr_03B_7424

jr_03B_73E1:
    ld d, $F0
    ld b, d
    ld b, d

jr_03B_73E5:
    dec b
    ldh a, [rTMA]
    ld b, e

jr_03B_73E9:
    jr z, jr_03B_73DB

    ld a, [hl+]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, c
    ld b, $F0
    jr @+$43

    ld b, $F0

jr_03B_73F7:
    jr jr_03B_743A

    ld b, $F0
    jr @+$43

    ld d, $F0
    ld b, d
    ld b, b
    dec b

jr_03B_7402:
    ldh a, [rTMA]
    ld b, c
    jr z, jr_03B_73F7

    ld a, [hl+]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, b
    ld b, $F0
    jr @+$42

    ld b, $F0

jr_03B_7413:
    jr jr_03B_7455

    ld b, $F0
    jr @+$42

    ld d, $F0
    ld b, d

jr_03B_741C:
    ccf
    dec b
    ldh a, [rTMA]

jr_03B_7420:
    ld b, b
    jr z, jr_03B_7413

    ld a, [hl+]

jr_03B_7424:
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld b, $F0
    jr @+$41

    ld b, $F0

jr_03B_742F:
    jr @+$41

    ld b, $F0
    jr jr_03B_7471

    ld d, $F0
    ld b, d
    ld b, b
    dec b

jr_03B_743A:
    ldh a, [rTMA]
    ld b, c
    jr z, jr_03B_742F

    ld a, [hl+]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a

jr_03B_7455:
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld b, $F0
    jr @+$41

    ld b, $F0
    jr @+$41

    ld b, $F0
    jr @+$41

jr_03B_7471:
    ld d, $F0
    ld b, d
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld b, $F0
    jr @+$37

    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld b, $F0
    jr jr_03B_74E5

    ld b, $F0
    jr jr_03B_74E9

    ld b, $F0
    jr jr_03B_74ED

    ld d, $F0
    ld b, d
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld b, $F0
    jr @+$37

    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    ld a, $05
    ldh a, [rTMA]
    ccf

jr_03B_74E5:
    ld b, $F0
    jr jr_03B_7528

jr_03B_74E9:
    ld b, $F0
    jr jr_03B_752C

jr_03B_74ED:
    ld b, $F0
    jr jr_03B_7530

    ld d, $F0
    ld b, d
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld b, $F0
    jr jr_03B_7532

    db $10
    ldh a, [rNR12]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    db $10
    ldh a, [rNR12]
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    ld b, $F0
    jr jr_03B_7559

    ld b, $F0
    jr jr_03B_755D

    ld b, $F0
    jr jr_03B_755A

    db $10
    ldh a, [rNR12]

jr_03B_7528:
    dec a
    dec b
    ldh a, [rTMA]

jr_03B_752C:
    ld a, $06
    ldh a, [rNR23]

jr_03B_7530:
    ld a, $06

jr_03B_7532:
    ldh a, [rNR23]
    ld a, $06
    ldh a, [rNR23]
    ld a, $16
    ldh a, [rSCY]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $06
    ldh a, [rNR23]
    dec [hl]
    ld d, $F0
    nop
    rst $38
    pop af
    ld a, d
    cp l
    ld d, b
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

jr_03B_7559:
    nop

jr_03B_755A:
    nop
    jr z, jr_03B_758C

jr_03B_755D:
    nop
    dec l
    jr nc, jr_03B_7561

jr_03B_7561:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03B_758C:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    nop
    ld c, $00
    jr jr_03B_75E0

jr_03B_75E0:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    rla
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rla
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $4017
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    ld a, $03
    and [hl]
    dec b
    sbc d
    rlca
    cp [hl]
    ldh a, [rP1]
    xor h
    inc bc
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$30F0], sp
    inc l
    ld [$24F0], sp
    inc l
    ld [$0CF0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$00F0], sp
    rst $38
    ldh a, [rP1]
    or b
    daa
    ld l, $F0
    jr nc, jr_03B_79BF

    ld l, $F0
    jr nc, jr_03B_79B3

    ld l, $F0
    jr nc, jr_03B_79C7

    ld l, $F0
    jr nc, jr_03B_79BF

    ld l, $F0
    jr nc, jr_03B_79CF

    ld l, $F0
    jr nc, jr_03B_79C3

    ld l, $F0
    jr nc, jr_03B_79D7

    ld l, $F0
    jr nc, jr_03B_79CF

    ld l, $F0
    jr nc, jr_03B_79DF

    ld l, $F0
    jr nc, jr_03B_79D3

    ld l, $F0
    jr nc, jr_03B_79E7

    ld l, $F0
    jr nc, jr_03B_79DF

    ld l, $F0
    jr nc, jr_03B_79EF

jr_03B_79B3:
    ld l, $F0
    jr nc, jr_03B_79E3

    ld l, $F0
    jr nc, jr_03B_79F7

    ld l, $F0
    jr nc, jr_03B_79EF

jr_03B_79BF:
    ld l, $F0
    jr nc, jr_03B_79FF

jr_03B_79C3:
    ld l, $F0
    jr nc, jr_03B_79F3

jr_03B_79C7:
    ld l, $F0
    jr nc, jr_03B_7A07

    ld l, $F0
    jr nc, jr_03B_79FF

jr_03B_79CF:
    ld l, $F0
    jr nc, jr_03B_7A0F

jr_03B_79D3:
    ld l, $F0
    jr nc, jr_03B_7A03

jr_03B_79D7:
    ld l, $F0
    jr nc, jr_03B_7A17

    ld l, $F0
    jr nc, jr_03B_7A0F

jr_03B_79DF:
    ld l, $F0
    jr nc, jr_03B_7A1F

jr_03B_79E3:
    ld l, $F0
    jr nc, jr_03B_7A13

jr_03B_79E7:
    ld l, $F0
    jr nc, jr_03B_7A27

    ld l, $F0
    jr nc, jr_03B_7A1F

jr_03B_79EF:
    ld l, $F0
    jr nc, jr_03B_7A2F

jr_03B_79F3:
    ld l, $F0
    jr nc, jr_03B_7A23

jr_03B_79F7:
    ld l, $F0
    jr nc, jr_03B_7A37

    ld l, $F0
    jr nc, jr_03B_7A2F

jr_03B_79FF:
    ld l, $F0
    jr nc, jr_03B_7A3F

jr_03B_7A03:
    ld l, $F0
    jr nc, jr_03B_7A33

jr_03B_7A07:
    ld l, $F0
    jr nc, jr_03B_7A47

    ld l, $F0
    jr nc, jr_03B_7A3F

jr_03B_7A0F:
    ld l, $F0
    jr nc, jr_03B_7A4F

jr_03B_7A13:
    ld l, $F0
    jr nc, jr_03B_7A43

jr_03B_7A17:
    ld l, $F0
    jr nc, jr_03B_7A57

    ld l, $F0
    jr nc, jr_03B_7A4F

jr_03B_7A1F:
    ld l, $F0
    jr nc, jr_03B_7A5F

jr_03B_7A23:
    ld l, $F0
    jr nc, jr_03B_7A53

jr_03B_7A27:
    ld l, $F0
    jr nc, jr_03B_7A67

    ld l, $F0
    jr nc, jr_03B_7A5F

jr_03B_7A2F:
    ld l, $F0
    jr nc, jr_03B_7A6F

jr_03B_7A33:
    ld l, $F0
    jr nc, jr_03B_7A63

jr_03B_7A37:
    ld l, $F0
    jr nc, jr_03B_7A77

    ld l, $F0
    jr nc, jr_03B_7A6F

jr_03B_7A3F:
    ld l, $F0
    jr nc, jr_03B_7A7F

jr_03B_7A43:
    ld l, $F0
    jr nc, jr_03B_7A73

jr_03B_7A47:
    ld l, $F0
    jr nc, jr_03B_7A87

    ld l, $F0
    jr nc, jr_03B_7A7F

jr_03B_7A4F:
    ld l, $F0
    jr nc, jr_03B_7A8F

jr_03B_7A53:
    ld l, $F0
    jr nc, jr_03B_7A83

jr_03B_7A57:
    ld l, $F0
    jr nc, jr_03B_7A97

    ld l, $F0
    jr nc, jr_03B_7A8F

jr_03B_7A5F:
    ld l, $F0
    jr nc, jr_03B_7A9F

jr_03B_7A63:
    ld l, $F0
    jr nc, jr_03B_7A93

jr_03B_7A67:
    ld l, $F0
    jr nc, jr_03B_7AA7

    ld l, $F0
    jr nc, jr_03B_7A9F

jr_03B_7A6F:
    ld l, $F0
    jr nc, jr_03B_7AAF

jr_03B_7A73:
    ld l, $F0
    jr nc, jr_03B_7AA3

jr_03B_7A77:
    ld l, $F0
    jr nc, jr_03B_7AB7

    ld l, $F0
    jr nc, jr_03B_7AAF

jr_03B_7A7F:
    ld l, $F0
    jr nc, jr_03B_7ABF

jr_03B_7A83:
    ld l, $F0
    jr nc, jr_03B_7AB3

jr_03B_7A87:
    ld l, $F0
    jr nc, jr_03B_7AC7

    ld l, $F0
    jr nc, jr_03B_7ABF

jr_03B_7A8F:
    ld l, $F0
    jr nc, jr_03B_7ACF

jr_03B_7A93:
    ld l, $F0
    jr nc, jr_03B_7AC3

jr_03B_7A97:
    ld l, $F0
    jr nc, jr_03B_7AD7

    ld l, $F0
    jr nc, jr_03B_7ACF

jr_03B_7A9F:
    ld l, $F0
    jr nc, jr_03B_7ADF

jr_03B_7AA3:
    ld l, $F0
    jr nc, jr_03B_7AD3

jr_03B_7AA7:
    ld l, $F0
    jr nc, jr_03B_7AE7

    ld l, $F0
    jr nc, jr_03B_7ADF

jr_03B_7AAF:
    ld l, $F0
    jr nc, jr_03B_7AEF

jr_03B_7AB3:
    ld l, $F0
    jr nc, jr_03B_7AE3

jr_03B_7AB7:
    ld l, $F0
    jr nc, jr_03B_7AF7

    ld l, $F0
    jr nc, @+$37

jr_03B_7ABF:
    ld l, $F0
    jr nc, jr_03B_7AFF

jr_03B_7AC3:
    ld l, $F0
    jr nc, @+$33

jr_03B_7AC7:
    ld l, $F0
    jr nc, jr_03B_7B07

    ld l, $F0
    jr nc, @+$37

jr_03B_7ACF:
    ld l, $F0
    jr nc, jr_03B_7B0F

jr_03B_7AD3:
    ld l, $F0
    jr nc, @+$33

jr_03B_7AD7:
    ld l, $F0
    jr nc, jr_03B_7B17

    ld l, $F0
    jr nc, @+$37

jr_03B_7ADF:
    ld l, $F0
    jr nc, jr_03B_7B1F

jr_03B_7AE3:
    ld l, $F0
    jr nc, @+$33

jr_03B_7AE7:
    ld l, $F0
    jr nc, jr_03B_7B27

    ld l, $F0
    jr nc, @+$37

jr_03B_7AEF:
    ld l, $F0
    jr nc, jr_03B_7B2F

    ld l, $F0
    jr nc, @+$33

jr_03B_7AF7:
    ld l, $F0
    jr nc, jr_03B_7B37

    ld l, $F0
    jr nc, @+$37

jr_03B_7AFF:
    ld l, $F0
    jr nc, jr_03B_7B3F

    ld l, $F0
    jr nc, @+$33

jr_03B_7B07:
    ld l, $F0
    jr nc, jr_03B_7B47

    ld l, $F0
    jr nc, @+$37

jr_03B_7B0F:
    ld l, $F0
    jr nc, jr_03B_7B4F

    ld l, $F0
    jr nc, @+$33

jr_03B_7B17:
    ld l, $F0
    jr nc, jr_03B_7B57

    ld l, $F0
    jr nc, @+$37

jr_03B_7B1F:
    ld l, $F0
    jr nc, jr_03B_7B5F

    ld l, $F0
    jr nc, @+$33

jr_03B_7B27:
    ld l, $F0
    jr nc, jr_03B_7B67

    ld l, $F0
    jr nc, jr_03B_7B5F

jr_03B_7B2F:
    ld l, $F0
    jr nc, jr_03B_7B6F

    ld l, $F0
    jr nc, jr_03B_7B63

jr_03B_7B37:
    ld l, $F0
    jr nc, jr_03B_7B77

    ld l, $F0
    jr nc, jr_03B_7B6F

jr_03B_7B3F:
    ld l, $F0
    jr nc, jr_03B_7B7F

    ld l, $F0
    jr nc, @+$2E

jr_03B_7B47:
    ld l, $F0
    jr nc, @+$3E

    ld l, $F0
    jr nc, jr_03B_7B7F

jr_03B_7B4F:
    ld l, $F0
    jr nc, @+$3E

    ld l, $F0
    jr nc, @+$2E

jr_03B_7B57:
    ld l, $F0
    jr nc, @+$3E

    ld l, $F0
    jr nc, @+$32

jr_03B_7B5F:
    ld l, $F0
    jr nc, jr_03B_7B9F

jr_03B_7B63:
    ld l, $F0
    jr nc, @+$2E

jr_03B_7B67:
    ld l, $F0
    jr nc, jr_03B_7BA7

    ld l, $F0
    nop
    rst $38

jr_03B_7B6F:
    pop af
    add b
    jp $8051


    adc [hl]
    ldh a, [$90]

jr_03B_7B77:
    ld b, [hl]
    inc hl
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [$0C]

jr_03B_7B7F:
    ld b, e
    ld l, $F0
    jr nc, jr_03B_7BC3

    ld l, $F0
    jr nc, jr_03B_7BCA

    ld l, $F0
    jr nc, jr_03B_7BCD

    ld l, $F0
    jr nc, @+$41

    ld l, $F0
    jr nc, jr_03B_7BD0

    ld l, $F0
    jr nc, @+$40

    ld b, [hl]
    ldh a, [rOBP0]
    inc a
    dec bc
    ldh a, [$0C]

jr_03B_7B9F:
    dec sp
    dec bc
    ldh a, [$0C]
    inc a
    ld e, [hl]
    ldh a, [$60]

jr_03B_7BA7:
    scf
    ld e, [hl]
    ldh a, [$60]
    ld b, e
    add b
    adc b
    ldh a, [$8A]
    ld b, l
    dec b
    ldh a, [rTMA]
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

jr_03B_7BC3:
    jr nc, jr_03B_7C07

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, c
    dec bc

jr_03B_7BCA:
    ldh a, [$0C]
    ld b, d

jr_03B_7BCD:
    dec bc
    ldh a, [$0C]

jr_03B_7BD0:
    ld b, e
    ld d, $F0
    jr jr_03B_7C1B

    ld d, $F0
    jr jr_03B_7C22

    ld d, $F0
    jr @+$4E

    ld d, $F0
    jr jr_03B_7C30

    ld d, $F0
    jr @+$4E

    ld d, $F0
    jr jr_03B_7C32

    ld d, $F0
    jr @+$48

    ld d, $F0
    jr jr_03B_7C34

    ld d, $F0
    jr jr_03B_7C3B

    ld d, $F0
    jr jr_03B_7C42

    ld d, $F0
    jr jr_03B_7C49

    ld d, $F0
    jr jr_03B_7C50

    ld d, $F0
    jr @+$4E

    ld d, $F0

jr_03B_7C07:
    jr jr_03B_7C52

    ld d, $F0
    jr jr_03B_7C53

    ld d, $F0
    jr jr_03B_7C54

    add b
    adc [hl]
    ldh a, [$90]
    ld b, [hl]
    inc hl
    ldh a, [rNR50]
    ld b, h
    dec bc

jr_03B_7C1B:
    ldh a, [$0C]
    ld b, e
    ld l, $F0
    jr nc, jr_03B_7C61

jr_03B_7C22:
    ld l, $F0
    jr nc, jr_03B_7C68

    ld l, $F0
    jr nc, jr_03B_7C6B

    ld l, $F0
    jr nc, @+$41

    ld l, $F0

jr_03B_7C30:
    jr nc, jr_03B_7C6E

jr_03B_7C32:
    ld l, $F0

jr_03B_7C34:
    jr nc, @+$40

    ld b, [hl]
    ldh a, [rOBP0]
    inc a
    dec bc

jr_03B_7C3B:
    ldh a, [$0C]
    dec sp
    dec bc
    ldh a, [$0C]
    inc a

jr_03B_7C42:
    ld e, [hl]
    ldh a, [$60]
    scf
    ld e, [hl]
    ldh a, [$60]

jr_03B_7C49:
    ld b, e
    add b
    adc b
    ldh a, [$8A]
    ld b, l
    dec b

jr_03B_7C50:
    ldh a, [rTMA]

jr_03B_7C52:
    ld b, [hl]

jr_03B_7C53:
    inc hl

jr_03B_7C54:
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    ld l, $F0
    jr nc, @+$41

    ld l, $F0

jr_03B_7C61:
    jr nc, jr_03B_7CA5

    ld b, b
    ldh a, [rSCY]
    ld b, b
    dec b

jr_03B_7C68:
    ldh a, [rTMA]
    ld b, c

jr_03B_7C6B:
    dec bc
    ldh a, [$0C]

jr_03B_7C6E:
    ld b, d
    dec bc
    ldh a, [$0C]
    ld b, e
    ld d, $F0
    jr jr_03B_7CBD

    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr jr_03B_7CCB

    ld d, $F0
    jr @+$51

    ld d, $F0
    jr jr_03B_7CD3

    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr jr_03B_7CD5

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03B_7CDD

    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr jr_03B_7CEB

    ld d, $F0
    jr @+$51

    ld d, $F0

jr_03B_7CA5:
    jr jr_03B_7CF3

    ld d, $F0
    jr jr_03B_7CF4

    ld d, $F0
    jr jr_03B_7CF5

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$48

    ld d, $F0
    jr jr_03B_7D04

    ld d, $F0

jr_03B_7CBD:
    jr @+$4E

    ld d, $F0
    jr jr_03B_7D12

    ld d, $F0
    jr jr_03B_7D19

    ld d, $F0
    jr jr_03B_7D20

jr_03B_7CCB:
    ld d, $F0
    jr jr_03B_7D27

    ld d, $F0
    jr jr_03B_7D2E

jr_03B_7CD3:
    ld d, $F0

jr_03B_7CD5:
    jr @+$5A

    ld d, $F0
    jr jr_03B_7D30

    ld d, $F0

jr_03B_7CDD:
    jr jr_03B_7D31

    ld d, $F0
    jr jr_03B_7D32

    ld l, $F0
    jr nc, @+$4E

    ld l, $F0
    jr nc, @+$4A

jr_03B_7CEB:
    add b
    adc [hl]
    ldh a, [$90]
    ld c, e
    inc hl
    ldh a, [rNR50]

jr_03B_7CF3:
    ld c, c

jr_03B_7CF4:
    dec bc

jr_03B_7CF5:
    ldh a, [$0C]
    ld c, b
    ld l, $F0
    jr nc, @+$46

    jr z, @-$0E

    ld a, [hl+]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, a

jr_03B_7D04:
    ld l, $F0
    jr nc, jr_03B_7D4E

    ld l, $F0
    jr nc, jr_03B_7D50

    ld l, $F0
    jr nc, jr_03B_7D51

    ld l, $F0

jr_03B_7D12:
    jr nc, @+$45

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, c
    dec bc

jr_03B_7D19:
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, c

jr_03B_7D20:
    ld e, [hl]
    ldh a, [$60]
    inc a
    ld e, b
    ldh a, [$5A]

jr_03B_7D27:
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b
    add b
    adc [hl]

jr_03B_7D2E:
    ldh a, [$90]

jr_03B_7D30:
    ld c, e

jr_03B_7D31:
    inc hl

jr_03B_7D32:
    ldh a, [rNR50]
    ld c, c
    dec bc
    ldh a, [$0C]
    ld c, b
    ld l, $F0
    jr nc, jr_03B_7D81

    ld l, $F0
    jr nc, @+$49

    ld b, b
    ldh a, [rSCY]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc

jr_03B_7D4E:
    ldh a, [$0C]

jr_03B_7D50:
    ld c, b

jr_03B_7D51:
    ld e, [hl]
    ldh a, [$60]
    inc a
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
    jr nc, jr_03B_7DB0

    ld l, $F0
    jr nc, @+$43

    ld l, $F0
    jr nc, @+$41

    ld l, $F0
    jr nc, jr_03B_7DB6

    ld l, $F0
    jr nc, jr_03B_7DBC

    ld b, b
    ldh a, [rSCY]

jr_03B_7D81:
    dec sp
    dec b
    ldh a, [rTMA]
    inc a
    dec bc
    ldh a, [$0C]
    dec sp
    dec bc
    ldh a, [$0C]
    inc a
    add b
    cp [hl]
    ldh a, [rP1]
    rst $38
    pop af
    add [hl]
    jp $8050


    adc b
    ldh a, [$90]
    ld b, [hl]
    inc hl
    ldh a, [rNR50]
    ld b, h
    ld [$0CF0], sp
    ld b, e
    jr z, @-$0E

jr_03B_7DA6:
    jr nc, @+$41

    jr z, @-$0E

jr_03B_7DAA:
    jr nc, jr_03B_7DEE

    jr z, @-$0E

jr_03B_7DAE:
    jr nc, jr_03B_7DF1

jr_03B_7DB0:
    jr z, @-$0E

    jr nc, jr_03B_7DF3

    jr z, jr_03B_7DA6

jr_03B_7DB6:
    jr nc, @+$3E

    jr z, jr_03B_7DAA

    jr nc, @+$40

jr_03B_7DBC:
    jr z, jr_03B_7DAE

    ld c, b
    inc a
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld e, b
    ldh a, [$60]
    scf
    ld e, b
    ldh a, [$60]

jr_03B_7DCF:
    ld b, e
    add b
    adc b
    ldh a, [$90]
    ld b, [hl]
    ld [$24F0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, e
    jr z, jr_03B_7DCF

    jr nc, @+$41

    jr z, @-$0E

    jr nc, jr_03B_7E27

    ld b, b
    ldh a, [rOBP0]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc

jr_03B_7DEE:
    ldh a, [$0C]
    ld b, e

jr_03B_7DF1:
    ld d, $F0

jr_03B_7DF3:
    jr jr_03B_7E3B

    ld d, $F0
    jr jr_03B_7E42

    ld d, $F0
    jr @+$4E

    ld d, $F0
    jr jr_03B_7E50

    ld d, $F0
    jr @+$4E

    ld d, $F0
    jr jr_03B_7E52

    ld d, $F0
    jr @+$48

    ld d, $F0
    jr jr_03B_7E54

    ld d, $F0
    jr jr_03B_7E5B

    ld d, $F0
    jr jr_03B_7E62

    ld d, $F0
    jr jr_03B_7E69

    ld d, $F0
    jr jr_03B_7E70

    ld d, $F0
    jr @+$4E

    ld d, $F0

jr_03B_7E27:
    jr jr_03B_7E72

    ld d, $F0
    jr jr_03B_7E73

    ld d, $F0
    jr jr_03B_7E74

    add b
    adc [hl]
    ldh a, [$90]
    ld b, [hl]
    inc hl
    ldh a, [rNR50]
    ld b, h
    dec bc

jr_03B_7E3B:
    ldh a, [$0C]
    ld b, e
    ld l, $F0
    jr nc, @+$41

jr_03B_7E42:
    ld l, $F0
    jr nc, jr_03B_7E88

    ld l, $F0
    jr nc, jr_03B_7E8B

    ld l, $F0
    jr nc, jr_03B_7E8D

    ld l, $F0

jr_03B_7E50:
    jr nc, @+$3E

jr_03B_7E52:
    ld l, $F0

jr_03B_7E54:
    jr nc, @+$40

    ld b, [hl]
    ldh a, [rOBP0]
    inc a
    dec bc

jr_03B_7E5B:
    ldh a, [$0C]
    dec sp
    dec bc
    ldh a, [$0C]
    inc a

jr_03B_7E62:
    ld e, [hl]
    ldh a, [$60]
    scf
    ld e, [hl]
    ldh a, [$60]

jr_03B_7E69:
    ld b, e
    add b
    adc [hl]
    ldh a, [$90]
    ld b, [hl]
    inc hl

jr_03B_7E70:
    ldh a, [rNR50]

jr_03B_7E72:
    ld b, h

jr_03B_7E73:
    dec bc

jr_03B_7E74:
    ldh a, [$0C]
    ld b, e
    ld l, $F0
    jr nc, @+$41

    ld l, $F0
    jr nc, jr_03B_7EC1

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, d
    dec bc

jr_03B_7E88:
    ldh a, [$0C]
    ld b, e

jr_03B_7E8B:
    ld d, $F0

jr_03B_7E8D:
    jr jr_03B_7ED5

    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr jr_03B_7EE3

    ld d, $F0
    jr @+$51

    ld d, $F0
    jr jr_03B_7EEB

    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr jr_03B_7EED

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03B_7EF5

    ld d, $F0
    jr @+$4B

    ld d, $F0
    jr jr_03B_7F03

    ld d, $F0
    jr @+$51

    ld d, $F0
    jr jr_03B_7F0B

    ld d, $F0

jr_03B_7EC1:
    jr jr_03B_7F0C

    ld d, $F0
    jr jr_03B_7F0D

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$48

    ld d, $F0
    jr jr_03B_7F1C

    ld d, $F0

jr_03B_7ED5:
    jr @+$4E

    ld d, $F0
    jr @+$51

    ld d, $F0
    jr jr_03B_7F31

    ld d, $F0
    jr jr_03B_7F38

jr_03B_7EE3:
    ld d, $F0
    jr @+$5A

    ld d, $F0
    jr jr_03B_7F46

jr_03B_7EEB:
    ld d, $F0

jr_03B_7EED:
    jr @+$5A

    ld d, $F0
    jr jr_03B_7F48

    ld d, $F0

jr_03B_7EF5:
    jr jr_03B_7F49

    ld d, $F0
    jr @+$51

    ld l, $F0
    jr nc, jr_03B_7F4B

    ld l, $F0
    jr nc, jr_03B_7F4B

jr_03B_7F03:
    add b
    adc [hl]
    ldh a, [$90]
    ld c, e
    inc hl
    ldh a, [rNR50]

jr_03B_7F0B:
    ld c, c

jr_03B_7F0C:
    dec bc

jr_03B_7F0D:
    ldh a, [$0C]
    ld c, b
    ld l, $F0
    jr nc, jr_03B_7F58

    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, jr_03B_7F62

jr_03B_7F1C:
    ld l, $F0
    jr nc, jr_03B_7F64

    ld l, $F0
    jr nc, jr_03B_7F65

    ld l, $F0
    jr nc, jr_03B_7F6B

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc

jr_03B_7F31:
    ldh a, [$0C]
    ld b, c
    ld e, [hl]
    ldh a, [$60]
    inc a

jr_03B_7F38:
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    add b
    adc [hl]
    ldh a, [$90]
    ld c, e
    inc hl
    ldh a, [rNR50]
    ld c, c
    dec bc

jr_03B_7F46:
    ldh a, [$0C]

jr_03B_7F48:
    ld c, b

jr_03B_7F49:
    ld l, $F0

jr_03B_7F4B:
    jr nc, jr_03B_7F91

    ld l, $F0
    jr nc, jr_03B_7F98

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, [hl]
    dec bc
    ldh a, [$0C]

jr_03B_7F58:
    ld b, a
    dec bc
    ldh a, [$0C]
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    inc a
    ld e, [hl]

jr_03B_7F62:
    ldh a, [$60]

jr_03B_7F64:
    ld b, e

jr_03B_7F65:
    add b
    adc [hl]
    ldh a, [$90]
    ld b, [hl]
    inc hl

jr_03B_7F6B:
    ldh a, [rNR50]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    ld l, $F0
    jr nc, jr_03B_7FB5

    ld l, $F0
    jr nc, jr_03B_7FBC

    ld l, $F0
    jr nc, jr_03B_7FBF

    ld l, $F0
    jr nc, jr_03B_7FC1

    ld l, $F0
    jr nc, jr_03B_7FC2

    ld l, $F0
    jr nc, jr_03B_7FC8

    ld b, [hl]
    ldh a, [rOBP0]
    inc a
    dec bc
    ldh a, [$0C]

jr_03B_7F91:
    dec sp
    dec bc
    ldh a, [$0C]
    inc a
    add b
    cp d

jr_03B_7F98:
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

jr_03B_7FB5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03B_7FBC:
    nop
    nop
    nop

jr_03B_7FBF:
    nop
    nop

jr_03B_7FC1:
    nop

jr_03B_7FC2:
    nop
    nop
    nop
    nop
    nop
    nop

jr_03B_7FC8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
