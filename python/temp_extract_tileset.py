import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as u
import io 

rom = u.Rom("python/projutils/data/mn.gbc")
pal = color.data_to_array([0xE0,0x03,0x00,0x00,0x5F,0x4F,0x7F,0x03])
tileset.data_to_png("python/out/ascii2.png",rom.getRawSection(u.BankAddress(0x06,0x5000),0x00B0),0x10,pal)
