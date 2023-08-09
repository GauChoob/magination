; Functions used during VBlank by a Text_Handler

; TextVBlank_TilemapChar - UNUSED - Updates a tilemap to display a character that was just copied into the tileset
; TextVBlank_TilemapString - Updates a tilemap to display a string that was just copied into the tileset
; TextInterrupt_VBlankFunc_CopyTile - Copies a tile from source to the tileset, and then updates the tilemap
; Interrupt_VBlankFunc_CopyTile is also referenced by Text_Handler


TextVBlank_TilemapChar::
    ; UNUSED function
    ; This function is not used anymore because it was copied into the second half of Text_Interrupt_VBlankFunc_CopyTile
    ; Therefore, this function is redundant
    ; Inputs:
    ;   wText_MapDest - location where to update the tilemap
    ;   wText_TileCurrent - tileid of the current char
    ; Outputs:
    ;   Set8 wText_MapDest+, wText_TileCurrent+

    ; Copy the attribute
    Get16 hl, wText_MapDest
    Set8 rVBK, $01
    Mov8 hl, wText_Attributes

    ; Copy the tile id
    xor a
    ld [rVBK], a
    ld a, [wText_TileCurrent]
    ld [hl+], a
    inc a
    ld [wText_TileCurrent], a

    Set16 wText_MapDest, hl
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret


TextVBlank_TilemapString::
    ; After an entire string (wText_TileStart to wText_TileLimit) has been copied into the tileset,
    ; update the tilemap to display the entire string on the same frame
    ; Inputs:
    ;   wText_TileStart - start of string
    ;   wText_TileLimit - end of string
    ;   wText_Attributes - attributes of all the tiles
    ;   wText_MapDest - location in tilemap to paste string
    Get8 e, wText_TileStart
    Get8 d, wText_TileLimit
    Get8 b, wText_Attributes
    FGet16 hl, wText_MapDest
    ld c, e

    ; Loop through the string, updating the attributes and tilemap
    .Loop:
        ; Set the attributes
        Set8 rVBK, $01
        Set8 hl, b

        ; Set the tile id
        xor a
        ld [rVBK], a
        Set8 hl+, c
        inc c
        ld a, c
        cp d
        jr nz, .Loop

    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret


TextInterrupt_VBlankFunc_CopyTile::
    ; Copies from BITMAP_Font the specified character, and then updates the tilemap/attrmap
    ;   to display the character
    ;
    ; Inputs:
    ;   To copy the tile from ascii into the tileset:
    ;       wVBlank_Bank
    ;       wVBlank_SourceAddress
    ;       wVBlank_DestVBK
    ;       wVBlank_DestAddress
    ;   To update the tilemap and attrmap:
    ;       wText_MapDest
    ;       wText_Attributes
    ;       wText_TileCurrent

    ; Copy the targetted tile into the tileset
    call Interrupt_VBlankFunc_CopyTile
    ; Copy the attributes into the tilemap
    Get16 hl, wText_MapDest
    Set8 rVBK, $01
    Get8 [hl], wText_Attributes
    ; Copy the tileid into the tilemap
    xor a
    ld [rVBK], a
    ld a, [wText_TileCurrent]
    ld [hl+], a
    ; Store the incremented tileid and tilemap position
    inc a
    ld [wText_TileCurrent], a
    Set16 wText_MapDest, hl
    ret