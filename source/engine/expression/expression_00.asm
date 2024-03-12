
; source/engine/script/modules/expression/expression.s

; Calculates a value based on an expression defined with functions in the Expr_FuncTable
;   Returns the calculation value in de
; These functions are only accessed as parameters of certain Cmd functions
; All these functions use 16-bit simple arithmetic

; The two boolean values are represented as such:
;   Expr_TRUE == $FFFF
;   Expr_FALSE == $0000

; This module has 2 helper functions
;   Expr_GetValue - Evaluates the value of 1 parameter (e.g. when using Expr_Not, which takes 1 argument)
;   Expr_GetBranch - Evaluates the value of 2 parameters (e.g. when using Expr_Add, which takes 2 arguments)
;   

; In order to access these functions, Expr_GetValue is called from an external function, which reads the script to determine the commands
; There is no other function that is accessed externally


Expr_FuncTable:
    dw Expr_BitMatch            ; 00    Returns a Boolean
    dw Expr_CharAddress         ; 01    Returns a value
    dw Expr_WordAddress         ; 02    Returns a value
    dw Expr_GetHeroDirection    ; 03    Returns a value
    dw Expr_GetGameCount        ; 04    Returns a value
    dw Expr_Char                ; 05    Returns a value
    dw Expr_Word                ; 06    Returns a value
    dw Expr_BitAnd              ; 07    Returns a value
    dw Expr_And                 ; 08    Returns a Boolean
    dw Expr_Or                  ; 09    Returns a Boolean
    dw Expr_Not                 ; 0A    Returns a Boolean
    dw Expr_Add                 ; 0B    Returns a value
    dw Expr_Sub                 ; 0C    Returns a value
    dw Expr_Inc                 ; 0D    Returns a value
    dw Expr_Dec                 ; 0E    Returns a value
    dw Expr_Equals              ; 0F    Returns a Boolean
    dw Expr_NotEquals           ; 10    Returns a Boolean
    dw Expr_Greater             ; 11    Returns a Boolean
    dw Expr_GreaterEquals       ; 12    Returns a Boolean
    dw Expr_Less                ; 13    Returns a Boolean
    dw Expr_LessEquals          ; 14    Returns a Boolean
    dw Expr_Rand16              ; 15    Returns a value
    dw Expr_Bank                ; 16    N/A (switches the WRAM bank temporarily)


Expr_BitMatch:
    ; Checks to see if the bits at an address match a bitmap, and returns True or False
    ; Useful for example to check if a specific button is held down
    ; Inputs:
    ;   dw - address pointing to 8-bit value -> param A
    ;   db - param B
    ; Outputs:
    ;   de = True if (bitwise A & B) is nonzero, else False
    Script_ReadWord hl
    ld a, [hl]
    ld e, a
    Script_ReadByteA
    and e
    jr z, .False
        ld de, Expr_TRUE
        ret
    .False:
        ld de, Expr_FALSE
        ret


Expr_CharAddress:
    ; Returns the 8-bit value at specified address
    ; Inputs:
    ;   dw - address
    ; Outputs:
    ;   de = 8-bit value at address
    Script_ReadWord hl
    ld e, [hl]
    ld d, $00
    ret


Expr_WordAddress:
    ; Returns the 16-bit value at specified address
    ; Inputs:
    ;   dw - address
    ; Outputs:
    ;   de = 16-bit value at [address]
    Script_ReadWord hl
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ret


Expr_GetHeroDirection:
    ; Returns the direction an Actor must face to look at the Hero
    ; i.e. returns the complement of the hero's direction
    ; Inputs:
    ;   None
    ; Outputs:
    ;   de = complement of Hero direction (see Actor_FLAGS_FACENORTH and others in actor_include.asm)
    ld a, [wActor_Hero.Flags]
    cpl
    and Actor_FLAGS_MASK_FACE
    ld e, a
    ld d, $00
    ret


Expr_GetGameCount:
    ; Returns the 16-bit value at address xGameCount
    ; Inputs:
    ;   None
    ; Outputs:
    ;   w[xGameCount]
    Get16_V de, xGameCount
    ret


Expr_Char:
    ; Returns the specified 8-bit value
    ; Inputs:
    ;   db - value
    ; Outputs:
    ;   de = value
    Script_ReadByteA
    ld e, a
    ld d, $00
    ret


Expr_Word:
    ; Returns the specified 16-bit value
    ; Inputs:
    ;   dw - value
    ; Outputs:
    ;   de = value
    Script_ReadWord_V de
    ret


Expr_BitAnd:
    ; Returns EXPR bitwise_and EXPR
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   de = Bitwise and between EXPR1 and EXPR2
    call Expr_GetBranch
    ld a, e
    and l
    ld e, a
    ld a, d
    and h
    ld d, a
    ret


Expr_And:
    ; Returns boolean EXPR and EXPR
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   de = True if both EXPR1 and EXPR2 are non-zero
    call Expr_GetBranch
    ld a, e
    or d
    ld de, Expr_FALSE
    ret z
    ld a, l
    or h
    ret z
    ld de, Expr_TRUE
    ret


Expr_Or:
    ; Returns boolean EXPR or EXPR
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   de = True if either EXPR1 or EXPR2 are non-zero
    call Expr_GetBranch
    ld a, e
    or l
    jr nz, .True
    ld a, d
    or h
    jr nz, .True
        ld de, Expr_FALSE
        ret
    .True:
        ld de, Expr_TRUE
        ret


Expr_Not:
    ; Returns True if EXPR is zero, otherwise returns False
    ; Inputs:
    ;   EXPR
    ; Outputs:
    ;   de = True if EXPR == 0, otherwise False
    call Expr_GetValue
    ld a, d
    or e
    jr z, .True
        ld de, Expr_FALSE
        ret
    .True:
        ld de, Expr_TRUE
        ret


Expr_Add:
    ; Returns EXPR + EXPR
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   de = EXPR1 + EXPR2
    call Expr_GetBranch
    ld a, e
    add l
    ld e, a
    ld a, d
    adc h
    ld d, a
    ret


Expr_Sub:
    ; Returns EXPR - EXPR
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   de = EXPR1 - EXPR2
    call Expr_GetBranch
    ld a, l
    sub e
    ld e, a
    ld a, h
    sbc d
    ld d, a
    ret


Expr_Inc:
    ; Returns EXPR + 1
    ; Inputs:
    ;   EXPR
    ; Outputs:
    ;   de = EXPR + 1
    call Expr_GetValue
    inc de
    ret


Expr_Dec:
    ; Returns EXPR - 1
    ; Inputs:
    ;   EXPR
    ; Outputs:
    ;   de = EXPR - 1
    call Expr_GetValue
    dec de
    ret


Expr_Equals:
    ; Returns True if EXPR == EXPR
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   de = (EXPR1 == EXPR2)
    call Expr_GetBranch
    ld a, e
    cp l
    jr nz, .False
    ld a, d
    cp h
    jr nz, .False
        ld de, Expr_TRUE
        ret
    .False:
        ld de, Expr_FALSE
        ret


Expr_NotEquals:
    ; Returns True if EXPR != EXPR
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   de = (EXPR1 != EXPR2)
    call Expr_GetBranch
    ld a, e
    cp l
    jr nz, .True
    ld a, d
    cp h
    jr nz, .True
        ld de, Expr_FALSE
        ret
    .True:
        ld de, Expr_TRUE
        ret


Expr_Greater:
    ; Returns True if EXPR > EXPR
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   EXPR1 > EXPR2
    call Expr_GetBranch
    ld a, e
    sub l
    ld a, d
    sbc h
    jr nc, .False
        ld de, Expr_TRUE
        ret
    .False:
        ld de, Expr_FALSE
        ret


Expr_GreaterEquals:
    ; Returns True if EXPR >= EXPR
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   EXPR1 >= EXPR2
    call Expr_GetBranch
    ld a, l
    sub e
    ld a, h
    sbc d
    jr nc, .True
        ld de, Expr_FALSE
        ret
    .True:
        ld de, Expr_TRUE
        ret


Expr_Less:
    ; Returns True if EXPR < EXPR
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   EXPR1 < EXPR2
    call Expr_GetBranch
    ld a, l
    sub e
    ld a, h
    sbc d
    jr nc, .False
        ld de, Expr_TRUE
        ret
    .False:
        ld de, Expr_FALSE
        ret


Expr_LessEquals:
    ; Returns True if EXPR <= EXPR
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   EXPR1 <= EXPR2
    call Expr_GetBranch
    ld a, e
    sub l
    ld a, d
    sbc h
    jr nc, .True
        ld de, Expr_FALSE
        ret
    .True:
        ld de, Expr_TRUE
        ret


Expr_Rand16:
    ; Returns a random value 0-F
    ; Inputs:
    ;   None
    ; Outputs:
    ;   de = random $0000-$000F
    ld a, [rDIV]
    and $0F
    ld e, a
    ld d, $00
    ret


Expr_Bank:
    ; Changes the WRAM bank so that far memory locations can be accessed
    ; Inputs:
    ;   db - Bank
    ;   EXPR
    ; Outputs:
    ;   Changes the WRAM bank to Bank and then runs EXPR
    PushRAMBank
    SwitchRAMBank [bc]
    inc bc
    call Expr_GetValue
    PopRAMBank
    ret


Expr_GetBranch:
    ; Runs some Expr and returns the value in hl
    ; Runs some more Expr and returns the value in de
    ; Inputs:
    ;   EXPR1
    ;   EXPR2
    ; Outputs:
    ;   hl = value of EXPR1
    ;   de = value of EXPR2
    call Expr_GetValue
    push de
    call Expr_GetValue
    pop hl
    ret


Expr_GetValue::
    ; Runs some Math and returns the value in de
    ; Inputs:
    ;   EXPR
    ; Outputs:
    ;   de = value
    Script_ReadByteA
    add a
    ld e, a
    ld d, $00
    ld hl, Expr_FuncTable
    add hl, de
    DerefHL
    jp hl