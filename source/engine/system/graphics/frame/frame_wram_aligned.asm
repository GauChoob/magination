ALIGN 8,0 ;wFrame_OAM needs to be aligned to be copied into OAM
wFrame_OAM::
    ; Copied over directly into the OAM
    ds 40 * $4
    .End:
    ASSERT HIGH(wFrame_OAM) == HIGH(wFrame_OAM.End) ; Var has to be aligned so that the upper byte doesn't change