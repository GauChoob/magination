    ;ds $FF8A - @
hActor_CurrentAddress::
    ; WRAM address of the current actor
    ds 2
    ;ds $FF8C - @
hActor::
    ; See Actor_Struct for details
    ;ds $FF8C - @
    .Flags:
        ds 1
    ;ds $FF8D - @
    .State:
        ds 2
    ;ds $FF8F - @
    .XOffset:
        ds 1
    ;ds $FF90 - @
    .YOffset:
        ds 1
    ;ds $FF91 - @
    .XTile:
        ds 1
    ;ds $FF92 - @
    .YTile:
        ds 1
    ;ds $FF93 - @
    .TileAddress:
        ds 2
    ;ds $FF95 - @
    .SpriteBase:
        ds 1
    ;ds $FF96 - @
hActor_ScreenX::
    ; X-position relative to the screen (OAM value)
    ds 1
    ;ds $FF97 - @
hActor_ScreenY::
    ; Y-position relative to the screen (OAM value)
    ds 1
    ;ds $FF98 - @
hActor_ScreenYPrev::
    ds 1