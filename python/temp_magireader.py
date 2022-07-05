import projutils.magireader as magireader
import projutils.utils as utils

BankAddress = utils.BankAddress

# magireader.interpret(BankAddress(0x2A, 0x4000),BankAddress(0x2A, 0x73E7))
magireader.interpret(BankAddress(0x2A, 0x6CB5), BankAddress(0x2A, 0x73E7))
# Skip 0x73E7 (ghost byte 0x73)
# GHOST
# interpret(BankAddress(0x2A,0x73E8),BankAddress(0x2A,0x7404))
#
# interpret(BankAddress(0x2A,0x4000),BankAddress(0x2A,0x73E7))
magireader.buildHotspots()
magireader.buildTriggers()
