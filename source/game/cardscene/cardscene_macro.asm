

MACRO Cardscene_RestoreBackgroundCharsBC
    ; inefficient - this should be a function accessed via Do_CallForeign
    ; Reestores wBackgroundCharsBBuffer and wBackgroundCharsCBuffer
    ; Opposite of Cardscene_BackupBackgroundCharsBC
    SwitchRAMBank BANK(wBackgroundCharsBBuffer)
    xor a
    ld [rVBK], a
    Do_MemMov wBackgroundCharsBBuffer, vBackgroundCharsB, $0800
    Set8 rVBK, $01
    Do_MemMov wBackgroundCharsCBuffer, vBackgroundCharsC, $0800
ENDM

MACRO Cardscene_RestoreNPCSpritesBackgroundCharsA
	; Restores vNPCSpritesChars and vBackgroundCharsA
	; Opposite of Cardscene_BackupNPCSpritesBackgroundCharsA
    SwitchRAMBank BANK(wCardscene_NPCSpritesBackgroundCharsABuffer)
    xor a
    ld [rVBK], a
    Do_MemMov wCardscene_NPCSpritesBackgroundCharsABuffer, vNPCSpritesChars, $1000
ENDM