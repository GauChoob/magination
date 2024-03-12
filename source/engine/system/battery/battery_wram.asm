wBattery_ActiveSavefileBaseBank::
    ; There are 4 banks of XRAM, representing 2 savefile (saved game and current game)
    ; Each savefile takes 2 banks of XRAM
    ; This function denotes the player's savefile by specifying the base bank ($00 or $02)
    ; i.e. this is the savefile that will update as you play the game
    ds 1