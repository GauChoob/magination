SECTION "WRAM", WRAM0[$C000]



    ;ds $C000 - @
INCLUDE "source/engine/system/graphics/frame/frame_wram_aligned.asm"

ds ALIGN[8,0] ; $C0A0-$C0FF unused due to alignment

    ;ds $C100 - @
wTilemap_Row_Tiles::
    ds $16
    .End:
    ASSERT HIGH(wTilemap_Row_Tiles) == HIGH(wTilemap_Row_Tiles.End) ; Var has to be aligned so that the upper byte doesn't change
    ;ds $C116 - @
wTilemap_Col_Tiles::
    ds $14
    .End:
    ASSERT HIGH(wTilemap_Col_Tiles) == HIGH(wTilemap_Col_Tiles.End) ; Var has to be aligned so that the upper byte doesn't change

    ;ds $C12A - @
wCollMask::
    ; ?
    ; TODO - does this var need to be aligned?
    ds 8

    ;ds $C132 - @
INCLUDE "source/engine/actor/actor_wram.asm"


    ;ds $C6CF - @
wMapWidth:: ;Or something. To clarify. Used to move up or down a row
    ds 1
    ;ds $C6D0 - @
wColl_XDelta::
    ds 1
    ;ds $C6D1 - @
wColl_YDelta::
    ds 1
    ;ds $C6D2 - @
wColl_XMove::
    ds 1
    ;ds $C6D3 - @
wColl_YMove::
    ds 1

    ds $C6D8 - @
wEncounter_Enabled::
    ; ?
    ds 1

    ds $C6DE - @
wHotspotCurrent::
    ; ?
    ds 1
    ;ds $C6DF - @
wHotspot_Table::
    ; Points to the address of the hotspot table
    ds 2
    ;ds $C6E1 - @
wHotspot_TableSize::
    ; The number of elements in the hotspot table
    ds 1

INCLUDE "source/engine/interrupt/interrupt_wram.asm"

    ;ds $C6EC - @
wTextbox_IconToggle::
    ds 1
    ;ds $C6ED - @
wTextbox_FirstLine::
    ; 1 for the first line of text that is written on the top row
    ; 0 for subsequent lines. The text in the second line will get pushed to the top
    ds 1
    ;ds $C6EE - @
wTextbox_Position::
    ; See textbox_include.asm for valid values
    ds 1
wTextbox_Halted_UNUSED::
    ; A removed feature that would prevent the Textbox from opening/closing when a palette effect was in progress
    ds $C6F0 - @
wTextbox_WX::
    ds 1
    ;ds $C6F1 - @
wTextbox_WY::
    ds 1
    ;ds $C6F2 - @
wTextbox_CursorBlinkCounter::
    ; This var is only referenced in unused code
    ds 1
    ;ds $C6F3
wTextbox_SoundEnabled_UNUSED::
    ; Removed feature
    ds 1

    ds $C6F4 - @
wScript_Done::
    ; Only used in raindrop AI in alpha... is it used in current version? TODO
    ds 1
    ;ds $C6F5 - @
wScript_SyncNext::
    ; Value added to wScript_SyncCurrent next frame, then reset to 0
    ds 1
    ;ds $C6F6 - @
wScript_SyncCurrent::
    ; When this overflows, it gets set to 0 and wScript_SyncCount is incremented
    ds 1
    ;ds $C6F7 - @
wScript_SyncCount::
    ; Increments by 1 every time wScript_Sync_ overflows
    ds 1
    ; ds $C6F8 - @
wScript_MasterEventNextID::
    ; ID of the next frame. We need to buffer for 1 frame for all scripts to have a chance
    ; to see the ID for 1 frame (e.g. if Script_Text sets an ID, then Script_Master has already finished so it wouldn't have seen it)
    ds 1
    ; ds $C6F9 - @
wScript_MasterEventID::
    ; ID of the current frame
    ds 1
    ; ds $C6FA - @
wScript_ScrollEventNextID::
    ds 1
    ; ds $C6FB - @
wScript_ScrollEventID::
    ds 1
    ; ds $C6FC - @
wScript_TextEventNextID::
    ds 1
    ; ds $C6FD - @
wScript_TextEventID::
    ds 1

    ; ds $C6FE - @
wScript_Scroll_CopySource::
    ; When copy-pasting one part of a Metatilemap/Collisionmap to another part,
    ; this is the source address
    ds 2
    ; ds $C700 - @
wScript_Scroll_CopyDest::
    ; When copy-pasting one part of a Metatilemap/Collisionmap to another part,
    ; this is the destination address
    ds 2
    ; ds $C702 - @
wScript_Scroll_CopyYCoord::
    ; When copy-pasting one part of a Metatilemap/Collisionmap to another part,
    ; this is the destination's Y-coord
    ; TODO verify this is actually the destination's and not source
    ds 1
    ; ds $C703 - @
wScript_Scroll_CopyXCoord::
    ; When copy-pasting one part of a Metatilemap/Collisionmap to another part,
    ; this is the destination's X-coord
    ; TODO verify this is actually the destination's and not source
    ds 1
    ; ds $C704 - @
wScript_Scroll_CopyHeightCounter::
    ; When copy-pasting one part of a Metatilemap/Collisionmap to another part,
    ; this is the height of the part to copy
    ; The width is stored in hScript.SmallCounter or hScript.BigCounter TODO
    ds 1

    ;ds $C705 - @
wScript_SceneReady::
    ; If set to true, will exit single thread mode
    ds 1
    ;ds $C706 - @
wScript_Master::
    .Bank:
    ds 1
    ;ds $C707 - @
    .Frame:
    ds 2
    ;ds $C709 - @
    .State:
    ds 2
    ;ds $C70B - @
    .SmallCounter:
    ds 1
    ;ds $C70C - @
    .BigCounter:
    ds 1
    ;ds $C70D - @
wScript_Scroll::
    .Bank:
    ds 1
    ;ds $C70E - @
    .Frame:
    ds 2
    ;ds $C710 - @
    .State:
    ds 2
    ;ds $C712 - @
    .SmallCounter:
    ds 1
    ;ds $C713 - @
    .BigCounter:
    ds 1
    ;ds $C714 - @
wScript_System::
    .Bank:
    ds 1
    ;ds $C715 - @
    .Frame:
    ds 2
    ;ds $C717 - @
    .State:
    ds 2
    ;ds $C719 - @
    .SmallCounter:
    ds 1
    ;ds $C71A - @
    .BigCounter:
    ds 1
    ;ds $C71B - @
wScript_Text::
    .Bank:
    ds 1
    ;ds $C71C - @
    .Frame:
    ds 2
    ;ds $C71E - @
    .State:
    ds 2
    ;ds $C720 - @
    .SmallCounter:
    ds 1
    ;ds $C721 - @
    .BigCounter:
    ds 1

    ;ds $C722 - @
wBattle_AnimDone::
    ; TODO
    ds 1

    ;ds $C723 - @
wScript_OverworldItemSpell_Type::
    ; Type, item or spell (saved to, but not checked)
    ; todo assign values INV_TYPE_ITEM / INV_TYPE_SPELL
    ds 1
    ;ds $C724 - @
wScript_OverworldItemSpell_ID::
    ; ID of the item or spell Tony uses in overworld
    ds 1
    ;ds $C725 - @
wScript_OverworldItemSpell_CollID::
    ; Collision ID of the tile Tony is standing on when an item is used in overworld
    ds 1

    ;ds $C726 - @
wScript_RingMadeID::
    ; Creature ID of the ring made
    ds 1

    ;ds $C727 - @
INCLUDE "source/engine/system/battery/battery_wram.asm"

    ;ds $C728 - @
INCLUDE "source/engine/system/graphics/frame/frame_wram.asm"

    ; source/engine/system/graphics/palette/palette_var.s
    ;ds $C72B - @
wPalette_BaseBuffers::
    ; Palette data for the background and sprites is first loaded into these variables
    ; This palette data is copied over to wPalette_AnimBuffers
    .Background:
        ; Palettes 0-7
        ds $40
    ;ds $C76B - @
    .Sprite:
        ; Palettes 8-15
        ds $40
    ;ds $C7AB - @
wPalette_AnimBuffers::
    ; Palette data is occasionally copied to here from wPalette_BaseBuffers
    ; The palettes here may be manipulated (e.g. fade effects)
    ; This is always the palette buffer used to send info to the palette memory via register
    .Background:
        ; Palettes 0-7
        ds $40
    ;ds $C7EB - @
    .Sprite:
        ; Palettes 8-15
        ds $40
    ;ds $C82B - @
wPalette_TargetHue::
    ; Determines the target RGB value when performing a palette fade
    .Blue:
        ds 1
    ;ds $C82C - @
    .Green:
        ds 1
    ;ds $C82D - @
    .Red:
        ds 1
    ;ds $C82E - @
wPalette_FadeFunction::
    ; Contains an address to the correct desired fade function
    ; Points to one of {Palette_ColorFadeToBlack, Palette_ColorFadeToRGB, Palette_ColorFadeToWhite}
    ds 2
    ;ds $C830 - @
wPalette_FadeMagnitudeCounter::
    ; When fading, determines the amount of units by which to fade each Hue
    ds 1
    ;ds $C831 - @
wPalette_VBlankReady::
    ; This is set to 0 when modifying the palette, and set to 1 when done
    ; This prevents a partially-modified palette from being pushed to palette memory during VBlank
    ; See Palette_DeterminePaletteVBlankFunc for details
    ds 1
    ;ds $C832 - @
wPalette_Unused_Color::
    ; Unused var that has been replaced by wTemp_A.Palette_SetColor
    ; Inefficiency/bug - this variable is still initialized in Fightscene_Init
    ds 2
    ;ds $C834 - @
wPalette_Unused_Temp::
    ; Unused var that has been replaced by the wTemp_1-wTemp_C variables
    ; Inefficiency/bug - this variable is accidentally initialized in Fightscene_Init
    ; Once upon a time this variable held temporary information in a debug function
    ds 2

    ds $C836 - @
INCLUDE "source/engine/system/graphics/screenfx/screenfx_wram.asm"

    ;ds $C842 - @
wTilemap_Flags::
    ;0,YMIN,YMAX,YMOVE,0,XMIN,XMAX,XMOVE
    ds 1
    ;ds $C843 - @
wTilemap_XDelta::
    ds 1
    ;ds $C844 - @
wTilemap_YDelta::
    ds 1
    ;ds $C845 - @
wTilemap_HStop::
    ds 1
    ;ds $C846 - @
wTilemap_VStop::
    ds 1
    ;ds $C847 - @
wTilemap_Width::
    ; Number of tiles in a row in the Metatilemap
    ds 1
    ;ds $C848 - @
wTilemap_Height::
    ds 1
    ;ds $C849 - @
wTilemap_YMapPad::
    ds 2
    ;ds $C84B - @
wTilemap_YPadTable::
    ; For each visible row in the screen, the cumulative number of tiles with a lower tileaddress than the left-most tile
    ds $12
    ;ds $C85D - @
wTilemap_XTileOffset::
    ds 1
    ;ds $C85E - @
wTilemap_YTileOffset::
    ds 1
    ;ds $C85F - @
wTilemap_XTile::
    ; Camera position. I think this is the topleft corner of the camera position
    ds 1
    ;ds $C860 - @
wTilemap_YTile::
    ; Camera position. I think this is the topleft corner of the camera position
    ds 1
    ;ds $C861 - @
wTilemap_Source::
    ; TODO
    ds 2
    ;ds $C863 - @
wTilemap_DestAddr::
    ; Camera position. The address of the topleft corner of the camera position
    ds 2

    ds $C867 - @
wTilemap_Row_Dest::
    ds 2
    ;ds $C869 - @
wTilemap_RowPhase::
    ds 1
    ;ds $C86A - @
wTilemap_RowTrig::
    ; If non-zero, then there is a row to copy in the tilemap on VBlank
    ds 1

    ds $C878 - @
wTilemap_VRAMRow::
    ds 2

    ds $C891 - @
wTilemap_ColPhase::
    ds 1
    ;ds $C892 - @
wTilemap_ColTrig::
    ; If non-zero, then there is a column to copy in the tilemap on VBlank
    ds 1

    ds $C89F - @
wTilemap_VRAMCol::
    ds 2

    ds $C8C5 - @
wTilemap_VBlank_SourceAddress::
    ds 2
    ;ds $C8C7 - @
wTilemap_VBlank_DestAddress::
    ds 2


INCLUDE "source/engine/system/sound/sound_wram.asm"
INCLUDE "source/engine/system/math/math_wram.asm"
INCLUDE "source/engine/system/system_wram.asm"


    ;source/engine/text/text_var.s
    ds $C939 - @
wText_HandlerFunc::
    ; Function called every frame to update the textbox
    ds 2
    ;ds $C93B - @
wText_StringFrame::
    ; Current position of the reading frame
    ds 2
    ;ds $C93D - @
wText_StringFormatFrame::
    ; Current position of the reading frame of a text buffer
    ; You can insert custom numbers and text here to format a string with a value
    ; This is a list of text with each entry terminated with 🔊<FORMAT>
    ; Swap between wText_StringFrame and wText_StringFormatFrame using 🔊<FORMAT>
    ; You can also use 🔇<SKIPFORMAT> to skip 1 argument in wText_StringFormatFrame
    ds 2
    ;ds $C93F - @
wText_MapDest::
    ds 2
    ;ds $C941 - @
wText_VBlankBase::
    ds 2

    ds $C944 - @
wText_TileCurrent::
    ;used with wText_TileStart and wText_TileLimit
    ds 1
    ;ds $C945 - @
wText_Attributes::
    ;attribute byte for tilemap
    ds 1
    ;ds $C946 - @
wText_TileStart::
    ;lower bound of the available tiles
    ds 1
    ;ds $C947 - @
wText_TileLimit::
    ;upper bound + 1 of the available tiles (wrap back to wText_TileStart)
    ds 1
    ;ds $C948 - @
wText_DelayCounter::
    ds 1
    ;ds $C949 - @
wText_StringBuffer::
    ds $50

   ; ds $C999 - @
wTrigger_TableSize::
    ds 1
    ;ds $C99A - @
wTrigger_TableAddress::
    ds 2
    ;ds $C99C - @
wTrigger_XTile::
    ds 1
    ;ds $C99D - @
wTrigger_YTile::
    ds 1
    ;ds C99E - @
wTrigger_TilemapAddress::
    ds 2
    ;ds $C9A0 - @
wTrigger_Code::
    ds 1
    ;ds $C9A1 - @
wHero_DoorX::
    ; The position at which to place the Hero when he enters a scene
    ds 1
    ;ds $C9A2 - @
wHero_DoorY::
    ; The position at which to place the Hero when he enters a scene
    ds 1
    ;ds $C9A3
wAI_Cnt1::
    ; Mirror of wCnt1, but not transmitted to the AI if the Textbox is open
    ds 1
    ;ds $C9A4
wAI_CntDown::
    ; Mirror of wCntDown, but not transmitted to the AI if the Textbox is open
    ds 1
    ;ds $C9A5
wAI_CntUp::
    ; Mirror of wCntUp, but not transmitted to the AI if the Textbox is open
    ds 1

    ds $C9AD - @
wCardscene_StartUNUSED::
    ; This var previously was set to 1 when Cardscene was started. It is no longer used, but it is still initialized
    ds 1
    ;ds $C9AE - @
wCardscene_IsDone::
    ; Set to non-zero when Cardscene_Do should exit
    ds 1
    ;ds $C9AF - @
wCardscene_SCXW::
    ds 1
    ;ds $C9B0 - @
wCardscene_SCYW::
    ds 1
    ;ds $C9B1 - @
wCardscene_CardPalette::
    ds 1
    ;ds $C9B2 - @
wCardscene_PaletteTargetCardSlot::
    ds 1
    ;ds $C9B3 - @
wCardscene_CardSlotCreatureIDs::
    ; The creature id of each card (hero then enemy, left to right)
    ; Hero's cards:
    .Card0:
        ds 1
    .Card1:
        ds 1
    .Card2:
        ds 1
    .Card3:
        ds 1
    ; Enemy's cards:
    .Card4:
        ds 1
    .Card5:
        ds 1
    .Card6:
        ds 1
    .Card7:
        ds 1
    ;ds $C9BB - @
wCardscene_IsOpened::
    ; Zero when Cardscene_Open is initializing things
    ; Non-zero when Cardscene_Open is done
    ; This variable is used to prevent backing up the tileset more than once
    ds 1

    ;ds $C9BC - @:
wFightscene_SCX::
    ds 1
    ;ds $C9BD - @:
wFightscene_SCY::
    ds 1
    ;ds $C9BE - @
wFightscene_Arena_TopDeltaX::
    ; DeltaX of the upper part of the horizontal scroll of the Start Screen
    ds 1
    ;ds $C9BF - @
wFightscene_Arena_BottomDeltaX::
    ; DeltaX of the upper part of the horizontal scroll of the Start Screen
    ds 1
    ;ds $C9C0 - @
wFightscene_Arena_TopSCX::
    ; Position of the upper part of the horizontal scroll of the Start Screen
    ; Copied to rSCX
    ds 1
    ;ds $C9C1 - @
wFightscene_Arena_BottomSCX::
    ; Position of the lower part of the horizontal scroll of the Start Screen
    ; Copied to rSCX
    ds 1
    ;ds $C9C2 - @
wFightscene_WX::
    ds 1
    ;ds $C9C3 - @
wFightscene_WY::
    ds 1
    ;ds $C9C4 - @
wFightscene_ShakeWX::
    ds 1
    ;ds $C9C5 - @
wFightscene_Start::
    ; Set to 1 when Fightscene is being initialized
    ; Set back to 0 once Fightscene_Init is called
    ; This variable is never read from, only written to
    ds 1
    ;ds $C9C6 - @
wFightscene_Done::
    ; Set to 1 when Fightscene is done. Prevents the fightscene from updating
    ds 1
    ;ds $C9C7 - @
wFightscene_Paused::
    ; Set to 1 when Fightscene is paused via the Start button.
    ds 1
    ;ds $C9C8 - @
wFightscene_DebugOptions_UNUSED::
    ; Unused removed feature.
    ; When this var was non-zero, pressing buttons applied some test effects for debugging
    ; These features are removed and so this var does not do anything, although it is initialized
    ds 1
    ;ds $C9C9 - @
wFightscene_Count_UNUSED::
    ; Unused var
    ; Possibly a temporary counting var(?)
    ds 1
    ;ds $C9CA - @
wFightscene_BattleScriptFrame::
    ds 2
    ;ds $C9CC - @
wFightscene_BattleScriptBank::
    ds 1
    ; CREATURE_GFX_STRUCT TEMP
    ;ds $C9CD - @
wTemp_0::
    .Fightscene_Arena_TopBitmapAddress::
    .Fightscene_Creature_TilesetAddress::
    ; Fightscene_ArenaData Struct property
    ds 2
    ;ds $C9CF - @
wTemp_1::
    .Fightscene_Arena_TopBitmapBank::
    .Fightscene_Creature_TilesetBank::
    ; Fightscene_ArenaData Struct property
    ds 1
    ;ds $C9D0 - @
wTemp_2::
    .Fightscene_Arena_TopTilemapAddress::
    .Fightscene_Creature_TilemapAddress::
    ; Fightscene_ArenaData Struct property
    ds 2
    ;ds $C9D2 - @
wTemp_3::
    .Fightscene_Arena_TopTilemapBank::
    .Fightscene_Creature_TilemapBank::
    ; Fightscene_ArenaData Struct property
    ds 1
    ;ds $C9D3 - @
wTemp_4::
    .Palette_ColorCounter:
    ; Loop counter
    .Cardscene_LoopCounter:
    .Fightscene_Width:
    ds 1
    ;ds $C9D4 - @
wTemp_5::
    .Fightscene_Height:
    ds 1
    ;ds $C9D5 - @
wTemp_6::
    .Palette_PaletteAddress:
    ; Address of palette file
    ds 2
    ;ds $C9D7 - @
wTemp_7::
    .Palette_PaletteBank:
    ; Bank of palette file
    ds 1
    ;ds $C9D8 - @
wTemp_8::
    .Palette_PackedInterval:
    ; 2 parameters packed into 1 byte, used to refer to an interval of palettes in wPalette_BaseBuffers
    ; See Palette_DecodePaletteInterval_Index and Palette_DecodePaletteInterval_Length for details
    ; Upper nibble -> Starting palette index (0-15)
    ; Lower nibble +1 -> Length of the number of palettes
    ; e.g. %0011 0010 -> Palettes 3-5
    .Palette_ColorSwapType:
    ; e parameter for Palette_PaletteBufferSwapRGB
    .Fightscene_CreatureID::
    ; The type of dream creature, or CARDSCENE_EMPTYCARD, or CreatureID_Null
    .Fightscene_Arena_BottomBitmapBank::
    ; Fightscene_ArenaData Struct property
    ds 1
    ;ds $C9D9 - @
wTemp_9::
    .Palette_NumColors:
        ; Used in Palette_DecodePaletteInterval to transmit the number of Colors indicated
        ; by wTemp_8.Palette_PackedInterval
    .Palette_CyclePattern:
        ; Used to store the cycle pattern for Palette_PaletteCycleColors
    .Palette_BattleFX_CreatureIsRight:
        ; 0 = Left, 1 = Right
    .Cardscene_CardSlot::
    ; The card slot in the cardscene (0 - 7)
    .Fightscene_Arena_BottomTilemapBank::
    ; Fightscene_ArenaData Struct property
    ds 1
    ;ds $C9DA - @
wTemp_A::
    .Palette_PaletteBufferStartAddress:
    ; Used in Palette_DecodePaletteInterval to transmit the address offset from wPalette_BaseBuffers
    ; indicated by wTemp_8.Palette_PackedInterval
    .Palette_SetColor:
    ; The Color to which to set a value
    .Palette_Counter:
    ; Loop counter
    .Palette_Offset:
    ; Number of 3-palette palettes by which to offset
    .Fightscene_Arena_BottomBitmapAddress::
    ; Fightscene_ArenaData Struct property
    ds 2
    ;ds $C9DC - @
wTemp_B::
    .Palette_FadeMagnitude:
    ; 8-bit value that determines the amount of palette fade per trigger
    ; e.g. a value of 2 will change the values of R, G and B by 2 every trigger
    .Fightscene_CreatureBaseStatsPointer:
    ; Points to the start of the data for a creature in the Creature_Table
    .Fightscene_Arena_BottomTilemapAddress::
    ; Fightscene_ArenaData Struct property
    ds 2
    ;ds $C9DE - @
wTemp_C::
    .Fightscene_CreatureGraphicsPointer:
    ; Points to the graphics part of the data for a creature in the Creature_Table
    .Fightscene_ArenaDataPointer::
    ; Points to a Fightscene's Arena's data
    .Fightscene_Counter:
    ; Generic counter
    ds 2
    ;ds $C9E0 - @
wFightscene_CreatureLeft_ID::
    ds 1
    ;ds $C9E1 - @
wFightscene_CreatureRight_ID::
    ds 1
    ;ds $C9E2 - @
wFightscene_CreatureLeft_3rdPaletteTransparent::
    ; Whether the CreatureRight's 3rd Palette's first Color is the Arena's background Color
    ds 1
    ;ds $C9E3 - @
wFightscene_CreatureRight_3rdPaletteTransparent::
    ; Whether the CreatureRight's 3rd Palette's first Color is the Arena's background Color
    ds 1
    ;ds $C9E4 - @
wFightscene_ArenaIndex::
    ds 1
    ;ds $C9E5 - @
wFightscene_ArenaColor::
    ; This color replaces transparent colors
    ds 2
    ;ds $C9E7 - @
wFightscene_FightFX_Pan_TableAddress::
    ; Points to Fightscene_FightFX_PanTable_Regular or similar tables
    ds 2
    ;ds $C9E9 - @
wFightscene_FightFX_Pan_DeltaX::
    ds 1
    ;ds $C9EA - @
wFightscene_FightFX_Pan_RightDirection::
    ; nz = Right
    ; z = Left
    ds 1
    ;ds $C9EB - @
wFightscene_FightFX_ReadingFrameDelta::
    ; Amount the Fightscene has moved horizontally
    ds 1
    ;ds $C9EC - @
wFightscene_FightFX_ReadingFrameMax::
    ; Maximum of wFightscene_FightFX_ReadingFrameDelta
    ds 1
    ;ds $C9ED - @
wFightscene_FightFX_LoopCount::
    ds 1
    ;ds $C9EE - @
wFightscene_FightFX_DelayCount::
    ; Counter for wFightscene_FightFX_TotalDelay
    ds 1
    ;ds $C9EF - @
wFightscene_FightFX_TotalDelay::
    ; Move every X frames
    ds 1
    ;ds $C9F0 - @
wFightscene_FightFX_DataTable::
    ds 2
    ;ds $C9F2 - @
wFightscene_TileFX_VBlank_DestroyFunc::
    ds 2
    ;ds $C9F4 - @
wFightscene_TileFX_PointerTable::
    ds 2
    ;ds $C9F6 - @
wFightscene_TileFX_DestroyAddress::
    ds 2
    ;ds $C9F8 - @
wFightscene_TileFX_DestroyBank::
    ds 1
    ;ds $C9F9 - @
wFightscene_TileFX_ReadingFrameDelta::
    ds 1
    ;ds $C9FA - @
wFightscene_TileFX_ReadingFrameMax::
    ds 1
    ;ds $C9FB - @
wFightscene_TileFX_DestroyCount::
    ds 1
;wFightscene_FireEffectState (?) TODO

    ;ds $C9FC - @
wInventory_Type::
    ; Inventory type TODO
    ds 1
    ;ds $C9FD - @
wInventory_ID::
    ; ID of Spell, Item, etc TODO
wInventory_Success::
    ; Set to 1 if item successfully given, or else 0 in some of the functions
    ds 1
    ;ds $C9FE - @
wInventory_Amount:: ; TODO
    ; Amount of item to give
    ds 1

    ;ds $C9FF - @
wInventory_ItemSpellMapDefaultScript::
    ; When an item/spell has no defined .MapBank and .MapAddress,
    ; the script defined here will be run instead.
    ; Upon game initialization, the script will be Script_System_ItemSpellMapError,
    ; although this can be changed via Cmd_System_SetItemSpellMapError
    .Bank:
        ds 1
    .Address:
        ds 2

    ds $CA02 - @
wMenu_MainMenu_ObjectsCharsBuffer::
    ; Used to store vObjectsChars temporarily into buffer
    ds $200
    .End
    ASSERT (wMenu_MainMenu_ObjectsCharsBuffer.End - wMenu_MainMenu_ObjectsCharsBuffer) == (vObjectsChars.End - vObjectsChars),"wMenu_MainMenu_ObjectsCharsBuffer size must equal size of vObjectsChars"
    ;ds $CC02 - @
wCardscene_PaletteBuffer::
    ; Used to store wPalette_AnimBuffers.Background temporarily into buffer
    ds $40
    .End
    ASSERT (wCardscene_PaletteBuffer.End - wCardscene_PaletteBuffer) == (wPalette_AnimBuffers.Sprite - wPalette_AnimBuffers.Background)
    ;ds $CC42 - @
wMenu_MainMenu_StringToTileset_Length::
    ds 1
    ;ds $CC43 - @
wMenu_MainMenu_StringToTileset_Source::
    ds 2
    ;ds $CC45 - @
wMenu_MainMenu_StringToTileset_Dest::
    ds 2
    ;ds $CC47 - @
wMenu_MainMenu_CurrentMenu::
    ; The currently selected menu (one of Menu_MainMenu_ID_X)
    ds 1
; MENU_DYN_NUM_TILE DS  $03     ;WHERE DYNAMIC NUMBERS GO TO BE VRAM PACKED
    ds $CC4B - @
wMenu_MainMenu_NeedsScreenUpdate::
    ;If set to 1, on the next loop, the start screen will reload the upper half of the start menu, and then reset the value
    ds 1
    ;ds $CC4C - @
wMenu_MainMenu_CurRing::
    ; The currently displayed ring
    ; Value: 0 - 9 (up to xInventory_Rings_LENGTH-1)
    ds 1
    ;ds $CC4D - @
wMenu_Battle_CursorTableValidIDs::
wMenu_MainMenu_CursorTableValidIDs::
    ; This is also used in other menu setups - TODO investigate
    ; Each byte sequentially points to one of the Enum_Menu_CursorTable_MainMenu ID or Enum_Menu_CursorTable_Battle ID
    ; If the byte is non-zero, then that option is a valid option
    ; If the byte is zero, the option is invalid and so the user can't select it
    
    ds $2B     ;Bug - this object is actually of size $2C (in the alpha version it was $2B, and they forgot to update the size)
               ;Luckily this doesn't cause any visible problems
    ASSERT (wMenu_MainMenu_CursorTableValidIDs.End - wMenu_MainMenu_CursorTableValidIDs) == Menu_CursorTable_MainMenu_SIZE - 1 ; Bug - remove the -1 to fix this
    .End
    ;ds $CC78 - @
wMenu_MainMenu_Entry_EntriesPointers::
    ; In a list of 5 entries in the menu,
    ; This is a list of addresses pointing to the quantity of each of the selected entries
    .Entry0:
        ds 2
    .Entry1:
        ds 2
    .Entry2:
        ds 2
    .Entry3:
        ds 2
    .Entry4:
        ds 2
    .End
    ;ds $CC82 - @
wMenu_MainMenu_Entry_QuantityTable::
    ; Points to the beginning of the WRAM table containing the quantities of the entries
    ; The negative of this number is add to a target entry's address to get the entry's index number
    ds 2
    ;ds $CC84 - @
wMenu_MainMenu_Entry_EntryDataTable::
    ; Points to the beginning of the entry's datatable
    ds 2
    ;ds $CC86 - @
wMenu_MainMenu_Entry_PageEdge::
    ; TODO 
    ; MENU_PG_EDGE     DS  $01     ;00 FOR NONE, 1 FOR RIGHT, 2 FOR LEFT
    ; 2 = 5 entries found
    ; 1 = < 5 entries found
    ; 0 = Other mode (unknown)
    ds 1
    ;ds $CC87 - @
wMenu_MainMenu_Entry_TopChoiceCursorID::
    ; The value for wMenu_CursorID for the first entry (on 5) for this list
    ds 1
    ;ds $CC88 - @
wMenu_MainMenu_Entry_DatatableWidth::
    ; Contains the width of data table of the entry (ItemSpell_ROWSIZE, Creature_ROWSIZE, Relic_ROWSIZE)
    ds 1
    ;ds $CC89 - @
wMenu_MainMenu_TempIndex::
    ; Mainly used as a loop counter
    ds 1
    ;ds $CC8A - @
wMenu_MainMenu_CurCreatureName::
    ds $0A
    ;ds $CC94 - @
wMenu_MainMenu_CurCreatureAbilityBuffer::
    ; Copied directly from a Creature_Struct
    ; Used to count the number of unlocked abilities and to display the abilities
    .Ability0:
        ds 2
    .Ability1:
        ds 2
    .Ability2:
        ds 2
    .Ability3:
        ds 2
    .AbilityUnlock0:
        ds 1
    .AbilityUnlock1:
        ds 1
    .AbilityUnlock2:
        ds 1
    .AbilityUnlock3:
        ds 1
    .End
    ;ds $CCA0 - @
wMenu_MainMenu_CurRingRelicSlot::
    ; The current ring's currently targetted relic slot
    ; Value: 0 or 1
    ds 1
    ;ds $CCA1 - @
wMenu_MainMenu_RemovedRelicID::
    ; When pressing select on a ring's relic, the relic is removed
    ; The removed relic is stored here.
    ; If select is pressed again, the relic that is stored here is swapped back into place
    ; At the currently selected spot
    ; Value: Relic ID (0 to $FF)
    ds 1
    ;ds $CCA2 - @
wMenu_MainMenu_UnlockedAbilities::
    ; Number of unlocked abilities for the current creature
    ; Value of 1-4
    ds 1
    ;ds $CCA3 - @
wMenu_MainMenu_EquippingRelic::
    ; The relic id of the relic in the process of being equipped
    ds 1
    ;ds $CCA4 - @
wMenu_MainMenu_RelicMenuIsDisabled::
    ; Set in StartMenuLoadTopRings. 1 if there are no relics in the inventory
    ; Used in the case that all the possessed relics are equipped
    ; You can move your cursor over a Dream creature's relic, but you can't open the relic menu
    ds 1
    ;ds $CCA5 - @
wMenu_MainMenu_IsInOverworld::
    ds 1
    ;ds $CCA6 - @
wMenu_MainMenu_Disabled::
    ds 1
    ;ds $CCA7 - @
wMenu_ReturnValue::
    ds 1
    ;ds $CCA8 - @
wMenuChoice_FingerTile::
    ds 1
    ;ds $CCA9 - @
wMenu_KeyMask::
    ; A mask dictating which buttons will be handled within a menu (%1)
    ; Disabled buttons (%0) will be completely ignored
    ; Down Up Left Right Start Select A B
    ds 1
;MENU_A_FUNC         DS  $02     ;WHAT FUNC TO CALL WHEN A IS HIT
;MENU_B_FUNC         DS  $02     ;WHAT FUNC TO CALL WHEN B IS HIT
    ds $CCAE - @
wMenu_CursorTable::
    ds 2
    ;ds $CCB0 - @
wMenu_StartFunc::
    ; The function that is called when Start is pressed
    ds 2
    ;ds $CCB2 - @
wMenu_SelectFunc::
    ; The function that is called when Select is pressed
    ds 2
    ;ds $CCB4 - @
wMenu_CursorTableID::
    ds 1
    ;ds $CCB5 - @
wMenu_TextLengthCounter::
    ; Counts the number of characters left in a string to copy
    ; val = remainingchars+1
    ds 1
    ;ds $CCB6 - @
wMenu_CursorTableValidIDsPointer::
    ; Points to table of n length, where n=number of MenuOptionIDs
    ; If the entry x is 0, then entry x is considered an invalid MenuOptionID and
    ; the same arrow direction will be applied again
    ; (e.g. you press down and it loads option 3. If byte 3 is 0, then it will press down
    ; a second time and continue until it lands on a valid option)
    ; Some examples of where this points to:
    ;   wMenu_TextboxCursorTableValidIDs
    ;   wMenu_MainMenu_CursorTableValidIDs
    ;   wMenu_Generic_CursorTableValidIDs
    ds 2
    ;ds $CCB8 - @
wMenu_CursorTableValidIDsPointerBank::
    ; The bank of the wMenu_CursorTableValidIDsPointer
    ds 1
    ;ds $CCB9 - @
wMenu_BlinkFlag::
    ; Whether the cursor should blink
    ; DEF Menu_CURSOR_NOBLINK EQU $00
    ; DEF Menu_CURSOR_BLINK   EQU $01
    ds 1
    ;ds $CCBA - @
wMenu_CursorType::
    ; Menu_CURSOR_SPRITE = $00
    ; Menu_CURSOR_BG = $01
    ; Menu_CURSOR_ACTOR = $02 (bouncing cursor that points down)
    ds 1
;MENU_BGCURSOR_OLD   DS  $02     ;ADDR OF OLD BG BASED CURSOR
;MENU_BGCURSOR_NEW   DS  $02     ;ADDR OF NEW BG BASED CURSOR
; ds 2
    ds $CCC1 - @
wMenu_TextboxChoices::
    ; UNUSED. Reserved to be the number of available choices in Cmd_Textbox_Menu
    ; However, this value is never stored nor retrieved, and the number of choices
    ; is just written put directly into wMenu_TextboxCursorTableValidIDs 
    ds 1
    ;ds $CCC2 - @
wMenu_TextboxCursorTableValidIDs::
    ; 4 bytes to represent the valid choices in Cmd_Textbox_Menu
    ; 2 -> 1, 1, 0, 0
    ; 3 -> 1, 2, 1, 0
    ; 4 -> 1, 3, 2, 1
    ds 4
    .End
    ASSERT (wMenu_TextboxCursorTableValidIDs.End - wMenu_TextboxCursorTableValidIDs) == Menu_CursorTable_Textbox_SIZE

    ;ds $CCC6 - @
wMenu_Temp6::
    ; Generally an index that is looped over the 8 entries
    ; Either the absolute index value, or a relative index value from wMenu_Generic_TopEntryIndex
    ds 1

    ds $CCC9 - @
wMenu_Temp0::
    ds 1
    ;ds $CCCA - @
wMenu_Temp1::
    ds 1
    ;ds $CCCB - @
wMenu_Music_FirstSongChoice::
    ; This value is non-zero before selecting the first song, and then zero after choosing a first song
    ; The rationale is that no song is playing when you enter the Jukebox room, so you use this variable
    ; to avoid stopping a non-existant song.
    ; However, this variable is bugged because you can quit the jukebox and re-enter the music menu, and then
    ; there will be a song playing already. Then, if you choose the same song again, the song won't reset
    ds 1
    ;ds $CCCC - @
wMenu_Generic_EntryCount::
    ; The total number of entries in the list to display
    ds 1
    ;ds $CCCD - @
wMenu_Generic_EntryReturnVals::
    ; a list of 8 ids indicating the return values of the 8 visible items in a generic menu
    ; $FF if the entry is blank
    ds 8
    .End

    ds $CCD5 - @
wMenu_Generic_TopEntryIndex::
    ; The index of the top visible entry
    ds 1
    ;ds $CCD6 - @
wMenu_Generic_CursorTableValidIDs:
    ds $0E
    .End
    ASSERT (wMenu_Generic_CursorTableValidIDs.End - wMenu_Generic_CursorTableValidIDs) == Menu_CursorTable_Generic_SIZE

    ds $CCE6 - @
wMenu_Generic_EntryDataTable::
    ; Points to the data table, which is structured as:
        ; db -> ID
        ; ds $0D -> Text
    ds 2

    ds $CCEB - @
wMenu_Generic_FatArrowTileID::
    ; The tileid of the fat arrow, as this changes depending on the menu implementation
    ds 1


    ds $CCFC - @
wMenu_Music_CurrentSong::
    ; Partially implemented variable - not actually used
    ds 1

    ds $CD50 - @
wMenu_Ringsmith_RingLevel::
    ; Target level of ring being made
    ds 1
    ;ds $CD51 - @
wMenu_Ringsmith_CreatureID::
    ; CreatureID of ring being made
    ds 1

    ds $CD57 - @
wMenu_RingBank_TopVisibleRingIndex::
    ; Index of the topmost visible ring
    ds 1
    ;ds $CD58 - @
wMenu_RingBank_RingCount::
    ; Total amount of rings. Copy of xRingCount
    ds 1
    ;ds $CD59 - @
wMenu_RingBank_VisibleRings::
    ; the CreatureID and CreatureLevel for each of the 7 visible creatures
    ds 7*2
    ;ds $CD67 - @
wMenu_RingBank_VisibleRingCount::
    ; How many rings are visible (1-7)
    ds 1

    ds $CD7F - @
wMenuChoice_BlinkFingerTimer::
    ; Keeps track of the blinking timing
    ds 1
    ; ds $CD80
wMenuChoice_ConfirmingChoice::
    ; Menu_CONFIRMING_FALSE (0); the cursor is potentially blinking, is moveable
    ; Menu_CONFIRMING_TRUE (1); the user has pressed A once, but not a second time to confirm the choice
    ds 1
    ; ds $CD81 - @
wMenu_CursorID::
    ds 1

    ; ds $CD82 - @
wMenu_CursorRow::
    ; Contains the data of the currently selected row in the cursor table

    ; X,Y coordinates of the cursor
    .CursorX:
        ds 1
    .CursorY:
        ds 1
    ; The new wMenu_CursorID when you press the arrow key
    .RightID:
        ds 1
    .LeftID:
        ds 1
    .UpID:
        ds 1
    .DownID:
        ds 1
    ; The index in the MenuFunc_Table pointing to the function handler for A/B button presses
    .HandlerID_A:
        ds 1
    .HandlerID_B:
        ds 1


    ds $CD8C - @
wBattle_CopyBuffer_ListIndex::
    ds 1
    ;ds $CD8D - @
wBattle_CopyBuffer_Source::
    ; Points to the start of an item in the database of (Item/Relic/Infused/BattleCmd)
    ; e.g. Points to Baloo Root
    ds 2
    ;ds $CD8F - @
wBattle_CopyBuffer_Destination::
    ; Points to where the data will be stored from wStartMenuItemTableAddress
    ds 2
    ;ds $CD91 - @
wMenu_Battle_TableRowBuffer::
    ; todo - rename ability to BattleCmd
    ; Contains one entry from a datatable, such as
    ;   DC name ($10), Ability name ($0B - 7+4 extra info), Ability energy cost ($04),
    ;   Ring stats ($06), Spell/Item row ($22), Relic info
    UNION
        ; From function BattleCmd_GetNameAndEnergy
        .AbilityName:
            ds BATTLECMD_STRUCT_NAMESIZE
        .AbilityEnergyFlag:
            ; TODO
            ; $00 if null-pointer else $20
            ds 1
        .AbilityEnergyCost:
            ; $00 if null-pointer else energy-cost
            ds 1
        .AbilityNull:
            ; $0000 if null-pointer else undefined
            ds 2
    NEXTU
        ; From function Menu_MainMenu_Setup_Rings
        .Strength:
            ds 1
        .Skill:
            ds 1
        .Speed:
            ds 1
        .Defence:
            ds 1
        .Resist:
            ds 1
        .Luck:
            ds 1
    NEXTU
        ; From function Menu_MainMenu_Setup_Rings
        .Level:
            ds 1
        .Experience:
            ; Big-endian
            ds 2
        .MaxEnergy:
            ; Big-endian
            ds 2
    NEXTU
        ; From function ApplyRelicsCmd1Stats
        ; Relic_Table row
        .Relic_Cmd0:
            ds 2
        .Relic_Cmd1:
            ds 2
        .Relic_Cmd2:
            ds 2
        .Relic_Name:
            ds Relic_NAMESIZE
        .Relic_NameEnd:
    NEXTU
        ; From function Menu_MainMenu_BuildEntries, Menu_MainMenu_UseSelected
        ; Spell_Table or Item_Table row
        .ItemSpell_LocalAddress1:
            ds 2
        UNION
            .ItemSpell_LocalAddress2:
                ds 2
        NEXTU
            .ItemSpell_Magnitude:
                ds 1
            .ItemSpell_Skill:
                ds 1
        ENDU
        .ItemSpell_Cost:
            ds 1
        .ItemSpell_Target:
            ds 1
        .ItemSpell_MaxQuantity:
            ds 1
        .ItemSpell_Rating:
            ds 1
        .ItemSpell_Element:
            ds 1
        .ItemSpell_Use:
            ds 1
        .ItemSpell_SellPrice:
            ds 2
        .ItemSpell_Name:
            ds ItemSpell_NAMESIZE
        .ItemSpell_BattleBank:
            ds 1
        .ItemSpell_BattleAddress:
            ds 2
        .ItemSpell_MapBank:
            ds 1
        .ItemSpell_MapAddress:
            ds 2
        .ItemSpell_AnimBank:
            ds 1
        .ItemSpell_AnimAddress:
            ds 2
    NEXTU
        ; Menu_EmptyStringToTileset
        ; big bug! The maximum length that this function uses is $68!
        ; This overwrites the all the remaining variables and the top $21 bytes of the stack!!
        ;ds $68 - todo
        ds $40
    NEXTU
            ds 33
        .LevelUp_BattleCmd:
            ds 0
    ENDU

    ; Max space is $40?

    ds $CDD1 - @
wMenu_BattleCmd_TablePointer::
    ; Parameter for BattleCmd_GetNameAndEnergy
    ds 2
    ;ds $CDD3 - @
wMenu_BattleCmd_DestBuffer::
    ; Parameter for BattleCmd_GetNameAndEnergy
    ds 2
    ;ds $CDD5 - @
wMenu_BattleCmd_GetEnergyFlag::
    ; Parameter for BattleCmd_GetNameAndEnergy
    ds 1
    ;ds $CDD6 - @
wMenu_SelectedRingIndex::
    ; An offset to target one of the rings in xInventory_Rings
    ; Does the same thing as wBattle_SelectedRingIndex
    ds 1
    ds $CDD7 - @
wMenu_MainMenu_Entry_EntriesUpdated::
    ; Set to $01 if new entries were loaded, meaning the list needs to be updated
    ; Set to $00 if no new entries were loaded
    ds 1

    ;ds $CDD8 - @
wStack::
    ds $100
    ; Stack is decreasing (first pushed entry goes into $CED7 and $CED6)
    ;ds $CED8 - @
wStackTop::
    ; Position of stack
    ds 0

