Cardscene00_Graphics_InitCardMap::
    ; Unpacks a tilemap and attrmap representing a card
    ; Inputs:
    ;   bc = source
    ;   hl = destination
    ld e, $04 ;width
    ld d, $05 ;height
    call Unpack_TileAttr_To_StaticTilemap
    ret


Cardscene00_Graphics_ResetCards:
    ; Instantly loads the tilesets for all the 8 cards
    FOR card, 0, 8
        Mov8 wTemp_8.Fightscene_CreatureID, wCardscene_CardSlotCreatureIDs.Card{u:card}
        Set8 wTemp_9.Cardscene_CardSlot, {u:card}
        XCall Cardscene_SetCardSlotCreatureID ; inefficiency? This function is called twice as it is also called by Cardscene00_Graphics_DrawCreature. To verify
        call Cardscene00_Graphics_DrawCreature
    ENDR
    ret


Cardscene00_Graphics_InitCardPalettes:
    ; Setup the card palettes
    ; Palettes $00 - $03 are the palettes for the different cards
    ; Palette $04 was the cursor (now removed)
    ; Palette $05 is the palette for CARDSCENE_BLANKCARD
    ; Palette $06 - $07 initialized in Cardscene00_Graphics_InitMap
    ld a, BANK(PAL_Cardscene_Main)
    SwitchROMBank a ;inefficiency, causes a ld a,a
    xor a
    ld [wPalette_VBlankReady], a
    ld bc, PAL_Cardscene_Main
    ld hl, wPalette_BaseBuffers.Background
    ld e, 0
    ld a, 6*4
    call Unpack_Palette_Palettes
    Palette_SetPackedInterval 0, 6
    XCall PaletteFX_RefreshAnimBuffer
    Set8 wPalette_VBlankReady, $01
    ret


Cardscene00_Graphics_InitMap:
    ; Initializes the tilemap and attrmap
    ; 1) Loads the arena's color into palette 6
    ; 2) Reloads the textbox palette into palette 7
    ; 3) Loads the bitmap for the arena's background
    ; 4) Loads the tilemap/attrmap of the arena
    ; 5) Fixes the tilemap/attrmap of the textbox
    PushROMBank

    ; Set palette 6:
    ;   6.0 <- Arena color
    ;   6.1 <- Black
    ;   6.2, 6.3 undefined (not used)
    XCall Fightscene_GetCardsceneArenaColor
    XCall Fightscene_ArenaPalFX_SetCardsceneArenaColor

    ; Reload the textbox palette into the 7th palette
    SwitchROMBank BANK(PAL_Cardscene_Textbox)
    ld bc, PAL_Cardscene_Textbox
    ld hl, wPalette_BaseBuffers
    ld e, 7*4
    ld a, 4
    call Unpack_Palette_Palettes

    ; Update the bottom 2 palettes
    Palette_SetPackedInterval 6, 2
    XCall PaletteFX_RefreshAnimBuffer

    ; Load the bitmap for the card shadows / arena background
    xor a
    ld [rVBK], a
    SwitchROMBank BANK(BITMAP_Cardscene_ArenaBackground)
    Do_MemMov BITMAP_Cardscene_ArenaBackground, $9000, (BITMAP_Cardscene_ArenaBackground.End - BITMAP_Cardscene_ArenaBackground)

    ; Load the tilemap and attrmap
    Set8 rVBK, $01
    SwitchROMBank BANK(TILEATTR_Cardscene_ArenaBackground)
    ld hl, CARDSCENE_BACKGROUND_ARENA
    ld a, $14
    ld e, a   ; inefficiency, could have loaded directly into e
    ld a, $0D
    ld d, a   ; inefficiency, could have loaded directly into d
    ld bc, TILEATTR_Cardscene_ArenaBackground
    call Unpack_TileAttr_To_StaticTilemap
    PopROMBank ; Inefficiency - not very useful to push/pop the rombank because we immediately do an XCall right after

    ; Re-initialize the textbox and arena color
    XCall Cardscene_ResetArenaBackground
    ret

    ; $31D5
Cardscene00_Graphics_InitCardBattle::
    ; Initialize the palettes
    ; Initiailize the tilemap
    ; Reload the ArenaBackground tileset
    ; Reset the window
    ; Reloads the cards' tilesets

    PushROMBank
    call Cardscene00_Graphics_InitCardPalettes
    call Cardscene00_Graphics_InitMap

    ; Draw the tilemaps and attrmaps of the 8 cards (must be done after Cardscene00_Graphics_InitMap)
    ld a, BANK(TILEATTR_CARDSCENE_CARD0)
    SwitchROMBank a
    FOR card, 0, 8
        ld hl, CARDSCENE_TILEMAP_CARD{u:card}
        ld bc, TILEATTR_CARDSCENE_CARD{u:card}
        call Cardscene00_Graphics_InitCardMap
    ENDR

    ; Reload the cards' tilesets
    call Cardscene00_Graphics_ResetCards

    ; Hide the window
    Set8FF rWX, FIGHTSCENE_WX_HIDDEN

    PopROMBank
    ret


Cardscene00_Graphics_DrawCreature:
    ; Instantly draws a card icon on a card
    ; This function must only be called when the screen is off
    ; If the screen is on, try using Cardscene_SpawnCreature instead
    ; Inputs:
    ;   wTemp_8.Fightscene_CreatureID
    ;   wTemp_9.Cardscene_CardSlot
    PushROMBank

    ; Copy the tileset of the creature's card into vram
    XCall Cardscene_GetCardIcon
    XCall Cardscene_SetCardSlotCreatureID
    SwitchROMBank [wVBlank_Bank]
    Mov8 rVBK, wVBlank_DestVBK
    Get16 hl, wVBlank_SourceAddress
    Get16 de, wVBlank_DestAddress
    ld bc, 5*4*$10
    call MemMov

    ; Set the palette
    Mov8 wCardscene_PaletteTargetCardSlot, wTemp_9.Cardscene_CardSlot
    XCall Cardscene00_VBlank_SetCardPalette
    XCall PaletteVB_UpdateBackgroundPalettes

    PopROMBank
    ret


Cardscene00_Graphics_ResetCardPaletteUNUSED::
    ; Resets the target card's palette back to its original palette
    ; Inputs:
    ;   wTemp_9.Cardscene_CardSlot
    Mov8 wCardscene_PaletteTargetCardSlot, wTemp_9.Cardscene_CardSlot
    XCall Cardscene_GetCardSlotCreatureID
    XCall Cardscene_GetCardPalette
    Set16_M wVBlank_Func, Cardscene00_VBlank_SetCardPalette
    ret


Cardscene00_Graphics_SetCursorCardPaletteUNUSED::
    ; Turns the entire card yellow. This used to be the way a card was selected, before it was replaced by a real cursor
    ; Inputs:
    ;   wTemp_9.Cardscene_CardSlot
    Mov8 wCardscene_PaletteTargetCardSlot, wTemp_9.Cardscene_CardSlot
    Set8 wCardscene_CardPalette, CARDSCENE_PALETTE_CURSOR
    Set16_M wVBlank_Func, Cardscene00_VBlank_SetCardPalette
    ret


Cardscene00_VBlank_SetCardPalette::
    ; Sets an entire card slot's 20 tiles to a specified palette
    ; The palette register is updated, just in case
    ; Inputs:
    ;   wCardscene_PaletteTargetCardSlot - cardslot (0-7)
    ;   wCardscene_CardPalette - palette
    ; Outputs:
    ;   The target card's 20 tiles are set to palette wCardscene_CardPalette
    ;   PaletteVB_UpdateBackgroundPalettes is called
    Set8 rVBK, $01
    ld a, [wCardscene_PaletteTargetCardSlot]
    .Card0:
    cp 0
    jp nz, .Card1 ; inefficiency - should be using jr - etc for the rest of the function
        XCall Cardscene_SetPalette_Card0
        jp .Finally ; inefficiency - should be using jr - etc for the rest of the function
    .Card1:
    cp 1
    jp nz, .Card2
        XCall Cardscene_SetPalette_Card1
        jp .Finally
    .Card2:
    cp 2
    jp nz, .Card3
        XCall Cardscene_SetPalette_Card2
        jp .Finally
    .Card3:
    cp 3
    jp nz, .Card4
        XCall Cardscene_SetPalette_Card3
        jp .Finally
    .Card4:
    cp 4
    jp nz, .Card5
        XCall Cardscene_SetPalette_Card4
        jp .Finally
    .Card5:
    cp 5
    jp nz, .Card6
        XCall Cardscene_SetPalette_Card5
        jp .Finally
    .Card6:
    cp 6
    jp nz, .Card7
        XCall Cardscene_SetPalette_Card6
        jp .Finally
    .Card7:
        XCall Cardscene_SetPalette_Card7
    .Finally:
    XCall PaletteVB_UpdateBackgroundPalettes
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret