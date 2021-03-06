; The text module is used to copy strings and values from memory onto the screen
; To use the text module,
; 1) Use the Macro Text_Setup to choose the destination in VRAM where to write the string
; 2) Set wText_StringFrame to the address of the string
; 3) Optionally, set wText_StringFormatFrame to format the string with a value
; 4) Set wText_HandlerFunc to the desired handler function (see text_handler.asm)
; 5) Call the Macro Text_Update once per frame to run the handler function
; 6) Every frame, the handler function will return in the register d any special characters
;       You must manually interpret all special characters except for ð<FORMAT> and ð<SKIPFORMAT>
;       e.g. see the function Textbox_Update as a good example of handling special characters
;
; Simple example of this module:
; Text_Setup $00, $8000, $9800, 12   ; We will copy 12 characters into the tileset at $00:8000
;                                    ; and the string will show up at $9800 in the tilemap
; Set16 wText_StringFrame, sHelloWorld ; Points to "Hello world!"
; Set16 wText_HandlerFunc, TextHandler_Char
; ld a, 12
; .Loop:
;   push af
;   AwaitVBlank
;   Text_Update
;   ; We will ignore special characters
;   pop af
;   dec a
;   jp nz, .Loop
; ret
;
; Another example using formatting:
; Text_Setup $00, $8000, $9800, $20   ; We will copy up to $20 characters into the tileset at $00:8000
;                                    ; and the string will show up at $9800 in the tilemap
; Set16 wText_StringFrame, sHi ; Points to "I'm ð. I'm ð.ð"
; Set16 wText_StringFormatFrame, sInfo ; Points to "Bobðmadð"
;       ; The strings will swap every time ð is encountered.
;       ; Expected output is "I'm Bob. I'm mad.ð"
; Set16 wText_HandlerFunc, TextHandler_String
; .Loop:
;   AwaitVBlank
;   Text_Update
;   ld a, d
;   cp "ð"   ;Keep writing until we hit ð<EOF>
;   jp nz, .Loop
; ret
;
; Some helper functions:
; Text_SetVBlankCharSource - calculates the source address of a character to copy
; Text_StringGetChar - reads the character at the current frame of the current string
;                       also handles ð<FORMAT> and ð<SKIPFORMAT>
; Text_FormatChar - converts an 8-bit value into a string number and saves as a formatted value
; Text_FormatWord - converts a 16-bit value into a string number and saves as a formatted value
; Text_Wrap - checks if you hit the end of your VRAM output buffer and wraps to the beginning if you did
;
; In the released version, the module is only accessed via the Textbox or Menu module


    ; $2AC8
INCLUDE "source/engine/text/text_vblank.asm"

    ; $2B51
INCLUDE "source/engine/text/text_handler.asm"


    ; $2BC8
Text_SetVBlankCharSource::
    ; Given a character id, calculate the address that points to the char in the font tileset
    ; Then store that into wVBlank_SourceAddress so it can be copied during vblank
    ; Inputs:
    ;   e = char id
    ; Outputs:
    ;   wVBlank_Bank and wVBlank_SourceAddress point to the char in BITMAP_Font

    ; e*=$10 -> bc
    swap e
    ld a, e
    and $F0
    ld c, a
    ld a, e
    and $0F
    ld b, a

    ld hl, BITMAP_Font
    add hl, bc
    Set16 wVBlank_SourceAddress, hl
    Set8 wVBlank_Bank, BANK(BITMAP_Font)
    ret

    ; $2BE4
Text_StringGetChar::
    ; Read the character at the current string frame and update the frame
    ; Inputs:
    ;   wText_StringFrame - current frame of the string
    ;   wText_StringFormatFrame - frame of modifiable parameters
    ; Outputs:
    ;   e = character
    ;   d = special character code, or $00 if not special
    ;   If the character code is ð<FORMAT>,
    ;       wText_StringFormatFrame and wText_StringFrame will be swapped,
    ;       allowing a custom value/text to be inserted into the dialogue
    ;       And then the first character from the custom text will be displayed
    ;   If the character code is ð<SKIPFORMAT>,
    ;       wText_StringFormatFrame is incremented to the next ð<FORMAT>, effectively
    ;       skipping the custom value/text
    ;       This will crash and reset the game if the custom text is more than $FE characters long
    FGet16 hl, wText_StringFrame
    ld a, [hl+]
    ld d, a
    ld e, a
    Set16 wText_StringFrame, hl
    ld a, d
    add $100-Text_SPECIALCHARLOW
    jr c, .ParseSpecial
    ;NotSpecial
        ld d, $00
        ret
    .ParseSpecial:
        ;CheckFormat
        ld a, d
        cp "ð" ;<FORMAT>
        jr nz, .CheckSkipFormat
            ;If ð<FORMAT>
            ;Swap wText_StringFrame and wText_StringFormatFrame
            ;and then get a new real char
            ld b, h
            ld c, l
            ld hl, wText_StringFormatFrame
            ld a, [hl+]
            ld [wText_StringFrame], a
            ld a, [hl]
            ld [wText_StringFrame+1], a
            ld a, b
            ld [hl-], a
            ld [hl], c
            jr Text_StringGetChar

    .CheckSkipFormat:
        cp "ð" ;<SKIPFORMAT>
        ret nz

        FGet16 hl, wText_StringFormatFrame
        ld e, $FF

        .SearchNextFormatLoop:
            dec e
            jp z, Boot_SoftReset ;If there's no format after $FE bytes, soft reset as a failsafe

            ld a, [hl+]
            cp "ð" ;<FORMAT>
            jr nz, .SearchNextFormatLoop

        Set16 wText_StringFormatFrame, hl
        jp Text_StringGetChar

    ; $2C33
Text_FormatChar::
    ; Formats an 8-bit number to be used in a line of dialogue
    ; Inputs:
    ;   hl - points to an 8-bit value
    ; Outputs:
    ;   wText_StringFormatFrame points to a 3-digit number
    ld e, [hl]
    ld d, $00
    ;At this point, could also jump to the next function to save a few bytes
    call Math_ConvertNumberToDigits
    ld hl, wX100
    ld bc, wText_StringBuffer
    ld d, $03

    .Write3DigitsLoop:
        ld a, [hl-]
        add "0"
        ld [bc], a
        inc bc
        dec d
        jr nz, .Write3DigitsLoop

    ld a, "ð" ;<FORMAT>
    ld [bc], a
    Set16_M wText_StringFormatFrame, wText_StringBuffer
    ret

    ; $2C57
Text_FormatWord::
    ; Formats a 16-bit number to be used in a line of dialogue
    ; Inputs:
    ;   hl - points to a 16-bit value
    ; Outputs:
    ;   wText_StringFormatFrame points to a 3-digit number
    ld e, [hl]
    inc hl
    ld d, [hl]
    ;At this point, could also jump to the previous function to save a few bytes
    call Math_ConvertNumberToDigits
    ld hl, wX100
    ld bc, wText_StringBuffer
    ld d, $03

    .Write3DigitsLoop:
        ld a, [hl-]
        add "0"
        ld [bc], a
        inc bc
        dec d
        jr nz, .Write3DigitsLoop

    ld a, "ð" ;<FORMAT>
    ld [bc], a
    Set16_M wText_StringFormatFrame, wText_StringBuffer
    ret

    ; $2C7B
Text_Wrap::
    ; Checks if you hit the end of the tileset text buffer
    ; If you did, wraps around back to the start of the buffer
    ; Inputs:
    ;   wText_TileCurrent - Position of next tileid to place
    ;   wText_TileLimit - End of the buffer by tileid
    ;   wText_TileStart - Start of the buffer by tileid
    ;   wVBlank_DestAddress - address of where the next tile should be copied
    ;   wText_VBlankBase - address of the start of the buffer
    ; Outputs:
    ;   If wText_TileCurrent == wText_TileLimit
    ;       wText_TileCurrent = wText_TileStart
    ;       wVBlank_DestAddress = wText_VBlankBase
    Get8 d, wText_TileCurrent
    ld a, [wText_TileLimit]
    cp d
    ret nz

    Mov8 wText_TileCurrent, wText_TileStart
    Mov16 wVBlank_DestAddress, wText_VBlankBase
    ret