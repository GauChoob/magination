
; source/engine/system/graphics/palette/palette_vblank.s

; This module contains functions to send the WRAM palette buffers to palette memory
; These functions can only be called during VBlank or if the LCD is off

; The palette data is stored in 3 places:
;   wPalette_BaseBuffers - First copied here
;   wPalette_AnimBuffers - Copied from BaseBuffers to here, and then special effects applied
;   Palette memory (registers) - Copied from AnimBuffers

; PaletteVB_UpdateBackgroundPalettes - Updates background palettes
; PaletteVB_UpdateSpritePalettes - Updates sprite palettes
; PaletteVB_UpdatePalettes - Updates both background and sprite palettes

    ; $445F
PaletteVB_UpdateBackgroundPalettes::
    ; Copies the entire background palette from WRAM into palette memory
    ; Copies 0x40 bytes (Full palette data)
    ; Inputs:
    ;   wPalette_AnimBuffers.Background -> $40 bytes of palette data
    ; Ouputs:
    ;   $40 bytes of palette data written to rBCPD

    ld hl, wPalette_AnimBuffers.Background
    Set8 rBCPS, %10000000       ;Start with palette 0. Automatically increment after each write
    ld c, LOW(rBCPD)
    REPT $40
        ld a, [hl+]
        ld [$FF00+c], a
    ENDR
    ret


    ; $44EA
PaletteVB_UpdateSpritePalettes::
    ; Copies the entire sprite palette from WRAM into palette memory
    ; Copies 0x40 bytes (Full palette data)
    ; Inputs:
    ;   wPalette_AnimBuffers.Sprite -> $40 bytes of palette data
    ; Ouputs:
    ;   $40 bytes of palette data written to rOCPD
    ld hl, wPalette_AnimBuffers.Sprite
    Set8 rOCPS, %10000000       ;Start with palette 0. Automatically increment after each write
    ld c, LOW(rOCPD)
    REPT $40
        ld a, [hl+]
        ld [$FF00+c], a
    ENDR
    ret

    ; $4575
PaletteVB_UpdatePalettes::
    ; Updates the palettes from the buffers
    ; Sends wPalette_AnimBuffers.Background and wPalette_AnimBuffers.Sprite to palette memory and resets the vblank function
    ; Inputs:
    ;   wPalette_AnimBuffers.Background
    ;   wPalette_AnimBuffers.Sprite
    ; Outputs:
    ;   wVBlank_Func set to Interrupt_VBlankFunc_Idle
    ;   rBCPD and rOCPD updated
    call PaletteVB_UpdateBackgroundPalettes
    call PaletteVB_UpdateSpritePalettes
    Set16_M wVBlank_Func, Interrupt_VBlankFunc_Idle
    ret