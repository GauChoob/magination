import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as u
import io 

pal = color.png_to_array("projutils/data/Icon.pal.png")
rom = u.Rom("projutils/data/mn.gbc")

tileset.data_to_png("out/ascii.png",rom.getRawSection(u.BankAddress(0x06,0x4000),0x1000),128, palette=pal)
