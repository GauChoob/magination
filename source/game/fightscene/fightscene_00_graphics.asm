Fightscene00_DrawCreatureLeft::
    PushROMBank

    ; Load Creature Tileset
    xor a
    ld [rVBK], a
    SwitchROMBank [wTemp_1.Fightscene_Creature_TilesetBank]
    Get16 hl, wTemp_0.Fightscene_Creature_TilesetAddress
    ld de, FIGHTSCENE_VRAM_ARENA_CREATURE_LEFT
    ld bc, (FIGHTSCENE_VRAM_ARENA_CREATURE_LEFT_END - FIGHTSCENE_VRAM_ARENA_CREATURE_LEFT) ;Unused line. This line exists because previously the pattern was not compressed and MemMov was used instead, which required this line
    call RLE_Decompress

    ; Reset the TileAttrmap
    XCall Fightscene_CreatureLeft_ClearTilemap
    Set8 rVBK, $01
    XCall Fightscene_CreatureLeft_ClearAttrmap

    ; Draw the Creature on the TileAttrmap
    ;   Center the creature's position using Fightscene00_CenterCreatureTilemap
    ld a, [wTemp_3.Fightscene_Creature_TilemapBank]
    SwitchROMBank a  ; inefficiency - ld a, a
    ld hl, FIGHTSCENE_CREATURE_LEFT_SPRITE
    Get8 e, wTemp_4.Fightscene_Width
    Get8 d, wTemp_5.Fightscene_Height
    xor a
    call Fightscene00_CenterCreatureTilemap
    Get16 bc, wTemp_2.Fightscene_Creature_TilemapAddress
    call Unpack_AttrTileRLE_To_StaticTilemap

    ; Load the Creature Palette
    ld a, [wTemp_7.Palette_PaletteBank]
    SwitchROMBank a  ; inefficiency - ld a, a
    Get16 bc, wTemp_6.Palette_PaletteAddress
    call Fightscene00_LoadCreatureLeftPalette

    PopROMBank
    ret


Fightscene00_DrawCreatureRight::
    PushROMBank

    ; Load Creature Tileset
    Set8 rVBK, $01
    SwitchROMBank [wTemp_1.Fightscene_Creature_TilesetBank]
    Get16 hl, wTemp_0.Fightscene_Creature_TilesetAddress
    ld de, FIGHTSCENE_VRAM_ARENA_CREATURE_RIGHT
    ld bc, (FIGHTSCENE_VRAM_ARENA_CREATURE_RIGHT_END - FIGHTSCENE_VRAM_ARENA_CREATURE_RIGHT) ;Unused line. This line exists because previously the pattern was not compressed and MemMov was used instead, which required this line
    call RLE_Decompress

    ; Reset the TileAttrmap
    XCall Fightscene_CreatureRight_ClearAttrmap
    xor a
    ld [rVBK], a
    XCall Fightscene_CreatureRight_ClearTilemap

    ; Draw the Creature on the TileAttrmap
    ;   Center the creature's position using Fightscene00_CenterCreatureTilemap
    ;   Flip the creature (so it faces left)
    ;   Increment the palette by 3 to use the right colors (0-2 is used from CreatureLeft)
    SwitchROMBank [wTemp_3.Fightscene_Creature_TilemapBank]
    ld hl, FIGHTSCENE_CREATURE_RIGHT_SPRITE
    Get8 e, wTemp_4.Fightscene_Width
    Get8 d, wTemp_5.Fightscene_Height
    ld a, $01
    call Fightscene00_CenterCreatureTilemap
    Get16 bc, wTemp_2.Fightscene_Creature_TilemapAddress
    call Unpack_AttrTileRLE_To_XFlippedStaticTilemap
    XCall Fightscene_FixCreatureRightAttrmap

    ; Load the Creature Palette
    SwitchROMBank [wTemp_7.Palette_PaletteBank]
    Get16 bc, wTemp_6.Palette_PaletteAddress
    call Fightscene00_LoadCreatureRightPalette

    PopROMBank
    ret


Fightscene00_DrawArena::
    ; Using data saved into memory from Fightscene_LoadArenaData,
    ; Load the tilemaps and tilesets for the top and bottom scrolling effect
    ; Also loads palettes 7 + 8 which are used for the top and bottom part respectively
    PushROMBank

    xor a
    ld [rVBK], a

    ; Load Arena Bitmap Top
    SwitchROMBank [wTemp_1.Fightscene_Arena_TopBitmapBank]
    Get16 hl, wTemp_0.Fightscene_Arena_TopBitmapAddress
    ld de, FIGHTSCENE_VRAM_ARENA_TOP
    ld bc, (FIGHTSCENE_VRAM_ARENA_TOP_END - FIGHTSCENE_VRAM_ARENA_TOP) ;Unused line. This line exists because previously the pattern was not compressed and MemMov was used instead, which required this line
    call RLE_Decompress

    ; Load Arena Bitmap Bottom
    SwitchROMBank [wTemp_8.Fightscene_Arena_BottomBitmapBank]
    Get16 hl, wTemp_A.Fightscene_Arena_BottomBitmapAddress
    ld de, FIGHTSCENE_VRAM_ARENA_BOTTOM
    ld bc, (FIGHTSCENE_VRAM_ARENA_BOTTOM_END - FIGHTSCENE_VRAM_ARENA_BOTTOM) ;Unused line. This line exists because previously the pattern was not compressed and MemMov was used instead, which required this line
    call RLE_Decompress

    ; Make a single blank tile
    Set8 rVBK, $01
    Do_MemSet FIGHTSCENE_VRAM_ARENA_BLANKTILE, $10, $00 ;Wipe a single tile to an empty square - inefficiency - could just use tile 1:EE instead?

    ; Load Arena TileAttrmap Top
    SwitchROMBank [wTemp_3.Fightscene_Arena_TopTilemapBank]
    ld hl, FIGHTSCENE_ARENA_TOP
    ld e, $20
    ld d, $04
    Get16 bc, wTemp_2.Fightscene_Arena_TopTilemapAddress
    call Unpack_AttrTileRLE_To_StaticTilemap

    ; Load Arena TileAttrmap Bottom
    SwitchROMBank [wTemp_9.Fightscene_Arena_BottomTilemapBank]
    ld hl, FIGHTSCENE_ARENA_BOTTOM
    ld e, $20
    ld d, $04
    Get16 bc, wTemp_B.Fightscene_Arena_BottomTilemapAddress
    call Unpack_AttrTileRLE_To_StaticTilemap

    ; The tilemaps are based off of an index of 0, but the top tileset is loaded at tile FIGHTSCENE_TILEID_ARENA_TOP
    ; We therefore need to offset the whole tilemap
    ; Same thing for the bottom
    xor a
    ld [rVBK], a
    Do_MemAdd FIGHTSCENE_ARENA_TOP, (FIGHTSCENE_ARENA_TOP_END - FIGHTSCENE_ARENA_TOP), FIGHTSCENE_TILEID_ARENA_TOP, $FF
    Do_MemAdd FIGHTSCENE_ARENA_BOTTOM, (FIGHTSCENE_ARENA_BOTTOM_END - FIGHTSCENE_ARENA_BOTTOM), FIGHTSCENE_TILEID_ARENA_BOTTOM, $FF
    ; The tilemaps use palette 0 and 1, but the two palette colors are actually loaded into 6 and 7, so we need to offset the palette number
    Set8 rVBK, $01
    Do_MemAdd FIGHTSCENE_ARENA_TOP, (FIGHTSCENE_ARENA_TOP_END - FIGHTSCENE_ARENA_TOP), $06, $FF
    Do_MemAdd FIGHTSCENE_ARENA_BOTTOM, (FIGHTSCENE_ARENA_BOTTOM_END - FIGHTSCENE_ARENA_BOTTOM), $06, $FF

    ; Load Palette 6 and 7
    SwitchROMBank [wTemp_7.Palette_PaletteBank]
    Get16 bc, wTemp_6.Palette_PaletteAddress
    call Fightscene00_LoadArenaPalette

    ; The first color from the Arena palette is the background color
    Get16 hl, wTemp_6.Palette_PaletteAddress
    DerefHL
    Set16 wFightscene_ArenaColor, hl ;Stores the first color from wTemp_6.Palette_PaletteAddress
    Do_CallForeign Fightscene_PalFX_SetFightsceneArenaColor

    PopROMBank
    ret


Fightscene00_LoadCreatureLeftPalette::
    ; Loads the target palette into Pal0-2
    ; Sets the first color of Pal0, Pal1 to transparent (Arena Color)
    ; Optionally sets the first color of Pal2 to transparent if the color is the magic number RGB 0, $F, $F
    ; Inputs:
    ;   bc = Palette address
    ;   ROMBank set to Palette bank
    xor a
    ld [wPalette_VBlankReady], a
    ld hl, wPalette_BaseBuffers
    ld e, 0
    ld a, 4*3
    call Unpack_Palette_Palettes
    XCall Fightscene_PalFX_SetCreaturePaletteArenaColor
    Set8 wPalette_VBlankReady, $01
    ret


Fightscene00_LoadCreatureRightPalette::
    ; Loads the target palette into Pal3-5
    ; Sets the first color of Pal3, Pal4 to transparent (Arena Color)
    ; Optionally sets the first color of Pal5 to transparent if the color is the magic number RGB 0, $F, $F
    xor a
    ld [wPalette_VBlankReady], a
    ld hl, wPalette_BaseBuffers
    ld e, 4*3
    ld a, 4*3
    call Unpack_Palette_Palettes
    XCall Fightscene_PalFX_SetCreaturePaletteArenaColor
    ld a, $01
    ld [wPalette_VBlankReady], a
    ret


Fightscene00_LoadArenaPalette::
    ; Copies 2 palettes from [bc] into palette 6 + 7
    ; Inputs:
    ;   [bc] - 8 Colors (2 palette ids)
    xor a
    ld [wPalette_VBlankReady], a
    ld hl, wPalette_BaseBuffers
    ld e, 6*4
    ld a, 2*4
    call Unpack_Palette_Palettes
    Set8 wPalette_VBlankReady, $01
    ret


Fightscene00_LoadCompletePalette::
    ; TODO - appears to be unused (I can't think of a use case for this either)
    ; Loads 8 palettes
    ; Inputs:
    ;   bc = source
    ;   hl = destinatioon
    xor a
    ld [wPalette_VBlankReady], a
    ld e, 0*4
    ld a, 8*4
    call Unpack_Palette_Palettes
    Set8 wPalette_VBlankReady, $01
    ret


Fightscene00_LoadCreaturePalette::
    ; Loads the palette of a creature
    ; Inputs:
    ;   wTemp_9.Palette_BattleFX_CreatureIsRight
    ;   wTemp_6.Palette_PaletteAddress
    ;   wTemp_7.Palette_PaletteBank
    PushROMBank
    ld a, [wTemp_9.Palette_BattleFX_CreatureIsRight]
    and a
    jr nz, .CreatureRight
    .CreatureLeft:
        ld a, [wTemp_7.Palette_PaletteBank]
        SwitchROMBank a  ; inefficiency - ld a, a
        Get16 bc, wTemp_6.Palette_PaletteAddress
        call Fightscene00_LoadCreatureLeftPalette
        PopROMBank
        ret
    .CreatureRight:
        ld a, [wTemp_7.Palette_PaletteBank]
        SwitchROMBank a  ; inefficiency - ld a, a
        Get16 bc, wTemp_6.Palette_PaletteAddress
        call Fightscene00_LoadCreatureRightPalette
        PopROMBank
        ret


Fightscene00_CenterCreatureTilemap::
    ; Centers the creature at an ideal spot, given the creature tilemap dimensions
    ; Inputs:
    ;   hl = Topleft tilemap address of the creature area
    ;   d = height
    ;   e = width
    ;   a = (Left = 0, NotFlipped), (Right = 1, XFlipped)
    ; Output:
    ;   hl = Ideal tilemap address to start drawing the creature
    and a
    jr nz, .RightSide_Flipped
    .LeftSide_NotFlipped:
        ; X offset: X=0, unless width=16, in which case X=1
        ; Y offset: According to Fightscene00_CenterCreature_CalculateYOffset
        ld a, e
        cp $10
        jr z, .SkipXOffset1 ; bug - should be nc (though I don't think there is any width larger than $10)
            inc hl
        .SkipXOffset1:
        call Fightscene00_CenterCreature_CalculateYOffset
        add hl, bc
        ret

    .RightSide_Flipped:
        ld a, e
        cp $10 ; If a >= $10, skip
        jr nc, .SkipXOffset2
            call Fightscene00_CenterCreature_CalculateXOffset
            ; Right-align instead of Left-align: $10 - width - XOffset
            NegativeA
            add $10
            sub c
            ld c, a
            add hl, bc
        .SkipXOffset2:
        call Fightscene00_CenterCreature_CalculateYOffset
        add hl, bc
        ret


Fightscene00_CenterCreature_CalculateXOffset:
    ; Inputs:
    ;   e = height
    ; Outputs:
    ;   bc = offset = 
    ;                d >= $10 then 0, else
    ;                [Fightscene00_XOffset_Table + width]
    ld bc, $0000
    ld a, e
    cp $10
    ret nc

    push hl
    ld c, e
    ld hl, Fightscene00_XOffset_Table
    add hl, bc
    ld c, [hl]
    pop hl
    ret


Fightscene00_CenterCreature_CalculateYOffset:
    ; Inputs:
    ;   d = height
    ; Outputs:
    ;   bc = offset = 
    ;                if d == $0A then 0, else
    ;                [Fightscene00_YOffset_Table + height]
    ld bc, $0000
    ld a, d
    cp FIGHTSCENE_CREATURE_MAX_HEIGHT
    ret z  ; bug - should be nc technically for >=, and Fightscene00_YOffset_Table goes up to 12, not 10

    push hl
    ld c, d
    ld hl, Fightscene00_YOffset_Table
    add hl, bc
    ld c, [hl]
    pop hl
    ret