


SystemXX_UpdatePressedButtons::
    ; Update the pressed buttons
    ; Also reset the game if Select/Start/A/B are pressed
    ;
    ; Outputs:
    ;   wCnt1, wCntDown, wCntUp
    ld a, [wCnt1]
    ld d, a
    Set8 rP1, $20 ;Down/Up/Left/Right
    ld a, [rP1]
    ld a, [rP1]
    cpl
    and $0F
    swap a
    ld b, a
    Set8 rP1, $10 ;Start/Select/B/A
    ld a, [rP1]
    ld a, [rP1]
    ld a, [rP1]
    ld a, [rP1]
    ld a, [rP1]
    ld a, [rP1]
    cpl
    and $0F
    or b
    ld [wCnt1], a
    ld c, a
    and $0F
    cp $0F
    jr nz, .Continue
    .SelectStartABReset:
        jp Boot_SoftReset ;If Select/Start/A/B are pressed at the same time, reset the game
    .Continue:
    ld a, c
    xor d   ;buttons that had a state change
    ld e, a
    and c    ;Buttons that had a state change to press down
    ld [wCntDown], a
    ld a, c
    cpl
    and e     ;Buttons that had a state change to being released
    ld [wCntUp], a
    Set8 rP1, $30
    ret


SystemXX_SetDoubleSpeed::
    ; Enables CGB Double Speed Mode if it isn't already enabled
    ld a, [rKEY1]
    bit 7, a
    ret nz ;Abort if already in double speed mode
    Set8 rKEY1, $01
    ld a, [rIE]
    push af
    xor a
    ld [rIE], a
    Set8 rP1, $30
    stop
    .WaitForDoubleSpeed:
        ld a, [rKEY1]
        bit 7, a
        jr z, .WaitForDoubleSpeed
    xor a
    ld [rP1], a
    ld [rIF], a
    pop af
    ld [rIE], a ;Reset interrupts to previous state
    ret


SystemXX_SetSingleSpeed::
    ; Disables CGB Double Speed Mode if the gameboy isn't operating at Normal Speed Mode
    ; This function is unused
    ld a, [rKEY1]
    bit 7, a
    ret z  ;Abort if already in normal speed mode
    Set8 rKEY1, $01
    ld a, [rIE]
    push af
    xor a
    ld [rIE], a
    Set8 rP1, $30
    stop
    .WaitForNormalSpeed:
        ld a, [rKEY1]
        bit 7, a
        jr nz, .WaitForNormalSpeed
    xor a
    ld [rP1], a
    ld [rIF], a
    pop af
    ld [rIE], a ;Reset interrupts to previous state
    ret


SystemXX_SetupDMA_HRAM::
    ; Initializes $FF80 - $FF8A with function RunDMA
    ld c, LOW(hSystem_RunDMA)
    ld b, (hSystem_RunDMA.End - hSystem_RunDMA)
    ld hl, SystemXX_DMA_HRAM_Code
	.CopyLoop:
	    ld a, [hl+]
	    ld [$FF00+c], a
	    inc c
	    dec b
	    jr nz, .CopyLoop
    ret


SystemXX_DMA_HRAM_Code::
LOAD "HRAM_RUNDMA", HRAM[$FF80]
hSystem_RunDMA::
    Set8FF rDMA, $C0
    ld a, $28
    .WaitLoop:
        dec a
        jr nz, .WaitLoop
    ret
    .End:
ENDL