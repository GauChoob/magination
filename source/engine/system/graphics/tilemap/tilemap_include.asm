
MACRO Tilemap_Col_ByteCopy
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [bc]
    inc c ; Assumes that the table does not cross the 256 byte boundary
    ld [de], a
ENDM

MACRO Tilemap_Row_ByteCopy
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc c
    ld [de], a
ENDM