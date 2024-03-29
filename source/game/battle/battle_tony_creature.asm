ASSERT BattleCore_BANK == BANK(@)


Battle_BlankAttack_Unused::
    ; Unused empty Command name
    db "       "

Battle_TonyCreature_NewGameStruct::
    ; The default values that should be inserted into xCreature_00_Hero
    ; upon New Game
    ; todo - change these to pointers
    db CreatureID_Tony      ; ID
    db $0C                  ; Type
    db 1                    ; Level
    dw_BigEndian 0          ; Experience
    dw_BigEndian 100        ; CurEnergy
    dw_BigEndian 100        ; MaxEnergy
    db 50                   ; Strength
    db 50                   ; Skill
    db 50                   ; Speed
    db 25                   ; Defence
    db 25                   ; Resist
    db 01                   ; Luck
    db $00                  ; EnergyUp
    db $00                  ; ElementResist
    db $00                  ; ElementWeak
    db $FF                  ; StatusImmune
    db $00                  ; StatusActive
    db $00                  ; StatusPerm
    db $00                  ; AI
    dw $5EBE    ; TODO change Ability0 - Summon
    dw $5EFE    ; addresses   Ability1 - Spell
    dw $5EDE                ; Ability2 - Item
    dw $5EEE                ; Ability3 - Run
    db $FF                  ; AbilityUnlock0
    IF FIX_BUGS == 0
    .End
    ENDC
    ; These 6 bytes are not copied (BUG)
    db $FF                  ; AbilityUnlock1
    db $FF                  ; AbilityUnlock2
    db $FF                  ; AbilityUnlock3
    db $00                  ; Relic0
    db $00                  ; Relic1
    db $42                  ; Other - TODO what does this value mean
    IF FIX_BUGS == 1
    .End
    ENDC