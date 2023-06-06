/*
Contains TileFX
Fightscene_TileFX_Setup - Sets up the effect (wFightscene_TileFX_PointerTable, wFightscene_TileFX_ReadingFrameMax must also be set concurrently)
    Also applies Fightscene_FightFX_MoveTable_Sink at the same time
wFightscene_TileFX_PointerTable can take on one of two tables:
    Fightscene_TileFX_DissolveTable_Fast_Pointers
    Fightscene_TileFX_DissolveTable_Slow_Pointers
5 instructions (rows) from the table are parsed per VBlank
However every 5th instruction is bugged and doesn't work because it attempts to erase outside of VBlank/HBlank
The erasing order can either be
    Fightscene_TileFX_VBlank_DissolveEven -> tileset is evenly destroyed everywhere at once
    Fightscene_TileFX_VBlank_DissolveSequentially (?unused) -> tileset is destroyed left-to-right, top-to-bottom
*/

    ; $6A4B
Fightscene_TileFX_VBlank_MaskByte:
    ; Reads 2 bytes of data from data pointed to by wFightscene_TileFX_PointerTable
    ; and masks the target address with the effect
    ; Inputs:
    ;   [hl] = 2 bytes of data: tile's byte offset, mask
    ;   wFightscene_TileFX_DestroyAddress = tileset target vram tile address
    ;   d = 0 (needs to be set to 0)
    ;   rVBK already set
    ; Outputs:
    ;   hl += 2

    ; Get the tile's byte offset into bc
    ld e, [hl]
    inc hl
    push hl
    FGet16 hl, wFightscene_TileFX_DestroyAddress
    add hl, de
    ld b, h
    ld c, l

    ; mask the targetted byte with the supplied mask
    pop hl
    ld e, [hl]
    ld a, [bc]
    and e
    ld [bc], a
    inc hl
    ret

    ; $6A5E
Fightscene_TileFX_VBlank_MaskTile:
    ; Mask a tile with 2 masks (one for lower nibble, one for upper nibble)

    ; Each reading frame is a pointer to 4 bytes of data:
    ;   tile's byte offset (lower byte of a 2bbp row)
    ;   masking effect (e.g. %b11111110)
    ;   tile's byte offset (upper byte of a 2bbp row)
    ;   masking effect (e.g. %b11111110)
    ; Inputs:
    ;   wFightscene_TileFX_PointerTable, offset by 2*wFightscene_TileFX_ReadingFrameDelta bytes
    ;   wFightscene_TileFX_DestroyBank
    push hl
    push bc
    push de
    Mov8 rVBK, wFightscene_TileFX_DestroyBank
    ; wFightscene_TileFX_PointerTable + 2*wFightscene_TileFX_ReadingFrameDelta
    FGet16 hl, wFightscene_TileFX_PointerTable
    ld a, [wFightscene_TileFX_ReadingFrameDelta]
    add a
    ld d, $00
    ld e, a
    add hl, de
    DerefHL
    ; Mask lower and upper byte of 2bbp data
    call Fightscene_TileFX_VBlank_MaskByte
    call Fightscene_TileFX_VBlank_MaskByte
    pop de
    pop bc
    pop hl
    ret

    ; $6A82
Fightscene_TileFX_VBlank_DissolveSequentially:: ; TODO - is this command unused?
    ; Loop through all the reading frames and completely erase a single tile
    ; Then, reset the reading frame back to the start, and erase the second tile
    ; Keep going until all tiles are erased
    ; Inputs:
    ;   wFightscene_TileFX_DestroyCount
    ;   wFightscene_TileFX_ReadingFrameDelta
    ;   wFightscene_TileFX_ReadingFrameMax
    ;   wFightscene_TileFX_DestroyAddress
    ld a, [wFightscene_TileFX_DestroyCount]
    and a
    ret z

    ; Load the next reading frame and make sure it is not the end of the data
    ld a, [wFightscene_TileFX_ReadingFrameDelta]
    inc a
    ld [wFightscene_TileFX_ReadingFrameDelta], a
    Get8 l, wFightscene_TileFX_ReadingFrameMax
    ld a, [wFightscene_TileFX_ReadingFrameDelta]
    cp l
    jr nz, .Continue
    .IncrementTargetTileAddress:
        ; Increment to the next tile and reset the reading frame
        ld a, [wFightscene_TileFX_DestroyCount]
        dec a
        ld [wFightscene_TileFX_DestroyCount], a
        Set8 wFightscene_TileFX_ReadingFrameDelta, -1
        Fightscene_FightFX_SetNextTile wFightscene_TileFX_DestroyAddress
        ret
    .Continue:
        call Fightscene_TileFX_VBlank_MaskTile
        ret

    ; $6ABF
Fightscene_TileFX_VBlank_DissolveEven::
    ; Loop $80 times through the $80 tiles from $9000 to $9800
    ; Apply the instruction at the current reading frame to each tile to erase part of the tile
    ; After we have looped through the $80 tiles, increment the reading frame to the next erasing command, and loop through all the tiles again
    ; Repeat until we reach the end of the reading frame

    ; Abort if we reached the end of the reading frame
    Get8 l, wFightscene_TileFX_ReadingFrameMax
    ld a, [wFightscene_TileFX_ReadingFrameDelta]
    cp l
    ret z

    ld a, [wFightscene_TileFX_DestroyCount]
    dec a
    ld [wFightscene_TileFX_DestroyCount], a
    jr nz, .Continue

    .IncrementReadingFrame:
        ; Reset the destroy count
        Set8 wFightscene_TileFX_DestroyCount, $80
        ; Continue with the next iteration (unless wFightscene_TileFX_ReadingFrameDelta == wFightscene_TileFX_ReadingFrameMax)
        ld a, [wFightscene_TileFX_ReadingFrameDelta]
        inc a
        ld [wFightscene_TileFX_ReadingFrameDelta], a
        cp l
        ret z ; Fall through
    .Continue:
    ; We always call this function EXCEPT if wFightscene_TileFX_ReadingFrameDelta == wFightscene_TileFX_ReadingFrameMax
    call Fightscene_TileFX_VBlank_MaskTile
    Fightscene_FightFX_SetNextTile wFightscene_TileFX_DestroyAddress
    ret

    ; $6AF9
Fightscene_TileFX_VBlank_Idle::
    ret

    ; $6AFA
Fightscene_TileFX_Setup::
    Set8 wFightscene_TileFX_ReadingFrameDelta, -1
    Set8 wFightscene_TileFX_DestroyCount, $7A ; Bug - should be $80 to properly do a full loop. Right now, the last 6 tiles might not get fully erased
    Set16_M wFightscene_TileFX_VBlank_DestroyFunc, Fightscene_TileFX_VBlank_DissolveEven
    Set16_M wFightscene_TileFX_DestroyAddress, FIGHTSCENE_VRAM_ARENA_CREATURE_RIGHT
    ; Make sure Color 0 is the arena background when we destroy, and not a creature's palette's color
    Do_CallForeign Fightscene_PalFX_SetCreatureRight3rdPaletteArenaColor
    Set8 wFightscene_TileFX_DestroyBank, $01  ; CreatureRight

    ; Apply Sink effect at the same time
    Fightscene_FightFX_MoveTable_Load_V Fightscene_FightFX_MoveTable_Sink
    xor a
    ld [wFightscene_FightFX_ReadingFrameDelta], a
    ld [wFightscene_FightFX_DelayCount], a
    ret