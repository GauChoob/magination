import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as u
import io 


rom = u.Rom()
for i in range(0x4000,0x405C,2):
    print(u.AsmWords(rom.getRawSection(u.BankAddress(0x05,i),2),2))