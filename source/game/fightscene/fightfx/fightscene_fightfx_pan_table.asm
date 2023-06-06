Fightscene_FightFX_PanTable_Regular::
    ; Duration, DeltaX - small bug - in the original source code, they mixed up the duration and deltax columns
    db $01, $01 ; First line exceptionally, the Duration is overwritten to always be $01
    db $01, $01
    db $01, $02
    db $02, $02
    db $02, $02
    db $03, $03
    db $03, $04
    db $04, $05
    db $05, $05
    db $06, $03 ; Total DeltaX = 96 (perfect!)
    db $00, $00
    db $00, $00

Fightscene_FightFX_PanTable_Fast::
    ; Duration, DeltaX
    db $01, $03 ; First line exceptionally, the Duration is overwritten to always be $01
    db $03, $06
    db $07, $08
    db $09, $0A ; Bug - By the second frame here, we already hit the max DeltaX of 96. Further DeltaXs are useless
    db $04, $08 ; So we have 8+8+3+2+2+1 = 24 frames where we try to pan right but cannot, and so we just wait 24 frames
    db $03, $03
    db $02, $02
    db $03, $02
    db $01, $01
    db $00, $00
    db $00, $00

Fightscene_FightFX_PanTable_Slow::
    ; DeltaX, Duration
    db $01, $02 ; First line exceptionally, the Duration is overwritten to always be $01
    REPT $29
        db $01, $02  ; inefficiency - should have just been a single line: db $29, $02. I think they didn't change it because of the mini bug where the first line's duration is overwritten, so it was causing problems(?)
    ENDR ; We hit DeltaX of 96 here
    REPT $0D ; Bug - 14 frames of delay where we can't pan further right
        db $01, $02
    ENDR
    db $00, $00
    db $00, $00