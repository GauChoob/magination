
from magiparser.magiparse_primitives import *

shorthand = {
    "WHITE_A": ["$1F","$1F","$1F","0"],
    
}

def checkShorthand(x):
    #Adds the effect of any shorthands
    #Only used with ImplicitRawHandler
    if(x.getOutput() in shorthand):
        ret = []
        for entry in shorthand[x.getOutput()]:
            ret.append(ImplicitRawHandler(None,None,[entry]))
        return ret
    return [x]