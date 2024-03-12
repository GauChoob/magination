INCLUDE "source/main/vectors_00.asm"
INCLUDE "source/main/header_00.asm"

; Game setup
INCLUDE "source/main/boot_00.asm"

; Error message when using MGB
INCLUDE "source/main/notcgb_00.asm"

; Main logic loop
INCLUDE "source/main/gameloop_00.asm"

; Actor
; Only contains an actor ID -> lookup data
INCLUDE "source/engine/actor/actor_00.asm"

; System
INCLUDE "source/engine/system/math/math_00.asm"
INCLUDE "source/engine/system/graphics/frame/frame_00.asm"
INCLUDE "source/engine/system/sound/sound_vblank_00.asm"
INCLUDE "source/engine/system/system_00.asm"

; Engine
INCLUDE "source/engine/rle_decompress_00.asm"
INCLUDE "source/engine/hotspot/hotspot_00.asm"






    ; source/engine/script/script_play.s


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



INCLUDE "source/engine/actor/actor_script.asm"
INCLUDE "source/engine/system/sound/sound_script.asm"

    ; source/engine/script/modules/script_00_battle.s

    ; $0EC5
Cmd_Battle_New::
    ; Starts a battle
    ; wScript_System - will continue running the script at the end of the battle (TODO to confirm)
    ; Arguments:
    ;   db          Arena index
    ;   db          wBattle_MagiCreatureID
    ;   db          TODO
    ;   BankAddress Script that sets up or runs the battle - TODO
    Mov8 wHero_DoorX, wActor_Hero.XTile
    Mov8 wHero_DoorY, wActor_Hero.YTile

    SwitchRAMBank BANK("WRAM BATTLE")

    Script_ReadByte_V [wFightscene_ArenaIndex]

    ; Store the enemy magi ID
    Script_ReadByteA
    ld [wBattle_MagiCreatureID], a
    ; Set whether Tony can run from the battle (yes if no enemy magi)
    cp CreatureID_NoMagi
    jr z, .NoMagi
    .HasMagi:
        xor a
        jr .Finally
    .NoMagi:
        ld a, $01
    .Finally:
    ld [wBattle_RunEnabled], a

    Script_ReadByte_V [$D36D]

    ld hl, wScript_Master.Bank
    LdHLIBCI
    LdHLIBCI ; wScript_Master.Frame
    LdHLIBCI

    xor a
    ld [$D0D7], a   ; TODO

    ; TODO
    Set16_M wScript_Master.State, Script_Start
    Set16FF_V hScript.Frame, bc
    Set16FF hScript.State, Call_000_0F59
    Set16FF hScript_CurrentAddress, wScript_System
    call Script_Close
    XJump Cardscene_Open


    ld a, $04
    call Battle02_00_CopyFromFrame
    jp $73AC

Call_000_0F39:
    Set16FF hScript.State, Call_000_0F39
    xor a
    ld [$D3C2], a
    ret

    ; $0F46
    ld a, $04
    call Battle02_00_CopyFromFrame
    jp Call_002_73DD


    jp $7449

    ; $0F51
    ld a, $01
    call Battle02_00_CopyFromFrame
    jp $744A

    ; $0F59
Call_000_0F59:
    ; TODO - probably holds wScript_System until $D3C2 is set (?battle is over perhaps), and then will run wScript_System
    xor a
    ld [$D3C2], a
    Set16FF hScript.State, Call_000_0F66
    ret

    ; $0F66
Call_000_0F66:
    ld a, [$D3C2]
    and a
    ret z

    jp Script_Start


    ld a, $02
    call Battle02_00_CopyFromFrame
    jp $7477


    ld a, $04
    call Battle02_00_CopyFromFrame
    xor a
    ld [$D396], a
    jp $752D

    ; $0F82
    ld a, $05
    call Battle02_00_CopyFromFrame
    jp $752D


    ld a, $04
    call Battle02_00_CopyFromFrame
    jp $7595

    ; $0F92
Cmd_Battle_Swirl::
    ; Pause the game and do a white swirl, indicating the start of a battle
    ; Also, backup the current song and play a song for the battle
    ; Arguments:
    ;   dw Graphics_ScreenFX function (should be Graphics_ScreenFX_Swirl_Do) - todo are there any other valid inputs?
    ;   db songid - battle song
    ; Outputs:
    ;   wSound_SceneSongBackupID - contains the old song

    ; Store the Graphics_ScreenFX function
    Script_MovWord wGraphics_ScreenFX_Function

    ; Back-up the current song, and play the new song if it is not null 
    Mov8 wSound_SceneSongBackupID, wSound_CurrentSong
    Script_ReadByteA
    push bc
    cp SOUND_NULL
    jr z, .Skip
        Sound_Request_StartSong a
    .Skip:
    pop bc
    Set16FF_V hScript.Frame, bc
    Set16FF hScript.State, Script_Start
    XJump Graphics_ScreenFX_Do

    ; $0FDF
    SwitchRAMBank BANK("WRAM BATTLE")
    ld hl, $D3CD
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    jp Script_Start

    ; $0FFE
    ld a, $01
    ld [wEncounter_Enabled], a
    ld a, $FF
    ld [$C6D7], a
    ld hl, $C6DB
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    ld hl, $C6D9
    LdHLIBCI
    LdHLIBCI
    jp Script_Start


Battle02_00_CopyFromFrame:
    ; Copies "a" bytes from the reading frame into the buffer
    ; Then saves the updated frame
    ; Arguments:
    ;   a = number of bytes to copy
    ;   bc = reading frame
    ld l, c
    ld h, b
    ld de, wBattle_Buffer
    ld c, a
    ld b, $00
    SwitchRAMBank BANK("WRAM BATTLE")
    call MemMov
    Set16FF_V hScript.Frame, hl
    Set16FF hScript.State, Script_Start
    SwitchROMBank BANK(Battle_Attack_Table) ; TODO change to file
    ret


    ; $1049
Cmd_Fightscene_FightFX_BlowAway::
    ; Inputs:
    ;   None
    Fightscene_FightFX_MoveTable_Load Fightscene_FightFX_MoveTable_BlowAway
    jp Fightscene_FightFX_MoveTableInit

    ; $105B
Cmd_Fightscene_LoadArena::
    ; Loads the horizontally-scrolling part of the Start Screen
    ; This erases some unimportant temporary variables in the WRAM
    ; Arguments:
    ;   db  The ID of the start screen e.g. FIGHTSCENE_ARENA_Arderial
    Get8 e, wFightscene_ArenaIndex
    push de
    Script_ReadByte [wFightscene_ArenaIndex]
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    XCall Fightscene_LoadArena
    pop de
    Set8 wFightscene_ArenaIndex, e
    ret

    ; $1088
Cmd_Fightscene_LoadCreatureLeft::
    ; Loads a creature into the left side of the fightscene
    ; Arguments:
    ;   db  CreatureID
    Script_ReadByte [wTemp_8.Fightscene_CreatureID]
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    xor a
    ld [wTemp_9.Palette_BattleFX_CreatureIsRight], a
    XCall Fightscene_LoadCreature
    ret

    ; $10AF
Cmd_Fightscene_New::
    ; Starts a Fightscene.
    ; TODO - Loops forever unless explicitly cancelled(?) by the script
    ; Arguments
    ;   db wFightscene_ArenaIndex
    ;   db wFightscene_CreatureLeft_ID
    ;   db wFightscene_CreatureRight_ID
    Script_ReadByte [wFightscene_ArenaIndex]
    Script_ReadByte [wFightscene_CreatureLeft_ID]
    Script_ReadByte [wFightscene_CreatureRight_ID]
    Set8 wFightscene_Start, $01

    Set16 hScript.Frame, bc
    Set16_M hScript_CurrentAddress, wScript_Master
    Set16_M hScript.State, Script_Start
    call Script_Close
    call ScreenHide
    call Interrupt_Timer_Start
    call Interpreter_ReInit
    XCall Fightscene_Init
    call System_Script_SceneInit
    call ScreenShow

    .Loop:
        XCall Fightscene_HandleButtons
        call Fightscene_Update
        jr .Loop

    ; $110C
Cmd_Fightscene_FightFX_PanFromTable::
    ; Pans the camera right, reading the data from the specified table for the specified number of frames
    ; Arguments:
    ;   ds 1  wFightscene_FightFX_Pan_RightDirection (nz = Right, z = Left)
    ;   ds 2  Pointer to Fightscene_FightFX_PanTable_Regular, Fightscene_FightFX_PanTable_Fast or Fightscene_FightFX_PanTable_Slow
    .Init:
        Set8FF hScript.BigCounter, $01 ; Number of frames each instruction should last (therefore the first instruction is hard-coded to always last 1 frame)
        xor a
        ldh [hScript.SmallCounter], a ; Reading frame offset
        Set16_M hScript.State, .MainLoop
        Set16 hScript.Frame, bc
        ret
    .MainLoop:
        ; The same data is read every frame
        Script_ReadByte [wFightscene_FightFX_Pan_RightDirection]
        Script_MovWord wFightscene_FightFX_Pan_TableAddress
        XCall Fightscene_FightFX_PanFromTable
        ret

    ; $1141
Cmd_Fightscene_FightFX_Ready::
    ; Removed opcode - does not feature in the command list
    ; Identical to Cmd_System_SceneReady
    ; Inputs:
    ;   None
    Set8 wScript_SceneReady, $01
    Set16_M hScript.State, Script_Start
    ret

    ; $1151
Cmd_Fightscene_FightFX_Recoil::
    ; Inputs:
    ;   None
    Fightscene_FightFX_MoveTable_Load Fightscene_FightFX_MoveTable_Recoil
    jr Fightscene_FightFX_MoveTableInit

    ; $1162
Cmd_Fightscene_FightFX_UNKTODO::  ; TODO find the name of the movetable and rename this command
    ; Inputs:
    ;   None
    Fightscene_FightFX_MoveTable_Load Fightscene_FightFX_MoveTable_UNKTODO
    jr Fightscene_FightFX_MoveTableInit

    ; $1173
Cmd_Fightscene_FightFX_PanConstant::
    ; Pan at a constant speed in a specified direction for a specified number of frames
    ; Arguments:
    ;   db   Direction; Right = 1, Left = 0
    ;   db   DeltaX per frame
    ;   db   Total number of frames
    .Init:
        Script_ReadByte_V [wFightscene_FightFX_Pan_RightDirection]
        Script_ReadByte_V [wFightscene_FightFX_Pan_DeltaX]
        Script_ReadByteA
        ldh [hScript.SmallCounter], a
        Set16 hScript.Frame, bc
        Set16_M hScript.State, .MainLoop
    .MainLoop
        ldh a, [hScript.SmallCounter]
        and a
        jp z, Script_Start
        dec a
        ldh [hScript.SmallCounter], a
        XCall Fightscene_FightFX_PanApplyDeltaX
        ret

    ; $11A8
Cmd_Fightscene_FightFX_Shake::
    ; Inputs:
    ;   None
    Fightscene_FightFX_MoveTable_Load Fightscene_FightFX_MoveTable_Shake
    jr Fightscene_FightFX_MoveTableInit

    ; $11B9
Cmd_Fightscene_FightFX_Sink::
    ; Inputs:
    ;   None
    Fightscene_FightFX_MoveTable_Load Fightscene_FightFX_MoveTable_Sink
    jr Fightscene_FightFX_MoveTableInit

    ; $11CA
Cmd_Fightscene_FightFX_Tremble::
    ; Inputs:
    ;   None
    Fightscene_FightFX_MoveTable_Load Fightscene_FightFX_MoveTable_Tremble
    ;jr Fightscene_FightFX_MoveTableInit ; Fall through to the next function

    ; $11D9
Fightscene_FightFX_MoveTableInit::
    ; Initialize the associated vars
    xor a
    ld [wFightscene_FightFX_ReadingFrameDelta], a
    ld [wFightscene_FightFX_DelayCount], a
    ld [wFightscene_FightFX_TotalDelay], a
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    ret

    ; $11F6
Cmd_Fightscene_TileFX_DissolveFast::
    ; Inputs:
    ;   None
    Set8 wFightscene_TileFX_ReadingFrameMax, Fightscene_TileFX_DissolveTable_Fast_Pointers_ENTRIES
    Set16_M wFightscene_TileFX_PointerTable, Fightscene_TileFX_DissolveTable_Fast_Pointers
    jr Fightscene_TileFX_MeltInit

    ; $1207
Cmd_Fightscene_TileFX_DissolveSlow::
    ; Inputs:
    ;   None
    Set8 wFightscene_TileFX_ReadingFrameMax, Fightscene_TileFX_DissolveTable_Slow_Pointers_ENTRIES
    Set16_M wFightscene_TileFX_PointerTable, Fightscene_TileFX_DissolveTable_Slow_Pointers
    ;jr Fightscene_TileFX_MeltInit ; Fall through

Fightscene_TileFX_MeltInit:
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    XCall Fightscene_TileFX_Setup
    ret

    ; $1234
INCLUDE "source/engine/expression/expression_00.asm"

;source/engine/script/modules/script_00_flow.s

    ; $13A5
Cmd_Flow_Delay::
    ; Waits X frames before moving on to the next MagiOp
    ; Arguments:
    ;   ds 1    Number of frames to wait
    .Init:
        ; First iteration of the command
        Script_ReadByteA
        ldh [hScript.SmallCounter], a
        Set16 hScript.Frame, bc
        Set16_M hScript.State, .MainLoop
    .MainLoop:
        ldh a, [hScript.SmallCounter]
        and a
        jp z, Script_Start
        dec a
        ldh [hScript.SmallCounter], a
        ret

    ; $13C5
Cmd_Flow_RandDelay::
    ; This function will delay a random amount of time.
    ; The input is a table of $10 bytes. Each byte specifies the amount of delay
    ; A random byte from the table will be selected
    ; The delay is val*4 frames
    ; Arguments:
    ;   dw  pointer to table of size $10 in bank TODO
    .Init:
        Script_ReadWord hl
        SwitchROMBank $01 ;TODO LongRandDelay lookup table to locate
        call Math_Rand8Inc
        and %00001111       ;Random-ish number from 0 to F
        ld e, a
        ld d, $00
        add hl, de
        Set8FF hScript.SmallCounter, [hl]
        Set16 hScript.Frame, bc
        Set16_M hScript.State, .MainLoop
    .MainLoop:
        ldh a, [hTicker]
        and $03
        cp $03
        ret nz                      ;Skip 75% of cycles
        ldh a, [hScript.SmallCounter]
        and a
        jp z, Script_Start       ;Read next instruction after
        dec a
        ldh [hScript.SmallCounter], a
        ret


    ; $1402
Cmd_Flow_End::
    ; Idles forever and sets the thread address to null
    Set8 wScript_Done, $01
    Set16FF hScript.Frame, $0000
    Set16FF hScript.State, Cmd_Flow_End
    ret

    ; $1418
Cmd_Flow_LongJumpIf::
    ; Gets a result from Expr_GetValue
    ; Will jump the bank and pointer to a new location if non-zero
    ; Waits 1 cycle
    ; Arguments:
    ;   Expr
    ;   ds 3    BankAddress
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue
    Battery_Off
    ld a, e
    or d
    jr z, .Zero
    .NonZero:
        Set16 hScript.Frame, bc
        Set16_M hScript.State, Cmd_Flow_LongJump
        ret
    .Zero:
        inc bc ;Skip if non-zero
        inc bc
        inc bc
        Set16 hScript.Frame, bc
        Set16_M hScript.State, Script_Start
        ret

    ; $1459
Cmd_Flow_InitSkip::
    ; Jumps to a new address if LCD is off (i.e. in initialization phase)
    ; Used to skip init code
    ; Arguments:
    ;   ds 2    Address
    ld a, [wScreenVisible]
    and a
    jp z, Cmd_Flow_LocalJump

    inc bc
    inc bc
    jp Script_Start


    ; $1465
Cmd_Flow_LongJump::
    ; Changes hScript.Frame and the hScript.Bank to a new value
    ; Arguments:
    ;   ds 3    BankAddress
    ld a, [bc]
    ld e, a
    ld [hScript.Bank], a
    inc bc
    Script_ReadByte l
    ld a, [bc]
    ld b, a
    ld c, l
    SwitchROMBank e
    jp Script_Start

    ; $147B
Cmd_Flow_LocalJump::
    ; Changes the bc pointer to a new value [bc]
    ; i.e. stays in the same bank
    ; Arguments:
    ;   ds 2    Address
    Script_ReadByte l
    ld a, [bc]
    ld b, a
    ld c, l
    jp Script_Start

    ; $1484
Cmd_Flow_RandLongJump::
    ; Jumps to a random address specified in a jump table
    ; Arguments:
    ;   ds 1        N = Number of entries in the table (1-16)
    ;   N*(ds 3)    N x BankAddress
    ;
    ; First, do X = rand(16) mod N
    Script_ReadByte_V l
    call Math_Rand8Inc
    and $0F
    .ModuloLoop:
        cp l
        jr c, .ModuloDone
        sub l
        jr .ModuloLoop
    .ModuloDone:
    ; Then X*3 and use that BankAddress to jump
    ld l, a
    add a
    add l
    ld l, a
    ld h, $00
    add hl, bc
    ld c, l
    ld b, h
    jp Cmd_Flow_LongJump

    ; $149E
Cmd_Flow_Pass::
    ; Display 1 frame and then keep going
    ; Arguments:
    ;   None
    Set16FF_V hScript.State, bc  ; BUG - This should update the FRAME, not the State
                                 ; This line of code might cause problems if preceded by certain commands
    Set16FF hScript.State, Script_Start
    ret

    ; $14AD
Cmd_Flow_SwitchRange::
    ; Gets the result of an expression
    ; Then if the value is within the inclusive range of any of the cases below, LongJump to the new value
    ;
    ; Arguments:
    ;   ds ?    Expr
    ;   {
    ;       db      Bank                   \
    ;       dw      LowerLimit              \
    ;       dw      UpperLimit              /   Jump to BankAddress if   LowerLimit <= Expr <= UpperLimit
    ;       dw      Address                /
    ;   } x N
    ;   db $FF (End of Switch)
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue ; Returned in de
    Battery_Off
    jr .CheckIfEnd
    .FailedLowCheck:
        inc bc
        inc bc
    .FailedHighCheck:
        inc bc
        inc bc
        pop hl
    .CheckIfEnd:
        Script_ReadByte l
        cp $FF
        jr nz, .CheckLowerBound
        jp Script_Start
    .CheckLowerBound:
        ; Check LowerLimit <= Expr
        push hl
        Script_ReadWord hl
        ld a, e
        sub l
        ld a, d
        sbc h
        jr nc, .CheckUpperBound
        jr .FailedLowCheck
    .CheckUpperBound:
        ; Check Expr <= UpperLimit
        Script_ReadWord hl
        ld a, l
        sub e
        ld a, h
        sbc d
        jr nc, .FoundMatch
        jr .FailedHighCheck
    .FoundMatch:
        pop hl
        Script_ReadByte e
        ld a, [bc]
        ld b, a
        ld c, e
        Set8 hScript.Bank, l
        SwitchROMBank l
        jp Script_Start

    ; $1504
Cmd_Flow_ResetScript::
    ; TODO - clarify what this is used for
    ; Hypothesis is that it marks the end of a script segment (hence Done), but jumps
    ; Or else it's an internal function for BattleFX for example
    ld a, [bc]
    ldh [hScript.Bank], a
    inc bc
    ld a, [bc]
    ldh [hScript.Frame], a
    inc bc
    ld a, [bc]
    ldh [hScript.Frame+1], a
    Set8 wScript_Done, $01
    Set16_M hScript.State, Script_Start
    ret

    ; $151F
Cmd_Flow_Switch::
    ; Gets the result of an expression
    ; Then if the value matches any of the cases below, LongJump to the new value
    ;
    ; Arguments:
    ;   ds ?    Expr
    ;   {
    ;       db      Bank
    ;       dw      case
    ;       dw      Address
    ;   } x N
    ;   db $FF (End of Switch)
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue
    Battery_Off
    jr .CheckIfEnd
    .CaseNotMatchLow:
        inc bc
    .CaseNotMatchHigh:
        inc bc
        inc bc
    .CheckIfEnd:
        Script_ReadByte l
        cp $FF
        jr nz, .CheckCaseMatch
            jp Script_Start
    .CheckCaseMatch:
        Script_ReadByteA
        cp e
        jr nz, .CaseNotMatchLow
        Script_ReadByteA
        cp d
        jr nz, .CaseNotMatchHigh
        Script_ReadByte e
        ld a, [bc]
        ld b, a
        ld c, e
        Set8 hScript.Bank, l
        SwitchROMBank l
        jp Script_Start

; source/engine/script/modules/script_00_frame.s

    ; $1560
Cmd_Frame_SpriteDraw::
    ; Moves the current Actor and then draws a sprite
    ; This opcode takes a list of 5-byte commands
    ; Arguments:
    ;   {
    ;       db  Number of frames to do the movement
    ;       db  DeltaX per frame
    ;       db  DeltaY per frame
    ;       dw  Address of Actor Sprite data (must be in same bank as magiscript)
    ;   } x N
    ;   db $00 to terminate list of movement commands
    .Init:
        ; Read a 5-byte command
        Script_ReadByteA
        and a
        jp z, Script_Start ; End byte

        ldh [hScript.SmallCounter], a ; Save the number of frames to loop the command
        FSet16 hScript.Frame, bc
        Set16_M hScript.State, .Loop
    .Loop:
        ld h, b
        ld l, c
        Set8 wColl_XMove, [hl+]
        Set8 wColl_YMove, [hl+]
        ld a, [hl+]
        ld e, a
        ld a, [hl+]
        ld d, a
        ld c, l
        ld b, h
        ld l, e
        ld h, d
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .PrepNextLoop
            ldh [hScript.SmallCounter], a
            call Frame_Draw
            ret
        .PrepNextLoop:
            Set16 hScript.Frame, bc
            call Frame_Draw
            Set16_M hScript.State, Cmd_Frame_SpriteDraw
            ret

    ; $15AB
Cmd_Frame_SpriteInvisible::
    ; Moves the current Actor and but draws no sprite (invisible)
    ; This opcode takes a list of 3-byte commands
    ; Arguments:
    ;   db  Number of frames to do the movement (0 is ignored)
    ;   db  DeltaX per frame
    ;   db  DeltaY per frame
    .Init:
        Script_ReadByteA
        and a
        jp z, Script_Start
        ldh [hScript.SmallCounter], a
        FSet16 hScript.Frame, bc
        Set16_M hScript.State, .Loop
    .Loop:
        ld h, b
        ld l, c
        Set8 wColl_XMove, [hl+]
        Set8 wColl_YMove, [hl+]
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .PrepNextLoop
            ldh [hScript.SmallCounter], a
            ret
        .PrepNextLoop:
            Set16 hScript.Frame, hl
            Set16_M hScript.State, Script_Start
            ret

    ; $15E8
Cmd_Frame_SpriteBlock::
    ; Moves the current Actor with a single command but with a set of various sprites
    ; Arguments:
    ;   db  (2*Number of different sprites), i.e. the length of the table
    ;   db  Number of frames for each sprite
    ;   db  DeltaX per frame
    ;   db  DeltaY per frame
    ;   dw*N  pointers to sprites
    .Init:
        ; The BigCounter is the relative offset for the sprite pointers
        ; $00 points to the first entry, $02 to the second entry
        xor a
        ldh [hScript.BigCounter], a
        ; SmallCounter keeps track of the frames for a specific sprite
        inc bc
        ld a, [bc]
        dec bc
        ldh [hScript.SmallCounter], a
        Set16_M hScript.State, .Loop
    .Loop:
        ; Prep the XMove and YMove for Draw_Frame
        ld h, b
        ld l, c
        inc hl
        inc hl
        Set8 wColl_XMove, [hl+]
        Set8 wColl_YMove, [hl+]
        ; Get the offset pointing to the desired sprite
        ldh a, [hScript.BigCounter]
        ld e, a
        ld d, $00
        add hl, de
        ; dec SmallCounter to see if it's the last frame of the current sprite or not
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .LastFrameOfSprite
        .NotLastFrameOfSprite:
            ; It's not the last frame
            ldh [hScript.SmallCounter], a
            jr .DrawSprite
        .LastFrameOfSprite:
            ; It's the last frame.
            ; Increment BigCounter by 2 to point to the next address for the next frame
            Script_ReadByteA
            ld e, a
            ldh a, [hScript.BigCounter]
            inc a
            inc a
            ; If next frame we are going to point to an address that's out of the table
            ; We know we are done
            cp e
            jr z, .Finished
            .NotFinished:
                ; Update the Counters for next frame
                ldh [hScript.BigCounter], a
                ld a, [bc]
                ldh [hScript.SmallCounter], a
                jr .DrawSprite
    .Finished:
        ld b, h
        ld c, l
        inc bc
        inc bc
        Set16 hScript.Frame, bc
        Set16_M hScript.State, Script_Start
        ;jr .DrawSprite   ;We still want to draw the very last frame before quitting
    .DrawSprite:
        DerefHL ; Deref the pointer to the actual sprite
        call Frame_Draw
        ret

    ; $1643
Cmd_Frame_OverlayDraw::
    ; Moves the current Actor and then draws a sprite related to the corner of the screen
    ; This opcode takes a list of 5-byte commands
    ; Inputs:
    ;   I believe hActor.XTile and hActor.YTile are in absolute OAM coordinates. TODO confirm
    ; Arguments:
    ;   {
    ;       db  Number of frames to do the movement
    ;       db  Delta X per frame
    ;       db  Delta Y per frame
    ;       dw  Address of Actor Sprite data (must be in same bank as magiscript)
    ;   } x N
    ;   db $00 to terminate list of movement commands
    .Init:
        Script_ReadByteA
        and a
        jp z, Script_Start
        ldh [hScript.SmallCounter], a
        FSet16 hScript.Frame, bc
        Set16_M hScript.State, .Loop
    .Loop:
        ; Unused subtile moves; set to 0
        xor a
        ld [wColl_XMove], a
        ld [wColl_YMove], a

        ; Apply Delta X/Y
        ld h, b
        ld l, c
        ld a, [hl+]
        ld b, a
        ldh a, [hActor.XTile]
        add b
        ldh [hActor.XTile], a
        ld a, [hl+]
        ld b, a
        ldh a, [hActor.YTile]
        add b
        ldh [hActor.YTile], a

        ; Get Actor Sprite data into hl
        ld a, [hl+]
        ld e, a
        ld a, [hl+]
        ld d, a
        ld c, l
        ld b, h
        ld l, e
        ld h, d
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .PrepNextLoop
        .NotEnd:
            ldh [hScript.SmallCounter], a
            call Frame_Overlay
            ret
        .PrepNextLoop:
            Set16 hScript.Frame, bc
            call Frame_Overlay
            Set16_M hScript.State, Cmd_Frame_OverlayDraw
            ret

    ; $169B
Cmd_Frame_OverlayInit::
    ; Sets up an overlay
    ; Arguments:
    ;   dw      Pointer to the desired Actor ?TODO hActor vs wActor vs both
    ;   db      Actor.XTile
    ;   db      Actor.YTile
    ;   db      Actor.SpriteBase
    ;   ds 3    BankAddress of script
    ; Get wActor/hActor
    Script_ReadWord_V hl
    ; Actor.State = AI_Overlay
    inc hl
    ld a, LOW(AI_Overlay)
    ld [hl+], a
    ld a, HIGH(AI_Overlay)
    ld [hl+], a
    ; Set XTile, YTile
    inc hl
    inc hl
    LdHLIBCI_V
    LdHLIBCI_V
    ; Set SpriteBase
    inc hl
    inc hl
    LdHLIBCI_V
    call Actor_Init_SetScript0 ;BankAddress
    call Actor_Init_NullScript1
    jp Script_Start

Cmd_Frame_OverlayInvisible::
    ; Equivalent to nop. It doesn't even delay a frame.
    ; Possibly unfinished function vs just a placeholder for clearer code? TODO check
    ; Arguments:
    ;   None
    jp Script_Start


; source/engine/script/modules/script_00_global.s

    ; $16C1
Cmd_Global_ClearSync::
    ; Sets wScript_SyncCount to the specified value at the beginning of next frame
    ;
    ; Arguments:
    ;   db      desired wScript_SyncCount
    ld hl, wScript_SyncNext
    ld a, $01
    ld [hl+], a ;wScript_SyncNext
    ld a, $FF
    ld [hl+], a ;wScript_SyncCurrent
    Script_ReadByteA
    dec a       ;We only want to hit the specified value at the beginning of next frame
    ld [hl+], a ;wScript_SyncCount
    jp Script_Start

    ; $16D1
Cmd_Global_SetAnyEventMaster::
    ld a, [wScript_MasterEventNextID]
    and a
    ret nz

    Set8 wScript_MasterEventNextID, $FF
    jp Script_Start

    ; $16DE
Cmd_Global_SetAnyEventScroll::
    ld a, [wScript_ScrollEventNextID]
    and a
    ret nz

    Set8 wScript_ScrollEventNextID, $FF
    jp Script_Start

    ; $16EB
Cmd_Global_SetAnyEventText::
    ld a, [wScript_TextEventNextID]
    and a
    ret nz

    Set8 wScript_TextEventNextID, $FF
    jp Script_Start

    ; $16F8
Cmd_Global_SetEventMaster::
    ld a, [wScript_MasterEventNextID]
    and a
    ret nz

    Script_ReadByte_V [wScript_MasterEventNextID]
    jp Script_Start

    ; $1705
Cmd_Global_SetEventScroll::
    ld a, [wScript_ScrollEventNextID]
    and a
    ret nz

    Script_ReadByte_V [wScript_ScrollEventNextID]
    jp Script_Start

    ; $1712
Cmd_Global_SetEventText::
    ld a, [wScript_TextEventNextID]
    and a
    ret nz

    Script_ReadByte_V [wScript_TextEventNextID]
    jp Script_Start

    ; $171F
Cmd_Global_SetScriptMaster::
    ; Arguments:
    ;   ds 3 BankAddress of script's new frame
    ld hl, wScript_Master.Bank
    jp Global_SetScript

    ; $1725
Cmd_Global_SetScriptScroll::
    ; Arguments:
    ;   ds 3 BankAddress of script's new frame
    ld hl, wScript_Scroll.Bank
    jp Global_SetScript

    ; $172B
Cmd_Global_SetScriptText::
    ; Inputs:
    ;   wTextbox_Position - command is refused if textbox is busy
    ; Inputs:
    ;   wTextbox_Position
    ; Arguments:
    ;   ds 3 BankAddress of script's new frame
    ld a, [wTextbox_Position]
    cp Textbox_BUSY
    ret z
    ld hl, wScript_Text.Bank
    jp Global_SetScript

    ; $1737
Cmd_Global_Sync::
    ; TODO
    ; Arguments:
    ;   db  Sync parameter - must be <= SyncCount, or else waits
    ;   db  Sync parameter - waits until == wScript_SyncCurrent, or else increments wScript_SyncCurrent
    .Init:
        ; Wait until wScript_SyncCount >= Param1
        ld a, [bc]
        ld e, a
        ld a, [wScript_SyncCount]
        cp e
        ret c

        inc bc
        Set16 hScript.Frame, bc
        ld hl, wScript_SyncNext ; += 1
        inc [hl]
        Set16_M hScript.State, .WaitSync
        ret
    .WaitSync:

        ld hl, wScript_SyncCurrent
        Script_ReadByte e
        ld a, [hl-] ; wScript_SyncCurrent
        and a
        jr z, .Return
            cp e
            ret c

            ld a, $01
            ld [hl+], a ; wScript_SyncNext
            ld a, $FF
            ld [hl+], a ; wScript_SyncCurrent
            ret
        .Return:
            Set16 hScript.Frame, bc
            Set16_M hScript.State, Script_Start
            ret

    ; $177C
Cmd_Global_WaitAnyEventMaster::
    ; Delays until EventID is non-zero
    ; Arguments:
    ;   None
    ld a, [wScript_MasterEventID]
    jp Global_WaitAnyEvent

    ; $1782
Cmd_Global_WaitAnyEventScroll::
    ; Delays until EventID is non-zero
    ; Arguments:
    ;   None
    ld a, [wScript_ScrollEventID]
    jp Global_WaitAnyEvent

    ; $1788
Cmd_Global_WaitAnyEventText::
    ; Delays until EventID is non-zero
    ; Arguments:
    ;   None
    ld a, [wScript_TextEventID]
    jp Global_WaitAnyEvent

    ; $178E
Cmd_Global_WaitEventMaster::
    ; Delays until EventID is equal to argument
    ; Arguments:
    ;   db      Desired EventID
    ld a, [wScript_MasterEventID]
    jp Global_WaitEvent

    ; $1794
Cmd_Global_WaitEventScroll::
    ; Delays until EventID is equal to argument
    ; Arguments:
    ;   db      Desired EventID
    ld a, [wScript_ScrollEventID]
    jp Global_WaitEvent

    ; $179A
Cmd_Global_WaitEventText::
    ; Delays until EventID is equal to argument
    ; Arguments:
    ;   db      Desired EventID
    ld a, [wScript_TextEventID]
    jp Global_WaitEvent


    ; $17A0
Global_SetScript::
    ; Sets a new reading Frame for a script (Master, Scroll or Text)
    ; Inputs:
    ;   hl = wScript.Bank
    ; Arguments:
    ;   ds 3 BankAddress of script's frame
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    ld a, LOW(Script_Start)
    ld [hl+], a
    ld a, HIGH(Script_Start)
    ld [hl+], a
    jp Script_Start

    ; $17B2
Global_WaitAnyEvent::
    ; Passes to the next command if wScript_???EventID is non-zero
    ; Inputs:
    ;   wScript_???EventID
    and a
    ret z

    Set16_M hScript.State, Script_Start
    ret

    ; $17BF
Global_WaitEvent::
    ; Passes to the next command if wScript_???EventID is equal to the Argument
    ; Inputs:
    ;   wScript_???EventID
    ; Arguments:
    ;   db  ID that must match the EventID
    ld d, a
    ld a, [bc]
    cp d
    ret nz
    inc bc
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    ret

    ; $17D7
Cmd_Load_LargeStaticTilemap::
    ; Unpacks a $20 x $20 size static tilemap
    ; Inputs:
    ;   ds 3    AddressBank of STATICMAP
    Script_Unpack Unpack_AttrTileRLE_To_LargeStaticTilemap
    jp Script_Start

    ; $17FA
Cmd_Load_Hotspots::
    Script_ReadWord hl
    SwitchROMBank Hotspot_BANK ;Todo replace with a real address reference
    Set8 wHotspot_TableSize, [hl+]
    Set16 wHotspot_Table, hl
    SwitchROMBank [hScript.Bank]
    jp Script_Start

    ; $1820
Cmd_Load_Scene::
    ; Loads multiple data files of a scene
    ; Arguments:
    ;   AddressBank Scene file
    ;       contains
    ;           Background palette
    ;           BitmapSet
    ;           Pattern
    ;           MetaTilemap
    ;           CollisionMap
    Script_Unpack Unpack_Scene
    jp Script_Start

    ; $1843
Cmd_Load_SpritePalette::
    ; Loads an 8-palette sprite palette
    ; It writes the data into wPalette_BaseBuffers.Sprite, wPalette_AnimBuffers.Sprite and rOCPS
    ; Arguments:
    ;   ds 3    AddressBank of a full set of 8 palettes
    Script_Unpack Unpack_Palette_Sprite
    jp Script_Start

    ; $1866
Cmd_Load_Map::
    ; Loads a map, without loading the base graphics (see Cmd_Load_Scene for comparison)
    ; Arguments:
    ;   AddressBank MetaTilemap
    ;   AddressBank CollisionMap
    Script_Unpack Unpack_MetaTilemap
    Script_Unpack Unpack_CollisionMap
    jp Script_Start

    ; $18A9
Cmd_Load_MapMask::
    ; Loads a map mask. The map mask contains alternative tiles that are copied over the main map
    ; e.g. You can copy over an opened door, or remove an obstacle, depending on gameplay progression
    ; The specified tiles are only copied when used in conjunction with Cmd_Scroll_TransplantMapMask
    ; Usually, the map masks are identical size to the actual map.
    ; The mask files are identical in format to regular MetaTilemaps and Collisionmaps, although the
    ; headers are completely ignored.
    ; Arguments:
    ;   AddressBank MetaTilemap Mask
    ;   AddressBank Collisionmap Mask
    Script_Unpack Unpack_MaskMetaTilemap
    Script_Unpack Unpack_MaskCollisionMap
    jp Script_Start

    ; $18EC
Cmd_Load_Triggers::
    ; Loads triggers and runs all the config triggers
    ; Needs to be run by wScript_Master while the screen is off
    ; Arguments:
    ;   dw TriggerTable
    Script_ReadWord hl
    push bc
    call Trigger_LoadTable
    SwitchROMBank [hScript.Bank]
    pop bc
    jp Script_Start

    ; $1903
Cmd_Load_BitmapSet::
    ; Loads a bitmaps collection and a corresponding palette for the background
    ; The palette is copied into wPalette_BaseBuffers.Background, wPalette_AnimBuffers.Background and rBCPS
    ; Arguments:
    ;   AddressBank BitmapSet
    ;   AddressBank Palette
    Script_Unpack Unpack_BitmapSet
    Script_Unpack Unpack_Palette_Background
    jp Script_Start

    ; $1946
Cmd_Load_Bitmap::
    ; Copies a tileset into VRAM
    ; You cannot specify width
    ; This function can be run when the screen is visible
    ;
    ; Arguments:
    ;   db Number of tiles to copy i.e. size
    ;   BankAddress source tileset
    ;   dw destination address
    ;   db destination VBK bank

    .Init:
        ; Number of tiles to copy
        Script_ReadByteA
        ldh [hScript.SmallCounter], a

        Script_ReadByte [wVBlank_Bank]
        Script_MovWord wVBlank_SourceAddress
        Script_MovWord wVBlank_DestAddress
        Script_ReadByte [wVBlank_DestVBK]

        Set16 hScript.Frame, bc
        Set16_M hScript.State, .MainLoop

    .MainLoop:
        ; Copy one tile per frame
        Set16_M wVBlank_Func, Interrupt_VBlankFunc_CopyTile
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .Finally
        ldh [hScript.SmallCounter], a
        ret

    .Finally:
        Set16_M hScript.State, Script_Start
        ret

    ; $1997
Palette_ReadPackedLoop::
    ; Preps a byte that's a packed loop byte
    ; DOES NOT increment hScript.Frame
    ; Arguments:
    ;   db - packed loop byte
    ; Outputs:
    ;   hScript.BigCounter <- db & %00111111                (0-$3F)
    ;   hScript.SmallCounter <- (db & %11000000) >> 6 + 1   (1-4)
    ;   hScript.Frame is NOT incremented
    Set16 hScript.Frame, bc
    call Palette_ReadPackedLoop_BigCounter
    call Palette_ReadPackedLoop_SmallCounter
    dec bc
    ret

    ; $19A7
Palette_ReadPackedLoop_BigCounter::
    ; Preps a byte that's a packed loop byte
    ; DOES NOT increment hScript.Frame
    ; Arguments:
    ;   db - packed loop byte
    ; Outputs:
    ;   hScript.BigCounter <- db & %00111111                (0-$3F)
    ;   hScript.Frame is NOT incremented
    ld a, [bc]
    and %00111111
    ldh [hScript.BigCounter], a
    ret

    ; $19AD
Palette_ReadPackedLoop_SmallCounter::
    ; Preps a byte that's a packed loop byte
    ; INCREMENTS hScript.Frame
    ; Arguments:
    ;   db - packed loop byte
    ; Outputs:
    ;   hScript.SmallCounter <- (db & %11000000) >> 6 + 1   (1-4)
    ld a, [bc]
    and %11000000
    swap a
    rra
    rra
    inc a
    ldh [hScript.SmallCounter], a
    inc bc
    ret


    ; $19B9
Palette_ReadColor::
    ; Preps a word that's a Color
    ; If the 16th bit is set (i.e. transparent Color), load wFightscene_ArenaColor which represents the background Color
    ; Arguments:
    ;   dw      Color - The 16th bit signifies transparency
    ; Output:
    ;   wTemp_A.Palette_SetColor <- Color, unless 16th bit is set, then uses wFightscene_ArenaColor instead
    Script_MovWord_V wTemp_A.Palette_SetColor
    bit 7, a
    ret z ;If the 16th bit is set, the color is transparent and so use the background arena color instead
        Mov16 wTemp_A.Palette_SetColor, wFightscene_ArenaColor
        ret

    ; $19D3
Palette_ReadPackedInterval::
    ; Preps a byte that's a packed palette interval
    ; Argument:
    ;   db      wTemp_8.Palette_PackedInterval
    ; Output:
    ;   wTemp_8.Palette_PackedInterval <- db
    Script_ReadByte [wTemp_8.Palette_PackedInterval]
    ret

    ; $19D9
Palette_ReadClearArguments::
    ; Used in the two palette clear commands to fetch arguments. Updates the frame
    ;
    ; Arguments:
    ;   db      wTemp_8.Palette_PackedInterval
    ;   dw      Color - The 16th bit signifies transparency
    ; Outputs:
    ;   wTemp_8.Palette_PackedInterval <- db
    ;   wTemp_A.Palette_SetColor <- Color, unless 16th bit is set, then uses wFightscene_ArenaColor instead
    call Palette_ReadPackedInterval
    call Palette_ReadColor
    Set16 hScript.Frame, bc
    ret


    ; $19E8
Palette_LoopFinally::
    ; After a looping function triggers a palette function (i.e. when hScript.SmallCounter hits 0)
    ; Make sure VBlank pushes the palette updates
    ; Also, check to see if the total number of iterations is completed
    ; If so, then update the Frame past the current command to run the next command
    ; Or else, continue reading the same command to continue the loop
    ; Inputs:
    ;   hScript.BigCounter = The number of iterations left (including current iteration)
    ; Outputs:
    ;   wVBlank_Bank / wVBlank_Func <- PaletteVB_UpdatePalettes
    ;   If hScript.BigCounter == 1
    ;       wMenu_MainMenu_Disabled = 0
    ;       hScript.Frame = next command
    ;       hScript.State = Script_Start
    Set8 wVBlank_Bank, BANK(PaletteVB_UpdatePalettes)
    Set16_M wVBlank_Func, PaletteVB_UpdatePalettes
    ldh a, [hScript.BigCounter]
    dec a
    jr z, .EndOfIterations
    .NextIteration:
        ldh [hScript.BigCounter], a
        ret
    .EndOfIterations:
        xor a
        ld [wMenu_MainMenu_Disabled], a
        Set16 hScript.Frame, bc
        Set16_M hScript.State, Script_Start
        ret

    ; $1A16
Cmd_Palette_ArenaFadeToColor::
    ; Fades the Arena palettes to a single color
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   dw  wTemp_A.Palette_SetColor - Target color
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        call Palette_ReadColor
        Set8 wTemp_B.Palette_FadeMagnitude, $01
        push bc
        XCall Fightscene_ArenaPalFX_FadeArenaToColor
        pop bc
        jp Palette_LoopFinally

    ; $1A44
Cmd_Palette_ArenaFadeToBase::
    ; Fades the Arena palettes to a new palette
    ; The new palette needs to already be loaded into wPalette_BaseBuffers with a previous command
    ; Arguments:
    ;   db  Palette_PackedLoop
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        Set8 wTemp_B.Palette_FadeMagnitude, $01
        push bc
        XCall Fightscene_ArenaPalFX_FadeArenaToBase
        pop bc
        jp Palette_LoopFinally

    ; $1A6F
Cmd_Palette_ClearBase::
    ; Replaces the specified palettes in wPalette_BaseBuffers with a single Color
    ;
    ; Arguments:
    ;   db      wTemp_8.Palette_PackedInterval - Represents the palettes that should be modified
    ;   dw      wTemp_A.Palette_SetColor - The 16th bit signifies transparency (wFightscene_ArenaColor is used instead)
    call Palette_ReadClearArguments
    XCall PaletteFX_ClearBaseBuffer
    Set16_M hScript.State, Script_Start
    ret

    ; $1A88
Cmd_Palette_ClearAnim::
    ; Replaces the specified palettes in wPalette_AnimBuffers with a single Color
    ;
    ; Arguments:
    ;   db  [wTemp_8.Palette_PackedInterval]
    ;   dw  [wTemp_A.Palette_SetColor]
    call Palette_ReadClearArguments
    XCall PaletteFX_ClearAnimBuffer
    Set8 wVBlank_Bank, BANK(PaletteVB_UpdatePalettes)
    Set16_M wVBlank_Func, PaletteVB_UpdatePalettes
    Set16_M hScript.State, Script_Start
    ret

    ; $1AB0
Cmd_Palette_CreatureCycle::
    ; BattleFX - cycles a creature's palette
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  wTemp_9.Palette_BattleFX_CreatureIsRight (0=left creature, 1=right creature)
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ; Main body
        call Palette_ReadPackedLoop_SmallCounter ; Reset the SmallCounter
        Script_ReadByte_V [wTemp_9.Palette_BattleFX_CreatureIsRight]
        push bc
        XCall Fightscene_CreaturePalFX_Cycle
        pop bc
        jp Palette_LoopFinally

    ; $1ADB
Cmd_Palette_CreatureFadeToColor::
    ; BattleFX - fades a creature's palette to a Color
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   dw  wTemp_A.Palette_SetColor
    ;   db  wTemp_9.Palette_BattleFX_CreatureIsRight (0=left creature, 1=right creature)
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter ; Reset the SmallCounter
        call Palette_ReadColor
        Script_ReadByte_V [wTemp_9.Palette_BattleFX_CreatureIsRight]
        Set8 wTemp_B.Palette_FadeMagnitude, $01
        push bc
        XCall Fightscene_CreaturePalFX_FadeToColor
        pop bc
        jp Palette_LoopFinally

    ; $1B0E
Cmd_Palette_CreatureFadeToBase::
    ; Fades the target creature's colors from Anim to Base Buffers
    ; The CreatureLeft function has a few bugs, although CreatureRight works well
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  wTemp_9.Palette_BattleFX_CreatureIsRight (0=left creature, 1=right creature)
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        Script_ReadByte_V [wTemp_9.Palette_BattleFX_CreatureIsRight]
        Set8 wTemp_B.Palette_FadeMagnitude, $01
        push bc
        XCall Fightscene_CreaturePalFX_FadeToBase
        pop bc
        jp Palette_LoopFinally

    ; $1B3E
Cmd_Palette_CreatureLoad::
    ; Loads a palette of a creature
    ; Arguments:
    ;   AddressBank - Creature palette
    ;   db  wTemp_9.Palette_BattleFX_CreatureIsRight (0=left creature, 1=right creature)
    ;
    ; Address
    Script_MovWord_V wTemp_6.Palette_PaletteAddress
    ; Bank
    Script_ReadByte_V [wTemp_7.Palette_PaletteBank]
    ; Creature
    Script_ReadByte_V [wTemp_9.Palette_BattleFX_CreatureIsRight]
    Set16 hScript.Frame, bc
    XCall Fightscene00_LoadCreaturePalette ;inefficiency - XCall, but the function needs to be in ROM0
    Set16_M hScript.State, Script_Start
    ret

    ; $1B70
Cmd_Palette_CreatureFlash::
    ; Swaps a creature's palette's RGB values
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  wTemp_8.Palette_ColorSwapType - PALETTE_SWAP_RB, PALETTE_SWAP_BG, PALETTE_SWAP_RG_Bugged, PALETTE_SWAP_RGB
    ;   db  wTemp_9.Palette_BattleFX_CreatureIsRight (0=left creature, 1=right creature)
    .Init:
        ; First iteration of the command
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        Script_ReadByte_V [wTemp_8.Palette_ColorSwapType]
        Script_ReadByte_V [wTemp_9.Palette_BattleFX_CreatureIsRight]
        push bc
        XCall Fightscene_CreaturePalFX_SwapRGB
        pop bc
        jp Palette_LoopFinally

    ; $1BA0
Cmd_Palette_CreatureInvert::
    ; BattleFX - Inverts a creature's palette once
    ; Arguments:
    ;   db  wTemp_9.Palette_BattleFX_CreatureIsRight (0=left creature, 1=right creature)
    Script_ReadByte [wTemp_9.Palette_BattleFX_CreatureIsRight]
    Set16 hScript.Frame, bc
    XCall Fightscene_CreaturePalFX_Invert
    Set8 wVBlank_Bank, BANK(PaletteVB_UpdatePalettes)
    Set16_M wVBlank_Func, PaletteVB_UpdatePalettes
    Set16_M hScript.State, Script_Start
    ret

    ; $1BD2
Cmd_Palette_Cycle::
    ; Cycles wPalette_AnimBuffers
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  Palette_PackedInterval
    ;   db  wTemp_9.Palette_CyclePattern -> Number of Colors to cycle in each Palette (2 to 4, starting from the right)
    .Init:
        ; First iteration of the command
        Set8 wMenu_MainMenu_Disabled, $01
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        call Palette_ReadPackedInterval
        Script_ReadByte [wTemp_9.Palette_CyclePattern]
        push bc
        XCall PaletteFX_CycleAnimBuffer
        pop bc
        jp Palette_LoopFinally

    ; $1C05
Cmd_Palette_FadeAnimToBase::
    ; Fades wPalette_AnimBuffers towards wPalette_BaseBuffers, magnitude 1 at a time
    ; Every hScript.SmallCounter cycles, apply a fade. Do the fade effect hScript.BigCounter times
    ;
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  Palette_PackedInterval
    .Init:
        ; First iteration of the command
        Set8 wMenu_MainMenu_Disabled, $01
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        call Palette_ReadPackedInterval
        Set8 wTemp_B.Palette_FadeMagnitude, $01
        push bc
        XCall PaletteFX_FadeAnimToBase
        pop bc
        jp Palette_LoopFinally

    ; $1C38
Cmd_Palette_FadeAnimToColor::
    ; Fades to a specific Color
    ; Arguments:
    ;   db  Palette_PackedLoop
    ;   db  Palette_PackedInterval
    ;   dw  Color
    .Init:
        ; First iteration of the command
        Set8 wMenu_MainMenu_Disabled, $01
        Set16_M hScript.State, .MainLoop
        call Palette_ReadPackedLoop
    .MainLoop:
        ; Subsequent iterations of the command
        ; Wait hScript.SmallCounter frames
        ldh a, [hScript.SmallCounter]
        dec a
        ldh [hScript.SmallCounter], a
        ret nz
    .Main:
        ;Main body
        call Palette_ReadPackedLoop_SmallCounter
        call Palette_ReadPackedInterval
        call Palette_ReadColor
        Set8 wTemp_B.Palette_FadeMagnitude, $01
        push bc
        XCall PaletteFX_FadeAnimToColor
        pop bc
        jp Palette_LoopFinally

    ; $1C6E
Cmd_Palette_Load::
    ; Loads a palette
    ; Arguments:
    ;   ds 3    Palette AddressBank
    ;   db      Palette_PackedInterval
    Script_ReadByte_V [wTemp_6.Palette_PaletteAddress]
    Script_ReadByte_V [wTemp_6.Palette_PaletteAddress+1]
    Script_ReadByte_V [wTemp_7.Palette_PaletteBank]
    call Palette_ReadPackedInterval
    Set16 hScript.Frame, bc
    XCall Palette_DecodePaletteInterval
    PushROMBank
    SwitchROMBank [wTemp_7.Palette_PaletteBank]
    Get16 hl, wTemp_A.Palette_PaletteBufferStartAddress
    Get16 bc, wTemp_6.Palette_PaletteAddress
    ld e, $00
    ld a, [wTemp_9.Palette_NumColors]
    call Unpack_Palette_Palettes
    PopROMBank
    Set16_M hScript.State, Script_Start
    ret

    ; $1CCA
Cmd_Palette_Refresh::
    ; Copies the base palette buffer to the anim palette buffer
    ; Arguments:
    ;   db      Palette_PackedInterval
    call Palette_ReadPackedInterval
    Set16 hScript.Frame, bc
    XCall PaletteFX_RefreshAnimBuffer
    Set8 wVBlank_Bank, BANK(PaletteVB_UpdatePalettes)
    Set16_M wVBlank_Func, PaletteVB_UpdatePalettes
    Set16_M hScript.State, Script_Start
    ret

    ; $1CFA
Cmd_Palette_Invert::
    ; Inverts wPalette_AnimBuffers
    ; Arguments:
    ;   db  Palette_PackedInterval
    call Palette_ReadPackedInterval
    Set16 hScript.Frame, bc
    XCall PaletteFX_InvertAnimBuffer
    Set8 wVBlank_Bank, BANK(PaletteVB_UpdatePalettes)
    Set16_M wVBlank_Func, PaletteVB_UpdatePalettes
    Set16_M hScript.State, Script_Start
    ret


    ; $1D2A
Scroll_TrackCamera::
    ; TODO
    ; Arguments:
    ;   db ?
    Get8 h, wTilemap_Flags
    ld l, $02
    ld a, [bc]
    ld d, a
    XJump Scroll00_TrackCamera_XX

    ; $1D3D
Scroll_CenterCamera::
    ; Centers the camera
    ; Inputs:
    ;   e - x-position
    ;   d - y-position
    ; Outputs:
    ;   wTilemap_XTile = e - 5
    ;   wTilemap_YTile = d - 5
    ld l, -5
    ld a, l
    add e
    ld [wTilemap_XTile], a
    ld a, l
    add d
    ld [wTilemap_YTile], a
    jp Script_Start

    ; $1D4C
Cmd_Scroll_CameraSeekPos::
    ; TODO
    ; Does this loop until the camera is done panning?
    ; Arguments:
    ;   db  XTile target
    ;   db  YTile target
    ;   db ??? (? pan speed maybe)
    ld l, -5
    Script_ReadByteA
    add l
    ldh [hScript.SmallCounter], a  ;XTile target
    Script_ReadByteA
    add l
    ldh [hScript.BigCounter], a    ;YTile target
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Scroll_TrackCamera
    ret

    ; $1D6B
Cmd_Scroll_CameraSeekActor::
    ; TODO
    ; Arguments:
    ;   dw  Pointer to Actor structure
    Script_ReadWord hl
    ld de, Actor_OFFSET_XTile
    add hl, de
    ; X
    ld e, -5
    ld a, [hl+]
    ld d, a
    cp $05
    ld a, $00
    jr c, .XChecked  ; Cap a to a minimum 0 if the XTile value <= 4
        ld a, d
        add e
    .XChecked:
    ld [hScript.SmallCounter], a

    ; Y
    ld a, [hl+]
    ld d, a
    cp $05
    ld a, $00
    jr c, .YChecked  ; Cap a to a minimum of 0 if the YTile value <= 4
        ld a, d
        add e
    .YChecked:
    ld [hScript.BigCounter], a

    Set16 hScript.Frame, bc
    Set16_M hScript.State, Scroll_TrackCamera
    ret

    ; $1DA4
Cmd_Scroll_TransplantTile::
    ; Set a single tile of the metatilemap/collisionmap
    ; Ends the frame
    ; Arguments:
    ;   db  Y coordinate
    ;   db  X coordinate
    ;   dw  Destination address onto metatilemap and collisionmap
    ;   db  New collisionmap id
    ;   db  New metatilemap id
    Script_ReadByte e ; Y coordinate
    Script_ReadByte d ; X coordinate
    Script_ReadWord hl
    SwitchRAMBank BANK(wCollisionMap)
    Script_ReadByte_V [hl]
    SwitchRAMBank BANK(wMetatilemap)
    Script_ReadByte_V [hl]
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    XJump ScrollXX_UpdateTile

    ; $1DE1
    ; TODO
    ; Not sure how this is different from Cmd_Scroll_TransplantTile but I guess it is somehow related to the mask
    Script_ReadByte e ; Y coordinate
    Script_ReadByte d ; X coordinate
    Script_ReadWord hl
    push de
    SwitchRAMBank $06
    Script_ReadByte e
    SwitchRAMBank $05
    ld [hl], e
    SwitchRAMBank $04
    Script_ReadByte e
    SwitchRAMBank $03
    ld [hl], e
    pop de
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    XJump ScrollXX_UpdateTile

    ; $1E30
Cmd_Scroll_HeroSetCamera::
    ; Instantly centers camera on hero
    ; Arguments:
    ;   None
    Get8 e, wActor_Hero.XTile
    Get8 d, wActor_Hero.YTile
    Set8 wTilemap_XTileOffset, $08
    Set8 wTilemap_YTileOffset, $08
    jp Scroll_CenterCamera

    ; $1E45
Cmd_Scroll_ScrollMap::
    ; TODO
    ; Arguments:
    ;   {
    ;       db  Number of frames
    ;       db  X-scroll per frame
    ;       db  Y-scroll per frame
    ;   } X N
    ;   db $00 -> End of instructions
    .Init:
        Script_ReadByteA
        and a
        jp z, Script_Start

        ldh [hScript.SmallCounter], a
        Set16 hScript.Frame, bc
        Set16_M hScript.State, .Loop
    .Loop:
        Script_ReadByte_V l
        ld a, [wTilemap_XDelta]
        add l
        ld [wTilemap_XDelta], a
        Script_ReadByte_V l
        ld a, [wTilemap_YDelta]
        add l
        ld [wTilemap_YDelta], a
        ldh a, [hScript.SmallCounter]
        dec a
        jr z, .PrepNextInstruction
        .NotEndOfLoop
            ldh [hScript.SmallCounter], a
            ret
        .PrepNextInstruction:
            ; Loop is over, read the next instruction
            Set16 hScript.Frame, bc
            Set16_M hScript.State, Cmd_Scroll_ScrollMap
            ret

    ; $1E8E
Cmd_Scroll_SetCamera::
    ; Arguments:
    ;   db      XPos
    ;   db      YPos
    Script_ReadByte e  ; XCenter
    Script_ReadByte d  ; YCenter
    ld a, $08
    ld [wTilemap_XTileOffset], a
    ld [wTilemap_YTileOffset], a
    jp Scroll_CenterCamera

    ; $1E9F
Cmd_Scroll_TransplantMap::
    ; Copy a part of the metatilemap/collisionmap to a different part
    ; of the map
    ; Arguments:
    ;   dw  Source address from the metatilemap and collisionmap
    ;   db  Width (tiles) of portion to copy
    ;   db  Height (tiles) of portion to copy
    ;   dw  Destination address onto metatilemap and collisionmap
    ;   db  Y-coordinate
    ;   db  X-coordinate
    Set16_M hScript.State, Scroll_TransplantMap_XX

    .Shared:
    ; Code is shared with Cmd_Scroll_TransplantMapMask because the Arguments are the same

        ld hl, wScript_Scroll_CopySource
        LdHLIBCI
        LdHLIBCI

        Script_ReadByteA
        ldh [hScript.SmallCounter], a ; CopyWidthCounter
        ldh [hScript.BigCounter], a   ; CopyWidth

        Script_ReadByte_V [wScript_Scroll_CopyHeightCounter]

        ld hl, wScript_Scroll_CopyDest
        LdHLIBCI
        LdHLIBCI

        LdHLIBCI ;wScript_Scroll_CopyYCoord
        LdHLIBCI ;wScript_Scroll_CopyXCoord

        Set16 hScript.Frame, bc
        ld hl, hScript.Bank ;Set the upper bit to run Scroll_TransplantMap_XX or Scroll_TransplantMapMask_XX next frame (depending on which Cmd was run)
        set 7, [hl]
        ret

    ; $1EDA
Cmd_Scroll_TransplantMapMask::
    ; With a map mask loaded via Cmd_Load_MapMask,
    ; Copy a part of the map mask onto the real metatilemap and collisionmap
    ; Arguments:
    ;   dw  Source address from the map masks
    ;   db  Width (tiles) of portion to copy
    ;   db  Height (tiles) of portion to copy
    ;   dw  Destination address onto metatilemap and collisionmap
    ;   db  Y-coordinate
    ;   db  X-coordinate
    Set16_M hScript.State, Scroll_TransplantMapMask_XX
    jp Cmd_Scroll_TransplantMap.Shared ; Code is shared with Cmd_Scroll_TransplantMap

    ; $1EE7
    Script_ReadByte_V e
    XJump Jump_001_45E6

    ; $1EF5
System_CopyScriptDataToBuffer::
    ; Copies data from a script function into a WRAM buffer
    ; Inputs:
    ;   bc = Copy header
    ;           ds 3            skipped
    ;           dw              copysize
    ;           ds copysize     raw script data
    ; Output:
    ;       copysize bytes are copied into wScript_Buffer
    ld l, c
    ld h, b
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld de, wScript_Buffer
    SwitchRAMBank BANK(wScript_Buffer)
    call MemMov
    Set16FF hScript.State, Script_Start
    Set16FF_V hScript.Frame, hl
    ret


    ; $1F1A
System_Script_SceneInit::
    ; Runs solely wScript_Master with the screen turned off, until wScript_SceneReady is set to 1
    PushROMBank
    xor a
    ld [wScript_SceneReady], a
    .Loop:
        Script_Do wScript_Master
        SwitchROMBank [wVBlank_Bank]
        Get16 hl, wVBlank_Func
        call CallHL
        ld a, [wScript_SceneReady]
        and a
        jr z, .Loop
    PopROMBank
    ret

    ; $1F50
Cmd_System_SceneUnknownNew::
    ; Re-initializes many aspects of the game
    ; I don't know the difference vs Cmd_System_SceneNew. TODO
    ; Arguments:
    ;   None
    call ScreenHide
    call Interrupt_Timer_Start

    Set16_M hScript_CurrentAddress, wScript_Master
    Set16_M hScript.State, Script_Start
    call Script_Close ;Fake close the script to overwrite the data with the new wScript_Master
    
    call System_Init
    call Interpreter_ReInit ;Disable Scroll and Text scripts
    Script_Init wScript_System ;Disable System script

    StackInit

    call System_Script_SceneInit

    Set8 wTilemap_Width, $20
    ld [wTilemap_Height], a
    ld [wTilemap_HStop], a
    ld [wTilemap_VStop], a
    XCall Tilemap_Clamp

    StackInit
    call ScreenShow
    jp Game_Loop

    ; $1FAF
    ld hl, $C9FC
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    push bc
    XCall Unknown_GetNameAndGiveItem
    SwitchROMBank [hScript.Bank]
    pop bc
    jp Script_Start

    ; $1FD4
    ld hl, $C9FC
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    push bc
    XCall Call_007_7465
    SwitchROMBank [hScript.Bank]
    pop bc
    jp Script_Start

    ; $1FF9
Cmd_System_LoadGame::
    ; Loads the data saved in the saveslot to initialize the game
    ; Jumps to the script pointed to by xLoad_ScriptFrame
    ; If xLoad_ScriptFrame is null, instead of jumping, it will
    ; simply continue reading the next instruction
    ;
    ; Arguments:
    ;   None
    ; Outputs:
    ;   wHero_DoorX < xLoad_HeroXTile
    ;   wHero_DoorY < xLoad_HeroYTile
    ;   If xLoad_ScriptFrame is non-zero
    ;       hScript.Bank < xLoad_ScriptBank
    ;       bc < xLoad_ScriptFrame
    ;       Jump to the new location
    ;   Else
    ;       Keep reading in the same frame
    Battery_SetBank "XRAM Gamestate"
    Battery_On

    Mov8 wHero_DoorX, xLoad_HeroXTile
    Mov8 wHero_DoorY, xLoad_HeroYTile

    Get8 e, xLoad_ScriptBank
    Get16_V hl, xLoad_ScriptFrame
    Battery_Off
    ld a, h
    or l
    jr z, .Finally ; Do not update bc if the frame is 0000. i.e. read the next command

        ; Update the frame if it is non-null
        ld a, e
        ldh [hScript.Bank], a
        SwitchROMBank a

        ld c, l
        ld b, h

    .Finally:
        jp Script_Start

    ; $2035
Cmd_System_CopyLoadGame::
    ; This is used to load the game
    ; A backup of the current saveslot is saved in the other saveslot
    ; then the game is loaded (Cmd_System_LoadGame)
    ; Arguments:
    ;   None
    push bc
    XCall Battery_LoadGame
    pop bc
    jp Cmd_System_LoadGame

    ; $2045
    push bc
    XCall Call_003_50D0
    pop bc
    SwitchROMBank [hScript.Bank]
    jp Script_Start

    ; $205E
Cmd_System_MusicMenu::
    ; Todo
    ; Arguments:
    ;   dw      N = data size
    ;   ds N    raw data of size N
    ;       db  X = number of entries
    ;       X * {
    ;           db songid
    ;           ds $0D Song name (string)
    ;       }
    dec bc
    dec bc
    dec bc
    call System_CopyScriptDataToBuffer
    XCall Menu_Music_Open
    ret

    ; $2070
    push bc
    XCall Call_003_5AAE
    pop bc
    SwitchROMBank [hScript.Bank]
    jp Script_Start

    ; $2089
    XCall Call_004_5494
    SwitchROMBank [hScript.Bank]
    ld a, [$CD1F]
    and a
    jp nz, Cmd_Flow_LongJump

    inc bc
    inc bc
    inc bc
    push bc
    call System_CopyScriptDataToBuffer
    XCall Call_004_5926
    pop bc
    ld a, [$CD49]
    and a
    ret nz

    SwitchROMBank [hScript.Bank]
    jp Cmd_Flow_LongJump

    ; $20C8
    dec bc
    dec bc
    dec bc
    call System_CopyScriptDataToBuffer
    XCall Call_003_7025
    ret

    ; $20DA
    call System_CopyScriptDataToBuffer
    XCall Call_003_66BE
    ret

    ; $20E9
Cmd_System_NewGame::
    ; Modifies the memory to setup a new game
    ; Tony's default stats will be set and the inventory will be wiped
    ; In New Game Plus, Tony's stats, creatures and relics will be saved
    ;
    ; Arguments:
    ;   db    0 = New Game
    ;         1 = New Game Plus (technically, any non-zero value will do)
    Set16FF hScript.State, Script_Start
    Script_ReadByteA
    and a
    Set16FF_V hScript.Frame, bc
    SwitchROMBank BANK(SystemXX_NewGameInit)
    jp z, SystemXX_NewGameInit
    jp SystemXX_NewGamePlusInit

    ; $2108
Cmd_System_SaveGame::
    ; Saves the game
    ; Sets xGameSaved to 1, which opens the Continue door and provides a warning when creating a new game
    ; Arguments:
    ;   db  If non-zero (1 is used), Tony will be healed right before saving
    Battery_On
    Battery_SetBank "XRAM Gamestate"
    Set8 xGameSaved, $01
    Mov8 xLoad_HeroXTile, wActor_Hero.XTile
    Mov8 xLoad_HeroYTile, wActor_Hero.YTile

    Battery_SetBank "XRAM Creatures"
    Script_ReadByteA
    and a
    jr z, .SkipHeal
        Mov16_V xCreature_00_Hero.CurEnergy, xCreature_00_Hero.MaxEnergy
    .SkipHeal:
    push bc
    XCall Battery_SaveGame
    SwitchROMBank [hScript.Bank]
    pop bc
    jp Script_Start

    ; $2158
Cmd_System_SceneNew::
    ; Re-initializes many aspects of the game
    ; Arguments:
    ;   None
    call ScreenHide
    call Interrupt_Timer_Start

    Set16_M hScript_CurrentAddress, wScript_Master
    Set16_M hScript.State, Script_Start
    call Script_Close ;Fake close the script to overwrite the data with the new wScript_Master
    
    xor a
    ld [wMenu_MainMenu_IsInOverworld], a

    call System_Init
    call Interpreter_ReInit
    Script_Init wScript_System

    StackInit

    call System_Script_SceneInit

    XCall Tilemap_Position

    StackInit

    Set8 wTextbox_SoundEnabled_UNUSED, $01

    call ScreenShow
    jp Game_Loop

    ; $21B2
Cmd_System_SceneReady::
    ; Sets [wScript_SceneReady], quitting the single script loop and turning on the LCD
    Set8 wScript_SceneReady, $01
    Set16_M hScript.State, Script_Start
    ret

    ; $21C2
Cmd_System_SetItemSpellMapError::
    ; Sets the script that will run when the user tries to use an item or spell outside of a battle
    ; By default, when the game is turned on, the script is set to Script_System_ItemSpellMapError ("I can't use my X here")
    ; Arguments:
    ;   BankAddress - script
    ld hl, wInventory_ItemSpellMapDefaultScript
    LdHLIBCI
    LdHLIBCI
    LdHLIBCI
    jp Script_Start

    ; $21D1
Cmd_System_SaveLocation::
    ; Save the hero's position and determines from where the script should start upon loading the game
    ; Arguments:
    ;   BankAddress - xLoad_ScriptBank + xLoad_ScriptFrame
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    Mov8 xLoad_HeroXTile, wActor_Hero.XTile
    Mov8 xLoad_HeroYTile, wActor_Hero.YTile
    Script_ReadByte_V [xLoad_ScriptBank]
    Script_ReadByte_V [xLoad_ScriptFrame]
    Script_ReadByte_V [xLoad_ScriptFrame + 1]
    Battery_Off
    jp Script_Start

    ; $2200
Cmd_System_Reboot::
    ; Reboots the game
    ; Arguments:
    ;   None
    jp Boot_SoftReset


    ; $2203
INCLUDE "source/engine/textbox/textbox_00.asm"


    ; $254F
Cmd_Trigger_ToggleAlways::
    ; Sets up a toggleable trigger
    ; The trigger script will immediately run every time upon scene loading
    ;     and will re-run upon being triggered again
    ;
    ; Config:
    ;   Off - Update the tilemap to show "Off" state and run the subsequent script
    ;   On - Update the tilemap to show "On" state and run the TurnOn script
    ; Runtime:
    ;   Off - Turn varbit On, update the tilemap to "On" and run the TurnOn script
    ;   On - Turn varbit Off, update the tilemap to "Off" and run the subsequent script
    ;
    ; Arguments:
    ;   Trigger_Ready
    ;       dw address of XRAM varbit
    ;       db mask of XRAM varbit
    ;   BankAddress - TurnOn script
    ;   Trigger_UpdateTilemap
    ;       db e = pattern id On state
    ;       db e = pattern id Off state
    ;       dw tilemap address

    ; Get the XRAM var
    ld hl, $0009 ; Size of Arguments - BUG - the size of the arguments is actually $000A!
                 ;    Trigger_Ready is supposed to update hScript.Frame to point to the command after
                 ;    this one (default Off script). However, since the size is wrong, hScript.Frame
                 ;    becomes misaligned! To fix this bug, instead of fixing the size of the arguments
                 ;    so that Trigger_Ready can work properly, what they did was update hScript.Frame
                 ;    a second time in the child function, Trigger_ToggleResetUpdateTilemap
                 ;    In the On case, hScript.Frame gets updated to the TurnOn script and so this bug does not happen
    call Trigger_Ready
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; If screen is hidden, run the config setup. If screen is visible, Tony interacted with trigger
    ld a, [wScreenVisible]
    and a
    jr nz, .Runtime

    .Config:
        ;Setup before the scene is loaded
        Trigger_CheckVarbit
        .ConfigOff:
            jp z, Trigger_ToggleResetUpdateTilemap
        .ConfigOn:
            jp Trigger_ToggleSetUpdateTilemapAndJump


    .Runtime:
        Trigger_CheckVarbit
        .RuntimeOff:
            jp z, Trigger_ToggleSetVarbit_UpdateTilemapAndJump
        .RuntimeOn:
            jp Trigger_ToggleResetVarbit_UpdateTilemap

    ; $256B
Cmd_Trigger_ToggleOnce::
    ; Sets up a toggleable trigger that is only activated upon triggering
    ; The trigger script will not immediately run upon scene loading
    ;
    ; Config:
    ;   Off - Update the tilemap to show "Off" state
    ;   On - Update the tilemap to show "On" state
    ; Runtime:
    ;   Off - Turn varbit On, update the tilemap to "On" and run the TurnOn script
    ;   On - Turn varbit Off, update the tilemap to "Off" and run the subsequent script
    ;
    ; Arguments:
    ;   Trigger_Ready
    ;       dw address of XRAM varbit
    ;       db mask of XRAM varbit
    ;   BankAddress - TurnOn script
    ;   Trigger_UpdateTilemap
    ;       db e = pattern id On state
    ;       db e = pattern id Off state
    ;       dw tilemap address

    ; Get the XRAM var
    ld hl, $0009 ; Size of Arguments - BUG - Wrong size! (actually $000A) - see explanation in Cmd_Trigger_ToggleAlways
    call Trigger_Ready
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; If screen is hidden, run the config setup. If screen is visible, Tony interacted with trigger
    ld a, [wScreenVisible]
    and a
    jr nz, .Runtime

    .Config:
        ;Setup before the scene is loaded
        Trigger_CheckVarbit
        Set16FF hScript.State, Cmd_Flow_End
        .ConfigOff:
            jp z, Trigger_ToggleResetUpdateTilemap
        .ConfigOn:
            ld de, $0003
            add hl, de
            ld a, [hl+] ; pattern id On state
            ld e, a
            inc hl
            jp Trigger_UpdateTilemap

    .Runtime:
        Trigger_CheckVarbit
        .RuntimeOff:
            jp z, Trigger_ToggleSetVarbit_UpdateTilemapAndJump
        .RuntimeOn:
            jp Trigger_ToggleResetVarbit_UpdateTilemap

    ; $2596
Cmd_Trigger_TriggerAlways::
    ; Sets up a one-way off->on trigger that is activated upon triggering
    ; In addition, if the trigger was previously activated,
    ;   the trigger will be activated every time upon scene loading
    ;
    ; Config:
    ;   Off - Nothing
    ;   On - Update the tilemap to show "On" state, then run the subsequent script right away
    ; Runtime:
    ;   Off - Turn varbit On, update the tilemap to "On" and run the subsequent script
    ;   On - Keep varbit On and run the AlreadyOn script
    ;
    ; Arguments:
    ;   Trigger_Ready
    ;       dw address of XRAM varbit
    ;       db mask of XRAM varbit
    ;   BankAddress - AlreadyOn script
    ;   Trigger_UpdateTilemap
    ;       db e = pattern id On state
    ;       dw tilemap address

    ; Get the XRAM var
    ld hl, $0009 ; Size of Arguments
    call Trigger_Ready
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; If screen is hidden, run the config setup. If screen is visible, Tony interacted with trigger
    ld a, [wScreenVisible]
    and a
    jr nz, .Runtime

    .Config:
        Trigger_CheckVarbit
        .ConfigOff:
            jp z, Cmd_Flow_End
        .ConfigOn:
            ; Continue running the script
            jp Trigger_TriggerSetUpdateTilemap

    .Runtime:
        Trigger_CheckVarbit
        .RuntimeOff:
            jp z, Trigger_TriggerSetVarbit_UpdateTilemap
        .RuntimeOn:
            ld b, h
            ld c, l
            jp Cmd_Flow_LongJump

    ; $25B4
Cmd_Trigger_TriggerOnce::
    ; Sets up a one-way off->on trigger that is only activated upon triggering
    ;
    ; Config:
    ;   Off - Nothing
    ;   On - Update the tilemap to show "On" state
    ; Runtime:
    ;   Off - Turn varbit On, update the tilemap to "On" and run the subsequent script
    ;   On - Keep varbit On and run the AlreadyOn script
    ;
    ; Arguments:
    ;   Trigger_Ready
    ;       dw address of XRAM varbit
    ;       db mask of XRAM varbit
    ;   BankAddress - AlreadyOn script
    ;   Trigger_UpdateTilemap
    ;       db e = pattern id On state
    ;       dw tilemap address

    ; Get the XRAM var
    ld hl, $0009 ; Size of Arguments
    call Trigger_Ready
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; If screen is hidden, run the config setup. If screen is visible, Tony interacted with trigger
    ld a, [wScreenVisible]
    and a
    jr nz, .Runtime

    .Config:
        Trigger_CheckVarbit
        .ConfigOff:
            jp z, Cmd_Flow_End
        .ConfigOn:
            Set16FF hScript.State, Cmd_Flow_End
            jp Trigger_TriggerSetUpdateTilemap

    .Runtime:
        Trigger_CheckVarbit
        .RuntimeOff:
            jp z, Trigger_TriggerSetVarbit_UpdateTilemap
        .RuntimeOn:
            ld b, h
            ld c, l
            jp Cmd_Flow_LongJump

    ; $25DA
Cmd_Trigger_Treasure::
    ; TODO
    ; Treasure chest object
    ; This command sets the reading frame to null after it is done
    ;
    ; Config:
    ;   Off - Do nothing and end the reading frame
    ;   On - Update the tilemap to show open chest and end the reading frame
    ; Runtime:
    ;   Off - TODO
    ;   On - Empty, nooo! and end the reading frame

    ; Arguments:
    ;   Trigger_Ready
    ;       dw address of XRAM varbit
    ;       db mask of XRAM varbit
    ;   db Item type (relic, other) TODO
    ;   db Item id
    ;   Trigger_UpdateTilemap
    ;       dw tilemap address

    ; Get the XRAM var
    ld hl, $0007 ; Size of Arguments
    call Trigger_Ready
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; If screen is hidden, run the config setup. If screen is visible, Tony interacted with trigger
    ld a, [wScreenVisible]
    and a
    jr nz, .Runtime

    .Config:
        ;Setup before the scene is loaded
        inc hl
        inc hl
        Trigger_CheckVarbit
        .ConfigClosed:
            jp z, Cmd_Flow_End
        .ConfigEmpty:
            Set16FF hScript.State, Cmd_Flow_End
            ld e, TRIGGER_TREASUREOPEN
            jp Trigger_UpdateTilemap

    .Runtime:
        Trigger_CheckVarbit
        jp nz, .RuntimeEmpty
        .RuntimeClosed:
            push bc
            push de
            Sound_Request_StartSFX0 SFXID_TreasureChest
            ld a, [hl+] ;2 ;func   TODO
            ld [$C9FC], a
            ld a, [hl+] ;3 ;param
            ld [$C9FD], a
            ld a, $01   ;quantity of item
            ld [$C9FE], a
            push hl
            XCall Unknown_GetNameAndGiveItem
            SwitchROMBank [hScript.Bank]
            pop hl
            Set16_M wText_StringFormatFrame, wText_StringBuffer
            ld a, [$C9FD] ;success or fail (inventory full)
            and a
            jr z, .InventoryFull
            .GetTreasure:
                ; Tony got a⭍🛑; 🔊🅐🛑
                Set8FF hScript.Bank, $22  ;TODO - Tony got a⭍🛑; 🔊🅐🛑
                Set16FF hScript.Frame, $4048
                pop de
                pop bc
                Trigger_SetVarbit
                ld e, TRIGGER_TREASUREOPEN
                jp Trigger_UpdateTilemap
        .RuntimeEmpty:
            ; Empty! Noooo!!
            Set8FF hScript.Bank, $22  ;TODO - empty, nooo!
            Set16FF hScript.Frame, $405B ; "_TXT_ITS_EMPTY"
            ret
            .InventoryFull:
                ; Tony can't hold⭍🛑; another🅐🛑; 🔊🅐🛑
                pop af
                pop af
                Set8FF hScript.Bank, $22
                Set16FF hScript.Frame, $4074 ;TODO Tony can't hold another
                ret

    ; $2674
Trigger_TriggerSetVarbit_UpdateTilemap::
    ; For Cmd_Trigger_TriggerOnce and Cmd_Trigger_TriggerAlways
    ;
    ; Turns a varbit on, and then runs Trigger_UpdateTilemap
    ;
    ; Inputs:
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl =
    ;       BankAddress - AlreadyOn script (unused)
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           dw tilemap address
    ;
    Trigger_SetVarbit
    ;jp Trigger_TriggerSetUpdateTilemap

    ; $2680
Trigger_TriggerSetUpdateTilemap::
    ; For Cmd_Trigger_TriggerOnce and Cmd_Trigger_TriggerAlways
    ;
    ; Runs Trigger_UpdateTilemap
    ;
    ; Inputs:
    ;   hl =
    ;       BankAddress - AlreadyOn script (unused)
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           dw tilemap address
    ;
    ld de, $0003 ;skip AlreadyOn script
    add hl, de
    Get8 e, hl+ ; pattern id On state
    jp Trigger_UpdateTilemap

    ; $2689
Trigger_ToggleSetVarbit_UpdateTilemapAndJump::
    ; For Cmd_Trigger_ToggleOnce and Cmd_Trigger_ToggleAlways, On position
    ;
    ; Turns a varbit on
    ; Updates the frame to continue reading from the TurnOn script
    ; Runs Trigger_UpdateTilemap with On state
    ;
    ; Inputs:
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl =
    ;       BankAddress - TurnOn script
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           db e = pattern id Off state
    ;           dw tilemap address
    ;
    Trigger_SetVarbit
    ;jp Trigger_ToggleSetUpdateTilemapAndJump

    ; $2695
Trigger_ToggleSetUpdateTilemapAndJump::
    ; For Cmd_Trigger_ToggleOnce and Cmd_Trigger_ToggleAlways, On position
    ;
    ; Updates the frame to continue reading from the TurnOn script
    ; Runs Trigger_UpdateTilemap with On state
    ;
    ; Inputs:
    ;   hl =
    ;       BankAddress - TurnOn script
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           db e = pattern id Off state
    ;           dw tilemap address
    ;
    Set8 hScript.Bank, [hl+]
    Get8 c, hl+
    Get8 b, hl+
    Set16 hScript.Frame, bc

    Get8 e, hl+ ; pattern id On state
    inc hl
    jp Trigger_UpdateTilemap

    ; $26AB
Trigger_ToggleResetVarbit_UpdateTilemap::
    ; For Cmd_Trigger_ToggleOnce and Cmd_Trigger_ToggleAlways, Off position
    ;
    ; Turns a varbit off, and then runs Trigger_UpdateTilemap
    ;
    ; Inputs:
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl =
    ;       BankAddress - TurnOn script
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           db e = pattern id Off state
    ;           dw tilemap address
    ;
    Trigger_FlipVarbit
    ; jp Trigger_ToggleResetUpdateTilemap

    ; $26B7
Trigger_ToggleResetUpdateTilemap::
    ; For Cmd_Trigger_ToggleOnce and Cmd_Trigger_ToggleAlways, Off position
    ;
    ; Runs Trigger_UpdateTilemap with Off state
    ;
    ; Inputs:
    ;   hl =
    ;       BankAddress - TurnOn script
    ;       Trigger_UpdateTilemap
    ;           db e = pattern id On state
    ;           db e = pattern id Off state
    ;           dw tilemap address
    ;
    ld de, $0004
    add hl, de
    Get8 e, hl+ ; pattern id Off state

    inc hl
    inc hl
    Set16 hScript.Frame, hl ; Fixes the bug in Cmd_Trigger_ToggleAlways and Cmd_Trigger_ToggleOnce
    dec hl
    dec hl

    jp Trigger_UpdateTilemap

    ; $26CC
Trigger_UpdateTilemap::
    ; Updates the trigger tile to a new tile id in wMetatilemap
    ; If the screen is on, also updates the tilemap to display the new tile id
    ; Inputs:
    ;   e - new tile id
    ;   [hl] - tilemap address

    ; Update the tile in wMetatilemap
    SwitchRAMBank BANK(wMetatilemap)
    DerefHL
    ld [hl], e

    ; End if screen is not yet visible as the tilemap has not yet been setup
    ld a, [wScreenVisible]
    and a
    ret z

    ; Setup a VBlank function to update the tilemap
    Get8 e, wTrigger_XTile
    Get8 d, wTrigger_YTile
    Get16 hl, wTrigger_TilemapAddress
    ld c, [hl] ;tile id (= Input e)
    XCall Tilemap_Ready_DrawTile
    ; de = VRAM tilemap dest addr
    ; hl = copy source address (address within wPattern)
    Set16 wTilemap_VBlank_DestAddress, de
    Set16 wTilemap_VBlank_SourceAddress, hl

    Set8 wVBlank_Bank, BANK(Tilemap_VBlank_Drawtile2)
    Set16_M wVBlank_Func, Tilemap_VBlank_Drawtile2
    ret

    ; $2718
Trigger_Ready::
    ; For triggers, fetches the corresponding XRAM var to be interpreted
    ; Moves the frame past the trigger command
    ;
    ; Inputs:
    ;   bc = frame
    ;       dw - address of XRAM varbit
    ;       db - mask of XRAM varbit
    ;   hl = number of parameter bytes in the command that called this function
    ; Outputs:
    ;   de = address of XRAM varbit
    ;   c = value of XRAM varbit
    ;   b = mask of XRAM varbit
    ;   hl = original frame + 3

    ; Move the frame past the current command
    add hl, bc
    Set16 hScript.Frame, hl
    Set16_M hScript.State, Script_Start

    ; Get the address, value and mask of the XRAM var
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld l, c
    ld h, b
    Get8 e, hl+
    Get8 d, hl+
    Get8 c, de
    Get8 b, hl+
    Battery_Off
    ret

    ; $2747
Cmd_Ram_VarBitExpr::
    ; Gets a result from Expr_GetValue
    ; If nonzero, sets varbit to %1, else sets varbit to %0
    ;
    ; Arguments:
    ;   dw      VarBit address
    ;   db      VarBit mask
    ;   Expr
    Script_ReadWord hl
    Script_ReadByte e
    push hl
    push de
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue
    ld a, e
    or d
    pop de
    pop hl
    jr z, .False
    .True:
        ; Set VarBit to %1
        ld a, [hl]
        or e
        ld [hl], a
        Battery_Off
        jp Script_Start
    .False:
        ; Set VarBit to %0
        ld a, e
        cpl
        ld e, [hl]
        and e
        ld [hl], a
        Battery_Off
        jp Script_Start

    ; $277E
Cmd_Ram_VarByteExpr::
    ; Sets a VarByte to the value from Expr_GetValue
    ; Since Expr_GetValue returns a 16-bit value
    ; The top 8 bits are ignored
    ;
    ; Arguments:
    ;   dw      VarByte address
    ;   Expr
    Script_ReadWord hl
    push hl
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue
    pop hl
    ld [hl], e ;ignore the upper 8 bits
    Battery_Off
    jp Script_Start

    ; $279E
Cmd_Ram_VarWordExpr::
    ; Sets a VarWord to the value from Expr_GetValue
    ;
    ; Arguments:
    ;   dw      VarByte address
    ;   Expr
    Script_ReadWord hl
    push hl
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    call Expr_GetValue
    pop hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    Battery_Off
    jp Script_Start

    ; $27C0
Cmd_Ram_NextGameCount::
    ; Increments xGameCount by 1
    ; This also erases the temporary xScript_SaveBits and xScript_SaveVars
    ;
    ; Arguments:
    ;   None
    ;
    ; BUG - Does not verify that the right bank is loaded when doing the call, likely crashes the game
    ; This command is unused and deprecated, it was replaced with Cmd_Ram_SetGameCount
    IF FIX_BUGS == 1
        SwitchROMBank BANK(Battery_NextGameCount)
    ENDC
    call Battery_NextGameCount
    jp Script_Start

    ; $27C6
Cmd_Ram_SetGameCount::
    ; Sets the xGameCount to a specified value.
    ; This also erases the temporary xScript_SaveBits and xScript_SaveVars
    ;
    ; Arguments:
    ;   dw      New xGameCount value
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    Script_ReadWord de
    FSet16 xGameCount, de
    Battery_Off
    Set16 hScript.Frame, bc
    Set16_M hScript.State, Script_Start
    XCall Battery_SetGameCount
    ret

    ; $2801
Cmd_Ram_SetWramByte::
    ; Sets a byte at address X in WRAM bank Y
    ; Arguments:
    ;   dw      Address
    ;   db      WRAMBank
    ;   db      NewValue
    Script_ReadWord hl
    Script_ReadByteA
    SwitchRAMBank a ;Causes a ld a,a instruction
    ; BUG? Default WRAM bank is NOT restored, possibly causing misread data or corrupting data
    ld a, [bc]
    ld [hl], a
    inc bc
    jp Script_Start

    ; $2815
Cmd_Ram_SetWramWord::
    ; Sets a word at address X in WRAM bank Y
    ; Arguments:
    ;   dw      Address
    ;   db      WRAMBank
    ;   dw      NewValue
    Script_ReadWord hl
    Script_ReadByteA
    SwitchRAMBank a ;Causes a ld a,a instruction
    ; BUG? Default WRAM bank is NOT restored, possibly causing misread data or corrupting data
    LdHLIBCI
    ld a, [bc]
    ld [hl], a
    inc bc
    jp Script_Start

    ; $282C
Cmd_Ram_SetXramByte::
    ; Sets a byte at address X in XRAM (or close WRAM bank I guess, although the bank isn't set)
    ; Arguments:
    ;   dw      Address
    ;   db      NewValue
    Script_ReadWord hl
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [bc]
    ld [hl], a
    inc bc
    Battery_Off
    jp Script_Start

    ; $2849
Cmd_Ram_SetXramWord::
    ; Sets a word at address X in XRAM (or close WRAM bank I guess, although the bank isn't set)
    ; Arguments:
    ;   dw      Address
    ;   dw      NewValue
    Script_ReadWord hl
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    LdHLIBCI
    ld a, [bc]
    ld [hl], a
    inc bc
    Battery_Off
    jp Script_Start

    ; $2869
Cmd_Ram_AndXramByte::
    ; Applies a bitwise & at address X in XRAM (or WRAM0)
    ; Arguments:
    ;   dw      Address
    ;   db      Operand
    Script_ReadWord hl
    Script_ReadByte e
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [hl]
    and e
    ld [hl], a
    Battery_Off
    jp Script_Start

    ; $2889
Cmd_Ram_OrXramByte::
    ; Applies a bitwise | at address X in XRAM (or WRAM0)
    ; Arguments:
    ;   dw      Address
    ;   db      Operand
    Script_ReadWord hl
    Script_ReadByte e
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    ld a, [hl]
    or e
    ld [hl], a
    Battery_Off
    jp Script_Start


    ; $28A9
Interpreter_ReInit::
    ; Sets wScript_Scroll and wScript_Text to Idle
    ; Disables Sync and Events
    Script_Init wScript_Scroll
    Script_Init wScript_Text
    xor a
    ld [wScript_SyncCurrent], a
    ld [wScript_SyncNext], a
    ld [wScript_SyncCount], a
    ld [wScript_MasterEventNextID], a
    ld [wScript_ScrollEventNextID], a
    ld [wScript_TextEventNextID], a
    ret

    ; $28E5
Interpreter_Update::
    ld hl, wScript_SyncNext
    ld a, [hl+]  ; wScript_SyncNext
    add [hl]     ; wScript_SyncCurrent     wScript_SyncCurrent +=  wScript_SyncNext
    jr nc, .SkipSyncCount
        ld a, [wScript_SyncCount]
        inc a
        ld [wScript_SyncCount], a
        xor a        ; Clear sync on overflow
    .SkipSyncCount:
    ld [hl-], a  ; wScript_SyncCurrent        Store new current sync
    xor a
    ld [hl], a   ; wScript_SyncNext           Erase pending sync
    ld hl, wScript_MasterEventNextID
    REPT 3 ; Master, Scroll, Text
        ld a, [hl+] ; EventNextID
        ld [hl-], a ; EventID                Set EventID
        xor a
        ld [hl+], a ; EventNextID            Erase nextID
        inc hl
    ENDR
    ret

    ; $290A
Script_Close::
    ; After calling Script_Play, save the current state back to [hScript_CurrentAddress]
    Get16 hl, hScript_CurrentAddress
    ldh a, [hScript.Bank]
    ld [hl+], a
    ldh a, [hScript.Frame]
    ld [hl+], a
    ldh a, [hScript.Frame+1]
    ld [hl+], a
    ldh a, [hScript.State]
    ld [hl+], a
    ldh a, [hScript.State+1]
    ld [hl+], a
    ldh a, [hScript.SmallCounter]
    ld [hl+], a
    ldh a, [hScript.BigCounter]
    ld [hl+], a
    ret


    ; $2928
Script_Open::
    ; Before calling Script_Play, copy the data from [hl] into HRAM and load the value of bc
    Set16 hScript_CurrentAddress, hl
    ld a, [hl+]
    ldh [hScript.Bank], a
    ld a, [hl+]
    ldh [hScript.Frame], a
    ld c, a
    ld a, [hl+]
    ldh [hScript.Frame+1], a
    ld b, a
    ld a, [hl+]
    ldh [hScript.State], a
    ld a, [hl+]
    ldh [hScript.State+1], a
    ld a, [hl+]
    ldh [hScript.SmallCounter], a
    ld a, [hl+]
    ldh [hScript.BigCounter], a
    ret



INCLUDE "source/engine/interrupt/interrupt_00.asm"
INCLUDE "source/engine/text/text_00.asm"
INCLUDE "source/engine/trigger/trigger_00.asm"
INCLUDE "source/engine/unpack_00.asm"


; Cardscene
INCLUDE "source/game/cardscene/cardscene_00.asm"

; Fightscene
INCLUDE "source/game/fightscene/fightscene_00_graphics.asm"
INCLUDE "source/game/fightscene/fightscene_00_vhblank.asm"
INCLUDE "source/game/fightscene/fightscene_00_center_table.asm"
INCLUDE "source/game/fightscene/fightscene_00_startscreen_vhblank.asm"


; Battle
INCLUDE "source/game/battle/battlecmd/battlecmd_stat_00.asm"
INCLUDE "source/game/battle/battle_actor_00.asm"
INCLUDE "source/game/battle/battle_vblank_00.asm"



    ; $3986
    ; A little bit of ghost data is here (see ghost_data.asm)

    ; $3AB0
INCLUDE "musyx/musyxb0.asm"


IF TEST==1
    SECTION "TEST", ROM0
    INCLUDE "source/test/magianim_test.asm"
ENDC
IF DEBUG_TEXTBOX_CURSOR==1
    SECTION "CURSOR", ROM0
    INCLUDE "source/engine/textbox/debug_textbox_cursor.asm"
ENDC