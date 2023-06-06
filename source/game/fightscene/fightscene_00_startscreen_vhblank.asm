Fightscene00_HBlank_StartScreen_DrawArenaTop::
    ; Switch to Arena Top

    ; Also calculate the updated SCX position while we are at it
    Get8 e, wFightscene_Arena_TopDeltaX
    ld a, [wFightscene_Arena_TopSCX]
    add e
    ld [wFightscene_Arena_TopSCX], a
    ldh [rSCX], a

    Set8FF rSCY, FIGHTSCENE_SCY_STARTSCREEN_ARENATOP
    Set8FF rLYC, FIGHTSCENE_LYC_STARTSCREEN_ARENABOTTOM
    Set16FF hInterrupt_HBlank_Func, Fightscene00_HBlank_StartScreen_DrawArenaBottom
    pop hl
    pop af
    reti


Fightscene00_HBlank_StartScreen_DrawArenaBottom::
    ; Switch to Arena Bottom

    ; Also calculate the updated SCX position while we are at it
    Get8 e, wFightscene_Arena_BottomDeltaX
    ld a, [wFightscene_Arena_BottomSCX]
    add e
    ld [wFightscene_Arena_BottomSCX], a
    ldh [rSCX], a

    Set8FF rSCY, FIGHTSCENE_SCY_STARTSCREEN_ARENABOTTOM
    pop hl
    pop af
    reti


Fightscene00_VBlank_StartScreen::
    ; This VBlank adds the arena effect to the start screen

    ; Sets the window for horizontal scroll instead of calling Do_Graphics_VBlank
    ldh a, [hInterrupt_VBlank_Control]
    bit 0, a
    jr z, .SkipGraphics
    .DoGraphics:
        ; Window On
        Set8 rLCDC, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_BLK21 | LCDCF_BG9800 | LCDCF_OBJ8 | LCDCF_OBJON | LCDCF_BGON
        call hSystem_RunDMA
        ; Show the MagiNation Title
        Set8FF rWX, FIGHTSCENE_WX_HIDDEN ; Hide window
        xor a
        ldh [rSCX], a
        Set8FF rSCY, FIGHTSCENE_SCY_STARTSCREEN_TITLE
        Set8FF rLYC, FIGHTSCENE_LYC_STARTSCREEN_ARENATOP
    .SkipGraphics:
    Do_VBlank_Function_V
    Do_Sound_VBlank

    Set16FF hInterrupt_HBlank_Func, Fightscene00_HBlank_StartScreen_DrawArenaTop
    ret