
    ;ds $C931 - @
wCnt1::
    ; Controller buttons currently held down
    ds 1
    ;ds $C932 - @
wCntDown::
    ; Controller buttons pressed down this frame
    ds 1
    ;ds $C933 - @
wCntUp::
    ; Controller buttons released this frame
    ds 1
    ;ds $C934 - @
wSCY::
    ; Mirror of rSCY
    ds 1
    ;ds $C935 - @
wSCX::
    ; Mirror of rSCX
    ds 1
    ;ds $C936 - @
wScreenVisible::
    ; Mirror of LCDC
    ; Used to determine if the LCDC is on, or off ($00)
    ds 1
    ;ds $C937 - @
wRAMBank::
    ; Mirror of the current RAM bank
    ds 1
    ;ds $C938 - @
wROMBank::
    ; Mirror of the current ROM bank
    ds 1