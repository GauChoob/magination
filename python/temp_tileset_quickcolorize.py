import os
import projutils.colorize as colorize
import projutils.tileset as tileset
import projutils.color as color
import projutils.utils as utils
import io 

filen = "python/out/tmp.png"

#pal = palette.png_to_array("projutils/data/Icon.pal.png")
pal = color.data_to_array(b"\xE0\x03\x00\x00")
pal.extend([(0x7F,0x7F,0x7F),(0x3F,0x3F,0x3F)])

pallist = [0]*0x30

rom = utils.Rom()

tileset.data_to_png(filen, rom.getRawSection(utils.BankAddress(0x43,0x619D),0x300), 0x80, palette = 0b11100100)

colorize.quickColorTileset(filen,pallist,pal)
