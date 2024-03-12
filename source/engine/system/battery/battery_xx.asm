
; source/engine/system/battery/battery.s

; This module contains functions related to manipulating XRAM and savefiles

; Essentially, it verifies that the save data is valid and handles corrupted/uninitialized data
; It also manages the 2 different save states (saved game and current game)

; There are two savefiles. Savefile 0 is in bank $00 and $01, and savefile 1 is in bank $02 and $03
; One savefile is the saved game, and one savefile is the currently played game
; When you turn on the gameboy, the saved game will be duplicated into a second copy that will be used to play the game
; When you save the game, the currently played game is marked as the saved game, and the information is copied over into the alternative savefile

; Battery_VerificationString - contains a magic number to check for savefile corruption/validity
; Battery_ReadyGame - Copies the data from the saved game (xBattery_SavedSavefileBaseBank) into the other savefile which is used for the current game,
;   so that the saved copy won't be modified while playing unless saved at an inn/overworld
; Battery_LoadGame - Run on startup. If the savefile is corrupt, runs Battery_EraseGame, or else runs Battery_ReadyGame
; Battery_NextGameCount - Increments xGameCount by 1 and then runs Battery_SetGameCount - unused, deprecated in favor of Battery_SetGameCount
; Battery_SaveGame - Saves the game by copying the current game into the other savefile
; Battery_SetGameCount - Erases parts of xScript_SaveBits and xScript_SaveVars that are meant to be reset every time the xGameCount changes
; Battery_EraseGame - Erases all of XRAM and then marks the data as not corrupt by filling in xBattery_Verify0 and xBattery_Verify1. It sets the starting function (xLoad_ScriptBank/xLoad_ScriptFrame) as msMain


Battery_VerificationString::
    ; The verification string is a unique string of $10 bytes that is used as a magic number
    ; This magic number is written twice into XRAM to identify the slot as an uncorrupted savefile
    dw $DEAD
    dw $BEEF
    dw $BADD
    dw $FEED
    dw $FEDC
    dw $BA98
    dw $7654
    dw $3210
    .End:
ASSERT Battery_VerificationString_LENGTH == Battery_VerificationString.End - Battery_VerificationString,"Length mismatch in Battery_VerificationString!"


Battery_ReadyGame::
    ; This function copies one savefile into the other savefile slot
    ; Inputs:
    ;   xBattery_SavedSavefileBaseBank = The saved-game savefile ($00 or $02)
    ; Outputs:
    ;   The source file is copied and stored into the other savefile ($02 or $00)
    ;   wBattery_ActiveSavefileBaseBank points to the other savefile (i.e. the copy that will be used as you progress the game)

    ; Get the value of xBattery_SavedSavefileBaseBank from saveslot 0 (bank $00)
    ; Verify a valid value of $00 or $02, or else Battery_EraseGame
    xor a
    ld [rRAMB], a
    Battery_On
    Get8 b, xBattery_SavedSavefileBaseBank
    and a
    jr z, .ValidBaseBank
    cp $02
    jp nz, Battery_EraseGame

    ; xBattery_SavedSavefileBaseBank is confirmed to be a valid bank of $00 or $02
    .ValidBaseBank:
        ; Copy xBattery_SavedSavefileBaseBank into save slot 1 (bank $02) so that both savefiles have identical values
        ; Even though we only read the var from save slot 0, if save slot 1 overwrites save slot 0, it overwrites the value
        Set8 rRAMB, $02
        Set8 xBattery_SavedSavefileBaseBank, b
        ld d, a

        ; Swap the bank $02 <-> $00
        ld a, b
        xor $02
        ld e, a
        ld [wBattery_ActiveSavefileBaseBank], a ;The base bank for gameplay is going to be the alternative saveslot

        ; Populate the other saveslot with a copy of the original saved data
        SwitchRAMBank BANK(wBattery_CopyBuffer)
        call Battery_CopyBank ; Duplicate relative bank $00
        call Battery_CopyBank ; Duplicate relative bank $01
        Battery_Off
        ret


Battery_CopyBank:
    ; Duplicates the contents of a source XRAM bank to a destination XRAM bank
    ; Inputs:
    ;   d = source XRAM bank
    ;   e = destination XRAM bank
    ; Outputs:
    ;   d += 1, to prepare to duplicate the next bank if necessary
    ;   e += 1, to prepare to duplicate the next bank if necessary
    ;   wBattery_CopyBuffer is used as a buffer

    ; The buffer can only fit $1000 bytes of data, but the XRAM bank is $2000 bytes long, so we have to duplicate the bank in 2 steps
    ld bc, $A000
    call Battery_Copy1000Bytes
    ld bc, $B000
    call Battery_Copy1000Bytes
    inc e
    inc d
    ret

    ; $4057
Battery_Copy1000Bytes:
    ; Copies $1000 bytes from a source XRAM bank to a destination XRAM bank
    ; Inputs:
    ;   bc = starting address
    ;   d = source XRAM bank
    ;   e = destination XRAM bank
    ; Outputs:
    ;   wBattery_CopyBuffer is used as a buffer
    ;   The data is copied

    ; First, copy $1000 bytes from the source XRAM bank into a WRAM buffer
    ld hl, wBattery_CopyBuffer
    Set8 rRAMB, d
    .CopyXRAMToWRAMLoop:
        LdHLIBCI
        LdHLIBCI
        LdHLIBCI
        LdHLIBCI
        ld a, h
        cp HIGH(wBattery_CopyBuffer + $1000) ; Stop when the buffer is full ($1000 bytes)
        jr nz, .CopyXRAMToWRAMLoop

    ; Next, copy the $1000 bytes back from the WRAM buffer into the new destination XRAM bank
    Set8 rRAMB, e
    dec bc
    dec hl
    .CopyWRAMToXRAMLoop: ; Copy back decrementing
        LdBCDHLD
        LdBCDHLD
        LdBCDHLD
        LdBCDHLD
        ld a, h
        cp HIGH(wBattery_CopyBuffer-1) ; Stop when the entire buffer has been copied
        jr nz, .CopyWRAMToXRAMLoop
    ret


Battery_LoadGame::
    ; This is the initialization function run when the gameboy is turned on
    ; This function verifies if the XRAM contains uncorrupted save data by verifying that
    ; xBattery_Verify0 and xBattery_Verify1 contain the Battery_VerificationString in bank $00
    xor a
    ld [rRAMB], a
    Battery_On

    ; Check that xBattery_Verify0 contains Battery_VerificationString, or else reset the XRAM data
    ld d, Battery_VerificationString.End - Battery_VerificationString
    ld bc, xBattery_Verify0
    ld hl, Battery_VerificationString
    .Verify0Loop:
        ld a, [hl+]
        ld e, a
        ld a, [bc]
        cp e
        jp nz, Battery_EraseGame
        inc bc
        dec d
        jr nz, .Verify0Loop

    ; Check that xBattery_Verify1 contains Battery_VerificationString, or else reset the XRAM data
    ld d, Battery_VerificationString.End - Battery_VerificationString
    ld bc, xBattery_Verify1
    dec hl
    .Verify1Loop:
        ld a, [hl-]
        ld e, a
        ld a, [bc]
        cp e
        jp nz, Battery_EraseGame
        inc bc
        dec d
        jr nz, .Verify1Loop

    ; We passed the verification and so we can prepare the savefiles
    jp Battery_ReadyGame


Battery_NextGameCount::
    ; Increments xGameCount by 1
    ; This function is unused and deprecated in favour of Cmd_Ram_SetGameCount
    Battery_SetBank "XRAM Gamestate"
    Battery_On
    FGet16 de, xGameCount
    inc de
    FSet16 xGameCount, de
    jp Battery_SetGameCount


Battery_SaveGame::
    ; Saves the game
    ; The current target savefile indicated by wBattery_ActiveSavefileBaseBank becomes the base savefile and is copied into the alternate savefile slot
    ; Inputs:
    ;   wBattery_ActiveSavefileBaseBank = Points to the currently active savefile
    ; Outputs:
    ;   xBattery_SavedSavefileBaseBank = wBattery_ActiveSavefileBaseBank (the active savefile becomes the saved savefile)
    ;   wBattery_ActiveSavefileBaseBank swaps out to the alternate savefile
    ;   The alternate savefile is erased with the current savefile
    Battery_On
    xor a
    ld [rRAMB], a
    Mov8 xBattery_SavedSavefileBaseBank, wBattery_ActiveSavefileBaseBank
    jp Battery_ReadyGame


Battery_SetGameCount::
    ; When xGameCount is updated, the script bits and vars associated with xGameCount are set to $00 to prep for the next section of the game
    Battery_SetBank "XRAM Gamestate"
    Battery_On

    ; Reset the first $7F bytes of xScript_SaveBits
    xor a
    ld d, xScript_GAMESTATESIZE ;$7F
    ld hl, xScript_SaveBits
    .LoopResetBits:
        ld [hl+], a
        dec d
        jr nz, .LoopResetBits

    ; Reset the first $7F bytes of xScript_SaveVars
    ld d, xScript_GAMESTATESIZE ;$7F
    ld hl, xScript_SaveVars
    .LoopResetVars:
        ld [hl+], a
        dec d
        jr nz, .LoopResetVars

    Battery_Off
    ret

    ; $410B
Battery_EraseGame::
    ; This function clears all of XRAM with $00, then marks the savefiles as valid by running Battery_WriteVerification

    Battery_On

    ; First, erase all $04 banks with $00
    ld c, $04 ; Total number of XRAM banks
    .EraseBankLoop:
        push bc
        ld a, c
        dec a
        ld [rRAMB], a
        Do_MemSet $A000, $2000, $00
        pop bc
        dec c
        jr nz, .EraseBankLoop

    ; Then, run Battery_WriteVerification for banks $00 and $02, marking both savestates as uncorrupted
    xor a
    ld [rRAMB], a
    call Battery_WriteVerification
    Set8 rRAMB, $02
    call Battery_WriteVerification

    ; Arbitrarily set $02 as the first wBattery_ActiveSavefileBaseBank
    Set8 wBattery_ActiveSavefileBaseBank, $02
    Battery_Off
    ret

    ; $4141
Battery_WriteVerification:
    ; This function validates the current savefile as uncorrupted files by writing the verification strings to the current XRAM bank
    ; and setting the starting script to be msMain, which runs the loading splash screens and start screen
    ; Inputs:
    ;   The target XRAM bank ($00 or $02) should be already loaded
    ; Outputs:
    ;   xBattery_Verify0 and xBattery_Verify1 set to Battery_VerificationString
    ;   xLoad_ScriptBank/xLoad_ScriptFrame set to msMain
    Set8 xLoad_ScriptBank, BANK(msMain)
    Set16_M xLoad_ScriptFrame, msMain
    ld d, Battery_VerificationString.End - Battery_VerificationString
    ld bc, xBattery_Verify0
    ld hl, Battery_VerificationString

    .Verify0CopyLoop:
        LdBCIHLI
        dec d
        jr nz, .Verify0CopyLoop

    ld d, Battery_VerificationString.End - Battery_VerificationString
    ld bc, xBattery_Verify1
    dec hl
    .Verify1CopyLoop:
        ld a, [hl-]
        ld [bc], a
        inc bc
        dec d
        jr nz, .Verify1CopyLoop

    ret