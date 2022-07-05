from pyparsing import *
import os,sys
from magiparser.magiparse_primitives import *
from magiparser.magiparse_func import *
from magiparser.magiparse_special import *
import magiparser.magiparse_config as config

ParserElement.enablePackrat()
sys.setrecursionlimit(3000)

Lines = Forward()

        
class BlockHandler(FuncHandler):
    def Switch(self):                       #0x4B
        self.size = 1 #+math
        return self.GenerateOutput(0)
    def EndSwitch(self):                    #0xFF
        self.post_size = 1
        return self.GenerateEndOutput()
        
    def CurObjMoveDraw(self):               #0x4C
        self.size = 1
        return self.GenerateOutput()
    def EndCurObjMoveDraw(self):            #0x00
        self.post_size = 1
        return self.GenerateEndOutput()
        
    def HeaderTileset(self):
        self.size = 1
        self.assertlen(0)
        entrycount = sum(1 for line in self.lines if line.name == "HeaderTilesetEntry")
        return self.GenerateOutput(("val","${:02X}".format(entrycount)),skipassertlen=True)
    def EndHeaderTileset(self):
        self.post_size = 0
        return ""
        
    def post_init(self):
        if(len(self.tokens.fparams) == 0):
            self.tokens.fparams = [[]]
        self.parent = ""
        self.params = []
        for param in self.tokens.fparams[0]:
            if(param.type == "implicitraw"):
                self.params.extend(checkShorthand(param))
            else:
                self.params.append(param)
                    
        self.lines = getattr(self.tokens,'lines',{"lines":[]}).lines
        self.name = self.tokens.name.text
        self.text = self.name + "(" + ', '.join([a.text for a in self.params]) + "){" +"\n".join([a.text for a in self.lines]) + "\n}"
        self.post_size = 1
        self.addressend = 0
        self.type = "block"
        self.getOutput() #Updates the size parameter
    def updateAddress(self,adc):
        self.address = adc.address
        adc.address += self.size
        
        adc.depth += config.defaultdepthdelta
        for param in self.params:
            if(param.type == "math"):
                adc = param.updateAddress(adc)
        for line in self.lines:
            adc = line.updateAddress(adc)
            if(line.type == "func"):
                line.parent = self.name
        adc.depth -= config.defaultdepthdelta
        
        self.addressend = adc.address
        adc.address += self.post_size
        return adc
    def getOutput(self):
        if(not hasattr(self,self.name)):
            raise Exception("Unknown Function Name: {}".format(self.name))
        base = getattr(self,self.name)()
        middle = ''.join([a.getOutput() for a in self.lines])
        end = getattr(self,"End"+self.name)()
        return base + middle + end
Block = (FuncName.setResultsName("name") + Literal("(").suppress() + Optional(FuncParams).setResultsName("fparams") + Literal(")").suppress()+ Literal("{").suppress() + Optional(Lines).setResultsName("lines")+ Literal("}").suppress()).setParseAction(BlockHandler)
#Block = (FuncName + Literal("(").suppress() + FuncParams + Literal("){").suppress() + Lines+ Literal("}").suppress()).setParseAction(BlockHandler)



class LinesHandler(ResultsHandler):
    # The parent (root) object
    # Contains the entire .mgi file
    def post_init(self):
        self.lines = self.tokens
        self.type = "lines"
        self.text = '\n'.join([a.text for a in self.lines])
    def updateAddress(self,adc):
        self.address = adc.address
        self.depth = adc.depth
        for line in self.lines:
            adc = line.updateAddress(adc)
        return adc
    def getOutput(self):
        output = ''.join([a.getOutput() for a in self.lines])
        return output
Lines <<= OneOrMore(MatchFirst([
    RawAsm, # RawAsm#SIZE#RAW#
    Align,  # Align[BANK:ADDRESS]
    Block,  # Command(Arguments...){...}
    Func,   # Function(Arguments...)
    Label,  # Label::
    ])).ignore(";.*\n").setParseAction(LinesHandler)

    