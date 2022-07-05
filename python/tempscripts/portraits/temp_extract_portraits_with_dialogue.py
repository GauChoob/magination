import replace_rom_text
from utils import *
import extract_image
import colorize

replace_rom_text.reset_files()

with open("../MN.gbc","rb") as f:
    fr = f.read()

maxlen = 0

palette = colorize.paletteToPNGpalette("python/Reference.png")

dict = {}
with open("python/portraits.csv","r") as f:
    for line in f:
        l=line.split(",")
        if(l[1][:-1] == "(blank)"):
            l[1] = l[0]+" "
        dict[l[0]] = l[1][:-1]
print(dict)


for bank in range(8,10):
    for i in range(40):
        startpos = bank_address_to_pos(bank,0x4000+0x190*i)
        portraitaddress = 0x4000+0x190*i+bank
        portraitaddressstr = "{:04X}".format(portraitaddress)
        print("{}: {}".format(portraitaddressstr,dict[portraitaddressstr]))
        portraitaddressstr = dict[portraitaddressstr]
        
        if(portraitaddressstr == "5F49"):
            break
        
        extract_image.write_image("python/out/{}.tileset".format(portraitaddressstr),"w40",fr[startpos:startpos+0x190],palette)

        with open("python/out/dialogue/{}.txt".format(portraitaddressstr),"w",encoding="utf8") as g:
            curpos = 0
            while True:
                curpos = fr.find(
                    b'\x9B'+bytes([n16_to_lower8(portraitaddress),n16_to_upper8(portraitaddress)])+b'\x9F',
                    curpos)
                if(curpos == -1):
                    break
                curpos += 4
                length = 0
                EOF = len(fr)
                while (length < 800) and (fr[curpos+length] != 0xFD) and (curpos+length < EOF):
                    length += 1
                maxlen = max(length,maxlen)
                txt=(data_to_string(fr[curpos:curpos+length],False)+"\n")
                txt=txt.replace('",$FE,"',' ')
                txt=txt.replace('",$FF,"',' ')
                g.write(txt)
                curpos += length
                
        replace_rom_text.replace_rom_text(bank,0x4000+0x190*i,0x4000+0x190*i+0x190,"portrait{}::".format(portraitaddressstr),'    INCBIN "gfx/portraits/'+portraitaddressstr+'.tileset"')
print(maxlen)


