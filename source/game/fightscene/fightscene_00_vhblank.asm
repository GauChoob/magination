Fightscene00_HBlank_DrawCreatures::
    ; Swap the viewport to show the creatures
    ; wFightscene_WY was already set in Fightscene00_VBlank_DoGraphics
    ld a, [wFightscene_WX]
    ldh [rWX], a
    ld a, [wFightscene_SCX]
    ldh [rSCX], a
    ld a, [wFightscene_SCY]
    ldh [rSCY], a

    Set8FF rLYC, FIGHTSCENE_LYC_ARENABOTTOM
    Set16FF hInterrupt_HBlank_Func, Fightscene00_HBlank_DrawArenaBottom

    ; Bug - HBlank is already over and VRAM is locked, so this does not do anything
    PushROMBank
    SwitchROMBank BANK(Fightscene_TileFX_VBlank_DissolveEven)
    ld hl, wFightscene_TileFX_VBlank_DestroyFunc
    ECallHL
    PopROMBank

    pop hl
    pop af
    reti


Fightscene00_HBlank_DrawArenaBottom:
    ; Swap the viewport to show the bottom of the Arena
    Set8FF rWX, FIGHTSCENE_WX_HIDDEN
    ld a, [wFightscene_Arena_BottomSCX]
    ldh [rSCX], a
    ld a, FIGHTSCENE_SCY_ARENABOTTOM
    ldh [rSCY], a

    pop hl
    pop af
    reti


Fightscene00_VBlank_DoGraphics:
    ; Setup the top part of the Arena
    Set8FF rWX, FIGHTSCENE_WX_HIDDEN ; Hide Window
    ld a, [wFightscene_Arena_TopSCX]
    ldh [rSCX], a
    xor a
    ldh [rSCY], a
    ; We prep the window for when we are ready to draw the creatures
    ld a, [wFightscene_WY]
    ldh [rWY], a
    Set8FF rLYC, FIGHTSCENE_LYC_ARENATOP

    ; Do wFightscene_TileFX_VBlank_DestroyFunc 4 times (it was sped up from a lower amount)
    SwitchROMBank BANK(Fightscene_TileFX_VBlank_DissolveEven)
    FGet16 hl, wFightscene_TileFX_VBlank_DestroyFunc
    REPT 4
        push hl
        call CallHL
        pop hl
    ENDR
    ret


Fightscene00_VBlank_Main::
    ; Do graphics
    ldh a, [hInterrupt_VBlank_Control]
    bit 0, a
    jr z, .SkipGraphics
    .DoGraphics:
        ; Window On
        Set8 rLCDC, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_BLK21 | LCDCF_BG9800 | LCDCF_OBJ8 | LCDCF_OBJON | LCDCF_BGON
        call hSystem_RunDMA
        call Fightscene00_VBlank_DoGraphics
    .SkipGraphics:
    Do_VBlank_Function
    Do_Sound_VBlank

    Set16FF hInterrupt_HBlank_Func, Fightscene00_HBlank_DrawCreatures
    ret