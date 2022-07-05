import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as u
import projutils.battle_targets as targets
import projutils.elemental as elem
import io 


TABLEBASE = [(0x5DFF,47),(0x6FF5,20)]

skills = [
    "Energy",
    "Strength",
    "Skill",
    "Speed",
    "Defence",
    "Resist",
    "Luck",
]

usetype = [
    "NONE",
    "BATTLE",
    "MAP",
    "BOTH",
]

addresses = set()
setnames = ["ItemCombat_","ItemMap_","SpellCom_"]

rom = u.Rom()
for data in TABLEBASE:
    for i in range(data[1]):
        table = data[0]
        args = [
            rom.getWord(u.BankAddress(0x07,table+0x22*i+0)),
            rom.getByte(u.BankAddress(0x07,table+0x22*i+2)),
            rom.getByte(u.BankAddress(0x07,table+0x22*i+3)),
            rom.getByte(u.BankAddress(0x07,table+0x22*i+4)),
            rom.getByte(u.BankAddress(0x07,table+0x22*i+5)),
            rom.getByte(u.BankAddress(0x07,table+0x22*i+6)),
            rom.getByte(u.BankAddress(0x07,table+0x22*i+7)),
            rom.getByte(u.BankAddress(0x07,table+0x22*i+8)),
            rom.getByte(u.BankAddress(0x07,table+0x22*i+9)),
            rom.getWord(u.BankAddress(0x07,table+0x22*i+0x0A)),
            rom.getString(u.BankAddress(0x07,table+0x22*i+0x0C),0x0D),
            rom.getBankAddress(u.BankAddress(0x07,table+0x22*i+0x19)),
            rom.getBankAddress(u.BankAddress(0x07,table+0x22*i+0x1C)),
            rom.getBankAddress(u.BankAddress(0x07,table+0x22*i+0x1F)),
        ]
        args[0] = "ItemCmd1_{:04X}".format(args[0])
        addresses.add(args[0])
        args[2] = skills[args[2]] if (args[2] != 0 and args[2] < 100) else args[2]
        
        args[4] = targets.BattleTargetName(args[4]) if args[4] < 21 else args[4]
        args[7] = elem.GetElements(args[7])
        args[8] = usetype[args[8]]
        for j in range(11,14):
            args[j] = "{}{:02X}_{:04X}".format(setnames[j-11],args[j].getBank(),args[j].getAddress())
            addresses.add(args[j])
        #                                        Ad1 Magn Skl Eng TargQty Rat El Use Sell Name   Btl  Map Anim
        print("    ItemSpell_Struct ItemSpell_{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \"{}\", {}, {}, {}".format(args[10].strip().upper(),*args))

print("\n\n")
addresses2 = list(addresses)
addresses2.sort()
print("::\n".join(addresses2))