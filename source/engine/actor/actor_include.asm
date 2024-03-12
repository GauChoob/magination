

DEF ActorList_SIZE EQU $10

DEF Actor_COUNT EQU $32
ASSERT Actor_COUNT == (wActor_RAM_END - wActor_RAM)/Actor_SIZE

; ACTOR STRUCT

RSRESET
DEF Actor_OFFSET_Flags                 RB 1 ;\
DEF Actor_OFFSET_State                 RB 2 ; \
DEF Actor_OFFSET_XOffset               RB 1 ;  \
DEF Actor_OFFSET_YOffset               RB 1 ;   \
DEF Actor_OFFSET_XTile                 RB 1 ;   /  Also referenceable in HRAM
DEF Actor_OFFSET_YTile                 RB 1 ;  /
DEF Actor_OFFSET_TileAddress           RB 2 ; /
DEF Actor_OFFSET_SpriteBase            RB 1 ;/

DEF Actor_OFFSET_Script0               RB 0 ; Script0
DEF Actor_OFFSET_Script0_Bank          RB 1
DEF Actor_OFFSET_Script0_Frame         RB 2
DEF Actor_OFFSET_Script0_State         RB 2
DEF Actor_OFFSET_Script0_SmallCounter  RB 1
DEF Actor_OFFSET_Script0_BigCounter    RB 1
DEF Actor_OFFSET_Script1               RB 0 ; Script1
DEF Actor_OFFSET_Script1_Bank          RB 1
DEF Actor_OFFSET_Script1_Frame         RB 2
DEF Actor_OFFSET_Script1_State         RB 2
DEF Actor_OFFSET_Script1_SmallCounter  RB 1
DEF Actor_OFFSET_Script1_BigCounter    RB 1
DEF Actor_OFFSET_Interrupt             RB 0
DEF Actor_OFFSET_Interrupt_Bank        RB 1
DEF Actor_OFFSET_Interrupt_State       RB 2
DEF Actor_SIZE                       RB 0


DEF Actor_FLAGS_MASK_FACE       EQU %00000011
DEF Actor_FLAGS_FACENORTH       EQU 0
DEF Actor_FLAGS_FACEWEST        EQU 1
DEF Actor_FLAGS_FACEEAST        EQU 2
DEF Actor_FLAGS_FACESOUTH       EQU 3

DEF Actor_FLAGS_BIT_PLACEDWALL  EQU $05
DEF Actor_FLAGS_BIT_ACTIVE      EQU $06
DEF Actor_FLAGS_BIT_DELETE      EQU $07

MACRO Actor_Struct
    .Flags:
        ; bit 7 - actor is disabled
        ; bit 6 - actor is activated
        ; bit 1-0 - 0 = Facing North
        ;           1 = Facing West
        ;           2 = Facing East
        ;           3 = Facing South
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
        ; Script that runs when the object is interacted with
        .Interrupt_Bank:
            ds 1
        .Interrupt_State:
            ds 2
ENDM