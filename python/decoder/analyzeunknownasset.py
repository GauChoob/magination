import sys, os, re
sys.path.append('python/')
sys.path.append('../')

import projutils.utils as u
import projutils.replace_rom_text as replace_rom_text
import projutils.color as color
import projutils.tileset as tileset
import projutils.pattern as pattern
import projutils.rle as rle
import projutils.colorize as colorize
import projutils.config as c


import traceback,time
mysteries = [
    #address, size
    [0x143FE0,0x0020,"Tileset","INDIRECT_Underneath_Geyser_NewMoonBlockPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x147FEB,0x0015,"HeaderMetatilemap","INDIRECT_Naroom_Vash_Southeast_CurioDoorMask"],
    [0x15E800,0x0800,"Tileset","INDIRECT_UNKNOWN1",{"size":0x0800,"pixelwidth":128,"parentname":"UNKNOWN"}],
    [0x187FA8,0x0058,"HeaderMetatilemap","INDIRECT_UNKNOWN4"],
    [0x193FFC,0x0004,"HeaderCollisionmap","INDIRECT_Misc_Null"],
    [0x1963E0,0x070D,"HeaderMetatilemap","INDIRECT_Cald_Geyser_PuzzlesA_Mask"],
    [0x197FE9,0x0016,"HeaderMetatilemap","INDIRECT_Naroom_Vash_South_AgovoDoorMask"],
    [0x1A4000,0x05A4,"RLE_Pattern","INDIRECT_UNKNOWN5"],
    [0x1A7AD0,0x0504,"HeaderCollisionmap","INDIRECT_Cald_Geyser_PuzzlesA_Mask"],
    [0x1B107F,0x0415,"HeaderMetatilemap","INDIRECT_Cald_Geyser_PuzzlesB_Mask"],
    [0x1B6EBF,0x03C6,"HeaderCollisionmap","INDIRECT_Cald_Geyser_PuzzlesB_Mask"],
    [0x1C9A2A,0x028F,"HeaderMetatilemap","INDIRECT_UNKNOWN_SUSPECTED_Arderial_Geyser_Pipes2_Entrance_Mask"],
    [0x1CC26E,0x026D,"HeaderMetatilemap","INDIRECT_UNKNOWN_SUSPECTED_Arderial_Geyser_Pipes2_PipeAnalysis_Mask"],
    [0x1CDC69,0x024C,"HeaderMetatilemap","INDIRECT_UNKNOWN_SUSPECTED_Cald_Ashyn_NorthGeyser_Mask"],
    [0x1CDEB5,0x024B,"HeaderMetatilemap","INDIRECT_UNKNOWN_COULDBE_Naroom_Forest_Exit_Mask"],
    [0x1CEE98,0x023D,"HeaderMetatilemap","INDIRECT_UNKNOWN_COULDBE_Underneath_Geyser_CavedIn"],
    [0x1D2D57,0x0200,"Tileset","INDIRECT_UNKNOWN6",{"size":0x0200,"pixelwidth":128,"parentname":"ARDERIALPARENT"}], #Possibly 64 width? To verify
    [0x1D3FFC,0x0004,"RLE_Collisionmap","INDIRECT_HEADERLESS_UNKNOWN_01"], #UNKNOWN - looks like an empty collisionmap without a header of uncompressed size 0x0068
    [0x1D888C,0x01B0,"HeaderMetatilemap","INDIRECT_UNKNOWN7"],
    [0x1DA2A2,0x0193,"HeaderMetatilemap","INDIRECT_UNKNOWN8"],
    [0x1DB6B1,0x0182,"HeaderMetatilemap","INDIRECT_UNKNOWN9"],
    [0x1E08B3,0x0139,"HeaderMetatilemap","INDIRECT_UNKNOWN_10"],
    [0x1E0D8F,0x0134,"HeaderCollisionmap","INDIRECT_UNKNOWN_11"],
    [0x1E30F0,0x0116,"HeaderMetatilemap","INDIRECT_UNKNOWN_12"],
    [0x1E3206,0x0115,"HeaderMetatilemap","INDIRECT_UNKNOWN_13"],
    [0x1E331B,0x0114,"HeaderMetatilemap","INDIRECT_UNKNOWN_14"],
    [0x1E3976,0x0107,"HeaderMetatilemap","INDIRECT_UNKNOWN_15"],
    [0x1E3F98,0x0068,"HeaderMetatilemap","INDIRECT_UNKNOWN_16"],
    [0x1E490B,0x00FE,"HeaderCollisionmap","INDIRECT_UNKNOWN_17"],
    [0x1E739A,0x00DE,"HeaderCollisionmap","INDIRECT_UNKNOWN_18"],
    [0x1E8E07,0x00C1,"HeaderCollisionmap","INDIRECT_UNKNOWN_19"],
    [0x1E8EC8,0x00C0,"Tileset","INDIRECT_UNKNOWN_20",{"size":0x00C0,"pixelwidth":96,"parentname":"UNKNOWNPARENT"}], #UNKNOWN WIDTH
    [0x1E9618,0x00B7,"HeaderCollisionmap","INDIRECT_UNKNOWN_20"],
    [0x1E9785,0x00B3,"HeaderMetatilemap","INDIRECT_UNKNOWN_21"],
    [0x1E9DBA,0x00AC,"HeaderMetatilemap","INDIRECT_UNKNOWN_22"],
    [0x1E9F12,0x00AA,"HeaderMetatilemap","INDIRECT_UNKNOWN_23"],
    [0x1EA45C,0x00A8,"HeaderMetatilemap","INDIRECT_UNKNOWN_24"],
    [0x1EA987,0x00A2,"HeaderMetatilemap","INDIRECT_UNKNOWN_25"],
    [0x1EB1A0,0x009D,"HeaderCollisionmap","INDIRECT_UNKNOWN_26"],
    [0x1EB84A,0x0098,"HeaderMetatilemap","INDIRECT_UNKNOWN_27"],
    [0x1EB97A,0x0096,"HeaderCollisionmap","INDIRECT_UNKNOWN_29"],
    [0x1EBA10,0x0096,"HeaderMetatilemap","INDIRECT_UNKNOWN_29"],
    [0x1EBBD2,0x0096,"HeaderCollisionmap","INDIRECT_UNKNOWN_30"],
    [0x1EBFD8,0x0028,"HeaderMetatilemap","INDIRECT_UNKNOWN_31"],
    [0x1EC361,0x008F,"HeaderMetatilemap","INDIRECT_UNKNOWN_32"],
    [0x1EC7CC,0x008C,"HeaderMetatilemap","INDIRECT_UNKNOWN_33"],
    [0x1EC96E,0x008A,"HeaderMetatilemap","INDIRECT_UNKNOWN_34"],
    [0x1EC9F8,0x008A,"HeaderMetatilemap","INDIRECT_UNKNOWN_35"],
    [0x1ECCA8,0x0089,"HeaderCollisionmap","INDIRECT_UNKNOWN_36"],
    [0x1EDA09,0x007F,"HeaderCollisionmap","INDIRECT_UNKNOWN_37"],
    [0x1EE389,0x0075,"HeaderCollisionmap","INDIRECT_UNKNOWN_38"],
    [0x1EE3FE,0x0075,"HeaderCollisionmap","INDIRECT_UNKNOWN_39"],
    [0x1EEF2B,0x0067,"HeaderCollisionmap","INDIRECT_UNKNOWN_40"],
    [0x1EF8D5,0x005A,"HeaderCollisionmap","INDIRECT_UNKNOWN_41"],
    [0x1EFF78,0x004D,"HeaderMetatilemap","INDIRECT_UNKNOWN_42"],
    [0x1F004B,0x004A,"HeaderMetatilemap","INDIRECT_UNKNOWN_43"],
    [0x1F05F6,0x0042,"HeaderCollisionmap","INDIRECT_UNKNOWN_44"],
    
    [0x1F0A7C,0x0040,"Palette","INDIRECT_UNKNOWN_60",{"size":64}],
    [0x1F0E3C,0x0040,"Palette","INDIRECT_Core_End_Pathway_AliveStatuesFade",{"size":64}],
    [0x1F113C,0x0040,"Palette","INDIRECT_UNKNOWN_62",{"size":64}],
    [0x1F127C,0x0040,"HeaderCollisionmap","INDIRECT_UNKNOWN_45"],
    [0x1F13BC,0x0040,"Tileset","Underneath_Geyser_WaneMoonButtonPressed",{"size":0x0040,"pixelwidth":32,"parentname":"Misc_Geyser"}],
    [0x1F13FC,0x0040,"Tileset","Underneath_Geyser_WaxMoonButtonPressed",{"size":0x0040,"pixelwidth":32,"parentname":"Misc_Geyser"}],
    [0x1F14FC,0x0040,"Tileset","Underneath_Geyser_NewMoonBlockPressed",{"size":0x0040,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F16BC,0x0040,"Tileset","Underneath_Geyser_WaxMoonBlockPressed",{"size":0x0040,"pixelwidth":32,"parentname":"Misc_Geyser"}],
    [0x1F193C,0x0040,"Tileset","Underneath_Geyser_WaneMoonBlockPressed",{"size":0x0040,"pixelwidth":32,"parentname":"Misc_Geyser"}],
    
    [0x1F1DE8,0x0035,"HeaderCollisionmap","INDIRECT_UNKNOWN_46"],
    [0x1F1E51,0x0034,"HeaderCollisionmap","INDIRECT_UNKNOWN_47"],
    [0x1F1F21,0x0034,"HeaderCollisionmap","INDIRECT_UNKNOWN_48"],
    [0x1F21A1,0x002D,"HeaderMetatilemap","INDIRECT_UNKNOWN_49"],
    [0x1F25EF,0x002B,"HeaderCollisionmap","INDIRECT_UNKNOWN_50"],
    [0x1F266F,0x0029,"HeaderMetatilemap","INDIRECT_UNKNOWN_51"],
    
    [0x1F295A,0x0025,"HeaderTileset","INDIRECT_VRAM"], #VRAM
        # Related tilesets that will be generated automatically
        #[0x170800,0x0800,"Tileset","INDIRECT_UNKNOWN2",{"size":0x0800,"pixelwidth":128,"parentname":"UNKNOWN"}],
        #[0x173000,0x0800,"Tileset","INDIRECT_UNKNOWN3",{"size":0x0800,"pixelwidth":128,"parentname":"UNKNOWN"}],
        #[0x1B30AF,0x0400,"Tileset","INDIRECT_UNKNOWN_ARDERIAL1",{"size":0x0400,"pixelwidth":128,"parentname":"ARDERIALPARENT"}],
        #[0x1D2757,0x0200,"Tileset","INDIRECT_UNKNOWN_ARDERIAL2",{"size":0x0200,"pixelwidth":128,"parentname":"ARDERIALPARENT"}],
    
    [0x1F2A2B,0x0020,"Tileset","Underneath_Geyser_FullMoonBlockPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2B6B,0x0020,"Tileset","Underneath_Geyser_NewMoonButtonPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2B8B,0x0020,"Tileset","Underneath_Geyser_FullMoonButtonPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    
    [0x1F2C0B,0x001F,"HeaderCollisionmap","INDIRECT_UNKNOWN_52"],
    [0x1F2D1A,0x001D,"HeaderMetatilemap","INDIRECT_UNKNOWN_53"],
    [0x1F2D37,0x001A,"HeaderCollisionmap","INDIRECT_UNKNOWN_54"],
    [0x1F2D51,0x001A,"HeaderCollisionmap","INDIRECT_UNKNOWN_55"],
    [0x1F2D6B,0x001A,"HeaderCollisionmap","INDIRECT_UNKNOWN_56"],
    [0x1F2D85,0x0018,"HeaderCollisionmap","INDIRECT_UNKNOWN_57"],
    [0x1F2D9D,0x0010,"HeaderCollisionmap","INDIRECT_UNKNOWN_58"],
    [0x1F2DAD,0x000F,"HeaderCollisionmap","INDIRECT_UNKNOWN_59"],
    ]

mysteries = [
    # Ghost copy
    [0x1F2DF1,0x0020,"RLE_Collisionmap","Ghost_Core_Shadowhold_Marina_Pathway"], #width d27 #23 IN SIZE but first 3 bytes cut off
    [0x1F2E11,0x0022,"HeaderCollisionmap","Ghost_Misc_StartScreen"],
    [0x1F2E33,0x0022,"HeaderCollisionmap","Ghost_Orothe_Dock_Eastern_Ferry"],
    [0x1F2E55,0x0022,"HeaderCollisionmap","Ghost_Orothe_Dock_Western_Ferry"],
    [0x1F2E77,0x0020,"Tileset","Ghost_Underneath_Geyser_FullMoonBlockPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2E97,0x0020,"Tileset","Ghost_Underneath_Geyser_FullMoonBlock",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2EB7,0x0020,"Tileset","Ghost_Underneath_Geyser_NewMoonBlock",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2ED7,0x0020,"Tileset","Ghost_Orothe_Geyser_EmptyChest",{"size":0x0020,"pixelwidth":16,"parentname":"Orothe_Geyser_Outdoors"}],
    [0x1F2EF7,0x0020,"Tileset","Ghost_Orothe_Geyser_FullChest",{"size":0x0020,"pixelwidth":16,"parentname":"Orothe_Geyser_Outdoors"}],
    [0x1F2F17,0x0020,"Tileset","Ghost_Cald_Vents_Block",{"size":0x0020,"pixelwidth":16,"parentname":"Cald_Vents"}],
    [0x1F2F37,0x0020,"Tileset","Ghost_Cald_Vents_FullChest",{"size":0x0020,"pixelwidth":16,"parentname":"Cald_Vents"}],
    [0x1F2F57,0x0020,"Tileset","Ghost_Cald_Vents_EmptyChest",{"size":0x0020,"pixelwidth":16,"parentname":"Cald_Vents"}],
    [0x1F2F77,0x0020,"Tileset","Ghost_Underneath_Geyser_NewMoonButton",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2F97,0x0020,"Tileset","Ghost_Underneath_Geyser_FullMoonButton",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2FB7,0x0020,"Tileset","Ghost_Underneath_Geyser_NewMoonButtonPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2FD7,0x0020,"Tileset","Ghost_Underneath_Geyser_FullMoonButtonPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2FF7,0x0020,"Tileset","Ghost_Naroom_Geyser_FullChest",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F3017,0x0020,"Tileset","Ghost_Naroom_Geyser_EmptyChest",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F3037,0x0020,"Tileset","Ghost_Naroom_Vash_PipesRoom_Unknown",{"size":0x0020,"pixelwidth":16,"parentname":"Naroom_Vash_PipesRoom"}],
    [0x1F3057,0x001F,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_52"],
    [0x1F3076,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_01"],
    [0x1F3094,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_02"], #
    [0x1F30B2,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_03"], #
    [0x1F30D0,0x001E,"HeaderCollisionmap","Ghost_Core_Shadowhold_Marina_Jump"], #VRAMS POINT DIFFERENTLY
    [0x1F30EE,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_04"], #check order
    [0x1F310C,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_05"],
    [0x1F312A,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_06"],
    [0x1F3148,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_07"],
    [0x1F3166,0x001D,"HeaderMetatilemap","Ghost_INDIRECT_UNKNOWN_53"],
    [0x1F3183,0x001A,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_55"], #second one in original
    [0x1F319D,0x001A,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_56"],#third one in original
    [0x1F31B7,0x001A,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_54"], #first one in original
    [0x1F31D1,0x0018,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_57"],
    [0x1F31E9,0x0010,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_58"],
    [0x1F31F9,0x000F,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_59"],
    [0x1F3208,0x000E,"HeaderCollisionmap","Ghost_Orothe_Dock_Eastern_Empty"],
    [0x1F3216,0x000E,"HeaderCollisionmap","Ghost_Orothe_Dock_Western_Empty"],
    [0x1F3224,0x000B,"HeaderMetatilemap","Ghost_Orothe_Ocean_Raft"],
    [0x1F322F,0x0007,"HeaderCollisionmap","Ghost_UNDOCUMENTED_UNIQUE"], #unknown collmap
    [0x1F3236,0x0007,"HeaderCollisionmap","Ghost_Collmap_Orothe_Ocean_Raft"], #second one in original
    [0x1F323D,0x0007,"HeaderCollisionmap","Ghost_Collmap_Orothe_Ocean_Ferry"], #first one in original
]


       
       
def analyze(param):
    pos = param[0]
    size = param[1]
    start = u.BankAddress(pos)
    end = start+size
    unknownsize = (end.getAddress(end=True)==0x8000)
    
    ret = ["{}-{} - {:04X}".format(str(start),(str(end)),size)]
    if(unknownsize):
        ret.append("UNKNOWNSIZE")
    
    # Palette
    if((size % 2) != 0):
        #Must be even number of bytes
        pcur = 0
        pmax = 1
        ret.append("\tPalette: WRONGMODULO")
    elif(size > 0x40):
        # must be max 40 bytes
        pcur = 0
        pmax = 1
        ret.append("\tPalette: TOOBIG")
    else:
        pcur = 0
        pmax = 0
        for i in range(0,size,2):
            pcur += 1*(rom.getWord(start + i) <= 0b0111_1111_1111_1111) #invalid color usually if the 15th bit is set
            pmax += 1
        ret.append(("\t" if pcur/pmax>0.9 else "")+"\tPalette: {}% | InputSize:{:04X}".format(int(pcur/pmax*100),size))
        data = rom.getRawSection(start,size)
        if(pcur/pmax==1.0):
            color.data_to_png(c.outdir+"analysis/palette/{:06X}.png".format(start.getPos()),data)
    
    #Tileset
    if((size % 0x10) != 0):
        #Must be a multiple of 0x10
        ret.append("\tTileset: WRONGMODULO")
    else:
        data = rom.getRawSection(start,size)
        tileset.data_to_png(c.outdir + "analysis/tileset_test/{:06X}.png".format(start.getPos()),data,width=128)
        ret.append("\t\tTileset: SEE PREVIEW")
        
    # RLE_Pattern
    data,mode,rle_end = rle.decompress(rom,start,"")
    len_data = len(data)
    csize = rle_end.getPos()-start.getPos()
    ret.append(("\t" if (csize==size and mode!= "RLEX" and len_data == 0x800) else "")+"\tRLE_Pattern: Mode {} | CalculatedSize:{:04X} - InputSize:{:04X} | PredictedUnc:{:04X} - ActualUnc:{:04X}".format(mode,csize,size,0x800,len_data))
    with open(c.outdir + "analysis/RLE_Pattern_decomp/{:06X}.dat".format(start.getPos()),"wb") as f:
        f.write(data)
    
    # HeaderCollisionmap
    HEADERSIZE = 3
    width = rom.getByte(start)
    unc_size = rom.getWord(start+1)
    unc_size_mistake = unc_size + HEADERSIZE #sometimes the wrong size is exported
    data,mode,rle_end = rle.decompress(rom,start+HEADERSIZE,"")
    len_data = len(data)
    csize = rle_end.getPos()-start.getPos()
    unc_size_match = (len_data == unc_size) or (len_data == unc_size_mistake)
    ret.append(("\t" if (csize==size and unc_size_match and mode!= "RLEX") else "")+"\tHeaderCollisionmap: Mode {} | CalculatedSize:{:04X} - InputSize:{:04X} | PredictedUnc:{:04X}(+{}) - ActualUnc:{:04X} | Width:{}".format(mode,csize,size,unc_size,HEADERSIZE,len_data,width))
    with open(c.outdir + "analysis/RLE_Collisionmap_decomp/{:06X}.dat".format(start.getPos()),"wb") as f:
        f.write(data)

    # HeaderMetatilemap
    HEADERSIZE = 7
    width = rom.getByte(start)
    unc_size = rom.getWord(start+5)
    unc_size_mistake = unc_size + HEADERSIZE #sometimes the wrong size is exported
    data,mode,rle_end = rle.decompress(rom,start+HEADERSIZE,"")
    len_data = len(data)
    csize = rle_end.getPos()-start.getPos()
    unc_size_match = (len_data == unc_size) or (len_data == unc_size_mistake)
    ret.append(("\t" if (csize==size and unc_size_match and mode!= "RLEX") else "")+"\tHeaderMetatilemap: Mode {} | CalculatedSize:{:04X} - InputSize:{:04X} | PredictedUnc:{:04X}(+{}) - ActualUnc:{:04X} | Width:{}".format(mode,csize,size,unc_size,HEADERSIZE,len_data,width))
    with open(c.outdir + "analysis/RLE_Metatile_decomp/{:06X}.dat".format(start.getPos()),"wb") as f:
        f.write(data)
    
    # HeaderTileset
    assets0 = rom.getByte(start)
    assets1 = rom.getByte(start+1+assets0*7)
    csize = 2+(assets0+assets1)*7
    ret.append(("\t" if (csize==size) else "")+"\tHeaderTileset: CalculatedSize:{:04X} - InputSize:{:04X}".format(csize,size))
       
    return '\n'.join(ret)
       
rom = u.Rom(c.projfiles+"MN.gbc")


os.makedirs(c.outdir+"analysis/tileset_test/", exist_ok=True)
os.makedirs(c.outdir+"analysis/RLE_Pattern_decomp/", exist_ok=True)
os.makedirs(c.outdir+"analysis/RLE_Collisionmap_decomp/", exist_ok=True)
os.makedirs(c.outdir+"analysis/RLE_Metatile_decomp/", exist_ok=True)
os.makedirs(c.outdir+"analysis/palette/", exist_ok=True)

#csize = 0
#size = 0
#mode = "X"
#print(("\t" (if csize==size and mode!= "X") else "")+"RLE_Pattern: Mode {} | CalculatedSize:{:04X} - InputSize:{:04X}".format(mode,csize,size))

with open(c.outdir+"analysis/out.txt","w") as f:
    for item in mysteries:
        f.write(analyze(item))
        f.write("\n\n")