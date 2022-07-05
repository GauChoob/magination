
TESTING::
ACECODE::
    ld a, BANK(SystemXX_UpdatePressedButtons)                ;3E 07
    ld [rROMB0], a                                  ;EA 00 20
.Loop:
    push hl                                         ;E5
    call SystemXX_UpdatePressedButtons                       ;CD FF 59
    pop hl                                          ;E1
    ld a, [wCntDown]                                ;FA 32 C9
    bit button_BIT_DOWN, a                               ;CB 7F
    jp nz, $C000                                    ;C2 00 C0
    bit button_BIT_RIGHT, a                              ;CB 67
    jr nz,.Right                                    ;20 07
    bit button_BIT_LEFT, a                               ;CB 6F
    jr z,.Loop                                      ;28 EB
.Left:
    inc [hl]                                        ;34
    jr .Loop                                        ;18 E8
.Right:
    inc hl                                          ;23
    jr .Loop                                        ;18 E5





