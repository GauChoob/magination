SECTION "HRAM", HRAM[$FF80]

;hSystem_RunDMA::
    ;ds $0A
    ;Initialized on boot to this code: 3E C0 E0 46 3E 28 3D 20
    ;See SystemXX_DMA_HRAM_Code
    ;Set8FF rDMA, $C0
    ;ld a, $28
    ;.WaitLoop
    ;   dec a
    ;   jr nz,.WaitLoop
    ;ret

SECTION "HRAM2", HRAM[$FF8A]


    ;ds $FF8A - @
INCLUDE "source/engine/actor/actor_hram.asm"

    ;ds $FF99 - @
INCLUDE "source/engine/interrupt/interrupt_hram.asm"

    ;ds $FF9F - @
hScript_CurrentAddress::
    ; Address of the current script
    ds 2
hScript::
    ;ds $FFA1 - @
    .Bank:
         ; Valid banks only go to 127.
         ; If bit 7 is set, the bank ScriptXX_BANK will be loaded instead
         ; This allows you stop reading from the script temporarily, and load
         ; functions in bank ScriptXX_BANK, before resetting the bit
         ; and continuing to read the script from the real script bank
        ds 1
    ;ds $FFA2 - @
    .Frame:
        ds 2
    ;ds $FFA4 - @
    .State:
        ds 2
    ;ds $FFA6 - @
    .SmallCounter:
        ; Remaining frames before next iteration
        ds 1
    ;ds $FFA7 - @
    .BigCounter:
        ; Remaining iterations
        ds 1

; source/engine/system/system_var_fast.s

    ;ds $FFA8 - @
hTicker::
    ; Increments by 1 every GameLoop (60 Hz)
    ds 1

    ;ds $FFA9 - @
hMath_RandSeed::
    ; Increments by an average of 1 [-3,4] every time 
    ; Initialized upon boot to $DC in the GBC boot rom
    ds 1

    ;ds $FFAA - @
hAI_HeroFlags_Next::
    ; TODO - for the next frame or whatever
    ds 1
    ;ds $FFAB - @
hAI_HeroFlags_Current::
    ; TODO - the current state or whatever
    ds 1

    ; Free memory

    ;ds $FFFE - @
INCLUDE "source/main/boot_hram.asm"