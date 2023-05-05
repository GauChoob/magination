import sys
from pyparsing import ParserElement, Forward, Literal, Optional, OneOrMore, MatchFirst
from magiparser.primitives import ResultsHandler, Label
from magiparser.func import Func, FuncName, FuncParams, FuncHandler
from magiparser.special import RawAsm, Align
from magiparser.shorthand import checkShorthand

ParserElement.enablePackrat()
sys.setrecursionlimit(3000)

Lines = Forward()


class BlockHandler(FuncHandler):
    def Switch(self):                       # 0x4B
        self.size = 1  # + math
        return self.GenerateOutput(0)

    def EndSwitch(self):                    # 0xFF
        self.post_size = 1
        return self.GenerateEndOutput()

    def SpriteDraw(self):                   # 0x4C
        self.size = 1
        return self.GenerateOutput()

    def EndSpriteDraw(self):                # 0x00
        self.post_size = 1
        return self.GenerateEndOutput()

    def SpriteBlock(self):                  # 0x4D
        self.size = 4
        entries = sum(1 for line in self.lines if line.name == 'Draw')
        return self.GenerateOutput(("val", entries), 0, 1, 2)

    def EndSpriteBlock(self):               # null - no end
        return ""

    def SpriteInvisible(self):              # 0x4E
        self.size = 1
        return self.GenerateOutput()

    def EndSpriteInvisible(self):           # 0x00
        self.post_size = 1
        return self.GenerateOutput()

    def OverlayDraw(self):                  # 0x4F
        self.size = 1
        return self.GenerateOutput()

    def EndOverlayDraw(self):               # 0x00
        self.post_size = 1
        return self.GenerateEndOutput()

    def ScrollMap(self):                    # 0x83
        self.size = 1
        return self.GenerateOutput()

    def EndScrollMap(self):                 # 0x00
        self.post_size = 1
        return self.GenerateEndOutput()

    def HeaderTileset(self):
        self.size = 1
        self.assertlen(0)
        entrycount = sum(1 for line in self.lines if line.name == "HeaderTilesetEntry")
        return self.GenerateOutput(("val", "${:02X}".format(entrycount)), skipassertlen=True)

    def EndHeaderTileset(self):
        self.post_size = 0
        return ""

    def post_init(self):
        if len(self.tokens.fparams) == 0:
            self.tokens.fparams = [[]]
        self.parent = ""
        self.params = []
        for param in self.tokens.fparams[0]:
            if param.type == "implicitraw":
                self.params.extend(checkShorthand(param))
            else:
                self.params.append(param)

        self.lines = getattr(self.tokens, 'lines', {"lines": []}).lines
        self.name = self.tokens.name.text
        self.text = self.name + "(" + ', '.join([a.text for a in self.params]) + "){" + "\n".join([a.text for a in self.lines]) + "\n}"
        self.post_size = 0
        self.addressend = 0
        self.type = "block"
        self.getOutput()  # Updates the size parameter

    def updateAddress(self, address, indentation) -> int:
        self.address = address
        self.indentation = indentation

        address += self.size

        indentation += self.DELTA_INDENTATION
        for param in self.params:
            if param.type == "math":
                address = param.updateAddress(address, indentation)
        for line in self.lines:
            address = line.updateAddress(address, indentation)
            if line.type == "func":
                line.parent = self.name

        self.addressend = address
        address += self.post_size
        return address

    def getOutput(self):
        if not hasattr(self, self.name):
            raise Exception("Unknown Function Name: {}".format(self.name))
        base = getattr(self, self.name)()
        middle = ''.join([a.getOutput() for a in self.lines])
        end = getattr(self, "End"+self.name)()
        return base + middle + end


Block = (
    FuncName.setResultsName("name") + Literal("(").suppress() + Optional(FuncParams).setResultsName("fparams") + Literal(")").suppress() +
    Literal("{").suppress() + Optional(Lines).setResultsName("lines") + Literal("}").suppress()
).setParseAction(BlockHandler)


class LinesHandler(ResultsHandler):
    # The parent (root) object
    # Contains the entire .mgi file
    def post_init(self):
        self.lines = self.tokens
        self.type = "lines"
        self.text = '\n'.join([line.text for line in self.lines])

        # Need to update all the addresses, sizes and indentation for all the subobjects
        self.updateAddress(self.address, self.indentation)

    def updateAddress(self, address: int, indentation: int) -> int:
        self.address = address
        self.indentation = indentation
        for line in self.lines:
            address = line.updateAddress(address, indentation)
        return address

    def getOutput(self):
        output = ''.join([line.getOutput() for line in self.lines])
        return output


Lines <<= OneOrMore(MatchFirst([
    RawAsm,  # RawAsm#SIZE#RAW#
    Align,   # Align[BANK:ADDRESS]
    Block,   # Command(Arguments...){...}
    Func,    # Function(Arguments...)
    Label,   # Label::
    ])).ignore(";.*\n").setParseAction(LinesHandler)
