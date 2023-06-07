; Cycle through all the magianims to identify each one

; Results:
; 0 - Idle
; 1 - Focus
; 2 - Summon
; 3 - Victory
; 4 - Defeat
; 5 - Focus2 (Tony only)
; 6 - AwaitInstructions (Tony only)

; Borrow some unused WRAM
RSSET $CF80
DEF wTEST_Anim_Count RB 1
DEF wTEST_Actor_Target RB 1

DEF DC_TONY EQU $58
DEF ACTOR_TONY EQU $0B
DEF ACTOR_MAGI EQU $0C

TESTING::
    SaveRegisters
    PushRAMBank
    SwitchRAMBank BANK("WRAM BATTLE")

    ; Only activate if we press Select
    ld a, [wCntDown]
    and button_MASK_SELECT
    jp z, .Skip


    Get8 b, wTEST_Anim_Count
    Get8 d, wBattle_MagiCreatureID
    Get8 c, wTEST_Actor_Target

    ; if wTEST_Actor_Target == 0, then we must initialize all our values
    cp 0
    jr nz, .SkipInit

    .Init:
        ld b, 0
        ld d, DC_TONY
        ld c, ACTOR_TONY
    .SkipInit:

    SaveRegisters
    Battle_Set_MagiAnim d, b, c
    RestoreRegisters

    ; Increment to the next anim
    inc b
    ld a, d
    cp DC_TONY
    jr z, .CheckTony

    .CheckMagi:

        ; Technically we need to turn off the screen, but since this is debugging
        ; We simply enable VRAM read/write outside of Vsync in our emulator
        ; Copy the tilesets containing the enemy magi if the current anim is 0
        ld a, b
        cp 1
        jr nz, .SkipUpdateTileset
            SaveRegisters
            PushROMBank
            SwitchROMBank BANK(Cardscene_Init)
            ld a, d
            sub CreatureID_Togoth
            add a
            ld c, a
            ld b, $00
            ld hl, Cardscene_MagiLookupTable
            add hl, bc
            DerefHL
            ld b, h
            ld c, l
            call Unpack_BitmapSet
            PopROMBank
            RestoreRegisters
        .SkipUpdateTileset

        ; Overflow if anim >= 5 for magis except Tony
        ld a, b
        cp 5
        jr c, .NoOverflow
        jr .NextMagi
    
    ; For Tony, overflow if >= 7
    .CheckTony:
        ld a, b
        cp 7
        jr c, .NoOverflow
        jr .NextMagi

    ; Select the next Magi and reset anim to 0
    .NextMagi:
        inc d
        ld b, 0
        ld c, ACTOR_MAGI

    .NoOverflow:

    ; Save the data
    Set8 wBattle_MagiCreatureID, d
    Set8 wTEST_Anim_Count, b
    Set8 wTEST_Actor_Target, c

    .Skip:
    PopRAMBank
    RestoreRegisters

    ld [wTilemap_XDelta], a ; The line of code we removed from bank0
    ret
