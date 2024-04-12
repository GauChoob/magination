import rle
import extract_image
import palette
import replace_rom_text
from utils import *

#This code rips out all the StartScreen headers
#and then modifies the ROMs

#name = "Arderial"
#
#tilesets = []
#tilesets.extend(rle.main_decompress("../game.gbc",0x43,0x4000,["StartScreen"+name+"Top.tileset"]))
#rle.main_decompress("../game.gbc",0x42,0x4140,["StartScreen"+name+"Top.attrmap","StartScreen"+name+"Top.tilemap"])
#tilesets.extend(rle.main_decompress("../game.gbc",0x43,0x412B,["StartScreen"+name+"Bottom.tileset"]))
#rle.main_decompress("../game.gbc",0x42,0x41CF,["StartScreen"+name+"Bottom.attrmap","StartScreen"+name+"Bottom.tilemap"])
#palette.rom_to_image("../game.gbc",0x21,0x5D00,0x10,["StartScreen"+name+".pal"])
#
#for tileset in tilesets:
#    extract_image.twobbp_to_png(tileset,"w128")
    
    
names = ["Arderial","Core","Cald","UnderneathTunnels","CaldGeyser","NaroomGeyser","Naroom","UnderneathGeyser","OrotheStarfish","OrotheGeyser","Orothe","OrotheTunnels","Shadowhold","Underneath"]
unused = [False,True,False,True,True,True,False,True,True,True,False,True,True,False]
operations = []

for i in range(len(names)):
    name = names[i]
    operation = []
    with open("../game.gbc","rb") as f:
        f.seek(bank_address_to_pos(4,0x6E21+i*0x13))
        operation.append(f.tell())
        address = get_word(f)
        bank = get_byte(f)
        operation.append([bank,address])
        address = get_word(f)
        bank = get_byte(f)
        operation.append([bank,address])
        address = get_word(f)
        bank = get_byte(f)
        operation.append([bank,address])
        address = get_word(f)
        bank = get_byte(f)
        operation.append([bank,address])
        operation.append(db+write_bytes(f.read(2)))
        address = get_word(f)
        bank = get_byte(f)
        operation.append([bank,address])
        operation.append(db+write_bytes(f.read(2)))
    operations.append(operation)

with open("python/out/temp.txt","w") as f:
    for i in range(len(names)):
        op = iter(operations[i])
        name = names[i]
        name_unused = name + ("_Unused" if unused[i] else "")
        f.write("StartScreenHeader"+name_unused+":\n")
        f.write(headeraddress + "$"+write_address(next(op))+"\n")
        pos = next(op)
        f.write(addressbank + "tsStartScreen"+name+"TopRLE\n")
        pos = next(op)
        f.write(addressbank + "tmStartScreen"+name+"TopRLE\n")
        pos = next(op)
        f.write(addressbank + "tsStartScreen"+name+"BottomRLE\n")
        pos = next(op)
        f.write(addressbank + "tmStartScreen"+name+"BottomRLE\n")
        f.write(next(op)+"\n")
        pos = next(op)
        f.write(addressbank + "pStartScreen"+name+"\n")
        f.write(next(op)+"\n")
        f.write("")

    replace_rom_text.reset_files()
    for i in range(len(names)):
        tilesets = []
        op = iter(operations[i])
        name = names[i]
        next(op)
        
        pos = next(op)
        a,b,c = rle.main_decompress("game.gbc",pos[0],pos[1],["StartScreen"+name+"Top.tileset"])
        tilesets.extend(a)
        x = replace_rom_text.replace_rom_text(pos_to_bank(b[0]),pos_to_address(b[0]),pos_to_address(c[0]),
            "tsStartScreen"+name+"TopRLE::",
            '    INCBIN "gfx/startscreen/{:X}_{}/StartScreen{}Top.tileset.rle"'.format(i,name,name)
        )
        f.write(x+"\n")
        
        pos = next(op)
        a,b,c = rle.main_decompress("game.gbc",pos[0],pos[1],["StartScreen"+name+"Top.attrmap","StartScreen"+name+"Top.tilemap"])
        x = replace_rom_text.replace_rom_text(pos_to_bank(b[0]),pos_to_address(b[0]),pos_to_address(c[1]),
            "tmStartScreen"+name+"TopRLE::",
            '    INCBIN "gfx/startscreen/{:X}_{}/StartScreen{}Top.attrmap.rle"\n'.format(i,name,name) +
            '    INCBIN "gfx/startscreen/{:X}_{}/StartScreen{}Top.tilemap.rle"\n'.format(i,name,name)
        )
        f.write(x+"\n")
        

        pos = next(op)
        a,b,c = rle.main_decompress("game.gbc",pos[0],pos[1],["StartScreen"+name+"Bottom.tileset"])
        tilesets.extend(a)
        x = replace_rom_text.replace_rom_text(pos_to_bank(b[0]),pos_to_address(b[0]),pos_to_address(c[0]),
            "tsStartScreen"+name+"BottomRLE::",
            '    INCBIN "gfx/startscreen/{:X}_{}/StartScreen{}Bottom.tileset.rle"'.format(i,name,name)
        )
        f.write(x+"\n")
        
        pos = next(op)
        a,b,c = rle.main_decompress("game.gbc",pos[0],pos[1],["StartScreen"+name+"Bottom.attrmap","StartScreen"+name+"Bottom.tilemap"])
        x = replace_rom_text.replace_rom_text(pos_to_bank(b[0]),pos_to_address(b[0]),pos_to_address(c[1]),
            "tmStartScreen"+name+"BottomRLE::",
            '    INCBIN "gfx/startscreen/{:X}_{}/StartScreen{}Bottom.attrmap.rle"\n'.format(i,name,name) +
            '    INCBIN "gfx/startscreen/{:X}_{}/StartScreen{}Bottom.tilemap.rle"\n'.format(i,name,name)
        )
        f.write(x+"\n")
        
        next(op)
        
        pos = next(op)
        palette.rom_to_image("game.gbc",pos[0],pos[1],0x10,["StartScreen"+name+".pal"])
        x = replace_rom_text.replace_rom_text(pos[0],pos[1],pos[1]+0x10,
            "pStartScreen"+name+"::",
            '    INCBIN "gfx/startscreen/{:X}_{}/StartScreen{}.pal"'.format(i,name,name)
        )
        f.write(x+"\n")
        
        next(op)
        
        for tileset in tilesets:
            print(tileset)
            extract_image.twobbp_to_png(tileset,"")#"w128")
            
        #input()




    