MACRO Do_Battle_SetActorScript
    ; Sets the Script0 of a target actor
    ; Inputs:
    ;   \1 = Actor target (wActorXX)
    ;   \2 = Script BankAddress
    ld a, \1
    ld d, BANK(\2)
    ld bc, \2
    call Battle00_SetActorScript
ENDM

MACRO Battle_FormatCreatureName
    ; Formats the creature's name into wText_StringBuffer
    ; Inputs:
    ;   \1 = Creature id
    Set8 wBattle_CopyBuffer_ListIndex, \1
    ld bc, wText_StringBuffer
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign CopyDreamCreatureNameToBuffer
    Set8 (wText_StringBuffer + Creature_NAMESIZE), "🔊"
    Set16_M wText_StringFormatFrame, wText_StringBuffer
ENDM

MACRO Battle_FormatCreatureName_Bugged
    ; Formats the creature's name into wText_StringBuffer
    ; Inputs:
    ;   \1 = Creature id
    Set8 wBattle_CopyBuffer_ListIndex, \1
    ld bc, wText_StringBuffer
    FSet16 wBattle_CopyBuffer_Destination, bc
    Do_CallForeign CopyDreamCreatureNameToBuffer
    IF FIX_BUGS == 1
        Set8 (wText_StringBuffer + Creature_NAMESIZE), "🔊"
    ELSE
        Set8 (wMenu_Battle_TableRowBuffer + Creature_NAMESIZE), "🔊" ; BUG! This line is applied to the wrong buffer! I guess previously wMenu_Battle_TableRowBuffer was used until it was changed for wText_StringBuffer and they forgot to change this one
    ENDC
    Set16_M wText_StringFormatFrame, wText_StringBuffer
ENDM

MACRO Battle_SetScriptText
    ; Sets wScript_Text
    ; Inputs:
    ;   \1 = Script BankAddress
    ld hl, wScript_Text.Bank
    Set8 hl+, BANK(\1)
    Set8 hl+, LOW(\1)
    Set8 hl+, HIGH(\1)
    Set8 hl+, LOW(Script_Start)
    Set8 hl+, HIGH(Script_Start)
ENDM

MACRO Battle_AwaitTextbox
    ; This Macro is a submacro of Battle_TextboxClose and Battle_TextboxOpen
    ; Wait until the textbox is opened or closed
    ; Inputs:
    ;   \1 = CLOSED or OPEN
    .Wait\@:
        ld a, [wTextbox_Position]
        cp Textbox_\1
        jr z, .Done\@
        call System_UpdateGame
        jr .Wait\@
    .Done\@:
ENDM

MACRO Battle_TextboxClose
    ; Closes the textbox and continues running once the textbox is properly closed
    Battle_SetScriptText SCRIPT_Battle_TextboxClose
    Battle_AwaitTextbox CLOSED
ENDM

MACRO Battle_TextboxOpen
    ; Opens the textbox and continues running once the textbox is properly open
    Battle_SetScriptText SCRIPT_Battle_TextboxOpen
    Battle_AwaitTextbox OPEN
ENDM