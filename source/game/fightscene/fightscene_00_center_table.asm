Fightscene00_XOffset_Table::
    ; Left-jusitifies the monster approximately at the 7th row
    db $03   ; Width = 0  01234567890123456
    db $03   ; Width = 1     _
    db $02   ; Width = 2    __
    db $02   ; Width = 3    ___
    db $02   ; Width = 4    ____
    db $02   ; Width = 5    _____
    db $01   ; Width = 6   ______
    db $01   ; Width = 7   _______
    db $01   ; Width = 8   ________
    db $01   ; Width = 9   _________
    db $01   ; Width = 10  __________
    db $01   ; Width = 11  ___________
    db $01   ; Width = 12  ____________
    db $01   ; Width = 13  _____________
    db $01   ; Width = 14  ______________
    db $01   ; Width = 15  _______________
    db $00   ; Width = 16  ________________

    ; $3769
Fightscene00_YOffset_Table::
    ; Centers the bottom of the monster approximately at the 7th row
    db $20*7   ; Height = 0  01234567890
    db $20*7   ; Height = 1         _
    db $20*7   ; Height = 2         __
    db $20*6   ; Height = 3        ___
    db $20*5   ; Height = 4       ____
    db $20*4   ; Height = 5      _____
    db $20*3   ; Height = 6     ______
    db $20*3   ; Height = 7     _______
    db $20*2   ; Height = 8    ________
    db $20*1   ; Height = 9   _________
    db $20*0   ; Height = 10 __________    -> Handled specially Fightscene00_CenterCreature_CalculateYOffset
    db $20*0   ; Height = 11 ___________   -> Technically the max height is 10 (FIGHTSCENE_CREATURE_MAX_HEIGHT), so the last two rows are unused
    db $20*0   ; Height = 12 ___________