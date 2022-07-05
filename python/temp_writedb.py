import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as u
import io 


rom = u.Rom()
for i in range(0x40DC,0x4140,1):
    a = rom.getByte(u.BankAddress(0x02,i))
    print("    db {}".format(a))