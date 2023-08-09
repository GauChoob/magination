Game_Loop::
    ; Master game loop
    ldh a, [hTicker]
    inc a
    ldh [hTicker], a

    ld a, [wCntDown]
    bit button_BIT_START, a    ;Start button
    jr z, .SkipMainMenu
        XCall Menu_MainMenu_Open ;Opens Tony's Main Menu
    .SkipMainMenu:

    call System_UpdateGame
    jp Game_Loop