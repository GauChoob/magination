
Unpack_AttrTileRLE_To_LargeStaticTilemap::
    ; Decompresses [bc] into the two tilemaps, starting with Bank 1 then Bank 0
    ; The tilemaps are assumed to be full size
    ; Inputs
    ;   [bc] -> RLE-encoded attrmap/tilemap in sequence (encoded separately)
    ; Outputs:
    ;   RLE-encoded attrmap/tilemap decompressed directly into $9800
    ld h, b
    ld l, c
    Set8 rVBK, $01
    ld de, $9800
    call RLE_Decompress
    xor a
    ld [rVBK], a
    ld de, $9800
    call RLE_Decompress
    ret


Unpack_TileAttr_To_StaticTilemap::
    ; Copies an uncompressed tilemap then attrmap of dimensions e x d from [bc] to VRAM tilemap [hl]
    ; Inputs:
    ;   e = width
    ;   d = height
    ;   bc = Address of buffer
    ;   hl = Destination
    ; Outputs:
    ;   tilemap of dimensions e x d copied from dimensionless [bc] to tilemap [hl]
    push hl
    push de
    xor a
    ld [rVBK], a
    call .CopyMap

    pop de
    pop hl
    Set8 rVBK, $01
    call .CopyMap
    ret

    .CopyMap:
        ; Copies a tilemap or attrmap from [bc] to [hl] of dimensions e x d
        .LoopHeight:
            push de
            .LoopWidth: ;Loop e times
                LdHLIBCI
                dec e
                jr nz, .LoopWidth
            pop de
            ; Jump to the next row of the tilemap (hl += $20-width)
            ld a, $20
            sub e
            add l
            ld l, a
            ld a, $00
            adc h
            ld h, a

            dec d
            jr nz, .LoopHeight
        ret


Unpack_TileAttr_To_XFlippedStaticTilemap::
    ; Copies an uncompressed tilemap then attrmap of dimensions e x d from [bc] to VRAM tilemap [hl]
    ; Each row's bytes are flipped horizontally (Last byte in the row becomes first byte, and so on)
    ; Vertically unchanged
    ; Inputs:
    ;   e = width
    ;   d = height
    ;   bc = Address of buffer
    ;   hl = Destination
    push hl
    push de
    xor a
    ld [rVBK], a
    call .CopyMap

    pop de
    pop hl
    Set8 rVBK, $01
    call .CopyMap
    ret

    .CopyMap:
        .LoopHeight:
            push de
            ; bc += width (go to the end of the row)
            ld a, e
            add c
            ld c, a
            ld a, $00
            adc b
            ld b, a

            .LoopWidth:
                ; flip the row by copying backwards
                dec bc
                ld a, [bc]
                ld [hl+], a
                dec e
                jr nz, .LoopWidth
            pop de

            ; bc += width (go to the start of the next row)
            ld a, e
            add c
            ld c, a
            ld a, $00
            adc b
            ld b, a

            ; hl += $20 - width (go to the next row of the tilemap)
            ld a, $20
            sub e
            add l
            ld l, a
            ld a, $00
            adc h
            ld h, a

            dec d
            jr nz, .LoopHeight
        ret


Unpack_AttrTileRLE_To_TileAttrBuffer:
    ; Decompresses attrmap and then tilemap of size d*e at address [bc]
    ; Stores the tilemap at wUnpack_Buffer and the attrmap at wUnpack_Buffer+d*e
    ; Inputs:
    ;   The bank is assumed to be BANK(wUnpack_Buffer)
    ;   e = width
    ;   d = height
    ;   bc = Address of compressed attrmap/tilemap
    ;   hl = Destination on tilemap (unused but must be preserved)
    ; Outputs:
    ;   e = width
    ;   d = height
    ;   bc = Address of uncompressed tilemap/attrmap (=wUnpack_Buffer)
    ;   hl = Destination on tilemap
    push hl
    push de
    push bc
    ; The data is stored as attrmap/tilemap, but we want to switch the order
    ; Calculate the position of the attrmap (to be right after tilemap)
    ld b, d
    ld c, e
    call Math_Mult
    ld de, wUnpack_Buffer
    add hl, de
    ld d, h
    ld e, l

    pop hl
    call RLE_Decompress

    ; The tilemap is simply at the start of the buffer
    ld de, wUnpack_Buffer
    call RLE_Decompress

    ld bc, wUnpack_Buffer
    pop de
    pop hl
    ret


Unpack_AttrTileRLE_To_StaticTilemap::
    ; Decompresses a tilemap of dimensions e x d located at [bc]
    ; and inserts it into the tilemap at hl
    ; Inputs:
    ;   e = width
    ;   d = height
    ;   bc = Address of compressed attrmap/tilemap
    ;   hl = Destination on tilemap
    PushRAMBank
    SwitchRAMBank BANK(wUnpack_Buffer)
    call Unpack_AttrTileRLE_To_TileAttrBuffer
    call Unpack_TileAttr_To_StaticTilemap
    PopRAMBank
    ret


Unpack_AttrTileRLE_To_XFlippedStaticTilemap::
    ; Decompresses a tilemap of dimensions e x d located at [bc]
    ; and inserts it into the tilemap at hl.
    ; Each row's bytes are flipped horizontally (Last byte in the row becomes first byte, and so on)
    ; Vertically unchanged
    ; Inputs:
    ;   e = width
    ;   d = height
    ;   bc = Address of compressed attrmap/tilemap
    ;   hl = Destination on tilemap
    PushRAMBank
    SwitchRAMBank BANK(wUnpack_Buffer)
    call Unpack_AttrTileRLE_To_TileAttrBuffer
    call Unpack_TileAttr_To_XFlippedStaticTilemap
    PopRAMBank
    ret


Unpack_CollisionMap::
    ; Loads an RLE-compressed collisionmap
    ; Inputs:
    ;   hl = collisionmap file with metadata
    ;       db MapWidth
    ;       dw Uncompressed file size (unused)
    ;       ds RLE-encoded collisionmap
    ; Outputs:
    ;   wMapWidth set to MapWidth
    ;   wCollisionMap loaded
    PushRAMBank
    SwitchRAMBank BANK(wCollisionMap)
    ld h, b
    ld l, c
    xor a
    ld [wColl_XMove], a
    ld [wColl_YMove], a
    Set8 wMapWidth, [hl+]

    .Decompress:
    ; The code here is shared between Unpack_CollisionMap, Unpack_MaskCollisionMap and Unpack_MaskMetatilemap

    ASSERT LOW(wCollisionMap) == LOW(wMaskCollisionMap)    ; The loading code for Collisionmaps, Collisionmap masks and Metatilemap masks is shared, and so they all need to have
    ASSERT HIGH(wCollisionMap) == HIGH(wMaskCollisionMap)  ; the same address to avoid problems
    ASSERT LOW(wCollisionMap) == LOW(wMaskMetatilemap)
    ASSERT HIGH(wCollisionMap) == HIGH(wMaskMetatilemap)

    ; Skip uncompressed file size - this is now ignored
    ; Previously this was ld c, [hl+]; ld b, [hl+]; call MemMov
    inc hl
    inc hl
    ld de, wCollisionMap ; = wMaskMetatilemap = wMaskCollisionMap
    call RLE_Decompress
    PopRAMBank
    ret


Unpack_MaskCollisionMap::
    ; Loads an RLE-compressed collisionmap into the mask bank.
    ; This map can then be later copied over the real collisionmap
    ; Note that wMaskCollisionMap shares space with wBattery_CopyBuffer and wUnpack_Buffer,
    ; and so this data could be overwritten by another function.
    ; Inputs:
    ;   hl = collisionmap file with metadata
    ;       db MapWidth - ignored
    ;       dw Uncompressed file size (unused)
    ;       ds RLE-encoded collisionmap
    ; Outputs:
    ;   wMaskCollisionMap loaded
    PushRAMBank
    SwitchRAMBank BANK(wMaskCollisionMap)
    ld h, b
    ld l, c
    inc hl ; Ignore MapWidth
    jp Unpack_CollisionMap.Decompress


Unpack_Scene::
    ; Loads multiple data files of a scene
    ;
    ; Inputs:
    ;   bc - pointer to data header of scene file
    ;       AddressBank of Background palette
    ;       AddressBank of BitmapSet
    ;       AddressBank of Pattern
    ;       AddressBank of MetaTilemap
    ;       AddressBank of CollisionMap
    ;       
    Script_Unpack Unpack_Palette_Background
    Script_Unpack Unpack_BitmapSet
    Script_Unpack Unpack_Pattern
    Script_Unpack Unpack_MetaTilemap
    Script_Unpack Unpack_CollisionMap
    ret


Unpack_Palette_Palettes::
    ; Palettes are stored uncompressed in raw format (4*Color)
    ; Copies X palettes from a source to destination
    ; Inputs:
    ;   bc -> Source address
    ;   hl -> Target address
    ;   e -> Number of Colors by which to offset hl
    ;   a -> Number of Colors to copy
    ; Outputs:
    ;   Copies a number of Colors from [bc] to [hl+2e]

    ;hl += 2*e
    ld d, a
    ld a, e
    add a
    ld e, a
    ld a, d
    ld d, $00
    add hl, de

    ; e = Number of colors
    ld e, a
    call Unpack_Palette_Colors ;a = Number of Colors;
    ret


Unpack_Palette_Background::
    ; Loads a file containing 8 background palettes
    ; Inputs:
    ;   bc = address of the palette file ($40 bytes)
    ; Outputs:
    ;   wPalette_BaseBuffers.Background <-----\
    ;   wPalette_AnimBuffers.Background <------| <-  $40 bytes copied from [bc]
    ;   Palette memory (rBCPS) <--------------/

    ; First, copy from [bc] into wPalette_BaseBuffers.Background
    ld hl, wPalette_BaseBuffers.Background
    ld e, $00       ; No offset
    ld a, $20       ; Complete palette set ($20 Colors)
    call Unpack_Palette_Palettes
    ; Then, copy from wPalette_BaseBuffers.Background to wPalette_AnimBuffers.Background
    Palette_SetPackedInterval 0,8
    XCall PaletteFX_RefreshAnimBuffer
    ; Then, push the background palette to palette memory
    XCall PaletteVB_UpdateBackgroundPalettes
    ret



Unpack_Palette_Sprite::
    ; Loads a file containing 8 sprite palettes
    ; Inputs:
    ;   bc = address of the palette file ($40 bytes)
    ; Outputs:
    ;   wPalette_BaseBuffers.Sprite <-----\
    ;   wPalette_AnimBuffers.Sprite <------| <-  $40 bytes copied from [bc]
    ;   Palette memory (rOCPS) <----------/

    ; First, copy from [bc] into wPalette_BaseBuffers.Sprite
    ld hl, wPalette_BaseBuffers.Sprite
    ld e, $00       ; No offset
    ld a, $20       ; Complete palette set ($20 Colors)
    call Unpack_Palette_Palettes
    ; Then, copy from wPalette_BaseBuffers.Sprite to wPalette_AnimBuffers.Sprite
    Palette_SetPackedInterval 8,8
    XCall PaletteFX_RefreshAnimBuffer
    ; Then, push the sprite palette to palette memory
    XCall PaletteVB_UpdateSpritePalettes
    ret


Unpack_Palette_Colors:
    ; Colors are stored uncompressed in raw format (16-bit Color)
    ; Copies e Colors from [bc] to [hl]
    ; Inputs:
    ;   bc = Source address
    ;   hl = Target address
    ;   e = Number of Colors to copy
    .Loop:
        LdHLIBCI
        LdHLIBCI
        dec e
        jr nz, .Loop
    ret


Unpack_Pattern::
    ; Decompresses the current map's pattern
    ; The total size is $800, and defines $100 metatiles
    ; First, at $D000 you have (4 bytes)*$100 of tile numbers
    ;   The order is TopLeft, TopRight, BottomLeft, BottomRight
    ; Next, at $D400, you ave (4 bytes)*$100 of tile attributes
    ;   The order is TopLeft, TopRight, BottomLeft, BottomRight
    ; Inputs:
    ;   bc = pointer to compressed pattern data
    ; Outputs:
    ;   wPattern = decompressed pattern data
    ld h, b
    ld l, c
    PushRAMBank
    SwitchRAMBank BANK(wPattern)
    ld de, wPattern
    ld bc, $1000 ;Unused line. This line exists because previously the pattern was not compressed and MemMov was used instead, which required this line
    call RLE_Decompress
    PopRAMBank
    ret


Unpack_MetaTilemap::
    ; Decompresses the metatilemap
    ; Also initializes various tilemap variables
    ; Inputs:
    ;   bc = Metatilemap file
    ;       db wTilemap_Width
    ;       dw wTilemap_YMapPad
    ;       db wTilemap_HStop
    ;       db wTilemap_VStop
    ;       dw Uncompressed size
    ;       ds raw RLE-compressed data
    ; Outputs:
    ;   TODO
    PushRAMBank
    SwitchRAMBank BANK(wMetatilemap)
    ld h, b
    ld l, c

    xor a
    ld [wTilemap_XTile], a
    ld [wTilemap_YTile], a
    ld [wTilemap_XTileOffset], a
    ld [wTilemap_YTileOffset], a
    ld [wTilemap_RowTrig], a
    ld [wTilemap_ColTrig], a
    ld [wTilemap_RowPhase], a
    ld [wTilemap_ColPhase], a
    ld [wTilemap_XDelta], a
    ld [wTilemap_YDelta], a

    ld a, %01000100
    ld [wTilemap_Flags], a

    Set8 wTilemap_Width, [hl+]

    Set8 wTilemap_YMapPad, [hl+]
    Set8 wTilemap_YMapPad+1, [hl+]

    Set8 wTilemap_HStop, [hl+]

    ld a, [hl+]
    ld [wTilemap_VStop], a
    add $0A
    ld [wTilemap_Height], a

    ; Skip uncompressed file size
    ; Previously this was ld c, [hl+]; ld b, [hl+]; call MemMov
    inc hl
    inc hl

    ld de, wMetatilemap
    call RLE_Decompress

    PopRAMBank

    ld hl, wTilemap_YPadTable ;tilemap ypad table
    xor a
    ld [hl+], a
    ld [hl+], a

    ld a, [wTilemap_Width]
    ld b, a
    ld c, $08
    ld de, $0000

    .Loop:
        ; de += wTilemap_Width
        ; wTilemap_YPadTable <- de
        ld a, b
        add e
        ld e, a
        ld [hl+], a
        ld a, $00
        adc d
        ld d, a
        ld [hl+], a

        dec c
        jr nz, .Loop

    ret


Unpack_MaskMetaTilemap::
    ; Loads an RLE-compressed metatilemap into the mask bank.
    ; This map can then be later copied over the real metatilemap
    ; Note that wMaskMetatilemap shares space with wBackgroundCharsBBuffer and wBackgroundCharsCBuffer,
    ; and so this data could be overwritten when the player opens the start menu!
    ; Inputs:
    ;   bc = Metatilemap file
    ;       db wTilemap_Width - ignored
    ;       dw wTilemap_YMapPad - ignored
    ;       db wTilemap_HStop - ignored
    ;       db wTilemap_VStop - ignored
    ;       dw Uncompressed size (unused)
    ;       ds raw RLE-compressed data
    PushRAMBank
    SwitchRAMBank BANK(wMaskMetatilemap)
    ld h, b
    ld l, c
    ld de, $0005 ; skip the header data, as this is loaded by Unpack_MetaTilemap
    add hl, de
    jp Unpack_CollisionMap.Decompress


Unpack_BitmapSet::
    ; [bc] points to the beginner of a bitmaps set (BITSET)
    ; This function will copy over all the tilesets from ROM to VRAM
    ; Inputs:
    ;   [bc] -> Pointer to beginning of BITSET
    ; Ouputs:
    ;   All tilesets copied into VRAM
    ;   bc will be shifted to the end of the bitmaps set

    ; First, do bank 0
    .VRAM0:
        ; The first byte is the number of entries
        xor a
        ld [rVBK], a
        ld a, [bc]
        inc bc
        and a
        jr z, .VRAM1
        ld d, a
        .LoopBitmap0:
            push de
            call Unpack_BitmapEntry
            pop de
            dec d
            jr nz, .LoopBitmap0
    ; Do the same for bank 1
    .VRAM1:
        Set8 rVBK, $01
        ld a, [bc]
        inc bc
        and a
        ret z
        ld d, a
        .LoopBitmap1:
            push de
            call Unpack_BitmapEntry
            pop de
            dec d
            jr nz, .LoopBitmap1
        ret


Unpack_BitmapEntry::
    ; Takes a single entry from a tilesetsHeader and copies from Source to Target given a width in tiles and height in tiles.
    ; Inputs:
    ;   [bc] -> bc      Destination VRAM Tile Address
    ;   [bc+2] -> hl    Source ROM Tile Address
    ;   [bc+4] -> e     Tiles per row ($10 usually)
    ;   [bc+5] -> d     Number of rows
    ;   [bc+6] -> a     Source ROM Bank
    ; Output:
    ;   bc points to after the entry
    ;   d rows of e tiles copied from hl to bc

    PushROMBank
    push bc
    Script_ReadWord hl
    push hl
    Script_ReadWord hl ; Source address
    Script_ReadByte e  ; width
    Script_ReadByte d  ; height
    ld a, [bc]
    SwitchROMBank a
    pop bc             ; Destination address

    ; Copy d rows
    .CopyRow:
        push de
        push hl
        push bc

        ; Copy e tiles from source to destination (up to $10 tiles)
        .CopyTileLoop:
            ; Copy 1 entire tile from source to destination ($10 bytes)
            ld d, $02
            .Copy8BytesLoop:
                REPT 8
                    ld a, [hl+]
                    ld [bc], a
                    inc c
                ENDR
                dec d
                jr nz, .Copy8BytesLoop
            dec e
            jr nz, .CopyTileLoop

        pop bc
        pop hl
        pop de

        ; comment: we could have just pushed+popped bc and not touched hl and
        ; we would have avoided needing to do the calculations below:

        ; If width == $10, then hl += $100
        inc h
        bit 4, e ; Check if width == $10
        jr nz, .Width10
        .Width00To0F:
            dec h
            ; If width < $10, then
            ; hl += width*$10
            ld a, e
            swap a
            add l
            ld l, a
            ld a, h
            adc $00
            ld h, a
        .Width10:
            ; hl += $100 and bc += $100
            inc b
        dec d
        jr nz, .CopyRow

    pop hl
    ; point bc to after the entry
    ld bc, $0007
    add hl, bc
    ld c, l
    ld b, h
    PopROMBank
    ret