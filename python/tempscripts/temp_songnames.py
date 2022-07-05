from utils import *
import replace_rom_text

#bank = 0x06
#address = 0x700c
#size = 20
pos = 0xAB03B
n = 37
width = 0xE

with open("../MN.gbc","rb") as f:
    fr = f.read()
    
entries = [""]*100
    
for i in range(n):
    id = fr[pos+i*width]
    name = fr[pos+i*width+1:pos+i*width+0xE].decode("utf-8")
    name = name.rstrip().replace(" ","_").replace(".","_")
    entries[id] = ("song_{:<15}EQU ${:02X}".format(name,id))
    
for i in range(50):
    print(entries[i])