SECTION "ROM Bank $043", ROMX[$4000], BANK[$43]


    ; $4000
BITMAP_StartScreenArderialTopRLE::
    INCBIN "autogenerated/assets/boot/pressstart/0_Arderial/StartScreenArderialTop.tileset.rle"


    ; $412B
BITMAP_StartScreenArderialBottomRLE::
    INCBIN "autogenerated/assets/boot/pressstart/0_Arderial/StartScreenArderialBottom.tileset.rle"


    ; $43FC
BITMAP_StartScreenCoreTopRLE::
    INCBIN "autogenerated/assets/boot/pressstart/1_Core/StartScreenCoreTop.tileset.rle"


    ; $4568
BITMAP_StartScreenCoreBottomRLE::
    INCBIN "autogenerated/assets/boot/pressstart/1_Core/StartScreenCoreBottom.tileset.rle"


    ; $487B
BITMAP_StartScreenCaldTopRLE::
    INCBIN "autogenerated/assets/boot/pressstart/2_Cald/StartScreenCaldTop.tileset.rle"


    ; $4A65
BITMAP_StartScreenCaldBottomRLE::
    INCBIN "autogenerated/assets/boot/pressstart/2_Cald/StartScreenCaldBottom.tileset.rle"


    ; $4C16
BITMAP_StartScreenUnderneathTunnelsTopRLE::
    INCBIN "autogenerated/assets/boot/pressstart/3_UnderneathTunnels/StartScreenUnderneathTunnelsTop.tileset.rle"


    ; $4EA7
BITMAP_StartScreenUnderneathTunnelsBottomRLE::
    INCBIN "autogenerated/assets/boot/pressstart/3_UnderneathTunnels/StartScreenUnderneathTunnelsBottom.tileset.rle"


    ; $5135
BITMAP_StartScreenCaldGeyserTopRLE::
    INCBIN "autogenerated/assets/boot/pressstart/4_CaldGeyser/StartScreenCaldGeyserTop.tileset.rle"


    ; $53BC
BITMAP_StartScreenCaldGeyserBottomRLE::
    INCBIN "autogenerated/assets/boot/pressstart/4_CaldGeyser/StartScreenCaldGeyserBottom.tileset.rle"


    ; $56F6
BITMAP_StartScreenNaroomGeyserTopRLE::
    INCBIN "autogenerated/assets/boot/pressstart/5_NaroomGeyser/StartScreenNaroomGeyserTop.tileset.rle"


    ; $58F8
BITMAP_StartScreenNaroomGeyserBottomRLE::
    INCBIN "autogenerated/assets/boot/pressstart/5_NaroomGeyser/StartScreenNaroomGeyserBottom.tileset.rle"


    ; $5B0B
BITMAP_StartScreenNaroomTopRLE::
    INCBIN "autogenerated/assets/boot/pressstart/6_Naroom/StartScreenNaroomTop.tileset.rle"


    ; $5D9E
BITMAP_StartScreenNaroomBottomRLE::
    INCBIN "autogenerated/assets/boot/pressstart/6_Naroom/StartScreenNaroomBottom.tileset.rle"

    ; $5F95
TILEATTR_Cardscene_ArenaBackground::
    INCBIN "autogenerated/assets/cardscene/ArenaBackground.tilemap"
    INCBIN "autogenerated/assets/cardscene/ArenaBackground.attrmap"
    .End

    ; $619D
BITMAP_Cardscene_ArenaBackground::
    INCBIN "autogenerated/assets/cardscene/ArenaBackground.tileset"
    .End