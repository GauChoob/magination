import os
import projutils.encoding as encoding
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as u
import io 

rom = u.Rom("python/projutils/data/mn.gbc")

print(rom.getString(u.BankAddress(0x06,0x52C0),0x70))