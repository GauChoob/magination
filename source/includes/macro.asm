; General purpose macros to organize code

MACRO AddressBank
    IF _NARG == 1
        dw \1
        db BANK(\1)
    ELSE
        dw \1
        db \2
    ENDC
ENDM

MACRO BankAddress
    IF _NARG == 1
        db BANK(\1)
        dw \1
    ELSE
        db \1
        dw \2
    ENDC
ENDM

MACRO Dec16Loop
    ; Decrease a 16-bit register, and jumps to label if non-zero
    ; \1 = Target r16
    ; \2 = jump label
    dec \1
    ld a, LOW(\1)
    or HIGH(\1)
    jr nz, \2
ENDM

MACRO DecHL16
    ; Decreases the (16-bit) value of [hl]
    ; de is modified
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    ld a, d
    ld [hl-], a
    ld [hl], e
ENDM

MACRO DerefHL
    ; Dereferences hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
ENDM

MACRO ECallHL
    ; Calls the address pointed to by hl
    DerefHL
    call CallHL
ENDM

MACRO FGet16
    ; Fast Get - Retrieves a 16-bit value into a register from a source
    ; Fast but modifies hl
    ; \1 = destination register
    ; \2 = source address
    ld hl, (\2)
    ld a, [hl+]
    ld HIGH(\1), [hl]
    ld LOW(\1), a
ENDM

MACRO FGet16_BigEndian
    ; Retrieves as Big-Endian
    ld hl, (\2)
    ld a, [hl+]
    ld LOW(\1), [hl]
    ld HIGH(\1), a
ENDM

MACRO FSet16
    ; Stores a 16-bit value into memory from a register
    ; Fast but modifies hl (don't use with hl)
    ; The 16-bit value must be stored in bc/de (or just use Set16)
    ; \1 = destination address
    ; \2 = source register
    ld hl, (\1)
    ld a, LOW(\2)
    ld [hl+], a
    ld [hl], HIGH(\2)
ENDM

MACRO FSet16_BigEndian
    ; Stores as Big-Endian
    ld hl, (\1)
    ld a, HIGH(\2)
    ld [hl+], a
    ld [hl], LOW(\2)
ENDM

;TODO
MACRO Get8
    ; Retrieves an 8-bit value into a register from a source
    ; \1 = destination register
    ; \2 = source address
    ld a, [\2]
    ld \1, a
ENDM


MACRO Get8FF
    ; Retrieves an 8-bit value into a register from a source with a high address
    ; \1 = destination register
    ; \2 = source address
    ldh a, [\2]
    ld \1, a
ENDM

;TODO
MACRO Get16
    ; Retrieves an 16-bit value into a register from a source
    ; \1 = destination register
    ; \2 = source address
    ld a, [\2+1]
    ld HIGH(\1), a
    ld a, [\2]
    ld LOW(\1), a
ENDM

MACRO Get16_V
    ; Order is flipped
    ld a, [\2]
    ld LOW(\1), a
    ld a, [\2+1]
    ld HIGH(\1), a
ENDM

MACRO Get16FF
    ; Retrieves an 16-bit value into a register from a source
    ; \1 = destination register
    ; \2 = source address
    ldh a, [\2+1]
    ld HIGH(\1), a
    ldh a, [\2]
    ld LOW(\1), a
ENDM

MACRO Get16FF_V
    ; Order is flipped
    ldh a, [\2]
    ld LOW(\1), a
    ldh a, [\2+1]
    ld HIGH(\1), a
ENDM

MACRO Get16_BigEndian
    ld a, [\2]
    ld HIGH(\1), a
    ld a, [\2+1]
    ld LOW(\1), a
ENDM

MACRO Mov8
    ; ld [dest], [source] (8-bit)
    ; \1 = destination
    ; \2 = source
    ld a, [\2]
    ld [\1], a
ENDM

MACRO Mov8FFFF
    ; ld [dest], [source] (8-bit)
    ; \1 = destination
    ; \2 = source
    ldh a, [\2]
    ldh [\1], a
ENDM

MACRO Mov16
    ; ld [dest], [source] (16-bit)
    ; \1 = destination
    ; \2 = source
    Mov8 \1, \2
    Mov8 \1+1, \2+1
ENDM

MACRO Mov16_V
    ; Variant of Mov16
    Mov8 \1+1, \2+1
    Mov8 \1, \2
ENDM

; TODO
MACRO Set8
    ; ld [dest], param
    ; \1 = destination
    ; \2 = 8-bit register or address
    ld a, \2
    ld [\1], a
ENDM

; TODO
MACRO Set16
    ; Stores 16 bits to an address. Similar to Mov16
    ; \1 = destination
    ; \2 = 16-bit register or address
    ld a, HIGH(\2)
    ld [\1+1], a
    ld a, LOW(\2)
    ld [\1], a
ENDM

; TODO
MACRO Set16_M
    ; Variant of Set16. Originally known as Mov16Reg (register) and MovAddr
    ld a, LOW(\2)
    ld [\1], a
    ld a, HIGH(\2)
    ld [\1+1], a
ENDM

; TODO
MACRO Set16FF
    ; Stores 16 bits to a high address. Originally known as MovAddrFF
    ; \2 = 16-bit register or address
    ; \1 = high destination
    ld a, LOW(\2)
    ldh [\1], a
    ld a, HIGH(\2)
    ldh [\1+1], a
ENDM

MACRO Set16FF_V
    ; Flipped order
    ld a, HIGH(\2)
    ldh [\1+1], a
    ld a, LOW(\2)
    ldh [\1], a
ENDM

MACRO Set8FF
    ; Stores 8 bits to a high address.
    ; \2 = 8-bit register or address
    ; \1 = high destination
    ld a, \2
    ldh [\1], a
ENDM


MACRO Sla16
    ; Shifts a 16-bit register left X times
    ; \1 = register
    ; \2 = number of rotations
    ld a, \2
    .Loop\@:
        sla LOW(\1)
        rl HIGH(\1)
        dec a
        jr nz, .Loop\@
ENDM

MACRO Srl16
    ; Shifts a 16-bit register right X times
    ; \1 = register
    ; \2 = number of rotations
    ld a, \2
    .Loop\@:
        srl HIGH(\1)
        rr LOW(\1)
        dec a
        jr nz, .Loop\@
ENDM

MACRO IncHL16
    ; Increases the (16-bit) value of [hl]
    ; de is modified
    ; UNUSED
    ld a, [hl+]
    ld d, [hl]

    ld e, a
    inc de
    ld a, d

    ld [hl-], a
    ld [hl], e
ENDM

MACRO LdBCDHLD
    ; ld [bc-], [hl-]
    ld a, [hl-]
    ld [bc], a
    dec bc
ENDM

MACRO LdBCIHLI
    ; ld [bc+], [hl+]
    ld a, [hl+]
    ld [bc], a
    inc bc
ENDM

MACRO LdHLIBCI
    ; ld [hl+], [bc+]
    ld a, [bc]
    ld [hl+], a
    inc bc
ENDM

MACRO PopRAMBank
    ; Pops RAM bank from stack and loads said RAM bank
    pop af
    ld [wRAMBank], a
    ld [rSVBK], a
ENDM

MACRO PopROMBank
    ; Pops ROM bank from stack and loads said RAM bank
    pop af
    ld [wROMBank], a
    ld [rROMB0], a
ENDM

MACRO PushRAMBank
    ; Pushes RAM bank onto stack
    ld a, [wRAMBank]
    push af
ENDM

MACRO PushROMBank
    ; Pushes ROM bank onto stack
    ld a, [wROMBank]
    push af
ENDM

MACRO RestoreRegisters
    pop hl
    pop de
    pop bc
    pop af
ENDM

MACRO SaveRegisters
    push af
    push bc
    push de
    push hl
ENDM

MACRO dw_BigEndian
    db HIGH(\1), LOW(\1)
ENDM

MACRO SwitchRAMBank
    ; Sets the RAM bank and saves it to wRAMBank
    ; \1 = bank
    ld a, \1
    ld [wRAMBank], a
    ldh [rSVBK], a
ENDM

MACRO SwitchROMBank
    ; Sets the ROM bank and saves it to wROMBank
    ; \1 = bank
    ld a, \1
    ld [wROMBank], a
    ld [rROMB0], a
ENDM


MACRO TwosComp
    ; r16 <- (-r16)
    ; Gets the negative value of a 16-bit register
    ; \1 = Target r16
    ld a, LOW(\1)
    cpl
    ld LOW(\1), a
    ld a, HIGH(\1)
    cpl
    ld HIGH(\1), a
    inc \1
ENDM

MACRO XCall
    ; Calls a function in a different bank
    ; \1 = Target
    SwitchROMBank BANK(\1)
    call \1
ENDM

MACRO XJump
    ; Jumps to a function in a different bank
    ; \1 = Target
    SwitchROMBank BANK(\1)
    jp \1
ENDM