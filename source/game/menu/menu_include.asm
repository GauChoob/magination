
MACRO Menu_TextSetup
    ; Menu_TextSetup VBK, VRAMDest, TilemapDEST, Length, String
    ; Length can either be a fixed value or ".End" (end of a string)
    IF STRCMP("\5", "hl") != 0
        Set16_M wText_StringFormatFrame, wText_StringBuffer
        IF STRCMP("\4", ".End") == 0
            ;String.End-String
            DEF __LENGTH\@__ EQU \5\4-\5
        ELSE
            DEF __LENGTH\@__ EQU \4
        ENDC
        Text_Setup \1, \2, \3, __LENGTH\@__
        Set16_M wText_StringFrame, \5
        ld a, __LENGTH\@__
        inc a ; It takes 1 vblank per character, plus one final vblank to display the string
        ld [wMenu_TextLengthCounter], a
        Set16_M wText_HandlerFunc, TextHandler_String
    ELSE
        ; Same thing as above, but when you use registers, wText_StringFrame is moved
        ASSERT STRCMP("\2", "de") == 0
        ASSERT STRCMP("\3", "bc") == 0
        ASSERT STRCMP("\5", "hl") == 0
        Set16_M wText_StringFrame, \5
        Set16_M wText_StringFormatFrame, wText_StringBuffer
        Text_Setup \1, \2, \3, \4
        ld a, \4
        inc a
        ld [wMenu_TextLengthCounter], a
        Set16_M wText_HandlerFunc, TextHandler_String
    ENDC
ENDM

MACRO Menu_TextCreatureSetup
    ; Menu_TextCreatureSetup VBK, VRAMDest, TilemapDEST
    ;
    ; Pastes the creature name indicated by wBattle_SelectedRingIndex
    Set16_M wText_StringFormatFrame, wText_StringBuffer
    Text_Setup \1, \2, \3, CreatureName_SIZE
    Menu_GetCreatureName
    ld a, CreatureName_SIZE
    inc a
    ld [wMenu_TextLengthCounter], a
    Set16_M wText_HandlerFunc, TextHandler_String
ENDM

MACRO Menu_GetCreatureName
    ; Stores the name of the creature indicated by wBattle_SelectedRingIndex into wText_StringFrame
    Menu_RingToID wBattle_SelectedRingIndex
    ld a, b
    cp CreatureID_Null
    jr nz, .NotNull\@
        ld hl, CreatureName_Null
        jr .GotString\@
    .NotNull\@:
        ld c, a
        ld b, CreatureName_SIZE
        call Math_Mult
        ld bc, CreatureName_Table
        add hl, bc
    .GotString\@:
    ; Creature name in hl
    Set16_M wText_StringFrame, hl
ENDM

MACRO Menu_RingToID
    ; Gets the ID (type) of the targetted ring
    ; Inputs:
    ;   \1 = ring index pointer (wBattle_SelectedRingIndex or wMenu_SelectedRingIndex)
    ; Outputs:
    ;   b = ID
    ;   hl = pointer to ring Creature_Struct
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    Get8 c, \1
    ld b, $00
    ld hl, xInventory_Rings
    add hl, bc
    ld a, [hl]
    cp INVENTORY_RINGS_NORING
    ld b, a
    jr z, .EmptyRing\@ ; CreatureID_Null = INVENTORY_RINGS_NORING
    .ValidRing\@
        ld b, a
        ld c, Creature_SIZE
        call Math_Mult
        Battery_SetBank "XRAM Creatures"
        ld bc, xCreature_00_Hero.ID
        add hl, bc
        ld b, [hl]
    .EmptyRing\@:
    Battery_Off
ENDM

MACRO Menu_TextUpdateLoop
    ; Loops through wMenu_TextLengthCounter frames to write the string specified by Menu_TextSetup
    .Loop\@:
        Text_Update
        call System_UpdateGame
        ld hl, wMenu_TextLengthCounter
        dec [hl]
        jr nz, .Loop\@
ENDM

MACRO Do_Menu_Init
    ; Do_Menu_Init TableType, ButtonMask, ValidityArray, StartFunc, SelectFunc, InitialID, Blink, CursorType
    ; \1 = wMenu_CursorTableID - a table dictating where on the screen the available options are
    ;       (see Menu_CursorTables)
    ; \2 = wMenu_KeyMask - Mask of valid buttons to select option
    ; \3 = wMenu_CursorTableValidIDsPointer - Pointer to array that tells if certain menu ids are valid or not ($0000 = always all valid)
    ;      wMenu_CursorTableValidIDsPointerBank is set to current bank
    ; \4 = wMenu_StartFunc - function to call if Start is pressed
    ; \5 = wMenu_SelectFunc - function to call if Select is pressed
    ; \6 = wMenu_CursorID - initial menu cursor ID
    ;                           You can either pass a relative address, e.g. "[wValue]"
    ;                           or one of the menu IDs (using the name in the table) e.g. "FightDef"
    ;                           or one of the 8-bit registers e.g. a
    ; \7 = wMenu_BlinkFlag - cursor blink flag (Menu_CURSOR_NOBLINK, Menu_CURSOR_BLINK)
    ; \8 = wMenu_CursorType - sprite or bg based cursor (Menu_CURSOR_SPRITE, Menu_CURSOR_BG, Menu_CURSOR_ACTOR)
    ; Also sets wMenu_ReturnValue to $FF
    Set8 wMenu_CursorTableID, (Menu_CursorTables.\1 - Menu_CursorTables)/2
    Set8 wMenu_KeyMask, \2
    Mov8 wMenu_CursorTableValidIDsPointerBank, wRAMBank

    ld bc, \3
    FSet16 wMenu_CursorTableValidIDsPointer, bc
    ld bc, \4
    FSet16 wMenu_StartFunc, bc
    ld bc, \5
    FSet16 wMenu_SelectFunc, bc

        ;    [address]          All 8-bit registers
    IF STRCMP(STRSUB("\6",1,1), "[") == 0 || STRCMP("\6", "a") == 0 || STRCMP("\6", "b") == 0 || STRCMP("\6", "c") == 0 || STRCMP("\6", "d") == 0 || STRCMP("\6", "e") == 0 || STRCMP("\6", "h") == 0 || STRCMP("\6", "l") == 0
        Set8 wMenu_CursorID,\6
    ELSE
        Set8 wMenu_CursorID, Enum_\1_\6 ;Enum_{__TableName__}_\6
    ENDC
    Set8 wMenu_BlinkFlag, \7
    Set8 wMenu_CursorType, \8
    Do_CallForeign Menu_Init
    Set8 wMenu_ReturnValue, Menu_NULL
ENDM

; Special wMenu_ReturnValue values
DEF Menu_NULL   EQU $FF
DEF Menu_CANCEL EQU $FE

; wMenu_BlinkFlag
DEF Menu_CURSOR_BLINK   EQU $01
DEF Menu_CURSOR_NOBLINK EQU $00

; wMenu_CursorType
DEF Menu_CURSOR_SPRITE  EQU $00
DEF Menu_CURSOR_BG      EQU $01 ; Todo - is this properly implemented?
DEF Menu_CURSOR_ACTOR   EQU $02

; wMenuChoice_ConfirmingChoice
DEF Menu_CONFIRMING_FALSE EQU $00
DEF Menu_CONFIRMING_TRUE EQU $01

; MenuFunc_Table Enum
RSRESET
DEF Enum_MenuFunc_MainMenu      RB 1
DEF Enum_MenuFunc_DoubleClickA  RB 1
DEF Enum_MenuFunc_DoubleClickB  RB 1
DEF Enum_MenuFunc_Flash         RB 1
DEF Enum_MenuFunc_SingleClickA  RB 1
DEF Enum_MenuFunc_SingleClickB  RB 1
DEF Enum_MenuFunc_Null          RB 1

MACRO Menu_CursorTable_New
    ; Reset the counter
    ASSERT DEF(\1),"Menu_CursorTable_New argument must be the label pointing to this table!"
    ASSERT \1 == @,"Menu_CursorTable_New argument must be the label pointing to this table!"
    ASSERT !DEF(__TableName__),"The previous Menu_CursorTable_New was not closed with the macro Menu_CursorTable_End!"
    RSRESET
    REDEF __TableName__ EQUS "\1" ;Unique name so different tables can use the same row names
ENDM

MACRO Menu_CursorTable_Row
    ; Name, CursorX, CursorY, Right, Left, Up, Down, AFunc, BFunc
    DEF Enum_{__TableName__}_\1  RB  1  ; Name the row
    db \2, \3                               ;Cursor X, Cursor Y
    db Enum_{__TableName__}_\4, Enum_{__TableName__}_\5, Enum_{__TableName__}_\6, Enum_{__TableName__}_\7   ;RLUD directions - the menu id to jump to
    db Enum_\8, Enum_\9                     ;The function to call for A and for B
ENDM

MACRO Menu_CursorTable_End
    DEF {__TableName__}_SIZE RB 0 ; Save the table size
    .End ; Add the .End label
    PURGE __TableName__ ; Reset so we can make a new table
ENDM


; wMenu_BattleCmd_GetEnergyFlag
DEF Menu_GetAbility_GETENERGY_FALSE EQU $00
DEF Menu_GetAbility_GETENERGY_TRUE EQU $01



    VRAM_TILEID_BG
    ; MusicMenu
        VRAM_TILEID Menu_Generic, CHOICE0, $86
        VRAM_TILEID Menu_Generic, CHOICE1, $93
        VRAM_TILEID Menu_Generic, CHOICE2, $A0
        VRAM_TILEID Menu_Generic, CHOICE3, $AD
        VRAM_TILEID Menu_Generic, CHOICE4, $BA
        VRAM_TILEID Menu_Generic, CHOICE5, $C7
        VRAM_TILEID Menu_Generic, CHOICE6, $D4
        VRAM_TILEID Menu_Generic, CHOICE7, $E1
        VRAM_TILEID Menu_Music, CHOOSEASONG, $EE
        VRAM_TILEID Menu_Music, ASELECTS, $FB
        VRAM_TILEID Menu_Music, BEXITS, $04
        VRAM_TILEID Menu_Music, FATARROW, $0B
        ; $0C - $FF unused



MACRO Menu_SequentialTilesToTilemap
    ; Writes sequential increasing tileids into the tilemap
    ; Used to write a string into the tilemap
    ; Equivalent to the macro Do_Menu_MainMenu_SetTilemapString
    ; \1 = Starting tile in tilemap
    ; \2 = Starting tileid
    ; \3 = String length
    ld hl, \1
    ld a, \2
    ld b, \3
    .Loop\@:
        ld [hl+], a
        inc a
        dec b
        jr nz, .Loop\@
ENDM