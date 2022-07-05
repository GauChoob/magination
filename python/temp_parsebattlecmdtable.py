import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as u
import projutils.battle_targets as targets
import projutils.elemental as elem
import io 


TABLEBASE = (0x15EAE,0x67)

skills = [
    "Energy",
    "Strength",
    "Skill",
    "Speed",
    "Defence",
    "Resist",
    "Luck",
]


addresses = set()
setnames = ["ItemCombat_","ItemMap_","SpellCom_"]

rom = u.Rom()
for i in range(TABLEBASE[1]):
    table = TABLEBASE[0]
    args = [
        rom.getWord(u.BankAddress(table+0x10*i+0)), #0 Func
        rom.getByte(u.BankAddress(table+0x10*i+2)), #1 Cost
        rom.getByte(u.BankAddress(table+0x10*i+3)), #2 Target
        rom.getByte(u.BankAddress(table+0x10*i+4)), #3 MenuID
        rom.getByte(u.BankAddress(table+0x10*i+5)), #4 Rating
        rom.getByte(u.BankAddress(table+0x10*i+6)), #5 Elemental
        rom.getByte(u.BankAddress(table+0x10*i+7)), #6 Multiplier
        rom.getByte(u.BankAddress(table+0x10*i+8)), #7 Accuracy
        rom.getString(u.BankAddress(table+0x10*i+9),0x07), #8 Name
    ]
    args[0] = "BattleCmd_{:04X}".format(args[0])
    addresses.add(args[0])
    args[2] = targets.BattleTargetName(args[2])
    args[5] = elem.GetElements(args[5])
    #                                    Nam Func Cst Tar Men Rat El Mult Acc Nam
    print("    BattleCmd_Struct BattleCmd_{}, {}, {}, {}, {}, ${:02X}, {}, {}, {}, \"{}\"".format(args[8].strip().upper(),*args))

print("\n\n")
addresses2 = list(addresses)
addresses2.sort()
print("::\n".join(addresses2))