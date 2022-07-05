from utils import *

def convert_to_words(rom,bank,address,end):
    pos = bank_address_to_pos(bank,address)
    posend = bank_address_to_pos(bank,end)
    length = posend-pos
    assert length % 2 == 0
    with open("python/out/temp.txt","w") as g:
        with open(rom,"rb") as f:
            f.seek(pos)
            g.write(headeraddress+write_address(pos)+"\n")
            for i in range(length//2):
                g.write(dw+write_words(f.read(2))+"\n")
            g.write(headeraddress+write_address(posend)+"\n")

convert_to_words("game.gbc",0x30,0x4DA6,0x4DF8)


