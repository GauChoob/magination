; 16-bit True and False objects used in expression.s
DEF Expr_TRUE   EQU $FFFF
DEF Expr_FALSE  EQU $0000

; 
DEF Expr_DIRECTION_UP EQU 0
DEF Expr_DIRECTION_LEFT EQU 1
DEF Expr_DIRECTION_RIGHT EQU 2
DEF Expr_DIRECTION_DOWN EQU 3


; Enum and macros to support .mgi files:

MACRO Expr
    db Enum_Expr_\1
ENDM

; Opcode table for expressions
RSRESET
DEF Enum_Expr_BitMatch          RB 1
DEF Enum_Expr_CharAddress       RB 1
DEF Enum_Expr_WordAddress       RB 1
DEF Enum_Expr_GetHeroDirection  RB 1
DEF Enum_Expr_GetGameCount      RB 1
DEF Enum_Expr_Char              RB 1
DEF Enum_Expr_Word              RB 1
DEF Enum_Expr_BitAnd            RB 1
DEF Enum_Expr_And               RB 1
DEF Enum_Expr_Or                RB 1
DEF Enum_Expr_Not               RB 1
DEF Enum_Expr_Add               RB 1
DEF Enum_Expr_Sub               RB 1
DEF Enum_Expr_Inc               RB 1
DEF Enum_Expr_Dec               RB 1
DEF Enum_Expr_Equals            RB 1
DEF Enum_Expr_NotEquals         RB 1
DEF Enum_Expr_Greater           RB 1
DEF Enum_Expr_GreaterEquals     RB 1
DEF Enum_Expr_Less              RB 1
DEF Enum_Expr_LessEquals        RB 1
DEF Enum_Expr_Rand16            RB 1
DEF Enum_Expr_Bank              RB 1


; Macros for .mgi files
MACRO eBitMatch
    Expr BitMatch
    dw \1
    db \2
ENDM

MACRO eCharAddress
    Expr CharAddress
    dw \1
ENDM

MACRO eWordAddress
    Expr WordAddress
    dw \1
ENDM

MACRO eGetHeroDirection
    Expr GetHeroDirection
ENDM

MACRO eGetGameCount
    Expr GetGameCount
ENDM

MACRO eChar
    Expr Char
    db \1
ENDM

MACRO eWord
    Expr Word
    dw \1
ENDM

MACRO eBitAnd
    Expr BitAnd
        ; Two Expressions
ENDM

MACRO eAnd
    Expr And
        ; Two Expressions
ENDM

MACRO eOr
    Expr Or
        ; Two Expressions
ENDM

MACRO eNot
    Expr Not
        ; One Expression
ENDM

MACRO eAdd
    Expr Add
        ; Two Expressions
ENDM

MACRO eSub
    Expr Sub
        ; Two Expressions
ENDM

MACRO eInc
    Expr Inc
        ; One Expression
ENDM

MACRO eDec
    Expr Dec
        ; One Expression
ENDM

MACRO eEquals
    Expr Equals
        ; Two Expressions
ENDM

MACRO eNotEquals
    Expr NotEquals
        ; Two Expressions
ENDM

MACRO eGreater
    Expr Greater
        ; Two Expressions
ENDM

MACRO eGreaterEquals
    Expr GreaterEquals
        ; Two Expressions
ENDM

MACRO eLess
    Expr Less
        ; Two Expressions
ENDM

MACRO eLessEquals
    Expr LessEquals
        ; Two Expressions
ENDM

MACRO eRand16
    Expr Rand16
ENDM

MACRO eBank
    Expr Bank
    db \1
        ; One Expression
ENDM