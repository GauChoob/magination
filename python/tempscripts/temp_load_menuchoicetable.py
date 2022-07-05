import replace_rom_text
from utils import *
import extract_image
import colorize



with open("../MN.gbc","rb") as f:
    fr = f.read()

jumptable = {
    0:"luMenuChoice_AB_4415",
    1:"luMenuChoice_AB_DoubleClickA",
    2:"luMenuChoice_AB_DoubleClickB",
    3:"luMenuChoice_AB_42E3",
    4:"luMenuChoice_AB_SingleClickA",
    5:"luMenuChoice_AB_SingleClickB",
    6:"luMenuChoice_AB_Null"
}

rownames = {
    0x00: "StartMenuChoiceTony_", 
    0x01: "StartMenuChoiceSpell", 
    0x02: "StartMenuChoiceRings", 
    0x03: "StartMenuChoiceItems", 
    0x04: "StartMenuChoiceGlyph", 
    0x05: "StartMenuChoiceEList", 
    0x06: "StartMenuChoiceSpell0", 
    0x07: "StartMenuChoiceSpell1", 
    0x08: "StartMenuChoiceSpell2", 
    0x09: "StartMenuChoiceSpell3", 
    0x0A: "StartMenuChoiceSpell4", 
    0x0B: "StartMenuChoiceSpellUp", 
    0x0C: "StartMenuChoiceSpellDown", 
    0x0D: "StartMenuChoiceEntry0",
    0x0E: "StartMenuChoiceEntry1", 
    0x0F: "StartMenuChoiceEntry2", 
    0x10: "StartMenuChoiceEntry3", 
    0x11: "StartMenuChoiceEntry4", 
    0x14: "StartMenuChoiceGlyphOpen", 
    0x17: "StartMenuChoiceEntryUp", 
    0x18: "StartMenuChoiceEntryDown", 
    0x19: "StartMenuChoiceRingAbility", 
    0x1A: "StartMenuChoiceRingUp", 
    0x1B: "StartMenuChoiceRingDown", 
    0x1C: "StartMenuChoiceRingRelic0", 
    0x1D: "StartMenuChoiceRingRelic1", 
    0x24: "StartMenuChoiceSave", 
    0x2B: "StartMenuChoiceAbilityOpen", 
}

def loadmenuchoicetable(start,end,tabletitle):
    data = fr[start:end]
    assert len(data) % 8 == 0
    rows = len(data)//8
    out = ""
    for row in range(rows):
        outline = ""
        if(row in rownames):
            outline = " - "+rownames[row]
        outline = "    ;{:02X}{}".format(row,outline)
        out += outline + "\n"
        outline = "    "+db+write_bytes(data[row*8:row*8+2])
        outline = "{:<40};Finger Tile X/Y".format(outline)
        out += outline + "\n"
        outline = "    "+db+write_bytes(data[row*8+2:row*8+6])
        outline = "{:<40};RLUD arrows new ID".format(outline)
        out += outline + "\n"
        jumpid = data[row*8+6]
        outline = "    "+db+jumptable[jumpid]
        outline = "{:<40};A jump".format(outline)
        out += outline + "\n"
        jumpid = data[row*8+7]
        outline = "    "+db+jumptable[jumpid]
        outline = "{:<40};B jump".format(outline)
        out += outline + "\n"

    replace_rom_text.replace_rom_text(pos_to_bank(start),pos_to_address(start),pos_to_address(end),tabletitle,out)
    #print(out)
    
    
bank = 3
replace_rom_text.reset_files([bank])
address = 0x49EB
pos = bank_address_to_pos(bank,address)
rows = 0x2C
tabletitle = "ChoiceTable_StartMenu::"
loadmenuchoicetable(pos,pos+rows*8,tabletitle)
    