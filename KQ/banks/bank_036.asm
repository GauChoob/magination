; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $036", ROMX[$4000], BANK[$36]

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
    jr z, jr_036_403B

    nop
    dec l
    jr nc, jr_036_4010

jr_036_4010:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_036_403B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr z, jr_036_4091

jr_036_4091:
    dec [hl]
    nop
    nop
    rlca
    rlca
    add b
    ld b, $18
    nop
    cp $00
    inc bc
    nop
    nop
    nop
    nop
    dec b
    rlca
    add b
    inc b
    jr jr_036_40A7

jr_036_40A7:
    cp $00
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    rlca
    add b
    ld [bc], a
    jr jr_036_40B4

jr_036_40B4:
    cp $00
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $8007
    nop
    jr jr_036_40C1

jr_036_40C1:
    cp $00
    inc bc
    nop
    nop
    nop
    ld d, d
    dec b
    ld l, c
    ld b, $11
    dec bc
    cp l
    dec c
    and l
    rrca
    ld h, l
    rrca
    db $DD
    ld d, $20
    ldh a, [rP1]
    inc l
    ld b, $F0
    jr jr_036_4109

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4115

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4121

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_412D

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4109:
    ld b, $F0
    jr jr_036_4139

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4115:
    ld b, $F0
    jr jr_036_4145

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4121:
    ld b, $F0
    jr jr_036_4151

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_412D:
    ld b, $F0
    jr jr_036_415D

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4139:
    ld b, $F0
    jr jr_036_4169

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4145:
    ld b, $F0
    jr jr_036_4175

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4151:
    ld b, $F0
    jr jr_036_4181

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_415D:
    ld b, $F0
    jr jr_036_418D

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4169:
    ld b, $F0
    jr jr_036_4199

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4175:
    ld b, $F0
    jr jr_036_41A5

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4181:
    ld b, $F0
    jr jr_036_41B1

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_418D:
    ld b, $F0
    jr jr_036_41BD

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4199:
    ld b, $F0
    jr jr_036_41C9

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_41A5:
    ld b, $F0
    jr jr_036_41D5

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_41B1:
    ld b, $F0
    jr jr_036_41E1

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_41BD:
    ld b, $F0
    jr jr_036_41ED

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_41C9:
    ld b, $F0
    jr jr_036_41F9

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_41D5:
    ld b, $F0
    jr jr_036_4205

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_41E1:
    ld b, $F0
    jr jr_036_4211

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_41ED:
    ld b, $F0
    jr jr_036_421D

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_41F9:
    ld b, $F0
    jr jr_036_4229

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4205:
    ld b, $F0
    jr jr_036_4235

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4211:
    ld b, $F0
    jr jr_036_4241

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_421D:
    ld b, $F0
    jr jr_036_424D

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4229:
    ld b, $F0
    jr jr_036_4259

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4235:
    ld b, $F0
    jr jr_036_4265

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4241:
    ld b, $F0
    jr jr_036_4271

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_424D:
    ld b, $F0
    jr jr_036_427D

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4259:
    ld b, $F0
    jr jr_036_4289

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4265:
    ld b, $F0
    jr jr_036_4295

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4271:
    ld b, $F0
    jr jr_036_42A1

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_427D:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4289:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_42BD

    ld b, $F0
    inc c
    inc l

jr_036_4295:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_42C9

    ld b, $F0
    inc c
    inc l

jr_036_42A1:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_42D5

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_42BD:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_42F1

    ld b, $F0
    inc c
    inc l

jr_036_42C9:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_42FD

    ld b, $F0
    inc c
    inc l

jr_036_42D5:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4309

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_42F1:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4325

    ld b, $F0
    inc c
    inc l

jr_036_42FD:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4331

    ld b, $F0
    inc c
    inc l

jr_036_4309:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_433D

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4325:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4359

    ld b, $F0
    inc c
    inc l

jr_036_4331:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4365

    ld b, $F0
    inc c
    inc l

jr_036_433D:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4371

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4359:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_438D

    ld b, $F0
    inc c
    inc l

jr_036_4365:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4399

    ld b, $F0
    inc c
    inc l

jr_036_4371:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_43A5

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_438D:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_43C1

    ld b, $F0
    inc c
    inc l

jr_036_4399:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_43CD

    ld b, $F0
    inc c
    inc l

jr_036_43A5:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_43D9

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_43C1:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_43F5

    ld b, $F0
    inc c
    inc l

jr_036_43CD:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4401

    ld b, $F0
    inc c
    inc l

jr_036_43D9:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_440D

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_43F5:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr nc, jr_036_4429

    ld b, $F0
    jr nc, jr_036_442D

jr_036_4401:
    ld b, $F0
    jr nc, jr_036_4431

    ld b, $F0
    jr nc, jr_036_4435

    ld b, $F0
    jr nc, jr_036_4439

jr_036_440D:
    ld b, $F0
    jr nc, jr_036_443D

    ld b, $F0
    jr nc, jr_036_4441

    ld b, $F0
    jr nc, jr_036_4445

    ld b, $F0
    jr nc, jr_036_4449

    ld b, $F0
    jr nc, jr_036_444D

    ld b, $F0
    jr nc, jr_036_4451

    ld b, $F0
    jr nc, jr_036_4455

jr_036_4429:
    ld b, $F0
    jr nc, jr_036_4459

jr_036_442D:
    ld b, $F0
    jr nc, jr_036_445D

jr_036_4431:
    ld b, $F0
    jr nc, jr_036_4461

jr_036_4435:
    ld b, $F0
    jr nc, jr_036_4465

jr_036_4439:
    ld b, $F0
    jr nc, jr_036_4469

jr_036_443D:
    ld b, $F0
    jr nc, jr_036_446D

jr_036_4441:
    ld b, $F0
    jr nc, jr_036_4471

jr_036_4445:
    ld b, $F0
    jr nc, jr_036_4475

jr_036_4449:
    ld b, $F0
    jr nc, jr_036_4479

jr_036_444D:
    ld b, $F0
    jr nc, jr_036_447D

jr_036_4451:
    ld b, $F0
    jr nc, jr_036_4481

jr_036_4455:
    ld b, $F0
    jr nc, jr_036_4485

jr_036_4459:
    ld b, $F0
    jr nc, jr_036_4489

jr_036_445D:
    ld b, $F0
    jr nc, jr_036_448D

jr_036_4461:
    ld b, $F0
    jr nc, jr_036_4491

jr_036_4465:
    ld b, $F0
    jr nc, jr_036_4495

jr_036_4469:
    ld b, $F0
    jr nc, jr_036_4499

jr_036_446D:
    ld b, $F0
    jr nc, jr_036_449D

jr_036_4471:
    ld b, $F0
    jr nc, jr_036_44A1

jr_036_4475:
    ld b, $F0
    jr jr_036_44A5

jr_036_4479:
    ld b, $F0
    jr jr_036_44A9

jr_036_447D:
    ld b, $F0
    jr jr_036_44AD

jr_036_4481:
    ld b, $F0
    inc c
    inc l

jr_036_4485:
    ld b, $F0
    inc c
    inc l

jr_036_4489:
    ld b, $F0
    jr jr_036_44B9

jr_036_448D:
    ld b, $F0
    inc c
    inc l

jr_036_4491:
    ld b, $F0
    inc c
    inc l

jr_036_4495:
    ld b, $F0
    jr jr_036_44C5

jr_036_4499:
    ld b, $F0
    inc c
    inc l

jr_036_449D:
    ld b, $F0
    inc c
    inc l

jr_036_44A1:
    ld b, $F0
    inc c
    inc l

jr_036_44A5:
    ld b, $F0
    inc c
    inc l

jr_036_44A9:
    ld b, $F0
    inc c
    inc l

jr_036_44AD:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_44E1

    ld b, $F0
    inc c
    inc l

jr_036_44B9:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_44ED

    ld b, $F0
    inc c
    inc l

jr_036_44C5:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_44F9

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_44E1:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4515

    ld b, $F0
    inc c
    inc l

jr_036_44ED:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4521

    ld b, $F0
    inc c
    inc l

jr_036_44F9:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_452D

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4515:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4549

    ld b, $F0
    inc c
    inc l

jr_036_4521:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4555

    ld b, $F0
    inc c
    inc l

jr_036_452D:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4561

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_4549:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_457D

    ld b, $F0
    inc c
    inc l

jr_036_4555:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4589

    ld b, $F0
    inc c
    inc l

jr_036_4561:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_4595

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_457D:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_45B1

    ld b, $F0
    inc c
    inc l

jr_036_4589:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_45BD

    ld b, $F0
    inc c
    inc l

jr_036_4595:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_45C9

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_45B1:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_45E5

    ld b, $F0
    inc c
    inc l

jr_036_45BD:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_45F1

    ld b, $F0
    inc c
    inc l

jr_036_45C9:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_036_45FD

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_036_45E5:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    nop
    rst $38
    ldh a, [rP1]
    xor h
    inc bc

jr_036_45F1:
    ld b, $F0
    jr nc, jr_036_4621

    ld b, $F0
    jr nc, jr_036_4625

    ld b, $F0
    jr nc, jr_036_4629

jr_036_45FD:
    ld b, $F0
    jr nc, jr_036_462D

    ld b, $F0
    jr nc, jr_036_4631

    ld b, $F0
    jr nc, jr_036_4635

    ld b, $F0
    jr nc, jr_036_4639

    ld b, $F0
    jr nc, jr_036_463D

    ld b, $F0
    jr nc, jr_036_4641

    ld b, $F0
    jr nc, jr_036_4645

    ld b, $F0
    jr nc, jr_036_4649

    ld b, $F0
    jr nc, jr_036_464D

jr_036_4621:
    ld b, $F0
    jr nc, jr_036_4651

jr_036_4625:
    ld b, $F0
    jr nc, jr_036_4655

jr_036_4629:
    ld b, $F0
    jr nc, jr_036_4659

jr_036_462D:
    ld b, $F0
    jr nc, jr_036_465D

jr_036_4631:
    ld b, $F0
    jr nc, jr_036_4661

jr_036_4635:
    ld b, $F0
    jr nc, jr_036_4665

jr_036_4639:
    ld b, $F0
    jr nc, jr_036_4669

jr_036_463D:
    ld b, $F0
    jr nc, jr_036_466D

jr_036_4641:
    ld b, $F0
    jr nc, jr_036_4671

jr_036_4645:
    ld b, $F0
    jr nc, jr_036_4675

jr_036_4649:
    ld b, $F0
    jr nc, jr_036_4679

jr_036_464D:
    ld b, $F0
    jr nc, jr_036_467D

jr_036_4651:
    ld b, $F0
    jr nc, jr_036_4681

jr_036_4655:
    ld b, $F0
    jr nc, jr_036_4685

jr_036_4659:
    ld b, $F0
    jr nc, jr_036_4689

jr_036_465D:
    ld b, $F0
    jr nc, jr_036_468D

jr_036_4661:
    ld b, $F0
    jr nc, jr_036_4691

jr_036_4665:
    ld b, $F0
    jr nc, jr_036_4695

jr_036_4669:
    ld b, $F0
    jr nc, jr_036_4699

jr_036_466D:
    ld b, $F0
    jr nc, jr_036_469D

jr_036_4671:
    ld b, $F0
    jr nc, jr_036_46A1

jr_036_4675:
    ld b, $F0
    jr nc, jr_036_46A5

jr_036_4679:
    ld b, $F0
    jr nc, jr_036_46A9

jr_036_467D:
    ld b, $F0
    jr nc, jr_036_46AD

jr_036_4681:
    ld b, $F0
    jr nc, jr_036_46B1

jr_036_4685:
    ld b, $F0
    jr nc, jr_036_46B5

jr_036_4689:
    ld b, $F0
    jr nc, jr_036_46B9

jr_036_468D:
    ld b, $F0
    jr jr_036_46BD

jr_036_4691:
    ld b, $F0
    nop
    rst $38

jr_036_4695:
    ldh a, [rP1]
    inc a
    dec b

jr_036_4699:
    ldh a, [rNR23]
    inc a
    dec b

jr_036_469D:
    ldh a, [$0C]
    inc a
    dec b

jr_036_46A1:
    ldh a, [$0C]
    inc a
    dec b

jr_036_46A5:
    ldh a, [rNR23]
    inc a
    dec b

jr_036_46A9:
    ldh a, [$0C]
    inc a
    dec b

jr_036_46AD:
    ldh a, [$0C]
    inc a
    dec b

jr_036_46B1:
    ldh a, [rNR23]
    inc a
    dec b

jr_036_46B5:
    ldh a, [$0C]
    inc a
    dec b

jr_036_46B9:
    ldh a, [$0C]
    inc a
    dec b

jr_036_46BD:
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [rNR23]
    scf
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [rNR23]
    dec a
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [rNR23]
    dec a
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [rNR23]
    dec a
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [rNR23]
    dec a
    dec b
    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    scf
    dec b
    ldh a, [rNR23]
    scf
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [rNR23]
    scf
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [$0C]
    scf
    ld e, [hl]
    ldh a, [$60]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [rNR23]
    scf
    dec b
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [rNR23]
    dec sp
    dec b
    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    dec sp
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [rNR23]
    scf
    dec b
    ldh a, [rNR23]
    scf
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [rNR23]
    scf
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [rNR23]
    scf
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [rNR23]
    scf
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [$0C]
    ld b, e
    add b
    and a
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    cp h
    add hl, bc
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [rNR23]
    jr c, @+$07

    ldh a, [$0C]
    jr c, @+$07

    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [rNR23]
    dec [hl]
    dec b
    ldh a, [$0C]
    dec [hl]
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    scf
    dec b
    ldh a, [rNR23]
    scf
    dec b
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    ld c, a
    ld e, [hl]
    ldh a, [$60]
    ld c, e
    ld l, $F0
    jr nc, jr_036_4E82

    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_036_4E88

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_036_4E90

    ld e, [hl]
    ldh a, [$60]
    ld c, a
    ld e, [hl]
    ldh a, [$60]
    ld c, e
    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_036_4EA8

    ld l, $F0
    jr nc, jr_036_4EA7

    ld l, $F0
    jr nc, jr_036_4EAC

    ld e, [hl]
    ldh a, [$60]
    ld d, b
    ld e, [hl]
    ldh a, [$60]
    ld c, l
    ld d, $F0
    jr jr_036_4EC3

    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_036_4ECA

    ld l, $F0

jr_036_4E82:
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_036_4ED0

jr_036_4E88:
    ld e, [hl]
    ldh a, [$60]
    ld c, a
    ld e, [hl]
    ldh a, [$60]
    ld c, e

jr_036_4E90:
    ld l, $F0
    jr nc, @+$4C

    ld d, $F0
    jr jr_036_4EE3

    ld d, $F0
    jr @+$4A

    ld l, $F0
    jr nc, jr_036_4EE3

    ld l, $F0
    jr nc, jr_036_4EE8

    ld e, [hl]
    ldh a, [$60]

jr_036_4EA7:
    ld b, c

jr_036_4EA8:
    ld l, $F0

jr_036_4EAA:
    jr nc, jr_036_4EF0

jr_036_4EAC:
    ld l, $F0
    jr nc, @+$45

    ld e, [hl]
    ldh a, [$60]
    ccf
    ld l, $F0
    jr nc, jr_036_4EFB

    jr z, jr_036_4EAA

    ld a, [hl+]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    halt
    ldh a, [$78]

jr_036_4EC3:
    ld b, [hl]
    ld d, $F0
    jr jr_036_4F10

    ld d, $F0

jr_036_4ECA:
    jr jr_036_4F10

    ld d, $F0
    jr jr_036_4F13

jr_036_4ED0:
    add b
    adc [hl]
    ldh a, [$90]
    ld b, e
    ld l, $F0
    jr nc, jr_036_4F1D

    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld l, $F0

jr_036_4EDF:
    jr nc, jr_036_4F25

    ld l, $F0

jr_036_4EE3:
    jr nc, jr_036_4F28

    ld e, [hl]
    ldh a, [$60]

jr_036_4EE8:
    ccf
    ld l, $F0
    jr nc, @+$45

    jr z, jr_036_4EDF

    ld a, [hl+]

jr_036_4EF0:
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld l, $F0

jr_036_4EFB:
    jr nc, jr_036_4F41

    ld l, $F0
    jr nc, jr_036_4F48

    ld e, [hl]
    ldh a, [$60]
    ld c, a
    ld e, [hl]
    ldh a, [$60]
    inc a
    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld e, [hl]
    ldh a, [$60]

jr_036_4F10:
    ccf
    ld l, $F0

jr_036_4F13:
    jr nc, jr_036_4F53

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_036_4F59

jr_036_4F1D:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_036_4F61

jr_036_4F25:
    ld e, [hl]
    ldh a, [$60]

jr_036_4F28:
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ccf
    ld l, $F0
    jr nc, jr_036_4F6F

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_036_4F75

    ld l, $F0
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_036_4F79

jr_036_4F41:
    ld e, [hl]
    ldh a, [$60]
    ld b, h
    ld e, [hl]
    ldh a, [$60]

jr_036_4F48:
    ld b, c
    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr @+$43

    ld d, $F0

jr_036_4F53:
    jr jr_036_4F93

    ld l, $F0
    jr nc, @+$39

jr_036_4F59:
    ld l, $F0
    jr nc, jr_036_4F99

    ld e, [hl]
    ldh a, [$60]
    ld b, e

jr_036_4F61:
    ld e, [hl]
    ldh a, [$60]
    ccf
    ld l, $F0
    jr nc, jr_036_4FA7

    ld d, $F0
    jr @+$41

    ld d, $F0

jr_036_4F6F:
    jr jr_036_4FAD

    ld l, $F0
    jr nc, @+$45

jr_036_4F75:
    ld l, $F0
    jr nc, @+$4D

jr_036_4F79:
    ld e, [hl]
    ldh a, [$60]
    ld d, d
    ld l, $F0
    jr nc, @+$4D

    ld l, $F0
    jr nc, jr_036_4FD3

    ld l, $F0
    jr nc, @+$4F

    ld d, $F0
    jr @+$50

    ld d, $F0
    jr jr_036_4FDC

    ld l, $F0

jr_036_4F93:
    jr nc, @+$50

    ld l, $F0
    jr nc, jr_036_4FE9

jr_036_4F99:
    ld e, [hl]
    ldh a, [$60]
    ld d, a
    ld l, $F0
    jr nc, jr_036_4FF1

    ld l, $F0
    jr nc, @+$55

    ld l, $F0

jr_036_4FA7:
    jr nc, jr_036_4FFB

    ld d, $F0
    jr @+$55

jr_036_4FAD:
    ld d, $F0
    jr jr_036_5001

    ld l, $F0
    jr nc, jr_036_5003

    ld l, $F0
    jr nc, @+$4F

    ld e, [hl]
    ldh a, [$60]
    ld d, h
    ld l, $F0
    jr nc, jr_036_500E

    ld l, $F0
    jr nc, jr_036_5015

    ld l, $F0
    jr nc, @+$51

    ld d, $F0
    jr jr_036_501D

    ld d, $F0
    jr @+$4F

    ld l, $F0

jr_036_4FD3:
    jr nc, jr_036_5023

    ld l, $F0
    jr nc, jr_036_5028

    ld e, b
    ldh a, [$5A]

jr_036_4FDC:
    ld d, l
    dec b
    ldh a, [rTMA]
    ld d, [hl]
    ld e, [hl]
    ldh a, [$60]
    ld e, e
    ld e, [hl]
    ldh a, [rP1]
    rst $38

jr_036_4FE9:
    pop af
    add b
    cp h
    ld d, c
    ld e, [hl]
    ldh a, [$60]
    ld b, e

jr_036_4FF1:
    ld e, [hl]
    ldh a, [$60]
    ccf
    ld l, $F0
    jr nc, jr_036_5037

    ld d, $F0

jr_036_4FFB:
    jr @+$41

    ld d, $F0
    jr jr_036_503D

jr_036_5001:
    ld l, $F0

jr_036_5003:
    jr nc, @+$39

    ld l, $F0
    jr nc, jr_036_5045

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld e, [hl]

jr_036_500E:
    ldh a, [$60]
    ccf
    ld l, $F0
    jr nc, jr_036_5053

jr_036_5015:
    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_036_5059

jr_036_501D:
    ld l, $F0
    jr nc, @+$39

    ld l, $F0

jr_036_5023:
    jr nc, jr_036_505D

    ld e, [hl]
    ldh a, [$60]

jr_036_5028:
    ld b, h
    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld l, $F0
    jr nc, jr_036_5070

    ld d, $F0
    jr @+$43

    ld d, $F0

jr_036_5037:
    jr jr_036_5077

    ld l, $F0
    jr nc, jr_036_5074

jr_036_503D:
    ld l, $F0
    jr nc, jr_036_507D

    ld e, [hl]
    ldh a, [$60]
    ld b, e

jr_036_5045:
    ld e, [hl]
    ldh a, [$60]
    ccf
    ld l, $F0

jr_036_504B:
    jr nc, jr_036_508B

    ld d, $F0
    jr jr_036_5090

    ld d, $F0

jr_036_5053:
    jr jr_036_5091

    ld l, $F0
    jr nc, jr_036_509C

jr_036_5059:
    jr z, jr_036_504B

    ld a, [hl+]
    ld b, a

jr_036_505D:
    dec b
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf

jr_036_5070:
    dec b
    ldh a, [$0C]
    ld b, e

jr_036_5074:
    dec b
    ldh a, [$0C]

jr_036_5077:
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b

jr_036_507D:
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]

jr_036_508B:
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b

jr_036_5090:
    dec b

jr_036_5091:
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ccf

jr_036_509C:
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
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
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
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
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
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
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, a
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld e, e
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld c, a
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, a
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld e, e
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld c, a
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, a
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld e, e
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld c, a
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld c, c
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld d, l
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld d, l
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld c, c
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, b
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
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    scf
    dec b
    or $0C
    ccf
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, [hl]
    dec b
    ldh a, [$0C]
    ld d, d
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld e, d
    dec b
    ldh a, [$0C]
    ld e, [hl]
    dec b
    ldh a, [$0C]
    ld e, d
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld d, d
    dec b
    ldh a, [$0C]
    ld c, [hl]
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld c, [hl]
    dec b
    ldh a, [$0C]
    ld d, d
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld e, d
    dec b
    ldh a, [$0C]
    ld e, [hl]
    dec b
    ldh a, [$0C]
    ld e, d
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld d, d
    dec b
    ldh a, [$0C]
    ld c, [hl]
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld d, e
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld e, a
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld d, e
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld d, e
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld e, a
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld d, a
    dec b
    ldh a, [$0C]
    ld d, e
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld c, e
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld h, b
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld h, b
    dec b
    ldh a, [$0C]
    ld e, h
    dec b
    ldh a, [$0C]
    ld e, c
    dec b
    ldh a, [$0C]
    ld d, h
    dec b
    ldh a, [$0C]
    ld d, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld c, b
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
    ld c, a
    dec b
    ldh a, [$0C]
    ld d, e
    dec b
    ldh a, [$0C]
    ld d, [hl]
    dec b
    ldh a, [$0C]
    ld e, e
    dec b
    ldh a, [$0C]
    ld e, a
    dec b
    ldh a, [$0C]
    ld e, e
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
    ld d, e
    dec b
    ldh a, [$0C]
    ld d, [hl]
    dec b
    ldh a, [$0C]
    ld e, e
    dec b
    ldh a, [$0C]
    ld e, a
    dec b
    ldh a, [$0C]
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
    ldh a, [rP1]
    rst $38
    nop
    nop
    ret nc

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
    jr z, jr_036_56E5

    nop
    dec l
    jr nc, jr_036_56BA

jr_036_56BA:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_036_56E5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_036_5739

jr_036_5739:
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
    ld [hl], $08
    ld a, [$8E0D]
    ldh a, [rP1]
    and [hl]
    inc bc
    ld b, $F0
    ld h, b
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$60]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$60]
    ld h, $06
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$60]
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
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or b
    daa
    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5C7F

    ldh a, [$30]
    jr nc, jr_036_5C83

    ldh a, [$30]
    jr nc, jr_036_5C87

    ldh a, [rNR23]
    jr nc, jr_036_5C8B

    ldh a, [rNR23]
    jr nc, jr_036_5C8F

    ldh a, [$30]

jr_036_5C7F:
    jr nc, jr_036_5C93

    ldh a, [$30]

jr_036_5C83:
    jr nc, jr_036_5C97

    ldh a, [$30]

jr_036_5C87:
    jr nc, jr_036_5C9B

    ldh a, [rNR23]

jr_036_5C8B:
    jr nc, jr_036_5C9F

    ldh a, [rNR23]

jr_036_5C8F:
    ld l, $12
    ldh a, [$30]

jr_036_5C93:
    ld l, $12
    ldh a, [$30]

jr_036_5C97:
    ld l, $12
    ldh a, [$30]

jr_036_5C9B:
    ld l, $12
    ldh a, [rNR23]

jr_036_5C9F:
    ld l, $12
    ldh a, [rNR23]
    inc l
    ld [de], a
    ldh a, [$30]
    inc l
    ld [de], a
    ldh a, [$30]
    dec hl
    ld l, $F0
    jr nc, jr_036_5CE7

    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_036_5CCB

    ldh a, [$30]
    jr nc, jr_036_5CCF

    ldh a, [$30]
    jr nc, jr_036_5CD3

    ldh a, [$30]
    jr nc, jr_036_5CD7

    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]

jr_036_5CCB:
    add hl, hl
    ld [de], a
    ldh a, [$30]

jr_036_5CCF:
    jr nc, jr_036_5CE3

    ldh a, [$30]

jr_036_5CD3:
    jr nc, jr_036_5CE7

    ldh a, [rNR23]

jr_036_5CD7:
    dec hl
    ld d, $F0
    jr @+$32

    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5CF3

    ldh a, [$30]

jr_036_5CE3:
    jr nc, jr_036_5CF7

    ldh a, [$30]

jr_036_5CE7:
    jr nc, jr_036_5CFB

    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]

jr_036_5CF3:
    dec hl
    ld [de], a
    ldh a, [$30]

jr_036_5CF7:
    dec hl
    ld [de], a
    ldh a, [rNR23]

jr_036_5CFB:
    ld [hl-], a
    ld d, $F0
    jr jr_036_5D30

    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5D17

    ldh a, [$30]
    jr nc, jr_036_5D1B

    ldh a, [$30]
    jr nc, jr_036_5D1F

    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]

jr_036_5D17:
    jr nc, @+$14

    ldh a, [$30]

jr_036_5D1B:
    jr nc, jr_036_5D2F

    ldh a, [$30]

jr_036_5D1F:
    ld sp, $F012
    jr nc, jr_036_5D55

    ld [de], a
    ldh a, [$30]
    ld sp, $F012
    jr nc, jr_036_5D5D

    ld [de], a
    ldh a, [rNR23]

jr_036_5D2F:
    inc l

jr_036_5D30:
    ld d, $F0
    jr jr_036_5D5F

    ld [de], a
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5D57

    ldh a, [$30]
    jr nc, jr_036_5D5B

    ldh a, [$30]
    jr nc, jr_036_5D5F

    ldh a, [$30]
    jr nc, jr_036_5D63

    ldh a, [$30]
    add hl, hl
    ld [de], a

jr_036_5D55:
    ldh a, [$30]

jr_036_5D57:
    add hl, hl
    ld [de], a
    ldh a, [$30]

jr_036_5D5B:
    jr nc, jr_036_5D6F

jr_036_5D5D:
    ldh a, [$30]

jr_036_5D5F:
    jr nc, jr_036_5D73

    ldh a, [rNR23]

jr_036_5D63:
    dec hl
    ld d, $F0
    jr @+$32

    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5D7F

    ldh a, [$30]

jr_036_5D6F:
    jr nc, jr_036_5D83

    ldh a, [$30]

jr_036_5D73:
    jr nc, @+$14

    ldh a, [$30]
    ld sp, $F012
    jr nc, @+$33

    ld [de], a
    ldh a, [rNR23]

jr_036_5D7F:
    inc l
    ld [de], a
    ldh a, [rNR23]

jr_036_5D83:
    dec hl
    ld l, $F0
    jr nc, @+$34

    ld l, $F0
    jr nc, @+$32

    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5DA3

    ldh a, [$30]
    jr nc, jr_036_5DA7

    ldh a, [$30]
    jr nc, jr_036_5DAB

    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]

jr_036_5DA3:
    jr nc, @+$14

    ldh a, [$30]

jr_036_5DA7:
    jr nc, jr_036_5DBB

    ldh a, [$30]

jr_036_5DAB:
    ld sp, $F012
    jr nc, @+$33

    ld [de], a
    ldh a, [$30]
    ld sp, $F012
    jr nc, jr_036_5DE9

    ld [de], a
    ldh a, [$30]

jr_036_5DBB:
    jr nc, @+$2C

    ldh a, [$30]
    inc l
    ld [de], a
    ldh a, [rNR23]
    ld l, $12
    ldh a, [rNR23]
    jr nc, jr_036_5DF3

    ldh a, [$30]
    jr nc, jr_036_5DDF

    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]

jr_036_5DDF:
    inc l
    ld l, $F0
    jr nc, @+$30

    ld l, $F0
    jr nc, jr_036_5E18

    ld a, [hl+]

jr_036_5DE9:
    ldh a, [$30]
    jr nc, jr_036_5DFF

    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]

jr_036_5DF3:
    add hl, hl
    ld [de], a
    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]

jr_036_5DFF:
    dec hl
    ld [de], a
    ldh a, [$30]
    jr nc, @+$14

    ldh a, [$30]
    jr nc, jr_036_5E1B

    ldh a, [$30]
    jr nc, jr_036_5E1F

    ldh a, [$30]
    jr nc, jr_036_5E27

    ldh a, [rNR23]
    dec hl
    ld d, $F0
    jr jr_036_5E41

jr_036_5E18:
    ld [de], a
    ldh a, [$30]

jr_036_5E1B:
    add hl, hl
    ld [de], a
    ldh a, [$30]

jr_036_5E1F:
    dec hl
    ld [de], a
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]

jr_036_5E27:
    inc l
    ld l, $F0
    jr nc, @+$30

    ld l, $F0
    jr nc, jr_036_5E60

    ld [de], a
    ldh a, [$30]
    jr nc, @+$14

    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    ld sp, $F012
    jr nc, jr_036_5E71

    ld [de], a

jr_036_5E41:
    ldh a, [$30]
    ld sp, $F012
    jr nc, jr_036_5E79

    ld [de], a
    ldh a, [rNR23]
    inc l
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    ld [hl-], a
    ld [de], a
    ldh a, [rNR23]
    dec hl

jr_036_5E60:
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_036_5E77

    ldh a, [$30]
    jr nc, jr_036_5E7B

    ldh a, [$30]
    jr nc, jr_036_5E7F

    ldh a, [$30]
    jr nc, jr_036_5E83

jr_036_5E71:
    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]

jr_036_5E77:
    add hl, hl
    ld [de], a

jr_036_5E79:
    ldh a, [$30]

jr_036_5E7B:
    jr nc, jr_036_5E8F

    ldh a, [$30]

jr_036_5E7F:
    jr nc, jr_036_5E93

    ldh a, [rNR23]

jr_036_5E83:
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, @+$14

    ldh a, [$30]
    jr nc, jr_036_5E9F

    ldh a, [$30]

jr_036_5E8F:
    jr nc, jr_036_5EA3

    ldh a, [$30]

jr_036_5E93:
    jr nc, @+$14

    ldh a, [$30]
    ld sp, $F012
    jr nc, @+$33

    ld [de], a
    ldh a, [rNR23]

jr_036_5E9F:
    inc l
    ld [de], a
    ldh a, [rNR23]

jr_036_5EA3:
    dec hl
    ld l, $F0
    jr nc, @+$34

    ld l, $F0
    jr nc, @+$32

    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5EC3

    ldh a, [$30]
    jr nc, jr_036_5EC7

    ldh a, [$30]
    jr nc, jr_036_5ECB

    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]
    add hl, hl
    ld [de], a
    ldh a, [$30]

jr_036_5EC3:
    jr nc, @+$14

    ldh a, [$30]

jr_036_5EC7:
    jr nc, jr_036_5EDB

    ldh a, [$30]

jr_036_5ECB:
    ld sp, $F012
    jr nc, jr_036_5F01

    ld [de], a
    ldh a, [$30]
    ld sp, $F012
    jr nc, jr_036_5F09

    ld [de], a
    ldh a, [$30]

jr_036_5EDB:
    jr nc, jr_036_5F0B

    ldh a, [$30]
    inc l
    ld [de], a
    ldh a, [rNR23]
    ld l, $12
    ldh a, [rNR23]
    jr nc, jr_036_5F13

    ldh a, [$30]
    jr nc, jr_036_5EFF

    ldh a, [$30]
    inc l
    ld [de], a
    ldh a, [$30]
    inc l
    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5F0B

    ldh a, [$30]
    jr nc, jr_036_5F0F

    ldh a, [$30]

jr_036_5EFF:
    dec hl
    ld [de], a

jr_036_5F01:
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5F1B

jr_036_5F09:
    ldh a, [$30]

jr_036_5F0B:
    jr nc, jr_036_5F1F

    ldh a, [rNR23]

jr_036_5F0F:
    dec hl
    ld [de], a
    ldh a, [rNR23]

jr_036_5F13:
    inc l
    ld [de], a
    ldh a, [$30]
    inc l
    ld [de], a
    ldh a, [$30]

jr_036_5F1B:
    jr nc, jr_036_5F2F

    ldh a, [$30]

jr_036_5F1F:
    jr nc, jr_036_5F33

    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    ld sp, $F012
    jr nc, jr_036_5F5D

    ld [de], a
    ldh a, [rNR23]

jr_036_5F2F:
    inc l
    ld [de], a
    ldh a, [rNR23]

jr_036_5F33:
    dec hl
    ld [de], a
    ldh a, [$30]
    ld [hl-], a
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    ld sp, $F012
    jr nc, jr_036_5F75

    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5F5B

    ldh a, [$30]
    jr nc, jr_036_5F5F

    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    inc l
    ld [de], a
    ldh a, [$30]
    inc l
    ld [de], a
    ldh a, [$30]

jr_036_5F5B:
    dec hl
    ld [de], a

jr_036_5F5D:
    ldh a, [$30]

jr_036_5F5F:
    ld [hl-], a
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    ld sp, $F012
    jr nc, jr_036_5F9D

    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5F83

    ldh a, [$30]
    jr nc, jr_036_5F87

jr_036_5F75:
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5F93

    ldh a, [$30]

jr_036_5F83:
    jr nc, jr_036_5F97

    ldh a, [rNR23]

jr_036_5F87:
    dec hl
    ld [de], a
    ldh a, [rNR23]
    inc l
    ld [de], a
    ldh a, [$30]
    inc l
    ld [de], a
    ldh a, [$30]

jr_036_5F93:
    jr nc, jr_036_5FA7

    ldh a, [$30]

jr_036_5F97:
    jr nc, jr_036_5FAB

    ldh a, [$30]
    dec hl
    ld [de], a

jr_036_5F9D:
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5FB7

    ldh a, [$30]

jr_036_5FA7:
    jr nc, jr_036_5FBB

    ldh a, [rNR23]

jr_036_5FAB:
    dec hl
    ld [de], a
    ldh a, [rNR23]
    inc l
    ld [de], a
    ldh a, [$30]
    inc l
    ld [de], a
    ldh a, [$30]

jr_036_5FB7:
    jr nc, jr_036_5FCB

    ldh a, [$30]

jr_036_5FBB:
    jr nc, jr_036_5FCF

    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    ld sp, $F012
    jr nc, jr_036_5FF9

    ld [de], a
    ldh a, [rNR23]

jr_036_5FCB:
    inc l
    ld [de], a
    ldh a, [rNR23]

jr_036_5FCF:
    dec hl
    ld [de], a
    ldh a, [$30]
    ld [hl-], a
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    ld sp, $F012
    jr nc, jr_036_6011

    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_5FF7

    ldh a, [$30]
    jr nc, jr_036_5FFB

    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    inc l
    ld [de], a
    ldh a, [$30]
    inc l
    ld [de], a
    ldh a, [$30]

jr_036_5FF7:
    dec hl
    ld [de], a

jr_036_5FF9:
    ldh a, [$30]

jr_036_5FFB:
    ld [hl-], a
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    ld sp, $F012
    jr nc, jr_036_6039

    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_601F

    ldh a, [$30]
    jr nc, jr_036_6023

jr_036_6011:
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    dec hl
    ld [de], a
    ldh a, [$30]
    jr nc, jr_036_602F

    ldh a, [$30]

jr_036_601F:
    jr nc, jr_036_6033

    ldh a, [rNR23]

jr_036_6023:
    dec hl
    ld [de], a
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    cp h
    ld d, c
    dec bc
    ldh a, [rNR23]

jr_036_602F:
    inc a
    dec b
    ldh a, [$0C]

jr_036_6033:
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec bc

jr_036_6039:
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [rNR23]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, $0B
    ldh a, [rNR23]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, $0B
    ldh a, [rNR23]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [rNR23]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$30]
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
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    inc a
    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld l, $F0
    jr nc, jr_036_6153

    ld d, $F0
    jr jr_036_6159

    ld d, $F0
    jr jr_036_615B

    ld l, $F0
    jr nc, jr_036_6153

    ld l, $F0
    jr nc, jr_036_615C

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld a, [hl+]
    ldh a, [$30]
    ld b, c
    ld d, $F0
    jr jr_036_6170

    ld d, $F0
    jr @+$40

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_036_6178

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld l, $F0
    jr nc, @+$45

    ld d, $F0
    jr jr_036_6191

    ld d, $F0
    jr jr_036_6193

    ld b, d
    ldh a, [rOBP0]

jr_036_6153:
    ld b, e
    ld d, $F0
    jr jr_036_619C

    ld b, d

jr_036_6159:
    ldh a, [rOBP0]

jr_036_615B:
    ld b, h

jr_036_615C:
    ld d, $F0
    jr jr_036_61A6

    ld l, $F0
    jr nc, jr_036_61A8

    ld l, $F0
    jr nc, jr_036_61AB

    ld e, [hl]
    ldh a, [$60]
    scf
    ld e, [hl]
    ldh a, [$60]
    inc a

jr_036_6170:
    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, c

jr_036_6178:
    ld l, $F0
    jr nc, jr_036_61BF

    ld d, $F0
    jr jr_036_61C5

    ld d, $F0
    jr jr_036_61C7

    ld l, $F0
    jr nc, jr_036_61BF

    ld l, $F0
    jr nc, jr_036_61C8

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld e, [hl]

jr_036_6191:
    ldh a, [$60]

jr_036_6193:
    ld b, c
    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr @+$43

jr_036_619C:
    ld d, $F0
    jr jr_036_61E3

    ld l, $F0
    jr nc, @+$39

    ld l, $F0

jr_036_61A6:
    jr nc, jr_036_61E4

jr_036_61A8:
    ld e, [hl]
    ldh a, [$60]

jr_036_61AB:
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld l, $F0
    jr nc, jr_036_61F7

    ld d, $F0
    jr @+$47

    ld d, $F0
    jr @+$45

    ld b, d
    ldh a, [rOBP0]

jr_036_61BF:
    ld b, e
    ld d, $F0
    jr jr_036_6208

    ld a, [hl+]

jr_036_61C5:
    ldh a, [$30]

jr_036_61C7:
    ld b, h

jr_036_61C8:
    ld d, $F0
    jr jr_036_6210

    ld d, $F0
    jr jr_036_6216

    ld l, $F0
    jr nc, jr_036_6218

    ld d, $F0
    jr jr_036_621E

    ld d, $F0
    jr jr_036_6224

    ld d, $F0
    jr jr_036_621C

    dec b
    ldh a, [$0C]

jr_036_61E3:
    inc a

jr_036_61E4:
    dec b
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    ld [de], a
    ldh a, [rNR23]
    inc a
    ld a, [hl+]
    ldh a, [$30]
    inc a
    ld a, [hl+]
    ldh a, [$30]

jr_036_61F7:
    ld b, h
    ld a, [hl+]
    ldh a, [$30]
    ld b, h
    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$43

    ld a, [hl+]
    ldh a, [$30]
    inc a

jr_036_6208:
    ld d, $F0
    jr jr_036_624A

    ld d, $F0
    jr @+$41

jr_036_6210:
    ld l, $F0
    jr nc, jr_036_6252

    ld l, $F0

jr_036_6216:
    jr nc, jr_036_6254

jr_036_6218:
    ld l, $F0
    jr nc, jr_036_6258

jr_036_621C:
    ld l, $F0

jr_036_621E:
    jr nc, jr_036_6264

    ld l, $F0
    jr nc, jr_036_6268

jr_036_6224:
    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$43

    ld l, $F0
    jr nc, jr_036_626C

    ld d, $F0
    jr jr_036_6272

    ld d, $F0
    jr jr_036_6278

    ld b, d
    ldh a, [rOBP0]
    ccf
    ld d, $F0
    jr jr_036_6280

    ld l, $F0
    jr nc, jr_036_6284

    ld l, $F0
    jr nc, jr_036_628C

    ld l, $F0

jr_036_624A:
    jr nc, jr_036_6290

    ld d, $F0
    jr @+$45

    ld d, $F0

jr_036_6252:
    jr jr_036_6295

jr_036_6254:
    ld l, $F0
    jr nc, jr_036_6294

jr_036_6258:
    ld d, $F0
    jr @+$40

    ld d, $F0
    jr jr_036_629F

    ld l, $F0
    jr nc, @+$40

jr_036_6264:
    ld l, $F0
    jr nc, jr_036_62A4

jr_036_6268:
    ld l, $F0
    jr nc, jr_036_62A8

jr_036_626C:
    ld l, $F0
    jr nc, @+$43

    ld l, $F0

jr_036_6272:
    jr nc, @+$43

    ld d, $F0
    jr @+$45

jr_036_6278:
    ld d, $F0
    jr jr_036_62C0

    ld l, $F0
    jr nc, jr_036_62C1

jr_036_6280:
    ld l, $F0
    jr nc, jr_036_62C7

jr_036_6284:
    ld b, d
    ldh a, [rOBP0]
    ld b, d
    ld d, $F0
    jr jr_036_62CF

jr_036_628C:
    ld a, [hl+]
    ldh a, [$30]
    ld b, e

jr_036_6290:
    ld l, $F0
    jr nc, jr_036_62DC

jr_036_6294:
    ld a, [hl+]

jr_036_6295:
    ldh a, [$30]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec b
    ldh a, [$0C]

jr_036_629F:
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, a

jr_036_62A4:
    ld a, [hl+]
    ldh a, [$30]
    ld c, a

jr_036_62A8:
    ld l, $F0
    jr nc, jr_036_62F9

    ld a, [hl+]
    ldh a, [$30]
    ld c, a
    ld d, $F0
    jr jr_036_6305

    ld d, $F0
    jr jr_036_6307

    ld l, $F0
    jr nc, jr_036_62FF

    dec bc
    ldh a, [rNR23]
    ld b, e

jr_036_62C0:
    dec b

jr_036_62C1:
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]

jr_036_62C7:
    ld c, b
    ld a, [hl+]
    ldh a, [$30]
    ld c, b
    dec bc
    ldh a, [rNR23]

jr_036_62CF:
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, a
    ld l, $F0
    jr nc, @+$51

jr_036_62DC:
    ld l, $F0
    jr nc, jr_036_632D

    ld l, $F0
    jr nc, jr_036_632F

    ld d, $F0
    jr @+$4F

    ld d, $F0
    jr @+$51

    ld a, [hl+]
    ldh a, [$30]
    ld c, a
    dec bc
    ldh a, [rNR23]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc

jr_036_62F9:
    ldh a, [$0C]
    ld c, b
    ld a, [hl+]
    ldh a, [$30]

jr_036_62FF:
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec b

jr_036_6305:
    ldh a, [$0C]

jr_036_6307:
    ld c, b
    dec bc
    ldh a, [$0C]
    ld c, a
    ld a, [hl+]
    ldh a, [$30]
    ld c, a
    ld l, $F0
    jr nc, jr_036_6361

    ld l, $F0
    jr nc, @+$51

    ld d, $F0
    jr @+$53

    ld d, $F0
    jr @+$51

    inc hl
    ldh a, [$30]
    ld c, a
    dec bc
    ldh a, [rNR23]
    ld c, a
    ld d, $F0
    jr jr_036_637C

    inc hl

jr_036_632D:
    ldh a, [$30]

jr_036_632F:
    ld d, b
    dec bc
    ldh a, [rNR23]
    ld d, b
    ld d, $F0
    jr @+$54

    ld l, $F0
    jr nc, jr_036_638C

    ld d, $F0
    jr jr_036_6392

    ld d, $F0
    jr jr_036_6398

    ld d, $F0
    jr jr_036_6390

    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [rNR23]
    ld c, b
    ld [de], a
    ldh a, [rNR23]
    ld c, b
    ld a, [hl+]
    ldh a, [$30]
    ld c, b
    ld a, [hl+]
    ldh a, [$30]
    ld c, e
    ld a, [hl+]

jr_036_6361:
    ldh a, [$30]
    ld c, e
    ld d, $F0
    jr jr_036_63B2

    ld d, $F0
    jr jr_036_63B4

    ld d, $F0
    jr jr_036_63BA

    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_036_63C0

    ld d, $F0
    jr jr_036_63C0

jr_036_637C:
    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_036_63CC

    ld e, d
    ldh a, [$60]
    ld c, e
    ld a, [hl+]
    ldh a, [$30]
    ld c, e

jr_036_638C:
    ld d, $F0
    jr jr_036_63DA

jr_036_6390:
    ld d, $F0

jr_036_6392:
    jr jr_036_63DC

    ld d, $F0
    jr @+$4C

jr_036_6398:
    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_036_63E8

    ld d, $F0
    jr @+$4B

    ld l, $F0
    jr nc, jr_036_63F8

    ld l, $F0
    jr nc, @+$51

    ld e, d
    ldh a, [$60]
    ld d, b
    ld d, $F0

jr_036_63B2:
    jr @+$51

jr_036_63B4:
    ld d, $F0
    jr @+$4F

    ld d, $F0

jr_036_63BA:
    jr jr_036_640C

    ld d, $F0
    jr jr_036_640F

jr_036_63C0:
    ld l, $F0
    jr nc, jr_036_640F

    ld d, $F0
    jr jr_036_6412

    ld d, $F0
    jr jr_036_6414

jr_036_63CC:
    ld d, $F0
    jr @+$49

    ld d, $F0
    jr jr_036_641C

    ld d, $F0
    jr jr_036_6422

    ld d, $F0

jr_036_63DA:
    jr @+$49

jr_036_63DC:
    ld l, $F0
    jr nc, @+$45

    ld a, [hl+]
    ldh a, [$30]
    ld b, h
    ld d, $F0
    jr @+$45

jr_036_63E8:
    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_036_6434

    ld d, $F0
    jr jr_036_6437

    ld a, [hl+]
    ldh a, [$30]
    ld b, e

jr_036_63F8:
    ld d, $F0
    jr @+$47

    ld d, $F0
    jr @+$49

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_036_6450

    ld e, d
    ldh a, [$60]
    ld c, e

jr_036_640C:
    ld a, [hl+]
    ldh a, [$30]

jr_036_640F:
    ld c, e
    ld d, $F0

jr_036_6412:
    jr jr_036_645E

jr_036_6414:
    ld d, $F0
    jr jr_036_6460

    ld d, $F0
    jr jr_036_6466

jr_036_641C:
    ld d, $F0
    jr @+$4D

    ld d, $F0

jr_036_6422:
    jr jr_036_646C

    ld d, $F0
    jr jr_036_646C

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_036_6478

    ld e, d
    ldh a, [$60]
    ld c, e

jr_036_6434:
    inc hl
    ldh a, [$30]

jr_036_6437:
    ld c, e
    ld d, $F0
    jr jr_036_6486

    ld d, $F0
    jr jr_036_6488

    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_036_6494

    ld d, $F0
    jr @+$4B

jr_036_6450:
    ld l, $F0
    jr nc, jr_036_64A4

    ld l, $F0
    jr nc, @+$51

    ld e, d
    ldh a, [$60]
    ld d, b
    ld d, $F0

jr_036_645E:
    jr jr_036_64AF

jr_036_6460:
    ld d, $F0
    jr jr_036_64B1

    ld d, $F0

jr_036_6466:
    jr jr_036_64B8

    ld d, $F0
    jr jr_036_64BB

jr_036_646C:
    ld l, $F0
    jr nc, jr_036_64BB

    ld d, $F0
    jr jr_036_64BE

    ld d, $F0
    jr jr_036_64C0

jr_036_6478:
    ld d, $F0
    jr jr_036_64C3

    ld d, $F0
    jr jr_036_64C8

    ld d, $F0
    jr @+$4C

    ld d, $F0

jr_036_6486:
    jr jr_036_64CF

jr_036_6488:
    ld l, $F0
    jr nc, jr_036_64CF

    ld a, [hl+]
    ldh a, [$30]
    ld b, h
    ld d, $F0
    jr jr_036_64D7

jr_036_6494:
    ld d, $F0
    jr jr_036_64D9

    ld d, $F0
    jr jr_036_64E0

    ld d, $F0
    jr jr_036_64E3

    ld l, $F0
    jr nc, jr_036_64E5

jr_036_64A4:
    ld d, $F0
    jr jr_036_64E7

    ld d, $F0
    jr @+$40

    ld a, [hl+]
    ldh a, [$30]

jr_036_64AF:
    ld a, $16

jr_036_64B1:
    ldh a, [rNR23]
    ccf
    ld d, $F0
    jr jr_036_64F4

jr_036_64B8:
    ld e, [hl]
    ldh a, [rP1]

jr_036_64BB:
    rst $38
    ldh a, [rP1]

jr_036_64BE:
    ret nz

    ld d, b

jr_036_64C0:
    ld [de], a
    ldh a, [$30]

jr_036_64C3:
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b

jr_036_64C8:
    dec bc
    ldh a, [rNR23]
    ld b, b
    ld [de], a
    ldh a, [$30]

jr_036_64CF:
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]

jr_036_64D7:
    ld b, c
    dec bc

jr_036_64D9:
    ldh a, [$30]
    ld b, c
    dec bc
    ldh a, [$30]
    ld b, c

jr_036_64E0:
    ld [de], a
    ldh a, [$30]

jr_036_64E3:
    ld b, c
    dec bc

jr_036_64E5:
    ldh a, [rNR23]

jr_036_64E7:
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$30]
    ld b, h
    dec bc
    ldh a, [$30]
    ld b, h

jr_036_64F4:
    dec bc
    ldh a, [$30]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, h
    ld d, $F0
    jr @+$48

    ld [de], a
    ldh a, [$30]
    ld b, [hl]
    dec bc
    ldh a, [rNR23]
    ld b, [hl]
    dec bc
    ldh a, [rNR23]
    ld b, a
    ld d, $F0
    jr nc, jr_036_6553

    ld d, $F0
    jr nc, jr_036_6554

    ld [de], a
    ldh a, [rOBP0]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [$30]
    ld b, b
    ld [de], a
    ldh a, [rNR23]
    ld b, l
    ld [de], a
    ldh a, [rOBP0]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [$30]
    ld a, $16
    ldh a, [rNR23]
    ld b, b
    ld [de], a
    ldh a, [rOBP0]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]

jr_036_6553:
    ld b, b

jr_036_6554:
    dec bc
    ldh a, [$30]
    ld b, b
    ld [de], a
    ldh a, [rNR23]
    ld b, l
    ld [de], a
    ldh a, [rOBP0]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [$30]
    ld a, $16
    ldh a, [rNR23]
    ld b, b
    ld d, $F0
    ld c, b
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [$30]
    ld b, b
    ld d, $F0
    jr @+$47

    ld [de], a
    ldh a, [rOBP0]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [$30]
    ld b, e
    ld d, $F0
    jr jr_036_65E5

    ld d, $F0
    ld c, b
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [$30]
    ld b, c
    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_036_65F7

    ld d, $F0
    jr @+$3B

    ld d, $F0
    jr jr_036_6603

    ld d, $F0
    jr jr_036_6608

    ld d, $F0
    jr @+$40

    ld d, $F0
    jr jr_036_6614

    ld d, $F0
    jr jr_036_6619

    ld d, $F0
    jr jr_036_661C

    ld d, $F0
    jr nc, jr_036_6620

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec b

jr_036_65E5:
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]

jr_036_65F7:
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, l
    ld d, $F0
    jr nc, @+$47

    dec bc
    ldh a, [rNR23]

jr_036_6603:
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l

jr_036_6608:
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, b

jr_036_6614:
    dec bc
    ldh a, [rNR23]
    ld a, $0B

jr_036_6619:
    ldh a, [rNR23]
    ld b, b

jr_036_661C:
    ld [de], a
    ldh a, [$30]
    ld b, b

jr_036_6620:
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, [hl]
    ld d, $F0
    jr nc, jr_036_6684

    ld d, $F0
    jr @+$48

    ld d, $F0
    jr jr_036_668B

    ld l, $F0
    jr nc, jr_036_6683

    ld d, $F0
    jr nc, jr_036_6690

    ld [de], a
    ldh a, [$30]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, l
    ld d, $F0
    jr nc, @+$47

    dec bc
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]

jr_036_6683:
    ld b, c

jr_036_6684:
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]

jr_036_668B:
    ld a, $0B
    ldh a, [rNR23]
    ld b, c

jr_036_6690:
    ld d, $F0
    jr nc, @+$43

    dec bc
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, e
    inc hl
    ldh a, [$30]
    ld b, c
    ld d, $F0
    jr jr_036_66EB

    ld d, $F0
    jr jr_036_66EC

    inc hl
    ldh a, [$30]
    ccf
    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_036_66F8

    ld d, $F0
    jr nc, jr_036_66FC

    ld d, $F0
    inc a
    dec [hl]
    ld b, $F0
    inc c
    jr c, jr_036_66CB

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_036_66CB:
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
    jr jr_036_6713

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

jr_036_66EB:
    ld b, a

jr_036_66EC:
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    jr @+$3A

jr_036_66F8:
    ld b, $F0
    inc c
    inc a

jr_036_66FC:
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    jr jr_036_673E

    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    jr jr_036_674C

    ld b, $F0
    inc c

jr_036_6713:
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
    ld d, h
    ld b, $F0
    jr @+$37

    ld b, $F0
    inc c
    jr c, jr_036_6737

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_036_6737:
    ld b, c
    ld b, $F0
    inc c
    ld b, h
    ld b, $F0

jr_036_673E:
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    jr jr_036_677F

    ld b, $F0
    inc c
    dec sp

jr_036_674C:
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
    ld c, a
    ld b, $F0
    jr jr_036_67A0

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
    ld c, a
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc c

jr_036_677F:
    ld e, b
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld c, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld b, e
    ld b, $F0
    inc c
    ld b, b
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    jr @+$37

jr_036_67A0:
    ld b, $F0
    inc c
    jr c, jr_036_67AB

    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c

jr_036_67AB:
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
    jr jr_036_67F3

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
    ld c, a
    ld b, $F0
    jr jr_036_6810

    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    ccf
    ld b, $F0
    jr jr_036_681E

    ld b, $F0
    inc c
    ld a, $06
    ldh a, [$0C]
    ld b, c
    ld b, $F0
    jr jr_036_682C

    ld b, $F0
    inc c

jr_036_67F3:
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
    ld d, h
    ld b, $F0
    jr @+$3F

    ld b, $F0
    inc c
    ld b, c

jr_036_6810:
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

jr_036_681E:
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, l
    ld b, $F0
    jr @+$3F

    ld b, $F0
    inc c
    ld b, c

jr_036_682C:
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
    ld d, b
    ld b, $F0
    inc c
    ld d, l
    ld b, $F0
    jr jr_036_687B

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
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    inc c
    ld c, a
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

jr_036_687B:
    scf
    ld b, $F0
    inc c
    ld b, b
    ld [de], a
    ldh a, [$30]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, l
    ld [de], a
    ldh a, [$30]
    ld b, l
    dec bc
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR23]
    ld b, b
    ld [de], a
    ldh a, [$30]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, [hl]
    ld [de], a
    ldh a, [$30]
    ld b, h
    dec bc
    ldh a, [rNR23]
    ld b, [hl]
    ld d, $F0
    jr jr_036_692F

    ld a, [hl+]
    ldh a, [$30]
    scf
    ld a, [hl+]
    ldh a, [$30]
    ld b, b
    ld [de], a
    ldh a, [$30]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, l
    ld [de], a
    ldh a, [$30]
    ld b, l
    dec bc
    ldh a, [rNR23]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]

jr_036_692F:
    ld a, $0B
    ldh a, [rNR23]
    ld b, c
    ld [de], a
    ldh a, [$30]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, e
    inc hl
    ldh a, [$30]
    ld b, c
    ld d, $F0
    jr jr_036_698F

    ld d, $F0
    jr jr_036_6990

    inc hl
    ldh a, [$30]
    ccf
    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_036_699C

    ld d, $F0
    jr nc, jr_036_69A0

    ld d, $F0
    inc a
    ccf
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
    jr jr_036_69C3

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

jr_036_698F:
    ld c, e

jr_036_6990:
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    jr jr_036_69DF

jr_036_699C:
    ld b, $F0
    inc c
    ld b, a

jr_036_69A0:
    ld b, $F0
    inc c
    ld c, d
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
    inc c
    ld d, e
    ld b, $F0
    jr jr_036_69FB

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_036_69C3:
    ld c, b
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
    jr jr_036_6A13

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c

jr_036_69DF:
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
    jr jr_036_6A33

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_036_69FB:
    ld c, b
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
    jr @+$43

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c

jr_036_6A13:
    ld c, c
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
    ld d, b
    ld b, $F0
    jr jr_036_6A6B

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c

jr_036_6A33:
    ld b, a
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
    jr @+$43

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, c
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
    ld d, b
    ld b, $F0
    jr jr_036_6AA3

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_036_6A6B:
    ld c, b
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
    jr jr_036_6ABB

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
    jr jr_036_6ADB

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c

jr_036_6AA3:
    ld b, a
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
    jr @+$43

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c

jr_036_6ABB:
    ld c, c
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
    ld d, b
    ld b, $F0
    jr jr_036_6B13

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_036_6ADB:
    ld c, b
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
    jr jr_036_6B2F

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
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_036_6B4B

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_036_6B13:
    ld c, b
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
    jr jr_036_6B63

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c

jr_036_6B2F:
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
    jr jr_036_6B83

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_036_6B4B:
    ld c, b
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
    jr jr_036_6B9F

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c

jr_036_6B63:
    ld c, d
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
    inc c
    ld d, e
    ld b, $F0
    jr jr_036_6BBB

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_036_6B83:
    ld c, b
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
    jr jr_036_6BD3

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c

jr_036_6B9F:
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
    jr jr_036_6BF3

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_036_6BBB:
    ld c, b
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
    jr @+$43

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c

jr_036_6BD3:
    ld c, c
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
    ld d, b
    ld b, $F0
    jr jr_036_6C2B

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c

jr_036_6BF3:
    ld b, a
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
    jr @+$43

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, c
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
    ld d, b
    ld b, $F0
    jr jr_036_6C63

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_036_6C2B:
    ld c, b
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
    jr jr_036_6C80

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
    ld c, e
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    inc c
    ld d, h
    ld b, $F0
    jr jr_036_6C9B

    ld b, $F0
    inc c
    ld b, a
    ld b, $F0
    inc c
    ld c, d
    ld b, $F0
    inc c

jr_036_6C63:
    ld b, a
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
    jr @+$43

    ld b, $F0
    inc c
    ld b, h
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c
    ld b, h

jr_036_6C80:
    ld b, $F0
    inc c
    ld c, c
    ld b, $F0
    inc c
    ld c, l
    ld b, $F0
    inc c
    ld d, b
    ld b, $F0
    jr jr_036_6CD3

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_036_6C9B:
    ld c, b
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
    jr @+$45

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
    ld c, d
    ld b, $F0
    inc c
    ld c, a
    ld b, $F0
    inc c
    ld d, e
    ld b, $F0
    jr jr_036_6D0B

    ld b, $F0
    inc c
    ld c, b
    ld b, $F0
    inc c
    ld c, e
    ld b, $F0
    inc c

jr_036_6CD3:
    ld c, b
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
    jr z, jr_036_6D1F

    nop
    dec l
    jr nc, jr_036_6CF4

jr_036_6CF4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_036_6D0B:
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

jr_036_6D1F:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_036_6D73

jr_036_6D73:
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
    ld a, $02
    or $08
    add $0C
    ld [bc], a
    ldh a, [rP1]
    and [hl]
    inc bc
    ld b, $F0
    inc h
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [rNR23]
    ld h, $06
    ldh a, [$78]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [$30]
    ld h, $06
    ldh a, [rNR50]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [rNR23]
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
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
    ld h, $06
    ldh a, [$0C]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rNR23]
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
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or b
    daa
    ld b, $F0
    inc c
    jr nc, jr_036_706D

    ldh a, [$0C]
    jr nc, jr_036_7071

    ldh a, [$0C]

jr_036_706D:
    jr nc, jr_036_7075

    ldh a, [$0C]

jr_036_7071:
    jr nc, jr_036_7079

    ldh a, [$0C]

jr_036_7075:
    jr nc, jr_036_707D

    ldh a, [$0C]

jr_036_7079:
    jr nc, jr_036_7081

    ldh a, [$0C]

jr_036_707D:
    jr nc, jr_036_7085

    ldh a, [$0C]

jr_036_7081:
    jr nc, jr_036_7089

    ldh a, [$0C]

jr_036_7085:
    jr nc, jr_036_708D

    ldh a, [$0C]

jr_036_7089:
    jr nc, jr_036_7091

    ldh a, [$0C]

jr_036_708D:
    jr nc, jr_036_7095

    ldh a, [$0C]

jr_036_7091:
    jr nc, jr_036_7099

    ldh a, [$0C]

jr_036_7095:
    jr nc, jr_036_709D

    ldh a, [$0C]

jr_036_7099:
    jr nc, jr_036_70A1

    ldh a, [$0C]

jr_036_709D:
    jr nc, jr_036_70A5

    ldh a, [$0C]

jr_036_70A1:
    inc l
    ld b, $F0
    inc c

jr_036_70A5:
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
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
    jr nc, jr_036_7181

    ldh a, [$60]
    dec hl
    ld l, $F0
    jr nc, jr_036_7155

    ld l, $F0
    jr nc, @+$32

    ld b, $F0
    inc c
    jr nc, jr_036_7139

    ldh a, [$0C]
    jr nc, jr_036_713D

    ldh a, [$0C]

jr_036_7139:
    jr nc, jr_036_7141

    ldh a, [$0C]

jr_036_713D:
    jr nc, jr_036_7145

    ldh a, [$0C]

jr_036_7141:
    jr nc, jr_036_7149

    ldh a, [$0C]

jr_036_7145:
    jr nc, jr_036_714D

    ldh a, [$0C]

jr_036_7149:
    jr nc, jr_036_7151

    ldh a, [$0C]

jr_036_714D:
    jr nc, jr_036_7155

    ldh a, [$0C]

jr_036_7151:
    jr nc, jr_036_7159

    ldh a, [$0C]

jr_036_7155:
    jr nc, jr_036_715D

    ldh a, [$0C]

jr_036_7159:
    jr nc, jr_036_7161

    ldh a, [$0C]

jr_036_715D:
    jr nc, jr_036_7165

    ldh a, [$0C]

jr_036_7161:
    jr nc, jr_036_7169

    ldh a, [$0C]

jr_036_7165:
    jr nc, jr_036_716D

    ldh a, [$0C]

jr_036_7169:
    jr nc, jr_036_7171

    ldh a, [$0C]

jr_036_716D:
    jr nc, jr_036_7175

    ldh a, [$0C]

jr_036_7171:
    jr nc, jr_036_7179

    ldh a, [$0C]

jr_036_7175:
    jr nc, jr_036_717D

    ldh a, [$0C]

jr_036_7179:
    jr nc, jr_036_7181

    ldh a, [$0C]

jr_036_717D:
    jr nc, jr_036_7185

    ldh a, [$0C]

jr_036_7181:
    jr nc, jr_036_7189

    ldh a, [$0C]

jr_036_7185:
    jr nc, jr_036_718D

    ldh a, [$0C]

jr_036_7189:
    jr nc, jr_036_7191

    ldh a, [$0C]

jr_036_718D:
    jr nc, jr_036_7195

    ldh a, [$0C]

jr_036_7191:
    jr nc, jr_036_7199

    ldh a, [$0C]

jr_036_7195:
    jr nc, jr_036_719D

    ldh a, [$0C]

jr_036_7199:
    jr nc, jr_036_71A1

    ldh a, [$0C]

jr_036_719D:
    jr nc, jr_036_71A5

    ldh a, [$0C]

jr_036_71A1:
    jr nc, jr_036_71A9

    ldh a, [$0C]

jr_036_71A5:
    inc l
    ld b, $F0
    inc c

jr_036_71A9:
    ld l, $06
    ldh a, [$0C]
    jr nc, jr_036_71B5

    ldh a, [$0C]
    jr nc, jr_036_71B9

    ldh a, [$0C]

jr_036_71B5:
    jr nc, jr_036_71BD

    ldh a, [$0C]

jr_036_71B9:
    jr nc, jr_036_71C1

    ldh a, [$0C]

jr_036_71BD:
    jr nc, jr_036_71C5

    ldh a, [$0C]

jr_036_71C1:
    jr nc, jr_036_71C9

    ldh a, [$0C]

jr_036_71C5:
    jr nc, jr_036_71CD

    ldh a, [$0C]

jr_036_71C9:
    jr nc, jr_036_71D1

    ldh a, [$0C]

jr_036_71CD:
    jr nc, jr_036_71D5

    ldh a, [$0C]

jr_036_71D1:
    jr nc, jr_036_71D9

    ldh a, [$0C]

jr_036_71D5:
    jr nc, jr_036_71DD

    ldh a, [$0C]

jr_036_71D9:
    jr nc, jr_036_71E1

    ldh a, [$0C]

jr_036_71DD:
    jr nc, jr_036_71E5

    ldh a, [$0C]

jr_036_71E1:
    jr nc, jr_036_71E9

    ldh a, [$0C]

jr_036_71E5:
    jr nc, jr_036_71ED

    ldh a, [$0C]

jr_036_71E9:
    jr nc, jr_036_71F1

    ldh a, [$0C]

jr_036_71ED:
    jr nc, jr_036_71F5

    ldh a, [$0C]

jr_036_71F1:
    jr nc, jr_036_71F9

    ldh a, [$0C]

jr_036_71F5:
    jr nc, jr_036_71FD

    ldh a, [$0C]

jr_036_71F9:
    jr nc, jr_036_7201

    ldh a, [$0C]

jr_036_71FD:
    jr nc, jr_036_7205

    ldh a, [$0C]

jr_036_7201:
    jr nc, jr_036_7209

    ldh a, [$0C]

jr_036_7205:
    jr nc, jr_036_720D

    ldh a, [$0C]

jr_036_7209:
    jr nc, jr_036_7211

    ldh a, [$0C]

jr_036_720D:
    jr nc, jr_036_7215

    ldh a, [$0C]

jr_036_7211:
    jr nc, jr_036_7219

    ldh a, [$0C]

jr_036_7215:
    jr nc, jr_036_721D

    ldh a, [$0C]

jr_036_7219:
    jr nc, jr_036_7221

    ldh a, [$0C]

jr_036_721D:
    jr nc, jr_036_7225

    ldh a, [$0C]

jr_036_7221:
    jr nc, jr_036_7229

    ldh a, [$0C]

jr_036_7225:
    inc l
    ld b, $F0
    inc c

jr_036_7229:
    ld l, $06
    ldh a, [$0C]
    jr nc, jr_036_7235

    ldh a, [$0C]
    jr nc, jr_036_7239

    ldh a, [$0C]

jr_036_7235:
    jr nc, jr_036_723D

    ldh a, [$0C]

jr_036_7239:
    jr nc, jr_036_7241

    ldh a, [$0C]

jr_036_723D:
    jr nc, jr_036_7245

    ldh a, [$0C]

jr_036_7241:
    jr nc, jr_036_7249

    ldh a, [$0C]

jr_036_7245:
    jr nc, jr_036_724D

    ldh a, [$0C]

jr_036_7249:
    jr nc, jr_036_7251

    ldh a, [$0C]

jr_036_724D:
    jr nc, jr_036_7255

    ldh a, [$0C]

jr_036_7251:
    jr nc, jr_036_7259

    ldh a, [$0C]

jr_036_7255:
    jr nc, jr_036_725D

    ldh a, [$0C]

jr_036_7259:
    jr nc, jr_036_7261

    ldh a, [$0C]

jr_036_725D:
    jr nc, jr_036_7265

    ldh a, [$0C]

jr_036_7261:
    jr nc, jr_036_7269

    ldh a, [$0C]

jr_036_7265:
    jr nc, jr_036_726D

    ldh a, [$0C]

jr_036_7269:
    jr nc, jr_036_7271

    ldh a, [$0C]

jr_036_726D:
    jr nc, jr_036_7275

    ldh a, [$0C]

jr_036_7271:
    jr nc, jr_036_7279

    ldh a, [$0C]

jr_036_7275:
    jr nc, jr_036_727D

    ldh a, [$0C]

jr_036_7279:
    jr nc, jr_036_7281

    ldh a, [$0C]

jr_036_727D:
    jr nc, jr_036_7285

    ldh a, [$0C]

jr_036_7281:
    jr nc, jr_036_7289

    ldh a, [$0C]

jr_036_7285:
    jr nc, jr_036_728D

    ldh a, [$0C]

jr_036_7289:
    jr nc, jr_036_7291

    ldh a, [$0C]

jr_036_728D:
    jr nc, jr_036_7295

    ldh a, [$0C]

jr_036_7291:
    jr nc, jr_036_7299

    ldh a, [$0C]

jr_036_7295:
    jr nc, jr_036_729D

    ldh a, [$0C]

jr_036_7299:
    jr nc, jr_036_72A1

    ldh a, [$0C]

jr_036_729D:
    jr nc, jr_036_72A5

    ldh a, [$0C]

jr_036_72A1:
    jr nc, jr_036_72A9

    ldh a, [$0C]

jr_036_72A5:
    inc l
    ld b, $F0
    inc c

jr_036_72A9:
    ld l, $06
    ldh a, [$0C]
    jr nc, jr_036_72B5

    ldh a, [$0C]
    jr nc, jr_036_72B9

    ldh a, [$0C]

jr_036_72B5:
    jr nc, jr_036_72BD

    ldh a, [$0C]

jr_036_72B9:
    jr nc, jr_036_72C1

    ldh a, [$0C]

jr_036_72BD:
    jr nc, jr_036_72C5

    ldh a, [$0C]

jr_036_72C1:
    jr nc, jr_036_72C9

    ldh a, [$0C]

jr_036_72C5:
    jr nc, jr_036_72CD

    ldh a, [$0C]

jr_036_72C9:
    jr nc, jr_036_72D1

    ldh a, [$0C]

jr_036_72CD:
    jr nc, jr_036_72D5

    ldh a, [$0C]

jr_036_72D1:
    jr nc, jr_036_72D9

    ldh a, [$0C]

jr_036_72D5:
    jr nc, jr_036_72DD

    ldh a, [$0C]

jr_036_72D9:
    jr nc, jr_036_72E1

    ldh a, [$0C]

jr_036_72DD:
    jr nc, jr_036_72E5

    ldh a, [$0C]

jr_036_72E1:
    jr nc, jr_036_72E9

    ldh a, [$0C]

jr_036_72E5:
    jr nc, jr_036_72ED

    ldh a, [$0C]

jr_036_72E9:
    jr nc, jr_036_72F1

    ldh a, [$0C]

jr_036_72ED:
    jr nc, jr_036_72F5

    ldh a, [$0C]

jr_036_72F1:
    jr nc, jr_036_72F9

    ldh a, [$0C]

jr_036_72F5:
    jr nc, jr_036_72FD

    ldh a, [$0C]

jr_036_72F9:
    jr nc, jr_036_7301

    ldh a, [$0C]

jr_036_72FD:
    jr nc, jr_036_7305

    ldh a, [$0C]

jr_036_7301:
    jr nc, jr_036_7309

    ldh a, [$0C]

jr_036_7305:
    jr nc, jr_036_730D

    ldh a, [$0C]

jr_036_7309:
    jr nc, jr_036_7311

    ldh a, [$0C]

jr_036_730D:
    jr nc, jr_036_7315

    ldh a, [$0C]

jr_036_7311:
    jr nc, jr_036_7319

    ldh a, [$0C]

jr_036_7315:
    jr nc, jr_036_731D

    ldh a, [$0C]

jr_036_7319:
    jr nc, jr_036_7321

    ldh a, [$0C]

jr_036_731D:
    jr nc, jr_036_7325

    ldh a, [$0C]

jr_036_7321:
    jr nc, jr_036_7329

    ldh a, [$0C]

jr_036_7325:
    inc l
    ld b, $F0
    inc c

jr_036_7329:
    ld l, $06
    ldh a, [$0C]
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
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_036_7365

    ldh a, [$0C]
    jr nc, jr_036_7369

    ldh a, [$0C]

jr_036_7365:
    jr nc, jr_036_736D

    ldh a, [$0C]

jr_036_7369:
    jr nc, jr_036_7371

    ldh a, [$0C]

jr_036_736D:
    ld [hl-], a
    ld b, $F0
    inc c

jr_036_7371:
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
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_036_73A5

    ldh a, [$0C]
    jr nc, jr_036_73A9

    ldh a, [$0C]

jr_036_73A5:
    jr nc, jr_036_73AD

    ldh a, [$0C]

jr_036_73A9:
    jr nc, jr_036_73B1

    ldh a, [$0C]

jr_036_73AD:
    ld [hl-], a
    ld b, $F0
    inc c

jr_036_73B1:
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
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_036_73E5

    ldh a, [$0C]
    jr nc, jr_036_73E9

    ldh a, [$0C]

jr_036_73E5:
    jr nc, jr_036_73ED

    ldh a, [$0C]

jr_036_73E9:
    jr nc, jr_036_73F1

    ldh a, [$0C]

jr_036_73ED:
    ld [hl-], a
    ld b, $F0
    inc c

jr_036_73F1:
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
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_036_7425

    ldh a, [$0C]
    jr nc, jr_036_7429

    ldh a, [$0C]

jr_036_7425:
    jr nc, jr_036_742D

    ldh a, [$0C]

jr_036_7429:
    jr nc, jr_036_7431

    ldh a, [$0C]

jr_036_742D:
    ld [hl-], a
    ld b, $F0
    inc c

jr_036_7431:
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
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_036_7465

    ldh a, [$0C]
    jr nc, jr_036_7469

    ldh a, [$0C]

jr_036_7465:
    jr nc, jr_036_746D

    ldh a, [$0C]

jr_036_7469:
    jr nc, jr_036_7471

    ldh a, [$0C]

jr_036_746D:
    ld [hl-], a
    ld b, $F0
    inc c

jr_036_7471:
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
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_036_74A5

    ldh a, [$0C]
    jr nc, jr_036_74A9

    ldh a, [$0C]

jr_036_74A5:
    jr nc, jr_036_74AD

    ldh a, [$0C]

jr_036_74A9:
    jr nc, jr_036_74B1

    ldh a, [$0C]

jr_036_74AD:
    ld [hl-], a
    ld b, $F0
    inc c

jr_036_74B1:
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
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    jr nc, jr_036_74E5

    ldh a, [$0C]
    jr nc, jr_036_74E9

    ldh a, [$0C]

jr_036_74E5:
    jr nc, jr_036_74ED

    ldh a, [$0C]

jr_036_74E9:
    jr nc, jr_036_74F1

    ldh a, [$0C]

jr_036_74ED:
    dec l
    ld b, $F0
    inc c

jr_036_74F1:
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    dec l
    ld b, $F0
    inc c
    jr nc, jr_036_7535

    ldh a, [$0C]
    jr nc, jr_036_7539

    ldh a, [$0C]

jr_036_7535:
    jr nc, jr_036_753D

    ldh a, [$0C]

jr_036_7539:
    jr nc, jr_036_7541

    ldh a, [$0C]

jr_036_753D:
    jr nc, jr_036_7545

    ldh a, [$0C]

jr_036_7541:
    jr nc, jr_036_7549

    ldh a, [$0C]

jr_036_7545:
    jr nc, jr_036_754D

    ldh a, [$0C]

jr_036_7549:
    jr nc, jr_036_7551

    ldh a, [$0C]

jr_036_754D:
    jr nc, jr_036_7555

    ldh a, [$0C]

jr_036_7551:
    jr nc, jr_036_7559

    ldh a, [$0C]

jr_036_7555:
    jr nc, jr_036_755D

    ldh a, [$0C]

jr_036_7559:
    jr nc, jr_036_7561

    ldh a, [$0C]

jr_036_755D:
    jr nc, jr_036_7565

    ldh a, [$0C]

jr_036_7561:
    jr nc, jr_036_7569

    ldh a, [$0C]

jr_036_7565:
    jr nc, jr_036_756D

    ldh a, [$0C]

jr_036_7569:
    jr nc, jr_036_7571

    ldh a, [$0C]

jr_036_756D:
    jr nc, jr_036_7575

    ldh a, [$0C]

jr_036_7571:
    jr nc, jr_036_7579

    ldh a, [$0C]

jr_036_7575:
    jr nc, jr_036_757D

    ldh a, [$0C]

jr_036_7579:
    jr nc, jr_036_7581

    ldh a, [$0C]

jr_036_757D:
    jr nc, jr_036_7585

    ldh a, [$0C]

jr_036_7581:
    jr nc, jr_036_7589

    ldh a, [$0C]

jr_036_7585:
    jr nc, jr_036_758D

    ldh a, [$0C]

jr_036_7589:
    jr nc, jr_036_7591

    ldh a, [$0C]

jr_036_758D:
    jr nc, jr_036_7595

    ldh a, [$0C]

jr_036_7591:
    jr nc, jr_036_7599

    ldh a, [$0C]

jr_036_7595:
    jr nc, jr_036_759D

    ldh a, [$0C]

jr_036_7599:
    jr nc, jr_036_75A1

    ldh a, [$0C]

jr_036_759D:
    jr nc, jr_036_75A5

    ldh a, [$0C]

jr_036_75A1:
    jr nc, jr_036_75A9

    ldh a, [$0C]

jr_036_75A5:
    inc l
    ld b, $F0
    inc c

jr_036_75A9:
    ld l, $06
    ldh a, [$0C]
    jr nc, jr_036_75B5

    ldh a, [$0C]
    jr nc, jr_036_75B9

    ldh a, [$0C]

jr_036_75B5:
    jr nc, jr_036_75BD

    ldh a, [$0C]

jr_036_75B9:
    jr nc, jr_036_75C1

    ldh a, [$0C]

jr_036_75BD:
    jr nc, jr_036_75C5

    ldh a, [$0C]

jr_036_75C1:
    jr nc, jr_036_75C9

    ldh a, [$0C]

jr_036_75C5:
    jr nc, jr_036_75CD

    ldh a, [$0C]

jr_036_75C9:
    jr nc, jr_036_75D1

    ldh a, [$0C]

jr_036_75CD:
    jr nc, jr_036_75D5

    ldh a, [$0C]

jr_036_75D1:
    jr nc, jr_036_75D9

    ldh a, [$0C]

jr_036_75D5:
    jr nc, jr_036_75DD

    ldh a, [$0C]

jr_036_75D9:
    jr nc, jr_036_75E1

    ldh a, [$0C]

jr_036_75DD:
    jr nc, jr_036_75E5

    ldh a, [$0C]

jr_036_75E1:
    jr nc, jr_036_75E9

    ldh a, [$0C]

jr_036_75E5:
    jr nc, jr_036_75ED

    ldh a, [$0C]

jr_036_75E9:
    jr nc, jr_036_75F1

    ldh a, [$0C]

jr_036_75ED:
    jr nc, jr_036_75F5

    ldh a, [$0C]

jr_036_75F1:
    jr nc, jr_036_75F9

    ldh a, [$0C]

jr_036_75F5:
    jr nc, jr_036_75FD

    ldh a, [$0C]

jr_036_75F9:
    jr nc, jr_036_7601

    ldh a, [$0C]

jr_036_75FD:
    jr nc, jr_036_7605

    ldh a, [$0C]

jr_036_7601:
    jr nc, jr_036_7609

    ldh a, [$0C]

jr_036_7605:
    jr nc, jr_036_760D

    ldh a, [$0C]

jr_036_7609:
    jr nc, jr_036_7611

    ldh a, [$0C]

jr_036_760D:
    jr nc, jr_036_7615

    ldh a, [$0C]

jr_036_7611:
    jr nc, jr_036_7619

    ldh a, [$0C]

jr_036_7615:
    jr nc, jr_036_761D

    ldh a, [$0C]

jr_036_7619:
    jr nc, jr_036_7621

    ldh a, [$0C]

jr_036_761D:
    jr nc, jr_036_7625

    ldh a, [$0C]

jr_036_7621:
    jr nc, jr_036_7629

    ldh a, [$0C]

jr_036_7625:
    inc l
    ld b, $F0
    inc c

jr_036_7629:
    ld l, $06
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    cp h
    ld d, c
    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_036_767C

    ld d, $F0
    jr @+$49

    ld d, $F0
    jr jr_036_768A

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_036_768C

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_036_768E

    ld d, $F0
    jr jr_036_7699

    ld d, $F0
    jr @+$44

    ld d, $F0
    jr jr_036_76A5

    ld d, $F0
    jr jr_036_76AA

    ld d, $F0
    jr jr_036_76A9

    ld d, $F0
    jr @+$44

    ld d, $F0
    jr jr_036_76AD

    ld d, $F0
    jr jr_036_76AE

    ld d, $F0
    jr jr_036_76B9

    ld d, $F0
    jr @+$44

    ld d, $F0

jr_036_767C:
    jr jr_036_76C5

    ld d, $F0
    jr jr_036_76CA

    ld d, $F0
    jr jr_036_76C9

    ld d, $F0
    jr @+$44

jr_036_768A:
    ld d, $F0

jr_036_768C:
    jr jr_036_76CD

jr_036_768E:
    ld d, $F0
    jr jr_036_76CE

    ld e, [hl]
    ldh a, [$60]
    ld c, b
    dec b
    ldh a, [rTMA]

jr_036_7699:
    ld b, a
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]

jr_036_76A5:
    ld b, h
    dec b
    ldh a, [rTMA]

jr_036_76A9:
    ld b, e

jr_036_76AA:
    dec b
    ldh a, [rTMA]

jr_036_76AD:
    ld b, d

jr_036_76AE:
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]

jr_036_76B9:
    ccf
    dec b
    ldh a, [rTMA]
    ld a, $05
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]

jr_036_76C5:
    inc a
    dec b
    ldh a, [rTMA]

jr_036_76C9:
    dec sp

jr_036_76CA:
    dec b
    ldh a, [rTMA]

jr_036_76CD:
    inc a

jr_036_76CE:
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    jr c, jr_036_770A

    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e

jr_036_770A:
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$6C]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    jr c, jr_036_774E

    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e

jr_036_774E:
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, d
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    inc a
    ld d, $F0
    ld h, b
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    jr c, jr_036_779E

    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e

jr_036_779E:
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$6C]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    jr c, jr_036_77E2

    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e

jr_036_77E2:
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, d
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [$60]
    ld b, l
    dec bc
    ldh a, [rNR50]
    ld b, l
    dec bc
    ldh a, [rNR50]
    ld b, l
    ld b, $F0
    jr @+$48

    ld l, $F0
    jr nc, jr_036_7852

    ld d, $F0
    jr nc, @+$47

    dec bc
    ldh a, [rNR50]
    ld b, l
    dec bc
    ldh a, [rNR50]
    ld b, l
    dec bc
    ldh a, [rNR12]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    ld l, $F0
    jr nc, jr_036_786A

    ld d, $F0
    jr nc, @+$47

    dec bc
    ldh a, [rNR50]
    ld b, l
    dec bc
    ldh a, [rNR50]
    ld b, l
    dec bc
    ldh a, [rNR23]
    ld b, [hl]
    ld l, $F0
    jr nc, jr_036_787E

    ld d, $F0
    jr nc, @+$47

    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$A8]
    ld b, l
    dec bc
    ldh a, [rNR50]
    ld b, l
    dec bc
    ldh a, [rNR50]
    ld b, l

jr_036_7852:
    dec bc
    ldh a, [rNR23]
    ld b, [hl]
    ld l, $F0
    jr nc, jr_036_789E

    ld d, $F0
    jr nc, jr_036_78A3

    dec bc
    ldh a, [rNR50]
    ld b, l
    dec bc
    ldh a, [rNR50]
    ld b, l
    dec bc
    ldh a, [rNR12]
    ld b, l

jr_036_786A:
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    ld l, $F0
    jr nc, jr_036_78B6

    ld d, $F0
    jr nc, jr_036_78BB

    dec bc
    ldh a, [rNR50]
    ld b, l
    dec bc
    ldh a, [rNR50]
    ld b, l

jr_036_787E:
    dec bc
    ldh a, [rNR23]
    ld b, [hl]
    ld l, $F0
    jr nc, jr_036_78CA

    ld d, $F0
    jr nc, jr_036_78CF

    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, l
    ld d, $F0
    ld c, b
    ld d, c
    dec b
    ldh a, [rTMA]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld c, a

jr_036_789E:
    dec b
    ldh a, [rTMA]
    ld c, [hl]
    dec b

jr_036_78A3:
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

jr_036_78B6:
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b

jr_036_78BB:
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

jr_036_78CA:
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b

jr_036_78CF:
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    jr c, jr_036_790A

    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e

jr_036_790A:
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$6C]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    jr c, jr_036_794E

    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, e

jr_036_794E:
    dec bc
    ldh a, [rNR23]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, d
    dec bc
    ldh a, [$0C]
    ccf
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    inc a
    ld d, $F0
    nop
    rst $38
    ldh a, [rP1]
    jp $2E50


    ldh a, [$30]
    ld b, h
    ld l, $F0
    jr nc, @+$48

    ld l, $F0
    jr nc, jr_036_79C1

    ld l, $F0
    jr nc, jr_036_79C6

    ld l, $F0
    jr nc, jr_036_79CB

    ld l, $F0
    jr nc, @+$4C

    ld l, $F0
    jr nc, jr_036_79D5

    ld l, $F0
    jr nc, jr_036_79DB

    ld l, $F0
    jr nc, @+$50

    ld l, $F0
    jr nc, jr_036_79E5

    ld l, $F0
    jr nc, jr_036_79EA

    ld l, $F0
    jr nc, jr_036_79ED

    ld e, [hl]
    ldh a, [$60]
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

jr_036_79C1:
    ld c, b
    dec b
    ldh a, [rTMA]
    ld b, a

jr_036_79C6:
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b

jr_036_79CB:
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]

jr_036_79D5:
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b

jr_036_79DB:
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld c, b
    add hl, bc
    ldh a, [$0C]

jr_036_79E5:
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a

jr_036_79EA:
    add hl, bc
    ldh a, [$0C]

jr_036_79ED:
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    ld a, $09
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, d
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld b, h
    add hl, bc
    ldh a, [$0C]
    ld b, c
    add hl, bc
    ldh a, [$0C]
    add hl, sp
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld c, h
    add hl, bc
    ldh a, [$0C]
    ld b, b
    add hl, bc
    ldh a, [$0C]
    ld b, l
    add hl, bc
    ldh a, [$0C]
    ld c, h
    add hl, bc
    ldh a, [$0C]
    ld d, c
    add hl, bc
    ldh a, [$0C]
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
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, a
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld c, c
    add hl, bc
    ldh a, [$0C]
    ld c, b
    add hl, bc
    ldh a, [$0C]
    ld b, e
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
    jr z, jr_036_7F0E

jr_036_7F0E:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc l
    nop
    ld a, [$0E00]
    nop
    jr jr_036_7F91

jr_036_7F91:
    ld [hl+], a
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
    ld [hl-], a
    nop
    ld c, d
    nop
    ld h, d
    ldh a, [rP1]
    or e
    daa
    dec b
    ldh a, [$0C]
    inc sp
    dec b
    ldh a, [$0C]
    inc sp
    ld d, $F0
    jr @+$35

    ld l, $F0
    jr nc, @+$37

    ld e, [hl]
    ldh a, [rP1]
    rst $38
    ret nc

    nop
    cp a
    ld d, c
    dec bc
    ret nc

    inc c
    ld b, e
    dec bc
    ret nc

    inc c
    ld b, [hl]
    ld d, $D0
    jr @+$4D

    ld l, $D0
    jr nc, @+$4F

    ld e, [hl]
    ldh a, [rP1]
    rst $38
    or b
    nop
    jp $0B50


    or b
    inc c
    ld b, [hl]
    dec bc
    or b
    inc c
    ld c, e
    ld d, $B0
    jr @+$51

    ld l, $B0
    jr nc, @+$53

    ld e, [hl]
    ldh a, [rP1]
    rst $38
