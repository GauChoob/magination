Fightscene_CreatureLeft_ClearTilemap::
    ; rVBK must be manually set
    Do_MemSet FIGHTSCENE_CREATURE_LEFT_EMPTY, (FIGHTSCENE_CREATURE_LEFT_EMPTY_END - FIGHTSCENE_CREATURE_LEFT_EMPTY), $80
    Do_MemSet FIGHTSCENE_CREATURE_LEFT_SPRITE, (FIGHTSCENE_CREATURE_LEFT_SPRITE_END - FIGHTSCENE_CREATURE_LEFT_SPRITE), $80 ; inefficiency - this section is already erased by the previous line
    ret


Fightscene_CreatureLeft_ClearAttrmap::
    ; rVBK must be manually set
    Do_MemSet FIGHTSCENE_CREATURE_LEFT_EMPTY, (FIGHTSCENE_CREATURE_LEFT_EMPTY_END - FIGHTSCENE_CREATURE_LEFT_EMPTY), $08
    Do_MemSet FIGHTSCENE_CREATURE_LEFT_SPRITE, (FIGHTSCENE_CREATURE_LEFT_SPRITE_END - FIGHTSCENE_CREATURE_LEFT_SPRITE), $08 ; inefficiency - this section is already erased by the previous line
    ret


Fightscene_CreatureRight_ClearAttrmap::
    ; rVBK must be manually set
    Do_MemSet FIGHTSCENE_CREATURE_RIGHT_EMPTY, (FIGHTSCENE_CREATURE_RIGHT_EMPTY_END - FIGHTSCENE_CREATURE_RIGHT_EMPTY), $28
    Do_MemSet FIGHTSCENE_CREATURE_RIGHT_SPRITE, (FIGHTSCENE_CREATURE_RIGHT_SPRITE_END - FIGHTSCENE_CREATURE_RIGHT_SPRITE), $00
    ; Inefficiency - The next line is supposed to fix the attributes that a previous Menu text might have messed up...
    ;  but the Menu is no longer at this coordinate
    ;  and also FIGHTSCENE_CREATURE_RIGHT_EMPTY already resets this part of the data
    Do_MemSet FIGHTSCENE_CREATURE_RIGHT_MENU, (FIGHTSCENE_CREATURE_RIGHT_MENU_END - FIGHTSCENE_CREATURE_RIGHT_MENU), $28
    ret


Fightscene_CreatureRight_ClearTilemap::
    ; rVBK must be manually set
    Do_MemSet FIGHTSCENE_CREATURE_RIGHT_EMPTY, (FIGHTSCENE_CREATURE_RIGHT_EMPTY_END - FIGHTSCENE_CREATURE_RIGHT_EMPTY), $80
    ret


Fightscene_GetArenaDataPointer::
    ; Given the ID number of the start screen stored in wFightscene_ArenaIndex,
    ; Loads the address of the header in wTemp_C.Fightscene_ArenaDataPointer
    ; Inputs:
    ;   [wFightscene_ArenaIndex] = FIGHTSCENE_ARENA_*
    ; Outputs: 
    ;   [wTemp_C.Fightscene_ArenaDataPointer] = [Fightscene_ArenaTable + 2*[wFightscene_ArenaIndex]]
    ld hl, Fightscene_ArenaTable
    ld a, [wFightscene_ArenaIndex]
    ld d, $00
    ld e, a
    sla e
    rl d
    add hl, de
    DerefHL
    Set16_M wTemp_C.Fightscene_ArenaDataPointer, hl
    ret


Fightscene_LoadArenaData::
    ; Loads the Arena data structure into WRAM from [wTemp_C.Fightscene_ArenaDataPointer]
    ; Call this after calling Fightscene_GetArenaDataPointer
    FGet16 hl, wTemp_C.Fightscene_ArenaDataPointer

    ; inefficiency; oFightscene_Arena_TopBitmap = 0
    push de
    ld de, oFightscene_Arena_TopBitmap
    add hl, de
    pop de

    Mov8 wTemp_0.Fightscene_Arena_TopBitmapAddress, hl+
    Mov8 wTemp_0.Fightscene_Arena_TopBitmapAddress+1, hl+
    Mov8 wTemp_1.Fightscene_Arena_TopBitmapBank, hl+
    Mov8 wTemp_2.Fightscene_Arena_TopTilemapAddress, hl+
    Mov8 wTemp_2.Fightscene_Arena_TopTilemapAddress+1, hl+
    Mov8 wTemp_3.Fightscene_Arena_TopTilemapBank, hl+
    Mov8 wTemp_A.Fightscene_Arena_BottomBitmapAddress, hl+
    Mov8 wTemp_A.Fightscene_Arena_BottomBitmapAddress+1, hl+
    Mov8 wTemp_8.Fightscene_Arena_BottomBitmapBank, hl+
    Mov8 wTemp_B.Fightscene_Arena_BottomTilemapAddress, hl+
    Mov8 wTemp_B.Fightscene_Arena_BottomTilemapAddress+1, hl+
    Mov8 wTemp_9.Fightscene_Arena_BottomTilemapBank, hl+
    Mov8 wFightscene_Arena_TopDeltaX, hl+
    Mov8 wFightscene_Arena_BottomDeltaX, hl+
    Mov8 wTemp_6.Palette_PaletteAddress, hl+
    Mov8 wTemp_6.Palette_PaletteAddress+1, hl+
    Mov8 wTemp_7.Palette_PaletteBank, hl+
    ret


Fightscene_GetCardsceneArenaColor::
    ; Get the color used in the background of the arena
    ; Inputs:
    ;   [wFightscene_ArenaIndex]
    ; Outputs:
    ;   wFightscene_ArenaColor = Color
    call Fightscene_GetArenaDataPointer
    ld de, oFightscene_Arena_Color
    add hl, de
    DerefHL
    Set16 wFightscene_ArenaColor, hl
    ret


Fightscene_GetCreaturePointers::
    ; Given a Dream Creature ID, gives pointers to the creature's Fightscene data
    ; Inputs:
    ;   wTemp_8.Fightscene_CreatureID
    ; Outputs:
    ;   wTemp_B.Fightscene_CreatureBaseStatsPointer - address to row of DC info
    ;   wTemp_C.Fightscene_CreatureGraphicsPointer = hl = address to row of DC info + offset dcGraphics
    Get8 c, wTemp_8.Fightscene_CreatureID
    ld b, Creature_Table_WIDTH
    call Math_Mult
    ld bc, Creature_Table
    add hl, bc
    Set16_M wTemp_B.Fightscene_CreatureBaseStatsPointer, hl
    ld bc, dcGraphics
    add hl, bc
    Set16_M wTemp_C.Fightscene_CreatureGraphicsPointer, hl
    ret


Fightscene_LoadArena::
    ; Loads the horizontally-scrolling part of the Start Screen
    ; Inputs
    ;   [wFightscene_ArenaIndex] - index 0-14 referring to the correct assets
    call Fightscene_GetArenaDataPointer
    call Fightscene_LoadArenaData
    call Fightscene00_DrawArena
    ret


Fightscene_LoadCreature::
    ; Loads a creature into the Fightscene
    ; Inputs:
    ;   wTemp_8.Fightscene_CreatureID
    ;   wTemp_9.Palette_BattleFX_CreatureIsRight
    call Fightscene_GetCreaturePointers
    call Fightscene_LoadCreatureGraphicsData
    ld a, [wTemp_9.Palette_BattleFX_CreatureIsRight]
    and a
    jr nz, .CreatureRight
    .CreatureLeft:
        call Fightscene00_DrawCreatureLeft
        ret
    .CreatureRight:
        call Fightscene00_DrawCreatureRight
        ret


Fightscene_LoadCreatureGraphicsData::
    ; Loads the Fightscene Creature graphics into WRAM from [wTemp_C.Fightscene_CreatureGraphicsPointer]
    ; Call this after calling Fightscene_GetCreaturePointers
    Get16 hl, wTemp_C.Fightscene_CreatureGraphicsPointer
    Mov8 wTemp_0.Fightscene_Creature_TilesetAddress, hl+
    Mov8 wTemp_0.Fightscene_Creature_TilesetAddress+1, hl+
    Mov8 wTemp_1.Fightscene_Creature_TilesetBank, hl+
    Mov8 wTemp_2.Fightscene_Creature_TilemapAddress, hl+
    Mov8 wTemp_2.Fightscene_Creature_TilemapAddress+1, hl+
    Mov8 wTemp_3.Fightscene_Creature_TilemapBank, hl+
    Mov8 wTemp_4.Fightscene_Width, hl+
    Mov8 wTemp_5.Fightscene_Height, hl+
    Mov8 wTemp_6.Palette_PaletteAddress, hl+
    Mov8 wTemp_6.Palette_PaletteAddress+1, hl+
    Mov8 wTemp_7.Palette_PaletteBank, hl+
    ret


Fightscene_CreatureRight_FightFX_UpdateCamera:
    ; If we have reached the end of the reading frame, don't move
    Get8 c, wFightscene_FightFX_ReadingFrameMax
    ld a, [wFightscene_FightFX_ReadingFrameDelta]
    cp c
    ret z

    ; Only move every wFightscene_FightFX_TotalDelay frames
    Get8 c, wFightscene_FightFX_TotalDelay
    ld a, [wFightscene_FightFX_DelayCount]
    cp c
    jr z, .Move
    .DontMove:
        ; Increment the count
        inc a
        ld [wFightscene_FightFX_DelayCount], a
        ret
    .Move:
    ; Reset the count
    xor a
    ld [wFightscene_FightFX_DelayCount], a

    ; Read the next 3 bytes from the reading frame
    FGet16 hl, wFightscene_FightFX_DataTable
    ld b, $00
    Get8 c, wFightscene_FightFX_ReadingFrameDelta
    add hl, bc
    Get8 d, hl+  ; DeltaX
    Get8 e, hl+  ; DeltaY
    ld a, [hl+]  ; Delay
    ld [wFightscene_FightFX_TotalDelay], a

    ; If all 3 parameters are 0, then it is a special Loop command
    and a
    jr nz, .NormalDelta
    cp e
    jr nz, .NormalDelta
    cp d
    jr nz, .NormalDelta
    .HandleLoopCommand:
        ; Special Loop command
        ; If this is the first time we encounter this loop,
        ;  then wFightscene_FightFX_LoopCount is uninitialized at 0
        ld a, [wFightscene_FightFX_LoopCount]
        and a
        jr nz, .HandleOldLoop
        .HandleNewLoop:
            ; Sets the reading frame to the specified byte
            ; Records the number of times this loop should happen
            Mov8 wFightscene_FightFX_ReadingFrameDelta, hl+
            Mov8 wFightscene_FightFX_LoopCount, hl+
            ret
        .HandleOldLoop:
            ; It's not the first time we encounter this loop
            ; See if we looped the required amount of times
            ld a, [wFightscene_FightFX_LoopCount]
            dec a
            ld [wFightscene_FightFX_LoopCount], a
            and a
            jr z, .FinishedLoop
            .NotFinishedLoop:
                ; Reset the reading frame
                Mov8 wFightscene_FightFX_ReadingFrameDelta, hl+
                ret
            .FinishedLoop:
                ; Set the reading frame to after the loop ($00, $00, $00, Frame, LoopCount)
                ld a, [wFightscene_FightFX_ReadingFrameDelta]
                add $05
                ld [wFightscene_FightFX_ReadingFrameDelta], a
                ret
    .NormalDelta:
    ; Save the Delta WX
    ld a, [wFightscene_ShakeWX]
    add d
    ld [wFightscene_ShakeWX], a
    ; Save the Delta WY
    ld a, [wFightscene_WY]
    add e
    cp FIGHTSCENE_WY_MAX
    jr c, .SkipUpperLimit
        ; Window upper limit for WY is $71.
        ; I'm not sure in which situation you would expect to hit this limit...
        ld a, FIGHTSCENE_WY_MAX
    .SkipUpperLimit:
    ld [wFightscene_WY], a
    ; Set the next reading frame
    ld a, [wFightscene_FightFX_ReadingFrameDelta]
    add $03
    ld [wFightscene_FightFX_ReadingFrameDelta], a
    ret


Fightscene_FightFX_PanFromTable::
    ; Pans the scene left or right based on the table data
    ; Inputs:
    ;   wFightscene_FightFX_Pan_TableAddress    Table like Fightscene_FightFX_PanTable_Regular
    ;   hScript.BigCounter                      Remaining delay number of frames to do the deltaX at the current frame
    ;   hScript.SmallCounter                    Current reading offset

    ; Get the reading position
    FGet16 hl, wFightscene_FightFX_Pan_TableAddress
    ldh a, [hScript.SmallCounter]
    sla a
    ld e, a
    ld d, $00
    add hl, de

    ; Check if the remaining number of frames is zero
    ldh a, [hScript.BigCounter]
    and a
    jr nz, .Continue2
    .IncrementReadingFrame:
        ; Increment the reading position to the next instruction
        ldh a, [hScript.SmallCounter]
        inc a
        ldh [hScript.SmallCounter], a
        inc hl
        inc hl
        ; If the delay is $00, we have reached the End of the table
        ld a, [hl]
        and a
        jr nz, .Continue1
        .EndOfTable:
            ; Ready for the next instruction
            Set16 hScript.Frame, bc
            Set16_M hScript.State, Script_Start
            ret

    .Continue1:
        ; Save the new delay
        ldh [hScript.BigCounter], a
    .Continue2:
    ; Decrement the delay by 1
    dec a
    ldh [hScript.BigCounter], a
    ; Pan by DeltaX
    inc hl
    ld a, [hl]
    ld [wFightscene_FightFX_Pan_DeltaX], a
    call Fightscene_FightFX_PanApplyDeltaX
    ret


Fightscene_FightFX_PanApplyDeltaX::
    ; Moves the view by DeltaX
    ; Inputs:
    ;   wFightscene_FightFX_Pan_RightDirection - nz pan right, z pan left
    ;   wFightscene_FightFX_Pan_DeltaX - DeltaX from panning
    ; Outputs:
    ;   wFightscene_SCX +- wFightscene_FightFX_Pan_DeltaX, capped within [0, $60]
    ;   bc (script frame) is preserved
    ld a, [wFightscene_FightFX_Pan_RightDirection]
    and a
    jr nz, .PanRight
    .PanLeft:
        ; If we are already at 0, we can't go further left, so end here
        ld a, [wFightscene_SCX]
        and a
        ret z

        ; [wFightscene_SCX] - [wFightscene_FightFX_Pan_DeltaX]
        push bc
        ld c, a
        ld a, [wFightscene_FightFX_Pan_DeltaX]
        NegativeA
        add c

        ; Limit the value to a minimum of 0
        jr c, .Finally
        .OutOfBoundsLeft:
            xor a
        jp .Finally

    .PanRight:
        ; If we are already at $60, we can't go further right, so end here
        ld a, [wFightscene_SCX]
        cp FIGHTSCENE_SCX_MAX_PAN
        ret z

        ; [wFightscene_SCX] + [wFightscene_FightFX_Pan_DeltaX]
        push bc
        ld c, a
        ld a, [wFightscene_FightFX_Pan_DeltaX]
        add c
        
        ; Limit the value to a maximum of $60
        cp FIGHTSCENE_SCX_MAX_PAN
        jr c, .Finally
            ld a, FIGHTSCENE_SCX_MAX_PAN
    .Finally:
    ld [wFightscene_SCX], a
    pop bc
    ret


Fightscene_FixCreatureRightAttrmap::
    ; Fix the attrmap so that CreatureRight faces left and uses the right palettes
    ; Fix the attributes - Set the tileid VRAM bank to 1 and switch the Xflip flag
    ; Fix the Palette - CreatureRight is in palettes 3-5 (instead of 0-2 for CreatureLeft)
    Do_MemXor FIGHTSCENE_CREATURE_RIGHT_SPRITE, (FIGHTSCENE_CREATURE_RIGHT_SPRITE_END - FIGHTSCENE_CREATURE_RIGHT_SPRITE), $28
    Do_MemAdd FIGHTSCENE_CREATURE_RIGHT_SPRITE, (FIGHTSCENE_CREATURE_RIGHT_SPRITE_END - FIGHTSCENE_CREATURE_RIGHT_SPRITE), $03, $FF
    ret


Fightscene_HandleButtons::
    ; Checks if the user has pressed B or Start and reacts accordingly

    ; Abort if fightscene is finished
    ld a, [wFightscene_Done]
    and a
    ret z

    ld a, [wCntDown]
    bit button_BIT_B, a
    jr z, .CheckStart
    .PressedB:
        call Fightscene_Exit
        ret

    .CheckStart:
    ld a, [wCntDown]
    bit button_BIT_START, a
    ret z
    .PressedStart:
        ld a, [wFightscene_Paused]
        cp $00  ; inefficiency
        jr nz, .SetUnpaused
        .SetPaused:
            Set8 wFightscene_Paused, $01
            ret
        .SetUnpaused:
            xor a
            ld [wFightscene_Paused], a
            ret


Fightscene_Exit:
    ; Fade the fightscene to white
    ; Then disable the script
    call Fightscene_FadeToWhite
    ; Disable wScript_Master
    Set16_M wVBlank_HandlerFunc, Interrupt_VBlank_Handler_Standard
    Set16_M wScript_Master.State, Cmd_Flow_End
    xor a
    ld [wScript_Master.Frame + 1], a ; Upper byte being $00 indicates that there is no frame
    ld [wFightscene_Done], a
    ret


Fightscene_NewFromBattle::
    ; Sets up and displays a Fightscene that was set up during a battle
    ; Loops until the Script is finished (or if Fightscene_Exit was called via the B button)
    ; Inputs:
    ;   wFightscene_BattleScriptBank, wFightscene_BattleScriptFrame
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    call ScreenHide
    call Interrupt_Timer_Start
    call Fightscene_Init
    ld hl, wScript_Master
    Mov8 hl+, wFightscene_BattleScriptBank  ; .Bank
    Mov8 hl+, wFightscene_BattleScriptFrame ; .Frame
    Mov8 hl+, wFightscene_BattleScriptFrame + 1
    Set8 hl+, LOW(Script_Start)             ; .State
    Set8 hl+, HIGH(Script_Start)
    call Interpreter_ReInit
    call System_Script_SceneInit
    call ScreenShow

    .Loop:
        call Fightscene_HandleButtons
        call Fightscene_Update
        ld a, [wScript_Master.Frame + 1] ; If upper byte is $00, then the Frame is null, so exit the Fightscene
        and a
        jr nz, .Loop

    call Fightscene_Exit
    ret


Fightscene_Init::
    Do_CallForeign Actorlist_Init
    Frame_Init
    xor a
    ld [wFightscene_Start], a
    ld [wFightscene_DebugOptions], a
    ld [wPalette_VBlankReady], a
    call Fightscene_SCXInit

    ; Inefficiency/bug: These variables are no longer used and are accidentally still initialized here
    xor a
    ld [wPalette_Unused_Temp], a
    ld [wPalette_Unused_Temp + 1], a
    Set16_M wPalette_Unused_Color, $2400  ; RGB $00, $00, $09 (Dark Blue)

    ; Load the Arena
    ; inefficiency - this was a single-use Macro which is why it loads itself
    ld a, [wFightscene_ArenaIndex]
    ld [wFightscene_ArenaIndex], a
    Do_CallForeign Fightscene_LoadArena

    ; Load the two creatures
    Mov8 wTemp_8.Fightscene_CreatureID, wFightscene_CreatureLeft_ID
    Set8 wTemp_9.Palette_BattleFX_CreatureIsRight, $00 ; inefficiency - ld a, $00 (this was a macro)
    Do_CallForeign Fightscene_LoadCreature
    Mov8 wTemp_8.Fightscene_CreatureID, wFightscene_CreatureRight_ID
    Set8 wTemp_9.Palette_BattleFX_CreatureIsRight, $01
    Do_CallForeign Fightscene_LoadCreature

    ; Set the background palettes all to white so we can fade in
    Palette_SetPackedInterval 0, 8
    db $11 ; ld de,
        RGB $1F, $1F, $1F
    Set16 wTemp_A.Palette_SetColor, de
    Do_CallForeign PaletteFX_ClearAnimBuffer
    Do_CallForeign PaletteVB_UpdatePalettes
    ret


Fightscene_FadeToWhite:
    ; Fades the Fightscene to White over a few frames
    Set8 wTemp_C.Fightscene_Counter, $08
    Palette_SetPackedInterval 0, 8
    Set16_M wTemp_A.Palette_SetColor, $7FFF ; RGB $1F, $1F, $1F
    Do_CallForeign PaletteFX_ClearBaseBuffer
    Set8 wTemp_B.Palette_FadeMagnitude, $04
    .Loop:
        Do_CallForeign PaletteFX_FadeAnimToBase
        call Fightscene_Update
        call System_UpdateGame
        ld a, [wTemp_C.Fightscene_Counter]
        dec a
        ld [wTemp_C.Fightscene_Counter], a
        jr nz, .Loop
    ret


Fightscene_SCXInit:
    ; Initializes TileFX and FightFX, and other variables
    xor a
    ld [wFightscene_SCX], a
    ld [wFightscene_WX], a
    ld [wFightscene_ShakeWX], a
    ld [wFightscene_Arena_TopSCX], a
    ld [wFightscene_Arena_BottomSCX], a
    ld [wFightscene_Paused], a
    ld [wFightscene_FightFX_ReadingFrameMax], a
    ld [wFightscene_FightFX_ReadingFrameDelta], a
    ld [wFightscene_FightFX_TotalDelay], a
    ld [wFightscene_FightFX_DelayCount], a
    ld [wFightscene_TileFX_DestroyCount], a
    ld [wFightscene_TileFX_ReadingFrameMax], a
    ld [wFightscene_TileFX_ReadingFrameDelta], a
    Set8 wFightscene_SCY, FIGHTSCENE_SCY_INIT
    Set8 wFightscene_WY, FIGHTSCENE_WY_INIT
    Set16_M wFightscene_FightFX_DataTable, Fightscene_FightFX_MoveTable_Shake
    Set16_M wFightscene_TileFX_VBlank_DestroyFunc, Fightscene_TileFX_VBlank_Idle
    Set16_M wFightscene_TileFX_PointerTable, Fightscene_TileFX_DissolveTable_Slow_Pointers
    Set16_M wFightscene_TileFX_DestroyAddress, FIGHTSCENE_VRAM_ARENA_CREATURE_RIGHT
    Set8 wFightscene_TileFX_DestroyBank, BANK(@) ; Bug! This is the current bank, but we want to refer to VBK bank 0 or 1. Luckily this value is always re-initialized before use
    ret


Fightscene_Update::
    ; Set up the main VBlank function
    Set16_M wVBlank_HandlerFunc, Fightscene00_VBlank_Main
    ; Set up an update palette VBlank function if necessary
    Do_CallForeign Palette_DeterminePaletteVBlankFunc

    ; Rolls wFightscene_SCX over at FIGHTSCENE_SCX_MAX_UPDATE/$7F
    ; inefficiency - already capped in Fightscene_FightFX_PanApplyDeltaX to a max of $60/FIGHTSCENE_SCX_MAX_PAN
    ld a, [wFightscene_SCX]
    and FIGHTSCENE_SCX_MAX_UPDATE
    ld [wFightscene_SCX], a
    ld e, a

    ; Calculate wFightscene_Arena_TopSCX and wFightscene_Arena_BottomSCX
    Get8 d, wFightscene_Arena_TopDeltaX
    xor a
    call Fightscene_ArenaSCX_SetSCX
    Get8 d, wFightscene_Arena_BottomDeltaX
    ld a, $01
    call Fightscene_ArenaSCX_SetSCX

    ; Apply a FightFX to CreatureRight (e.g. shaking)
    push de
    call Fightscene_CreatureRight_FightFX_UpdateCamera
    pop de

    ; Window viewport is FIGHTSCENE_SCX_WX_DISTANCE + wFightscene_ShakeWX to the right of the Background viewport
    ld a, FIGHTSCENE_SCX_WX_DISTANCE
    sub e ; wFightscene_SCX
    ld e, a
    ld a, [wFightscene_ShakeWX]
    add e
    ld [wFightscene_WX], a

    ld a, [wFightscene_SCX]
    ld [wSCX], a

    ld a, [wFightscene_Paused]
    cp $01
    jr z, .Paused
    .NotPaused:
        call System_UpdateGame
        ret
    .Paused:
        ld a, %10000111 ; Do all the Vblank updates
        ldh [hInterrupt_VBlank_Control], a
        Do_CallForeign Sound_SetupSoundVB
        call System_WaitVBlank
        ret


Fightscene_ArenaSCX_SetSCX:
    ; Inputs:
    ;   e = wFightscene_SCX
    ;   d = DeltaX
    ;   a => nz for wFightscene_Arena_BottomSCX, or else z for wFightscene_Arena_TopSCX
    ; Outputs:
    ;   wFightscene_Arena_TopSCX or wFightscene_Arena_BottomSCX =
    ;       wFightscene_SCX + DeltaX*wFightscene_SCX//4
    ;       Bugged for negative DeltaX, but in practicality DeltaX is always positive
    and a
    jr nz, .Bottom
    .Top:
        call Fightscene_ArenaSCX_GetOffsetFromPan
        call Fightscene_ArenaSCX_CalculateSCX
        ld a, e
        add l
        ld [wFightscene_Arena_TopSCX], a
        ret
    .Bottom:
        call Fightscene_ArenaSCX_GetOffsetFromPan
        call Fightscene_ArenaSCX_CalculateSCX
        ld a, e
        add l
        ld [wFightscene_Arena_BottomSCX], a
        ret


Fightscene_ArenaSCX_CalculateSCX:
    ; Calculates the value of SCX by multiplying the DeltaX with the Magnitude of change
    ; Inputs:
    ;   Calculated from Fightscene_ArenaSCX_GetOffsetFromPan:
    ;   d = abs(DeltaX)
    ;   c = Magnitude of change (+-wFightscene_SCX//4)
    ; Outputs:
    ;   hl = c*d (but the upper byte h is discarded by the calling function)
    ld b, $00
    ld h, b
    ld l, b

    .Loop:
        ld a, d
        and a
        ret z

        add hl, bc
        dec d
        jr .Loop


Fightscene_ArenaSCX_GetOffsetFromPan:
    ; Calculates the Magnitude of change from wFightscene_SCX
    ; This function is bugged - negative DeltaX is not handled correctly
    ; However, in reality, DeltaX is always positive
    ; Inputs:
    ;   d = DeltaX
    ;   e = wFightscene_SCX
    ; Outputs:
    ;   c = sign(DeltaX)*wFightscene_SCX//4 (Magnitude of change)
    ;   d = abs(DeltaX)
    ld a, d
    cp $00
    jr c, .NegativeBugged ; Bugged comparison. This jump will never succeed (this check only works for unsigned cp)
    .PositiveDeltaX:
        ld c, e
        sra c
        sra c
        ret
    .NegativeBugged:
        ; Never happens, but we are calculating the following:
        ; d = -d
        ; e = -e//4
        NegativeA
        ld d, a
        ld a, e
        sra a
        sra a
        NegativeA
        ld c, a
        ret


Fightscene_FightFX_Recoil_UNK::
    ; Copy of Cmd_Fightscene_FightFX_Recoil except not as a Cmd
    ; TODO - unused? - to be determined. Probably used somewhere..(?)
    Fightscene_FightFX_MoveTable_Load_V Fightscene_FightFX_MoveTable_Recoil
    xor a
    ld [wFightscene_FightFX_ReadingFrameDelta], a
    ld [wFightscene_FightFX_DelayCount], a
    ret


Fightscene_StartScreen_Init::
    ; Sets the variables to create the scrolling arena in the startscreen
    xor a
    ld [wFightscene_SCX], a
    ld [wFightscene_Arena_TopSCX], a
    ld [wFightscene_Arena_BottomSCX], a
    Set16_M wVBlank_HandlerFunc, Fightscene00_VBlank_StartScreen
    ret


Fightscene_UNK::
    ; Todo - unused? To verify. Hypothesis - was used as a counterpart to Fightscene_StartScreen_Init to end the StartScreen but is now unused
    ; Disables the Fightscene VBlank/HBlank effects
    xor a
    ld [wFightscene_DebugOptions], a ; Inefficiency - this var is no longer used
    Set16_M wVBlank_HandlerFunc, Interrupt_VBlank_Handler_Standard
    Set16_M hInterrupt_HBlank_Func, Interrupt_HBlankFunc_Idle
    ret