import replace_rom_text
from utils import *
import extract_image

with open("../MN.gbc","rb") as f:
    fr = f.read()

maxlen = 0

for bank in range(8,10):
    for i in range(40):
        startpos = bank_address_to_pos(bank,0x4000+0x190*i)
        portraitaddress = 0x4000+0x190*i+bank
        print("{:04X}".format(portraitaddress))
        #continue
        extract_image.write_image("python/out/portrait_{:04X}.t".format(portraitaddress),"w40",fr[startpos:startpos+0x190])

        with open("python/out/dialogue/{:04X}.txt".format(portraitaddress),"w",encoding="utf8") as g:
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
print(maxlen)