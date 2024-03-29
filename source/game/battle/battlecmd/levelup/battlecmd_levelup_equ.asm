

; Previously, stat gains were decreased as of this level, but
; this part of the code is deprecated and no longer functional
DEF BattleCmd_LevelUp_PENALTYLEVEL_UNUSED EQU 62

; Energy gain for Tony based on his level
DEF BattleCmd_LevelUp_MagiEnergyLow EQU 10 ; 0-31
DEF BattleCmd_LevelUp_MagiCutoff1 EQU 32
DEF BattleCmd_LevelUp_MagiEnergyMed EQU 16 ; 32-59
DEF BattleCmd_LevelUp_MagiCutoff2 EQU 60
DEF BattleCmd_LevelUp_MagiEnergyHigh EQU 1 ; 60+

; Base XP gain based on the difference in level between the Creature and the Battle level
;                                    DeltaLevel
;                                             XPGain
DEF BattleCmd_LevelUp_ExpEnemyStrong4       EQU 1
DEF BattleCmd_LevelUp_LevEnemyStrong4 EQU 24;-2
DEF BattleCmd_LevelUp_ExpEnemyStrong3       EQU 2
DEF BattleCmd_LevelUp_LevEnemyStrong3 EQU 18;-2
DEF BattleCmd_LevelUp_ExpEnemyStrong2       EQU 5
DEF BattleCmd_LevelUp_LevEnemyStrong2 EQU 12;-2
DEF BattleCmd_LevelUp_ExpEnemyStrong1       EQU 10
DEF BattleCmd_LevelUp_LevEnemyStrong1 EQU 8;-2
DEF BattleCmd_LevelUp_ExpEnemyStrong0       EQU 20
; 0
DEF BattleCmd_LevelUp_ExpAllyStrong0        EQU 20
DEF BattleCmd_LevelUp_LevAllyStrong1  EQU 3
DEF BattleCmd_LevelUp_ExpAllyStrong1        EQU 10
DEF BattleCmd_LevelUp_LevAllyStrong2  EQU 5
DEF BattleCmd_LevelUp_ExpAllyStrong2        EQU 5
DEF BattleCmd_LevelUp_LevAllyStrong3  EQU 7
DEF BattleCmd_LevelUp_ExpAllyStrong3        EQU 2
DEF BattleCmd_LevelUp_LevAllyStrong4  EQU 12
DEF BattleCmd_LevelUp_ExpAllyStrong4        EQU 1

; Offsets to wText_StringBuffer to display level up text
RSRESET
DEF BattleCmd_LevelUp_TextBufferOffset_Name RB 10
DEF BattleCmd_LevelUp_TextBufferOffset_Name_End RB 1
DEF BattleCmd_LevelUp_TextBufferOffset_Level RB 2
DEF BattleCmd_LevelUp_TextBufferOffset_Level_End RB 1
DEF BattleCmd_LevelUp_TextBufferOffset_Energy RB 3
DEF BattleCmd_LevelUp_TextBufferOffset_Energy_End RB 1
DEF BattleCmd_LevelUp_TextBufferOffset_Strength RB 2
DEF BattleCmd_LevelUp_TextBufferOffset_Strength_End RB 1
DEF BattleCmd_LevelUp_TextBufferOffset_Skill RB 2
DEF BattleCmd_LevelUp_TextBufferOffset_Skill_End RB 1
DEF BattleCmd_LevelUp_TextBufferOffset_Speed RB 2
DEF BattleCmd_LevelUp_TextBufferOffset_Speed_End RB 1
DEF BattleCmd_LevelUp_TextBufferOffset_Defence RB 2
DEF BattleCmd_LevelUp_TextBufferOffset_Defence_End RB 1
DEF BattleCmd_LevelUp_TextBufferOffset_Resist RB 2
DEF BattleCmd_LevelUp_TextBufferOffset_Resist_End RB 1
DEF BattleCmd_LevelUp_TextBufferOffset_BattleCmd RB 7
DEF BattleCmd_LevelUp_TextBufferOffset_BattleCmd_End RB 1