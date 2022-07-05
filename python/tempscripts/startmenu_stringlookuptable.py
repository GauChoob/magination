import replace_rom_text
from utils import *

replace_rom_text.reset_files()

names = ["smsEl00","smsEl01","smsEl02","smsEl03","smsEl04","smsEl05","smsEl06","smsEl07","smsEl08","smsEl09","smsEl0A","smsEl0B"]

lookuptabletxt = ""
lookuptablepointers = []
lookuptablepointerstxt = []

stringlist = []

def AddUnique(new):
    global stringlist
    for el in stringlist:
        if(new[0] == el[0]) and (new[1] == el[1]):
            return False #Not unique
    # Unique
    stringlist.append(new)
    

with open("../game.gbc","rb") as f:
    f.seek(bank_address_to_pos(6,0x51D9))
    i_num = 0
    for i in range(0x51D9,0x51F1,2):
        word = f.read(2)
        lookuptabletxt += dw + names[i_num] + "\n"
        i_num += 1
        lookuptablepointers.append(word[1]*256+word[0])
        
    for i in range(len(lookuptablepointers)):
        f.seek(bank_address_to_pos(6,lookuptablepointers[i]))
        
        datastart = f.tell()
        destination = get_word(f)
        loopcount = get_byte(f)
        loopelements = []
        print(str(i)+" : "+str(loopcount))
        for j in range(loopcount):
            stringaddress = get_word(f)
            stringlength = get_byte(f)
            
            temppos = f.tell()
            
            f.seek(bank_address_to_pos(6,stringaddress))
            stringstart = f.tell()
            stringcontents = data_to_string(f.read(stringlength))
            stringend = f.tell()
            
            f.seek(temppos)
            
            print(write_i_to_address(stringaddress)+ " : "+str(stringlength)+" : "+stringcontents)
            replace_rom_text.replace_rom_text(0x06,stringaddress,stringaddress+stringlength,names[i]+"_"+str(j)+"::",stringcontents)
            
            loopelements.append([stringaddress,stringlength,stringcontents])
            AddUnique([stringaddress,stringlength])
        dataend = f.tell()
            
        lookuptablepointers[i] = [datastart,dataend,destination,loopcount,loopelements]
        #print(lookuptablepointers[i])
        
        lookuptablepointerstxt.append(
            dw + "$"+write_i_to_address(destination) + "          ;Paste destination\n" +
            db + "$"+write_i_to_byte(loopcount) + "          ;Number of strings\n" +
            ''.join([
                dw + names[i] + "_" + str(j) + "\n" +
                db + "$" + write_i_to_byte(loopelements[j][1]) + "          ;String length\n"
                for j in range(loopcount)
            ])
        )
        
        replace_rom_text.replace_rom_text(0x06,pos_to_address(datastart),pos_to_address(dataend),names[i]+"::",lookuptablepointerstxt[-1])
        
        


        
    
    
replace_rom_text.replace_rom_text(0x06,0x51D9,0x51F1,"wStartMenuTextStringLookupTable::",lookuptabletxt)