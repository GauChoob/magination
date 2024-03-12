Script_Table::
    dw Cmd_Actor_HeroFromDoor            ; $00
    dw Cmd_Actor_HeroToDoor ; $01
    dw Cmd_Actor_HeroToRelativeDoor            ; $02
    dw Cmd_Actor_ThatActorDrawTile ; $03
    dw Cmd_Actor_ThatActorDrawMaskTile ; $04
    dw Cmd_Actor_ThatActorInit ; $05
    dw Cmd_Actor_ThatActorTeleportToThatActor ; $06
    dw Cmd_Actor_ThatActorSetAI ; $07
    dw Cmd_Actor_ThatActorSetLoc ; $08
    dw Cmd_Actor_ThatActorSetScript ; $09
    dw Cmd_Actor_ThatActorSetSpriteBase ; $0A
    dw Cmd_Actor_ThatActorStart ; $0B
    dw Cmd_Actor_ThatActorDelete ; $0C
    dw Cmd_Actor_ThisActorDrawTile ; $0D
    dw Cmd_Actor_ThisActorDrawMaskTile ; $0E
    dw Cmd_Actor_ThisActorTeleportToThatActor ; $0F
    dw Cmd_Actor_ThisActorNewState ;$10
    dw Cmd_Actor_ThisActorRaindrop ; $11
    dw Cmd_Actor_RestoreActorState ; $12
    dw Cmd_Actor_ThisActorSetAI ; $13
    dw Cmd_Actor_ThisActorSetAnimSingle ; $14
    dw Cmd_Actor_ThisActorSetAnimDelay ; $15
    dw Cmd_Actor_ThisActorSetAnimScroll ; $16
    dw Cmd_Actor_ThisActorSetLoc ; $17
    dw Cmd_Actor_ThisActorSetSpriteBase ; $18
    dw Cmd_Actor_ThisActorDelete ; $19
    dw Cmd_Actor_ThisActorWaitTile  ; $1A

    dw Cmd_Sound_PlaySFX0      ; $1B
    dw Cmd_Sound_PlaySFX1      ; $1C
    dw Cmd_Sound_SongPause_Bugged  ; $1D
    dw Cmd_Sound_SongResume        ; $1E
    dw Cmd_Sound_SongStart         ; $1F
    dw Cmd_Sound_FanfareStart      ; $20
    dw Cmd_Sound_SongStop          ; $21
    dw Cmd_Sound_SetSongVolume      ; $22
    dw Cmd_Sound_FadeInSong        ; $23
    dw Cmd_Sound_FadeOutSong       ; $24

    dw Cmd_Battle_New ; $25
    dw $0F31 ; $26
    dw $0F39  ;BattleDoneLoading?
    dw $0F46
    dw $0F4E
    dw $0F51
    dw $0F59
    dw $0F6E
    dw $0F76
    dw $0F82 ;This defines a single monster from an encounter
    dw $0F8A
    dw Cmd_Battle_Swirl            ; $30 -todo maybe this should be a graphics function instead
    dw $0FDF
    dw $0FFE

    dw Cmd_Fightscene_FightFX_BlowAway ; $33
    dw Cmd_Fightscene_LoadArena        ; $34
    dw Cmd_Fightscene_LoadCreatureLeft ; $35
    dw Cmd_Fightscene_TileFX_DissolveFast ; $36
    dw Cmd_Fightscene_TileFX_DissolveSlow ; $37
    dw Cmd_Fightscene_New      ; $38
    dw Cmd_Fightscene_FightFX_PanFromTable      ; $39
    dw Cmd_Fightscene_FightFX_Recoil   ; $3A
    dw Cmd_Fightscene_FightFX_UNKTODO  ; $3B
    dw Cmd_Fightscene_FightFX_PanConstant ; $3C
    dw Cmd_Fightscene_FightFX_Shake    ; $3D
    dw Cmd_Fightscene_FightFX_Sink     ; $3E
    dw Cmd_Fightscene_FightFX_Tremble  ; $3F

    dw Cmd_Flow_Delay     ; $40
    dw Cmd_Flow_RandDelay                         ; $41
    dw Cmd_Flow_End       ; $42
    dw Cmd_Flow_LongJumpIf  ; $43
    dw Cmd_Flow_InitSkip         ; $44
    dw Cmd_Flow_LongJump          ; $45
    dw Cmd_Flow_LocalJump     ; $46
    dw Cmd_Flow_RandLongJump  ; $47
    dw Cmd_Flow_Pass          ; $48
    dw Cmd_Flow_SwitchRange   ; $49
    dw Cmd_Flow_ResetScript    ; $4A
    dw Cmd_Flow_Switch        ; $4B

    dw Cmd_Frame_SpriteDraw  ; $4C
    dw Cmd_Frame_SpriteBlock ; $4D
    dw Cmd_Frame_SpriteInvisible  ; $4E
    dw Cmd_Frame_OverlayDraw  ; $4F
    dw Cmd_Frame_OverlayInit            ; $50
    dw Cmd_Frame_OverlayInvisible    ; $51

    dw Cmd_Global_ClearSync   ; $52
    dw Cmd_Global_SetAnyEventMaster ; $53
    dw Cmd_Global_SetAnyEventScroll ; $54
    dw Cmd_Global_SetAnyEventText ; $55
    dw Cmd_Global_SetEventMaster  ; $56
    dw Cmd_Global_SetEventScroll  ; $57
    dw Cmd_Global_SetEventText  ; $58
    dw Cmd_Global_SetScriptMaster  ; $59
    dw Cmd_Global_SetScriptScroll  ; $5A
    dw Cmd_Global_SetScriptText ; $5B
    dw Cmd_Global_Sync  ; $5C
    dw Cmd_Global_WaitAnyEventMaster ; $5D
    dw Cmd_Global_WaitAnyEventScroll ; $5E
    dw Cmd_Global_WaitAnyEventText ; $5F
    dw Cmd_Global_WaitEventMaster            ; $60
    dw Cmd_Global_WaitEventScroll  ; $61
    dw Cmd_Global_WaitEventText  ; $62

    dw Cmd_Load_LargeStaticTilemap  ; $63
    dw Cmd_Load_Hotspots       ; $64
    dw Cmd_Load_Scene ; $65
    dw Cmd_Load_SpritePalette ; $66
    dw Cmd_Load_Map ; $67
    dw Cmd_Load_MapMask ; $68
    dw Cmd_Load_Triggers ; $69
    dw Cmd_Load_BitmapSet ;$6A
    dw Cmd_Load_Bitmap ; $6B

    dw Cmd_Palette_ArenaFadeToColor ; $6C
    dw Cmd_Palette_ArenaFadeToBase  ; $6D
    dw Cmd_Palette_ClearBase        ; $6E
    dw Cmd_Palette_ClearAnim        ; $6F
    dw Cmd_Palette_CreatureCycle    ; $70
    dw Cmd_Palette_CreatureFadeToColor ; $71
    dw Cmd_Palette_CreatureFadeToBase ; $72
    dw Cmd_Palette_CreatureLoad     ; $73
    dw Cmd_Palette_CreatureFlash    ; $74
    dw Cmd_Palette_CreatureInvert   ; $75
    dw Cmd_Palette_FadeAnimToBase   ; $76
    dw Cmd_Palette_FadeAnimToColor  ; $77
    dw Cmd_Palette_Load             ; $78
    dw Cmd_Palette_Refresh          ; $79
    dw Cmd_Palette_Cycle            ; $7A
    dw Cmd_Palette_Invert           ; $7B

    dw Cmd_Scroll_CameraSeekPos         ; $7C
    dw Cmd_Scroll_CameraSeekActor ; $7D
    dw Cmd_Scroll_TransplantMap ; $7E
    dw Cmd_Scroll_TransplantMapMask ; $7F

    dw Cmd_Scroll_TransplantTile            ; $80
    dw $1DE1
    dw Cmd_Scroll_HeroSetCamera  ;$82
    dw Cmd_Scroll_ScrollMap  ;$83
    dw Cmd_Scroll_SetCamera  ; $84
    
    dw $1EE7
    dw Cmd_System_SceneUnknownNew  ; $86
    dw $1FAF
    dw $1FD4
    dw Cmd_System_LoadGame ; $89
    dw Cmd_System_CopyLoadGame ; $8A
    dw $2045
    dw Cmd_System_MusicMenu ; $8C
    dw $2070
    dw $2089
    dw $20C8

    dw $20DA            ; $90
    dw Cmd_System_NewGame  ; $91
    dw Cmd_System_SaveGame ; $92
    dw Cmd_System_SceneNew ; $93
    dw Cmd_System_SceneReady ; $94
    dw Cmd_System_SetItemSpellMapError ; $95
    dw Cmd_System_SaveLocation ; $96
    dw Cmd_System_Reboot ; $97

    dw Cmd_Textbox_FormatChar ; $98
    dw Cmd_Textbox_Clear ; $99
    dw Cmd_Textbox_Close ; $9A
    dw Cmd_Textbox_Icon  ; $9B
    dw Cmd_Textbox_Menu ; $9C
    dw Cmd_Textbox_Open ; $9D
    dw Cmd_Textbox_FormatWord ;$9E
    dw Cmd_Textbox_Write ; $9F

    dw Cmd_Trigger_ToggleAlways  ; $A0
    dw Cmd_Trigger_ToggleOnce ; $A1
    dw Cmd_Trigger_TriggerAlways ; $A2
    dw Cmd_Trigger_TriggerOnce ; $A3
    dw Cmd_Trigger_Treasure    ; $A4

    dw Cmd_Ram_VarBitExpr    ; $A5
    dw Cmd_Ram_VarByteExpr    ; $A6
    dw Cmd_Ram_VarWordExpr    ; $A7
    dw Cmd_Ram_NextGameCount    ; $A8
    dw Cmd_Ram_SetGameCount    ; $A9
    dw Cmd_Ram_SetWramByte    ; $AA
    dw Cmd_Ram_SetWramWord    ; $AB
    dw Cmd_Ram_SetXramByte    ; $AC
    dw Cmd_Ram_SetXramWord    ; $AD
    dw Cmd_Ram_AndXramByte    ; $AE
    dw Cmd_Ram_OrXramByte    ; $AF