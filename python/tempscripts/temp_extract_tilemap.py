from utils import *
import replace_rom_text

bank = 0x06
address = 0x700c
size = 20
name = "GlyphCoreStone5.attrmap"
LABEL = "amStartMenuGlyphCoreStone5::"
INCBIN = '    INCBIN "gfx/startmenu/GlyphCoreStone5.attrmap"'
    
print("{:04X}:{:04X}".format(address,address+size))
pos = bank_address_to_pos(bank,address)

with open("../MN.gbc","rb") as f:
    fr = f.read()
    
with open("python/out/"+name,"wb") as f:
    f.write(fr[pos:pos+size])

replace_rom_text.reset_files([bank])
replace_rom_text.replace_rom_text(bank,address,address+size,LABEL,INCBIN)