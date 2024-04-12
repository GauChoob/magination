
; source/main/notcgb.s

; This code is run if, upon loading the rom, a monochrome gameboy is detected.
; The text sNotCGB_PleaseUseGBC is displayed on the screen and the program enters an infinite loop
; This code is very poorly written

; NotCGB_Main - Runs NotCGB_WriteMessage and then loops forever
; NotCGB_WriteMessage - Generates the error message (sNotCGB_PleaseUseGBC)
; NotCGB_CopySequentialTilesToTilemap - Subroutine to copy the tileset into the tilemap


MACRO Do_CopySequentialTilesToTilemap
    ; Copies tiles a to (a+b-1) into window background map hl
    ; \1 = Number of tiles to copy
    ; \2 = Tileid of the first tile
    ; \3 = Destination of first tile in tilemap
    ld b, (\1)
    ld a, (\2)
    ld hl, (\3)
    call NotCGB_CopySequentialTilesToTilemap
ENDM


sNotCGB_PleaseUseGBC:
    db "Magi-Nation is   Specially Designed for Game Boy Color.Please use a Game Boy Color To  Play This Game.   "
    ;The first two bytes ($CD $42) from the next function NotCGB_WriteMessage are also included in the string
    .End:


NotCGB_Main::
    call NotCGB_WriteMessage
    .LoopForever:
        jp .LoopForever


NotCGB_WriteMessage:
    ld b, b ; Debug breakpoint
    IF FIX_BUGS == 1
        SwitchROMBank BANK(BITMAP_Font)
        xor a
    ELSE
        ld a, BANK(BITMAP_Font)
        SwitchROMBank a ; Minor inefficiency This causes a "ld a, a" instruction by accident
    ; Copy the string to VRAM
    ld a, $00
    ENDC
    ld hl, $8860
    .CopyLetter:
        ; hl = sNotCGB_PleaseUseGBC + a
        push af
        push hl
        ld hl, sNotCGB_PleaseUseGBC
        ld c, a
        ld b, $00
        add hl, bc

        ; hl = BITMAP_Font + char([hl])*$10 (offset to the target letter)
        ld c, [hl]
        ld b, $10
        call Math_Mult
        IF FIX_BUGS == 0
            ; Doesn't do anything(?) because the MGB only has one bank
            ; But the intention is to write the message at $1:8860 which is where text is usually written into VRAM
            Set8 wVBlank_DestVBK, $01
        ENDC
        ld bc, BITMAP_Font
        add hl, bc

        ; Copy the letter in tileset to VRAM
        Set16 wVBlank_SourceAddress, hl
        pop de
        Set16 wVBlank_DestAddress, de
        push de
        ld e, BANK(BITMAP_Font)
        ld hl, Interrupt_VBlankFunc_CopyTile
        call CallForeign

        ; Increment the string position and target destination
        pop hl
        ld bc, $0010
        add hl, bc
        pop af
        inc a
        
        ; Check for string end
        IF FIX_BUGS == 1
            DEF NotCGB_PleaseUseGBCLength = sNotCGB_PleaseUseGBC.End - sNotCGB_PleaseUseGBC
        ELSE
            ; Bug - the string end is miscalculated
            DEF NotCGB_PleaseUseGBCLength = sNotCGB_PleaseUseGBC.End - sNotCGB_PleaseUseGBC + 2
        ENDC
        cp NotCGB_PleaseUseGBCLength
        jr nz, .CopyLetter
    
    ; Draw to tilemap
                            ;#tiles, Tileid, Tilemap pos
    Do_CopySequentialTilesToTilemap $10, $86, $9C22      ;"Magi-Nation is  "
    Do_CopySequentialTilesToTilemap $12, $97, $9C81      ;"Specially Designed"
    Do_CopySequentialTilesToTilemap $14, $A9, $9CE0      ;" for Game Boy Color."
    Do_CopySequentialTilesToTilemap $0D, $BD, $9D44      ;"Please use a "
    Do_CopySequentialTilesToTilemap $13, $C9, $9DA1      ;" Game Boy Color To "
    Do_CopySequentialTilesToTilemap $12, $DC, $9E01      ;" Play This Game.  "

    xor a
    ld [rIF], a
    ld [hInterrupt_VBlank_Control], a
    Set8 rIE, IEF_STAT | IEF_VBLANK ; $03
    Set8 rLCDC, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_BG8800 | LCDCF_BG9800 | LCDCF_OBJ8 | LCDCF_OBJOFF | LCDCF_BGON ;$E1
    xor a
    ld [rIE], a
    ret


NotCGB_CopySequentialTilesToTilemap::
    ; Copies tile ids a to (a+b-1) sequentially into window background map hl
    ; Inputs:
    ;   hl: First target tile in tilemap
    ;   b: Number of tiles to copy
    ;   a: Offset id of the first tile
    ld [hl+], a
    inc a
    dec b
    jr nz, NotCGB_CopySequentialTilesToTilemap
    ret