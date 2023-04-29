
; source/rom/bank00.s

; Cartridge header

    ; source/ROM/bank00.s


SECTION "ROM0_Header", ROM0[$0100]

    ; $0100
Boot::
    nop
    jp Boot_HardReset

    ; $104
HeaderLogo::
    NINTENDO_LOGO
HeaderTitle::
    db "MAGI-NATION"
HeaderManufacturerCode::
    db "BNNE"
HeaderCGBFlag::
    db CART_COMPATIBLE_GBC
HeaderNewLicenseeCode::
    db $36, $54
HeaderSGBFlag::
    db $00
HeaderCartridgeType::
    db CART_ROM_MBC5_RAM_BAT
HeaderROMSize::
    db CART_ROM_2048KB ;ROM 128x8kb
HeaderRAMSize::
    db CART_SRAM_32KB ;RAM 4x8kb
HeaderDestinationCode::
    db $01 ; Non-Japanese
HeaderOldLicenseeCode::
    db $33
HeaderMaskROMVersion::
    db $00
HeaderComplementCheck::
    db $0E
HeaderGlobalChecksum::
    db $5A, $64