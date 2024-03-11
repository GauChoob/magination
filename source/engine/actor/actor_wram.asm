
    ;ds $C132 - @
wActorList_FreeCursor::
    ; Points to the stack cursor of wActorList_FreeStack
    ds 2
    ;ds $C134 - @
wActorList_FreeStack::
    ; The free stack contains $10 entries pointing to the $10 slots in wActorList_Table
    ; The stack is initialized by pushing all $10 slots since they are all available
    ; Whenever a new Actor is created, the next entry is popped and that slot is used to create the Actor
    ; We keep track of the next available entry using wActorList_FreeCursor
    ; When we delete an Actor, instead of shuffling the entire wActorList_Table, we simply
    ;   get rid of the specific slot and push the now free slot onto the wActorList_FreeStack
    ds 2*ActorList_SIZE
    ;ds $C154 - @
    .End:
wActorList_Table::
    ; Objects to run
    ; The WRAM address of an entry from Actor00_Table is placed here
    ds 2*ActorList_SIZE
    .End

    ;ds $C174 - @
wActorSave_SavedActorPointer::
    ; Contains a reference to the location of the Actor_Struct that was saved in wActor_Save
    ds 2
    ;ds $C176 - @
wActorSave_Unused::
    ; This was originally used in an older iteration of saving and restoring an actor, but
    ; it only saved the Actor's State and the Actor's two scripts. This was deprecated in favour
    ; of saving everything using wActor_Save instead
    ds 16
    ;ds $C186 - @
wActor_HeroNewState::
    ; Stores the address of the new State for wActor_Hero
    ds 2
    ;ds $C188 - @
wActorSave_Flags::
    ; Used to determine whether wActor_Save already contains saved data or not
    DEF ActorSave_Flag_EMPTY EQU $00 ; No saved actor - able to save
    DEF ActorSave_Flag_FULL EQU $01 ; Actor has been saved
    DEF ActorSave_Flag_REQUEST_SAVE EQU $02 ; Unused and unimplemented, but theoretically this flag is intended to request to save the current actor
    DEF ActorSave_Flag_REQUEST_RESTORE EQU $03 ; Set to request to request saved data to current actor
    ds 1

    ;ds $C189 - @
wActor_RAM::
wActor_Hero::
    ; Actor representing Tony in-game
    Actor_Struct
    ;ds $C1A4 - @
wActor_Save::
    ; Temporary actor slot to store an entire Actor_Struct and then restore it
    Actor_Struct
    ;ds $C1BF - @
wActor_00::
    Actor_Struct
    ;ds $C1DA - @
wActor_01::
    Actor_Struct
    ;ds $C1F5 - @
wActor_02::
    Actor_Struct
    ;ds $C210 - @
wActor_03::
    Actor_Struct
    ;ds $C22B - @
wActor_04::
    Actor_Struct
    ;ds $C246 - @
wActor_05::
    Actor_Struct
    ;ds $C261 - @
wActor_06::
    Actor_Struct
    ;ds $C27C - @
wActor_07::
    Actor_Struct
    ;ds $C297 - @
wActor_08::
    Actor_Struct
    ;ds $C2B2 - @
wActor_09::
    Actor_Struct
    ;ds $C2CD - @
wActor_Cursor::
    ; Cursor used in menu selection
    ; Hard-coded in 2 functions
    ; TODO - what should we do with this var name? Should we just DEF the cursor instead of renaming the original name?
    Actor_Struct
    ;ds $C2E8 - @
wActor_0B::
    Actor_Struct
    ;ds $C303 - @
wActor_0C::
    Actor_Struct
    ;ds $C31E - @
wActor_0D::
    Actor_Struct
    ;ds $C339 - @
wActor_0E::
    Actor_Struct
    ;ds $C354 - @
wActor_0F::
    Actor_Struct
    ;ds $C36F - @
wActor_10::
    Actor_Struct
    ;ds $C38A - @
wActor_11::
    Actor_Struct
    ;ds $C3A5 - @
wActor_12::
    Actor_Struct
    ;ds $C3C0 - @
wActor_13::
    Actor_Struct
    ;ds $C3DB - @
wActor_14::
    Actor_Struct
    ;ds $C3F6 - @
wActor_15::
    Actor_Struct
    ;ds $C411 - @
wActor_16::
    Actor_Struct
    ;ds $C42C - @
wActor_17::
    Actor_Struct
    ;ds $C447 - @
wActor_18::
    Actor_Struct
    ;ds $C462 - @
wActor_19::
    Actor_Struct
    ;ds $C47D - @
wActor_1A::
    Actor_Struct
    ;ds $C498 - @
wActor_1B::
    Actor_Struct
    ;ds $C4B3 - @
wActor_1C::
    Actor_Struct
    ;ds $C4CE - @
wActor_1D::
    Actor_Struct
    ;ds $C4E9 - @
wActor_1E::
    Actor_Struct
    ;ds $C504 - @
wActor_1F::
    Actor_Struct
    ;ds $C51F - @
wActor_20::
    Actor_Struct
    ;ds $C53A - @
wActor_21::
    Actor_Struct
    ;ds $C555 - @
wActor_22::
    Actor_Struct
    ;ds $C570 - @
wActor_23::
    Actor_Struct
    ;ds $C58B - @
wActor_24::
    Actor_Struct
    ;ds $C5A6 - @
wActor_25::
    Actor_Struct
    ;ds $C5C1 - @
wActor_26::
    Actor_Struct
    ;ds $C5DC - @
wActor_27::
    Actor_Struct
    ;ds $C5F7 - @
wActor_28::
    Actor_Struct
    ;ds $C612 - @
wActor_29::
    Actor_Struct
    ;ds $C62D - @
wActor_2A::
    Actor_Struct
    ;ds $C648 - @
wActor_2B::
    Actor_Struct
    ;ds $C663 - @
wActor_2C::
    Actor_Struct
    ;ds $C67E - @
wActor_2D::
    Actor_Struct
    ;ds $C699 - @
wActor_2E::
    Actor_Struct
    ;ds $C6B4 - @
wActor_2F::
    Actor_Struct
    
    ;ds $C6CF - @
wActor_RAM_END::