ASSERT BANK(@) == ActorXX_BANK

; Encounter table values are written in frames (the values are divided by 4 by the Macro)
; For encounters, the numbers count down twice as fast when Tony is running
Encounter_RandomDelayTable_VeryFast::
    ; Average delay: 0.62667 seconds
    Encounter_RandomDelayTable 68, 16, 24, 12, 36, 64, 40, 44, 56, 48, 32, 28, 36, 48, 12, 16
Encounter_RandomDelayTable_Fast::
    ; Average delay: 6.59111 seconds
    Encounter_RandomDelayTable 288, 120, 268, 288, 420, 208, 448, 600, 600, 748, 268, 420, 268, 748, 240, 88
Encounter_RandomDelayTable_Normal::
    ; Average delay: 8.10222 seconds
    Encounter_RandomDelayTable 288, 900, 268, 288, 420, 288, 88, 448, 720, 600, 748, 288, 420, 780, 748, 240
Encounter_RandomDelayTable_Slow::
    ; Average delay: 9.70833 seconds (taking into account the bugs)
    ; Bug: There are only 15 values in this table, so the first entry of the next table is also used
    Encounter_RandomDelayTable 720, 240, 840, 900, 216, 900, 208, 448, 720, 208, 1016, 288, 216, 780, 900
Encounter_RandomDelayTable_VerySlow::
    ; Average delay: 13.7378 seconds (taking into account the bugs)
    ; Bug: There are only 15 values in this table, so the first byte after the table is used ($FA = 1000 frames)
    ; Bug - one value is skipped and rerolled because it converts to $FF, which is interpreted as Encounter_Countdown_UNINITIALIZED
    ;                                                                                         v This one
    Encounter_RandomDelayTable 720, 688, 840, 900, 1020, 900, 656, 768, 720, 656, 1016, 800, 1020, 780, 900

Encounter_Trigger::
    ; Sets wScript_System to run wEncounter_Script
    ; Will wait for the thread to be available and will wait for the menu to close
    ; Bug: the first byte from this function is used in the previous table
    ; Inputs:
    ;   wEncounter_Script - BankAddress of script (generally a combat script)
    ;   wScript_System - needs to be not active
    ;   wTextbox_Position ; needs to be closed
    ; Outputs:
    ;   wScript_System = wEncounter_Script

    ; Wait for wScript_System to be available
    ld a, [wScript_System.Frame + 1] ; $FA, $16, $C7
    and a
    ret nz

    ; Wait for the Textbox to be closed
    ld a, [wTextbox_Position]
    cp Textbox_CLOSED
    ret nz

    ; Reset the countdown timer
    Set8 wEncounter_Countdown, Encounter_Countdown_UNINITIALIZED

    ; Set the script to the encounter script
    Mov8 wScript_System.Bank, wEncounter_Script.Bank
    Mov16 wScript_System.Frame, wEncounter_Script.Frame
    Set16_M wScript_System.State, Script_Start
    ret


Encounter_Countdown:
    ; If the current actor is standing on COLLID_ENCOUNTER and wScript_System is not busy,
    ; 1) Initialize wEncounter_Countdown with a random value from wEncounter_LookupTable if uninitialize
    ; 2) Decrement wEncounter_Countdown
    ; 3) run Encounter_Trigger when wEncounter_Countdown reaches 0
    ; Inputs:
    ;   wEncounter_Countdown = Number of ticks (1 tick per 4 frames) before triggering encounter, or Encounter_Countdown_UNINITIALIZED
    ;   wEncounter_LookupTable = Table from which to select a random delay if Encounter_Countdown_UNINITIALIZED uninitialized
    ;   wEncounter_Script = Script to run when wEncounter_Countdown reaches 0

    ; Abort if not standing on COLLID_ENCOUNTER
    Get16FF hl, hActor.TileAddress
    SwitchRAMBank BANK(wCollisionMap)
    ld a, [hl]
    cp COLLID_ENCOUNTER
    ret nz

    ; Abort if wScript_System is busy
    ld a, [wScript_System.Frame + 1]
    and a
    ret nz

    ; Trigger if wEncounter_Countdown == 0
    ld a, [wEncounter_Countdown]
    and a
    jp z, Encounter_Trigger

    cp Encounter_Countdown_UNINITIALIZED
    jr z, .SetRandomDelay
    .Countdown:
        ; Decrement wEncounter_Countdown if neither 0 nor Encounter_Countdown_UNINITIALIZED
        dec a
        ld [wEncounter_Countdown], a
        ret
    .SetRandomDelay:
        ; Get a random delay if wEncounter_Countdown == Encounter_Countdown_UNINITIALIZED
        FGet16 hl, wEncounter_LookupTable
        call Math_Rand8Inc
        and $0F
        ld e, a
        ld d, $00
        add hl, de
        Mov8 wEncounter_Countdown, hl
        ret


Encounter_Walk:
    ; call Encounter_Countdown every 4 frames
    ld a, [wEncounter_Enabled]
    and a
    ret z

    ; 25% of frames
    ldh a, [hTicker]
    and %00000011
    cp %11
    ret nz

    jp Encounter_Countdown


Encounter_Run:
    ; call Encounter_Countdown every 2 frames
    ld a, [wEncounter_Enabled]
    and a
    ret z

    ; 50% of frames
    ldh a, [hTicker]
    and %00000001
    ret nz

    jp Encounter_Countdown