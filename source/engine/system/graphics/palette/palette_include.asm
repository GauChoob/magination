RSSET 1
DEF PALETTE_SWAP_RB         RB 1
DEF PALETTE_SWAP_BG         RB 1
DEF PALETTE_SWAP_RG_Bugged  RB 1
DEF PALETTE_SWAP_RGB        RB 1


MACRO RGB
    ; RGB hues to Color (2 bytes)
    ; \1 = R (0-1F)
    ; \2 = G (0-1F)
    ; \3 = B (0-1F)
    ASSERT \1 >= 0,"Red less than 0"
    ASSERT \1 <= $1F,"Red more than $1F"
    ASSERT \2 >= 0,"Green less than 0"
    ASSERT \2 <= $1F,"Green more than $1F"
    ASSERT \3 >= 0,"Blue less than 0"
    ASSERT \3 <= $1F,"Blue more than $1F"
    dw (\1) + (\2)*%100000 + (\3)*%10000000000
ENDM

MACRO RGBA
    ; RGBA hues to Color (2 bytes)
    ; \1 = R (0-1F)
    ; \2 = G (0-1F)
    ; \3 = B (0-1F)
    ; \4 = A (0-1)
    ASSERT \1 >= 0,"Red less than 0"
    ASSERT \1 <= $1F,"Red more than $1F"
    ASSERT \2 >= 0,"Green less than 0"
    ASSERT \2 <= $1F,"Green more than $1F"
    ASSERT \3 >= 0,"Blue less than 0"
    ASSERT \3 <= $1F,"Blue more than $1F"
    ASSERT \4 >= 0,"Alpha less than 0"
    ASSERT \4 <= 1,"Alpha more than 1"
    dw (\1) + (\2)*%100000 + (\3)*%10000000000 + (\4)*%1000000000000000
ENDM


MACRO Palette_PackedLoop
    ; Used to determine the length of hScript.SmallCounter and hScript.BigCounter (see Palette_ReadPackedLoop)
    ; \1 = FrameDelay (1-4) -> upper 2 bits (subtract 1)
    ; \2 = TotalIterations (0-$3F) -> bottom 6 bits
    ASSERT \1 >= 1,"FrameDelay less than 1"
    ASSERT \1 <= 4,"FrameDelay more than 4"
    ASSERT \2 >= 0,"TotalIterations less than 0"
    ASSERT \2 <= $3F,"TotalIterations more than $3F"
    db ((\1)-1)*%01000000 + (\2)
ENDM

MACRO Palette_PackedInterval
    ; Byte representing a packed interval of palettes
    ;   \1 = Palette index (0-7 = Background, 8-15 = Sprite) -> upper nibble
    ;   \2 = Number of palettes (1-16) -> subtract 1 -> lower nibble
    ASSERT \1 >= 0,"Index less than 0"
    ASSERT \1 <= 15,"Index more than 15"
    ASSERT \2 >= 1,"Length less than 1"
    ASSERT \2 <= $16,"Length more than 16"
    db (\1)*%10000 + ((\2)-1)
ENDM

MACRO Palette_SetPackedInterval
    ; Select an interval of palettes and pack it into wTemp_8.Palette_PackedInterval
    ; This is used to specify palettes in wPalette_BaseBuffers
    ; Inputs:
    ;   \1 = Palette index (0-7 = Background, 8-15 = Sprite) -> upper nibble
    ;   \2 = Number of palettes (1-16) -> subtract 1 -> lower nibble
    db $3E ;ld a, XX
        Palette_PackedInterval \1, \2 
    ld [wTemp_8.Palette_PackedInterval], a
ENDM