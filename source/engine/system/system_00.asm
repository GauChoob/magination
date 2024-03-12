CallForeign::
    ; Used with Macro Do_CallForeign
    ; Switches to Bank e temporarily, then calls hl
    ; After that, restores initial bank
    ; Inputs:
    ;   e = Desired bank
    ;   hl = Desired function to call
    PushROMBank
    SwitchROMBank e
    call CallHL
    PopROMBank
    ret


CallHL::
    ; Inputs:
    ;   hl
    jp hl


MemAdd::
    ; Used with Macro Do_MemAdd
    ; Adds a fixed value to a range of data
    ; A max value is specified as a cap to avoid overflow
    ; Inputs:
    ;   d = Max value
    ;   e = Add value
    ;   bc = Total bytes to modify
    ;   hl = Starting address
    ld a, [hl]
    add e
    cp d
    jr c, .DontClip
        ld a, d ;Set max value
    .DontClip:
    ld [hl+], a
    Dec16Loop bc, MemAdd
    ret


MemAnd::
    ; Used with Macro Do_MemAnd
    ; Ands a range of data with a fixed value
    ; Inputs:
    ;   e = And value
    ;   bc = Total bytes to modify
    ;   hl = Starting address
    ld a, [hl]
    and e
    ld [hl+], a
    Dec16Loop bc, MemAnd
    ret


MemMov::
    ; Used with Macro Do_MemMov
    ; Variant Macro exists as well, Do_MemMov_V
    ; Copys x bytes of data from source to destination
    ; Inputs:
    ;   hl = source
    ;   de = destination
    ;   bc = size in bytes
    ld a, [hl+]
    ld [de], a
    inc de
    Dec16Loop_V bc, MemMov
    ret


MemOr::
    ; UNUSED FUNCTION
    ; Used with Macro Do_MemOr
    ; Ors a range of data with a fixed value
    ; Inputs:
    ;   e = Or value
    ;   bc = Total bytes to modify
    ;   hl = Starting address
    ld a, [hl]
    or e
    ld [hl+], a
    Dec16Loop bc, MemOr
    ret


MemSet::
    ; Used with Macro Do_MemSet
    ; Initializes a range of data to a fixed value
    ; Inputs:
    ;   e = Set value
    ;   bc = Total bytes to set
    ;   hl = Starting address
    ld a, e
    ld [hl+], a
    Dec16Loop bc, MemSet
    ret


MemXor::
    ; Used with Macro Do_MemXor
    ; Xors a range of data with a fixed value
    ; Inputs:
    ;   e = Xor value
    ;   bc = Total bytes to modify
    ;   hl = Starting address
    ld a, [hl]
    xor e
    ld [hl+], a
    Dec16Loop bc, MemXor
    ret


ScreenHide::
    ; Disables LCD.
    ; If LCD was enabled, it will also disable all interrupts and then setup Timer interrupt
    ; Outputs:
    ;   wScreenVisible <- 0
    ;   Only timer interrupt enabled
    xor a
    ld [wScreenVisible], a

    ld a, [rLCDC]
    bit 7, a
    ret z ;Already in LCDC stop state

    xor a
    ld [rIF], a ;disable pending interrupts
    ld [rIE], a ;disable all interrupts
    .WaitForVBlankLoop:
        ld a, [rLY]
        cp 145      ;VBlank phase
        jr nz, .WaitForVBlankLoop

    xor a
    ld [rLCDC], a

    ld [rIF], a
    ld [rIE], a
    ei

    call Interrupt_Timer_Start

    ret


ScreenShow::
    ; If LCD is turned off, turns on LCD with only V-Blank and STAT interrupts
    ; Outputs:
    ;   wScreenVisible <- rLCDC
    ;   V-Blank and H-Blank interrupts enabled
    ld a, [wScreenVisible]
    and a
    ret nz          ;Quit if LCD is already turned on

    ld a, STATF_LYC
    ld [rSTAT], a   ;LYC=LY Coincidence Interrupt only

    xor a
    ld [rIF], a
    ld [hInterrupt_VBlank_Control], a

    ld a, IEF_LCDC | IEF_VBLANK
    ld [rIE], a     ;Enable V-Blank and STAT interrupts

    ld a, LCDCF_ON | LCDCF_WIN9C00 | LCDCF_WINON | LCDCF_BG8800 | LCDCF_BG9800 | LCDCF_OBJ8 | LCDCF_OBJON | LCDCF_BGON
    ld [rLCDC], a
    ld [wScreenVisible], a

    ei
    ret


System_DoVFunc::
    ; If screen is turned on, waits until vblank triggers, and do sound + vblank function
    ; If screen is turned off, immediately do vblank function
    ; Inputs:
    ;   wScreenVisible
    ;   wVBlank_Func
    ld a, [wScreenVisible]
    and a
    jr nz, .Visible
    .Invisible:
        SwitchROMBank [wVBlank_Bank]
        Get16 hl, wVBlank_Func
        call CallHL
        ret
    .Visible:
        Set8FF hInterrupt_VBlank_Control, (INTERRUPT_VBLANK_SOUND | INTERRUPT_VBLANK_FUNC)
        call System_WaitVBlank
        ret


System_Init::
    ; Initializes all the parts of the engine

    XCall Collision_Init
    Hotspot_Init
    Interrupt_Init
    Frame_Init
    Do_CallForeign TextboxXX_Init ; Inefficiency - This is actually in bank 0 so direct call would have also worked
    XCall ActorList_Init
    Controller_Init
    Battle_Init

    ; Set the default error emssage when trying to use a spell/item in the map
    ld hl, wInventory_ItemSpellMapDefaultScript.Bank
    Set8 hl+, BANK(Script_System_ItemSpellMapError)
    Set8 hl+, LOW(Script_System_ItemSpellMapError)
    Set8 hl+, HIGH(Script_System_ItemSpellMapError)

    ; Miscellaneous vars
    xor a
    ld [wRAMBank], a
    ld [wROMBank], a
    ld [wActorSave_Flags], a
    ld [wEncounter_Enabled], a
    ld [wMenu_MainMenu_Disabled], a
    ld [wTextbox_SoundEnabled_UNUSED], a
    Set8 wTextbox_Halted_UNUSED, Textbox_HALTED
    ld hl, hAI_HeroFlags_Next
    ld [hl+], a
    ld [hl+], a ; hAI_HeroFlags_Current
    ret


System_UpdateGame::
    ; Normal frame update. Runs all scripts
    PushRAMBank
    PushROMBank

    Graphics_Open

        call Interpreter_Update

        Script_Do wScript_Master
        Script_Do wScript_Scroll
        Script_Do wScript_System
        Script_Do wScript_Text

        AI_UpdateController
        AI_UpdateHeroFlags

        XCall ActorList_Run

    Graphics_Close

    XCall Sound_SetupSoundVB
    Set8FF hInterrupt_VBlank_Control, %00000111
    call System_WaitVBlank
    PopROMBank
    PopRAMBank
    ret


System_UpdateGameNoScript::
    ; Updates the game without running any scripts
    PushRAMBank
    PushROMBank

    Graphics_Open
        ; Don't update the script or actors
    Graphics_Close

    XCall Sound_SetupSoundVB
    Set8FF hInterrupt_VBlank_Control, %00000111
    call System_WaitVBlank
    PopROMBank
    PopRAMBank
    ret


System_WaitVBlank::
    ; This function will loop until the next VBlank interrupt is triggered
    ; and DoVBlank is finished
    ldh a, [hInterrupt_VBlank_Control]
    set 7, a
    ldh [hInterrupt_VBlank_Control], a
    halt
    nop
    .NoVBlank:
        ldh a, [hInterrupt_VBlank_Control]
        bit 7, a
        jr nz, .NoVBlank ; Wait for V-BLANK.
        ret