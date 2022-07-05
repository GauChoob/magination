import replace_rom_text
from utils import *
import extract_image
import colorize

replace_rom_text.reset_files()

with open("../MN.gbc","rb") as f:
    fr = f.read()


palette = colorize.paletteToPNGpalette("python/Reference.png")


names = ["Glyph"]
bank = 6
start = 0x79A6
delta = 0x10*0x46

for i in range(1):
    LABEL = "tsStartMenu{}::".format(names[i])
    INCBIN = '    INCBIN "gfx/startmenu/'+names[i]+'.tileset"'
    
    
    address = start+i*delta
    startpos = bank_address_to_pos(bank,address)
    
    extract_image.write_image("python/out/{}.tileset".format(names[i]),"w40",fr[startpos:startpos+delta],palette)
    replace_rom_text.replace_rom_text(bank,address,address+delta,LABEL,INCBIN)



