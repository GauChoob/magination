from pyparsing import *
from magiparser.magiparse_lines import *
import magiparser.magiparse_config as config


def convert(filein,fileout):
    with open(filein,"r") as f:
        f = f.read()
        commentparse = re.compile(";.*\n")
        f = commentparse.sub("",f)
    
    a = Lines.parseString(f)[0]
    adc = AddressCounter(0x4000,config.defaultdepth)
    a.updateAddress(adc) # Update the address location and indentation
    with open(fileout,"w") as f:
        f.write(a.getOutput())

        
def getObject(filein):
    with open(filein,"r") as f:
        f = f.read()
        commentparse = re.compile(";.*\n")
        f = commentparse.sub("",f)
    
    a = Lines.parseString(f)[0]
    adc = AddressCounter(0x4000,config.defaultdepth)
    a.updateAddress(adc)
    return a