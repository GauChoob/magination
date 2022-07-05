
; source/main/notcgb.s

; This code is run if, upon loading the rom, a monochrome gameboy is detected.
; The text sNotCGB_Text is displayed on the screen and the program enters an infinite loop
; This code is very poorly written

; NotCGB_Message - Runs NotCGB_Main and then loops forever
; NotCGB_Main - Generates the error message (sNotCGB_Text)
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

    ; $01D3
sNotCGB_Text::
    db "Magi-Nation is   Specially Designed for Game Boy Color.Please use a Game Boy Color To  Play This Game.   "
    ;The first two bytes ($CD $42) from the call NotCGB_Main opcode are also included in the string
    .End:

NotCGB_Message::
    call NotCGB_Main
    .Forever:
        jp .Forever

    ; $0242
NotCGB_Main::
    ld b, b
    ld a, $06
    SwitchROMBank a ;This causes a "ld a, a" instruction by accident
    ld a, $00
    ld hl, $8860

    .CopyLetter: ;for a in range(0x6B)
        push af
        push hl
        ld hl, sNotCGB_Text
        ld c, a
        ld b, $00
        add hl, bc ;sNotCGB_Text + a
        ld c, [hl]
        ld b, $10
        call Math_Mult   ;Multiplies letter by $10 to get offset in Font tileset
        Set8 wVBlank_DestVBK, $01     ;Doesn't do anything(?) because the MGB only has one WRAM bank
        ld bc, BITMAP_Font                ;Offset is BITMAP_Font + char(x)*$10
        add hl, bc
        Set16 wVBlank_SourceAddress, hl
        pop de
        Set16 wVBlank_DestAddress, de
        push de
        ld e, BANK(BITMAP_Font)
        ld hl, Interrupt_VBlankFunc_CopyTile
        call CallForeign           ;Copy the letter in tileset to VRAM
        pop hl
        ld bc, $0010                ;Move to the next position
        add hl, bc
        pop af
        inc a                       ; a++
        cp sNotCGB_Text.End - sNotCGB_Text + 2 ;Overflows by 2
        jr nz, .CopyLetter
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
    Set8 rIE, IEF_LCDC | IEF_VBLANK ; $03
    Set8 rLCDC, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_BG8800 | LCDCF_BG9800 | LCDCF_OBJ8 | LCDCF_OBJOFF | LCDCF_BGON ;$E1
    xor a
    ld [rIE], a
    ret

    ; $02E0
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