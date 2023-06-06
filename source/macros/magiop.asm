
RSRESET
DEF Enum_Cmd_Actor_HeroFromDoor                 RB 1 ; $00
DEF Enum_Cmd_Actor_HeroToDoor                   RB 1 ; $01
DEF Enum_Cmd_Actor_HeroToRelativeDoor           RB 1 ; $02
DEF Enum_Cmd_03                 RB 1 ; $03
DEF Enum_Cmd_04                 RB 1 ; $04
DEF Enum_Cmd_Actor_ThatActorInit                RB 1 ; $05
DEF Enum_Cmd_Actor_ThatActorTeleportToThatActor RB 1 ; $06
DEF Enum_Cmd_Actor_ThatActorSetAI               RB 1 ; $07
DEF Enum_Cmd_Actor_ThatActorSetLoc              RB 1 ; $08
DEF Enum_Cmd_Actor_ThatActorSetScript           RB 1 ; $09
DEF Enum_Cmd_Actor_ThatActorSetSpriteBase       RB 1 ; $0A
DEF Enum_Cmd_Actor_ThatActorStart               RB 1 ; $0B
DEF Enum_Cmd_Actor_ThatActorDelete              RB 1 ; $0C
DEF Enum_Cmd_0D                 RB 1 ; $0D
DEF Enum_Cmd_0E                 RB 1 ; $0E
DEF Enum_Cmd_Actor_ThisActorTeleportToThatActor RB 1 ; $0F

DEF Enum_Cmd_Actor_ThisActorNewState            RB 1 ; $10
DEF Enum_Cmd_11                 RB 1 ; $11
DEF Enum_Cmd_Actor_RestoreActorState            RB 1 ; $12
DEF Enum_Cmd_Actor_ThisActorSetAI               RB 1 ; $13
DEF Enum_Cmd_Actor_ThisActorSetAnimSingle       RB 1 ; $14
DEF Enum_Cmd_Actor_ThisActorSetAnimDelay        RB 1 ; $15
DEF Enum_Cmd_Actor_ThisActorSetAnimScroll       RB 1 ; $16
DEF Enum_Cmd_Actor_ThisActorSetLoc              RB 1 ; $17
DEF Enum_Cmd_Actor_ThisActorSetSpriteBase       RB 1 ; $18
DEF Enum_Cmd_Actor_ThisActorDelete              RB 1 ; $19
DEF Enum_Cmd_Actor_ThisActorWaitTile            RB 1 ; $1A

DEF Enum_Cmd_Sound_PlaySFX0                     RB 1 ; $1B
DEF Enum_Cmd_Sound_PlaySFX1                     RB 1 ; $1C
DEF Enum_Cmd_Sound_SongPause_Bugged             RB 1 ; $1D
DEF Enum_Cmd_Sound_SongResume                   RB 1 ; $1E
DEF Enum_Cmd_Sound_SongStart                    RB 1 ; $1F
DEF Enum_Cmd_Sound_FanfareStart                 RB 1 ; $20
DEF Enum_Cmd_Sound_SongStop                     RB 1 ; $21
DEF Enum_Cmd_Sound_SetSongVolume                RB 1 ; $22
DEF Enum_Cmd_Sound_FadeInSong                   RB 1 ; $23
DEF Enum_Cmd_Sound_FadeOutSong                  RB 1 ; $24

DEF Enum_Cmd_Battle_New                         RB 1 ; $25
DEF Enum_Cmd_26                 RB 1 ; $26
DEF Enum_Cmd_27                 RB 1 ; $27  ;BattleDoneLoading?
DEF Enum_Cmd_28                 RB 1 ; $28
DEF Enum_Cmd_29                 RB 1 ; $29
DEF Enum_Cmd_2A                 RB 1 ; $2A
DEF Enum_Cmd_2B                 RB 1 ; $2B
DEF Enum_Cmd_2C                 RB 1 ; $2C
DEF Enum_Cmd_2D                 RB 1 ; $2D
DEF Enum_Cmd_2E                 RB 1 ; $2E ;This defines a single monster from an encounter
DEF Enum_Cmd_2F                 RB 1 ; $2F

DEF Enum_Cmd_Battle_Swirl                       RB 1 ; $30 -todo maybe this should be a graphics function instead
DEF Enum_Cmd_31                 RB 1 ; $31
DEF Enum_Cmd_32                 RB 1 ; $32
DEF Enum_Cmd_Fightscene_FightFX_BlowAway        RB 1 ; $33
DEF Enum_Cmd_Fightscene_LoadArena               RB 1 ; $34
DEF Enum_Cmd_Fightscene_LoadCreatureLeft        RB 1 ; $35
DEF Enum_Cmd_Fightscene_TileFX_DissolveFast     RB 1 ; $36
DEF Enum_Cmd_Fightscene_TileFX_DissolveSlow     RB 1 ; $37
DEF Enum_Cmd_Fightscene_New                     RB 1 ; $38
DEF Enum_Cmd_Fightscene_FightFX_PanFromTable    RB 1 ; $39
DEF Enum_Cmd_Fightscene_FightFX_Recoil          RB 1 ; $3A
DEF Enum_Cmd_3B                 RB 1 ; $3B
DEF Enum_Cmd_Fightscene_FightFX_PanConstant     RB 1 ; $3C
DEF Enum_Cmd_Fightscene_FightFX_Shake           RB 1 ; $3D
DEF Enum_Cmd_Fightscene_FightFX_Sink            RB 1 ; $3E
DEF Enum_Cmd_Fightscene_FightFX_Tremble         RB 1 ; $3F

DEF Enum_Cmd_Flow_Delay                         RB 1 ; $40
DEF Enum_Cmd_Flow_RandDelay                     RB 1 ; $41
DEF Enum_Cmd_Flow_End                           RB 1 ; $42
DEF Enum_Cmd_Flow_LongJumpIf                    RB 1 ; $43
DEF Enum_Cmd_Flow_InitSkip                      RB 1 ; $44
DEF Enum_Cmd_Flow_LongJump                      RB 1 ; $45
DEF Enum_Cmd_Flow_LocalJump                     RB 1 ; $46
DEF Enum_Cmd_Flow_RandLongJump                  RB 1 ; $47
DEF Enum_Cmd_Flow_Pass                          RB 1 ; $48
DEF Enum_Cmd_Flow_SwitchRange                   RB 1 ; $49
DEF Enum_Cmd_Flow_ResetScript                   RB 1 ; $4A
DEF Enum_Cmd_Flow_Switch                        RB 1 ; $4B

DEF Enum_Cmd_Frame_SpriteDraw                   RB 1 ; $4C
DEF Enum_Cmd_Frame_SpriteBlock                  RB 1 ; $4D
DEF Enum_Cmd_Frame_SpriteInvisible              RB 1 ; $4E
DEF Enum_Cmd_Frame_OverlayDraw                  RB 1 ; $4F
DEF Enum_Cmd_Frame_OverlayInit                  RB 1 ; $50
DEF Enum_Cmd_Frame_OverlayInvisible             RB 1 ; $51

DEF Enum_Cmd_Global_ClearSync                   RB 1 ; $52
DEF Enum_Cmd_Global_SetAnyEventMaster           RB 1 ; $53
DEF Enum_Cmd_Global_SetAnyEventScroll           RB 1 ; $54
DEF Enum_Cmd_Global_SetAnyEventText             RB 1 ; $55
DEF Enum_Cmd_Global_SetEventMaster              RB 1 ; $56
DEF Enum_Cmd_Global_SetEventScroll              RB 1 ; $57
DEF Enum_Cmd_Global_SetEventText                RB 1 ; $58
DEF Enum_Cmd_Global_SetScriptMaster             RB 1 ; $59
DEF Enum_Cmd_Global_SetScriptScroll             RB 1 ; $5A
DEF Enum_Cmd_Global_SetScriptText               RB 1 ; $5B
DEF Enum_Cmd_Global_Sync                        RB 1 ; $5C
DEF Enum_Cmd_Global_WaitAnyEventMaster          RB 1 ; $5D
DEF Enum_Cmd_Global_WaitAnyEventScroll          RB 1 ; $5E
DEF Enum_Cmd_Global_WaitAnyEventText            RB 1 ; $5F
DEF Enum_Cmd_Global_WaitEventMaster             RB 1 ; $60
DEF Enum_Cmd_Global_WaitEventScroll             RB 1 ; $61
DEF Enum_Cmd_Global_WaitEventText               RB 1 ; $62

DEF Enum_Cmd_Load_LargeStaticTilemap            RB 1 ; $63
DEF Enum_Cmd_Load_Hotspots                      RB 1 ; $64
DEF Enum_Cmd_Load_Scene                         RB 1 ; $65
DEF Enum_Cmd_Load_SpritePalette                 RB 1 ; $66
DEF Enum_Cmd_Load_Map                           RB 1 ; $67
DEF Enum_Cmd_Load_MapMask                       RB 1 ; $68
DEF Enum_Cmd_Load_Triggers                      RB 1 ; $69
DEF Enum_Cmd_Load_BitmapSet                     RB 1 ; $6A
DEF Enum_Cmd_Load_Bitmap                        RB 1 ; $6B

DEF Enum_Cmd_Palette_ArenaFadeToColor           RB 1 ; $6C
DEF Enum_Cmd_Palette_ArenaFadeToBase            RB 1 ; $6D
DEF Enum_Cmd_Palette_ClearBase                  RB 1 ; $6E
DEF Enum_Cmd_Palette_ClearAnim                  RB 1 ; $6F
DEF Enum_Cmd_Palette_CreatureCycle              RB 1 ; $70
DEF Enum_Cmd_Palette_CreatureFadeToColor       RB 1 ; $71
DEF Enum_Cmd_Palette_CreatureFadeToBase     RB 1 ; $72
DEF Enum_Cmd_Palette_CreatureLoad               RB 1 ; $73
DEF Enum_Cmd_Palette_CreatureFlash              RB 1 ; $74
DEF Enum_Cmd_Palette_CreatureInvert             RB 1 ; $75
DEF Enum_Cmd_Palette_FadeAnimToBase             RB 1 ; $76
DEF Enum_Cmd_Palette_FadeAnimToColor            RB 1 ; $77
DEF Enum_Cmd_Palette_Load                       RB 1 ; $78
DEF Enum_Cmd_Palette_Refresh                    RB 1 ; $79
DEF Enum_Cmd_Palette_Cycle                      RB 1 ; $7A
DEF Enum_Cmd_Palette_Invert                     RB 1 ; $7B

DEF Enum_Cmd_Scroll_CameraSeekPos               RB 1 ; $7C
DEF Enum_Cmd_Scroll_CameraSeekActor             RB 1 ; $7D
DEF Enum_Cmd_Scroll_TransplantMap               RB 1 ; $7E
DEF Enum_Cmd_Scroll_TransplantMapMask           RB 1 ; $7F
DEF Enum_Cmd_Scroll_TransplantTile              RB 1 ; $80
DEF Enum_Cmd_81                 RB 1 ; $81
DEF Enum_Cmd_Scroll_HeroSetCamera               RB 1 ; $82
DEF Enum_Cmd_Scroll_ScrollMap                   RB 1 ; $83
DEF Enum_Cmd_Scroll_SetCamera                   RB 1 ; $84

DEF Enum_Cmd_85                 RB 1 ; $85
DEF Enum_Cmd_System_SceneUnknownNew             RB 1 ; $86
DEF Enum_Cmd_87                 RB 1 ; $87
DEF Enum_Cmd_88                 RB 1 ; $88
DEF Enum_Cmd_System_LoadGame                    RB 1 ; $89
DEF Enum_Cmd_System_CopyLoadGame                RB 1 ; $8A
DEF Enum_Cmd_8B                 RB 1 ; $8B
DEF Enum_Cmd_System_MusicMenu                   RB 1 ; $8C
DEF Enum_Cmd_8D                 RB 1 ; $8D
DEF Enum_Cmd_8E                 RB 1 ; $8E
DEF Enum_Cmd_8F                 RB 1 ; $8F

DEF Enum_Cmd_90                 RB 1 ; $90
DEF Enum_Cmd_System_NewGame                     RB 1 ; $91
DEF Enum_Cmd_System_SaveGame                    RB 1 ; $92
DEF Enum_Cmd_System_SceneNew                    RB 1 ; $93
DEF Enum_Cmd_System_SceneReady                  RB 1 ; $94
DEF Enum_Cmd_System_SetItemSpellMapError        RB 1 ; $95
DEF Enum_Cmd_System_SaveLocation                RB 1 ; $96
DEF Enum_Cmd_System_Reboot                      RB 1 ; $97

DEF Enum_Cmd_Textbox_FormatChar                 RB 1 ; $98
DEF Enum_Cmd_Textbox_Clear                      RB 1 ; $99
DEF Enum_Cmd_Textbox_Close                      RB 1 ; $9A
DEF Enum_Cmd_Textbox_Icon                       RB 1 ; $9B
DEF Enum_Cmd_Textbox_Menu                       RB 1 ; $9C
DEF Enum_Cmd_Textbox_Open                       RB 1 ; $9D
DEF Enum_Cmd_Textbox_FormatWord                 RB 1 ; $9E
DEF Enum_Cmd_Textbox_Write                      RB 1 ; $9F

DEF Enum_Cmd_Trigger_ToggleAlways               RB 1 ; $A0
DEF Enum_Cmd_Trigger_ToggleOnce                 RB 1 ; $A1
DEF Enum_Cmd_Trigger_TriggerAlways              RB 1 ; $A2
DEF Enum_Cmd_Trigger_TriggerOnce                RB 1 ; $A3
DEF Enum_Cmd_Trigger_Treasure                   RB 1 ; $A4

DEF Enum_Cmd_Ram_VarBitExpr                     RB 1 ; $A5
DEF Enum_Cmd_Ram_VarByteExpr                    RB 1 ; $A6
DEF Enum_Cmd_Ram_VarWordExpr                    RB 1 ; $A7
DEF Enum_Cmd_Ram_NextGameCount                  RB 1 ; $A8
DEF Enum_Cmd_Ram_SetGameCount                   RB 1 ; $A9
DEF Enum_Cmd_Ram_SetWramByte                    RB 1 ; $AA
DEF Enum_Cmd_Ram_SetWramWord                    RB 1 ; $AB
DEF Enum_Cmd_Ram_SetXramByte                    RB 1 ; $AC
DEF Enum_Cmd_Ram_SetXramWord                    RB 1 ; $AD
DEF Enum_Cmd_Ram_AndXramByte                    RB 1 ; $AE
DEF Enum_Cmd_Ram_OrXramByte                     RB 1 ; $AF

MACRO HeroFromDoor
    db Enum_Cmd_Actor_HeroFromDoor
ENDM

MACRO HeroToDoor
    db Enum_Cmd_Actor_HeroToDoor
    db \1       ; wHero_DoorX
    db \2       ; wHero_DoorY
ENDM

MACRO HeroToRelativeDoor
    db Enum_Cmd_Actor_HeroToRelativeDoor
    db \1       ; -X TODO
    db \2       ; +X
    db \3       ; -Y
    db \4       ; +Y
ENDM

; 03
; 04

MACRO ThatInit
    db Enum_Cmd_Actor_ThatActorInit
    db \1           ; Actor ID
    dw \2           ; State function (bank 1)
    db \3           ; XTile
    db \4           ; YTile
    dw \5           ; TileAddress
    db \6           ; TileNumberOffset (for sprite)
    BankAddress \7  ;Thread0 BankAddress (usually animation)
    BankAddress \8  ;Thread1 BankAddress (usually dialogue options)
ENDM

MACRO ThatTeleportTo
    db Enum_Cmd_Actor_ThatActorTeleportToThatActor
    db \1       ; Actor ID1
    db \2       ; Actor ID2
ENDM

MACRO ThatAI
    db Enum_Cmd_Actor_ThatActorSetAI
    db \1       ; Actor ID
    dw \2       ; State
ENDM

MACRO ThatLoc
    db Enum_Cmd_Actor_ThatActorSetLoc
    db \1       ; Actor ID
    db \2       ; XSubtile
    db \3       ; YSubtile
    db \4       ; XTile
    db \5       ; YTile
    dw \6       ; TileAddress
ENDM

MACRO ThatScript
    db Enum_Cmd_Actor_ThatActorSetScript
    db \1           ; Actor ID
    BankAddress \2  ; Thread0 InstructionBankAddress
ENDM

MACRO ThatSpriteBase
    db Enum_Cmd_Actor_ThatActorSetSpriteBase
    db \1       ; Actor ID
    db \2       ; Actor TileNumberOffset
ENDM

MACRO ThatStart
    db Enum_Cmd_Actor_ThatActorStart
    db \1       ; Actor ID
ENDM

MACRO ThatDelete
    db Enum_Cmd_Actor_ThatActorDelete
    db \1       ; Actor ID
ENDM

; 0D
; 0E

MACRO ThisTeleportTo
    db Enum_Cmd_Actor_ThisActorTeleportToThatActor
    db \1       ; Actor ID
ENDM

MACRO ThisNewState
    db Enum_Cmd_Actor_ThisActorNewState
    dw \1       ; State
ENDM

; 11

MACRO RestoreActorState
    db Enum_Cmd_Actor_RestoreActorState
ENDM

MACRO ThisAI
    db Enum_Cmd_Actor_ThisActorSetAI
    dw \1       ; State
ENDM

MACRO ThisSetAnimSingle
    db Enum_Cmd_Actor_ThisActorSetAnimSingle
    BankAddress \1  ; Thread1 InstructionBankAddress
ENDM

; 15
; 16

MACRO ThisLoc
    db Enum_Cmd_Actor_ThisActorSetLoc
    db \1       ; XSubtile
    db \2       ; YSubtile
    db \3       ; XTile
    db \4       ; YTile
    dw \5       ; TileAddress
ENDM

MACRO ThisSpriteBase
    db Enum_Cmd_Actor_ThisActorSetSpriteBase
    db \1       ; Object_TileNumberOffset
ENDM

MACRO ThisDelete
    db Enum_Cmd_Actor_ThisActorDelete
ENDM

MACRO ThisWaitTile
    db Enum_Cmd_Actor_ThisActorWaitTile
    db \1       ; Pattern ID
ENDM

MACRO StartSFX0
    db Enum_Cmd_Sound_PlaySFX0
    db \1       ;SFXID from musyx/project/Output/SoundIDs.asm
ENDM

MACRO StartSFX1
    db Enum_Cmd_Sound_PlaySFX1
    db \1       ;SFXID from musyx/project/Output/SoundIDs.asm
ENDM

MACRO PauseSongBugged
    ; Bugged - actually stops the song instead
    db Enum_Cmd_Sound_SongPause_Bugged
ENDM

MACRO ResumeSong
    ; Not useful since PauseSong is bugged
    db Enum_Cmd_Sound_SongResume
ENDM

MACRO StartSong
    db Enum_Cmd_Sound_SongStart
    db \1       ;SONGID from musyx/project/Output/SoundIDs.asm
ENDM

MACRO StartJingle
    db Enum_Cmd_Sound_FanfareStart
    db \1       ;SONGID from musyx/project/Output/SoundIDs.asm
ENDM

MACRO StopSong
    db Enum_Cmd_Sound_SongStop
ENDM

MACRO SetSongVolume
    db Enum_Cmd_Sound_SetSongVolume
    db \1       ;Volume from 0 to F
ENDM

MACRO SongFadeIn
    db Enum_Cmd_Sound_FadeInSong
    SongFadeInterval \1       ;Cycle interval from 1 to $10
ENDM

MACRO SongFadeOut
    db Enum_Cmd_Sound_FadeOutSong
    SongFadeInterval \1       ;Cycle interval from 1 to $10
ENDM

; 25 - 2F

MACRO BattleSwirl
    db Enum_Cmd_Battle_Swirl
    dw \1       ; Graphics_ScreenFX function e.g. Graphics_ScreenFX_Swirl_Do
    db \2       ; SONGID
ENDM

; 31 - 32

MACRO BlowAway
    db Enum_Cmd_Fightscene_FightFX_BlowAway
ENDM

MACRO LoadArena
    db Enum_Cmd_Fightscene_LoadArena
    db \1       ; ArenaIndex
ENDM

MACRO LoadCreatureLeft
    db Cmd_Fightscene_LoadCreatureLeft
    db \1       ; CreatureID
ENDM

MACRO DissolveFast
    db Enum_Cmd_Fightscene_TileFX_DissolveFast
ENDM

MACRO DissolveSlow
    db Enum_Cmd_Fightscene_TileFX_DissolveSlow
ENDM

MACRO FightsceneNew
    db Enum_Cmd_Fightscene_New
    db \1       ; ArenaIndex
    db \2       ; CreatureLeft ID
    db \3       ; CreatureRight ID
ENDM

MACRO PanTable
    db Enum_Cmd_Fightscene_FightFX_PanFromTable
    db FIGHTSCENE_CREATURE_\1           ; Pan direction: LEFT or RIGHT
    dw \2       ; Table pointer
ENDM

MACRO Recoil
    db Enum_Cmd_Fightscene_FightFX_Recoil
ENDM

; 3B

MACRO PanConstant
    db Enum_Cmd_Fightscene_FightFX_PanConstant
    db FIGHTSCENE_CREATURE_\1           ; Pan direction: LEFT or RIGHT
    db \2       ; DeltaX per frame
    db \3       ; Total number of frames
ENDM

MACRO Shake
    db Enum_Cmd_Fightscene_FightFX_Shake
ENDM

MACRO Sink
    db Enum_Cmd_Fightscene_FightFX_Sink
ENDM

MACRO Tremble
    db Enum_Cmd_Fightscene_FightFX_Tremble
ENDM

MACRO Delay
    db Enum_Cmd_Flow_Delay
    db \1       ; Number of cycles to wait (60 cycles per second)
ENDM

MACRO RandDelay
    db Enum_Cmd_Flow_RandDelay
    dw \1       ; Address (BANK 01 TODO) to delay table (length $10)
ENDM

MACRO End
    db Enum_Cmd_Flow_End
ENDM

MACRO LongJumpIf
    db Enum_Cmd_Flow_LongJumpIf
    ;\1 ;Math
    ;BankAddress \2 ;Jump to here
ENDM

MACRO InitSkip
    db Enum_Cmd_Flow_InitSkip
    dw \1 ;Jump to here, within the same bank
ENDM

MACRO LongJump
    db Enum_Cmd_Flow_LongJump
    BankAddress \1 ;Jump to here
ENDM

MACRO Jump
    ASSERT BANK(@) == BANK(\1)
    db Enum_Cmd_Flow_LocalJump
    dw \1 ; Jump to here, within the same bank
ENDM

MACRO RandLongJump
    db Enum_Cmd_Flow_RandLongJump
    db _NARG ; Number of entries
    REPT _NARG
        BankAddress \1 ; Jump destination
        SHIFT
    ENDR
ENDM

MACRO Pass
    db Enum_Cmd_Flow_Pass
ENDM

MACRO SwitchRange
    ; Switch Math
    ;   CaseRange inclusivelow,inclusivehigh,LongJumpDestination
    ;   CaseRange inclusivelow,inclusivehigh,LongJumpDestination
    ;   ...
    ; EndSwitchRange
    db Enum_Cmd_Flow_SwitchRange
    ;\1      ;Math
ENDM
MACRO CaseRange
    ; Used for Switch. If the obtained value is between \1 and \2 (inclusive)
    ; then LongJump to \3
    db BANK(\3) ;LongJump destination
    dw \1       ;inclusive low value
    dw \2       ;inclusive high value
    dw \3       ;LongJump destination
ENDM
MACRO EndSwitchRange
    db $FF
ENDM

MACRO ResetScript
    db Enum_Cmd_Flow_ResetScript
    BankAddress \1 ;Jump to here
ENDM

MACRO Switch
    ; Switch Math
    ;   Case n16,LongJumpDestination
    ;   Case n16,LongJumpDestination
    ;   ...
    ; EndSwitch
    db Enum_Cmd_Flow_Switch
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

MACRO SpriteDraw
    ; SpriteDraw
    ;   MoveDraw Frames, DeltaX, DeltaY, ObjectSpriteData
    ;   MoveDraw Frames, DeltaX, DeltaY, ObjectSpriteData
    ;   MoveDraw Frames, DeltaX, DeltaY, ObjectSpriteData
    ;   ...
    ; EndSpriteDraw
    db Enum_Cmd_Frame_SpriteDraw
ENDM
MACRO MoveDraw
    ; Used for SpriteDraw and OverlayDraw
    db \1       ; Number of frames of movement
    db \2       ; DeltaX per frame
    db \3       ; DeltaY per frame
    dw \4       ; Address of Object Sprite data (same bank as magiscript)
ENDM
MACRO EndSpriteDraw
    db $00
ENDM

MACRO SpriteBlock
    ; SpriteBlock
    ;   Draw ObjectSpriteData
    ;   Draw ObjectSpriteData
    db Enum_Cmd_Frame_SpriteBlock
    db \1       ; Number of sprites*2
    db \2       ; Number of frames per sprite
    db \3       ; DeltaX per frame
    db \4       ; DeltaY per frame
ENDM
MACRO Draw
    ; Used for SpriteBlock
    dw \1       ; Address of object sprite data
ENDM

MACRO SpriteInvisible
    db Enum_Cmd_Frame_SpriteInvisible
    db \1       ; Number of frames of movement
    db \2       ; DeltaX per frame
    db \3       ; DeltaY per frame
ENDM

MACRO OverlayDraw
    ; OverlayDraw
    ;   MoveDraw Frames, DeltaX, DeltaY, ObjectSpriteData
    ;   MoveDraw Frames, DeltaX, DeltaY, ObjectSpriteData
    ;   MoveDraw Frames, DeltaX, DeltaY, ObjectSpriteData
    ;   ...
    ; EndOverlayDraw
    db Enum_Cmd_Frame_OverlayDraw
ENDM
;MACRO MoveDraw -> See SpriteDraw
MACRO EndOverlayDraw
    db $00
ENDM

MACRO OverlayInit
    db Enum_Cmd_Frame_OverlayInit
    dw \1           ; Pointer to desired actor
    db \2           ; XTile
    db \3           ; YTile
    db \4           ; SpriteBase
    BankAddress \5  ; Script0
ENDM

MACRO OverlayInvisible
    db Enum_Cmd_Frame_OverlayInvisible
ENDM

MACRO ClearSync
    db Enum_Cmd_Global_ClearSync
    db \1       ; wScript_SyncCount
ENDM

MACRO SetAnyEventMaster
    db Enum_Cmd_Global_SetAnyEventMaster
ENDM

MACRO SetAnyEventScroll
    db Enum_Cmd_Global_SetAnyEventScroll
ENDM

MACRO SetAnyEventText
    db Enum_Cmd_Global_SetAnyEventText
ENDM

MACRO SetEventMaster
    db Enum_Cmd_Global_SetEventMaster
    db \1       ; wScript_MasterEventNextID
ENDM

MACRO SetEventScroll
    db Enum_Cmd_Global_SetEventScroll
    db \1       ; wScript_ScrollEventNextID
ENDM

MACRO SetEventText
    db Enum_Cmd_Global_SetEventText
    db \1       ; wScript_TextEventNextID
ENDM

MACRO SetScriptMaster
    db Enum_Cmd_Global_SetScriptMaster
    BankAddress \1  ; Script
ENDM

MACRO SetScriptScroll
    db Enum_Cmd_Global_SetScriptScroll
    BankAddress \1  ; Script
ENDM

MACRO SetScriptText
    db Enum_Cmd_Global_SetScriptText
    BankAddress \1  ; Script
ENDM

MACRO Sync
    db Enum_Cmd_Global_Sync
    db \1       ; TODO
    db \2       ; TODO
ENDM

MACRO WaitAnyEventMaster
    db Enum_Cmd_Global_WaitAnyEventMaster
ENDM

MACRO WaitAnyEventScroll
    db Enum_Cmd_Global_WaitAnyEventScroll
ENDM

MACRO WaitAnyEventText
    db Enum_Cmd_Global_WaitAnyEventText
ENDM

MACRO WaitEventMaster
    db Enum_Cmd_Global_WaitEventMaster
    db \1   ; Desired EventID
ENDM

MACRO WaitEventScroll
    db Enum_Cmd_Global_WaitEventScroll
    db \1   ; Desired EventID
ENDM

MACRO WaitEventText
    db Enum_Cmd_Global_WaitEventText
    db \1   ; Desired EventID
ENDM

MACRO LoadFullTilemap
    db Enum_Cmd_Load_LargeStaticTilemap
    AddressBank \1 ; RLE-compressed .attrmap and .tilemap (32x32)
ENDM

MACRO LoadHotspots
    db Enum_Cmd_Load_Hotspots
    dw \1       ; Hotspot address
ENDM

MACRO LoadScene
    db Enum_Cmd_Load_Scene
    AddressBank \1 ;Scene file
ENDM

MACRO LoadSpritePalette
    db Enum_Cmd_Load_SpritePalette
    AddressBank \1 ;A full sprite palette
ENDM

MACRO LoadMap
    db Enum_Cmd_Load_Map
    AddressBank \1  ; Metatilemap
    AddressBank \2  ; Collisionmap
ENDM

MACRO LoadMapMask
    db Enum_Cmd_Load_MapMask
    AddressBank \1  ; Metatilemap Mask
    AddressBank \2  ; Collisionmap Mask
ENDM

MACRO LoadTriggers
    db Enum_Cmd_Load_Triggers
    dw \1       ; Triggers address
ENDM

MACRO LoadBitmapSet
    db Enum_Cmd_Load_BitmapSet
    AddressBank \1 ;BitmapSet i.e. BITSET
    AddressBank \2 ;Palette (8 palettes)
ENDM

MACRO LoadSingleBitmap
    db Enum_Cmd_Load_Bitmap
    db \1           ; Number of tiles to copy (size)
    BankAddress \2  ; source tileset
    dw \3           ; Destination address
    db \4           ; Destination VBK bank
ENDM

MACRO PalArenaFadeToColor
    db Enum_Cmd_Palette_ArenaFadeToColor
    Palette_PackedLoop (\1), (\2)       ; Every (\1) cycles, fade by 1 unit, for a total of (\2) units
    RGBA (\3), (\4), (\5), (\6)         ; Target RGBA color
ENDM

MACRO PalArenaFadeToBase
    db Enum_Cmd_Palette_ArenaFadeToBase
    Palette_PackedLoop (\1), (\2)       ; Every (\1) cycles, fade by 1 unit, for a total of (\2) units
ENDM

MACRO PalClearBase
    db Enum_Cmd_Palette_ClearBase
    Palette_PackedInterval (\1), (\2)   ; Indices of palettes to be filled, (palettes[\1:\1+\2])
    RGBA (\3), (\4), (\5), (\6)         ; RGBA color to fill
ENDM

MACRO PalClearAnim
    db Enum_Cmd_Palette_ClearAnim
    Palette_PackedInterval (\1), (\2)   ; Indices of palettes to be filled, (palettes[\1:\1+\2])
    RGBA (\3), (\4), (\5), (\6)         ; RGBA color to fill
ENDM

MACRO PalCreatureCycle
    db Enum_Cmd_Palette_CreatureCycle
    Palette_PackedLoop (\1), (\2)       ; Every (\1) cycles, fade by 1 unit, for a total of (\2) units
    db FIGHTSCENE_CREATURE_\3           ; FIGHTSCENE_CREATURE_LEFT / FIGHTSCENE_CREATURE_RIGHT
ENDM

MACRO PalCreatureFadeToColor
    db Enum_Cmd_Palette_CreatureFadeToColor
    Palette_PackedLoop (\1), (\2)       ; Every (\1) cycles, fade by 1 unit, for a total of (\2) units
    RGBA (\3), (\4), (\5), (\6)         ; RGBA color to fill
    db FIGHTSCENE_CREATURE_\7           ; FIGHTSCENE_CREATURE_LEFT / FIGHTSCENE_CREATURE_RIGHT
ENDM

MACRO PalCreatureFadeToBase
    db Enum_Cmd_Palette_CreatureFadeToBase
    Palette_PackedLoop (\1), (\2)       ; Every (\1) cycles, fade by 1 unit, for a total of (\2) units
    db FIGHTSCENE_CREATURE_\3           ; FIGHTSCENE_CREATURE_LEFT / FIGHTSCENE_CREATURE_RIGHT
ENDM

MACRO PalCreatureLoad
    db Enum_Cmd_Palette_CreatureLoad
    AddressBank \1                      ; Creature palette
    db FIGHTSCENE_CREATURE_\2           ; FIGHTSCENE_CREATURE_LEFT / FIGHTSCENE_CREATURE_RIGHT
ENDM

MACRO PalCreatureFlash
    db Enum_Cmd_Palette_CreatureFlash
    Palette_PackedLoop (\1), (\2)       ; Every (\1) cycles, fade by 1 unit, for a total of (\2) units
    db PALETTE_SWAP_RB \3               ; PALETTE_SWAP_RB / PALETTE_SWAP_BG / PALETTE_SWAP_RG_Bugged / PALETTE_SWAP_RGB
    db FIGHTSCENE_CREATURE_\4           ; FIGHTSCENE_CREATURE_LEFT / FIGHTSCENE_CREATURE_RIGHT
ENDM

MACRO PalCreatureInvert
    db Enum_Cmd_Palette_CreatureInvert
    db FIGHTSCENE_CREATURE_\1           ; FIGHTSCENE_CREATURE_LEFT / FIGHTSCENE_CREATURE_RIGHT
ENDM

MACRO PalFadeAnimToBase
    db Enum_Cmd_Palette_FadeAnimToBase
    Palette_PackedLoop (\1), (\2)    ;Every (\1) cycles, fade by 1 unit, for a total of (\2) units
    Palette_PackedInterval (\3),(\4) ;Indices of palettes to be faded, (palettes[\3:\3+\4])
ENDM

MACRO PalFadeAnimToColor
    db Enum_Cmd_Palette_FadeAnimToColor
    Palette_PackedLoop (\1), (\2)    ;Every (\1) cycles, fade by 1 unit, for a total of (\2) units
    Palette_PackedInterval (\3),(\4) ;Indices of palettes to be faded, (palettes[\3:\3+\4])
    RGBA (\5), (\6), (\7), (\8)         ; RGBA color to fill
ENDM

MACRO PalLoad
    db Enum_Cmd_Palette_Load
    AddressBank \1                   ; Palette
    Palette_PackedInterval (\2),(\3) ; Indices of palettes, (palettes[\3:\3+\4])
ENDM

MACRO PalRefresh
    db Enum_Cmd_Palette_Refresh
    Palette_PackedInterval (\1),(\2) ; Indices of palettes, (palettes[\3:\3+\4])
ENDM

MACRO PalCycle
    db Enum_Cmd_Palette_Cycle
    Palette_PackedLoop (\1), (\2)       ;Every (\1) cycles, for a total of (\2) times
    Palette_PackedInterval (\3),(\4)    ; Indices of palettes, (palettes[\3:\3+\4])
    ASSERT \5 >= 2,"Number of Colors less than 2"
    ASSERT \5 <= 4,"Number of Colors more than 4"
    db \5                               ; Number of Colors to cycle per palette
ENDM

MACRO PalInvert
    db Enum_Cmd_Palette_Invert
    Palette_PackedInterval (\1),(\2)    ; Indices of palettes, (palettes[\1:\1+\2])
ENDM

; 7C
; 7D

MACRO TransplantMap
    db Enum_Cmd_Scroll_TransplantMap
    dw \1       ; Source address from the metatilemap and collisionmap
    db \2       ; Width (tiles) of portion to copy
    db \3       ; Height (tiles) of portion to copy
    dw \4       ; Destination address onto metatilemap and collisionmap
    db \5       ; Y-coordinate
    db \6       ; X-coordinate
ENDM

MACRO TransplantMapMask
    db Enum_Cmd_Scroll_TransplantMapMask
    dw \1       ; Source address from the mask metatilemap and collisionmap
    db \2       ; Width (tiles) of portion to copy
    db \3       ; Height (tiles) of portion to copy
    dw \4       ; Destination address onto metatilemap and collisionmap
    db \5       ; Y-coordinate
    db \6       ; X-coordinate
ENDM

MACRO TransplantTile
    db Enum_Cmd_Scroll_TransplantTile
    db \1       ; Y coordinate
    db \2       ; X coordinate
    dw \3       ; Destination address onto metatilemap and collisionmap
    db \4       ; New collisionmap id
    db \5       ; New metatilemap id
ENDM

; 81

MACRO HeroSetCamera
    ; HeroSetCamera
    ;   Move Frames, DeltaX, DeltaY
    ;   Move Frames, DeltaX, DeltaY
    ; EndHeroSetCamera
    db Enum_Cmd_Scroll_HeroSetCamera
ENDM

MACRO ScrollMap
    db Enum_Cmd_Scroll_ScrollMap
ENDM
MACRO Move
    ; Used for ScrollMap
    db \1       ; Number of frames of movement
    db \2       ; DeltaX per frame
    db \3       ; DeltaY per frame
ENDM
MACRO EndScrollMap
    db $00
ENDM

MACRO SetCamera
    db Enum_Cmd_Scroll_SetCamera
    db \1       ;x-coordinate
    db \2       ;y-coordinate
ENDM

; 85

MACRO ResetThenSingleThreadMode ; TODO change name
    db Enum_Cmd_System_SceneUnknownNew
ENDM

; 87
; 88

MACRO LoadGame
    db Enum_Cmd_System_LoadGame
ENDM

MACRO CopyLoadGame
    db Enum_Cmd_System_CopyLoadGame
ENDM

; 8B
; 8C
; 8D
; 8E
; 8F
; 90
; 91
; 92

MACRO SceneNew
    db Enum_Cmd_System_SceneNew
ENDM

MACRO SceneReady
    db Enum_Cmd_System_SceneReady
ENDM

MACRO SetItemSpellMapError
    db Enum_Cmd_System_SetItemSpellMapError
    BankAddress \1      ; Script upon error
ENDM

MACRO SaveLocation
    db Enum_Cmd_System_SaveLocation
    BankAddress \1      ; Script to reload location
ENDM

MACRO Reboot
    db Enum_Cmd_System_Reboot
ENDM

MACRO FormatChar
    db Enum_Cmd_Textbox_FormatChar
    dw \1               ; Address of var to format
ENDM

MACRO Clear
    db Enum_Cmd_Textbox_Clear
ENDM

MACRO Close
    db Enum_Cmd_Textbox_Close
ENDM

MACRO Icon
    db Enum_Cmd_Textbox_Icon
    PortraitAddressBank \1  ; Points to a portrait (icons/ folder)
ENDM

MACRO Menu
    db Enum_Cmd_Textbox_Menu
    db _NARG ; Number of entries
    REPT _NARG
        BankAddress \1 ; Jump destination
        SHIFT
    ENDR
ENDM

MACRO Open
    db Enum_Cmd_Textbox_Open
ENDM

MACRO FormatWord
    db Enum_Cmd_Textbox_FormatWord
    dw \1               ; Address of var to format
ENDM

MACRO Write
    db Enum_Cmd_Textbox_Write
    db \1               ; String
    db "🛑"             ; EOF
ENDM

MACRO ToggleAlways
    db Enum_Cmd_Trigger_ToggleAlways
    VarBit \1           ; Varbit Address + Mask
    BankAddress \2      ; TODO
    db \3               ;
    db \4               ;
    dw \5               ;
ENDM

MACRO ToggleOnce
    db Enum_Cmd_Trigger_ToggleOnce
    VarBit \1           ; Varbit Address + Mask
    BankAddress \2      ; TODO
    db \3               ;
    db \4               ;
    dw \5               ;
ENDM

MACRO TriggerAlways
    db Enum_Cmd_Trigger_TriggerAlways
    VarBit \1           ; Varbit Address + Mask
    BankAddress \2      ; TODO
    db \3               ;
    dw \4               ;
ENDM

MACRO TriggerOnce
    db Enum_Cmd_Trigger_TriggerOnce
    VarBit \1           ; Varbit Address + Mask
    BankAddress \2      ; TODO
    db \3               ;
    dw \4               ;
ENDM

MACRO Treasure
    db Enum_Cmd_Trigger_Treasure
    VarBit \1           ; Varbit Address + Mask
    db \2               ; TODO
    db \3               ;
    dw \4               ;
ENDM

MACRO VarBitExpr
    db Enum_Cmd_Ram_VarBitExpr
    VarBit \1           ; Varbit Address + Mask
    ;\2 = Math
ENDM

MACRO VarByteExpr
    db Enum_Cmd_Ram_VarByteExpr
    dw \1               ; Address of xram
    ;\2 = Math
ENDM

MACRO VarWordExpr
    db Enum_Cmd_Ram_VarWordExpr
    dw \1               ; Address of xram
    ;\2 = Math
ENDM

MACRO NextGameCount
    db Enum_Cmd_Ram_NextGameCount
ENDM

MACRO SetGameCount
    db Enum_Cmd_Ram_SetGameCount
    dw \1               ; new gamecount
ENDM

MACRO SetWramByte
    db Enum_Cmd_Ram_SetWramByte
    AddressBank \1       ;DestinationAddressBank (WRAM)
    db \2                ;New value
ENDM

MACRO SetWramWord
    db Enum_Cmd_Ram_SetWramWord
    AddressBank \1       ;DestinationAddressBank (WRAM)
    dw \2                ;New value
ENDM

MACRO SetByte
    db Enum_Cmd_Ram_SetXramByte
    dw \1                ;DestinationAddress (WRAM/SRAM)
    db \2                ;New value
ENDM

MACRO SetWord
    db Enum_Cmd_Ram_SetXramWord
    dw \1                ;DestinationAddress (WRAM/SRAM)
    dw \2                ;New value
ENDM

MACRO AndByte
    db Enum_Cmd_Ram_AndXramByte
    dw \1                ;DestinationAddress (WRAM/SRAM)
    db \2                ;New value
ENDM

MACRO OrByte
    db Enum_Cmd_Ram_OrXramByte
    dw \1                ;DestinationAddress (WRAM/SRAM)
    db \2                ;New value
ENDM