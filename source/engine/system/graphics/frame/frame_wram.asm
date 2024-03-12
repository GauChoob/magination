
    ;ds $C728 - @
wFrame_OAMCursor::
    ; LOW() of the first free address in wFrame_OAM (OAM buffer)
    ds 1
    ;ds $C729 - @
wFrame_OAMTop::
    ; LOW() of the first free address in OAM, for the previous frame
    ; wOAMCursor is copied into wOAMTop every frame
    ; By knowing where the top of the OAM data is, we can erase just the part of the OAM
    ;   that we actually used, saving time
    ds 1
    ;ds $C72A - @
wFrame_Unused::
    ; Unused var. Originally FRAME_CULL_FLAG
    ds 1