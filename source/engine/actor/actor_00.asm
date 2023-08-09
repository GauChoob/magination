
Actor00_Table::
    ; All these are spaced apart in order by Actor_SIZE
    ; So technically we could just calculate wActor_Hero + Actor_SIZE*ID instead of using a lookup table
    ; This table is only used in the function Actor_GetThatActor
    ; 50 entries total
    dw wActor_Hero
    dw wActor_Save ; Temporary slot used to store/restore an actor
    dw wActor_00
    dw wActor_01
    dw wActor_02
    dw wActor_03
    dw wActor_04
    dw wActor_05
    dw wActor_06
    dw wActor_07
    dw wActor_08
    dw wActor_09
    dw wActor_Cursor
    dw wActor_0B
    dw wActor_0C
    dw wActor_0D
    dw wActor_0E
    dw wActor_0F
    dw wActor_10
    dw wActor_11
    dw wActor_12
    dw wActor_13
    dw wActor_14
    dw wActor_15
    dw wActor_16
    dw wActor_17
    dw wActor_18
    dw wActor_19
    dw wActor_1A
    dw wActor_1B
    dw wActor_1C
    dw wActor_1D
    dw wActor_1E
    dw wActor_1F
    dw wActor_20
    dw wActor_21
    dw wActor_22
    dw wActor_23
    dw wActor_24
    dw wActor_25
    dw wActor_26
    dw wActor_27
    dw wActor_28
    dw wActor_29
    dw wActor_2A
    dw wActor_2B
    dw wActor_2C
    dw wActor_2D
    dw wActor_2E
    dw wActor_2F