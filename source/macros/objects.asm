
MACRO PortraitAddressBank
    ; e.g. PortraitAddressBank BITMAP_X

    ; Bank address can only be $00-$0F as it's saved in 4 bits
    ; In the original ROM, only banks 8 and 9 are used for portraits
    ASSERT BANK(\1) >= 0,"Bank must between 0-$F"
    ASSERT BANK(\1) <= $0F,"Bank must between 0-$F"
    dw \1 + (BANK(\1) & %1111)
ENDM


MACRO SongFadeInterval
    ; Used in SongFadeIn and SongFadeOut
    ; \1 = Number of cycles between each delta volume tick
    ;      stored in the upper 4 nibbles because this is how MusyX handles it internally
    ;      I think this is because the song volume is stored in the lower nibble,
    ;           even though both are never used at the same time nor in the same byte
    ASSERT \1 >= 1,"SongFadeInterval must be $01-$10"
    ASSERT \1 <= $10,"SongFadeInterval must be $01-$10"
    db ((\1)-1)*$10
ENDM

MACRO VarBit
    ; Gets a label varbit's address and mask
    ; e.g. LABEL_3 -> %00001000
    dw \1
    db 1 << (STRSUB("\1", -1) - "0") ; Casts a string "0" - "7" into a mask e.g. "3" -> %00001000
ENDM

MACRO dcm_Energy
    db \1
ENDM
MACRO dcm_Strength
    db \1
ENDM
MACRO dcm_Skill
    db \1
ENDM
MACRO dcm_Speed
    db \1
ENDM
MACRO dcm_Defense
    db \1
ENDM
MACRO dcm_Resist
    db \1
ENDM
MACRO dcm_Luck
    db \1
ENDM
MACRO dcm_Resistance
    db \1
ENDM
MACRO dcm_Weakness
    db \1
ENDM
MACRO dcm_StatusImmune
    db \1
ENDM
MACRO dcm_StatusPerm
    db \1
ENDM
MACRO dcm_MagiType
    db \1
ENDM
MACRO dcm_Placeholder
    db \1
ENDM
MACRO dcm_Ability
    dw $5EAE+(\1)*$10
ENDM
MACRO dcm_AbilityLevel
    db \1
ENDM
MACRO dcm_CombatTileset
    AddressBank \1
ENDM
MACRO dcm_CombatTilemap
    AddressBank \1
ENDM
MACRO dcm_CombatTilemapSize
    db \1, \2
ENDM
MACRO dcm_CombatPalette
    AddressBank \1
ENDM
MACRO dcm_CardTileset
    AddressBank \1
ENDM
MACRO dcm_CardPalette
    db \1
ENDM


; System_Mac.s

;COLLISION_INIT      MACRO
;
;        XOR     A
;        LD      HL,COLL_MASK
;        LD      (HLI),A
;        LD      A,1
;        LD      (HLI),A
;        XOR     A
;        LD      (HLI),A
;        LD      (HLI),A
;        LD      (HLI),A
;        LD      (HLI),A
;        LD      (HLI),A
;        LD      (HLI),A
;       
;        ENDM


MACRO Do_CallForeign
    ; From ROM0, switches the ROM bank, calls a function in a ROMX,
    ;   and then restores the ROM bank
    ; When used from a ROMX targetting a different ROMX, it also works as intended
    ; When used from a ROMX targetting a function in bank 0, you should not use
    ;   the macro a manually specify e and hl. This allows you to use a function in
    ;   ROM0 targetting a different ROMX bank (e.g. to copy assets)
    ; When used from ROM0, using CallForeign restores the ROMX bank back to previous
    ;   If you don't need to restore the ROMX bank, XCall suffices instead
    ; 1 = Target function
    ld hl, \1
    ld e, BANK(\1)
    call CallForeign
ENDM

MACRO Do_MemAdd
    ; Adds a fixed value to a range of data
    ; A max value is specified as a cap to avoid overflow
    ; 1 = Starting address
    ; 2 = Total bytes to modify
    ; 3 = Add value
    ; 4 = Max value
    ld hl, \1
    ld bc, \2
    ld d, \4
    ld a, \3
    ld e, a
    call MemAdd
ENDM

MACRO Do_MemAnd
    ; Ands a range of data with a fixed value
    ; 1 = Starting address
    ; 2 = Total bytes to modify
    ; 3 = And value
    ld hl, \1
    ld bc, \2
    ld a, \3
    ld e, a
    call MemAnd
ENDM

MACRO Do_MemMov
    ; Copys x bytes of data from source to destination
    ; 1 = source
    ; 2 = destination
    ; 3 = size in bytes
    ld hl, \1
    ld de, \2
    ld bc, \3
    call MemMov
ENDM
MACRO Do_MemMov_V
    ; Variant: bc/hl/de order switched
    ld bc, \3
    ld hl, \1
    ld de, \2
    call MemMov
ENDM

MACRO Do_MemOr
    ; Ors a range of data with a fixed value
    ; 1 = Starting address
    ; 2 = Total bytes to modify
    ; 3 = Or value
    ld hl, \1
    ld bc, \2
    ld a, \3
    ld e, a
    call MemOr
ENDM

MACRO Do_MemSet
    ; Initializes a range of data to a fixed value
    ; 1 = Starting address
    ; 2 = Total bytes to set
    ; 3 = Set value
    ld hl, \1
    ld bc, \2
    ld a, \3
    ld e, a
    call MemSet
ENDM
MACRO Do_MemSet_Optimized
    ; Instead of n->a->e, does n->e
    ; Since you cannot use "[address]"" as an input, this variant is used to save space
    ;   in full banks
    ld hl, \1
    ld bc, \2
    ld e, \3
    call MemSet
ENDM


MACRO Do_MemXor
    ; Xors a range of data with a fixed value
    ; 1 = Starting address
    ; 2 = Total bytes to modify
    ; 3 = Xor value
    ld hl, \1
    ld bc, \2
    ld a, \3
    ld e, a
    call MemXor
ENDM

MACRO StackInit
    ; Resets stack to the beginning, destroying stack data
    ld sp, wStackTop
ENDM


; Hotspot

DEF HOTSPOT_NULL EQU $FF

MACRO Hotspot_Init
    ld a, HOTSPOT_NULL
    ld [wHotspotCurrent], a
ENDM


MACRO Controller_Init
    xor a
    ld [wCnt1], a
    ld [wCntDown], a
    ld [wCntUp], a
ENDM

MACRO Battle_Init
    Set8 wFightscene_Start, 0 ; FightScn_Start?
    Set8 $C9C6, 0 ; FightScn_Done?
ENDM

; script

MACRO LdHLIBCI_V
    ; Variant
    ld a, [bc]
    inc bc
    ld [hl+], a
ENDM

MACRO Script_Do
    ld hl, \1
    call Script_Open
    call Script_Play
    call Script_Close
ENDM

MACRO Script_ReadByte
    ; ld \1, [bc+]
    ;
    ; Reads 1 byte from the reading frame and increments
    ; Stores the byte into the target register
    ld a, [bc]
    ld \1, a
    inc bc
ENDM

MACRO Script_ReadByte_V
    ; Different order
    ld a, [bc]
    inc bc
    ld \1, a
ENDM


MACRO Script_ReadByteA
    ; ld a, [bc+]
    ;
    ; Reads 1 byte from the reading frame and increments
    ; Stores the byte into a
    ld a, [bc]
    inc bc
ENDM

MACRO Script_ReadWord
    ; Reads 2 byte from the reading frame and increments
    ; Stores the byte into the target 16-bit register
    Script_ReadByte LOW(\1)
    Script_ReadByte HIGH(\1)
ENDM

MACRO Script_ReadWord_V
    ; Different order
    Script_ReadByte_V LOW(\1)
    Script_ReadByte_V HIGH(\1)
ENDM

MACRO Script_MovWord
    ; Stores a word into a variable
    Script_ReadByte [\1]
    Script_ReadByte [\1 + 1]
ENDM

MACRO Script_Init
    ; Disables a script
    Set16_M \1.Frame, $0000
    Set16_M \1.State, Cmd_Flow_End
ENDM

MACRO Script_Unpack
    ; Calls an unpack function
    ; Reads an AddressBank, and then calls unpack function \1
    Script_ReadWord hl
    PushROMBank
    SwitchROMBank [bc]
    inc bc
    push bc
    ld c, l
    ld b, h
    call \1
    pop bc
    PopROMBank
ENDM
