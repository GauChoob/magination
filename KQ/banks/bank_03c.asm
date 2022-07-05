; Disassembly of "kq.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

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
    jr z, jr_03C_403B

    nop
    dec l
    jr nc, jr_03C_4010

jr_03C_4010:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03C_403B:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_03C_408F

jr_03C_408F:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    inc d
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc d
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $4014
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    ld a, $02
    sbc $05
    ld [de], a
    ld b, $A6
    or b
    nop
    and [hl]
    inc bc
    ld [$30B0], sp
    ld h, $08
    or b
    jr jr_03C_40F4

    ld [$18B0], sp
    ld h, $08
    or b
    jr nc, jr_03C_40FC

    ld [$18B0], sp
    ld h, $08
    or b
    jr jr_03C_4104

    ld [$30B0], sp
    ld h, $08
    or b
    jr jr_03C_410C

    ld [$18B0], sp
    ld h, $08
    or b
    jr jr_03C_4114

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_40F4:
    jr jr_03C_411C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_40FC:
    jr nc, jr_03C_4124

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4104:
    jr jr_03C_412C

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_410C:
    jr jr_03C_4134

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4114:
    jr nc, jr_03C_413C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_411C:
    jr jr_03C_4144

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4124:
    jr jr_03C_414C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_412C:
    jr jr_03C_4154

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_4134:
    jr jr_03C_415C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_413C:
    jr nc, jr_03C_4164

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4144:
    jr jr_03C_416C

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_414C:
    jr jr_03C_4174

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4154:
    jr nc, jr_03C_417C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_415C:
    jr jr_03C_4184

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_4164:
    jr jr_03C_418C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_416C:
    jr nc, jr_03C_4194

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4174:
    jr jr_03C_419C

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_417C:
    jr jr_03C_41A4

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4184:
    jr jr_03C_41AC

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_418C:
    jr jr_03C_41B4

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4194:
    jr nc, jr_03C_41BC

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_419C:
    jr jr_03C_41C4

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_41A4:
    jr jr_03C_41CC

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_41AC:
    jr nc, jr_03C_41D4

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_41B4:
    jr jr_03C_41DC

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_41BC:
    jr jr_03C_41E4

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_41C4:
    jr nc, jr_03C_41EC

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_41CC:
    jr jr_03C_41F4

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_41D4:
    jr jr_03C_41FC

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_41DC:
    jr nc, jr_03C_4204

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_41E4:
    jr jr_03C_420C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_41EC:
    jr jr_03C_4214

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_41F4:
    jr jr_03C_421C

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_41FC:
    jr jr_03C_4224

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4204:
    jr nc, jr_03C_422C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_420C:
    jr jr_03C_4234

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_4214:
    jr jr_03C_423C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_421C:
    jr nc, jr_03C_4244

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4224:
    jr jr_03C_424C

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_422C:
    jr jr_03C_4254

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4234:
    jr nc, jr_03C_425C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_423C:
    jr jr_03C_4264

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_4244:
    jr jr_03C_426C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_424C:
    jr jr_03C_4274

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4254:
    jr jr_03C_427C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_425C:
    jr nc, jr_03C_4284

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4264:
    jr jr_03C_428C

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_426C:
    jr jr_03C_4294

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4274:
    jr nc, jr_03C_429C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_427C:
    jr jr_03C_42A4

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_4284:
    jr jr_03C_42AC

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_428C:
    jr nc, jr_03C_42B4

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4294:
    jr jr_03C_42BC

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_429C:
    jr jr_03C_42C4

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_42A4:
    jr nc, jr_03C_42CC

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_42AC:
    jr jr_03C_42D4

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_42B4:
    jr jr_03C_42DC

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_42BC:
    jr nc, jr_03C_42E4

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_42C4:
    jr jr_03C_42EC

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_42CC:
    jr jr_03C_42F4

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_42D4:
    jr nc, jr_03C_42FC

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_42DC:
    jr jr_03C_4304

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_42E4:
    jr jr_03C_430C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_42EC:
    jr nc, jr_03C_4314

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_42F4:
    jr jr_03C_431C

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_42FC:
    jr jr_03C_4324

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4304:
    jr nc, jr_03C_432C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_430C:
    jr jr_03C_4334

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_4314:
    jr jr_03C_433C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_431C:
    jr nc, jr_03C_4344

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4324:
    jr jr_03C_434C

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_432C:
    jr jr_03C_4354

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4334:
    jr nc, jr_03C_435C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_433C:
    jr jr_03C_4364

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_4344:
    jr jr_03C_436C

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_434C:
    jr nc, jr_03C_4374

    ld [$18B0], sp
    ld h, $08
    or b

jr_03C_4354:
    jr jr_03C_437C

    ld [$30B0], sp
    ld h, $08
    or b

jr_03C_435C:
    jr jr_03C_4384

    ld [$00F0], sp
    rst $38
    ldh a, [rP1]

jr_03C_4364:
    or b
    daa
    ld d, $F0
    jr nc, jr_03C_439A

    ld d, $F0

jr_03C_436C:
    jr nc, jr_03C_439A

    ld d, $F0
    jr nc, jr_03C_439E

    ld d, $F0

jr_03C_4374:
    jr nc, @+$2B

    ld d, $F0
    jr nc, @+$2B

    ld d, $F0

jr_03C_437C:
    jr nc, @+$2D

    ld d, $F0
    jr nc, @+$2D

    ld d, $F0

jr_03C_4384:
    jr nc, jr_03C_43B6

    ld d, $F0
    jr nc, jr_03C_43BA

    ld d, $F0
    jr nc, jr_03C_43BA

    ld d, $F0
    jr nc, jr_03C_43BE

    ld d, $F0
    jr nc, @+$2B

    ld d, $F0
    jr nc, @+$2B

jr_03C_439A:
    ld d, $F0
    jr nc, @+$2D

jr_03C_439E:
    ld d, $F0
    jr nc, @+$2D

    ld d, $F0
    jr nc, jr_03C_43D6

    ld d, $F0
    jr nc, jr_03C_43DA

    ld d, $F0
    jr nc, jr_03C_43DA

    ld d, $F0
    jr nc, jr_03C_43DE

    ld d, $F0
    jr nc, @+$2B

jr_03C_43B6:
    ld d, $F0
    jr nc, @+$2B

jr_03C_43BA:
    ld d, $F0
    jr nc, @+$2D

jr_03C_43BE:
    ld d, $F0
    jr nc, @+$2D

    ld d, $F0
    jr nc, jr_03C_43F6

    ld d, $F0
    jr nc, jr_03C_43FA

    ld d, $F0
    jr nc, jr_03C_43FA

    ld d, $F0
    jr nc, jr_03C_43FE

    ld d, $F0
    jr nc, @+$2B

jr_03C_43D6:
    ld d, $F0
    jr nc, @+$2B

jr_03C_43DA:
    ld d, $F0
    jr nc, @+$2D

jr_03C_43DE:
    ld d, $F0
    jr nc, @+$2D

    ld d, $F0
    jr nc, jr_03C_4416

    ld d, $F0
    jr nc, jr_03C_441A

    ld d, $F0
    jr nc, jr_03C_441A

    ld d, $F0
    jr nc, jr_03C_441E

    ld d, $F0
    jr nc, @+$2B

jr_03C_43F6:
    ld d, $F0
    jr nc, @+$2B

jr_03C_43FA:
    ld d, $F0
    jr nc, @+$2D

jr_03C_43FE:
    ld d, $F0
    jr nc, @+$2D

    ld d, $F0
    jr nc, jr_03C_4436

    ld d, $F0
    jr nc, jr_03C_443A

    ld d, $F0
    jr nc, jr_03C_443A

    ld d, $F0
    jr nc, jr_03C_443E

    ld d, $F0
    jr nc, @+$2B

jr_03C_4416:
    ld d, $F0
    jr nc, @+$2B

jr_03C_441A:
    ld d, $F0
    jr nc, @+$2D

jr_03C_441E:
    ld d, $F0
    jr nc, @+$2D

    ld d, $F0
    jr nc, jr_03C_4456

    ld d, $F0
    jr nc, jr_03C_445A

    ld d, $F0
    jr nc, jr_03C_445A

    ld d, $F0
    jr nc, jr_03C_445E

    ld d, $F0
    jr nc, @+$2B

jr_03C_4436:
    ld d, $F0
    jr nc, @+$2B

jr_03C_443A:
    ld d, $F0
    jr nc, @+$2D

jr_03C_443E:
    ld d, $F0
    jr nc, @+$2D

    ld d, $F0
    jr nc, jr_03C_4476

    ld d, $F0
    jr nc, jr_03C_447A

    ld d, $F0
    jr nc, jr_03C_447A

    ld d, $F0
    jr nc, jr_03C_447E

    ld d, $F0
    jr nc, @+$2B

jr_03C_4456:
    ld d, $F0
    jr nc, @+$2B

jr_03C_445A:
    ld d, $F0
    jr nc, @+$2D

jr_03C_445E:
    ld d, $F0
    jr nc, @+$2D

    ld d, $F0
    jr nc, jr_03C_4496

    ld d, $F0
    jr nc, jr_03C_449A

    ld d, $F0
    jr nc, jr_03C_449A

    ld d, $F0
    jr nc, jr_03C_449E

    ld d, $F0
    jr nc, jr_03C_449F

jr_03C_4476:
    ld d, $F0
    jr nc, jr_03C_44A3

jr_03C_447A:
    ld d, $F0
    jr nc, jr_03C_44A9

jr_03C_447E:
    ld d, $F0
    jr nc, jr_03C_44AD

    ld d, $F0
    jr nc, @+$32

    ld d, $F0
    jr nc, @+$32

    ld d, $F0
    jr nc, jr_03C_44B9

    ld d, $F0
    jr nc, jr_03C_44BD

    ld d, $F0
    jr nc, @+$2E

jr_03C_4496:
    dec bc
    ldh a, [rNR23]
    inc l

jr_03C_449A:
    dec bc
    ldh a, [rNR23]
    inc l

jr_03C_449E:
    dec bc

jr_03C_449F:
    ldh a, [rNR23]
    inc l
    dec bc

jr_03C_44A3:
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]

jr_03C_44A9:
    inc l
    dec bc
    ldh a, [rNR23]

jr_03C_44AD:
    inc l
    dec bc
    ldh a, [rNR23]
    inc l
    dec bc
    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]

jr_03C_44B9:
    jr nc, @+$0D

    ldh a, [rNR23]

jr_03C_44BD:
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, @+$0D

    ldh a, [rNR23]
    jr nc, jr_03C_44D6

    ldh a, [rNR23]
    jr nc, jr_03C_44DA

    ldh a, [rNR23]
    jr nc, jr_03C_44DE

    ldh a, [rNR23]
    inc l

jr_03C_44D6:
    dec bc
    ldh a, [rNR23]
    inc l

jr_03C_44DA:
    dec bc
    ldh a, [rNR23]
    inc l

jr_03C_44DE:
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
    jr nc, jr_03C_4516

    ldh a, [rNR23]
    jr nc, jr_03C_451A

    ldh a, [rNR23]
    jr nc, jr_03C_451E

    ldh a, [rNR23]
    inc l

jr_03C_4516:
    dec bc
    ldh a, [rNR23]
    inc l

jr_03C_451A:
    dec bc
    ldh a, [rNR23]
    inc l

jr_03C_451E:
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
    jr nc, jr_03C_4556

    ldh a, [rNR23]
    jr nc, jr_03C_455A

    ldh a, [rNR23]
    jr nc, jr_03C_455E

    ldh a, [rNR23]
    inc l

jr_03C_4556:
    dec bc
    ldh a, [rNR23]
    inc l

jr_03C_455A:
    dec bc
    ldh a, [rNR23]
    inc l

jr_03C_455E:
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
    scf
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
    ldh a, [rP1]
    rst $38
    di
    nop
    cp h
    ld d, c
    ld e, [hl]
    ldh a, [$60]
    ld b, e
    add b
    adc [hl]
    ldh a, [$90]
    dec a
    ld l, $F0
    jr nc, jr_03C_45E8

    ld l, $F0
    jr nc, @+$46

    ld l, $F0
    jr nc, jr_03C_45F2

    ld e, [hl]
    ldh a, [$60]
    inc a
    add b
    or e
    ldh a, [$BA]
    jr c, jr_03C_45BE

    ldh a, [rTMA]
    ld a, [hl-]
    ld d, $F0

jr_03C_45BE:
    jr jr_03C_45FC

    ld d, $F0
    jr jr_03C_45FE

    ld d, $F0
    jr jr_03C_45FF

    ld d, $F0
    jr jr_03C_4608

    ld e, [hl]
    ldh a, [$60]
    ld b, e
    add b
    adc b
    ldh a, [$8A]
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, d
    ld l, $F0
    jr nc, @+$43

    ld l, $F0
    jr nc, jr_03C_4620

    ld l, $F0
    jr nc, jr_03C_4621

    add c
    ld b, $F1

jr_03C_45E8:
    ld a, [de]
    jr c, jr_03C_45F0

    ldh a, [rTMA]
    ld a, [hl-]
    ld d, $F0

jr_03C_45F0:
    jr jr_03C_462E

jr_03C_45F2:
    ld d, $F0
    jr jr_03C_4630

    ld d, $F0
    jr @+$39

    ld d, $F0

jr_03C_45FC:
    jr @+$3E

jr_03C_45FE:
    ld b, [hl]

jr_03C_45FF:
    ldh a, [rOBP0]
    inc a
    ld d, $F0
    jr jr_03C_4649

    add b
    adc [hl]

jr_03C_4608:
    ldh a, [$90]
    dec a
    ld l, $F0
    jr nc, @+$43

    ld l, $F0
    jr nc, jr_03C_4657

    ld l, $F0
    jr nc, jr_03C_465A

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, e
    ld d, $F0
    jr jr_03C_465B

    add b

jr_03C_4620:
    cp b

jr_03C_4621:
    ldh a, [$BA]
    jr c, jr_03C_462A

    ldh a, [rTMA]
    ld a, [hl-]
    ld d, $F0

jr_03C_462A:
    jr @+$3E

    ld d, $F0

jr_03C_462E:
    jr jr_03C_466A

jr_03C_4630:
    ld d, $F0
    jr jr_03C_466B

    ld d, $F0
    jr @+$3E

    ld b, [hl]
    ldh a, [rOBP0]
    inc a
    ld d, $F0
    jr jr_03C_4683

    add b
    adc b
    ldh a, [$8A]
    inc a
    dec b
    ldh a, [rTMA]
    dec a

jr_03C_4649:
    ld l, $F0
    jr nc, jr_03C_468E

    ld l, $F0
    jr nc, jr_03C_469A

    ld l, $F0
    jr nc, jr_03C_469D

    add b
    cp [hl]

jr_03C_4657:
    ldh a, [$C0]
    ld c, c

jr_03C_465A:
    dec bc

jr_03C_465B:
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, c

jr_03C_466A:
    dec bc

jr_03C_466B:
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld d, $F0
    jr nc, jr_03C_46C9

    dec bc
    ldh a, [$0C]
    ld c, [hl]
    dec bc

jr_03C_4683:
    ldh a, [$0C]
    ld c, a
    ld d, $F0
    jr jr_03C_46DA

    ld l, $F0
    jr nc, jr_03C_46DD

jr_03C_468E:
    ld l, $F0
    jr nc, jr_03C_46DB

    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld b, a

jr_03C_469A:
    dec bc
    ldh a, [rNR23]

jr_03C_469D:
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, c
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld d, $F0
    ld c, b
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld c, c
    ld l, $F0
    jr nc, jr_03C_4706

    ld l, $F0
    jr nc, jr_03C_470B

    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]

jr_03C_46C9:
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, c
    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld b, a

jr_03C_46DA:
    dec bc

jr_03C_46DB:
    ldh a, [rNR23]

jr_03C_46DD:
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, b
    ld d, $F0
    jr nc, jr_03C_4731

    dec bc
    ldh a, [$0C]
    ld c, [hl]
    dec bc
    ldh a, [$0C]
    ld c, a
    ld d, $F0
    jr jr_03C_4742

    ld l, $F0
    jr nc, jr_03C_4745

    ld l, $F0
    jr nc, jr_03C_4743

    dec bc
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld b, e

jr_03C_4706:
    dec bc
    ldh a, [rNR23]
    ld c, c
    dec bc

jr_03C_470B:
    ldh a, [rNR23]
    ld c, b
    dec bc
    ldh a, [rNR23]
    ld b, a
    dec bc
    ldh a, [rNR23]
    ld b, e
    dec bc
    ldh a, [rNR23]
    ld c, d
    ld d, $F0
    ld c, b
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, a
    ld d, $F0
    jr nc, jr_03C_4775

    ld d, $F0
    nop
    rst $38
    ldh a, [rNR23]
    call nz, $0550
    ldh a, [rTMA]

jr_03C_4731:
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
    dec bc
    ldh a, [rOBP0]
    ld b, b

jr_03C_4742:
    dec b

jr_03C_4743:
    ldh a, [rTMA]

jr_03C_4745:
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, c
    dec b
    ldh a, [rTMA]

jr_03C_4775:
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [rOBP0]
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
    dec bc
    ldh a, [$30]
    scf
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld b, e
    dec b
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, e
    dec b
    ldh a, [rTMA]
    ld c, a
    dec b
    ldh a, [rTMA]
    jr c, @+$0A

    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    jr c, @+$0A

    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    jr c, @+$0A

    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    jr c, @+$0A

    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    jr c, @+$0A

    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    jr c, @+$0A

    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, e
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    jr c, @+$0A

    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    jr c, @+$0A

    ldh a, [$0C]
    inc a
    ld [$0CF0], sp
    ccf
    ld [$0CF0], sp
    ld b, h
    ld [$0CF0], sp
    ld c, b
    ld [$0CF0], sp
    ld c, e
    ld [$0CF0], sp
    ld d, b
    ld [$0CF0], sp
    ld d, h
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
    ld [$0CF0], sp
    scf
    ld [$0CF0], sp
    dec sp
    ld [$0CF0], sp
    ld a, $08
    ldh a, [$0C]
    ld b, e
    ld [$0CF0], sp
    ld b, a
    ld [$0CF0], sp
    ld c, d
    ld [$0CF0], sp
    ld c, a
    ld [$0CF0], sp
    ld d, e
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
    jr z, jr_03C_4C8D

    nop
    dec l
    jr nc, jr_03C_4C62

jr_03C_4C62:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03C_4C8D:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc l
    nop
    and b
    nop
    ld c, $00
    jr jr_03C_4CE1

jr_03C_4CE1:
    ld [hl+], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, $80
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $8016
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $80
    cp $00
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc bc
    jp nz, $9105

    ldh a, [rP1]
    or c
    daa
    ld d, $F0
    jr @+$3A

    ld d, $F0
    jr jr_03C_4D50

    ld e, [hl]
    ldh a, [$60]
    ld sp, $F016
    jr jr_03C_4D54

    ld d, $F0
    jr jr_03C_4D5C

    ld e, [hl]
    ldh a, [$60]
    inc l
    ld d, $F0
    jr @+$35

    ld d, $F0
    jr @+$39

    ld e, [hl]
    ldh a, [$60]
    inc l
    ld d, $F0
    jr @+$35

    ld d, $F0
    jr @+$39

    ld e, [hl]
    ldh a, [$60]
    ld sp, $F016
    jr jr_03C_4D78

    ld d, $F0
    jr jr_03C_4D80

    ld e, [hl]
    ldh a, [$60]
    ld sp, $F016
    jr jr_03C_4D84

    ld d, $F0
    jr jr_03C_4D8C

jr_03C_4D50:
    ld e, [hl]
    ldh a, [$60]
    inc l

jr_03C_4D54:
    ld d, $F0
    jr @+$35

    ld d, $F0
    jr jr_03C_4D93

jr_03C_4D5C:
    ld e, [hl]
    ldh a, [$60]
    inc l
    ld d, $F0
    jr jr_03C_4D97

    ld d, $F0
    jr @+$39

    ld e, [hl]
    ldh a, [$60]
    ld sp, $F016
    jr jr_03C_4DA8

    ld d, $F0
    jr @+$43

    ld e, b
    ldh a, [$5A]
    dec hl

jr_03C_4D78:
    dec b
    ldh a, [rTMA]
    inc l
    ld d, $F0
    jr @+$35

jr_03C_4D80:
    ld d, $F0
    jr jr_03C_4DC0

jr_03C_4D84:
    ld e, [hl]
    ldh a, [$60]
    ld sp, $F016
    jr jr_03C_4DC4

jr_03C_4D8C:
    ld d, $F0
    jr @+$41

    ld b, [hl]
    ldh a, [rOBP0]

jr_03C_4D93:
    jr c, @+$12

    ldh a, [rNR12]

jr_03C_4D97:
    dec hl
    dec b
    ldh a, [rTMA]
    inc l
    ld d, $F0
    jr @+$35

    ld d, $F0
    jr jr_03C_4DDC

    ld d, $F0
    jr jr_03C_4DE4

jr_03C_4DA8:
    ld d, $F0
    jr jr_03C_4DE4

    ld d, $F0
    jr @+$35

    ld d, $F0
    jr @+$2D

    ld d, $F0
    jr jr_03C_4DEA

    ld d, $F0
    jr @+$3B

    ld d, $F0
    jr @+$3D

jr_03C_4DC0:
    ld d, $F0
    jr @+$39

jr_03C_4DC4:
    ld d, $F0
    jr jr_03C_4DFA

    ld d, $F0
    jr jr_03C_4DFC

    ld d, $F0
    jr @+$39

    ld d, $F0
    jr jr_03C_4E12

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03C_4E1A

jr_03C_4DDC:
    ld d, $F0
    jr @+$39

    ld d, $F0
    jr @+$37

jr_03C_4DE4:
    ld d, $F0
    jr jr_03C_4E24

    ld d, $F0

jr_03C_4DEA:
    jr @+$43

    ld d, $F0
    jr jr_03C_4E28

    ld d, $F0
    jr @+$37

    ld d, $F0
    jr jr_03C_4E34

    ld d, $F0

jr_03C_4DFA:
    jr @+$39

jr_03C_4DFC:
    ld d, $F0
    jr jr_03C_4E3E

    ld d, $F0
    jr @+$47

    ld d, $F0
    jr @+$49

    ld d, $F0
    jr @+$45

    inc l
    ldh a, [$30]
    inc sp
    ld d, $F0

jr_03C_4E12:
    jr jr_03C_4E4E

    ld d, $F0
    jr @+$41

    ld d, $F0

jr_03C_4E1A:
    jr @+$43

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$41

jr_03C_4E24:
    ld d, $F0
    jr jr_03C_4E62

jr_03C_4E28:
    ld d, $F0
    jr @+$43

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03C_4E78

jr_03C_4E34:
    ld d, $F0
    jr jr_03C_4E7E

    ld d, $F0
    jr @+$41

    ld d, $F0

jr_03C_4E3E:
    jr jr_03C_4E78

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr @+$45

    ld d, $F0

jr_03C_4E4E:
    jr jr_03C_4E94

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03C_4E94

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03C_4EAA

    ld d, $F0

jr_03C_4E62:
    jr @+$4D

    ld d, $F0
    jr jr_03C_4EB0

    ld d, $F0
    jr jr_03C_4EA6

    ld d, $F0
    jr jr_03C_4EA8

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03C_4EC0

jr_03C_4E78:
    ld d, $F0
    jr @+$41

    ld d, $F0

jr_03C_4E7E:
    jr jr_03C_4EC4

    ld d, $F0
    jr @+$39

    ld d, $F0
    jr @+$37

    ld d, $F0
    jr jr_03C_4EC8

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03C_4ED8

jr_03C_4E94:
    ld d, $F0
    jr @+$43

    ld d, $F0
    jr @+$35

    ld d, $F0
    jr @+$33

    ld d, $F0
    jr jr_03C_4EDC

    ld d, $F0

jr_03C_4EA6:
    jr @+$3F

jr_03C_4EA8:
    ld d, $F0

jr_03C_4EAA:
    jr @+$43

    ld d, $F0
    jr @+$45

jr_03C_4EB0:
    ld d, $F0
    jr @+$33

    ld d, $F0
    jr jr_03C_4EEA

    ld d, $F0
    jr jr_03C_4EF4

    ld d, $F0
    jr @+$43

jr_03C_4EC0:
    ld d, $F0
    jr @+$3B

jr_03C_4EC4:
    ld d, $F0
    jr @+$39

jr_03C_4EC8:
    ld d, $F0
    jr jr_03C_4F0A

    ld d, $F0
    jr jr_03C_4F0C

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03C_4F22

jr_03C_4ED8:
    ld d, $F0
    jr @+$4D

jr_03C_4EDC:
    ld d, $F0
    jr jr_03C_4F28

    inc l
    ldh a, [$30]
    ld a, [hl-]
    ld d, $F0
    jr @+$45

    ld d, $F0

jr_03C_4EEA:
    jr jr_03C_4F36

    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_03C_4F3E

jr_03C_4EF4:
    inc l
    ldh a, [$30]
    dec sp
    ld d, $F0
    jr jr_03C_4F40

    ld d, $F0
    jr jr_03C_4F4A

    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_03C_4F52

    ld d, $F0

jr_03C_4F0A:
    jr jr_03C_4F50

jr_03C_4F0C:
    ld d, $F0
    jr jr_03C_4F4C

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03C_4F5C

    inc l
    ldh a, [$30]
    ld b, e
    inc l
    ldh a, [$30]
    ld sp, $F016

jr_03C_4F22:
    jr jr_03C_4F5C

    ld d, $F0
    jr @+$45

jr_03C_4F28:
    ld d, $F0
    jr jr_03C_4F70

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_03C_4F6C

    ld d, $F0

jr_03C_4F36:
    jr jr_03C_4F68

    ld d, $F0
    jr @+$39

    ld d, $F0

jr_03C_4F3E:
    jr jr_03C_4F81

jr_03C_4F40:
    ld d, $F0
    jr jr_03C_4F87

    ld d, $F0
    jr jr_03C_4F87

    ld d, $F0

jr_03C_4F4A:
    jr jr_03C_4F83

jr_03C_4F4C:
    ld d, $F0
    jr @+$34

jr_03C_4F50:
    ld d, $F0

jr_03C_4F52:
    jr jr_03C_4F8C

    ld d, $F0
    jr jr_03C_4F99

    ld d, $F0
    jr @+$40

jr_03C_4F5C:
    ld d, $F0
    jr jr_03C_4F97

    ld d, $F0
    jr jr_03C_4FA5

    ld d, $F0
    jr jr_03C_4FA4

jr_03C_4F68:
    ld d, $F0
    jr jr_03C_4FAF

jr_03C_4F6C:
    ld d, $F0
    jr @+$4C

jr_03C_4F70:
    ld d, $F0
    jr jr_03C_4FBF

    ld d, $F0
    jr jr_03C_4FC0

    inc l
    ldh a, [$30]
    ld sp, $F00A
    inc c
    scf
    ld a, [bc]

jr_03C_4F81:
    ldh a, [$0C]

jr_03C_4F83:
    jr c, jr_03C_4F8F

    ldh a, [$0C]

jr_03C_4F87:
    ld a, [hl-]
    ld a, [bc]
    ldh a, [$0C]
    ld b, c

jr_03C_4F8C:
    ld a, [bc]
    ldh a, [$0C]

jr_03C_4F8F:
    ccf
    ld a, [bc]
    ldh a, [$0C]
    dec a
    ld a, [bc]
    ldh a, [$0C]

jr_03C_4F97:
    inc a
    ld a, [bc]

jr_03C_4F99:
    ldh a, [$0C]
    ld a, [hl-]
    ld a, [bc]
    ldh a, [$0C]
    inc a
    ld a, [bc]
    ldh a, [$0C]
    ld a, [hl-]

jr_03C_4FA4:
    ld a, [bc]

jr_03C_4FA5:
    ldh a, [$0C]
    jr c, jr_03C_4FB3

    ldh a, [$0C]
    inc l
    ld a, [bc]
    ldh a, [$0C]

jr_03C_4FAF:
    inc sp
    ld a, [bc]
    ldh a, [$0C]

jr_03C_4FB3:
    scf
    ld a, [bc]
    ldh a, [$0C]
    jr c, jr_03C_4FC3

    ldh a, [$0C]
    ld a, [hl-]
    ld a, [bc]
    ldh a, [$0C]

jr_03C_4FBF:
    inc a

jr_03C_4FC0:
    ld a, [bc]
    ldh a, [$0C]

jr_03C_4FC3:
    ld a, [hl-]
    ld a, [bc]
    ldh a, [$0C]
    jr c, jr_03C_4FD3

    ldh a, [$0C]
    scf
    ld a, [bc]
    ldh a, [$0C]
    jr c, jr_03C_4FDB

    ldh a, [$0C]

jr_03C_4FD3:
    scf
    ld a, [bc]
    ldh a, [$0C]
    inc sp
    ld a, [bc]
    ldh a, [$0C]

jr_03C_4FDB:
    ld sp, $F00A
    inc c
    scf
    ld a, [bc]
    ldh a, [$0C]
    jr c, jr_03C_4FEF

    ldh a, [$0C]
    ld a, [hl-]
    ld a, [bc]
    ldh a, [$0C]
    inc a
    ld a, [bc]
    ldh a, [$0C]

jr_03C_4FEF:
    dec a
    ld a, [bc]
    ldh a, [$0C]
    inc a
    ld a, [bc]
    ldh a, [$0C]
    ld a, [hl-]
    ld a, [bc]
    ldh a, [$0C]
    jr c, jr_03C_5007

    ldh a, [$0C]
    ld a, [hl-]
    ld a, [bc]
    ldh a, [$0C]
    jr c, jr_03C_500F

    ldh a, [$0C]

jr_03C_5007:
    scf
    ld a, [bc]
    ldh a, [$0C]
    inc l
    ld a, [bc]
    ldh a, [$0C]

jr_03C_500F:
    inc sp
    ld a, [bc]
    ldh a, [$0C]
    dec [hl]
    ld a, [bc]
    ldh a, [$0C]
    scf
    ld a, [bc]
    ldh a, [$0C]
    jr c, jr_03C_5027

    ldh a, [$0C]
    scf
    ld a, [bc]
    ldh a, [$0C]
    dec [hl]
    ld a, [bc]
    ldh a, [$0C]

jr_03C_5027:
    inc sp
    ld a, [bc]
    ldh a, [$0C]
    inc l
    ld d, $F0
    jr @+$35

    ld a, [bc]
    ldh a, [$0C]
    jr c, @+$0C

    ldh a, [$0C]
    dec hl
    ld d, $F0
    jr jr_03C_506E

    ld d, $F0
    jr @+$3D

    ld d, $F0
    jr jr_03C_5076

    ld d, $F0
    jr @+$3D

    ld d, $F0
    jr jr_03C_507E

    ld d, $F0
    jr jr_03C_5080

    ld d, $F0
    jr @+$39

    ld d, $F0
    jr jr_03C_5097

    ld d, $F0
    jr @+$39

    ld d, $F0
    jr jr_03C_509F

    ld d, $F0
    jr jr_03C_509B

    ld d, $F0
    jr jr_03C_5094

    ld d, $F0
    jr jr_03C_509F

    ld d, $F0

jr_03C_506E:
    jr jr_03C_50AC

    ld d, $F0
    jr jr_03C_50AC

    ld d, $F0

jr_03C_5076:
    jr @+$30

    ld d, $F0
    jr jr_03C_50BA

    ld d, $F0

jr_03C_507E:
    jr jr_03C_50B0

jr_03C_5080:
    ld d, $F0
    jr @+$39

    ld d, $F0
    jr @+$40

    ld d, $F0
    jr jr_03C_50CC

    ld d, $F0
    jr jr_03C_50CC

    ld d, $F0
    jr @+$39

jr_03C_5094:
    ld d, $F0
    nop

jr_03C_5097:
    rst $38
    db $F4
    ld a, d
    ret nz

jr_03C_509B:
    ld d, c
    dec b
    ldh a, [rTMA]

jr_03C_509F:
    ld b, c
    ld l, $F0
    jr nc, jr_03C_50EA

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, c
    ld d, $F0
    jr @+$41

jr_03C_50AC:
    ld e, [hl]
    ldh a, [$60]
    dec a

jr_03C_50B0:
    ld d, $F0
    jr jr_03C_50F3

    ld d, $F0
    jr jr_03C_50F9

    ld l, $F0

jr_03C_50BA:
    jr nc, jr_03C_5102

    ld l, $F0
    jr nc, @+$43

    ld l, $F0
    jr nc, jr_03C_510C

    ld e, [hl]
    ldh a, [$60]
    ld b, [hl]
    ld d, $F0
    jr jr_03C_5114

jr_03C_50CC:
    ld d, $F0
    jr jr_03C_511A

    ld l, $F0
    jr nc, jr_03C_5117

    ld l, $F0
    jr nc, jr_03C_5122

    ld h, $F0
    ld a, [hl+]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, e
    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_03C_5130

    ld l, $F0

jr_03C_50EA:
    jr nc, jr_03C_5132

    ld l, $F0
    jr nc, @+$45

    ld e, [hl]
    ldh a, [$60]

jr_03C_50F3:
    ld b, c
    ld l, $F0
    jr nc, @+$45

    ld e, [hl]

jr_03C_50F9:
    ldh a, [$60]
    ld c, d
    inc l
    ldh a, [$30]
    ld b, e
    ld l, $F0

jr_03C_5102:
    jr nc, jr_03C_514A

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, e
    ld d, $F0
    jr jr_03C_514D

jr_03C_510C:
    ld l, $F0
    jr nc, jr_03C_5156

    ld e, b
    ldh a, [$5A]
    ld b, e

jr_03C_5114:
    dec b
    ldh a, [rTMA]

jr_03C_5117:
    ld b, h
    ld l, $F0

jr_03C_511A:
    jr nc, jr_03C_5164

    ld b, [hl]
    ldh a, [rOBP0]
    ld b, h
    ld d, $F0

jr_03C_5122:
    jr @+$45

    ld l, $F0
    jr nc, jr_03C_5170

    ld e, b
    ldh a, [$5A]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b

jr_03C_5130:
    ld l, $F0

jr_03C_5132:
    jr nc, jr_03C_517F

    inc l
    ldh a, [$30]
    ld c, b
    ld d, $F0

jr_03C_513A:
    jr jr_03C_5184

    ld d, $F0
    jr jr_03C_5188

    ld l, $F0
    jr nc, jr_03C_5191

    inc l
    ldh a, [$30]
    ld c, b
    jr z, jr_03C_513A

jr_03C_514A:
    ld a, [hl+]
    ld b, a
    dec b

jr_03C_514D:
    ldh a, [rTMA]
    ld c, b
    ld l, $F0
    jr nc, jr_03C_51A1

    ld l, $F0

jr_03C_5156:
    jr nc, jr_03C_51A0

    ld d, $F0
    jr @+$4A

    ld d, $F0
    jr @+$4A

    ld l, $F0
    jr nc, @+$51

jr_03C_5164:
    ld l, $F0
    jr nc, jr_03C_51AF

    inc l
    ldh a, [$30]
    ld c, b
    ld l, $F0
    jr nc, jr_03C_51BB

jr_03C_5170:
    ld b, [hl]
    ldh a, [rOBP0]
    ld c, b
    ld d, $F0
    jr @+$48

    ld l, $F0
    jr nc, jr_03C_51C6

    ld b, [hl]
    ldh a, [rOBP0]

jr_03C_517F:
    ld b, [hl]
    ld d, $F0
    jr @+$46

jr_03C_5184:
    ld l, $F0
    jr nc, jr_03C_51D2

jr_03C_5188:
    ld l, $F0
    jr nc, jr_03C_51D0

    jr z, @-$0E

    ld a, [hl+]
    ld b, d
    dec b

jr_03C_5191:
    ldh a, [rTMA]
    ld b, e
    add b
    adc h
    ldh a, [$90]
    ld b, c
    ld l, $F0
    jr nc, jr_03C_51E6

    ld b, [hl]
    ldh a, [rOBP0]

jr_03C_51A0:
    ld b, c

jr_03C_51A1:
    ld d, $F0
    jr jr_03C_51E8

    ld l, $F0
    jr nc, jr_03C_51F3

    ld l, $F0
    jr nc, jr_03C_51F5

    jr z, @-$0E

jr_03C_51AF:
    ld a, [hl+]
    ld b, a
    dec b
    ldh a, [rTMA]
    ld c, b
    ld l, $F0
    jr nc, @+$49

    ld d, $F0

jr_03C_51BB:
    jr jr_03C_5202

    ld d, $F0
    jr @+$49

    ld l, $F0
    jr nc, jr_03C_520D

    add b

jr_03C_51C6:
    adc b
    ldh a, [$8A]
    ld b, b
    dec b
    ldh a, [rTMA]
    ld b, c
    ld l, $F0

jr_03C_51D0:
    jr nc, @+$48

jr_03C_51D2:
    ld b, [hl]
    ldh a, [rOBP0]
    ld b, c
    ld d, $F0
    jr jr_03C_5219

    ld e, [hl]
    ldh a, [$60]
    dec a
    ld d, $F0

jr_03C_51E0:
    jr jr_03C_5221

    ld d, $F0
    jr jr_03C_5227

jr_03C_51E6:
    ld l, $F0

jr_03C_51E8:
    jr nc, @+$48

    ld l, $F0
    jr nc, jr_03C_5232

    jr z, jr_03C_51E0

    ld a, [hl+]
    ld b, a
    dec b

jr_03C_51F3:
    ldh a, [rTMA]

jr_03C_51F5:
    ld c, b
    ld l, $F0
    jr nc, jr_03C_5233

    dec b
    ldh a, [rTMA]
    ld a, [hl-]
    dec b
    ldh a, [rTMA]
    dec sp

jr_03C_5202:
    dec b
    ldh a, [rTMA]
    inc a
    dec b
    ldh a, [rTMA]
    dec a
    dec b
    ldh a, [rTMA]

jr_03C_520D:
    ld a, $05
    ldh a, [rTMA]
    ccf
    dec b
    ldh a, [rTMA]
    ld b, b
    dec b
    ldh a, [rTMA]

jr_03C_5219:
    ld b, c
    dec b
    ldh a, [rTMA]
    ld b, d
    dec b
    ldh a, [rTMA]

jr_03C_5221:
    ld b, e
    dec b
    ldh a, [rTMA]
    ld b, h
    dec b

jr_03C_5227:
    ldh a, [rTMA]
    ld b, l
    dec b
    ldh a, [rTMA]
    ld b, [hl]
    dec b
    ldh a, [rTMA]
    ld b, a

jr_03C_5232:
    dec b

jr_03C_5233:
    ldh a, [rTMA]
    ld c, b
    dec b
    ldh a, [rTMA]
    ld c, d
    ld l, $F0
    jr nc, jr_03C_5281

    ld l, $F0
    jr nc, @+$4C

    jr z, @-$0E

    ld a, [hl+]
    ld c, d
    dec b
    ldh a, [rTMA]
    ld c, e
    ld d, $F0
    jr @+$4C

    ld d, $F0
    jr jr_03C_529A

    ld l, $F0
    jr nc, @+$48

    ld l, $F0
    jr nc, jr_03C_529D

    ld e, [hl]
    ldh a, [$60]
    ld b, c
    ld l, $F0
    jr nc, jr_03C_52A5

    add b
    adc [hl]
    ldh a, [rP1]
    rst $38
    ldh a, [$30]
    call $1650
    ldh a, [rNR23]
    ld c, a
    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_03C_52BF

    ld d, $F0
    ld c, b
    ld c, l
    ld d, $F0
    jr @+$51

    ld d, $F0

jr_03C_5281:
    jr @+$4D

    ld d, $F0
    jr jr_03C_52CF

    ld d, $F0
    ld c, b
    ld c, l
    ld d, $F0
    jr @+$51

    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_03C_52DF

    ld d, $F0
    ld c, b

jr_03C_529A:
    ld c, l
    ld d, $F0

jr_03C_529D:
    jr @+$51

    ld d, $F0
    jr @+$4D

    ld d, $F0

jr_03C_52A5:
    jr jr_03C_52EF

    ld d, $F0
    ld c, b
    ld c, l
    ld d, $F0
    jr jr_03C_52FE

    ld d, $F0
    jr jr_03C_52FE

    ld d, $F0
    jr jr_03C_52FF

    ld d, $F0
    ld c, b
    ld c, l
    ld d, $F0
    jr jr_03C_530E

jr_03C_52BF:
    ld d, $F0
    jr jr_03C_530E

    ld d, $F0
    jr jr_03C_530F

    ld d, $F0
    ld c, b
    ld c, l
    ld d, $F0
    jr @+$51

jr_03C_52CF:
    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_03C_531F

    ld d, $F0
    ld c, b
    ld c, l
    ld d, $F0
    jr @+$51

jr_03C_52DF:
    ld d, $F0
    jr @+$4D

    ld d, $F0
    jr jr_03C_532F

    ld d, $F2
    jr z, @+$45

    ld l, $F0
    jr nc, @+$43

jr_03C_52EF:
    ld l, $F0
    jr nc, jr_03C_5331

    ld l, $F0
    jr nc, @+$43

    ld l, $F0
    jr nc, @+$45

    ld e, [hl]
    ldh a, [$60]

jr_03C_52FE:
    ld b, c

jr_03C_52FF:
    ld l, $F0
    jr nc, @+$41

    ld e, [hl]
    ldh a, [$60]
    inc a
    ld l, $F0
    jr nc, jr_03C_5349

    ld e, [hl]
    ldh a, [$60]

jr_03C_530E:
    ld b, c

jr_03C_530F:
    ld l, $F0
    jr nc, @+$41

    ld d, $F0
    jr jr_03C_5351

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03C_5359

jr_03C_531F:
    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03C_5361

    ld d, $F0
    jr @+$3F

    ld d, $F0
    jr jr_03C_5369

jr_03C_532F:
    ld d, $F0

jr_03C_5331:
    jr @+$3F

    ld d, $F0
    jr jr_03C_5373

    ld d, $F0
    jr @+$3F

    ld d, $F0
    jr jr_03C_5379

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03C_5383

    ld d, $F0

jr_03C_5349:
    jr @+$41

    ld d, $F0
    jr jr_03C_538D

    ld d, $F0

jr_03C_5351:
    jr @+$41

    ld d, $F0
    jr jr_03C_5393

    ld d, $F0

jr_03C_5359:
    jr jr_03C_5399

    ld d, $F0
    jr jr_03C_539B

    ld d, $F0

jr_03C_5361:
    jr @+$41

    ld d, $F0
    jr @+$43

    ld d, $F0

jr_03C_5369:
    jr @+$45

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03C_53B1

jr_03C_5373:
    ld d, $F0
    jr jr_03C_53B3

    ld d, $F0

jr_03C_5379:
    jr @+$41

    ld d, $F0
    jr jr_03C_53BB

    ld d, $F0
    jr jr_03C_53C1

jr_03C_5383:
    ld d, $F0
    jr @+$41

    ld d, $F0
    jr @+$41

    ld d, $F0

jr_03C_538D:
    jr jr_03C_53CB

    ld d, $F0
    jr @+$43

jr_03C_5393:
    ld d, $F0
    jr jr_03C_53DA

    ld d, $F0

jr_03C_5399:
    jr jr_03C_53DF

jr_03C_539B:
    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03C_53E4

    ld d, $F0
    jr jr_03C_53E4

    ld d, $F0
    jr jr_03C_53EC

    ld d, $F0
    jr @+$45

    ld d, $F0

jr_03C_53B1:
    jr jr_03C_53F7

jr_03C_53B3:
    ld d, $F0
    jr @+$41

    ld d, $F0
    jr @+$43

jr_03C_53BB:
    ld d, $F0
    jr jr_03C_53FD

    ld d, $F0

jr_03C_53C1:
    jr @+$47

    ld d, $F0
    jr @+$47

    ld d, $F0
    jr @+$43

jr_03C_53CB:
    ld d, $F0
    jr jr_03C_540D

    ld d, $F0
    jr jr_03C_5412

    ld l, $F0
    jr nc, @+$45

    ld b, [hl]
    ldh a, [rOBP0]

jr_03C_53DA:
    ccf
    ld d, $F0
    jr jr_03C_541D

jr_03C_53DF:
    ld l, $F0
    jr nc, jr_03C_5426

    ld b, [hl]

jr_03C_53E4:
    ldh a, [rOBP0]
    ld a, $16
    ldh a, [rNR23]
    ld a, $2E

jr_03C_53EC:
    ldh a, [$30]
    ld b, c
    ld l, $F0
    jr nc, jr_03C_5431

    ld l, $F0
    jr nc, jr_03C_5435

jr_03C_53F7:
    ld d, $F0
    jr @+$41

    ld d, $F0

jr_03C_53FD:
    jr @+$43

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$41

    ld l, $F0
    jr nc, @+$3F

    ld l, $F0

jr_03C_540D:
    jr nc, @+$43

    ld b, [hl]
    ldh a, [rOBP0]

jr_03C_5412:
    dec a
    ld d, $F0
    jr @+$41

    ld l, $F0
    jr nc, @+$45

    ld l, $F0

jr_03C_541D:
    jr nc, @+$41

    ld l, $F0
    jr nc, jr_03C_5461

    ld e, [hl]
    ldh a, [$60]

jr_03C_5426:
    ccf
    ld d, $F0
    jr jr_03C_5469

    ld d, $F0
    jr @+$41

    ld d, $F0

jr_03C_5431:
    jr jr_03C_5471

    ld d, $F0

jr_03C_5435:
    jr @+$43

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr jr_03C_547F

    ld d, $F0
    jr jr_03C_5481

    ld l, $F0
    jr nc, @+$43

    ld b, [hl]
    ldh a, [rOBP0]
    ld a, [hl-]
    ld d, $F0
    jr jr_03C_548D

    ld l, $F0
    jr nc, jr_03C_5493

    ld l, $F0
    jr nc, jr_03C_5498

    ld d, $F0
    jr @+$41

    ld d, $F0

jr_03C_5461:
    jr jr_03C_549D

    ld l, $F0
    jr nc, jr_03C_54A7

    ld l, $F0

jr_03C_5469:
    jr nc, jr_03C_54AC

    ld l, $F0
    jr nc, jr_03C_54AD

    ld l, $F0

jr_03C_5471:
    jr nc, jr_03C_54B2

    ld e, [hl]
    ldh a, [$60]
    ld b, a
    ld l, $F0
    jr nc, jr_03C_54BE

    ld l, $F0
    jr nc, jr_03C_54C6

jr_03C_547F:
    ld l, $F0

jr_03C_5481:
    jr nc, jr_03C_54CB

    ld d, $F0
    jr jr_03C_54CA

    ld d, $F0
    jr jr_03C_54CA

    ld l, $F0

jr_03C_548D:
    jr nc, jr_03C_54CB

    ld l, $F0
    jr nc, jr_03C_54D2

jr_03C_5493:
    ld e, [hl]
    ldh a, [$60]
    ld a, $2E

jr_03C_5498:
    ldh a, [$30]
    ld b, b
    add b
    adc [hl]

jr_03C_549D:
    ldh a, [rP1]
    rst $38
    ld a, [hl+]
    inc l
    jr nc, jr_03C_54CD

    ld a, [hl+]
    inc l
    dec hl

jr_03C_54A7:
    add hl, hl
    nop
    nop
    jr z, jr_03C_54DB

jr_03C_54AC:
    nop

jr_03C_54AD:
    dec l
    jr nc, jr_03C_54B0

jr_03C_54B0:
    nop
    nop

jr_03C_54B2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03C_54BE:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03C_54C6:
    nop
    nop
    nop
    nop

jr_03C_54CA:
    dec hl

jr_03C_54CB:
    dec hl
    nop

jr_03C_54CD:
    nop
    nop
    nop
    nop
    nop

jr_03C_54D2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03C_54DB:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr z, jr_03C_5531

jr_03C_5531:
    dec [hl]
    nop
    nop
    rlca
    nop
    ret c

    ld b, $0E

jr_03C_5539:
    jr z, jr_03C_5539

    nop
    inc bc
    nop
    jr jr_03C_5540

jr_03C_5540:
    nop
    dec b
    ld [bc], a
    ret nc

    inc b
    inc c

jr_03C_5546:
    jr nc, jr_03C_5546

    nop
    inc bc
    ld [bc], a
    stop
    nop
    inc bc
    nop
    ret nz

    ld [bc], a
    ld c, $40
    cp $00
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $C000
    nop
    ld c, $40
    cp $00
    inc bc
    nop
    nop
    nop
    ld d, d
    ld [bc], a
    dec e
    ld [bc], a
    add hl, sp
    inc bc
    ld l, h
    inc bc
    add b
    inc b
    db $EC
    inc b
    ld a, [c]
    ld b, $A1
    ldh a, [rP1]
    inc l
    inc c
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    ldh a, [$30]
    inc l
    inc c
    ldh a, [$30]
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
    jr nc, jr_03C_5785

    ldh a, [$30]
    scf
    inc h
    ldh a, [$30]
    jr nc, jr_03C_578D

    ldh a, [$30]
    scf
    inc h
    ldh a, [$30]
    jr nc, jr_03C_5795

    ldh a, [$30]
    scf
    inc h
    ldh a, [$30]
    jr nc, jr_03C_579D

    ldh a, [$30]
    scf
    inc h
    ldh a, [$30]
    jr nc, jr_03C_57A5

    ldh a, [$30]
    scf
    inc h

jr_03C_5785:
    ldh a, [$30]
    jr nc, jr_03C_57AD

    ldh a, [$30]
    scf
    inc h

jr_03C_578D:
    ldh a, [$30]
    jr nc, jr_03C_57B5

    ldh a, [$30]
    scf
    inc h

jr_03C_5795:
    ldh a, [$30]
    jr nc, jr_03C_57BD

    ldh a, [$30]
    scf
    inc h

jr_03C_579D:
    ldh a, [$30]
    jr nc, jr_03C_57C5

    ldh a, [$30]
    scf
    inc h

jr_03C_57A5:
    ldh a, [$30]
    jr nc, jr_03C_57CD

    ldh a, [$30]
    scf
    inc h

jr_03C_57AD:
    ldh a, [$30]
    jr nc, jr_03C_57D5

    ldh a, [$30]
    scf
    inc h

jr_03C_57B5:
    ldh a, [$30]
    jr nc, jr_03C_57DD

    ldh a, [$30]
    scf
    inc h

jr_03C_57BD:
    ldh a, [$30]
    jr nc, jr_03C_57E5

    ldh a, [$30]
    scf
    inc h

jr_03C_57C5:
    ldh a, [$30]
    jr nc, jr_03C_57ED

    ldh a, [$30]
    scf
    inc h

jr_03C_57CD:
    ldh a, [$30]
    jr nc, jr_03C_57F5

    ldh a, [$30]
    scf
    inc h

jr_03C_57D5:
    ldh a, [$30]
    jr nc, jr_03C_57FD

    ldh a, [$30]
    scf
    inc h

jr_03C_57DD:
    ldh a, [$30]
    jr nc, jr_03C_5805

    ldh a, [$30]
    scf
    inc h

jr_03C_57E5:
    ldh a, [$30]
    jr nc, jr_03C_580D

    ldh a, [$30]
    scf
    inc h

jr_03C_57ED:
    ldh a, [$30]
    jr nc, jr_03C_5815

    ldh a, [$30]
    scf
    inc h

jr_03C_57F5:
    ldh a, [$30]
    jr nc, jr_03C_581D

    ldh a, [$30]
    scf
    inc h

jr_03C_57FD:
    ldh a, [$30]
    jr nc, jr_03C_5825

    ldh a, [$30]
    scf
    inc h

jr_03C_5805:
    ldh a, [$30]
    ld l, $24
    ldh a, [$30]
    dec [hl]
    inc h

jr_03C_580D:
    ldh a, [$30]
    inc sp
    inc h
    ldh a, [$30]
    ld a, [hl-]
    inc h

jr_03C_5815:
    ldh a, [$30]
    inc sp
    inc h
    ldh a, [$30]
    ld a, [hl-]
    inc h

jr_03C_581D:
    ldh a, [$30]
    inc sp
    inc h
    ldh a, [$30]
    ld a, [hl-]
    inc h

jr_03C_5825:
    ldh a, [$30]
    inc sp
    inc h
    ldh a, [$30]
    ld a, [hl-]
    inc h
    ldh a, [$30]
    jr c, jr_03C_5855

    ldh a, [$30]
    ccf
    inc h
    ldh a, [$30]
    jr c, jr_03C_585D

    ldh a, [$30]
    ccf
    inc h
    ldh a, [$30]
    scf
    inc h
    ldh a, [$30]
    ld a, $24
    ldh a, [$30]
    scf
    inc h
    ldh a, [$30]
    dec hl
    inc h
    ldh a, [$30]
    jr nc, jr_03C_5875

    ldh a, [$30]
    scf
    inc h

jr_03C_5855:
    ldh a, [$30]
    jr nc, jr_03C_587D

    ldh a, [$30]
    scf
    inc h

jr_03C_585D:
    ldh a, [$30]
    jr nc, jr_03C_5885

    ldh a, [$30]
    scf
    inc h
    ldh a, [$30]
    jr nc, jr_03C_588D

    ldh a, [$30]
    scf
    inc h
    ldh a, [$30]
    jr nc, jr_03C_5895

    ldh a, [$30]
    scf
    inc h

jr_03C_5875:
    ldh a, [$30]
    jr nc, jr_03C_589D

    ldh a, [$30]
    scf
    inc h

jr_03C_587D:
    ldh a, [$30]
    jr nc, @+$26

    ldh a, [$30]
    scf
    inc h

jr_03C_5885:
    ldh a, [$30]
    jr nc, jr_03C_58AD

    ldh a, [$30]
    scf
    inc h

jr_03C_588D:
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or b
    ld a, [bc]
    inc h

jr_03C_5895:
    ldh a, [$30]
    scf
    inc h
    ldh a, [$30]
    jr nc, jr_03C_58C1

jr_03C_589D:
    ldh a, [$30]
    scf
    inc h
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    inc a
    ld d, $F0
    jr jr_03C_58E9

    ld d, $F0

jr_03C_58AD:
    jr @+$41

    ld d, $F0
    jr nc, @+$41

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_03C_58FE

    ld d, $F0
    jr nc, @+$45

    ld d, $F0

jr_03C_58C1:
    jr jr_03C_5907

    ld d, $F0
    jr jr_03C_590D

    ld d, $F0
    jr jr_03C_590F

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr @+$45

    ld d, $F0
    ld a, [hl+]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    ld l, $F0
    jr nc, jr_03C_591F

    ld d, $F0
    jr nc, jr_03C_5923

    ld d, $F0

jr_03C_58E9:
    jr jr_03C_5929

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr nc, jr_03C_5932

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr @+$45

    halt
    ldh a, [$90]

jr_03C_58FE:
    inc a
    ld d, $F0
    jr jr_03C_5941

    ld d, $F0
    jr @+$41

jr_03C_5907:
    ld d, $F0
    jr nc, jr_03C_594A

    ld d, $F0

jr_03C_590D:
    jr @+$43

jr_03C_590F:
    ld d, $F0
    jr @+$45

    ld d, $F0
    jr nc, jr_03C_595A

    ld d, $F0
    jr @+$46

    ld d, $F0
    jr jr_03C_5965

jr_03C_591F:
    ld d, $F0
    jr jr_03C_5967

jr_03C_5923:
    ld d, $F0
    jr @+$45

    ld d, $F0

jr_03C_5929:
    jr @+$43

    ld d, $F0
    jr @+$45

    ld d, $F0
    ld a, [hl+]

jr_03C_5932:
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    ld l, $F0
    jr nc, jr_03C_5977

    ld d, $F0
    jr nc, jr_03C_597B

    ld d, $F0

jr_03C_5941:
    jr jr_03C_5981

    ld d, $F0
    jr @+$41

    ld d, $F0
    ld a, [hl+]

jr_03C_594A:
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld d, $F0
    jr @+$40

    ld d, $F0
    jr jr_03C_5993

    ld b, [hl]
    ldh a, [$60]

jr_03C_595A:
    ld a, $16
    ldh a, [$30]
    ld a, $2E
    ldh a, [$30]
    ccf
    ld d, $F0

jr_03C_5965:
    jr nc, @+$41

jr_03C_5967:
    ld d, $F0
    jr @+$43

    ld d, $F0
    jr jr_03C_59B2

    ld d, $F0
    jr nc, @+$45

    ld d, $F0
    jr jr_03C_59BB

jr_03C_5977:
    ld d, $F0
    jr jr_03C_59C1

jr_03C_597B:
    ld d, $F0
    jr jr_03C_59C3

    ld d, $F0

jr_03C_5981:
    jr @+$45

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr @+$45

    ld d, $F0
    ld a, [hl+]
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e

jr_03C_5993:
    ld l, $F0
    jr nc, jr_03C_59D3

    ld d, $F0
    jr nc, jr_03C_59D7

    ld d, $F0
    jr jr_03C_59DD

    ld d, $F0
    jr @+$41

    ld d, $F0
    jr nc, jr_03C_59E6

    ld d, $F0
    jr @+$43

    ld d, $F0
    jr @+$45

    halt
    ldh a, [$90]

jr_03C_59B2:
    inc a
    ld d, $F0
    jr jr_03C_59F5

    ld d, $F0
    jr @+$41

jr_03C_59BB:
    ld d, $F0
    jr nc, jr_03C_59FE

    ld d, $F0

jr_03C_59C1:
    jr @+$43

jr_03C_59C3:
    ld d, $F0
    jr @+$45

    ld d, $F0
    jr nc, @+$45

    ld d, $F0
    jr jr_03C_5A13

    ld d, $F0
    jr jr_03C_5A19

jr_03C_59D3:
    ld d, $F0
    jr @+$46

jr_03C_59D7:
    ld d, $F0
    jr jr_03C_5A1E

    ld d, $F0

jr_03C_59DD:
    jr jr_03C_5A20

    ld d, $F0
    jr jr_03C_5A26

    ld d, $F0
    ld a, [hl+]

jr_03C_59E6:
    ld b, d
    dec b
    ldh a, [rTMA]
    ld b, e
    ld l, $F0
    jr nc, @+$3E

    ld d, $F0
    jr nc, @+$3E

    ld d, $F0

jr_03C_59F5:
    jr jr_03C_5A35

    ld d, $F0
    jr jr_03C_5A3A

    ld d, $F0
    ld a, [hl+]

jr_03C_59FE:
    ld a, $05
    ldh a, [rTMA]
    ccf
    ld d, $F0
    jr jr_03C_5A45

    ld d, $F0
    jr @+$3E

    add b
    sub b
    ldh a, [rP1]
    rst $38
    nop
    nop
    pop de

jr_03C_5A13:
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    ld c, b

jr_03C_5A19:
    inc c
    ldh a, [$30]
    ld c, a
    inc c

jr_03C_5A1E:
    ldh a, [$30]

jr_03C_5A20:
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c

jr_03C_5A26:
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b

jr_03C_5A35:
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c

jr_03C_5A3A:
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, a

jr_03C_5A45:
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld d, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, [hl]
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [rNR23]
    ld c, e
    inc c
    ldh a, [rNR23]
    ld c, d
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld d, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, [hl]
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [rNR23]
    ld c, e
    inc c
    ldh a, [rNR23]
    ld c, d
    inc c
    ldh a, [$30]
    ld c, e
    inc c
    ldh a, [$30]
    ld d, d
    inc c
    ldh a, [$30]
    ld c, e
    inc c
    ldh a, [rNR23]
    ld d, d
    inc c
    ldh a, [rNR23]
    ld d, b
    inc c
    ldh a, [$30]
    ld c, e
    inc c
    ldh a, [$30]
    ld d, d
    inc c
    ldh a, [$30]
    ld c, e
    inc c
    ldh a, [rNR23]
    ld d, d
    inc c
    ldh a, [rNR23]
    ld d, b
    inc c
    ldh a, [$30]
    ld d, b
    inc c
    ldh a, [$30]
    ld d, a
    inc c
    ldh a, [$30]
    ld d, b
    inc c
    ldh a, [rNR23]
    ld d, a
    inc c
    ldh a, [rNR23]
    ld d, [hl]
    inc c
    ldh a, [rNR23]
    ld d, a
    inc c
    ldh a, [rNR23]
    ld d, [hl]
    inc c
    ldh a, [rNR23]
    ld d, h
    inc c
    ldh a, [rNR23]
    ld d, d
    inc c
    ldh a, [rNR23]
    ld d, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, [hl]
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [$30]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld d, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, [hl]
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
    inc c
    ldh a, [rNR23]
    ld c, e
    inc c
    ldh a, [rNR23]
    ld c, d
    inc c
    ldh a, [rP1]
    rst $38
    ldh a, [rNR23]
    ret z

    ld d, b
    inc c
    ldh a, [$30]
    ld c, a
    inc c
    ldh a, [$30]
    ld c, b
    inc c
    ldh a, [rNR23]
    ld c, a
    inc c
    ldh a, [rNR23]
    ld c, l
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
    jr z, jr_03C_5C18

    nop
    dec l
    jr nc, jr_03C_5BED

jr_03C_5BED:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03C_5C18:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sub h
    nop
    ld c, $00
    jr jr_03C_5C6C

jr_03C_5C6C:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    dec bc
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec bc
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $400B
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld b, b
    cp $00
    nop
    nop
    nop
    nop
    ld a, $01
    ld a, $02
    and d
    inc b
    cp $F0
    jr @-$3B

    inc bc
    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr @+$45

    ld b, $F0
    jr @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, jr_03C_5D9E

    ld b, $F0
    jr nc, jr_03C_5DA2

    ld b, $F0
    jr jr_03C_5DA6

    ld b, $F0
    jr jr_03C_5DAA

    ld b, $F0
    jr nc, jr_03C_5DAE

    ld b, $F0
    jr nc, jr_03C_5DB2

    ld b, $F0
    jr nc, jr_03C_5DB6

    ld b, $F0
    jr nc, jr_03C_5DBA

    ld b, $F0
    jr nc, jr_03C_5DBE

    ld b, $F0
    jr nc, jr_03C_5DC2

    ld b, $F0
    jr nc, jr_03C_5DC6

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, @+$45

    ld b, $F0
    jr nc, jr_03C_5DD2

    ld b, $F0
    jr nc, jr_03C_5DD6

    ld b, $F0
    jr jr_03C_5DDA

    ld b, $F0
    jr jr_03C_5DDE

    ld b, $F0
    nop

jr_03C_5D9E:
    rst $38
    ldh a, [rP1]
    or d

jr_03C_5DA2:
    daa
    dec bc
    ldh a, [rOBP0]

jr_03C_5DA6:
    ld [hl-], a
    rla
    ldh a, [rNR23]

jr_03C_5DAA:
    jr nc, jr_03C_5DB7

    ldh a, [rOBP0]

jr_03C_5DAE:
    jr nc, jr_03C_5DC7

    ldh a, [rNR23]

jr_03C_5DB2:
    cpl
    dec bc
    ldh a, [rOBP0]

jr_03C_5DB6:
    cpl

jr_03C_5DB7:
    rla
    ldh a, [rNR23]

jr_03C_5DBA:
    ld l, $0B
    ldh a, [$30]

jr_03C_5DBE:
    inc l
    dec bc
    ldh a, [$30]

jr_03C_5DC2:
    dec l
    dec bc
    ldh a, [$30]

jr_03C_5DC6:
    dec l

jr_03C_5DC7:
    ld d, $F0
    jr jr_03C_5E04

    ld d, $F0
    jr jr_03C_5E01

    dec bc
    ldh a, [rOBP0]

jr_03C_5DD2:
    ld [hl-], a
    rla
    ldh a, [rNR23]

jr_03C_5DD6:
    jr nc, jr_03C_5DE3

    ldh a, [rOBP0]

jr_03C_5DDA:
    jr nc, jr_03C_5DF3

    ldh a, [rNR23]

jr_03C_5DDE:
    cpl
    dec bc
    ldh a, [rOBP0]
    cpl

jr_03C_5DE3:
    rla
    ldh a, [rNR23]
    ld l, $0B
    ldh a, [$30]
    inc l
    dec bc
    ldh a, [$30]
    dec l
    dec bc
    ldh a, [$30]
    dec l

jr_03C_5DF3:
    ld d, $F0
    jr @+$3B

    ld d, $F0
    jr @+$34

    dec bc
    ldh a, [rOBP0]
    ld [hl-], a
    ld d, $F0

jr_03C_5E01:
    jr jr_03C_5E3A

    dec bc

jr_03C_5E04:
    ldh a, [rOBP0]
    scf
    ld d, $F0
    jr jr_03C_5E44

    dec bc
    ldh a, [$30]
    dec l
    dec bc
    ldh a, [$30]
    add hl, sp
    dec bc
    ldh a, [$30]
    dec l
    dec bc
    ldh a, [$30]
    add hl, sp
    dec bc
    ldh a, [$30]
    dec l
    dec bc
    ldh a, [$30]
    add hl, sp
    dec bc
    ldh a, [rNR23]
    dec l
    rla
    ldh a, [rNR23]
    cpl
    rla
    ldh a, [rNR23]
    ld sp, $F017
    jr @+$34

    dec bc
    ldh a, [$30]
    ld [hl-], a
    rla
    ldh a, [rNR23]

jr_03C_5E3A:
    jr nc, jr_03C_5E53

    ldh a, [rNR23]
    add hl, hl
    rla
    ldh a, [rNR23]
    jr nc, jr_03C_5E5B

jr_03C_5E44:
    ldh a, [rNR23]
    dec hl
    rla
    ldh a, [rNR23]
    scf
    rla
    ldh a, [rNR23]
    cpl
    rla
    ldh a, [rNR23]
    scf

jr_03C_5E53:
    rla
    ldh a, [rNR23]
    ld sp, $F017
    jr jr_03C_5E88

jr_03C_5E5B:
    rla
    ldh a, [rNR23]
    ld [hl-], a
    rla
    ldh a, [rNR23]
    dec l
    rla
    ldh a, [rNR23]
    inc [hl]
    rla
    ldh a, [rNR23]
    jr z, jr_03C_5E83

    ldh a, [rNR23]
    dec l
    dec bc
    ldh a, [$30]
    dec l
    ld [de], a
    ldh a, [rNR23]
    dec l
    ld [de], a
    ldh a, [rNR23]
    dec l
    dec bc
    ldh a, [$30]
    dec l
    ld [de], a
    ldh a, [rNR23]
    dec l

jr_03C_5E83:
    ld [de], a
    ldh a, [rNR23]
    dec l
    dec bc

jr_03C_5E88:
    ldh a, [rNR23]
    dec l
    dec bc
    ldh a, [rNR23]
    dec l
    dec bc
    ldh a, [rNR23]
    dec l
    dec bc
    ldh a, [rNR23]
    dec l
    dec bc
    ldh a, [rNR23]
    dec l
    rla
    ldh a, [rNR23]
    cpl
    rla
    ldh a, [rNR23]
    ld sp, $F017
    jr @+$34

    dec bc
    ldh a, [$30]
    ld [hl-], a
    rla
    ldh a, [rNR23]
    jr nc, jr_03C_5EC7

    ldh a, [rNR23]
    inc sp
    rla
    ldh a, [rNR23]
    ld [hl-], a
    rla
    ldh a, [rNR23]
    ld sp, $F017
    jr jr_03C_5EEB

    rla
    ldh a, [rNR23]
    dec l
    dec bc
    ldh a, [$30]
    dec l

jr_03C_5EC7:
    ld [de], a
    ldh a, [rNR23]
    dec l
    ld [de], a
    ldh a, [rNR23]
    dec l
    dec bc
    ldh a, [$30]
    dec l
    ld [de], a
    ldh a, [rNR23]
    dec l
    ld [de], a
    ldh a, [rNR23]
    dec l
    dec bc
    ldh a, [rNR23]
    dec l
    ld d, $F0
    jr jr_03C_5F1C

    ld d, $F0
    jr jr_03C_5F14

    ld [de], a
    ldh a, [rNR23]
    dec l

jr_03C_5EEB:
    ld d, $F0
    jr @+$3B

    ld d, $F0
    jr jr_03C_5F20

    dec bc
    ldh a, [$0C]
    cpl
    dec bc
    ldh a, [$0C]
    ld sp, $F00B
    inc c
    dec l
    dec bc
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    cp [hl]
    ld d, c
    dec bc
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc

jr_03C_5F14:
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld a, $16

jr_03C_5F1C:
    ldh a, [rNR23]
    ld b, l
    dec bc

jr_03C_5F20:
    ldh a, [rNR23]
    inc a
    rla
    ldh a, [rNR23]
    dec sp
    ld l, $F0
    jr nc, jr_03C_5F6E

    dec bc
    ldh a, [rNR23]
    dec sp
    rla
    ldh a, [rNR23]
    ld a, [hl-]
    ld l, $F0
    jr nc, jr_03C_5F78

    dec bc
    ldh a, [rNR23]
    add hl, sp
    rla
    ldh a, [rNR23]
    jr c, jr_03C_5F5E

    ldh a, [$2A]
    jr c, @+$07

    ldh a, [rTMA]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    jr c, @+$0D

    ldh a, [$0C]
    add hl, sp
    ld d, $F0
    jr jr_03C_5FA0

    inc d
    ldh a, [rNR23]

jr_03C_5F5E:
    ld a, $0B
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]

jr_03C_5F6E:
    ld b, b
    dec bc
    ldh a, [$0C]
    ld a, $16
    ldh a, [rNR23]
    ld b, l
    dec bc

jr_03C_5F78:
    ldh a, [rNR23]
    inc a
    rla
    ldh a, [rNR23]
    dec sp
    ld l, $F0
    jr nc, jr_03C_5FC6

    dec bc
    ldh a, [rNR23]
    dec sp
    rla
    ldh a, [rNR23]
    ld a, [hl-]
    ld l, $F0
    jr nc, jr_03C_5FD0

    dec bc
    ldh a, [rNR23]
    add hl, sp
    rla
    ldh a, [rNR23]
    jr c, jr_03C_5FB6

    ldh a, [$2A]
    jr c, @+$07

    ldh a, [rTMA]
    add hl, sp
    dec bc

jr_03C_5FA0:
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    jr c, @+$0D

    ldh a, [$0C]
    add hl, sp
    ld d, $F0
    jr jr_03C_5FF8

    inc d
    ldh a, [rNR23]

jr_03C_5FB6:
    ld a, $0B
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]

jr_03C_5FC6:
    ld b, b
    dec bc
    ldh a, [$0C]
    ld a, $16
    ldh a, [rNR23]
    ld b, e
    dec bc

jr_03C_5FD0:
    ldh a, [rNR23]
    ld b, l
    dec bc
    ldh a, [rNR23]
    ld b, [hl]
    ld d, $F0
    jr nc, jr_03C_6020

    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    ld [de], a
    ldh a, [$30]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc

jr_03C_5FF8:
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    ld [de], a
    ldh a, [$2A]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
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
    ld b, l
    dec bc

jr_03C_6020:
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
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
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
    dec a
    dec bc
    ldh a, [$0C]
    ld c, d
    dec bc
    ldh a, [rNR23]
    ld c, d
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
    ld d, $F0
    jr jr_03C_60B0

    dec bc
    ldh a, [rNR23]
    ld c, b
    rla
    ldh a, [rNR23]
    ld b, a
    ld l, $F0
    jr nc, jr_03C_60BA

    dec bc
    ldh a, [rNR23]
    ld b, a
    rla
    ldh a, [rNR23]
    ld b, [hl]
    ld l, $F0
    jr nc, jr_03C_60C4

    dec bc
    ldh a, [rNR23]
    ld b, l
    rla
    ldh a, [rNR23]
    ld b, h
    ld l, $F0
    jr nc, jr_03C_60C8

    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    ld [de], a
    ldh a, [$30]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    ld [de], a
    ldh a, [$2A]
    ld b, h
    dec b
    ldh a, [rTMA]
    ld b, l
    dec bc

jr_03C_60B0:
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]

jr_03C_60BA:
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc

jr_03C_60C4:
    ldh a, [$0C]
    ld b, l
    dec bc

jr_03C_60C8:
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    inc c
    ldh a, [rNR23]
    ld b, l
    rla
    ldh a, [rNR23]
    ld b, a
    rla
    ldh a, [rNR23]
    ld c, c
    ld d, $F0
    jr @+$4C

    dec bc
    ldh a, [rNR23]
    ld c, d
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
    ld d, $F0
    jr jr_03C_6146

    dec bc
    ldh a, [rNR23]
    ld d, c
    dec bc
    ldh a, [rNR23]
    ld d, d
    ld d, $F0
    jr nc, jr_03C_6154

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
    ld [de], a
    ldh a, [$30]
    ld d, c
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
    ld [de], a
    ldh a, [$2A]
    ld d, b
    dec b
    ldh a, [rTMA]
    ld d, c
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

jr_03C_6146:
    ld d, c
    dec bc
    ldh a, [$0C]
    ld d, b
    dec bc
    ldh a, [$0C]
    ld d, c
    rla
    ldh a, [rNR23]
    ld c, a
    rla

jr_03C_6154:
    ldh a, [rNR23]
    ld c, l
    rla
    ldh a, [rNR23]
    ld c, h
    rla
    ldh a, [rP1]
    rst $38
    or $00
    pop bc
    ld d, b
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld a, $12
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
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
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
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
    dec a
    dec bc
    ldh a, [$0C]
    ld b, b
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
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld a, $0B
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
    dec sp
    dec bc
    ldh a, [$0C]
    add hl, sp
    jr @-$0E

    jr nc, jr_03C_621C

    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    jr c, jr_03C_61FB

    ldh a, [$0C]
    add hl, sp
    jr @-$0E

    jr nc, jr_03C_6230

    dec bc
    ldh a, [$0C]
    ld a, [hl-]

jr_03C_61FB:
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    jr c, jr_03C_620F

    ldh a, [$0C]
    add hl, sp
    ld [de], a
    ldh a, [rNR23]
    ld b, b
    rla
    ldh a, [rNR23]
    ld b, l

jr_03C_620F:
    rla
    ldh a, [rNR23]
    ld b, b
    rla
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [rNR23]
    dec a
    dec bc

jr_03C_621C:
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc

jr_03C_6230:
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld a, $12
    ldh a, [rNR23]
    ld a, $0B
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, [hl]
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, e
    dec bc
    ldh a, [$0C]
    ld b, c
    dec bc
    ldh a, [$0C]
    ld b, b
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
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [rNR23]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, h
    dec bc
    ldh a, [$0C]
    ld b, l
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [rNR23]
    ld b, b
    ld d, $F0
    jr jr_03C_62F4

    ld d, $F0
    jr jr_03C_62F3

    ld d, $F0
    jr jr_03C_62F0

    dec bc
    ldh a, [rNR23]
    dec a
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld a, $0B
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [$0C]
    ld b, b
    dec bc
    ldh a, [$0C]
    add hl, sp
    dec bc
    ldh a, [rP1]
    rst $38
    ld a, [hl+]
    inc l
    dec hl
    cpl
    ld a, [hl+]
    inc l
    dec hl
    add hl, hl
    nop
    nop
    jr z, jr_03C_630E

    nop
    dec l
    jr nc, jr_03C_62E3

jr_03C_62E3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03C_62F0:
    nop
    nop
    nop

jr_03C_62F3:
    nop

jr_03C_62F4:
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

jr_03C_630E:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    ld c, $00
    jr jr_03C_6362

jr_03C_6362:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    inc h

jr_03C_6369:
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc h

jr_03C_6373:
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0024
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc h

jr_03C_6387:
    nop
    cp $00
    nop
    nop
    nop
    nop
    ld a, $00
    add d

jr_03C_6391:
    ld bc, $0106
    ld [c], a
    pop af
    add b
    or [hl]
    ld a, c
    add c
    or b

jr_03C_639B:
    di
    nop
    ld [hl], $81
    or b
    di
    nop
    ld [hl], $81
    or b

jr_03C_63A5:
    di
    nop
    ld [hl], $81
    or b
    di
    nop
    ld [hl], $81
    or b

jr_03C_63AF:
    di
    nop
    ld [hl], $81
    or b
    ld a, [c]
    and b
    ld [hl], $81
    or b

jr_03C_63B9:
    ld a, [c]
    ld a, [$8136]
    or b
    di
    nop
    ld [hl], $81
    or b

jr_03C_63C3:
    di
    nop
    ld [hl], $81
    or b
    di
    nop
    ld [hl], $81
    or b

jr_03C_63CD:
    di
    nop
    ld [hl], $81
    or b
    add c
    or b
    ld [hl], $00
    ldh a, [rP1]
    rst $38
    sub b
    nop
    or b
    ld a, [bc]
    add c
    ld a, a
    sub c
    add b
    ld [hl], $81
    ld a, a
    sub c
    add b
    jr nc, jr_03C_6369

    ld a, a
    sub c
    add b
    ld [hl], $81
    ld a, a
    sub c
    add b
    jr nc, jr_03C_6373

    ld a, a
    sub c
    add b
    ld [hl], $81
    ld a, a
    sub c
    add b
    ld [hl-], a
    add c
    ld a, a
    sub c
    add b
    ld [hl], $81
    ld a, a
    sub c
    add b
    jr nc, jr_03C_6387

    ld a, a
    sub c
    add b
    ld [hl], $81
    ld a, a
    sub c
    add b
    jr nc, jr_03C_6391

    ld a, a
    sub c
    add b
    ld [hl], $81
    ld a, a
    sub c
    add b
    jr nc, jr_03C_639B

    ld a, a
    sub c
    add b
    ld [hl], $81
    ld a, a
    sub c
    add b
    jr nc, jr_03C_63A5

    ld a, a
    sub c
    add b
    ld [hl], $81
    ld a, a
    sub c
    add b
    jr nc, jr_03C_63AF

    ld a, a
    sub c
    add b
    ld [hl], $81
    ld a, a
    sub c
    add b
    jr nc, jr_03C_63B9

    ld a, a
    sub c
    add b
    ld [hl], $81
    ld a, a
    sub c
    add b
    jr nc, jr_03C_63C3

    ld a, a
    sub c
    add b
    ld [hl], $81
    ld a, a
    sub c
    add b
    jr nc, jr_03C_63CD

    ld a, a
    add c
    ld a, a
    jr nc, jr_03C_6451

jr_03C_6451:
    sub b
    ld bc, $8136
    ld a, a
    add c
    ld a, a
    ld [hl], $00
    ldh a, [rP1]
    rst $38
    sub b
    nop
    xor e
    ld d, c
    add c
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $9000
    ld bc, $812B
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $9000
    ld bc, $812B
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $9000
    ld bc, $812B
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $9000
    ld bc, $812B
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $9000
    ld bc, $812B
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $9000
    ld bc, $812B
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $9000
    ld bc, $812B
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $9000
    ld bc, $812B
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $9000
    ld bc, $812B
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $9000
    ld bc, $812B
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $9000
    ld bc, $812B
    ld l, b
    add c
    ld a, a
    dec hl
    nop
    sub b
    ld bc, $8131
    ld l, b
    add c
    ld a, a
    ld sp, $F000
    nop
    rst $38
    or b
    nop
    or l
    ld d, c
    dec b
    or b
    ld b, $36
    dec b
    or b
    ld b, $37
    add c
    ld e, e
    or c
    ld e, h
    jr nc, @+$0D

    or b
    inc c
    scf
    dec bc
    or b
    inc c
    ld [hl], $81
    rlca
    or c
    ld [$0B35], sp
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    ld a, [hl-]
    dec bc
    or b
    ld c, b
    dec [hl]
    dec bc
    or b
    inc c
    ld [hl], $0B
    or b
    inc c
    scf
    dec bc
    add b
    ld bc, $0036
    or c
    xor a
    ld b, h
    dec b
    or b
    ld b, $3B
    dec b
    or b
    inc c
    daa
    dec b
    or b
    ld b, $30
    dec b
    or b
    ld b, $38
    dec b
    or b
    ld b, $3D
    dec b
    or b
    ld b, $2E
    dec b
    add b
    rlca
    ld l, $00
    or b
    dec b
    ld a, [hl-]
    dec b
    or b
    inc c
    scf
    dec b
    or c
    sub d
    ld b, d
    dec b
    or b
    inc c
    ccf
    dec b
    or b
    ld b, $39
    dec b
    or b
    ld b, $2A
    dec b
    or b
    ld b, $31
    dec b
    or b
    ld b, $35
    dec b
    or b
    ld b, $3A
    dec b
    or b
    inc c
    inc sp
    dec b
    or b
    ld b, $38
    dec b
    add b
    nop
    inc sp
    nop
    or b
    ret nz

    ld b, b
    add b
    adc a
    or b
    sub b
    dec a
    rla
    add b
    ld [bc], a
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    or b
    ld d, $41
    rla
    or b
    jr @+$42

    ld [hl], a
    or b
    ld a, b
    dec a
    rla
    or b
    jr jr_03C_6621

    rla
    or b
    jr jr_03C_6624

    cpl
    or b
    jr nc, jr_03C_6625

    rla
    or b
    jr jr_03C_662D

    rla
    or b
    jr jr_03C_6630

    cpl
    or b
    jr nc, @+$41

    cpl
    or b
    jr nc, jr_03C_6636

    cpl
    or b
    jr nc, jr_03C_6638

    cpl
    or b
    jr nc, @+$3D

    rla
    or b
    jr @+$3E

    ld e, a
    or d
    jr z, jr_03C_664C

    dec b
    or b
    ld b, $27
    dec b
    or b
    inc c
    jr nc, jr_03C_6616

    or b
    ld b, $37
    dec b
    add b

jr_03C_6616:
    ld bc, $0030
    or b
    dec b
    ld a, [hl-]
    dec b
    or b
    ld b, $2E
    dec b

jr_03C_6621:
    or b
    ld b, $38

jr_03C_6624:
    dec b

jr_03C_6625:
    or c
    ld d, b
    ld b, d
    dec b
    or b
    ld b, $3D
    dec b

jr_03C_662D:
    or b
    ld b, $3A

jr_03C_6630:
    dec b
    or b
    ld b, $2A
    dec b
    or b

jr_03C_6636:
    ld b, $37

jr_03C_6638:
    dec b
    or b
    ld b, $31
    dec b
    add b
    ld bc, $002A
    or b
    dec b
    dec [hl]
    dec b
    or b
    inc c
    ld a, [hl-]
    dec b
    or b
    ld b, $2E

jr_03C_664C:
    dec b
    or b
    ld b, $38
    dec b
    or b
    ld b, $2C
    dec b
    or b
    ld b, $37
    dec b
    or b
    ld [$0535], a
    or b
    ld b, $36
    dec b
    or b
    ld b, $37
    add c
    rlca
    or c
    ld [$0B30], sp
    or b
    inc c
    scf
    dec bc
    or b
    inc c
    ld [hl], $81
    rlca
    or c
    ld [$0B35], sp
    or b
    inc c
    ld [hl], $0B
    or b
    ld b, $3A
    dec bc
    add b
    inc c
    ld a, [hl-]
    nop
    or b
    and d
    dec [hl]
    dec b
    or b
    ld b, $36
    dec b
    or b
    inc c
    scf
    dec b
    add b
    ld c, $37
    nop
    or d
    ld a, [de]
    ld b, h
    dec b
    or b
    ld b, $3F
    dec b
    or b
    ld b, $3B
    dec b
    or b
    ld b, $2A
    dec b
    or b
    ld b, $32
    dec b
    add b
    rlca
    ld [hl-], a
    nop
    or b
    dec b
    dec [hl]
    dec b
    or b
    ld b, $3A
    dec b
    or b
    ld b, $2E
    dec b
    or b
    ld b, $38
    dec b
    or b
    sbc $44
    dec b
    or b
    ld b, $3F
    dec b
    or b
    ld b, $3B
    dec b
    or b
    ld b, $27
    dec b
    or b
    ld b, $2E
    dec b
    or b
    inc c
    ld sp, $B005
    ld b, $3A
    dec b
    or b
    ld b, $35
    dec b
    or b
    ld b, $2C
    dec b
    or b
    ld b, $38
    dec b
    or b
    xor [hl]
    ld b, b
    add b
    rst $10
    or b
    ret c

    dec a
    rla
    or b
    jr jr_03C_6730

    rla
    or b
    jr jr_03C_6733

    ld [hl], a
    add b
    ld [hl], a
    ld b, b
    nop
    or b
    ld bc, $173D
    or b
    jr jr_03C_6740

    rla
    or b
    jr jr_03C_6743

    cpl
    or b
    jr nc, jr_03C_6744

    cpl
    or b
    jr nc, jr_03C_674C

    cpl
    or b
    jr nc, jr_03C_674F

    cpl
    or b
    jr nc, jr_03C_674F

    cpl
    or b
    jr nc, jr_03C_6756

    cpl
    or b
    jr nc, jr_03C_6759

    cpl
    or b
    jr nc, jr_03C_675B

    cpl
    or b
    jr nc, @+$3D

    rla
    or b
    jr jr_03C_6763

    cpl
    add b
    cpl
    inc a
    nop
    add b
    ld [$003C], sp

jr_03C_6730:
    or c
    pop bc
    ld b, d

jr_03C_6733:
    dec b
    or b
    ld b, $3A
    dec b
    or b
    ld b, $3D
    dec b
    or b
    ld b, $27
    dec b

jr_03C_6740:
    or b
    ld b, $37

jr_03C_6743:
    dec b

jr_03C_6744:
    or b
    ld b, $2C
    dec b
    or b
    ld b, $31
    dec b

jr_03C_674C:
    or b
    ld b, $35

jr_03C_674F:
    dec b
    or b
    ld b, $3A
    dec b
    or b
    db $FC

jr_03C_6756:
    ld c, e
    dec b
    or b

jr_03C_6759:
    ld b, $44

jr_03C_675B:
    dec b
    or b
    ld b, $27
    dec b
    or b
    ld b, $40

jr_03C_6763:
    dec b
    or b
    ld b, $2C
    dec b
    or b
    ld b, $32
    dec b
    or b
    ld b, $39
    dec b
    or b
    ld b, $3F
    dec b
    or b
    inc c
    ld a, [hl-]
    dec b
    or b
    ld b, $31
    dec b
    or b
    ld b, $30
    dec b
    or b
    inc c
    cpl
    dec b
    or c
    ld a, [de]
    dec [hl]
    dec b
    or b
    ld b, $36
    dec b
    or b
    ld b, $37
    add c
    ld h, a
    add c
    ld h, a
    scf
    nop
    or b
    ld bc, $0B30
    or b
    inc c
    scf
    dec bc
    or b
    inc c
    ld [hl], $0B
    add b
    inc b
    scf
    nop
    or c
    halt
    ld b, h
    dec b
    or b
    ld b, $3F
    dec b
    add b
    ld [bc], a
    ld b, h
    nop
    or b
    inc b
    daa
    dec b
    or b
    ld b, $3B
    dec b
    or b
    ld b, $33
    dec b
    or b
    ld b, $3A
    dec b
    or b
    ld b, $3F
    dec b
    or c
    jr c, jr_03C_67FB

    dec b
    or b
    ld b, $2C
    dec b
    or b
    ld b, $37
    dec b
    or b
    ld b, $3A
    dec b
    or b
    ld b, $3F
    dec b
    or b
    inc c
    ld b, d
    dec b
    or b
    ld b, $43
    dec b
    or b
    ld b, $41
    dec b
    or b
    db $E4
    ld b, e
    dec b
    or b
    ld b, $3E
    dec b
    or b
    ld b, $3B
    dec b
    or b
    ld b, $2B
    dec b
    or b
    ld b, $32
    dec b
    or b
    inc c

jr_03C_67FB:
    ccf
    dec b
    or b
    ld b, $37
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
    jr z, jr_03C_683F

    nop
    dec l
    jr nc, jr_03C_6814

jr_03C_6814:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_03C_683F:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec [hl]
    nop
    and b
    nop
    ld c, $00
    dec de
    nop
    jr z, jr_03C_6895

jr_03C_6895:
    nop
    nop
    nop
    dec b
    ld b, $00
    inc b
    add hl, bc
    ret nz

    cp $00
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    ld b, $00
    ld [bc], a
    add hl, bc
    ret nz

    cp $00
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0006
    nop
    add hl, bc
    ret nz

    cp $00
    inc bc
    nop
    nop
    nop
    ld b, c
    nop
    jp nc, $1C01

    ld bc, $01B9
    call nc, Call_03C_7703
    ldh a, [rP1]
    inc [hl]
    add b
    cp [hl]
    ldh a, [$A8]
    inc [hl]
    ld d, $F0
    jr jr_03C_6907

    add b
    cp [hl]
    ldh a, [$A8]
    ld [hl-], a
    ld d, $F0
    jr jr_03C_690E

    add b
    cp [hl]
    ldh a, [$A8]
    jr nc, @+$18

    ldh a, [rNR23]
    ld [hl-], a
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a
    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    ld l, $F0
    jr nc, jr_03C_6929

    ld l, $F0
    jr nc, jr_03C_692B

    ld b, [hl]
    ldh a, [rOBP0]
    jr nc, jr_03C_6916

    ldh a, [rNR23]
    dec hl
    ld b, [hl]
    ldh a, [rOBP0]
    dec hl

jr_03C_6907:
    ld d, $F0
    jr jr_03C_6938

    ld b, [hl]
    ldh a, [rOBP0]

jr_03C_690E:
    dec l
    ld d, $F0
    jr jr_03C_6947

    ld b, [hl]
    ldh a, [rOBP0]

jr_03C_6916:
    inc [hl]
    ld d, $F0
    jr @+$2F

    ld b, [hl]
    ldh a, [rOBP0]
    dec l
    ld d, $F0
    jr jr_03C_6957

    ld b, [hl]
    ldh a, [rOBP0]
    inc [hl]
    ld d, $F0

jr_03C_6929:
    jr @+$32

jr_03C_692B:
    ld b, [hl]
    ldh a, [rOBP0]
    jr nc, @+$18

    ldh a, [rNR23]
    cpl
    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    add b

jr_03C_6938:
    cp [hl]
    ldh a, [$A8]
    inc [hl]
    ld d, $F0
    jr jr_03C_6972

    add b
    cp [hl]
    ldh a, [$A8]
    ld [hl-], a
    ld d, $F0

jr_03C_6947:
    jr jr_03C_6979

    add b
    cp [hl]
    ldh a, [$A8]
    jr nc, jr_03C_6965

    ldh a, [rNR23]
    ld [hl-], a
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a
    ld e, [hl]

jr_03C_6957:
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    or h
    ld h, $80
    cp [hl]
    ldh a, [$A8]
    inc [hl]
    ld d, $F0

jr_03C_6965:
    jr jr_03C_6999

    add b
    cp [hl]
    ldh a, [$A8]
    ld [hl-], a
    ld d, $F0
    jr jr_03C_69A0

    add b
    cp [hl]

jr_03C_6972:
    ldh a, [$A8]
    jr nc, jr_03C_698C

    ldh a, [rNR23]
    ld [hl-], a

jr_03C_6979:
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a
    ld e, [hl]
    ldh a, [$60]
    inc [hl]
    add b
    cp [hl]
    ldh a, [$A8]
    inc [hl]
    ld d, $F0
    jr @+$34

    add b
    cp [hl]

jr_03C_698C:
    ldh a, [$A8]
    ld [hl-], a
    ld d, $F0
    jr @+$32

    add b
    cp [hl]
    ldh a, [$A8]
    jr nc, @+$18

jr_03C_6999:
    ldh a, [rNR23]
    ld [hl-], a
    ld e, [hl]
    ldh a, [$60]
    ld [hl-], a

jr_03C_69A0:
    ld e, [hl]
    ldh a, [rP1]
    rst $38
    ldh a, [rP1]
    ld b, b
    add b
    cp [hl]
    ldh a, [$C0]
    ld b, a
    add b
    cp [hl]
    ldh a, [$C0]
    ld c, b
    add b
    cp [hl]
    ldh a, [$C0]
    ld b, d
    ld e, [hl]
    ldh a, [$60]
    ld a, $5E
    ldh a, [$60]
    ld b, b
    ld e, [hl]
    ldh a, [$60]
    ld b, b
    ld d, $F0
    jr jr_03C_6A08

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr @+$47

    ld d, $F0
    jr @+$49

    ld l, $F0
    jr nc, jr_03C_6A22

    ld l, $F0
    jr nc, jr_03C_6A28

    ld l, $F0
    jr nc, jr_03C_6A28

    ld l, $F0
    jr nc, jr_03C_6A22

    ld d, $F0
    jr jr_03C_6A28

    ld d, $F0
    jr @+$45

    ld d, $F0
    jr jr_03C_6A33

    ld d, $F0
    jr jr_03C_6A39

    ld l, $F0
    jr nc, jr_03C_6A42

    ld l, $F0
    jr nc, jr_03C_6A3A

    ld d, $F0
    jr jr_03C_6A40

    ld d, $F0
    jr jr_03C_6A45

    ld d, $F0
    jr jr_03C_6A4B

    ld d, $F0

jr_03C_6A08:
    jr jr_03C_6A51

    ld l, $F0
    jr nc, @+$4E

    ld l, $F0
    jr nc, @+$42

    ld d, $F0
    jr @+$44

    ld d, $F0
    jr jr_03C_6A5D

    ld d, $F0
    jr jr_03C_6A63

    ld d, $F0
    jr jr_03C_6A69

jr_03C_6A22:
    ld l, $F0
    jr nc, @+$50

    ld l, $F0

jr_03C_6A28:
    jr nc, @+$42

    add b
    cp [hl]
    ldh a, [$C0]
    ld b, a
    add b
    cp [hl]
    ldh a, [$C0]

jr_03C_6A33:
    ld c, b
    add b
    cp [hl]
    ldh a, [$C0]
    ld b, d

jr_03C_6A39:
    ld e, [hl]

jr_03C_6A3A:
    ldh a, [$60]
    ld a, $5E
    ldh a, [rP1]

jr_03C_6A40:
    rst $38
    di

jr_03C_6A42:
    nop
    ret nz

    ld d, c

jr_03C_6A45:
    add b
    cp [hl]
    ldh a, [$C0]
    ld b, a
    add b

jr_03C_6A4B:
    cp [hl]
    ldh a, [$C0]
    ld c, b
    add b
    cp [hl]

jr_03C_6A51:
    ldh a, [$C0]
    ld b, d
    ld e, [hl]
    ldh a, [$60]
    ld a, $5E
    ldh a, [rP1]
    rst $38
    or b

jr_03C_6A5D:
    nop
    ld c, a
    ld d, $B0
    jr @+$53

jr_03C_6A63:
    ld d, $B0
    jr jr_03C_6AB5

    ld d, $B0

jr_03C_6A69:
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0
    jr jr_03C_6AC5

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0
    jr jr_03C_6AD5

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0
    jr jr_03C_6AE5

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0
    jr jr_03C_6AF5

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6AB5:
    jr jr_03C_6B05

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6AC5:
    jr jr_03C_6B15

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6AD5:
    jr jr_03C_6B25

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6AE5:
    jr jr_03C_6B35

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6AF5:
    jr jr_03C_6B45

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr jr_03C_6B47

    ld d, $B0
    jr jr_03C_6B4F

    ld d, $B0

jr_03C_6B05:
    jr @+$53

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr jr_03C_6B5B

    ld d, $B0
    jr @+$49

    ld d, $B0

jr_03C_6B15:
    jr @+$45

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$47

    ld d, $B0
    jr jr_03C_6B6B

    ld d, $B0

jr_03C_6B25:
    jr @+$53

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr jr_03C_6B7B

    ld d, $B0
    jr @+$49

    ld d, $B0

jr_03C_6B35:
    jr @+$45

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$47

    ld d, $B0
    jr jr_03C_6B8B

    ld d, $B0

jr_03C_6B45:
    jr @+$53

jr_03C_6B47:
    ld d, $B0
    jr @+$51

    ld d, $B0
    jr jr_03C_6B9B

jr_03C_6B4F:
    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$45

    ld d, $B0
    jr @+$49

jr_03C_6B5B:
    ld d, $B0
    jr @+$47

    ld d, $B0
    jr jr_03C_6BAB

    ld d, $B0
    jr @+$53

    ld d, $B0
    jr @+$51

jr_03C_6B6B:
    ld d, $B0
    jr jr_03C_6BBD

    ld d, $B0
    jr @+$4D

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$4D

jr_03C_6B7B:
    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0
    jr jr_03C_6BD5

    ld d, $B0
    jr @+$49

jr_03C_6B8B:
    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0
    jr jr_03C_6BE5

    ld d, $B0
    jr @+$49

jr_03C_6B9B:
    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0
    jr jr_03C_6BF5

    ld d, $B0
    jr @+$49

jr_03C_6BAB:
    ld d, $B0
    jr jr_03C_6BFE

    ld d, $B0
    jr @+$53

    ld d, $B0
    jr jr_03C_6C05

    ld d, $B0
    jr jr_03C_6C02

    ld d, $B0

jr_03C_6BBD:
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0
    jr jr_03C_6C15

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6BD5:
    jr jr_03C_6C25

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6BE5:
    jr jr_03C_6C35

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6BF5:
    jr jr_03C_6C45

    ld d, $B0
    jr @+$49

    ld d, $F0
    nop

jr_03C_6BFE:
    rst $38
    or b
    nop
    rst $08

jr_03C_6C02:
    ld d, b
    ld d, $B0

jr_03C_6C05:
    jr @+$53

    ld d, $B0
    jr jr_03C_6C59

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0

jr_03C_6C15:
    jr @+$53

    ld d, $B0
    jr jr_03C_6C69

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0

jr_03C_6C25:
    jr @+$53

    ld d, $B0
    jr jr_03C_6C79

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0

jr_03C_6C35:
    jr @+$53

    ld d, $B0
    jr jr_03C_6C89

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0

jr_03C_6C45:
    jr @+$53

    ld d, $B0
    jr jr_03C_6C99

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6C59:
    jr jr_03C_6CA9

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6C69:
    jr jr_03C_6CB9

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6C79:
    jr jr_03C_6CC9

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6C89:
    jr jr_03C_6CD9

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6C99:
    jr jr_03C_6CE9

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr @+$53

    ld d, $B0

jr_03C_6CA9:
    jr jr_03C_6CF9

    ld d, $B0
    jr @+$49

    ld d, $B0
    jr jr_03C_6D02

    ld d, $B0
    jr jr_03C_6D08

    ld d, $B0

jr_03C_6CB9:
    jr jr_03C_6D09

    ld d, $B0
    jr jr_03C_6D06

    ld d, $B0
    jr @+$51

    ld d, $B0
    jr jr_03C_6D18

    ld d, $B0

jr_03C_6CC9:
    jr jr_03C_6D19

    ld d, $B0
    jr jr_03C_6D16

    ld d, $B0
    jr jr_03C_6D22

    ld d, $B0
    jr jr_03C_6D28

    ld d, $B0

jr_03C_6CD9:
    jr jr_03C_6D29

    ld d, $B0
    jr jr_03C_6D26

    ld d, $B0
    jr jr_03C_6D32

    ld d, $B0
    jr jr_03C_6D38

    ld d, $B0

jr_03C_6CE9:
    jr jr_03C_6D39

    ld d, $B0
    jr jr_03C_6D36

    ld d, $B0
    jr jr_03C_6D42

    ld d, $B0
    jr jr_03C_6D48

    ld d, $B0

jr_03C_6CF9:
    jr jr_03C_6D49

    ld d, $B0
    jr jr_03C_6D46

    ld d, $F0
    nop

jr_03C_6D02:
    rst $38
    ld a, [hl+]
    inc l
    dec hl

jr_03C_6D06:
    add hl, hl
    ld a, [hl+]

jr_03C_6D08:
    inc l

jr_03C_6D09:
    dec hl
    add hl, hl
    nop
    nop
    jr z, jr_03C_6D3E

    nop
    dec l
    jr nc, jr_03C_6D13

jr_03C_6D13:
    nop
    nop
    nop

jr_03C_6D16:
    nop
    nop

jr_03C_6D18:
    nop

jr_03C_6D19:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03C_6D22:
    nop
    nop
    nop
    nop

jr_03C_6D26:
    nop
    nop

jr_03C_6D28:
    nop

jr_03C_6D29:
    nop
    nop
    nop
    nop
    dec hl
    dec hl
    nop
    nop
    nop

jr_03C_6D32:
    nop
    nop
    nop
    nop

jr_03C_6D36:
    nop
    nop

jr_03C_6D38:
    nop

jr_03C_6D39:
    nop
    nop
    nop
    nop
    nop

jr_03C_6D3E:
    nop
    nop
    nop
    nop

jr_03C_6D42:
    nop
    nop
    nop
    nop

jr_03C_6D46:
    nop
    nop

jr_03C_6D48:
    nop

jr_03C_6D49:
    nop
    nop
    nop
    nop
    nop
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
    jr jr_03C_6D92

jr_03C_6D92:
    ld [hl+], a
    nop
    inc l
    nop
    nop
    inc bc
    inc bc
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0003
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    cp $00
    nop
    nop
    nop
    nop
    ld a, $00
    sub d
    nop
    sub $01
    ld b, [hl]
    or b
    nop
    xor h
    inc bc
    inc c
    or b
    jr nc, jr_03C_6DF9

    inc c
    or b
    jr nc, jr_03C_6DFD

    inc c
    or b
    jr nc, jr_03C_6E01

    inc c
    or b
    jr jr_03C_6E05

    inc c
    or b
    jr jr_03C_6E09

    inc c
    or b
    jr nc, jr_03C_6E0D

    inc c
    or b
    jr nc, jr_03C_6E11

    inc c
    or b
    jr nc, jr_03C_6E15

    inc c
    or b
    jr jr_03C_6E19

    inc c
    or b
    jr jr_03C_6E1D

    inc c
    or b
    jr nc, jr_03C_6E21

    inc c
    or b
    jr nc, jr_03C_6E25

jr_03C_6DF9:
    inc c
    or b
    jr nc, jr_03C_6E29

jr_03C_6DFD:
    inc c
    or b
    jr jr_03C_6E2D

jr_03C_6E01:
    inc c
    or b
    jr jr_03C_6E31

jr_03C_6E05:
    inc c
    or b
    jr nc, jr_03C_6E35

jr_03C_6E09:
    inc c
    or b
    jr nc, jr_03C_6E39

jr_03C_6E0D:
    inc c
    or b
    jr nc, jr_03C_6E3D

jr_03C_6E11:
    inc c
    or b
    jr jr_03C_6E41

jr_03C_6E15:
    inc c
    ldh a, [rP1]
    rst $38

jr_03C_6E19:
    ldh a, [rP1]
    cp c
    daa

jr_03C_6E1D:
    cpl
    ldh a, [$30]
    inc a

jr_03C_6E21:
    cpl
    ldh a, [$30]
    add hl, sp

jr_03C_6E25:
    cpl
    ldh a, [$30]
    scf

jr_03C_6E29:
    cpl
    ldh a, [$30]
    add hl, sp

jr_03C_6E2D:
    cpl
    ldh a, [$30]
    inc a

jr_03C_6E31:
    cpl
    ldh a, [$30]
    add hl, sp

jr_03C_6E35:
    cpl
    ldh a, [$30]
    scf

jr_03C_6E39:
    cpl
    ldh a, [$30]
    add hl, sp

jr_03C_6E3D:
    cpl
    ldh a, [$30]
    inc a

jr_03C_6E41:
    cpl
    ldh a, [$30]
    add hl, sp
    cpl
    ldh a, [$30]
    scf
    cpl
    ldh a, [$30]
    add hl, sp
    cpl
    ldh a, [$30]
    inc a
    cpl
    ldh a, [$30]
    add hl, sp
    cpl
    ldh a, [$30]
    scf
    cpl
    ldh a, [rP1]
    rst $38
    sub b
    nop
    jp z, $0B51

    sub b
    inc c
    ld c, h
    dec bc
    sub b
    inc c
    ld c, d
    dec bc
    sub b
    inc c
    ld c, h
    dec bc
    sub b
    inc c
    ld c, d
    ld b, a
    sub b
    ld c, b
    ld c, b
    rla
    sub b
    jr jr_03C_6EBE

    rla
    sub b
    jr jr_03C_6EC5

    rla
    sub b
    jr @+$4C

    cpl
    sub b
    jr nc, jr_03C_6ED3

    rla
    sub b
    jr jr_03C_6ED5

    rla
    sub b
    jr jr_03C_6ED7

    cpl
    sub b
    jr nc, jr_03C_6ED9

    cpl
    sub b
    jr nc, jr_03C_6EDF

    dec bc
    sub b
    inc c
    ld c, h
    dec bc
    sub b
    inc c
    ld c, d
    dec bc
    sub b
    inc c
    ld c, h
    dec bc
    sub b
    inc c
    ld c, d
    ld b, a
    sub b
    ld b, a
    ld c, d
    nop
    sub b
    ld bc, $1748
    sub b
    jr jr_03C_6EF6

    rla
    sub b
    jr jr_03C_6EFD

    rla
    sub b
    jr jr_03C_6F03

    cpl
    sub b
    jr nc, jr_03C_6F0B

    rla

jr_03C_6EBE:
    sub b
    jr jr_03C_6F0D

    rla
    sub b
    jr jr_03C_6F0F

jr_03C_6EC5:
    cpl
    sub b
    jr nc, jr_03C_6F11

    cpl
    ldh a, [rP1]
    rst $38
    ld d, b
    nop
    ret c

    ld d, b
    dec bc
    ld d, b

jr_03C_6ED3:
    inc c
    ld e, b

jr_03C_6ED5:
    dec bc
    ld d, b

jr_03C_6ED7:
    inc c
    ld d, c

jr_03C_6ED9:
    dec bc
    ld d, b
    inc c
    ld d, c
    dec bc
    ld d, b

jr_03C_6EDF:
    inc c
    ld d, e
    dec bc
    ld d, b
    inc c
    ld d, e
    dec bc
    ld d, b
    inc c
    ld c, h
    dec bc
    ld d, b
    inc c
    ld c, h
    dec bc
    ld d, b
    inc c
    ld e, b
    dec bc
    ld d, b
    inc c
    ld e, b
    dec bc

jr_03C_6EF6:
    ld d, b
    inc c
    ld d, c
    dec bc
    ld d, b
    inc c
    ld d, c

jr_03C_6EFD:
    dec bc
    ld d, b
    inc c
    ld d, e
    dec bc
    ld d, b

jr_03C_6F03:
    inc c
    ld d, e
    dec bc
    ld d, b
    inc c
    ld c, h
    dec bc
    ld d, b

jr_03C_6F0B:
    inc c
    ld c, h

jr_03C_6F0D:
    dec bc
    ld d, b

jr_03C_6F0F:
    inc c
    ld e, b

jr_03C_6F11:
    dec bc
    ld d, b
    inc c
    ld e, b
    dec bc
    ld d, b
    inc c
    ld d, c
    dec bc
    ld d, b
    inc c
    ld d, c
    dec bc
    ld d, b
    inc c
    ld d, e
    dec bc
    ld d, b
    inc c
    ld d, e
    dec bc
    ld d, b
    inc c
    ld c, h
    dec bc
    ld d, b
    inc c
    ld c, h
    dec bc
    ld d, b
    inc c
    ld e, b
    dec bc
    ld d, b
    inc c
    ld e, b
    dec bc
    ld d, b
    inc c
    ld d, c
    dec bc
    ld d, b
    inc c
    ld d, c
    dec bc
    ld d, b
    inc c
    ld d, e
    dec bc
    ld d, b
    inc c
    ld d, e
    dec bc
    ld d, b
    inc c
    ld c, h
    dec bc
    ld d, b
    inc c
    ld c, h
    dec bc
    ld b, b
    inc c
    ld e, b
    dec bc
    ld b, b
    inc c
    ld e, b
    dec bc
    ld b, b
    inc c
    ld d, c
    dec bc
    ld b, b
    inc c
    ld d, c
    dec bc
    ld b, b
    inc c
    ld d, e
    dec bc
    ld b, b
    inc c
    ld d, e
    dec bc
    ld b, b
    inc c
    ld c, h
    dec bc
    ld b, b
    inc c
    ld c, h
    dec bc
    ld b, b
    inc c
    ld e, b
    dec bc
    ld b, b
    inc c
    ld e, b
    dec bc
    ld b, b
    inc c
    ld d, c
    dec bc
    ld b, b
    inc c
    ld d, c
    dec bc
    ld b, b
    inc c
    ld d, e
    dec bc
    ld b, b
    inc c
    ld d, e
    dec bc
    ld b, b
    inc c
    ld c, h
    dec bc
    ld b, b
    inc c
    ld c, h
    dec bc
    ld b, b
    inc c
    ld e, b
    dec bc
    ld b, b
    inc c
    ld e, b
    dec bc
    ld b, b
    inc c
    ld d, c
    dec bc
    ld b, b
    inc c
    ld d, c
    dec bc
    ld b, b
    inc c
    ld d, e
    dec bc
    ld b, b
    inc c
    ld d, e
    dec bc
    ld b, b
    inc c
    ld c, h
    dec bc
    ld b, b
    inc c
    ld c, h
    dec bc
    ld b, b
    inc c
    ld e, b
    dec bc
    ld b, b
    inc c
    ld e, b
    dec bc
    ld b, b
    inc c
    ld d, c
    dec bc
    ld b, b
    inc c
    ld d, c
    dec bc
    ld b, b
    inc c
    ld d, e
    dec bc
    ld b, b
    inc c
    ld d, e
    dec bc
    ld b, b
    inc c
    ld c, h
    dec bc
    ld b, b
    inc c
    ld c, h
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
    jr z, jr_03C_6FDD

jr_03C_6FDD:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_03C_7060

jr_03C_7060:
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
    add e
    nop
    call c, $30F0
    cp [hl]
    daa
    ld b, [hl]
    ldh a, [rOBP0]
    ld a, $16
    ldh a, [rNR23]
    dec a
    ld b, [hl]
    ldh a, [rOBP0]
    dec a
    ld d, $F0
    jr jr_03C_70D7

    ld b, [hl]
    ldh a, [rOBP0]
    inc a
    ld d, $F0
    jr jr_03C_70DE

    ld l, $F0
    jr nc, jr_03C_70E2

    ld l, $F0
    jr nc, @+$3C

    ld d, $F0
    jr jr_03C_70E9

    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    ld d, $F0
    jr @+$3C

    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    dec bc
    ldh a, [$0C]
    ld a, [hl-]
    inc c
    ldh a, [rNR23]
    ld a, [hl-]
    inc hl
    ldh a, [rNR50]
    ld a, [hl-]
    jr z, @-$0E

    ld a, [hl+]
    ld a, [hl-]
    ld b, d
    ldh a, [rSCY]
    ld a, $81
    ld b, $F0

jr_03C_70D6:
    nop

jr_03C_70D7:
    rst $38
    or b
    nop
    jp nz, $1651

    or b

jr_03C_70DE:
    jr jr_03C_7123

    ld d, $B0

jr_03C_70E2:
    jr jr_03C_7129

    ld l, $B0
    jr nc, jr_03C_7132

    ld e, [hl]

jr_03C_70E9:
    or b
    ld h, b
    ld b, l
    ld d, $B0
    jr @+$4C

    ld d, $B0
    jr jr_03C_7140

    ld l, $B0

jr_03C_70F6:
    jr nc, jr_03C_7149

    ld l, $B0
    jr nc, @+$50

    ld l, $B0
    jr nc, @+$4C

    ld l, $B0
    jr nc, jr_03C_7150

    ld d, $B0
    jr jr_03C_7154

    ld [$0CB0], sp
    ld c, h
    ld [$0CC0], sp
    ld c, a
    ld d, $C0
    jr jr_03C_7163

    ld [$0CC0], sp
    ld c, a
    ld [$0CD0], sp
    ld d, d
    ld d, $D0
    jr @+$54

    inc hl
    or b
    inc h

jr_03C_7123:
    ld c, [hl]
    jr z, jr_03C_70D6

    ld a, [hl+]
    ld c, h
    ld b, b

jr_03C_7129:
    or b
    ld b, d
    ld c, [hl]
    add c
    ld b, $F0
    nop
    rst $38
    ret nc

jr_03C_7132:
    jr nc, jr_03C_70F6

    ld d, b
    ld b, $D0
    inc c
    ld b, l
    ld b, $D0
    inc c
    ld c, d
    ld b, $D0
    inc c

jr_03C_7140:
    ld c, [hl]
    ld b, $D0
    inc c
    ld b, d
    ld b, $D0
    inc c
    ld b, l

jr_03C_7149:
    ld b, $D0
    inc c
    ld c, d
    ld b, $D0
    inc c

jr_03C_7150:
    ld c, [hl]
    ld b, $D0
    inc c

jr_03C_7154:
    ld b, b
    ld b, $D0
    inc c
    ld b, l
    ld b, $D0
    inc c
    ld c, c
    ld b, $D0
    inc c
    ld c, h
    ld b, $D0

jr_03C_7163:
    inc c
    ld b, b
    ld b, $D0
    inc c
    ld b, l
    ld b, $D0
    inc c
    ld c, c
    ld b, $D0
    inc c
    ld c, h
    ld b, $D0
    inc c
    ld b, b
    ld b, $D0
    inc c
    ld b, e
    ld b, $D0
    inc c
    ld c, b
    ld b, $D0
    inc c
    ld c, h
    ld b, $D0
    inc c
    ld b, b
    ld b, $D0
    inc c
    ld b, e
    ld b, $D0
    inc c
    ld c, b
    ld b, $D0
    inc c
    ld c, h
    ld b, $D0
    inc c
    ld b, d
    ld b, $D0
    inc c
    ld b, a
    ld b, $D0
    inc c
    ld c, e
    ld b, $D0
    inc c
    ld c, [hl]
    ld b, $D0
    inc c
    ld b, d
    ld b, $D0
    inc c
    ld b, a
    ld b, $D0
    inc c
    ld c, e
    ld b, $D0
    inc c
    ld c, [hl]
    ld b, $D0
    inc c
    ld b, b
    ld b, $D0
    inc c
    ld b, e
    ld b, $D0
    inc c
    ld b, [hl]
    ld b, $D0
    inc c
    ld c, d
    ld b, $D0
    inc c
    ld b, b
    ld b, $D0
    inc c
    ld b, e
    ld b, $D0
    inc c
    ld b, [hl]
    ld b, $D0
    inc c
    ld c, d
    ld b, $D0
    inc c
    ld b, b
    ld b, $D0
    inc c
    ld b, e
    ld b, $D0
    inc c
    ld b, [hl]
    ld b, $D0
    ld [de], a
    ld c, d
    ld b, $D0
    inc c
    ld b, b
    ld b, $D0
    ld [de], a
    ld b, e
    ld b, $D0
    ld [de], a
    ld b, [hl]
    ld b, $D0
    ld [de], a
    ld b, b
    ld b, $A0
    inc a
    ld a, $06
    and b
    ld b, $40
    ld b, $A0
    ld b, $3E
    ld b, $A0
    ld b, $40
    ld b, $A0
    ld b, $3E
    ld b, $90
    ld b, $40
    ld b, $90
    ld b, $3E
    ld b, $90
    ld b, $40
    ld b, $90
    ld b, $3E
    ld b, $90
    ld b, $40
    ld b, $90
    ld b, $3E
    ld b, $90
    ld b, $40
    ld b, $80
    ld b, $3E
    ld b, $80
    ld b, $40
    ld b, $80
    ld b, $3E
    ld b, $80
    ld b, $40
    ld b, $80
    ld b, $3E
    ld b, $80
    ld b, $40
    ld b, $80
    ld b, $3E
    ld b, $70
    ld b, $40
    ld b, $70
    ld b, $3E
    ld b, $70
    ld b, $40
    ld b, $70
    ld b, $3E
    ld b, $70
    ld b, $40
    ld b, $70
    ld b, $3E
    ld b, $70
    ld b, $40
    ld b, $70
    ld b, $3E
    ld b, $60
    ld b, $40
    ld b, $60
    ld b, $3E
    ld b, $60
    ld b, $40
    ld b, $60
    ld b, $3E
    ld b, $60
    ld b, $40
    ld b, $60
    ld b, $3E
    ld b, $60
    ld b, $40
    ld b, $50
    ld b, $3E
    ld b, $50
    ld b, $40
    ld b, $50
    ld b, $3E
    ld l, $F0
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_03C_7703:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
