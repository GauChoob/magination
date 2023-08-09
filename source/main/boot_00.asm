
; source/main/boot.s

; This is the code that is run when the gameboy is turned on, or if the game has a soft reset

; This code ensures the hardware is CGB, and then initializes a few registers and variables
SECTION "Boot", ROM0[$0150]

    ; $0150
Boot_HardReset::
    ; This code is only run once when the gameboy is turned on
    ; It checks whether the hardware is CGB-compatible or not, and then does all the soft reset stuff
    and a
    cp BOOTUP_A_CGB     ; $11 = CGB
    ld a, $00           ; xor a impossible since zf changes
    jr nz, .NotCGB
        inc a           ; $01 if CGB; $00 if DMG
    .NotCGB:
        ld [hCGBFlag], a ; Don't clear at Soft Reset

    ; $015B
Boot_SoftReset::
    ; Disables LCD, enables Double Speed mode and initializes registers
    StackInit
    call ScreenHide

    ; Check if System is CGB
    ld a, [hCGBFlag]
    and a
    jp z, NotCGB_Main

    ; Init registers
    xor a
    ld [rRP], a     ; Disable infrared port
    ld [rRAMG], a   ; Disable RAM
    ld [rROMB1], a  ; High bit of Bank is always 0

    ; Unused because the registers are always set by Interrupt_Timer_Start when the timer interrupt is activated
    Interrupt_Timer_Init

    ; System Speed and DMA
    XCall SystemXX_SetDoubleSpeed
    XCall SystemXX_SetupDMA_HRAM    ;Copies DMA function to HRAM

    jp Boot_GameInit ; Boot_GameInit is located immediately after this line of code, so this line is unnecessary

    ; $0195
Boot_GameInit:
    ; Initializes the game.
    Do_MemSet $C000, wStack-$C000, $00  ; Initialises WRAM0 to $00
    ; BUG - the value of c is uninitialized and passed to Sound_Init
    ; Whenever MusyX will load a bank, the bank will be stored to [$FF00+c] (presumably supposed to be a location in HRAM)
    ; c happens to be 0 at this point in time, and so the bank number will be written to [$FF00+0] (i.e. [rP1])
    ; We are very lucky because this will have no unintended consequences
    XCall Sound_Init

    call System_Init
    XCall Battery_LoadGame

    Set16FF hScript.State, Script_Start
    Set8FF hScript.Bank, BANK(msMain)
    Set16_M hScript.Frame, msMain

    jp Cmd_System_SceneNew