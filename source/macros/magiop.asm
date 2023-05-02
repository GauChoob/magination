
RSRESET
Cmd_Enum_XX RB 1
;etc

MACRO ThatInit
    db $05
    db \1       ; Actor ID
    dw \2       ; State function (bank 1)
    db \3       ; XTile
    db \4       ; YTile
    dw \5       ; TileAddress
    db \6       ; TileNumberOffset (for sprite)
    BankAddress \7  ;Thread0 BankAddress (usually animation)
    BankAddress \8  ;Thread1 BankAddress (usually dialogue options)
ENDM

MACRO ThatTeleportTo
    db $06
    db \1       ; Object ID1
    db \2       ; Object ID2
ENDM

MACRO ThatAI
    db $07
    db \1       ; Object ID
    dw \2       ; Object_ManagerFunction
ENDM

MACRO ThatLoc
    db $08
    db \1       ; Object ID
    db \2       ; XSubtile
    db \3       ; YSubtile
    db \4       ; XTile
    db \5       ; YTile
    dw \6       ; TileAddress
ENDM

MACRO ThatScript
    db $09
    db \1           ; Object ID
    BankAddress \2  ; Thread0 InstructionBankAddress
ENDM

MACRO ThatSpriteBase
    db $0A
    db \1       ; Object ID
    db \2       ; Object_TileNumberOffset
ENDM

MACRO ThatStart
    db $0B
    db \1       ;Object ID
ENDM

MACRO ThatDelete
    db $0C
    db \1       ;Object ID
ENDM


MACRO ThisTeleportTo
    db $0F
    db \1       ;Object ID
ENDM

MACRO RestoreActorState
    db $12
ENDM

MACRO ThisAI
    db $13
    dw \1       ; Object_ManagerFunction
ENDM

MACRO ThisSetAnimSingle
    db $14
    BankAddress \1  ; Thread1 InstructionBankAddress
ENDM

MACRO ThisLoc
    db $17
    db \1       ; XSubtile
    db \2       ; YSubtile
    db \3       ; XTile
    db \4       ; YTile
    dw \5       ; TileAddress
ENDM

MACRO ThisSpriteBase
    db $18
    db \1       ; Object_TileNumberOffset
ENDM

MACRO ThisDelete
    db $19
ENDM

MACRO StartSFX0
    db $1B
    db \1       ;SFXID from musyx/project/Output/SoundIDs.asm
ENDM

MACRO StartSFX1
    db $1C
    db \1       ;SFXID from musyx/project/Output/SoundIDs.asm
ENDM

MACRO PauseSongBugged
    ; Bugged - actually stops the song instead
    db $1D
ENDM

MACRO ResumeSong
    ; Not useful since PauseSong is bugged
    db $1E
ENDM

MACRO StartSong
    db $1F
    db \1       ;SONGID from musyx/project/Output/SoundIDs.asm
ENDM

MACRO StartJingle
    db $20
    db \1       ;SONGID from musyx/project/Output/SoundIDs.asm
ENDM

MACRO StopSong
    db $21
ENDM

MACRO SetSongVolume
    db $22
    db \1       ;Volume from 0 to F
ENDM

MACRO SongFadeIn
    db $23
    SongFadeInterval \1       ;Cycle interval from 1 to $10
ENDM

MACRO SongFadeOut
    db $24
    SongFadeInterval \1       ;Cycle interval from 1 to $10
ENDM

    ;Possible values for LoadSideScroller
    ;Names subject to change
RSRESET
DEF SCROLLER_Arderial            RB 1   ; $00
DEF SCROLLER_Core                RB 1   ; $01
DEF SCROLLER_Cald                RB 1   ; $02
DEF SCROLLER_UnderneathTunnels   RB 1   ; $03
DEF SCROLLER_CaldGeyser          RB 1   ; $04
DEF SCROLLER_NaroomGeyser        RB 1   ; $05
DEF SCROLLER_Naroom              RB 1   ; $06
DEF SCROLLER_UnderneathGeyser    RB 1   ; $07
DEF SCROLLER_OrotheStarfish      RB 1   ; $08
DEF SCROLLER_OrotheGeyser        RB 1   ; $09
DEF SCROLLER_Orothe              RB 1   ; $0A
DEF SCROLLER_OrotheTunnels       RB 1   ; $0B
DEF SCROLLER_Shadowhold          RB 1   ; $0C
DEF SCROLLER_Underneath          RB 1   ; $0D
MACRO LoadSideScroller
    db $34
    db \1
ENDM

MACRO Delay
    db $40
    db \1   ;Number of cycles to wait (60 cycles per second)
ENDM

MACRO End
    db $42
ENDM

MACRO LongJumpIf
    db $43
    ;\1 ;Math
    ;BankAddress \2 ;Jump to here
ENDM

MACRO InitSkip
    db $44
    dw \1 ;Jump to here, within the same bank
ENDM

MACRO LongJump
    db $45
    BankAddress \1 ;Jump to here
ENDM

MACRO Jump
    db $46
    dw \1 ;Jump to here, within the same bank
ENDM

MACRO Switch
    ; Switch Math
    ;   Case n16,LongJumpDestination
    ;   Case n16,LongJumpDestination
    ;   ...
    ; EndSwitch
    db $4B
    ;\1      ;Math
ENDM
MACRO Case
    ; Used for Switch. If the obtained value is equal to \1,
    ; then LongJump to \2
    db BANK(\2) ;LongJump destination
    dw \1       ;16-bit value
    dw \2       ;LongJump destination
ENDM
MACRO EndSwitch
    db $FF
ENDM

MACRO CurObjMoveDraw
    ; ObjMoveDraw
    ;   MoveDraw Frames, DeltaX, DeltaY, ObjectSpriteData
    ;   MoveDraw Frames, DeltaX, DeltaY, ObjectSpriteData
    ;   MoveDraw Frames, DeltaX, DeltaY, ObjectSpriteData
    ;   ...
    ; EndObjMoveDraw
    db $4C
ENDM
MACRO MoveDraw
    ; Used for Switch. If the obtained value is equal to \1,
    ; then LongJump to \2
    db \1       ; Number of frames of movement
    db \2       ; DeltaX per frame
    db \3       ; DeltaY per frame
    dw \4       ; Address of Object Sprite data (same bank as magiscript)
ENDM
MACRO EndCurObjMoveDraw
    db $00
ENDM

MACRO WaitEventText
    db $62
    db \1 ; Desired EventID
ENDM

MACRO LoadFullTilemap
    db $63
    AddressBank \1 ; RLE-compressed .attrmap and .tilemap (32x32)
ENDM

MACRO LoadScene
    db $65
    AddressBank \1 ;Scene file
ENDM

MACRO LoadSpritePalette
    db $66
    AddressBank \1 ;A full sprite palette
ENDM

MACRO LoadBitmapSet
    db $6A
    AddressBank \1 ;BitmapSet i.e. BITSET
    AddressBank \2 ;Palette (8 palettes)
ENDM

MACRO PalClearBase
    db $6E
    ;Palette_PackedInterval (\1),(\2) ;Indices of palettes to be filled, (palettes[\1:\2])
    ;RGBA (\3),(\4),(\5),(\6)  ;RGBA color to fill
ENDM

MACRO PalClearAnim
    db $6F
    ;Palette_PackedInterval (\1),(\2) ;Indices of palettes to be filled, (palettes[\1:\2])
    ;RGBA (\3),(\4),(\5),(\6)  ;RGBA color to fill
ENDM

MACRO FadeBackgroundPalettesTowardsBuffer
    db $76
    ;Palette_PackedLoop (\1),(\2)    ;Every (\1) cycles, fade by 1 unit, for a total of (\2) units
    ;Palette_PackedInterval (\3),(\4) ;Indices of palettes to be faded, (palettes[\3:\4])
ENDM

MACRO SetCamera
    db $84
    db \1       ;x-coordinate
    db \2       ;y-coordinate
ENDM

MACRO ResetThenSingleThreadMode
    db $86
ENDM

MACRO SceneNew
    db $93
ENDM

MACRO ExitSingleThreadMode
    db $94
ENDM


MACRO SetFarByte
    db $AA
    AddressBank \1       ;DestinationAddressBank (WRAM)
    db \2                ;New value
ENDM

MACRO SetFarWord
    db $AB
    AddressBank \1       ;DestinationAddressBank (WRAM)
    dw \2                ;New value
ENDM

MACRO SetByte
    db $AC
    dw \1                ;DestinationAddress (WRAM/SRAM)
    db \2                ;New value
ENDM

MACRO SetWord
    db $AD
    dw \1                ;DestinationAddress (WRAM/SRAM)
    dw \2                ;New value
ENDM

MACRO AndByte
    db $AE
    dw \1                ;DestinationAddress (WRAM/SRAM)
    db \2                ;New value
ENDM

MACRO OrByte
    db $AF
    dw \1                ;DestinationAddress (WRAM/SRAM)
    db \2                ;New value
ENDM