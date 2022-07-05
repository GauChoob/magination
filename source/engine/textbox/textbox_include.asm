
; TILEMAP ADDRESSES

; Window tilemap of the start of the displayed portrait
; The portrait is 5x5 tiles (so 27 tiles must be skipped every line)
DEF Textbox_ICON      EQU $9C00
; Window tilemap contains the text a person is saying
; The tilemap is 5 rows tall. This is the start of each row
DEF Textbox_LINE0     EQU $9C05 ; Generally empty
DEF Textbox_LINE1     EQU $9C25 ; First line of text
DEF Textbox_LINE2     EQU $9C45 ; Generally empty, but sometimes has text when the text is scrolling
DEF Textbox_LINE3     EQU $9C65 ; Second line of text
DEF Textbox_LINE4     EQU $9C85 ; Generally empty
;Deprecated unused cursor tile
DEF Textbox_CURSOR    EQU $9C93


; TILESET ADDRESSES

; The tileset data is stored in VRAM bank 1
DEF Textbox_VRAM_FRAME   EQU $8800  ; The first few tiles are icons*
DEF Textbox_VRAM_TEXT    EQU $8860  ; The next tiles contain the text that a character is saying
DEF Textbox_VRAM_ICON0   EQU $8A40  ; Two icons are stored in VRAM.
DEF Textbox_VRAM_ICON1   EQU $8BD0
                        ;$8D60

; TILEIDs

;* Here are the available icon tileds:
DEF Textbox_TILEID_BLANK          EQU $80
DEF Textbox_TILEID_CURSORHOVER    EQU $81
DEF Textbox_TILEID_CURSORSELECT   EQU $82
DEF Textbox_TILEID_BORDER_TOP     EQU $83
DEF Textbox_TILEID_BORDER_RIGHT   EQU $84
DEF Textbox_TILEID_BORDER_CORNER  EQU $85

; OTHER

; Parameters of wTextbox_Position
DEF Textbox_CLOSED EQU $00 ; Not visible
DEF Textbox_BUSY   EQU $01 ; Sliding open or closed
DEF Textbox_OPEN   EQU $02 ; Visible


; Attribute flags for textbox
DEF Textbox_TEXT_ATTRIBUTES EQU $8F ;Priority over OAM, VRAM1, palette 7
DEF Textbox_ICON_ATTRIBUTES EQU $0F ;For some reason, the icon doesn't have priority over OAM


; Parameters of the disabled unused cursor
DEF Textbox_CURSOR_BLINKDELAY EQU 20 ;20 frames on, 20 frames off
DEF Textbox_CURSOR_ATTRIBUTES EQU $EF ;palette 7, flipped horizontal and vertically