
; TODO Insert Main battleAI table here

BattleAI_Target_Table::
    ; Table of functions to help determine targets for battle script commands
    .BattleAI_Target_EnemyWeakPercent:
        dw BattleAI_Target_EnemyWeakPercent
    .BattleAI_Target_EnemyStrongPercent:
        dw BattleAI_Target_EnemyStrongPercent
    .BattleAI_Target_EnemyWeakAbs:
        dw BattleAI_Target_EnemyWeakAbs
    .BattleAI_Target_EnemyStrongAbs:
        dw BattleAI_Target_EnemyStrongAbs
    .BattleAI_Target_EnemyRand:
        dw BattleAI_Target_EnemyRand
    .BattleAI_Target_Me:
        dw BattleAI_Target_Me
    .BattleAI_Target_AllyWeakPercent:
        dw BattleAI_Target_AllyWeakPercent
    .BattleAI_Target_AllyStrongPercent:
        dw BattleAI_Target_AllyStrongPercent
    .BattleAI_Target_AllyWeakAbs:
        dw BattleAI_Target_AllyWeakAbs
    .BattleAI_Target_AllyStrongAbs:
        dw BattleAI_Target_AllyStrongAbs
    .BattleAI_Target_AllyRand:
        dw BattleAI_Target_AllyRand
    .BattleAI_Target_TonyAlways:
        dw BattleAI_Target_TonyAlways
    .BattleAI_Target_TonyIfUnblocked:
        dw BattleAI_Target_TonyIfUnblocked