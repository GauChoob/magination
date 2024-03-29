MACRO AI_UpdateController
    ; Will copy the joypad buttons presses from wCnt1 to wAI_Cnt1 etc
    ; Only if the Textbox is closed
    ld a, [wTextbox_Position]
    and a ; Textbox_CLOSED = 0
    jr z, .TextboxClosed\@
    .TextboxOpen\@:
        ; Copy empty button presses to the AI
        xor a
        ld hl, wAI_Cnt1
        ld [hl+], a
        ld [hl+], a
        ld [hl+], a
        jr .End\@
    .TextboxClosed\@:
        ; Copy the real button presses to the AI
        ld hl, wAI_Cnt1
        ld a, [wCnt1]
        ld [hl+], a
        ld a, [wCntDown]
        ld [hl+], a
        ld a, [wCntUp]
        ld [hl+], a
    .End\@:
ENDM

MACRO AI_UpdateHeroFlags
    ; TODO significance?
    ld hl, hAI_HeroFlags_Next
    ld a, [hl+]
    ld [hl-], a ; hAI_HeroFlags_Current
    xor a
    ld [hl], a
ENDM