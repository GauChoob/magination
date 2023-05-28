import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as utils
import io 

rom = utils.Rom("projutils/data/kq.gbc")
pal = color.png_to_array("projutils/data/Icon.pal.png")

for i in range(0,40):
    tileset.data_to_png("out/{:03}.png".format(i),rom.getRawSection(utils.BankAddress(8,0x4000+0x190*i),0x190),5*8,palette=pal)