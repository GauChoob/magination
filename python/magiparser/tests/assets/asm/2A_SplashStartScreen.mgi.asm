

msSplashStartScreen::

    ResetThenSingleThreadMode                               ; $7247

    LoadBitmapSet BITSET_SplashScreen, PAL_InteractiveImaginationLogo  ; $7248

    LoadFullTilemap ATTRTILE_InteractiveImaginationLogoRLE  ; $724F

    PalClearAnim 0, 8, $1F, $1F, $1F, 0                     ; $7253

    SetCamera $00, $00                                      ; $7257

    SceneReady                                              ; $725A

    PalFadeAnimToBase 3, $20, 0, 8                          ; $725B

    Delay 90                                                ; $725E

    PalClearBase 0, 8, $1F, $1F, $1F, 0                     ; $7260

    PalFadeAnimToBase 3, $20, 0, 8                          ; $7264

    ResetThenSingleThreadMode                               ; $7267

    LoadBitmapSet BITSET_SplashScreen, PAL_MusyX            ; $7268

    LoadFullTilemap ATTRTILE_MusyXRLE                       ; $726F

    PalClearAnim 0, 8, $1F, $1F, $1F, 0                     ; $7273

    SetCamera $00, $00                                      ; $7277

    SceneReady                                              ; $727A

    PalFadeAnimToBase 3, $20, 0, 8                          ; $727B

    Delay 90                                                ; $727E

    PalClearBase 0, 8, $1F, $1F, $1F, 0                     ; $7280

    PalFadeAnimToBase 3, $20, 0, 8                          ; $7284

    ResetThenSingleThreadMode                               ; $7287

    LoadSpritePalette PAL_Sprite_Generic                        ; $7288

    LoadBitmapSet BITSET_PressStartScreen, PAL_StartScreen  ; $728C

    LoadFullTilemap ATTRTILE_MagiNationLogoRLE              ; $7293

    Switch                                                  ; $7297
        eGetGameCount                                       ; $7298
        Case $0000, .SwitchNaroom                           ; $7299
        Case $0001, .SwitchNaroom                           ; $729E
        Case $0002, .SwitchNaroom                           ; $72A3
        Case $0003, .SwitchNaroom                           ; $72A8
        Case $0004, .SwitchNaroom                           ; $72AD
        Case $0005, .SwitchNaroom                           ; $72B2
        Case $0006, .SwitchNaroom                           ; $72B7
        Case $0007, .SwitchUnderneath                       ; $72BC
        Case $0008, .SwitchUnderneath                       ; $72C1
        Case $0009, .SwitchUnderneath                       ; $72C6
        Case $000A, .SwitchUnderneath                       ; $72CB
        Case $000B, .SwitchCald                             ; $72D0
        Case $000C, .SwitchCald                             ; $72D5
        Case $000D, .SwitchCald                             ; $72DA
        Case $000E, .SwitchCald                             ; $72DF
        Case $000F, .SwitchCald                             ; $72E4
        Case $0010, .SwitchCald                             ; $72E9
        Case $0011, .SwitchOrothe                           ; $72EE
        Case $0012, .SwitchOrothe                           ; $72F3
        Case $0013, .SwitchOrothe                           ; $72F8
    EndSwitch                                               ; $72FD

.SwitchArderial:

    LoadArena FIGHTSCENE_ARENA_Arderial                     ; $72FE

    Jump .StartScreen                                       ; $7300

.SwitchNaroom:

    LoadArena FIGHTSCENE_ARENA_Naroom                       ; $7303

    Jump .StartScreen                                       ; $7305

.SwitchUnderneath:

    LoadArena FIGHTSCENE_ARENA_Underneath                   ; $7308

    Jump .StartScreen                                       ; $730A

.SwitchCald:

    LoadArena FIGHTSCENE_ARENA_Cald                         ; $730D

    Jump .StartScreen                                       ; $730F

.SwitchOrothe:

    LoadArena FIGHTSCENE_ARENA_Orothe                       ; $7312

.StartScreen:

    ThatInit $02, AI_SetupStartScreenArena, $00, $00, $D000, $00, msObjectIdle, msObjectIdle  ; $7314

    ThatInit $03, AI_Anim, $05, $06, $D041, $00, msObjectPressStart.Main, msObjectIdle  ; $7323

    ThatLoc $03, $00, $07, $05, $06, $D041                  ; $7332

    ThatStart $02                                           ; $733A

    PalClearAnim 0, 8, $1F, $1F, $1F, 0                     ; $733C

    SetCamera $00, $00                                      ; $7340

    StartSong SONGID_DreamCreature                          ; $7343

    SceneReady                                              ; $7345

    PalFadeAnimToBase 2, $20, 0, 8                          ; $7346

    ThatStart $03                                           ; $7349

.StartScreenDelayLoop:

    LongJumpIf                                              ; $734B
        eBitMatch wCntDown, %00001000                       ; $734C
        BankAddress .StartScreenFadeOut

    Jump .StartScreenDelayLoop                              ; $7353

.StartScreenFadeOutUnused:

    ThatScript $03, msObjectPressStart.FadeOutUnused        ; $7356

.StartScreenFadeOut:

    PalClearBase 0, 16, $1F, $1F, $1F, 0                    ; $735B

    PalFadeAnimToBase 3, $20, 0, 8                          ; $735F

    PalFadeAnimToBase 2, $20, 8, 8                          ; $7362

    Jump msGameEntrance                                     ; $7365

msGameEntrance::

    SongFadeOut $07                                         ; $7368

    SceneNew                                                ; $736A

    SetByte wMenu_MainMenu_Disabled, $01                    ; $736B