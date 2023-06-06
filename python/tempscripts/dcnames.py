import replace_rom_text
from utils import *

replace_rom_text.reset_files()

replacetext = ""

with open("../MN.gbc","rb") as f:
    with open("python/out/temp.txt","w") as g:
        f.seek(bank_address_to_pos(6,0x5A9C))
        for i in range(-1,0x6D,1):
            start = f.tell()
            name = data_to_string(f.read(0xA))
            stripname = name[8:-1].rstrip().replace(" ","_")
            end = f.tell()
            
            temp = "CreatureID_" + stripname
            g.write(temp + " "*(36-len(temp)) +"EQU $"+write_i_to_byte(i)+"\n")
            replacetext += name + "\n"
            


    
replace_rom_text.replace_rom_text(0x06,0x5A9C,0x5A9C+0x0A+0x6D*0x0A,"DreamCreatureNameTable::",replacetext)