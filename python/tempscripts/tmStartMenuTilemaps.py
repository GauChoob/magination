import replace_rom_text
from utils import *

replace_rom_text.reset_files()

names = ["Main","Clear","Unknown1","Spell","Items","Tony_","Relic","Rings","Ability","Glyph","Initialization","Header_essence_List"]

lookuptabletxt = ""

with open("../../MN.gbc","rb") as f:
    f.seek(bank_address_to_pos(6,0x51C1))
    i = 0
    for _ in range(0x51C1,0x51C1+12*2,2):
        address = get_word(f)
        size = 0xC8
        
        print(str(i)+write_i_to_address(address))
        
        if(address == 0):
            lookuptabletxt += dw + "$0000\n"
        else:
            lookuptabletxt += dw + "tmStartMenu"+names[i] + "\n"
            
            curpos = f.tell()
            f.seek(bank_address_to_pos(6,address))
            with open("python/out/StartMenuTop"+names[i]+".tilemap","wb") as g:
                g.write(f.read(0xC8))
            replace_rom_text.replace_rom_text(0x06,pos_to_address(address),pos_to_address(address+size),"tmStartMenuTop"+names[i]+"::",'    INCBIN "gfx/startmenu/StartMenuTop'+names[i]+'.tilemap"')
            f.seek(curpos)

        i += 1

    
replace_rom_text.replace_rom_text(0x06,0x51C1,0x51C1+12*2,"StartMenuTopTilemapLookupTable::",lookuptabletxt)