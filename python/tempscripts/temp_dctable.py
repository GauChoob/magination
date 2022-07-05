import replace_rom_text
import os
from utils import *
import extract_image
import colorize
import palette
import rle


replace_rom_text.reset_files([0x04,0x44,0x45,0x21,0x46,0x48,0x49,0x4A,0x4B,0x4D])

dcnames = {}
with open("python/dcnames.csv","r") as f:
    for line in f:
        x = line[:-1].split(";")
        dcnames[x[1]]=x[0]


with open("../MN.gbc","rb") as f:
    fr = f.read()

elements = ["elementNone","elementEarth","elementFire","elementWind","elementWater","elementGrass","elementShadow","elementElectrical"]
elenames = {0:"elementNone"}
for i in range(1,len(elements)):
    elenames[2**(i-1)] = elements[i]


prefix = "    dcm_"
    
#palette.data_to_png("ReferenceDuel.png",bytes([
#    0x00, 0x00, 0x68, 0x11, 0x56, 0x43, 0xFF, 0x7F,
#    0x00, 0x00, 0x8E, 0x0C, 0x7C, 0x2A, 0xFF, 0x7F,
#    0x00, 0x00, 0x00, 0x31, 0x27, 0x6A, 0xFF, 0x7F,
#    0x00, 0x00, 0x67, 0x2C, 0xDA, 0x51, 0xFF, 0x7F,
#    0x00, 0x00, 0xDE, 0x03, 0x53, 0x2A, 0xFF, 0x7F,
#    0x00, 0x00, 0xA9, 0x24, 0x14, 0x52, 0xFF, 0x7F,
#    0xE0, 0x03, 0xE0, 0x03, 0xE0, 0x03, 0xE0, 0x03,
#    0x00, 0x00, 0x4D, 0x1C, 0x17, 0x2E, 0xFF, 0x7F,
#    ]))
palettecard = colorize.paletteToPNGpalette("python/ReferenceDuel.png")
palettemenu = colorize.paletteToPNGpalette("python/Reference.png")


bank = 4
start = 0x415B
delta = 0x2D
n = 0x6D

operations = []
table_address_start = start
table_address_end = start+delta*n

abilitylookup = {}
for i in range(0x67):
    abilityname = data_to_rawstring(fr[0x15EB7+i*0x10:0x15EB7+i*0x10+7])
    abilityname = abilityname.replace("&right!","").rstrip().replace(" ","_")
    abilityaddress = 0x5EAE+i*0x10
    print("ability{:<30}EQU ${:02X}".format(abilityname,i))
    abilitylookup[abilityaddress] = abilityname


cardsused=[]
    
table=""
for i in range(n):
    operations = []
    graphics = []
    
    pos = bank_address_to_pos(4,start)
    for j in range(0,0x12):
        operations.append(fr[pos+i*delta+j])
    for j in range(0x12,0x1A,2):
        operations.append(fr[pos+i*delta+j:pos+i*delta+j+2])
    for j in range(0x1A,0x1E):
        operations.append(fr[pos+i*delta+j])
    for j in range(0x1E,0x24,3):
        operations.append(fr[pos+i*delta+j:pos+i*delta+j+3])
    for j in range(0x24,0x26):
        operations.append(fr[pos+i*delta+j])
    for j in range(0x26,0x2C,3):
        operations.append(fr[pos+i*delta+j:pos+i*delta+j+3])
    for j in range(0x2C,0x2D):
        operations.append(fr[pos+i*delta+j])

    name = dcnames["{:02X}".format(i)]
    print(name)
    op = iter(operations)
    
    table += "dc"+name+"::\n"
    
    pos = next(op)
    table += "{:<30}${:02X}                ;column00\n".format(db,pos)
    
    pos = next(op)
    table += "{:<30}{:d}\n".format(prefix+"Energy",pos)
    
    pos = next(op)
    table += "{:<30}${:02X}                ;column02\n".format(db,pos)
    
    pos = next(op)
    table += "{:<30}${:02X}                ;column03\n".format(db,pos)
    
    pos = next(op)
    table += "{:<30}{:d}\n".format(prefix+"Strength",pos)
    
    pos = next(op)
    table += "{:<30}{:d}\n".format(prefix+"Skill",pos)
    
    pos = next(op)
    table += "{:<30}{:d}\n".format(prefix+"Speed",pos)
    
    pos = next(op)
    table += "{:<30}{:d}\n".format(prefix+"Defense",pos)
    
    pos = next(op)
    table += "{:<30}{:d}\n".format(prefix+"Resist",pos)
    
    pos = next(op)
    table += "{:<30}{:d}\n".format(prefix+"Luck",pos)
    
    pos = next(op)
    table += "{:<30}${:02X}                ;column0A\n".format(db,pos)
    
    pos = next(op)
    pos = elenames[pos]
    table += "{:<30}{}\n".format(prefix+"Resistance",pos)
    
    pos = next(op)
    pos = elenames[pos]
    table += "{:<30}{}\n".format(prefix+"Weakness",pos)
    
    pos = next(op)
    table += "{:<30}${:02X}\n".format(prefix+"IsMagi",pos)
    
    pos = next(op)
    table += "{:<30}${:02X}                ;column0E\n".format(db,pos)
    
    pos = next(op)
    table += "{:<30}${:02X}\n".format(prefix+"MagiType",pos)

    pos = next(op)
    table += "{:<30}${:02X}\n".format(prefix+"Placeholder",pos)
    
    pos = next(op)
    table += "{:<30}${:02X}                ;column11\n".format(db,pos)
    
    pos = next(op)
    pos = data_to_word(pos)
    pos = abilitylookup[pos]
    table += "{:<30}{}\n".format(prefix+"Ability",pos)
    
    pos = next(op)
    pos = data_to_word(pos)
    pos = abilitylookup[pos]
    table += "{:<30}{}\n".format(prefix+"Ability",pos)
    
    pos = next(op)
    pos = data_to_word(pos)
    pos = abilitylookup[pos]
    table += "{:<30}{}\n".format(prefix+"Ability",pos)
    
    pos = next(op)
    pos = data_to_word(pos)
    pos = abilitylookup[pos]
    table += "{:<30}{}\n".format(prefix+"Ability",pos)
    
    pos = next(op)
    if(pos == 255) or (pos == 200):
        table += "{:<30}${:02X}\n".format(prefix+"AbilityLevel",pos)
    else:
        table += "{:<30}{:d}\n".format(prefix+"AbilityLevel",pos)
    
    pos = next(op)
    if(pos == 255) or (pos == 200):
        table += "{:<30}${:02X}\n".format(prefix+"AbilityLevel",pos)
    else:
        table += "{:<30}{:d}\n".format(prefix+"AbilityLevel",pos)
    
    pos = next(op)
    if(pos == 255) or (pos == 200):
        table += "{:<30}${:02X}\n".format(prefix+"AbilityLevel",pos)
    else:
        table += "{:<30}{:d}\n".format(prefix+"AbilityLevel",pos)
    
    pos = next(op)
    if(pos == 255) or (pos == 200):
        table += "{:<30}${:02X}\n".format(prefix+"AbilityLevel",pos)
    else:
        table += "{:<30}{:d}\n".format(prefix+"AbilityLevel",pos)
    
    pos = next(op)
    graphics.append(pos)
    table += "{:<30}{:}\n".format(prefix+"CombatTileset","tsCombat{}RLE".format(name))
    
    pos = next(op)
    graphics.append(pos)
    table += "{:<30}{:}\n".format(prefix+"CombatTilemap","tmCombat{}RLE".format(name))
    
    width = next(op)
    height = next(op)
    table += "{:<30}${:02X}, ${:02X}\n".format(prefix+"CombatTilemapSize",width,height)
    
    pos = next(op)
    graphics.append(pos)
    table += "{:<30}{:}\n".format(prefix+"CombatPalette","pCombat{}".format(name))
    
    pos = next(op)
    graphics.append(pos)
    table += "{:<30}{:}\n".format(prefix+"CardTileset","tsCard{}".format(name))
    
    pos = next(op)
    graphics.append(pos)
    table += "{:<30}${:02X}\n".format(prefix+"CardPalette",pos)
    
    table += "\n"
    
    op = iter(graphics)
    
    pos = next(op)
    gbank = pos[2]
    gaddress = data_to_word(pos[0:2])
    filenames,starts,ends = rle.main_decompress("../MN.gbc",gbank,gaddress,["dreamcreatures/combat/{}.tileset".format(name)])
    replace_rom_text.replace_rom_text(pos_to_bank(starts[0]),pos_to_address(starts[0]),pos_to_address(ends[0]),
        "tsCombat"+name+"RLE::",
        '    INCBIN "gfx/dreamcreatures/combat/{}.tileset.rle"'.format(name)
    )
    
    pos = next(op)
    gbank = pos[2]
    gaddress = data_to_word(pos[0:2])
    filenames2,starts2,ends2 = rle.main_decompress("../MN.gbc",gbank,gaddress,["dreamcreatures/combat/{}.attrmap".format(name),"dreamcreatures/combat/{}.tilemap".format(name)])
    x = replace_rom_text.replace_rom_text(pos_to_bank(starts2[0]),pos_to_address(starts2[0]),pos_to_address(ends2[1]),
        "tmCombat"+name+"RLE::",
        '    INCBIN "gfx/dreamcreatures/combat/{}.attrmap.rle"\n'.format(name) +
        '    INCBIN "gfx/dreamcreatures/combat/{}.tilemap.rle"'.format(name)
    )
    
    pos = next(op)
    gbank = pos[2]
    gaddress = data_to_word(pos[0:2])
    palette.rom_to_image("../MN.gbc",gbank,gaddress,0x08*3,["dreamcreatures/combat/{}.pal".format(name)])
    x = replace_rom_text.replace_rom_text(gbank,gaddress,gaddress+0x08*3,
        "pCombat"+name+"::",
        '    INCBIN "gfx/dreamcreatures/combat/{}.pal"'.format(name)
    )
    
        
    filenames3 = extract_image.twobpp_to_png(filenames[0],"square")
    os.rename(filenames3[0],filenames3[0]+".tmp")
    colorize.colorTileset(filenames3[0]+".tmp",filenames2[1],filenames2[0],0,0,"python/out/dreamcreatures/combat/{}.pal.png".format(name),0,addgreyscale=False,defaultpalette=0)

    pos = next(op)
    gbank = pos[2]
    gaddress = data_to_word(pos[0:2])
    cardsused.append([gbank,gaddress])
    gstart = bank_address_to_pos(gbank,gaddress)
    pos = next(op)
    extract_image.write_image("python/out/dreamcreatures/cards/{}.tileset".format(name), "w32", fr[gstart:gstart+20*0x10], palette=palettecard[pos*4:pos*4+4])
    x = replace_rom_text.replace_rom_text(gbank,gaddress,gaddress+20*0x10,
        "tsCard"+name+"::",
        '    INCBIN "gfx/dreamcreatures/card/{}.tileset"'.format(name)
    )
    
    #print(table)


x = replace_rom_text.replace_rom_text(bank,start,start+delta*n,"DreamCreatureTable::",table)


cardsunused = {
    "44_4140": ["Cyclone_Vashp",3],
    "44_6580": ["Sea_Barl",2],
    "44_6800": ["Pack_Korrit",3],
    "44_6E40": ["Carillion",0],
    "44_7200": ["Fire_Chogo",1],
    "44_7340": ["Yarothis",3],
    "44_48C0": ["Stagadan_Variant",0],
    "44_4A00": ["Wudge",1],
    "44_4B40": ["Wellisk",2],
    "44_7AC0": ["Arboll_Stalker",1],
    "45_4140": ["Malevolent_Corf",2],
    "44_7C00": ["Balamant",0],
    "45_43C0": ["Fire_Grag",1],
    "44_52C0": ["Unnamed_Core",1],
    "45_4780": ["Unnamed_Orothe",2],
    "45_5B80": ["Null",5],
}
    

for bank in range(0x44,0x46):
    for i in range(51):
        found=False
        for x in cardsused:
            if(x[0]==bank and x[1]==0x4000+(0x10*20)*i):
                found=True
                break
        if(found):
            continue
        startpos = bank_address_to_pos(bank,0x4000+(0x10*20)*i)
        cardaddress = 0x4000+(0x10*20)*i
        id = "{:02X}_{:04X}".format(bank,cardaddress)
        
        j = cardsunused[id][1]
        extract_image.write_image("python/out/dreamcreatures/cards/{}.tileset".format(cardsunused[id][0]),"w32",fr[startpos:startpos+(0x10*20)],palettecard[j*4:j*4+4])
        x = replace_rom_text.replace_rom_text(bank,cardaddress,cardaddress+(0x10*20),
            "tsCard"+cardsunused[id][0]+"_Unused::",
            '    INCBIN "gfx/dreamcreatures/card/{}.tileset"'.format(cardsunused[id][0])
        )

#extract_image.extract_image("python/out/dreamcreatures/combat/AbaquistUncompressed.tileset","../MN.gbc",0x4a,0x668B,0x688B-0x668B,"",palettemenu) #uncompressed abaquist
    #It's identical to the compressed version of the abaquist so we'll just reference that directly

replace_rom_text.replace_rom_text(0x4a,0x668B,0x688B,
    "tsCombatAbaquistUncompressed_Unused::",
    '    INCBIN "gfx/dreamcreatures/combat/AbaquistRLE5.tileset"'.format(name)
)