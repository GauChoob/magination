
DEF Actor_NORTH     EQU 0
DEF Actor_WEST      EQU 1
DEF Actor_EAST      EQU 2
DEF Actor_SOUTH     EQU 3

DEF Actor_FLAGS_BIT_PLACEDWALL EQU $05
DEF Actor_FLAGS_BIT_ACTIVE EQU $06
DEF Actor_FLAGS_BIT_DELETE EQU $07

DEF Actorlist_SIZE EQU $10
DEF Actor_COUNT EQU $32
ASSERT Actor_COUNT == (wActor_RAM_END - wActor_RAM)/Actor_SIZE

; ACTOR STRUCT

DEF Actor_ENUM_Flags                 EQU $00 ;\
DEF Actor_ENUM_State                 EQU $01 ; \
DEF Actor_ENUM_XOffset               EQU $03 ;  \
DEF Actor_ENUM_YOffset               EQU $04 ;   \
DEF Actor_ENUM_XTile                 EQU $05 ;   /  Also referenceable in HRAM
DEF Actor_ENUM_YTile                 EQU $06 ;  /
DEF Actor_ENUM_TileAddress           EQU $07 ; /
DEF Actor_ENUM_SpriteBase            EQU $09 ;/

DEF Actor_ENUM_Script0               EQU $0A ;TODO - change Script0 to anim?
DEF Actor_ENUM_Script0_Bank          EQU $0A
DEF Actor_ENUM_Script0_Frame         EQU $0B
DEF Actor_ENUM_Script0_State         EQU $0D
DEF Actor_ENUM_Script0_SmallCounter  EQU $0F
DEF Actor_ENUM_Script0_BigCounter    EQU $10
DEF Actor_ENUM_Script1               EQU $11 ;TODO - change Script1 to ?
DEF Actor_ENUM_Script1_Bank          EQU $11
DEF Actor_ENUM_Script1_Frame         EQU $12
DEF Actor_ENUM_Script1_State         EQU $14
DEF Actor_ENUM_Script1_SmallCounter  EQU $16
DEF Actor_ENUM_Script1_BigCounter    EQU $17
DEF Actor_ENUM_Interrupt             EQU $18
DEF Actor_ENUM_Interrupt_Bank        EQU $18
DEF Actor_ENUM_Interrupt_State       EQU $19
DEF Actor_SIZE                       EQU $1B

MACRO Actor_Struct
    .Flags:
        ; bit 7 - actor is disabled
        ; bit 6 - actor is activated
        ; bit 1-0 - 0 = North
        ;           1 = West
        ;           2 = East
        ;           3 = South
        ds 1
    .State:
        ; The main function that runs to handle the actor, aka the AI
        ds 2
    .XOffset:
        ; The subtile positional offset
        ds 1
    .YOffset:
        ; The subtile positional offset
        ds 1
    .XTile:
        ; The tile position
        ds 1
    .YTile:
        ; The tile position
        ds 1
    .TileAddress:
        ; The SRAM address the matches the tile indicated by .XTile/.YTile
        ds 2
    .SpriteBase:
        ; The base tile number of the sprite. Used as an offset to display the correct sprite when there are multiple loaded sprites
        ds 1
    .Script0:
        .Script0_Bank:
            ds 1
        .Script0_Frame:
            ds 2
        .Script0_State:
            ds 2
        .Script0_SmallCounter:
            ds 1
        .Script0_BigCounter:
            ds 1
    .Script1:
        .Script1_Bank:
            ds 1
        .Script1_Frame:
            ds 2
        .Script1_State:
            ds 2
        .Script1_SmallCounter:
            ds 1
        .Script1_BigCounter:
            ds 1
    .Interrupt:
        ; This function is run when the object is disabled
        .Interrupt_Bank:
            ds 1
        .Interrupt_State:
            ds 2
ENDM