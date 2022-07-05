; This function initializes the textbox
; TextboxXX_Init - Initialize the textbox


    ; source/engine/script/modules/script_00_text.s
    ;   source/engine/script/modules/textbox/TextboxXX_Init.s

    ; $2203
TextboxXX_Init::
    ; Initializes the textbox
    ; This function is assumed to be in ROMX (always accessed using ForeignCall)
    xor a
    ld [wTextbox_IconToggle], a
    ld [wTextbox_Position], a
    ld a, $07
    ld [wTextbox_WX], a
    ld [rWX], a
    ld a, $90
    ld [wTextbox_WY], a ;equivalent to the lower start menu
    ld [rWY], a

    ; Copy BITMAP_MenuAssets
    SwitchROMBank BANK(BITMAP_MenuAssets)
    Set8 rVBK, $01
    Do_MemMov BITMAP_MenuAssets, Textbox_VRAM_FRAME, $0060

    ; Set the attributes of the first 5 rows of the window (textbox area)
    Do_MemSet $9C00, $00A0, Textbox_TEXT_ATTRIBUTES

    ; Set the tiles of the first 5 rows of the window (textbox area) to blank
    xor a
    ld [rVBK], a
    Do_MemSet $9C00, $00A0, Textbox_TILEID_BLANK
    ret