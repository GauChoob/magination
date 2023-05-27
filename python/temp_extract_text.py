import os
import projutils.encoding as encoding
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as utils
import io 

rom = utils.Rom("python/projutils/data/mn.gbc")

print(rom.getString(utils.BankAddress(0x06,0x52C0),0x70))