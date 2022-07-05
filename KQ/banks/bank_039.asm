; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $039", ROMX[$4000], BANK[$39]

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
    jr z, jr_039_403B

    nop
    dec l
    jr nc, jr_039_4010

jr_039_4010:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_039_403B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_039_408F

jr_039_408F:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    add hl, de
    ldh [$FE], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    add hl, de
    ldh [$FE], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $E019
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ldh [$FE], a
    nop
    nop
    nop
    nop
    nop
    ld a, $06
    ld b, $0A
    ld b, d
    rrca
    ld l, $F0
    nop
    xor h
    ld b, $06
    ldh a, [rNR23]
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_4102

    ld b, $F0
    jr jr_039_4106

    ld b, $F0
    jr jr_039_410A

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_4116

    ld b, $F0
    jr jr_039_411A

    ld b, $F0
    jr jr_039_411E

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_412A

    ld b, $F0
    jr jr_039_412E

jr_039_4102:
    ld b, $F0
    jr jr_039_4132

jr_039_4106:
    ld b, $F0
    inc c
    inc l

jr_039_410A:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_413E

    ld b, $F0
    jr jr_039_4142

jr_039_4116:
    ld b, $F0
    jr jr_039_4146

jr_039_411A:
    ld b, $F0
    inc c
    inc l

jr_039_411E:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_4152

    ld b, $F0
    jr jr_039_4156

jr_039_412A:
    ld b, $F0
    jr jr_039_415A

jr_039_412E:
    ld b, $F0
    inc c
    inc l

jr_039_4132:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_4166

    ld b, $F0
    jr jr_039_416A

jr_039_413E:
    ld b, $F0
    jr jr_039_416E

jr_039_4142:
    ld b, $F0
    inc c
    inc l

jr_039_4146:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_417A

    ld b, $F0
    jr jr_039_417E

jr_039_4152:
    ld b, $F0
    jr jr_039_4182

jr_039_4156:
    ld b, $F0
    inc c
    inc l

jr_039_415A:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_418E

    ld b, $F0
    jr jr_039_4192

jr_039_4166:
    ld b, $F0
    jr jr_039_4196

jr_039_416A:
    ld b, $F0
    inc c
    inc l

jr_039_416E:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_41A2

    ld b, $F0
    jr jr_039_41A6

jr_039_417A:
    ld b, $F0
    jr jr_039_41AA

jr_039_417E:
    ld b, $F0
    inc c
    inc l

jr_039_4182:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_41B6

    ld b, $F0
    jr jr_039_41BA

jr_039_418E:
    ld b, $F0
    jr jr_039_41BE

jr_039_4192:
    ld b, $F0
    inc c
    inc l

jr_039_4196:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_41CA

    ld b, $F0
    jr jr_039_41CE

jr_039_41A2:
    ld b, $F0
    jr jr_039_41D2

jr_039_41A6:
    ld b, $F0
    inc c
    inc l

jr_039_41AA:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_41DE

    ld b, $F0
    jr jr_039_41E2

jr_039_41B6:
    ld b, $F0
    jr jr_039_41E6

jr_039_41BA:
    ld b, $F0
    inc c
    inc l

jr_039_41BE:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_41F2

    ld b, $F0
    jr jr_039_41F6

jr_039_41CA:
    ld b, $F0
    jr jr_039_41FA

jr_039_41CE:
    ld b, $F0
    inc c
    inc l

jr_039_41D2:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_4206

    ld b, $F0
    jr jr_039_420A

jr_039_41DE:
    ld b, $F0
    jr jr_039_420E

jr_039_41E2:
    ld b, $F0
    inc c
    inc l

jr_039_41E6:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_421A

    ld b, $F0
    jr jr_039_421E

jr_039_41F2:
    ld b, $F0
    jr jr_039_4222

jr_039_41F6:
    ld b, $F0
    inc c
    inc l

jr_039_41FA:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_422E

    ld b, $F0
    jr jr_039_4232

jr_039_4206:
    ld b, $F0
    inc h
    inc l

jr_039_420A:
    ld b, $F0
    jr jr_039_423A

jr_039_420E:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_421A:
    ld b, $F0
    inc h
    inc l

jr_039_421E:
    ld b, $F0
    inc h
    inc l

jr_039_4222:
    ld b, $F0
    jr jr_039_4252

    ld b, $F0
    inc h
    inc l
    ld b, $F0
    jr jr_039_425A

jr_039_422E:
    ld b, $F0
    inc c
    inc l

jr_039_4232:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_423A:
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    jr jr_039_4272

    ld b, $F0
    inc h
    inc l
    ld b, $F0
    jr jr_039_427A

    ld b, $F0
    inc c
    inc l

jr_039_4252:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_425A:
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    jr jr_039_4292

    ld b, $F0
    inc h
    inc l
    ld b, $F0
    jr jr_039_429A

    ld b, $F0
    inc c
    inc l

jr_039_4272:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_427A:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4292:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_429A:
    ld b, $F0
    jr jr_039_42CA

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_42D6

    ld b, $F0
    jr jr_039_42DA

    ld b, $F0
    jr jr_039_42DE

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_42EA

    ld b, $F0
    jr jr_039_42EE

    ld b, $F0
    jr jr_039_42F2

    ld b, $F0
    inc c
    inc l

jr_039_42CA:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_42FE

    ld b, $F0
    jr jr_039_4302

jr_039_42D6:
    ld b, $F0
    jr jr_039_4306

jr_039_42DA:
    ld b, $F0
    inc c
    inc l

jr_039_42DE:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_4312

    ld b, $F0
    jr jr_039_4316

jr_039_42EA:
    ld b, $F0
    jr jr_039_431A

jr_039_42EE:
    ld b, $F0
    inc c
    inc l

jr_039_42F2:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_4326

    ld b, $F0
    jr jr_039_432A

jr_039_42FE:
    ld b, $F0
    jr jr_039_432E

jr_039_4302:
    ld b, $F0
    inc c
    inc l

jr_039_4306:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_433A

    ld b, $F0
    jr jr_039_433E

jr_039_4312:
    ld b, $F0
    jr jr_039_4342

jr_039_4316:
    ld b, $F0
    inc c
    inc l

jr_039_431A:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_434E

    ld b, $F0
    jr jr_039_4352

jr_039_4326:
    ld b, $F0
    jr jr_039_4356

jr_039_432A:
    ld b, $F0
    inc c
    inc l

jr_039_432E:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_4362

    ld b, $F0
    jr jr_039_4366

jr_039_433A:
    ld b, $F0
    jr jr_039_436A

jr_039_433E:
    ld b, $F0
    inc c
    inc l

jr_039_4342:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_4376

    ld b, $F0
    jr jr_039_437A

jr_039_434E:
    ld b, $F0
    jr jr_039_437E

jr_039_4352:
    ld b, $F0
    inc c
    inc l

jr_039_4356:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_438A

    ld b, $F0
    jr jr_039_438E

jr_039_4362:
    ld b, $F0
    jr jr_039_4392

jr_039_4366:
    ld b, $F0
    inc c
    inc l

jr_039_436A:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_439E

    ld b, $F0
    jr jr_039_43A2

jr_039_4376:
    ld b, $F0
    jr jr_039_43A6

jr_039_437A:
    ld b, $F0
    inc c
    inc l

jr_039_437E:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_43B2

    ld b, $F0
    jr jr_039_43B6

jr_039_438A:
    ld b, $F0
    jr jr_039_43BA

jr_039_438E:
    ld b, $F0
    inc c
    inc l

jr_039_4392:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_43C6

    ld b, $F0
    jr jr_039_43CA

jr_039_439E:
    ld b, $F0
    jr jr_039_43CE

jr_039_43A2:
    ld b, $F0
    inc c
    inc l

jr_039_43A6:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_43DA

    ld b, $F0
    jr jr_039_43DE

jr_039_43B2:
    ld b, $F0
    jr jr_039_43E2

jr_039_43B6:
    ld b, $F0
    inc c
    inc l

jr_039_43BA:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_43EE

    ld b, $F0
    jr jr_039_43F2

jr_039_43C6:
    ld b, $F0
    jr jr_039_43F6

jr_039_43CA:
    ld b, $F0
    inc c
    inc l

jr_039_43CE:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_4402

    ld b, $F0
    jr jr_039_4406

jr_039_43DA:
    ld b, $F0
    inc c
    inc l

jr_039_43DE:
    ld b, $F0
    inc c
    inc l

jr_039_43E2:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc h
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_43EE:
    ld b, $F0
    inc c
    inc l

jr_039_43F2:
    ld b, $F0
    jr jr_039_4422

jr_039_43F6:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_442E

jr_039_4402:
    ld b, $F0
    inc c
    inc l

jr_039_4406:
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
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
    inc c
    inc l

jr_039_4422:
    ld b, $F0
    jr jr_039_4452

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_442E:
    ld b, $F0
    jr jr_039_445E

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
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
    inc c
    inc l

jr_039_4452:
    ld b, $F0
    jr jr_039_4482

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_445E:
    ld b, $F0
    jr jr_039_448E

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
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
    inc c
    inc l

jr_039_4482:
    ld b, $F0
    jr jr_039_44B2

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_448E:
    ld b, $F0
    jr jr_039_44BE

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_44CA

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l
    ld b, $F0
    jr jr_039_44D6

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_44B2:
    ld b, $F0
    jr jr_039_44E2

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_44BE:
    ld b, $F0
    jr jr_039_44EE

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_44CA:
    ld b, $F0
    jr jr_039_44FA

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_44D6:
    ld b, $F0
    jr jr_039_4506

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_44E2:
    ld b, $F0
    jr jr_039_4512

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_44EE:
    ld b, $F0
    jr jr_039_451E

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_44FA:
    ld b, $F0
    jr jr_039_452A

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4506:
    ld b, $F0
    jr jr_039_4536

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4512:
    ld b, $F0
    jr jr_039_4542

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_451E:
    ld b, $F0
    jr jr_039_454E

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_452A:
    ld b, $F0
    jr jr_039_455A

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4536:
    ld b, $F0
    jr jr_039_4566

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4542:
    ld b, $F0
    jr jr_039_4572

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_454E:
    ld b, $F0
    jr jr_039_457E

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_455A:
    ld b, $F0
    jr jr_039_458A

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4566:
    ld b, $F0
    jr jr_039_4596

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4572:
    ld b, $F0
    jr jr_039_45A2

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_457E:
    ld b, $F0
    jr jr_039_45AE

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_458A:
    ld b, $F0
    jr jr_039_45BA

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4596:
    ld b, $F0
    jr jr_039_45C6

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_45A2:
    ld b, $F0
    jr jr_039_45D2

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_45AE:
    ld b, $F0
    jr jr_039_45DE

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_45BA:
    ld b, $F0
    jr jr_039_45EA

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_45C6:
    ld b, $F0
    jr jr_039_45F6

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_45D2:
    ld b, $F0
    jr jr_039_4602

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_45DE:
    ld b, $F0
    jr jr_039_460E

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_45EA:
    ld b, $F0
    jr jr_039_461A

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_45F6:
    ld b, $F0
    jr jr_039_4626

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4602:
    ld b, $F0
    jr jr_039_4632

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_460E:
    ld b, $F0
    jr jr_039_463E

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_461A:
    ld b, $F0
    jr jr_039_464A

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4626:
    ld b, $F0
    jr jr_039_4656

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4632:
    ld b, $F0
    jr jr_039_4662

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_463E:
    ld b, $F0
    jr jr_039_466E

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_464A:
    ld b, $F0
    jr jr_039_467A

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4656:
    ld b, $F0
    jr jr_039_4686

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_4662:
    ld b, $F0
    jr @+$2E

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_466E:
    ld b, $F0
    jr @+$2E

    ld b, $F0
    inc c
    inc l
    ld b, $F0
    inc c
    inc l

jr_039_467A:
    ld b, $F0
    jr jr_039_46AA

    ld b, $F0

jr_039_4680:
    jr @+$2E

    ld b, $F0
    jr @+$2E

jr_039_4686:
    ld b, $F0
    nop
    rst $38
    ldh a, [rP1]
    or b
    daa
    jr jr_039_4680

    inc h
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_46B7

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    dec hl

jr_039_46AA:
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_46C7

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_46B7:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_46D7

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_46C7:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_46E7

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_46D7:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_46F7

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_46E7:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4707

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_46F7:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4717

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4707:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4727

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4717:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4737

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4727:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4747

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4737:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4757

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4747:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4767

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4757:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4777

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4767:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4787

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4777:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4797

    ldh a, [rNR50]
    jr nc, jr_039_478E

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4787:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    dec hl

jr_039_478E:
    jr @-$0E

    inc h
    dec hl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc

jr_039_4797:
    ldh a, [$0C]
    ld [hl], $0B
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    jr c, @+$25

    ldh a, [rNR50]
    scf
    ld a, [hl+]
    ldh a, [$3C]
    dec l
    jr @-$0E

    inc h
    dec l
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [$0C]
    ld [hl], $0B
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    jr c, jr_039_47E2

    ldh a, [rNR50]
    scf
    ld a, [hl+]
    ldh a, [$3C]
    ld l, $18
    ldh a, [rNR50]
    ld l, $0B
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [$0C]
    ld [hl], $0B
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    jr c, jr_039_47FE

    ldh a, [rNR50]
    scf
    ld a, [hl+]
    ldh a, [$3C]
    cpl

jr_039_47E2:
    jr @-$0E

    inc h
    cpl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [$0C]
    ld [hl], $0B
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    jr c, @+$25

    ldh a, [rNR50]
    scf
    rla
    ldh a, [rNR23]
    dec [hl]

jr_039_47FE:
    dec bc
    ldh a, [$0C]
    inc sp
    dec bc
    ldh a, [$0C]
    ld [hl-], a
    dec bc
    ldh a, [$0C]
    jr nc, jr_039_4823

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4833

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4823:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4843

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4833:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4853

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4843:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4863

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4853:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4873

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4863:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4883

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4873:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4893

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4883:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_48A3

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4893:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_48B3

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_48A3:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_48C3

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_48B3:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_48D3

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_48C3:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_48E3

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_48D3:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_48F3

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_48E3:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, jr_039_4903

    ldh a, [rNR50]
    jr nc, @+$0D

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_48F3:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    jr nc, @+$1A

    ldh a, [rNR50]
    jr nc, jr_039_490A

    ldh a, [$0C]
    dec hl
    ld [de], a

jr_039_4903:
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    dec hl

jr_039_490A:
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
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [$0C]
    ld [hl], $0B
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    jr c, @+$25

    ldh a, [rNR50]
    scf
    inc hl
    ldh a, [$3C]
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
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [$0C]
    ld [hl], $0B
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    jr c, @+$25

    ldh a, [rNR50]
    scf
    inc hl
    ldh a, [$3C]
    ld l, $06
    ldh a, [$0C]
    ld l, $06
    ldh a, [$0C]
    ld l, $06
    ldh a, [$0C]
    ld l, $0B
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [$0C]
    ld [hl], $0B
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    jr c, @+$25

    ldh a, [rNR50]
    scf
    inc hl
    ldh a, [$3C]
    cpl
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    cpl
    ld b, $F0
    inc c
    cpl
    dec bc
    ldh a, [rNR23]
    scf
    dec bc
    ldh a, [$0C]
    ld [hl], $0B
    ldh a, [$0C]
    scf
    dec bc
    ldh a, [$0C]
    jr c, jr_039_49B6

    ldh a, [rNR50]
    scf
    inc hl
    ldh a, [rNR50]
    dec hl
    rla
    ldh a, [rNR23]
    jr nc, jr_039_49AA

    ldh a, [rNR50]
    jr nc, jr_039_49AE

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_039_49AA:
    dec bc
    ldh a, [rNR50]
    add hl, hl

jr_039_49AE:
    dec bc
    ldh a, [rNR23]
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl

jr_039_49B6:
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_039_49CA

    ldh a, [rNR50]
    jr nc, jr_039_49CE

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_039_49CA:
    dec bc
    ldh a, [rNR50]
    add hl, hl

jr_039_49CE:
    dec bc
    ldh a, [rNR23]
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_039_49EA

    ldh a, [rNR50]
    jr nc, jr_039_49EE

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_039_49EA:
    dec bc
    ldh a, [rNR50]
    add hl, hl

jr_039_49EE:
    dec bc
    ldh a, [rNR23]
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR50]
    inc l
    dec bc
    ldh a, [rNR50]
    inc l
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    scf
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_039_4A22

    ldh a, [rNR50]
    jr nc, jr_039_4A26

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_039_4A22:
    dec bc
    ldh a, [rNR50]
    add hl, hl

jr_039_4A26:
    dec bc
    ldh a, [rNR23]
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_039_4A42

    ldh a, [rNR50]
    jr nc, jr_039_4A46

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_039_4A42:
    dec bc
    ldh a, [rNR50]
    add hl, hl

jr_039_4A46:
    dec bc
    ldh a, [rNR23]
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    jr nc, jr_039_4A62

    ldh a, [rNR50]
    jr nc, jr_039_4A66

    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_039_4A62:
    dec bc
    ldh a, [rNR50]
    add hl, hl

jr_039_4A66:
    dec bc
    ldh a, [rNR23]
    add hl, hl
    dec bc
    ldh a, [$0C]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR50]
    inc l
    dec bc
    ldh a, [rNR50]
    inc l
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [$30]
    scf
    rla
    ldh a, [rNR23]
    dec hl
    rla
    ldh a, [rNR23]
    inc l
    ld a, [hl+]
    ldh a, [$30]
    dec hl
    ld a, [hl+]
    ldh a, [$30]
    ld a, [hl+]
    ld a, [hl+]
    ldh a, [$30]
    dec hl
    ld a, [hl+]
    ldh a, [$30]
    inc l
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    ld a, [hl+]
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    inc l
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    ld a, [hl+]
    ld [de], a
    ldh a, [rNR23]
    dec hl
    ld [de], a
    ldh a, [rNR23]
    ld a, [hl+]
    ld [de], a
    ldh a, [$30]
    dec hl
    inc hl
    ldh a, [rP1]
    rst $38
    ldh a, [rNR23]
    cp h
    ld d, c
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    inc h
    ld b, e
    jr z, @-$0E

    jr nc, jr_039_4B26

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    inc h
    ld b, e
    jr z, @-$0E

    jr nc, jr_039_4B46

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    jr @-$0E

    inc h
    ld b, e

jr_039_4B26:
    daa
    ldh a, [$2A]
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
    ld e, [hl]
    ldh a, [$78]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a

jr_039_4B46:
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    inc h
    ld b, e
    jr z, @-$0E

    jr nc, jr_039_4B9A

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    inc h
    ld b, e
    jr z, @-$0E

    jr nc, jr_039_4BBA

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    inc h
    ld b, e

jr_039_4B9A:
    jr z, @-$0E

    ld a, [hl+]
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
    ld e, [hl]
    ldh a, [$60]
    dec sp
    ld e, $F0
    inc h
    dec sp
    dec bc
    ldh a, [rNR23]
    ld c, a

jr_039_4BBA:
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
    inc hl
    ldh a, [$3C]
    inc a
    ld e, $F0
    inc h
    inc a
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
    inc hl
    ldh a, [$3C]
    dec a
    ld e, $F0
    inc h
    dec a
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
    ld a, $1E
    ldh a, [rNR50]
    ld a, $0B
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
    jr jr_039_4C73

    dec bc
    ldh a, [$0C]
    ld d, d
    dec bc
    ldh a, [$0C]
    ld d, e
    db $10
    ldh a, [rNR50]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    inc h
    ld b, e
    jr z, @-$0E

    jr nc, jr_039_4C8A

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    inc h
    ld b, e
    jr z, @-$0E

    jr nc, jr_039_4CAA

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc

jr_039_4C73:
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    inc h
    ld b, e

jr_039_4C8A:
    jr z, @-$0E

    ld a, [hl+]
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
    ld e, [hl]
    ldh a, [$78]
    inc a
    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a

jr_039_4CAA:
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    inc h
    ld b, e
    jr z, @-$0E

    jr nc, jr_039_4CFE

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    inc h
    ld b, e
    jr z, @-$0E

    jr nc, jr_039_4D1E

    dec bc
    ldh a, [rNR23]
    ld b, b
    dec bc
    ldh a, [rNR23]
    inc a
    dec bc
    ldh a, [rNR12]
    ld b, c
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    ld e, $41
    inc b
    ldh a, [rTMA]
    ld b, d
    ld d, $F0
    inc h
    ld b, e

jr_039_4CFE:
    jr z, @-$0E

    ld a, [hl+]
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
    ld e, [hl]
    ldh a, [$60]
    dec sp
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    inc c
    dec sp

jr_039_4D1E:
    ld b, $F0
    inc c
    dec sp
    ld b, $F0
    ld a, b
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, [hl]
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    inc a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    inc c
    inc a
    ld b, $F0
    ld a, b
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, [hl]
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    dec a
    ld b, $F0
    inc c
    dec a
    ld b, $F0
    inc c
    dec a
    ld b, $F0
    inc c
    dec a
    ld b, $F0
    ld a, b
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, [hl]
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$0C]
    ld a, $06
    ldh a, [$84]
    ld c, a
    ld c, $F0
    ld [de], a
    ld a, $05
    ldh a, [rTMA]
    ccf
    dec bc
    ldh a, [rNR50]
    ld b, b
    dec bc
    ldh a, [rNR50]
    ld b, e
    dec bc
    ldh a, [rNR50]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [rNR23]
    ld c, b
    db $10
    ldh a, [rNR12]
    ld a, $05
    ldh a, [rTMA]
    ccf
    dec bc
    ldh a, [rNR50]
    ld b, b
    dec bc
    ldh a, [rNR50]
    ld b, e
    dec bc
    ldh a, [rNR50]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [rNR12]
    ld a, $05
    ldh a, [rTMA]
    ccf
    dec bc
    ldh a, [rNR50]
    ld b, b
    dec bc
    ldh a, [rNR50]
    ld b, e
    dec bc
    ldh a, [rNR50]
    ld b, c
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR12]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    dec bc
    ldh a, [rNR50]
    ld c, b
    dec bc
    ldh a, [rNR50]
    ld c, e
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
    ld c, a
    dec bc
    ldh a, [rNR12]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, e
    dec bc
    ldh a, [rNR50]
    ld c, h
    dec bc
    ldh a, [rNR50]
    ld c, a
    dec bc
    ldh a, [rNR50]
    ld c, l
    dec bc
    ldh a, [rNR23]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [rNR23]
    ld d, h
    dec bc
    ldh a, [rNR12]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, e
    dec bc
    ldh a, [rNR50]
    ld c, h
    dec bc
    ldh a, [rNR50]
    ld c, a
    dec bc
    ldh a, [rNR50]
    ld c, a
    dec bc
    ldh a, [rNR23]
    ld c, a
    dec bc
    ldh a, [$0C]
    ld c, l
    dec bc
    ldh a, [rNR23]
    ld c, d
    dec bc
    ldh a, [rNR12]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, e
    dec bc
    ldh a, [rNR50]
    ld c, h
    dec bc
    ldh a, [rNR50]
    ld c, a
    dec bc
    ldh a, [rNR50]
    ld c, l
    dec bc
    ldh a, [rNR23]
    ld c, l
    dec bc
    ldh a, [$0C]
    ld d, c
    dec bc
    ldh a, [rNR23]
    ld d, h
    dec bc
    ldh a, [rNR12]
    ld c, a
    dec b
    ldh a, [rTMA]
    ld d, b
    dec bc
    ldh a, [rNR50]
    ld d, b
    dec bc
    ldh a, [rNR50]
    ld d, b
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
    dec bc
    ldh a, [$0C]
    ld c, a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
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
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
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
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
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
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
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
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, h
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
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, d
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
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
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
    ldh a, [rP1]
    rst $38
    ldh a, [rNR23]
    jp nz, $0550

    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$2A]
    ld b, d
    inc b
    ldh a, [rTMA]
    ld b, e
    db $10
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    inc a
    ld e, [hl]
    ldh a, [$78]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$2A]
    ld b, d
    inc b
    ldh a, [rTMA]
    ld b, e
    db $10
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    inc a
    ld e, [hl]
    di
    nop
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
    ld b, e
    dec b
    ldh a, [rNR34]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$2A]
    ld b, d
    inc b
    ldh a, [rTMA]
    ld b, e
    db $10
    ldh a, [rNR23]
    ld b, d
    dec bc
    ldh a, [rNR23]
    ld b, c
    dec bc
    ldh a, [rNR23]
    inc a
    ld e, [hl]
    ldh a, [$78]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$30]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [rNR50]
    ld b, d
    dec b
    ldh a, [$2A]
    ld b, d
    inc b
    ldh a, [rTMA]
    ld b, e
    db $10
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
    ld b, a
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld b, a
    dec bc
    ldh a, [$9C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, b
    dec bc
    ldh a, [$9C]
    ld c, c
    dec b
    ldh a, [$0C]
    ld c, c
    dec b
    ldh a, [$0C]
    ld c, c
    dec b
    ldh a, [$0C]
    ld c, c
    dec bc
    ldh a, [$9C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [$84]
    ld c, d
    ld [de], a
    ldh a, [rNR50]
    inc a
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, c
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, c
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, c
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, c
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [$0C]
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
    ld b, e
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, c
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, c
    dec b
    ldh a, [rNR23]
    inc a
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, b
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, h
    dec b
    ldh a, [rNR23]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, l
    dec b
    ldh a, [$0C]
    ld d, c
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    ld c, c
    dec b
    ldh a, [$0C]
    ld c, d
    dec b
    ldh a, [$0C]
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
    ld b, e
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ld c, b
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    ld b, a
    dec b
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$30]
    scf
    ld a, [hl+]
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
    jr z, jr_039_5475

    nop
    dec l
    jr nc, jr_039_544A

jr_039_544A:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_039_5475:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr z, jr_039_54CB

jr_039_54CB:
    dec [hl]
    nop
    nop
    rlca
    inc bc
    nop
    ld b, $1E
    nop
    cp $00
    inc bc
    nop
    nop
    nop
    nop
    dec b
    inc bc
    nop
    inc b
    ld e, $00
    cp $00
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    ld [bc], a
    ld e, $00
    cp $00
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0003
    nop
    ld e, $00
    cp $00
    inc bc
    nop
    nop
    nop
    ld d, d
    inc bc
    ld d, l
    inc bc
    sbc c
    inc b
    ret nc

    inc b
    and $06
    inc l
    ld b, $32
    db $10
    dec [hl]
    ldh a, [rP1]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    xor h
    inc bc
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l

jr_039_581F:
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [rOBP0]
    inc l
    inc c
    ldh a, [rNR23]
    inc l
    inc c
    ldh a, [$60]
    inc l
    inc c
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    add hl, sp
    add b
    adc [hl]
    ldh a, [$90]
    add hl, sp
    inc h
    ldh a, [$30]
    add hl, sp
    ld e, [hl]
    ldh a, [$60]
    add hl, sp
    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    add b
    add h
    ldh a, [$90]
    inc [hl]
    ld l, $F0
    jr nc, jr_039_58A8

    ld e, [hl]
    ldh a, [$60]
    dec sp
    ld e, [hl]
    ldh a, [$60]
    dec [hl]
    add b
    add h
    ldh a, [$90]
    dec [hl]
    inc h
    ldh a, [$30]
    dec [hl]
    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a
    add b
    add h
    ldh a, [$90]
    ld [hl-], a
    inc h
    ldh a, [$30]
    ld [hl-], a
    ld d, h
    ldh a, [$60]
    ld [hl-], a
    ld e, [hl]
    ldh a, [$60]
    jr nc, jr_039_581F

    add h
    ldh a, [$90]
    jr nc, @+$26

    ldh a, [$30]
    jr nc, jr_039_5906

jr_039_58A8:
    ldh a, [$60]
    scf
    ld e, [hl]
    ldh a, [$60]
    dec [hl]
    add b
    adc [hl]
    ldh a, [$90]
    dec [hl]
    ld l, $F0
    jr nc, @+$37

    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a
    add b
    adc [hl]
    ldh a, [$90]
    ld [hl-], a
    ld l, $F0
    jr nc, @+$34

    ld e, [hl]
    ldh a, [$60]
    inc sp
    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    add b
    adc [hl]
    ldh a, [$90]
    inc [hl]
    ld l, $F0
    jr nc, jr_039_590E

    ld e, [hl]
    ldh a, [$60]
    dec sp
    ld e, [hl]
    ldh a, [$60]
    add hl, sp
    add b
    adc [hl]
    ldh a, [$90]
    add hl, sp
    ld l, $F0
    jr nc, @+$3B

    ld e, [hl]
    ldh a, [$60]
    add hl, sp
    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    add b
    adc [hl]
    ldh a, [$90]
    inc [hl]
    ld l, $F0
    jr nc, jr_039_5930

    ld e, [hl]
    ldh a, [$60]
    dec sp
    ld e, [hl]
    ldh a, [$60]
    dec [hl]
    add b
    add h

jr_039_5906:
    ldh a, [$90]
    dec [hl]
    inc h
    ldh a, [$30]
    dec [hl]
    ld e, [hl]

jr_039_590E:
    ldh a, [$60]
    inc [hl]
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a
    add b
    add h
    ldh a, [$90]
    ld [hl-], a
    inc h
    ldh a, [$30]
    ld [hl-], a
    ld d, h
    ldh a, [$60]
    ld [hl-], a
    ld e, [hl]
    ldh a, [$60]
    jr nc, @-$7E

    add h
    ldh a, [$90]
    jr nc, jr_039_5950

    ldh a, [$30]
    jr nc, jr_039_598E

jr_039_5930:
    ldh a, [$60]
    scf
    ld e, [hl]
    ldh a, [$60]
    dec [hl]
    add b
    add h
    ldh a, [$90]
    dec [hl]
    ld l, $F0
    jr nc, @+$37

    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a
    add b
    add h
    ldh a, [$90]
    ld [hl-], a
    inc h
    ldh a, [$30]

jr_039_5950:
    ld [hl-], a
    ld e, [hl]
    ldh a, [$60]
    inc sp
    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    add b
    add h
    ldh a, [$90]
    inc [hl]
    inc h
    ldh a, [$30]
    inc [hl]
    ld e, [hl]
    ldh a, [$60]
    dec sp
    ld e, [hl]
    ldh a, [$60]
    add hl, sp
    add c
    ld e, $F1
    jr nz, jr_039_59AF

    ld e, [hl]
    ldh a, [$60]
    add hl, sp
    add c
    ld e, $F1
    jr nz, @+$42

    ld e, [hl]
    ldh a, [$60]
    add hl, sp
    add c
    ld e, $F1
    jr nz, jr_039_59C1

    ld e, [hl]
    ldh a, [$60]
    add hl, sp
    add c
    ld e, $F1
    jr nz, jr_039_59CA

    ld e, [hl]
    ldh a, [rP1]
    rst $38

jr_039_598E:
    ldh a, [rP1]
    cp c
    daa
    add c
    ld c, [hl]
    pop af
    ld d, b
    inc [hl]
    ld l, $F0
    jr nc, jr_039_59D4

jr_039_599B:
    add c
    ld c, [hl]
    pop af
    ld d, b
    inc [hl]
    ld l, $F0
    nop
    rst $38
    ldh a, [rP1]
    ld b, l
    add c
    jr jr_039_599B

    ld a, [de]
    ld b, a
    dec b
    ldh a, [rTMA]

jr_039_59AF:
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    ld b, h
    add c
    ld e, $F1
    jr nz, jr_039_59F9

    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld b, a

jr_039_59C1:
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    ld c, h
    ld e, [hl]

jr_039_59CA:
    ldh a, [$60]
    ld c, a
    add b
    adc [hl]
    ldh a, [$90]
    ld c, l
    ld d, $F0

jr_039_59D4:
    jr jr_039_5A22

    ld d, $F0
    jr @+$4F

    add b
    cp b
    ldh a, [$BA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld c, h
    ld d, $F0
    jr jr_039_5A36

    ld d, $F0
    jr @+$4E

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]

jr_039_59F9:
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    ld c, h
    add b
    adc [hl]
    ldh a, [$90]
    ld c, d
    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr @+$4C

    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld b, h
    ld e, [hl]
    ldh a, [$60]
    ld b, b

jr_039_5A21:
    ld e, [hl]

jr_039_5A22:
    ldh a, [$60]
    ld b, h
    ld e, [hl]
    ldh a, [$60]
    ld c, h
    ld e, [hl]
    ldh a, [$60]
    ld b, l
    add c
    jr jr_039_5A21

    ld a, [de]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b

jr_039_5A36:
    ld e, [hl]
    ldh a, [$60]
    ld b, h
    add c
    ld e, $F1
    jr nz, jr_039_5A7F

    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    ld c, h
    ld e, [hl]
    ldh a, [$60]
    ld c, a
    add b
    adc [hl]
    ldh a, [$90]
    ld c, l
    ld d, $F0
    jr jr_039_5AA8

    ld d, $F0
    jr jr_039_5AAD

    add b
    cp b
    ldh a, [$BA]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, l
    add b
    adc [hl]
    ldh a, [$90]
    ld c, h
    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr @+$4E

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    ld e, [hl]
    ldh a, [$60]
    ld b, l
    ld e, [hl]

jr_039_5A7F:
    ldh a, [$60]
    ld b, l
    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld e, [hl]
    ldh a, [$60]
    ld c, b
    ld e, [hl]
    ldh a, [$60]
    ld c, h
    add b
    adc [hl]
    ldh a, [$90]
    ld c, d
    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr @+$4C

    ld e, [hl]
    ldh a, [$60]
    ld c, e
    ld e, [hl]
    ldh a, [$60]
    ld c, h
    add c
    ld c, [hl]
    pop af
    ldh [$4C], a

jr_039_5AA8:
    ld e, [hl]
    ldh a, [$60]
    ld c, l
    add b

jr_039_5AAD:
    cp [hl]
    pop af
    jr nz, @+$4E

    ld e, b
    ldh a, [$5A]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, l
    ld l, $F0
    jr nc, @+$4E

    ld l, $F0
    jr nc, @+$4D

    ld l, $F0
    jr nc, @+$4E

    ld l, $F0
    sub b
    ld c, h
    ld e, [hl]
    ldh a, [$60]
    ld c, l
    add b
    cp [hl]
    pop af
    jr nz, jr_039_5B1E

    ld e, b
    ldh a, [$5A]
    ld c, h
    dec b
    ldh a, [rTMA]
    ld c, l
    ld l, $F0
    jr nc, jr_039_5B2A

    ld l, $F0
    jr nc, @+$4D

    ld l, $F0
    jr nc, jr_039_5B32

    ld l, $F0
    nop
    rst $38
    nop
    nop
    pop de
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp

jr_039_5B1E:
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp

jr_039_5B2A:
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp

jr_039_5B32:
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    ld [hl], $08
    ldh a, [$0C]
    ld [hl], $08
    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    ld [hl], $08
    ldh a, [$0C]
    ld [hl], $08
    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    jr nc, @+$0A

    ldh a, [$0C]
    jr nc, @+$0A

    ldh a, [$0C]
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    jr nc, @+$0A

    ldh a, [$0C]
    jr nc, @+$0A

    ldh a, [$0C]
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    ld [hl], $08
    ldh a, [$0C]
    ld [hl], $08
    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    ld [hl], $08
    ldh a, [$0C]
    ld [hl], $08
    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    ld [hl], $08
    ldh a, [$0C]
    ld [hl], $08
    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    ld [hl], $08
    ldh a, [$0C]
    ld [hl], $08
    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    jr nc, @+$0A

    ldh a, [$0C]
    jr nc, @+$0A

    ldh a, [$0C]
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    jr nc, @+$0A

    ldh a, [$0C]
    jr nc, @+$0A

    ldh a, [$0C]
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    ld [hl], $08
    ldh a, [$0C]
    ld [hl], $08
    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    ld [hl], $08
    ldh a, [$0C]
    ld [hl], $08
    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    jr c, @+$0A

    ldh a, [$0C]
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, d
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld d, c
    ld [$0CF0], sp
    ld d, c
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld d, c
    ld [$0CF0], sp
    ld d, c
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld d, c
    ld [$0CF0], sp
    ld d, c
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld d, c
    ld [$0CF0], sp
    ld d, c
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$00F0], sp
    rst $38
    ldh a, [rP1]
    cp c
    ld d, b
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
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
    jr z, jr_039_6632

    nop
    dec l
    jr nc, jr_039_6607

jr_039_6607:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_039_6632:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_039_6686

jr_039_6686:
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
    ld a, $06
    ld c, d
    ld [$0AA6], sp
    db $EC
    or b
    nop
    xor h
    ld b, $05
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    nop
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    nop
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    or b
    inc c
    inc l
    dec b
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or b
    daa
    dec b
    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, jr_039_6CE8

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]

jr_039_6CE8:
    jr nc, jr_039_6D00

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]

jr_039_6D00:
    jr nc, jr_039_6D18

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [$C0]
    jr nc, @+$07

    ldh a, [rNR50]

jr_039_6D18:
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, jr_039_6D34

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]

jr_039_6D34:
    jr nc, jr_039_6D4C

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]

jr_039_6D4C:
    jr nc, jr_039_6D64

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, @+$07

    ldh a, [$C0]
    jr nc, @+$07

    ldh a, [rNR50]

jr_039_6D64:
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, jr_039_6D80

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]
    jr nc, jr_039_6D88

    ldh a, [rNR23]
    dec hl
    ld d, $F0
    jr jr_039_6DA9

    dec b
    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]

jr_039_6D80:
    jr nc, jr_039_6DA5

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]

jr_039_6D88:
    jr nc, jr_039_6DA0

    ldh a, [rNR23]
    dec hl
    ld d, $F0
    jr jr_039_6DC1

    dec b
    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, jr_039_6DBD

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]

jr_039_6DA0:
    jr nc, jr_039_6DB8

    ldh a, [rNR23]
    dec hl

jr_039_6DA5:
    ld d, $F0
    jr jr_039_6DD9

jr_039_6DA9:
    dec b
    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, jr_039_6DD5

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]

jr_039_6DB8:
    jr nc, jr_039_6DD0

    ldh a, [rNR23]
    dec hl

jr_039_6DBD:
    ld d, $F0
    jr jr_039_6DF1

jr_039_6DC1:
    dec b
    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, jr_039_6DED

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]

jr_039_6DD0:
    jr nc, jr_039_6DE8

    ldh a, [rNR23]
    dec hl

jr_039_6DD5:
    ld d, $F0
    jr jr_039_6E09

jr_039_6DD9:
    dec b
    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, jr_039_6E05

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]

jr_039_6DE8:
    jr nc, jr_039_6E00

    ldh a, [rNR23]
    dec hl

jr_039_6DED:
    ld d, $F0
    jr jr_039_6E21

jr_039_6DF1:
    dec b
    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, jr_039_6E1D

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]

jr_039_6E00:
    jr nc, jr_039_6E18

    ldh a, [rNR23]
    dec hl

jr_039_6E05:
    ld d, $F0
    jr jr_039_6E39

jr_039_6E09:
    dec b
    ldh a, [rNR50]
    jr nc, @+$07

    ldh a, [rNR50]
    jr nc, jr_039_6E35

    ldh a, [$30]
    jr nc, @+$07

    ldh a, [rNR23]

jr_039_6E18:
    jr nc, jr_039_6E30

    ldh a, [rNR23]
    dec hl

jr_039_6E1D:
    ld d, $F0
    jr jr_039_6E4D

jr_039_6E21:
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

jr_039_6E30:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l

jr_039_6E35:
    dec bc
    ldh a, [rNR23]
    inc sp

jr_039_6E39:
    ld d, $F0
    jr jr_039_6E69

    ld d, $F0
    jr jr_039_6E6C

    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_039_6E4D:
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    inc sp
    ld d, $F0
    jr jr_039_6E88

    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]

jr_039_6E69:
    dec bc
    ldh a, [rNR23]

jr_039_6E6C:
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    inc sp
    ld d, $F0
    jr @+$2C

    ld d, $F0
    jr jr_039_6EAC

    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]

jr_039_6E88:
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
    inc sp
    ld d, $F0
    jr jr_039_6EC8

    ld d, $F0
    jr jr_039_6ECD

    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]

jr_039_6EAC:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    inc sp
    ld d, $F0
    jr jr_039_6EE9

    ld d, $F0
    jr jr_039_6EEC

    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]

jr_039_6EC8:
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl

jr_039_6ECD:
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]
    inc sp
    ld d, $F0
    jr jr_039_6F08

    ld d, $F0
    jr @+$2C

    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]

jr_039_6EE9:
    dec bc
    ldh a, [rNR23]

jr_039_6EEC:
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    dec bc
    ldh a, [rNR23]
    ld a, [hl+]
    ld d, $F0
    jr jr_039_6F2C

    ld d, $F0
    jr @+$2C

    ld d, $F0
    jr jr_039_6F2C

    dec bc
    ldh a, [rNR23]
    dec hl
    dec bc
    ldh a, [rNR23]

jr_039_6F08:
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
    dec bc
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    cp h
    ld d, c
    dec b
    ldh a, [rNR50]
    inc a
    dec b
    ldh a, [rNR50]

jr_039_6F2C:
    inc a
    ld d, $F0
    jr nc, jr_039_6F70

    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR50]
    inc a
    dec b
    ldh a, [rNR50]
    inc a
    ld d, $F0
    jr nc, jr_039_6F91

    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR50]

jr_039_6F70:
    inc a
    dec b
    ldh a, [rNR50]
    inc a
    ld d, $F0
    jr nc, jr_039_6FB8

    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]
    inc a

jr_039_6F91:
    dec b
    ldh a, [$C0]
    inc a
    dec b
    ldh a, [rNR50]
    inc a
    dec b
    ldh a, [rNR50]
    inc a
    ld d, $F0
    jr nc, jr_039_6FE0

    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]

jr_039_6FB8:
    inc a
    dec b
    ldh a, [rNR50]
    inc a
    dec b
    ldh a, [rNR50]
    inc a
    ld d, $F0
    jr nc, jr_039_7001

    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    ld a, [hl-]
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    dec sp
    dec b
    ldh a, [$0C]
    inc a
    dec b
    ldh a, [rNR50]

jr_039_6FE0:
    inc a
    dec b
    ldh a, [rNR50]
    inc a
    ld d, $F0
    jr nc, jr_039_7028

    dec b
    ldh a, [$0C]
    ccf
    dec b
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    ld a, $05
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]
    dec a
    dec b
    ldh a, [$0C]
    inc a

jr_039_7001:
    dec b
    ldh a, [$C0]
    ld b, e
    ld l, e
    ldh a, [$78]
    inc a
    ld d, $F0
    jr jr_039_7050

    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr @+$44

    ld l, e
    ldh a, [$78]
    inc a
    ld d, $F0
    jr @+$44

    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr jr_039_7066

    ld l, e
    ldh a, [$78]

jr_039_7028:
    inc a
    ld d, $F0
    jr jr_039_706E

    ld d, $F0
    jr jr_039_7079

    ld d, $F0
    jr @+$45

    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, e
    add b
    sbc e
    ldh a, [$B4]
    ld b, e
    ld l, e
    ldh a, [$78]
    inc a
    ld d, $F0
    jr jr_039_708D

    ld d, $F0
    jr @+$4A

    ld d, $F0

jr_039_7050:
    jr @+$44

    ld l, e
    ldh a, [$78]
    inc a
    ld d, $F0
    jr jr_039_709C

    ld d, $F0
    jr jr_039_70A6

    ld d, $F0
    jr jr_039_70A3

    ld l, e
    ldh a, [$78]
    inc a

jr_039_7066:
    ld d, $F0
    jr jr_039_70AB

    ld d, $F0
    jr @+$4A

jr_039_706E:
    ld d, $F0
    jr jr_039_70B5

    dec b
    ldh a, [rTMA]
    ld b, h
    dec b
    ldh a, [rTMA]

jr_039_7079:
    ld b, e
    add b
    sbc e
    ldh a, [$B4]
    ld b, h
    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, e
    ld a, [hl+]
    ldh a, [$30]
    ld c, b
    ld d, $F0

jr_039_708D:
    jr @+$4D

    ld d, $F0
    jr jr_039_70DB

    ld d, $F0
    jr @+$45

    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc

jr_039_709C:
    ldh a, [rNR50]
    ld c, e
    ld l, $F0
    ld a, b
    ld b, d

jr_039_70A3:
    add hl, bc
    ldh a, [rNR50]

jr_039_70A6:
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, e

jr_039_70AB:
    ld a, [hl+]
    ldh a, [$30]
    ld c, b
    ld d, $F0
    jr @+$4D

    ld d, $F0

jr_039_70B5:
    jr jr_039_70FF

    ld d, $F0
    jr @+$45

    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, e
    ld l, $F0
    ld a, b
    ld b, h
    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, e
    ld a, [hl+]
    ldh a, [$30]
    ld c, b
    ld d, $F0
    jr jr_039_7122

    ld d, $F0
    jr jr_039_7123

jr_039_70DB:
    ld d, $F0
    jr jr_039_7122

    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, e
    ld l, $F0
    ld a, b
    ld b, d
    add hl, bc
    ldh a, [rNR50]
    ld c, b
    add hl, bc
    ldh a, [rNR50]
    ld c, e
    ld a, [hl+]
    ldh a, [$30]
    ld c, b
    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_039_7147

jr_039_70FF:
    ld d, $F0
    jr @+$45

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
    ldh a, [rTMA]

jr_039_7122:
    ld c, c

jr_039_7123:
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
    ld c, a
    ld l, $F0
    jr nc, jr_039_7196

jr_039_7147:
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
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    jp $0550


    ldh a, [rNR50]
    ld b, e
    dec b
    ldh a, [rNR50]
    ld b, e
    ld d, $F0
    jr nc, jr_039_71BD

    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR50]
    ld b, e
    dec b
    ldh a, [rNR50]

jr_039_7196:
    ld b, e
    ld d, $F0
    jr nc, jr_039_71DE

    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR50]
    ld b, e
    dec b
    ldh a, [rNR50]
    ld b, e
    ld d, $F0

jr_039_71BD:
    jr nc, @+$48

    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$C0]
    ld b, e
    dec b
    ldh a, [rNR50]

jr_039_71DE:
    ld b, e
    dec b
    ldh a, [rNR50]
    ld b, e
    ld d, $F0
    jr nc, jr_039_722D

    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR50]
    ld b, e
    dec b
    ldh a, [rNR50]
    ld b, e
    ld d, $F0
    jr nc, jr_039_724E

    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, c
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, d
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [rNR50]
    ld b, e
    dec b
    ldh a, [rNR50]
    ld b, e
    ld d, $F0

jr_039_722D:
    jr nc, @+$48

    dec b
    ldh a, [$0C]
    ld b, [hl]
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, l
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, h
    dec b
    ldh a, [$0C]
    ld b, e
    dec b
    ldh a, [$60]
    scf
    dec b
    ldh a, [rTMA]

jr_039_724E:
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
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    dec a
    ld [$0CF0], sp
    dec a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld a, [hl-]
    ld [$0CF0], sp
    ld a, [hl-]
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    dec a
    ld [$0CF0], sp
    dec a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld a, [hl-]
    ld [$0CF0], sp
    ld a, [hl-]
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    dec a
    ld [$0CF0], sp
    dec a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld a, [hl-]
    ld [$0CF0], sp
    ld a, [hl-]
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    dec a
    ld [$0CF0], sp
    dec a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld a, [hl-]
    ld [$0CF0], sp
    ld a, [hl-]
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    jr c, @+$0A

    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
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
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld [hl], $08
    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
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
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    jr c, @+$0A

    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
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
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld [hl], $08
    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld b, e
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
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
    jr z, jr_039_76C6

    nop
    dec l
    jr nc, jr_039_769B

jr_039_769B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_039_76C6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_039_771A

jr_039_771A:
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

jr_039_7743:
    nop
    nop
    nop
    ld a, $02
    ld b, d
    inc bc
    ld [de], a
    inc b
    ld c, [hl]
    ldh a, [rP1]
    xor h
    inc bc
    jr nc, jr_039_7743

jr_039_7753:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7753

jr_039_7763:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7763

jr_039_7773:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7773

jr_039_7783:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7783

jr_039_7793:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7793

jr_039_77A3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_77A3

jr_039_77B3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_77B3

jr_039_77C3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_77C3

jr_039_77D3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_77D3

jr_039_77E3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_77E3

jr_039_77F3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_77F3

jr_039_7803:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7803

jr_039_7813:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7813

jr_039_7823:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7823

jr_039_7833:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7833

jr_039_7843:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7843

jr_039_7853:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7853

jr_039_7863:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7863

jr_039_7873:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7873

jr_039_7883:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7883

jr_039_7893:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7893

jr_039_78A3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_78A3

jr_039_78B3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_78B3

jr_039_78C3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_78C3

jr_039_78D3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_78D3

jr_039_78E3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_78E3

jr_039_78F3:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_78F3

jr_039_7903:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7903

jr_039_7913:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7913

jr_039_7923:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7923

jr_039_7933:
    ld c, b
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    ld [$18F0], sp
    inc l
    jr nc, jr_039_7933

    ld c, b
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
    add b
    xor $F0
    ldh a, [$2B]
    ld l, $F0
    jr nc, jr_039_798E

    add b
    xor $F0
    ldh a, [$2B]
    ld l, $F0
    jr nc, jr_039_7990

    add b
    xor $F0
    ldh a, [$30]
    ld l, $F0
    jr nc, @+$2B

    add b
    xor $F0
    ldh a, [$2B]
    ld l, $F0
    jr nc, jr_039_79A9

    add b
    xor $F0
    ldh a, [$2B]
    ld l, $F0
    jr nc, jr_039_79B2

    add b
    xor $F0
    ldh a, [$2B]
    ld l, $F0
    jr nc, jr_039_79B4

    add b
    xor $F0

jr_039_798E:
    ldh a, [$30]

jr_039_7990:
    ld l, $F0
    jr nc, jr_039_79BD

    add b
    cp [hl]
    ldh a, [$C0]
    jr nc, @+$30

    ldh a, [$30]
    add hl, hl
    ld l, $F0
    jr nc, jr_039_79C7

    ld e, [hl]
    ldh a, [$60]
    dec l
    ld l, $F0
    jr nc, jr_039_79CF

jr_039_79A9:
    ld e, [hl]
    ldh a, [$60]
    dec l
    ld l, $F0
    jr nc, jr_039_79D9

    ld e, [hl]

jr_039_79B2:
    ldh a, [$60]

jr_039_79B4:
    cpl
    ld l, $F0
    jr nc, jr_039_79E1

    ld e, [hl]
    ldh a, [$60]
    cpl

jr_039_79BD:
    ld l, $F0
    jr nc, jr_039_79E7

    ld e, [hl]
    ldh a, [$60]
    dec l
    ld l, $F0

jr_039_79C7:
    jr nc, jr_039_79EF

    ld e, [hl]
    ldh a, [$60]
    dec l
    ld l, $F0

jr_039_79CF:
    jr nc, jr_039_79F9

    ld e, [hl]
    ldh a, [$60]
    cpl
    ld l, $F0
    jr nc, jr_039_7A01

jr_039_79D9:
    ld e, [hl]
    ldh a, [$60]
    cpl
    ld l, $F0
    jr nc, @+$28

jr_039_79E1:
    ld e, [hl]
    ldh a, [$60]
    dec l
    ld l, $F0

jr_039_79E7:
    jr nc, @+$28

    ld e, [hl]
    ldh a, [$60]
    dec l
    ld l, $F0

jr_039_79EF:
    jr nc, jr_039_7A19

    ld e, [hl]
    ldh a, [$60]
    cpl
    ld l, $F0
    jr nc, jr_039_7A21

jr_039_79F9:
    ld e, [hl]
    ldh a, [$60]
    cpl
    ld l, $F0
    jr nc, jr_039_7A2A

jr_039_7A01:
    ld e, [hl]
    ldh a, [$60]
    jr nc, jr_039_7A34

    ldh a, [$30]
    add hl, hl
    ld e, [hl]
    ldh a, [$60]
    jr nc, @+$30

    ldh a, [$30]
    dec hl
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a
    ld l, $F0
    jr nc, jr_039_7A44

jr_039_7A19:
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a
    ld l, $F0
    nop
    rst $38

jr_039_7A21:
    ldh a, [rP1]
    rst $00
    ld d, c
    ld l, $F0
    jr nc, @+$49

    add b

jr_039_7A2A:
    add sp, -$10
    ld [$0546], a
    ldh a, [rTMA]
    ld b, a
    ld l, $F0

jr_039_7A34:
    jr nc, jr_039_7A7D

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, e
    ld l, $F0
    jr nc, @+$47

    ld l, $F0
    jr nc, @+$47

    add b

jr_039_7A44:
    xor $F0
    ldh a, [rLYC]
    ld l, $F0
    jr nc, jr_039_7A91

    add b
    cp [hl]
    ldh a, [$C0]
    ld c, d
    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, @+$49

    add b
    add sp, -$10
    ld [$0546], a
    ldh a, [rTMA]
    ld b, a
    ld l, $F0
    jr nc, jr_039_7AAD

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, e
    ld l, $F0
    jr nc, @+$47

    ld l, $F0
    jr nc, @+$47

    add b
    xor $F0
    ldh a, [rLYC]
    ld l, $F0
    jr nc, jr_039_7AC1

    add b

jr_039_7A7D:
    cp [hl]
    ldh a, [$C0]
    ld b, l
    ld l, $F0
    jr nc, jr_039_7ACA

    ld l, $F0
    jr nc, jr_039_7ACA

    ld l, $F0
    jr nc, @+$40

    jr z, @-$0E

    ld a, [hl+]
    dec a

jr_039_7A91:
    dec b
    ldh a, [rTMA]
    ld a, $2E
    ldh a, [$30]
    ld b, c
    ld l, $F0
    jr nc, @+$47

    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_039_7AE9

    ld l, $F0
    jr nc, jr_039_7AED

jr_039_7AAD:
    ld l, $F0
    jr nc, @+$45

    ld l, $F0

jr_039_7AB3:
    jr nc, @+$49

    ld l, $F0
    jr nc, @+$47

    ld l, $F0
    jr nc, @+$43

    ld l, $F0
    jr nc, jr_039_7AFF

jr_039_7AC1:
    jr z, jr_039_7AB3

    ld a, [hl+]
    dec a
    dec b
    ldh a, [rTMA]
    ld a, $2E

jr_039_7ACA:
    ldh a, [$30]
    ld b, c
    ld l, $F0
    jr nc, jr_039_7B16

    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_039_7B1D

    ld l, $F0
    jr nc, jr_039_7B21

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, @+$49

jr_039_7AE9:
    ld l, $F0
    jr nc, @+$47

jr_039_7AED:
    ld l, $F0
    jr nc, @+$43

    ld l, $F0
    jr nc, jr_039_7B33

    ld l, $F0
    jr nc, jr_039_7B37

    ld l, $F0
    jr nc, @+$43

    ld l, $F0

jr_039_7AFF:
    jr nc, @+$47

    ld l, $F0
    jr nc, @+$49

    ld l, $F0
    jr nc, @+$45

    ld l, $F0
    jr nc, jr_039_7B4D

    ld l, $F0
    jr nc, jr_039_7B51

    ld l, $F0
    jr nc, @+$45

    inc l

jr_039_7B16:
    ldh a, [$30]
    ld b, a
    ld l, $F0
    jr nc, jr_039_7B65

jr_039_7B1D:
    ld l, $F0
    jr nc, @+$47

jr_039_7B21:
    ld l, $F0
    jr nc, @+$43

    ld l, $F0
    jr nc, @+$43

    ld l, $F0
    jr nc, @+$47

    ld l, $F0

jr_039_7B2F:
    jr nc, jr_039_7B79

    ld l, $F0

jr_039_7B33:
    jr nc, @+$4C

    ld l, $F0

jr_039_7B37:
    jr nc, jr_039_7B80

    ld l, $F0
    jr nc, jr_039_7B80

    jr z, jr_039_7B2F

    ld a, [hl+]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    ld d, $F0
    jr @+$47

    ld d, $F0
    jr jr_039_7B94

jr_039_7B4D:
    ld d, $F0
    jr jr_039_7B99

jr_039_7B51:
    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_039_7BA1

    ld d, $F0
    nop
    rst $38
    ldh a, [rP1]
    cp h
    ld d, b
    ld [$0CF0], sp
    inc a

jr_039_7B65:
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a

jr_039_7B79:
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp

jr_039_7B80:
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
    ld [$0CF0], sp

jr_039_7B94:
    ld d, e
    ld [$84F0], sp
    inc a

jr_039_7B99:
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b

jr_039_7BA1:
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
    ld [$0CF0], sp
    ld d, e
    ld [$84F0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$84F0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$84F0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
    ld [$0CF0], sp
    ld d, e
    ld [$84F0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
    ld [$0CF0], sp
    ld d, e
    ld [$84F0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$84F0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$84F0], sp
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, d
    ld [$84F0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$84F0], sp
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, d
    ld [$84F0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$84F0], sp
    ld [hl-], a
    ld [$0CF0], sp
    ld [hl-], a
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, d
    ld [$84F0], sp
    inc [hl]
    ld [$0CF0], sp
    inc [hl]
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, b
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, h
    ld [$0CF0], sp
    ld c, h
    ld [$84F0], sp
    dec [hl]
    ld [$0CF0], sp
    dec [hl]
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    add hl, sp
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, c
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld b, l
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, l
    ld [$0CF0], sp
    ld c, l
    ld [$84F0], sp
    scf
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld a, $08
    ldh a, [$0C]
    ld b, e
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld c, a
    ld [$00F0], sp
    rst $38
    ld a, [hl+]
    daa
    dec hl
    add hl, hl
    ld a, [hl+]
    inc l
    dec hl
    add hl, hl
    nop
    nop
    jr z, jr_039_7EED

jr_039_7EED:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    nop
    ld c, $00
    jr jr_039_7F70

jr_039_7F70:
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
    jr c, jr_039_7F96

jr_039_7F96:
    ld a, $00
    nop

jr_039_7F99:
    add d
    ldh a, [rP1]
    rst $38

jr_039_7F9D:
    nop
    nop
    add c
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    ret nz

    ld a, h
    jr jr_039_7F99

jr_039_7FA9:
    rla
    inc a
    jr jr_039_7F9D

jr_039_7FAD:
    jr jr_039_7FEF

    jr @-$0E

jr_039_7FB1:
    ld bc, $1740
    ldh a, [rNR23]
    inc a
    jr jr_039_7FA9

jr_039_7FB9:
    jr jr_039_7FFB

    jr jr_039_7FAD

jr_039_7FBD:
    nop
    ld b, b
    jr jr_039_7FB1

    jr jr_039_7FFF

    jr @-$0E

    jr @+$42

    jr jr_039_7FB9

    add hl, de
    ld b, h
    jr jr_039_7FBD

    nop
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

jr_039_7FEF:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_7FFB:
    nop
    nop
    nop
    nop

jr_039_7FFF:
    nop
