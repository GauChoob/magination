SECTION UNION "VRAM0", VRAM[$8000]

    ; Todo - get rid of these
        ; $8000
vChars0:: ds $800
        ; $8800
vChars1:: ds $800
        ; $9000
vChars2:: ds $800
        ; $9800
vBGMap0:: ds $400
        ; $9C00
vBGMap1:: ds $400

SECTION UNION "VRAM0", VRAM[$8000]
    ; OVERWORLD AND MAP

    ; $8000
vNPCSpritesChars::
    ; NPC sprites are stored here
    ds $800

    ; $8800
vBackgroundCharsA::
    ; Background tilesets are stored here
    ds $800

    ; $9000
vBackgroundCharsB::
    ; Background tilesets are stored here
    ; This tileset is backed up in WRAM so that
    ; the Menu_MainMenu module can use this space
    ; However, this space remains unused by Menu_MainMenu
    ds $800



SECTION "VRAM1", VRAM[$8000]
    ; OVERWORLD AND MAP
    ; $8000
vTonySpritesChars::
    ; The Hero's sprites are stored here
    ds $800

    ; ds $8800 - @
vTextboxChars::
    ; 6 tiles used to build a menu - see textbox_include.asm
    ds $60

    ; ds $8860 - @
vMiscWindow::
    ; Miscellaneous free space
    ; Used by the Textbox module
    ; Used by the Menu_MainMenu module
    ds $5A0

    ;ds $8E00 - @
vObjectsChars::
    ; Background tilesets are stored here
    ; This tileset is backed up in WRAM so that
    ; the Menu_MainMenu module can use this space
    ds $200
    .End

    ;ds $9000 - @
vBackgroundCharsC::
    ; Background tilesets are stored here
    ; This tileset is backed up in WRAM so that
    ; the Menu_MainMenu module can use this space
    ds $800


