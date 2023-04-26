import projutils.magireader as magireader
import projutils.utils as utils

BankAddress = utils.BankAddress

# magireader.interpret(BankAddress(0x2A, 0x4000),BankAddress(0x2A, 0x73E7))
# magireader.interpret(BankAddress(0x2A, 0x6CB5), BankAddress(0x2A, 0x73E7)) # Game start
# magireader.interpret(BankAddress(0x9632E), BankAddress(0x25, 0x638C))  # Ringsmith Core
# magireader.interpret(BankAddress(0x25, 0x638C+7), BankAddress(0x9632E+0x4000))  # Ringsmith Core
# magireader.interpret(BankAddress(0x20, 0x6A49), BankAddress(0x20, 0x8000))  # Ringsmith Core actor facing
magireader.interpret(BankAddress(0x20, 0x66C9), BankAddress(0x20, 0x8000))  # Ringsmith Core actor init?

# Skip 0x73E7 (ghost byte 0x73)
# GHOST
# interpret(BankAddress(0x2A,0x73E8),BankAddress(0x2A,0x7404))
#
# interpret(BankAddress(0x2A,0x4000),BankAddress(0x2A,0x73E7))
magireader.buildHotspots()
magireader.buildTriggers()
