

msObjectPressStart::

.FadeOutUnused:

    SpriteDraw                                              ; $78F6
        MoveDraw $FF, $00, $00, SPRITE_PressStart           ; $78F7
    EndSpriteDraw                                           ; $78FC

    Jump .FadeOutUnused                                     ; $78FD

.Main:

    SpriteDraw                                              ; $7900
        MoveDraw 12, $00, $00, SPRITE_PressStart            ; $7901
    EndSpriteDraw                                           ; $7906

    Delay 10                                                ; $7907

    Jump msObjectPressStart.Main                            ; $7909