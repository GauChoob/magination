DEF ItemSpell_ROWSIZE EQU $22
DEF ItemSpell_NAMESIZE EQU $0D

DEF ItemSpell_Struct_USE_0 EQU 0
DEF ItemSpell_Struct_USE_BATTLE EQU %00000001
DEF ItemSpell_Struct_USE_MAP EQU %00000010
DEF ItemSpell_Struct_USE_BOTH EQU %00000011

DEF ItemSpell_Struct_SKILL_0 EQU 0
DEF ItemSpell_Struct_SKILL_Energy EQU 0
DEF ItemSpell_Struct_SKILL_Strength EQU 1
DEF ItemSpell_Struct_SKILL_Skill EQU 2
DEF ItemSpell_Struct_SKILL_Speed EQU 3
DEF ItemSpell_Struct_SKILL_Defence EQU 4
DEF ItemSpell_Struct_SKILL_Resist EQU 5
DEF ItemSpell_Struct_SKILL_Luck EQU 6

; todo:
ItemCmd1_64B5 EQU $64B5
ItemCmd1_650F EQU $650F
ItemCmd1_6551 EQU $6551
ItemCmd1_65AF EQU $65AF
ItemCmd1_66D2 EQU $66D2
ItemCmd1_6701 EQU $6701
ItemCmd1_6739 EQU $6739
ItemCmd1_6791 EQU $6791
ItemCmd1_67E3 EQU $67E3
ItemCmd1_6824 EQU $6824
ItemCmd1_729D EQU $729D
ItemCmd1_72B1 EQU $72B1
ItemCmd1_72F0 EQU $72F0
ItemCombat_4C_42E6 EQU $42E6
ItemCombat_4C_4333 EQU $4333
ItemCombat_4C_43B0 EQU $43B0
ItemCombat_4C_4406 EQU $4406
ItemCombat_4C_447A EQU $447A
ItemCombat_4C_4491 EQU $4491
ItemCombat_4C_44A6 EQU $44A6
ItemCombat_4C_44D9 EQU $44D9
ItemCombat_4C_450E EQU $450E
ItemCombat_4C_4542 EQU $4542
ItemCombat_4C_4575 EQU $4575
ItemCombat_4C_45C2 EQU $45C2
ItemCombat_4C_460D EQU $460D
ItemCombat_4C_4640 EQU $4640
ItemCombat_4C_4663 EQU $4663
ItemCombat_4C_48B1 EQU $48B1
ItemCombat_4C_48DE EQU $48DE
ItemCombat_4C_48F5 EQU $48F5
ItemCombat_4C_490B EQU $490B
ItemCombat_4C_4921 EQU $4921
ItemCombat_4C_493A EQU $493A
ItemCombat_4C_4967 EQU $4967
ItemCombat_4C_4989 EQU $4989
ItemCombat_4C_49AD EQU $49AD
ItemCombat_4C_49D0 EQU $49D0
ItemCombat_4C_49F2 EQU $49F2
ItemCombat_4C_4A4E EQU $4A4E
ItemCombat_4C_4A94 EQU $4A94
ItemMap_12_792E EQU $792E
ItemMap_12_7954 EQU $7954
ItemMap_12_797A EQU $797A
ItemMap_12_79A0 EQU $79A0
ItemMap_12_79D3 EQU $79D3
SpellCom_4C_4C7E EQU $4C7E
SpellCom_4C_4CB8 EQU $4CB8
SpellCom_4C_4D35 EQU $4D35
SpellCom_4C_4D5C EQU $4D5C
SpellCom_4C_4F18 EQU $4F18
SpellCom_4C_505A EQU $505A
SpellCom_4C_5109 EQU $5109
SpellCom_4C_5225 EQU $5225
SpellCom_4C_5245 EQU $5245
SpellCom_4C_5698 EQU $5698
SpellCom_4C_56D6 EQU $56D6
SpellCom_4C_5805 EQU $5805
SpellCom_4C_5854 EQU $5854
SpellCom_4C_596F EQU $596F
SpellCom_4C_5A7D EQU $5A7D
SpellCom_4C_5ABF EQU $5ABF
SpellCom_4C_5B01 EQU $5B01
SpellCom_4C_5B38 EQU $5B38



MACRO ItemSpell_Struct

    DEF \1 RB 1
    DEF Label\@ EQUS "\1"

    .{Label\@}:

    .{Label\@}_LocalAddress1:
        dw \2

    IF \3 >= $4000
        ; Pointer!
        .{Label\@}_LocalAddress2:
            dw \3
    ELSE
        ; Two arguments
        .{Label\@}_Magnitude:
            db \3
        SHIFT
        .{Label\@}_Skill:
            db ItemSpell_Struct_SKILL_\3
    ENDC
    
    .{Label\@}_Cost:
        db \4
    .{Label\@}_Target:
        db \5 ; TODO
    .{Label\@}_MaxQuantity:
        db \6
    .{Label\@}_Rating:
        db \7
    .{Label\@}_Element:
        db \8
    .{Label\@}_Use:
        db ItemSpell_Struct_USE_\9
    .{Label\@}_SellPrice:
        dw \<10>
    .{Label\@}_Name:
        db \<11>
        ASSERT STRLEN(\<11>) == ItemSpell_NAMESIZE

    .{Label\@}_BattleBank:
        db $4C ; TODO
    .{Label\@}_BattleAddress:
        dw \<12>

    IF \<13> == 0
        .{Label\@}_MapBank:
            db $00
        .{Label\@}_MapAddress:
            dw $0000
    ELSE
        .{Label\@}_MapBank:
            db $12 ; TODO
        .{Label\@}_MapAddress:
            dw \<13> ; todo
    ENDC

    .{Label\@}_AnimBank:
        db $4C ; TODO
    .{Label\@}_AnimAddress:
        dw \<14> ; todo
ENDM