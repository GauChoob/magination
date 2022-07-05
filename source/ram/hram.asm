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

; source/engine/actor/actor_var_fast.s

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
hMath_RandCounter::
    ; Increments by an average of 1 [-3,4] every time 
    ds 1
    ;ds $FFAA - @
;?
    ds 1
;CurrentFrameUnknown
    ;ds $FFAB - @
;PreviousFrameUnknown
    ds 1


; source/engine/system/system_equ.s

    ds $FFFE - @
hCGBFlag::
    ; Defined only on Hard Reset
    ; 1 if CGB or GBA; 0 if DMG
    ds 1