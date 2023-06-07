
    ; $4000
; Let's generate the tilemap and attrmap for the 8 cards
DEF card = 0
REPT 8
TILEATTR_CARDSCENE_CARD{u:card}::
    ; TILEATTR_CARDSCENE_CARD0, TILEATTR_CARDSCENE_CARD1, TILEATTR_CARDSCENE_CARD2, TILEATTR_CARDSCENE_CARD3, TILEATTR_CARDSCENE_CARD4, TILEATTR_CARDSCENE_CARD5, TILEATTR_CARDSCENE_CARD6, TILEATTR_CARDSCENE_CARD7, TILEATTR_CARDSCENE_CARD8
    
    ; The card tilemap is 4*5 sequential tiles in crementing order, starting from the base tileid CARDSCENE_TILEID_CARDX
    DEF tileid = CARDSCENE_TILEID_CARD{u:card}
    REPT 4*5
        db tileid
        DEF tileid = tileid + 1
    ENDR

    ; ATTRMAP
    IF card < 4
        ; The attrmap is all $00 for the enemy's cards
        DEF attribute = $00
    ELSE
        ; The attrmap is all $08 for the hero's cards (VBK = 1)
        DEF attribute = $08
    ENDC
    ds 4*5, attribute

    DEF card = card + 1
ENDR