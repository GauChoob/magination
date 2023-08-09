
Hotspot00_GetType::
    ; Checks the trigger type of the hotspot
    ; The trigger type is the first byte of the target element in the hotspot table list
    ; Called by HotspotX_CheckHotspot
    ; Inputs:
    ;   hl = pointer to the desired hotspot in the wHotspot_Table
    ; Output:
    ;   a = hotspot trigger type ($00-$04, i.e. HOTSPOT_TRIGGER_ALL - HOTSPOT_TRIGGER_WEST)
    ;   The bank is set back to BANK(HotspotX_CheckHotspot)
    SwitchROMBank Hotspot_BANK
    Get8 e, hl+
    SwitchROMBank BANK(HotspotX_CheckHotspot)
    ld a, e
    ret


Hotspot00_SetScript::
    ; This function is called by a ROMX function to copy a BankAddress of a trigger
    ; into wScript_System
    ; This function is called by HotspotX_CheckHotspot and TriggerXX_Start
    ; Inputs:
    ;   [hl] in Hotspot_BANK -> BankAddress of the hotspot script
    ; Outputs:
    ;   wScript_System ready to run script (Script_System.State not yet initialized though - TODO check)
    SwitchROMBank Hotspot_BANK
    Set8 wScript_System.Bank, [hl+]
    Set8 wScript_System.Frame, [hl+]
    Set8 wScript_System.Frame+1, [hl+]

    ASSERT BANK(HotspotX_CheckHotspot) == BANK(TriggerXX_Start) ; Make sure that all the parent functions share the same bank
    SwitchROMBank BANK(HotspotX_CheckHotspot) ; = BANK(HotspotX_CheckHotspot)

    ret