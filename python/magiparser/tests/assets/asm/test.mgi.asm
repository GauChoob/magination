

    Switch                                                  ; $4247
        eOr                                                 ; $4248
            eAdd                                            ; $4249
                eAdd                                        ; $424A
                    eChar 1                                 ; $424B
                    eChar 2                                 ; $424D
                eChar 3                                     ; $424F
            eAdd                                            ; $4251
                eNot                                        ; $4252
                    eAdd                                    ; $4253
                        eChar 1                             ; $4254
                        eChar 3                             ; $4256
                eBank 3                                     ; $4258
                    eAdd                                    ; $425A
                        eWord 1                             ; $425B
                        eWord 2                             ; $425E
        Case $0000, .End                                    ; $4261
        Case $0000, .End                                    ; $4266
    EndSwitch                                               ; $426B

.End: