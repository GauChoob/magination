import replace_rom_text
from utils import *
import extract_image
import colorize

replace_rom_text.reset_files([])
palette = colorize.paletteToPNGpalette("python/Reference.png")

with open("../MN.gbc","rb") as f:
    fr = f.read()

dcnames = {}
    
with open("python/dcnames.csv","r") as f:
    for line in f:
        x = line[:-1].split(";")
        dcnames[x[1]]=x[0]

names = ["GlyphCoreStone5"]
bank = 4
start = 0x415B
delta = 0x2D

mina = [1000000]*0x2D
maxa = [0]*0x2D

paletteadrs=[]

with open("python/out/temp.txt","w") as f:
    for i in range(-1,0x6D):
        namee=""
        if(i==-1):
            namee=dcnames["FF"]
        else:
            namee=dcnames["{:02X}".format(i)]
            
        address = start+(i)*delta
        startpos = bank_address_to_pos(bank,address)
        out = "{:<15};".format(namee)+write_bytes(fr[startpos:startpos+delta])+"\n"
        out =out.replace(", "," ")
        f.write(out)
  
        paletteadrs.append(fr[startpos+0x27]*256+fr[startpos+0x26])
  
        print("{:<15};".format(namee)+"resists {:02X}, weak to {:02X}".format(fr[startpos+11],fr[startpos+12]))
        if(i != -1):
            for j in range(0x2D):
                mina[j] = min(mina[j],fr[startpos+j])
                maxa[j] = max(maxa[j],fr[startpos+j])



    out = "{:<15};".format(" ")+write_bytes(mina)+"\n"
    out =out.replace(", "," ")
    f.write(out)
    out = "{:<15};".format(" ")+write_bytes(maxa)+"\n"
    out =out.replace(", "," ")
    f.write(out)
    
paletteadrs.sort()
for i in range(1,len(paletteadrs)):
    continue
    #print("{:04X} -- {:02X}".format(paletteadrs[i],paletteadrs[i]-paletteadrs[i-1]))