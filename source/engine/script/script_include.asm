
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

MACRO Script_MovWord_V
    ; Different order
    Script_ReadByte_V [\1]
    Script_ReadByte_V [\1 + 1]
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

MACRO Script_Set
    ; \1 = Script var e.g. wScript_System
    ; \2 = Script frame
    ld hl, \1
    Set8 hl+, BANK(\2) ; Bank
    Set8 hl+, LOW(\2)  ; Frame
    Set8 hl+, HIGH(\2)
    Set8 hl+, LOW(Script_Start) ; State
    Set8 hl+, HIGH(Script_Start)
ENDM

MACRO Script_Set_Var
    ; \1 = Script var e.g. wScript_System
    ; \2 = Script bank
    ; \3 = Script frame
    ld hl, \1
    Mov8 hl+, \2 ; Bank
    Mov8 hl+, \3  ; Frame
    Mov8 hl+, \3 + 1
    Set8 hl+, LOW(Script_Start) ; State
    Set8 hl+, HIGH(Script_Start)
ENDM
