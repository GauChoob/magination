; TODO move to a new file

MACRO LoadBitmap
    ; Used in BITSET files
    ; Destination, Source, Width, Height
    dw \1
    dw \2
    db \3
    db \4
    db BANK(\2)
ENDM



