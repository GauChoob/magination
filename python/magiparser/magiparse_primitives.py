from pyparsing import *
import magiparser.magiparse_config as config
import sys

ParserElement.enablePackrat()
sys.setrecursionlimit(3000)

class ResultsHandler(object):
    def __init__(self,s,locn,tokens):
        self.locn = locn
        self.tokens = tokens
        self.address = 0
        self.depth = config.defaultdepth
        if hasattr(self, "post_init"):
            self.post_init()
    def __str__(self):
        return self.text
    def __repr__(self):
        return self.text

class AddressCounter(object):
    #Keeps track of Address and Depth
    def __init__(self,address,depth):
        self.address = address
        self.depth = depth
        
class AddressHandler(ResultsHandler):
    def post_init(self):
        self.text = "["+self.tokens[0]+"]"
        self.type = "address"
    def getOutput(self):
        return self.tokens[0]
address = Regex(r"(?<=\[).*?(?=\])")
Address = (Literal("[").suppress()+address+Literal("]").suppress()).setParseAction(AddressHandler)

class LabelHandler(ResultsHandler):
    def post_init(self):
        self.text = self.tokens[0]
        self.type = "label"
    def updateAddress(self,adc):
        self.address = adc.address
        self.depth = adc.depth
        return adc
    def getOutput(self):
        return "\n\n"+self.tokens[0]
label = Regex(r"\.?[a-zA-Z_][\w.]*:(:)?")
Label = label.setParseAction(LabelHandler)

class ExplicitRawHandler(ResultsHandler):
    def post_init(self):
        self.text = "``"+self.tokens[0]+"``"
        self.type = "explicitraw"
    def getOutput(self):
        return self.tokens[0]
explicitraw = Regex(r"(?<=``).*?(?=``)")
ExplicitRaw = (Literal("``").suppress()+explicitraw+Literal("``").suppress()).setParseAction(ExplicitRawHandler)
    
class ImplicitRawHandler(ResultsHandler):
    def post_init(self):
        self.text = '"'+self.tokens[0]+'"'
        self.type = "implicitraw"
    def getOutput(self):
        return self.tokens[0]
implicitraw = Regex(r"[^`(),#\[\]]+")
ImplicitRaw = implicitraw.setParseAction(ImplicitRawHandler)
    
class NumberHandler(ResultsHandler):
    def post_init(self):
        if(self.tokens[0][0] == "%"):
            self.value = int(self.tokens[0][1:],2)
        elif(self.tokens[0][0] == "$"):
            self.value = int(self.tokens[0][1:],16)
        else:
            self.value = int(self.tokens[0],10)
        self.text = self.tokens[0]
        self.type = "num"
    def getOutput(self):
        return self.tokens[0]
num_hex = Regex(r"\$[\dA-Fa-f]+")
num_bin = Regex(r"\%[01]+")
num_dec = Regex(r"[\d]+")
Number = MatchFirst([
    num_hex,
    num_bin,
    num_dec
    ]).setParseAction(NumberHandler)

class FuncNameHandler(ResultsHandler):
    def post_init(self):
        self.text = self.tokens[0]
        self.type = "funcname"
    def getOutput(self):
        return self.tokens[0]
funcname = Regex(r"[a-zA-Z_]\w*")
FuncName = funcname.setParseAction(FuncNameHandler)

class TextHandler(ResultsHandler):
    def post_init(self):
        self.text = self.tokens[0]
        self.type = "text"
    def getOutput(self):
        return "\""+self.tokens[0]+"\""
text = Regex(r"[🡆🡇🧴🪑💍🌟💰📜🥣🍯🍃🌻🌴🍄💎❓Σ◿🔑 !',\-.0-:/A-Za-z🔇🔊🛑🅐⭍]*")
Text = (Literal("\"").suppress()+address+Literal("\"").suppress()).setParseAction(TextHandler)