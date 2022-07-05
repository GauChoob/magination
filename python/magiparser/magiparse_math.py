from pyparsing import *
import sys
from magiparser.magiparse_primitives import *
import magiparser.magiparse_config as config

ParserElement.enablePackrat()
sys.setrecursionlimit(3000)

MathOperand = Forward()
Math = Forward()

class MathOperandHandler(ResultsHandler):
    def post_init(self):
        self.depth = 0
        self.post_init2()
    def updateAddress(self, adc):
        self.address = adc.address
        self.depth = adc.depth
        adc.address += self.size
        return adc

class CharAddressHandler(MathOperandHandler):
    def post_init2(self):
        self.text = "c"+self.tokens[0].text
        self.type = "math_charaddress"
        self.size = 3
    def getOutput(self):
        output = "\n"+" "*self.depth+"eCharAddress {}".format(self.tokens[0].getOutput())
        output = "{:<{}}; ${:04X}".format(output,config.commentoffset+1,self.address)
        return output
        
CharAddress = (Literal("c").suppress() + Address).setParseAction(CharAddressHandler)

class WordAddressHandler(MathOperandHandler):
    def post_init2(self):
        self.text = "w"+self.tokens[0].text
        self.type = "math_wordaddress"
        self.size = 3
    def getOutput(self):
        output = "\n"+" "*self.depth+"eWordAddress {}".format(self.tokens[0].getOutput())
        output = "{:<{}}; ${:04X}".format(output,config.commentoffset+1,self.address)
        return output
WordAddress = (Literal("w").suppress() + Address).setParseAction(WordAddressHandler)

class CharHandler(MathOperandHandler):
    def post_init2(self):
        self.text = "c"+self.tokens[0].text
        self.type = "math_char"
        self.size = 2
    def getOutput(self):
        output = "\n"+" "*self.depth+"eChar {}".format(self.tokens[0].getOutput())
        output = "{:<{}}; ${:04X}".format(output,config.commentoffset+1,self.address)
        return output
Char = MatchFirst([Literal("c").suppress()+Number,Literal("c(").suppress() + MatchFirst([ExplicitRaw,ImplicitRaw]) + Literal(")").suppress()]).setParseAction(CharHandler)

class WordHandler(MathOperandHandler):
    def post_init2(self):
        self.text = "w"+self.tokens[0].text
        self.type = "math_word"
        self.size = 3
    def getOutput(self):
        output = "\n"+" "*self.depth+"eWord {}".format(self.tokens[0].getOutput())
        output = "{:<{}}; ${:04X}".format(output,config.commentoffset+1,self.address)
        return output
Word = MatchFirst([Literal("w").suppress()+Number,Literal("w(").suppress() + MatchFirst([ExplicitRaw,ImplicitRaw]) + Literal(")").suppress()]).setParseAction(WordHandler)
    
class BitmatchHandler(MathOperandHandler):
    def post_init2(self):
        self.text = "bitmatch("+self.tokens[0].text+","+self.tokens[1].text+")"
        self.type = "math_bitmatch"
        self.size = 4
    def getOutput(self):
        output = "\n"+" "*self.depth+"eBitMatch {}, {}".format(self.tokens[0].tokens[0].getOutput(),self.tokens[1].tokens[0].getOutput())
        output = "{:<{}}; ${:04X}".format(output,config.commentoffset+1,self.address)
        return output
Bitmatch = (Literal("bitmatch(").suppress()+CharAddress+Literal(",").suppress()+Char+Literal(")").suppress()).setParseAction(BitmatchHandler)

class SpecialStateHandler(MathOperandHandler):
    def post_init2(self):
        self.text = "DIRECTION"
        self.type = "math_DIRECTION"
        self.size = 1
    def getOutput(self):
        output = "\n"+" "*self.depth+"eGetHeroDirection"
        output = "{:<{}}; ${:04X}".format(output,config.commentoffset+1,self.address)
        return output
SpecialState = Literal("DIRECTION").setParseAction(SpecialStateHandler)

class ProgressionStateHandler(MathOperandHandler):
    def post_init2(self):
        self.text = "GAMECOUNT"
        self.type = "math_GAMECOUNT"
        self.size = 1
    def getOutput(self):
        output = "\n"+" "*self.depth+"eGetGameCount"
        output = "{:<{}}; ${:04X}".format(output,config.commentoffset+1,self.address)
        return output
ProgressionState = Literal("GAMECOUNT").setParseAction(ProgressionStateHandler)

class Rand16Handler(MathOperandHandler):
    def post_init2(self):
        self.text = "RAND16"
        self.type = "math_RAND16"
        self.size = 1
    def getOutput(self):
        output = "\n"+" "*self.depth+"eRand16"
        output = "{:<{}}; ${:04X}".format(output,config.commentoffset+1,self.address)
        return output
Rand16 = Literal("RAND16").setParseAction(Rand16Handler)

class BankHandler(MathOperandHandler):
    def post_init2(self):
        self.mathobj = MathGroupHandler(False,False,[self.tokens[1]])
        self.text = "bank("+self.tokens[0].text+","+self.mathobj.text+")"
        self.type = "math_bank"
        self.size = 2 + self.mathobj.size
    def updateAddress(self, adc):
        self.address = adc.address
        self.depth = adc.depth
        
        adc.depth += config.defaultdepthdelta
        #self.mathobj.stack = self.mathobj.buildStack(self.mathobj.tokens[0],-100,adc.depth)
        self.mathobj.updateAddress(adc)
        adc.depth -= config.defaultdepthdelta
        
        adc.address += 2
        adc = self.mathobj.updateAddress(adc)
        return adc
    def getOutput(self):
        output = "\n"+" "*self.depth+"eBank {}".format(self.tokens[0].tokens[0].getOutput())
        output = "{:<{}}; ${:04X}".format(output,config.commentoffset+1,self.address)
        output += "{}".format(self.mathobj.getOutput())
        return output
Bank = (Literal("bank(").suppress()+Char+Literal(",").suppress()+Math+Literal(")").suppress()).setParseAction(BankHandler)

MathOperand <<= MatchFirst([
    CharAddress,
    WordAddress,
    Char,
    Word,
    Bitmatch,
    SpecialState,
    ProgressionState,
    Rand16,
    Bank,
    ])     
        
Math <<= infixNotation(
    MathOperand,
    [
        #(oneOf("+ -"),           1,opAssoc.RIGHT), Negative numbers not supported
        (oneOf("++ --"),           1,opAssoc.LEFT),
        (Literal("not"),           1,opAssoc.RIGHT),
        #(oneOf("* /"),             2,opAssoc.LEFT), Does not exist
        (oneOf("+ -"),             2,opAssoc.LEFT),
        (Literal("&"),             2,opAssoc.LEFT),
        (oneOf("< <= > >= == !="), 2,opAssoc.LEFT),
        (oneOf("and or"),          2,opAssoc.LEFT),
    ],
)


class MathGroupHandler(ResultsHandler):
    class Infix(object):
        def getOutput(self):
            opcode_table = {
                "&":"eBitAnd",
                "and":"eAnd",
                "or":"eOr",
                "not":"eNot",
                "+":"eAdd",
                "-":"eSub",
                "++":"eInc",
                "--":"eDec",
                "==":"eEquals",
                "!=":"eNotEquals",
                ">":"eGreater",
                ">=":"eGreaterEquals",
                "<":"eLess",
                "<=":"eLessEquals",
                }
            output = "\n"+" "*self.depth+"{}".format(opcode_table[self.func])
            output = "{:<{}}; ${:04X}".format(output,config.commentoffset+1,self.address)
            if(self.param2):
                output += "{}{}".format(self.param1.getOutput(),self.param2.getOutput())
            else:
                output += "{}".format(self.param1.getOutput())
            return output
        def updateAddress(self, adc):
            self.address = adc.address
            adc.address += 1
            
            adc.depth += config.defaultdepthdelta
            adc = self.param1.updateAddress(adc)
            if(self.param2):
                adc = self.param2.updateAddress(adc)
            adc.depth -= config.defaultdepthdelta 
                
            return adc
        def __init__(self,depth,func,param1,param2=False):
            self.depth = depth
            self.func = func
            self.param1 = param1
            self.param2 = param2
            self.type = "math_func"
            self.address = 0
            if(self.param2):
                self.text = "{0}({1},{2})".format(self.func,self.param1,self.param2)
                self.size = 1 + self.param1.size + self.param2.size
            else:
                self.text = "{0}({1})".format(self.func,self.param1)
                self.size = 1 + self.param1.size
        def __str__(self):
            return self.text
        def __repr__(self):
            return self.text

    def buildStack(self,curtoken,i,depth):
        OneRight = ["not"]
        OneLeft = ["++","--"]
        TwoLeft = ["+","-","&","<","<=",">=","==","!=","and","or"]
        # i is position in the list. This is to avoid duplicating the list. i==-100 means unknown position
        if(i == -100):
            #Given an unknown object, determine if it is a list or a single Operand
            if(isinstance(curtoken,MathOperandHandler)):
                #curtoken.updateDepth(depth)
                return curtoken
            elif(isinstance(curtoken,ParseResults)):
                return self.buildStack(curtoken,len(curtoken)-1,depth)
            raise Exception
        if(i == 0):
            #Given the last entry, determine if it is a list or single Operand
            if(isinstance(curtoken[i],MathOperandHandler)):
                #curtoken[i].updateDepth(depth)
                return curtoken[i]
            elif(isinstance(curtoken[i],ParseResults)):
                return self.buildStack(curtoken[i],-100,depth)
            raise Exception
        else:
            #Given a non-last entry, determine the operation and apply it
            if(curtoken[i-1] in OneRight):
                return MathGroupHandler.Infix(depth,curtoken[i-1],self.buildStack(curtoken[i],-100,depth+1))
            if(curtoken[i] in OneLeft):
                return MathGroupHandler.Infix(depth,curtoken[i],self.buildStack(curtoken,i-1,depth+1))
            if(curtoken[i-1] in TwoLeft):
                return MathGroupHandler.Infix(depth,curtoken[i-1],self.buildStack(curtoken,i-2,depth+1),self.buildStack(curtoken[i],-100,depth+1))
            raise Exception
    def post_init(self):
        self.stack = self.buildStack(self.tokens[0],-100,4)
        self.text = "#"+self.stack.text+"#"
        self.size = self.stack.size
        self.type = "math"
    def updateAddress(self,adc):
        adc = self.stack.updateAddress(adc)
        return adc
    def getOutput(self):
        return self.stack.getOutput()
MathGroup = (Literal("#").suppress() + Math + Literal("#").suppress()).setParseAction(MathGroupHandler)