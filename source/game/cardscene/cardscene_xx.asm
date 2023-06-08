Cardscene_MagiBitsetTable::
    ; Pointers to bitsets containing the enemy magi, along with Tony, summon sparks and other sprite special effects
    dw BITSET_Battle_Togoth
    dw BITSET_Battle_Ogar
    dw BITSET_Battle_Korremar
    dw BITSET_Battle_Warrada
    dw BITSET_Battle_Korg
    dw BITSET_Battle_Zet
    dw BITSET_Battle_Morag
    dw BITSET_Battle_Agram
    dw BITSET_Battle_Agram
    dw BITSET_Battle_Agram
    dw BITSET_Battle_ShadowMagi1
    dw BITSET_Battle_ShadowMagi2
    dw BITSET_Battle_ShadowMagi3
    dw BITSET_Battle_ShadowMagi4
    dw BITSET_Battle_ShadowMagi5
    dw BITSET_Battle_ShadowMagi6
    dw BITSET_Battle_ShadowMagi7
    dw BITSET_Battle_ShadowMagi8
    dw BITSET_Battle_Salafy
    dw BITSET_Battle_Salafy


Cardscene_SpawnCreature::
    ; Makes a creature appear in a card slot
    ; Inputs:
    ;   wTemp_8.Fightscene_CreatureID - creature's id
    ;   wTemp_9.Cardscene_CardSlot - the target card slot
    ; Outputs:
    ;   wCardscene_CardSlotCreatureIDs.CardX <- creature's id
    ;   Over 21 frames, the card's palette will be set and the card icon will be copied
    ;   The background palette will be refreshed (just in case)
    PushROMBank

    ; Cardscene_SetCardSlotCreatureID, then do Cardscene00_VBlank_SetCardPalette
    ; This code is designed very weirdly
    ; The .FakeLoop is only iterated once because the entire palette is copied
    ; in a single vblank. In other words, this loop is not needed at all!
    call Cardscene_GetCardIcon
    ld a, 4*5
    inc a ; a = (4*5 + 1)
    ld [wTemp_4.Cardscene_LoopCounter], a
    Do_CallForeign Cardscene_SetCardSlotCreatureID
    .FakeLoop:
        Mov8 wCardscene_PaletteTargetCardSlot, wTemp_9.Cardscene_CardSlot
        Set16_M wVBlank_Func, Cardscene00_VBlank_SetCardPalette
        ld a, [wTemp_4.Cardscene_LoopCounter]
        cp 4*5
        jr z, .FakeLoopEnd
        dec a
        ld [wTemp_4.Cardscene_LoopCounter], a
        call System_UpdateGame
        jr .FakeLoop
    .FakeLoopEnd:

    ; Do Interrupt_VBlankFunc_CopyTile 4*5 times
    inc a ; a = (4*5 + 1)
    ld [wTemp_4.Cardscene_LoopCounter], a
    .RealLoop:
        Set16_M wVBlank_Func, Interrupt_VBlankFunc_CopyTile
        ld a, [wTemp_4.Cardscene_LoopCounter]
        dec a
        jr z, .RealLoopEnd
        ld [wTemp_4.Cardscene_LoopCounter], a
        call System_UpdateGame
        jr .RealLoop
    .RealLoopEnd:

    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    PopROMBank
    ret


Cardscene_BackupBackgroundCharsBC:
    ; Stores vBackgroundCharsB and vBackgroundCharsC into buffer
    ; Cardscene_RestoreAllBuffers, which uses the restore macro: Cardscene_RestoreBackgroundCharsBC
    SwitchRAMBank BANK(wBackgroundCharsBBuffer)
    xor a
    ld [rVBK], a
    Do_MemMov vBackgroundCharsB, wBackgroundCharsBBuffer, $0800
    Set8 rVBK, $01
    Do_MemMov vBackgroundCharsC, wBackgroundCharsCBuffer, $0800
    ret


Cardscene_BackupNPCSpritesBackgroundCharsA:
    ; Backup vNPCSpritesChars and vBackgroundCharsA into buffer
    ; so it can be restored when the cardscene is over
    ; Cardscene_RestoreAllBuffers, which uses the restore macro: Cardscene_RestoreNPCSpritesBackgroundCharsA
    SwitchRAMBank BANK(wCardscene_NPCSpritesBackgroundCharsABuffer)
    xor a
    ld [rVBK], a
    ; Store vNPCSpritesChars + vBackgroundCharsA
    Do_MemMov vNPCSpritesChars, wCardscene_NPCSpritesBackgroundCharsABuffer, $1000
    ret


Cardscene_BackupPalette:
    ; Stores wPalette_AnimBuffers.Background into a buffer so it can be restored
    ; when the cardscene is over
    ; Restored in Cardscene_RestoreAllBuffers
    Do_MemMov wPalette_AnimBuffers.Background, wCardscene_PaletteBuffer, (wCardscene_PaletteBuffer.End - wCardscene_PaletteBuffer)
    ret


Cardscene_Close:
    ; When the Cardscene ends, resets a few vars
    xor a
    ld [wCardscene_SCXW], a
    ld [wCardscene_SCYW], a

    ld a, CreatureID_CARDSCENE_BLANKCARD
    ld [wCardscene_CardSlotCreatureIDs.Card0], a
    ld [wCardscene_CardSlotCreatureIDs.Card1], a
    ld [wCardscene_CardSlotCreatureIDs.Card2], a
    ld [wCardscene_CardSlotCreatureIDs.Card3], a
    ld [wCardscene_CardSlotCreatureIDs.Card4], a
    ld [wCardscene_CardSlotCreatureIDs.Card5], a
    ld [wCardscene_CardSlotCreatureIDs.Card6], a
    ld [wCardscene_CardSlotCreatureIDs.Card7], a
    ret


Cardscene_RestoreAllBuffers::
    ; Restores all the backed-up tilesets and palettes
    Do_CallForeign Menu_MainMenu_RestoreVRAMObjectsChars
    Do_MemMov wCardscene_PaletteBuffer, wPalette_AnimBuffers.Background, (wCardscene_PaletteBuffer.End - wCardscene_PaletteBuffer)
    Do_MemMov wCardscene_PaletteBuffer, wPalette_BaseBuffers.Background, (wCardscene_PaletteBuffer.End - wCardscene_PaletteBuffer)
    Do_CallForeign PaletteVB_UpdateBackgroundPalettes
    Do_CallForeign PaletteVB_UpdateSpritePalettes
    Cardscene_RestoreNPCSpritesBackgroundCharsA
    Cardscene_RestoreBackgroundCharsBC
    ret


Cardscene_Do::
    ; Reinitializes and displays the Cardscene
    ; TODO - this is run by the Battle module? And every time a Fightscene ends?
    call Cardscene_Startup
    .Loop:
        Do_CallForeign Palette_DeterminePaletteVBlankFunc
        call System_UpdateGame
        ld a, [wCardscene_IsDone]
        and a
        jr z, .Loop
    call Cardscene_Close
    ret


Cardscene_Init:
    ; Initializes the Cardscene
    ; Backs up the tilesets only if they haven't yet been backed up
    ; Loads the bitset of the enemy magi

    call ScreenHide
    ; Keep playing music
    call Interrupt_Timer_Start

    ; Only backup if we haven't already backed up the tilesets
    ld a, [wCardscene_IsOpened]
    and a
    jr nz, .SkipBackup
        ; Back up tileset:
        ;   Entire VRAM0
        ;   VRAM1 - $8E00 - $9800
        PushRAMBank
        Do_CallForeign Menu_MainMenu_BackupVRAMObjectsChars
        call Cardscene_BackupPalette
        call Cardscene_BackupNPCSpritesBackgroundCharsA
        call Cardscene_BackupBackgroundCharsBC
        PopRAMBank
    .SkipBackup:

    ; Reset actors and graphics for cardscene
    Do_CallForeign Actorlist_Init
    Frame_Init
    call Cardscene00_Graphics_InitCardBattle
    call Interpreter_ReInit
    call System_Script_SceneInit

    ; Load Enemy Magi from lookup table
    ; The BitmapSet contains 3 things:
    ;   Enemy Magi (varies based on lookup)
    ;   Dream Creature sparks (constant)
    ;   Tony (constant)
    ;   Miscellaneous sprites (constant) <- status effects, arrows, boxes, etc
    PushRAMBank
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [wBattle_MagiCreatureID]
    sub CreatureID_Togoth
    add a
    ld c, a
    ld b, $00
    ld hl, Cardscene_MagiBitsetTable
    add hl, bc
    DerefHL
    ld b, h
    ld c, l
    call Unpack_BitmapSet
    PopRAMBank

    call ScreenShow

    ld a, [wCardscene_SCXW]
    ld [wSCX], a
    ldh [rSCX], a
    ld a, [wCardscene_SCYW]
    ld [wSCY], a
    ldh [rSCY], a

    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    Set16_M hInterrupt_HBlank_Func, Interrupt_HBlankFunc_Idle
    ret

    ; $63D9
Cardscene_VarsInit:
    ; Reset the vars and wipe the creatures
    xor a
    ld [wTilemap_RowPhase], a
    ld [wTilemap_ColPhase], a
    ld [wTilemap_RowTrig], a
    ld [wTilemap_ColTrig], a
    ld [wTilemap_XDelta], a
    ld [wTilemap_YDelta], a
    ld [wCardscene_SCXW], a
    ld [wCardscene_SCYW], a
    ld [wCardscene_IsDone], a
    ld [wPalette_VBlankReady], a
    ld [wCardscene_StartUNUSED], a

    ld a, CreatureID_CARDSCENE_BLANKCARD
    ld [wCardscene_CardSlotCreatureIDs.Card0], a
    ld [wCardscene_CardSlotCreatureIDs.Card1], a
    ld [wCardscene_CardSlotCreatureIDs.Card2], a
    ld [wCardscene_CardSlotCreatureIDs.Card3], a
    ld [wCardscene_CardSlotCreatureIDs.Card4], a
    ld [wCardscene_CardSlotCreatureIDs.Card5], a
    ld [wCardscene_CardSlotCreatureIDs.Card6], a
    ld [wCardscene_CardSlotCreatureIDs.Card7], a
    ret


Cardscene_Open::
    ; Open a Cardscene for the first time
    xor a
    ld [wCardscene_IsOpened], a
    call Cardscene_VarsInit
    call Cardscene_Init

    .Loop:
        ; Loop until wScript_Master's frame is null (i.e. finished)
        call System_UpdateGame
        ld a, [wScript_Master.Frame + 1]
        and a
        jr nz, .Loop

    Set8 wCardscene_IsOpened, $01
    Do_CallForeign Battle02_Flow_Begin

    jp Boot_SoftReset

    ; $6439
Cardscene_Startup:
    ; Called when first entering the Cardscene
    ; Re-initializes the Cardscene

    call Cardscene_VarsInit
    call ScreenHide
    call Interrupt_Timer_Start
    call Cardscene00_Graphics_InitCardBattle

    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle ; inefficiency? This command is repeated near the end of this function

    Do_CallForeign Actorlist_Init
    Frame_Init
    call Interpreter_ReInit

    call ScreenShow

    ld a, [wCardscene_SCXW]
    ld [wSCX], a
    ldh [rSCX], a
    ld a, [wCardscene_SCYW]
    ld [wSCY], a
    ldh [rSCY], a

    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    Set16_M hInterrupt_HBlank_Func, Interrupt_HBlankFunc_Idle
    ret


Cardscene_GetCardIcon::
    ; Gets the tileset address of the dream creature's card
    ; Returns empty card if the creature ID is CreatureID_CARDSCENE_BLANKCARD or CREATURE_NULL
    ; Also stores the palette id of the card of interest
    ; Inputs:
    ;   [wTemp_8.Fightscene_CreatureID]
    ; Outputs:
    ;   wVBlank_SourceAddress - address
    ;   wVBlank_Bank - bank
    ;   wCardscene_CardPalette - palette id of the card
    ld a, [wTemp_8.Fightscene_CreatureID]
    cp CreatureID_CARDSCENE_BLANKCARD ; Includes blank card and Creature_Null
    jr c, .ValidCard
    .NullCard:
        ld hl, BITMAP_Cardscene_Empty
        Set16_M wVBlank_SourceAddress, hl ; inefficiency - no need to put BITMAP_Cardscene_Empty into hl, since it's empty and we won't be updating it(?)
        Set8 wVBlank_Bank, BANK(BITMAP_Cardscene_Empty)
        Set8 wCardscene_CardPalette, CARDSCENE_PALETTE_BLANKCARD
        ret
    .ValidCard:
        ; Get the tileset of the card
        Do_CallForeign Fightscene_GetCreaturePointers
        ld bc, oCreature_Table_Graphics_CardTileset
        add hl, bc
        Mov8 wVBlank_SourceAddress, hl+
        Mov8 wVBlank_SourceAddress+1, hl+
        Mov8 wVBlank_Bank, hl+
        ; Get the palette of the card
        ld a, [hl+]
        and %00000111
        ld [wCardscene_CardPalette], a
        ret


Cardscene_GetCardPalette::
    ; Gets the palette of the dream creature's card
    ; If you need the icon as well, it is better to use Cardscene_GetCardIcon
    ; TODO - is the calling function of this function unused?
    ld a, [wTemp_8.Fightscene_CreatureID]
    cp CreatureID_CARDSCENE_BLANKCARD
    jr c, .ValidCard
    .NullCard:
        Set8 wCardscene_CardPalette, CARDSCENE_PALETTE_BLANKCARD
        ret
    .ValidCard:
        Do_CallForeign Fightscene_GetCreaturePointers
        ld bc, oCreature_Table_Graphics_CardPaletteID
        add hl, bc
        DerefHL  ; bug - "hl" is dereferenced, but actually we just wanted to get the value of [hl], which thankfully happens to be saved in a when we run this macro
        and %00000111
        ld [wCardscene_CardPalette], a
        ret


Cardscene_GetCardSlotCreatureID::
    ; Given a card slot, returns the slot's current creature id
    ; Inputs:
    ;   wTemp_9.Cardscene_CardSlot - target cardslot
    ; Outputs:
    ;   a = wTemp_8.Fightscene_CreatureID = the slot's creature id

    ld a, [wTemp_9.Cardscene_CardSlot]
    .Card0:
    cp 0
    jr nz, .Card1
        Mov8 wTemp_8.Fightscene_CreatureID, wCardscene_CardSlotCreatureIDs.Card0
        ret
    .Card1:
    cp 1
    jr nz, .Card2
        Mov8 wTemp_8.Fightscene_CreatureID, wCardscene_CardSlotCreatureIDs.Card1
        ret
    .Card2:
    cp 2
    jr nz, .Card3
        Mov8 wTemp_8.Fightscene_CreatureID, wCardscene_CardSlotCreatureIDs.Card2
        ret
    .Card3:
    cp 3
    jr nz, .Card4
        Mov8 wTemp_8.Fightscene_CreatureID, wCardscene_CardSlotCreatureIDs.Card3
        ret
    .Card4:
    cp 4
    jr nz, .Card5
        Mov8 wTemp_8.Fightscene_CreatureID, wCardscene_CardSlotCreatureIDs.Card4
        ret
    .Card5:
    cp 5
    jr nz, .Card6
        Mov8 wTemp_8.Fightscene_CreatureID, wCardscene_CardSlotCreatureIDs.Card5
        ret
    .Card6:
    cp 6
    jr nz, .Card7
        Mov8 wTemp_8.Fightscene_CreatureID, wCardscene_CardSlotCreatureIDs.Card6
        ret
    .Card7:
        Mov8 wTemp_8.Fightscene_CreatureID, wCardscene_CardSlotCreatureIDs.Card7
        ret


Cardscene_SetCardSlotCreatureID::
    ; Sets a card slot's creature id
    ; Returns the VRAM position in tileset - the card image must be copied separately during VBlank
    ; Inputs:
    ;   wTemp_9.Cardscene_CardSlot - target cardslot
    ;   wTemp_8.Fightscene_CreatureID - creature id
    ; Outputs:
    ;   wCardscene_CardSlotCreatureIDs.CardX <- wTemp_8.Fightscene_CreatureID
    ;   wVBlank_DestVBK, wVBlank_DestAddress point to that card's tileset destination
    ld a, [wTemp_9.Cardscene_CardSlot]
    .Card0:
    cp 0
    jr nz, .Card1
        ld bc, CARDSCENE_VRAM_CARD0
        Mov8 wCardscene_CardSlotCreatureIDs.Card0, wTemp_8.Fightscene_CreatureID
        xor a
        jr .SetVars
    .Card1:
    cp 1
    jr nz, .Card2
        ld bc, CARDSCENE_VRAM_CARD1
        Mov8 wCardscene_CardSlotCreatureIDs.Card1, wTemp_8.Fightscene_CreatureID
        xor a
        jr .SetVars
    .Card2:
    cp 2
    jr nz, .Card3
        ld bc, CARDSCENE_VRAM_CARD2
        Mov8 wCardscene_CardSlotCreatureIDs.Card2, wTemp_8.Fightscene_CreatureID
        xor a
        jr .SetVars
    .Card3:
    cp 3
    jr nz, .Card4
        ld bc, CARDSCENE_VRAM_CARD3
        Mov8 wCardscene_CardSlotCreatureIDs.Card3, wTemp_8.Fightscene_CreatureID
        xor a
        jr .SetVars
    .Card4:
    cp 4
    jr nz, .Card5
        ld bc, CARDSCENE_VRAM_CARD4
        Mov8 wCardscene_CardSlotCreatureIDs.Card4, wTemp_8.Fightscene_CreatureID
        ld a, $01
        jr .SetVars
    .Card5:
    cp 5
    jr nz, .Card6
        ld bc, CARDSCENE_VRAM_CARD5
        Mov8 wCardscene_CardSlotCreatureIDs.Card5, wTemp_8.Fightscene_CreatureID
        ld a, $01
        jr .SetVars
    .Card6:
    cp 6
    jr nz, .Card7
        ld bc, CARDSCENE_VRAM_CARD6
        Mov8 wCardscene_CardSlotCreatureIDs.Card6, wTemp_8.Fightscene_CreatureID
        ld a, $01
        jr .SetVars
    .Card7:
        ld bc, CARDSCENE_VRAM_CARD7
        Mov8 wCardscene_CardSlotCreatureIDs.Card7, wTemp_8.Fightscene_CreatureID
        ld a, $01
        ;jr .SetVars
    .SetVars:
    ld [wVBlank_DestVBK], a
    Set16 wVBlank_DestAddress, bc
    ret


Cardscene_ResetArenaBackground::
    ; Re-initialize the bottom 5 rows of the background to be a blank black textbox
    xor a
    ld [rVBK], a
    Do_MemSet CARDSCENE_BACKGROUND_MENU, (CARDSCENE_BACKGROUND_MENU_END - CARDSCENE_BACKGROUND_MENU), $00
    Set8 rVBK, $01
    Do_MemSet CARDSCENE_BACKGROUND_MENU, (CARDSCENE_BACKGROUND_MENU_END - CARDSCENE_BACKGROUND_MENU), CARDSCENE_PALETTE_TEXTBOX
    ; Set the Palette of the top arena part to be CARDSCENE_PALETTE_BACKGROUND
    Do_MemAdd CARDSCENE_BACKGROUND_ARENA, (CARDSCENE_BACKGROUND_ARENA_END - CARDSCENE_BACKGROUND_ARENA), CARDSCENE_PALETTE_BACKGROUND, $FF
    ; Set the attributes of the menu to be the right palette and to appear over sprites
    Do_MemSet CARDSCENE_WINDOW_MENU, (CARDSCENE_WINDOW_MENU_END - CARDSCENE_WINDOW_MENU), $8F
    ret


FOR card, 0, 8
Cardscene_SetPalette_Card{u:card}::
    ; Cardscene_SetPalette_Card0, Cardscene_SetPalette_Card1, Cardscene_SetPalette_Card2, Cardscene_SetPalette_Card3, Cardscene_SetPalette_Card4, Cardscene_SetPalette_Card5, Cardscene_SetPalette_Card6, Cardscene_SetPalette_Card7
    ; Set the palette of the target card
    ; Assumes rVBK is $01
    ; Inputs:
    ;   wCardscene_CardPalette - desired palette ID

    ; Remove the current palette
    FOR row, 0, 5 ; A card is 4 tiles wide and 5 tiles tall
        Do_MemAnd CARDSCENE_TILEMAP_CARD{u:card} + row*SCRN_VX_B, 4, %11111000
    ENDR
    ; Add the new palette
    FOR row, 0, 5 ; A card is 4 tiles wide and 5 tiles tall
        Do_MemAdd CARDSCENE_TILEMAP_CARD{u:card} + row*SCRN_VX_B, 4, [wCardscene_CardPalette], $FF
    ENDR
    ret
ENDR