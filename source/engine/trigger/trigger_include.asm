
DEF TRIGGER_NORMAL EQU $00 ; Triggers only when tile is triggered
DEF TRIGGER_CONFIG EQU $01 ; Gets triggered immediately when the triggers are loaded. Also can be triggered when the tile is triggered

DEF TRIGGER_TREASUREOPEN EQU $FF ;pattern id of open treasure chest

Macro Trigger_CheckVarbit
	; Checks if the varbit is %0 or %1 and sets the zf accordingly
	;
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ld a, b
    and c
ENDM

Macro Trigger_SetVarbit
	; Sets a varbit to %1
	;
	; Inputs:
    ; 	de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    Battery_On
    ld a, b
    or c
    ld [de], a
    Battery_Off
ENDM


Macro Trigger_FlipVarbit
	; flips a varbit between %1 and %0
	;
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    Battery_On
    ld a, b
    xor c
    ld [de], a
    Battery_Off
ENDM