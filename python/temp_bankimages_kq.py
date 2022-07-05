import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as u
import io 

rom = u.Rom("projutils/data/kq.gbc")
for i in range(0,0x40):
    tileset.data_to_png("out/bank_{:03X}_4000.png".format(i),rom.getRawSection(0x4000*i,0x4000),128)