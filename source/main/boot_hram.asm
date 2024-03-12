SECTION "HRAM3", HRAM[$FFFE]
    ds $FFFE - @
hCGBFlag::
    ; Defined only on Hard Reset
    ; 1 if CGB or GBA; 0 if DMG
    ds 1