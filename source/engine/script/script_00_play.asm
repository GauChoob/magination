
Script_Play::
    ; Used to start a script thread that reads Magi Nation Opcodes. Enters at [hScript.State] - most commonly Script_Start
    ;
    ; Inputs:
    ;   [hScript.Bank] - bank of data
    ;   [hScript.Frame] - address of data
    ;   [hScript.State] - function to run to interpret data
    PushROMBank
    ldh a, [hScript.Bank]
    bit 7, a
    jr z, .ScriptBank
        ld a, ScriptXX_BANK ; Valid banks only go to 127. Bit 7 specifies the secondary script bank
    .ScriptBank:
    SwitchROMBank a
    FGet16 bc, hScript.Frame
    Get16 hl, hScript.State
    call CallHL
    PopROMBank
    ret


Script_Start::
    ; Reads the opcode at the current frame
    ; and executes that opcode
    ; The frame is shifted forward by 1 (since the opcode is read)
    ; Inputs:
    ;   bc - from hScript.Frame
    ;   hScript.Bank - bank of the frame
    ; Outputs:
    ;   pc = hScript.State = Script_Table + 2*[bc] (opcode jump table)
    ;   hScript.Frame = bc = bc+1
    Script_ReadByteA

    add a   ;de = 2*a
    ld e, a
    ld d, $00
    rl d

    FSet16 hScript.Frame, bc ; Update frame

    ld hl, Script_Table
    add hl, de      ;hl = Script_Table + 2*a
    SwitchROMBank BANK(Script_Table)
    DerefHL

    SwitchROMBank [hScript.Bank]
    Set16 hScript.State, hl

    jp hl