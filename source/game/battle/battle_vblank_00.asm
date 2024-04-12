Battle00_VBlank_CopyTile::
    ; Copies a tile from BITMAP_Sprite_NumberBounce into the tileset
    PushROMBank
    SwitchROMBank BANK(BITMAP_Sprite_NumberBounce)
    call Interrupt_VBlankFunc_CopyTile
    PopROMBank
    ret


Battle00_VBlank_SwapFightDef::
    ; Swaps the "Fight  " text with "Defend "
    ; This function is kind of genius - BATTLE_MENU_TILEID_CMDNAME0 and BATTLE_MENU_TILEID_DEFEND are placed
    ; at $86 and $06. So to swap between the two, we just need to add $80 (i.e. flip the topmost bit)
    ld hl, BATTLE_MENU_TILEMAP_CMD0NAME
    ld d, BATTLECMD_STRUCT_NAMESIZE
    ld b, $80
    .Loop:
        ld a, b
        add [hl]
        ld [hl+], a
        dec d
        jr nz, .Loop
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret


Battle00_VBlank_UpdatePreviousNextArrows::
    ; In the Summon/Item/Spell menu, check if we can swap to the previous and next page
    ; If yes, then we want to display the arrow. If no, we will make it blank

    ; Previous
    xor a
    ld [rVBK], a
    PushRAMBank
    SwitchRAMBank BANK("WRAM BATTLE")
    ld a, [wBattle_CursorTableValidIDs + Enum_Menu_CursorTable_Battle_SpellItem_Previous] ; or Enum_Menu_CursorTable_Battle_Summon_SwapRing
    and a
    jr z, .NoPrev
    .HasPrev:
        ld a, BATTLE_MENU_TILEID_DOWNARROW
        jr .Finally1
    .NoPrev:
        ld a, Textbox_TILEID_BLANK
    .Finally1:
    ld hl, BATTLE_MENU_TILEMAP_PREVIOUS
    ld [hl], a
    ; Vflip the arrow so it points up
    Set8 rVBK, $01
    Set8 hl, BATTLE_MENU_PREVIOUS_ATTR

    ; Next
    xor a
    ld [rVBK], a
    ld a, [wBattle_CursorTableValidIDs + Enum_Menu_CursorTable_Battle_SpellItem_Next]
    and a
    jr z, .NoNext
    .HasNext
        ld a, BATTLE_MENU_TILEID_DOWNARROW
        jr .Finally2
    .NoNext:
        ld a, Textbox_TILEID_BLANK
    .Finally2:
    ld hl, BATTLE_MENU_TILEMAP_NEXT
    ld [hl], a
    PopRAMBank
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret


sBattle_Helpers_DefendArrowArrow::
    db "Defend🡆🡇"
    .End