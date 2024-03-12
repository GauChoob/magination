Game_Loop::
    ; Master game loop
    
    IF DEBUG_SOUNDS == 1
        XCall Sound_Test
    ENDC

    IF TEST == 1
        call TESTING ;TODO remove this eventually from the source
        nop
        nop
    ELSE
    ldh a, [hTicker]
    inc a
    ldh [hTicker], a
    ENDC

    ld a, [wCntDown]
    bit button_BIT_START, a    ;Start button
    jr z, .SkipMainMenu
        XCall Menu_MainMenu_Open ;Opens Tony's Main Menu
    .SkipMainMenu:

    call System_UpdateGame
    jp Game_Loop