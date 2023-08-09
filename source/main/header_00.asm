SECTION "Cart Header", ROM0[$0100]


Boot:
    nop
    jp Boot_HardReset


HeaderLogo:
    NINTENDO_LOGO
HeaderTitle:
    db "MAGI-NATION"
HeaderManufacturerCode:
    db "BNNE"
HeaderCGBFlag:
    db CART_COMPATIBLE_GBC
HeaderNewLicenseeCode:
    db "6T"
HeaderSGBFlag:
    db $00
HeaderCartridgeType:
    db CART_ROM_MBC5_RAM_BAT
HeaderROMSize:
    db CART_ROM_2048KB ;ROM 128x8kb
HeaderRAMSize:
    db CART_SRAM_32KB ;RAM 4x8kb
HeaderDestinationCode:
    db CART_DEST_NON_JAPANESE
HeaderOldLicenseeCode:
    db $33
HeaderMaskROMVersion:
    db $00
HeaderComplementCheck:
    db $0E
HeaderGlobalChecksum:
    db $5A, $64