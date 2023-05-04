

msObjectPressStart::

.FadeOutUnused:

    CurObjMoveDraw                                          ; $78F6
        MoveDraw $FF, $00, $00, sPressStart                 ; $78F7
    EndCurObjMoveDraw                                       ; $78FC

    Jump .FadeOutUnused                                     ; $78FD

.Main:

    CurObjMoveDraw                                          ; $7900
        MoveDraw 12, $00, $00, sPressStart                  ; $7901
    EndCurObjMoveDraw                                       ; $7906

    Delay 10                                                ; $7907

    Jump msObjectPressStart.Main                            ; $7909