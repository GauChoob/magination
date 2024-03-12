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
DEF ItemCmd1_64B5 EQU $64B5
DEF ItemCmd1_650F EQU $650F
DEF ItemCmd1_6551 EQU $6551
DEF ItemCmd1_65AF EQU $65AF
DEF ItemCmd1_66D2 EQU $66D2
DEF ItemCmd1_6701 EQU $6701
DEF ItemCmd1_6739 EQU $6739
DEF ItemCmd1_6791 EQU $6791
DEF ItemCmd1_67E3 EQU $67E3
DEF ItemCmd1_6824 EQU $6824
DEF ItemCmd1_729D EQU $729D
DEF ItemCmd1_72B1 EQU $72B1
DEF ItemCmd1_72F0 EQU $72F0
DEF ItemCombat_4C_42E6 EQU $42E6
DEF ItemCombat_4C_4333 EQU $4333
DEF ItemCombat_4C_43B0 EQU $43B0
DEF ItemCombat_4C_4406 EQU $4406
DEF ItemCombat_4C_447A EQU $447A
DEF ItemCombat_4C_4491 EQU $4491
DEF ItemCombat_4C_44A6 EQU $44A6
DEF ItemCombat_4C_44D9 EQU $44D9
DEF ItemCombat_4C_450E EQU $450E
DEF ItemCombat_4C_4542 EQU $4542
DEF ItemCombat_4C_4575 EQU $4575
DEF ItemCombat_4C_45C2 EQU $45C2
DEF ItemCombat_4C_460D EQU $460D
DEF ItemCombat_4C_4640 EQU $4640
DEF ItemCombat_4C_4663 EQU $4663
DEF ItemCombat_4C_48B1 EQU $48B1
DEF ItemCombat_4C_48DE EQU $48DE
DEF ItemCombat_4C_48F5 EQU $48F5
DEF ItemCombat_4C_490B EQU $490B
DEF ItemCombat_4C_4921 EQU $4921
DEF ItemCombat_4C_493A EQU $493A
DEF ItemCombat_4C_4967 EQU $4967
DEF ItemCombat_4C_4989 EQU $4989
DEF ItemCombat_4C_49AD EQU $49AD
DEF ItemCombat_4C_49D0 EQU $49D0
DEF ItemCombat_4C_49F2 EQU $49F2
DEF ItemCombat_4C_4A4E EQU $4A4E
DEF ItemCombat_4C_4A94 EQU $4A94
DEF ItemMap_12_792E EQU $792E
DEF ItemMap_12_7954 EQU $7954
DEF ItemMap_12_797A EQU $797A
DEF ItemMap_12_79A0 EQU $79A0
DEF ItemMap_12_79D3 EQU $79D3
DEF SpellCom_4C_4C7E EQU $4C7E
DEF SpellCom_4C_4CB8 EQU $4CB8
DEF SpellCom_4C_4D35 EQU $4D35
DEF SpellCom_4C_4D5C EQU $4D5C
DEF SpellCom_4C_4F18 EQU $4F18
DEF SpellCom_4C_505A EQU $505A
DEF SpellCom_4C_5109 EQU $5109
DEF SpellCom_4C_5225 EQU $5225
DEF SpellCom_4C_5245 EQU $5245
DEF SpellCom_4C_5698 EQU $5698
DEF SpellCom_4C_56D6 EQU $56D6
DEF SpellCom_4C_5805 EQU $5805
DEF SpellCom_4C_5854 EQU $5854
DEF SpellCom_4C_596F EQU $596F
DEF SpellCom_4C_5A7D EQU $5A7D
DEF SpellCom_4C_5ABF EQU $5ABF
DEF SpellCom_4C_5B01 EQU $5B01
DEF SpellCom_4C_5B38 EQU $5B38



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