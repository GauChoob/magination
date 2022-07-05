    ; Use the Macro PortraitAddressBank to refer to an address here
    ; icons must be in banks $00-$0F

    ; These all seem to be pre-planned as the list is in alphabetical order since the alpha

ASSERT BANK(@) < $10
ALIGN 4,0 ;The 4 lowest bits of all portrait addresses must be 0, because the lowest 4 bits are used to store the bank

    ; $4000
ALIGN 4,0
BITMAP_Icon_Adis::
    INCBIN "autogenerated/assets/icons/Adis.tileset"
    ; $4190
ALIGN 4,0
BITMAP_Icon_Agram::
    INCBIN "autogenerated/assets/icons/Agram.tileset"
    ; $4320
ALIGN 4,0
BITMAP_Icon_Blu::
    INCBIN "autogenerated/assets/icons/Blu.tileset"
    ; $44B0
ALIGN 4,0
BITMAP_Icon_Boy::    ; The Fungus Lover
    INCBIN "autogenerated/assets/icons/Boy.tileset"
    ; $4640
ALIGN 4,0
BITMAP_Icon_Eidon::
    INCBIN "autogenerated/assets/icons/Eidon.tileset"
    ; $47D0
ALIGN 4,0
BITMAP_Icon_Evu::
    INCBIN "autogenerated/assets/icons/Evu.tileset"
    ; $4960
ALIGN 4,0
BITMAP_Icon_Fossik::
    INCBIN "autogenerated/assets/icons/Fossik.tileset"
    ; $4AF0
ALIGN 4,0
BITMAP_Icon_Gia::
    INCBIN "autogenerated/assets/icons/Gia.tileset"
    ; $4C80
ALIGN 4,0
BITMAP_Icon_Girl::
    INCBIN "autogenerated/assets/icons/Girl.tileset"
    ; $4E10
ALIGN 4,0
BITMAP_Icon_Gogor::
    INCBIN "autogenerated/assets/icons/Gogor.tileset"
    ; $4FA0
ALIGN 4,0
BITMAP_Icon_Gruk::
    INCBIN "autogenerated/assets/icons/Gruk.tileset"
    ; $5130
ALIGN 4,0
BITMAP_Icon_Josh::  ;Kid01
    INCBIN "autogenerated/assets/icons/Josh.tileset"
    ; $52C0
ALIGN 4,0
BITMAP_Icon_Sly::   ;Kid02
    INCBIN "autogenerated/assets/icons/Sly.tileset"
    ; $5450
ALIGN 4,0
BITMAP_Icon_Benny:: ;Kid03
    INCBIN "autogenerated/assets/icons/Benny.tileset"
    ; $55E0
ALIGN 4,0
BITMAP_Icon_Korg::
    INCBIN "autogenerated/assets/icons/Korg.tileset"
    ; $5770
ALIGN 4,0
BITMAP_Icon_Korremar::
    INCBIN "autogenerated/assets/icons/Korremar.tileset"
    ; $5900
ALIGN 4,0
BITMAP_Icon_Logan:: ;Prospector
    INCBIN "autogenerated/assets/icons/Logan.tileset"
    ; $5A90
ALIGN 4,0
BITMAP_Icon_Magam::
    INCBIN "autogenerated/assets/icons/Magam.tileset"
    ; $5C20
ALIGN 4,0
BITMAP_Icon_Mobis::
    INCBIN "autogenerated/assets/icons/Mobis.tileset"
    ; $5DB0
ALIGN 4,0
BITMAP_Icon_Morag::
    INCBIN "autogenerated/assets/icons/Morag.tileset"
    ; $5F40
ALIGN 4,0
BITMAP_Icon_Ogar::
    INCBIN "autogenerated/assets/icons/Ogar.tileset"
    ; $60D0
ALIGN 4,0
BITMAP_Icon_OldMan:: ;Orothe Historian or generic man
    INCBIN "autogenerated/assets/icons/OldMan.tileset"
    ; $6260
ALIGN 4,0
BITMAP_Icon_OldWoman::
    INCBIN "autogenerated/assets/icons/OldWoman.tileset"
    ; $63F0
ALIGN 4,0
BITMAP_Icon_Orlon::
    INCBIN "autogenerated/assets/icons/Orlon.tileset"
    ; $6580
ALIGN 4,0
BITMAP_Icon_Orwin::
    INCBIN "autogenerated/assets/icons/Orwin.tileset"
    ; $6710
ALIGN 4,0
BITMAP_Icon_Poad::
    INCBIN "autogenerated/assets/icons/Poad.tileset"
    ; $68A0
ALIGN 4,0
BITMAP_Icon_Pruitt::
    INCBIN "autogenerated/assets/icons/Pruitt.tileset"
    ; $6A30
ALIGN 4,0
BITMAP_Icon_Salafy::
    INCBIN "autogenerated/assets/icons/Salafy.tileset"
    ; $6BC0
ALIGN 4,0
BITMAP_Icon_SirAdam:: ;UNUSED - placeholder Tony Jones icon. The icon was moved to Oflardt
    INCBIN "autogenerated/assets/icons/Tony.tileset"
    ; $6D50
ALIGN 4,0
BITMAP_Icon_Stradus:: ;UNUSED but valid
    INCBIN "autogenerated/assets/icons/Stradus.tileset"
    ; $6EE0
ALIGN 4,0
BITMAP_Icon_Togoth::
    INCBIN "autogenerated/assets/icons/Togoth.tileset"
    ; $7070
ALIGN 4,0
BITMAP_Icon_Tony::
    INCBIN "autogenerated/assets/icons/Tony.tileset"
    ; $7200
ALIGN 4,0
BITMAP_Icon_Tryn::
    INCBIN "autogenerated/assets/icons/Tryn.tileset"
    ; $7390
ALIGN 4,0
BITMAP_Icon_Ulk::
    INCBIN "autogenerated/assets/icons/Ulk.tileset"
    ; $7520
ALIGN 4,0
BITMAP_Icon_Valkan::
    INCBIN "autogenerated/assets/icons/Valkan.tileset"
    ; $76B0
ALIGN 4,0
BITMAP_Icon_Warrada::
    INCBIN "autogenerated/assets/icons/Warrada.tileset"
    ; $7840
ALIGN 4,0
BITMAP_Icon_Wence::
    INCBIN "autogenerated/assets/icons/Wence.tileset"
    ; $79D0
ALIGN 4,0
BITMAP_Icon_Woman:: ;Underneath
    INCBIN "autogenerated/assets/icons/Woman.tileset"
    ; $7B60
ALIGN 4,0
BITMAP_Icon_Jaela:: ;Replaces a previous character called Wyloce. Wyloce's icon has been removed
    INCBIN "autogenerated/assets/icons/Jaela.tileset"
    ; $7CF0
ALIGN 4,0
BITMAP_Icon_Yaki::
    INCBIN "autogenerated/assets/icons/Yaki.tileset"
    ; $7E80
    ; No room left for another icon (40 total in this bank)