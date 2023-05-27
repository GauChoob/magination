import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as utils
import io 


rom = utils.Rom()
for i in range(0x25):
    adr1 = rom.getWord(utils.BankAddress(0x07,0x6916+0x13*i+0))
    adr2 = rom.getWord(utils.BankAddress(0x07,0x6916+0x13*i+2))
    adr3 = rom.getWord(utils.BankAddress(0x07,0x6916+0x13*i+4))
    name = rom.getString(utils.BankAddress(0x07,0x6916+0x13*i+6),0x0D)
    print("    Relic_Struct RelicCmd_{:02X}, RelicCmd_{:02X}, RelicCmd_{:02X}, \"{}\"".format(adr1,adr2,adr3,name))