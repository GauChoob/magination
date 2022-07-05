from pyparsing import *
from magiparser.magiparse_primitives import *
from magiparser.magiparse_math import *
from magiparser.magiparse_func import *

class CaseHandler(ResultsHandler):
    def post_init(self):
        self.text = " Case "+self.tokens[0].text +":" + self.tokens[1].text
        self.type = "func_switch_case"
    def getOutput(self):
        output = "\n    Case {}, {}".format(self.tokens[0].getOutput(),self.tokens[1].getOutput())
        output = "{:<{}}; ${:04X}".format(output,config.commentoffset+1,self.address)
        return output
    def updateAddress(self,address):
        self.address = address
        address += 5
        return address
Case = (Literal("Case").suppress() + Literal("(").suppress() + MatchFirst([ExplicitRaw,ImplicitRaw]) + Literal(",").suppress() + MatchFirst([ExplicitRaw,ImplicitRaw]) + Literal(")").suppress()).setParseAction(CaseHandler)
Cases = Group(ZeroOrMore(Case))

class BlockHandler(ResultsHandler):
    
    def post_init(self):
        self.name = self.tokens[0].text
        self.mathgroup = self.tokens[0]
        self.params = []
        if(len(self.tokens) == 2):
            self.params = self.tokens[1]
        self.text = "Select("+self.mathgroup.text+"){\n"+'\n'.join([a.text for a in self.params])+"\n}"
        self.addressend = 0
        self.type = "func_switch"
    def updateAddress(self,address):
        self.address = address
        address += 1
        address = self.mathgroup.updateAddress(address)
        for param in self.params:
            address = param.updateAddress(address)
        self.addressend = address
        address += 1
        return address
    def getOutput(self):
        out = "\n\n  Switch"
        out = "{:<{}}; ${:04X}".format(out,config.commentoffset+2,self.address)
        out += self.mathgroup.getOutput()+''.join([a.getOutput() for a in self.params])
        out2 = "\n  EndSwitch"
        out2 = "{:<{}}; ${:04X}".format(out2,config.commentoffset+1,self.addressend)
        out += out2
        return out

        
print(Lines)

Block = (FuncName + Literal("(").suppress() + Optional(FuncParams).setResultsName("fparams") + Literal(")").suppress()+ Literal("{").suppress() + Optional(Lines).setResultsName+ Literal("}").suppress()).setParseAction(BlockHandler)


