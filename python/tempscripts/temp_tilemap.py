import replace_rom_text
from utils import *
import extract_image
import colorize

replace_rom_text.reset_files([6])

with open("../MN.gbc","rb") as f:
    fr = f.read()


palette = colorize.paletteToPNGpalette("python/Reference.png")


names = ["GlyphCoreStone5"]
bank = 6
start = 0x6F92
delta = 20

for i in range(1):
    
    LABEL = "tmStartMenu{}::".format(names[i])
    INCBIN = '    INCBIN "gfx/startmenu/'+names[i]+'.tilemap"'
    
    
    address = start+i*delta
    startpos = bank_address_to_pos(bank,address)
    
    with open("python/out/{}.tilemap".format(names[i]),"wb") as f:
        f.write(fr[startpos:startpos+delta])

    replace_rom_text.replace_rom_text(bank,address,address+delta,LABEL,INCBIN)



