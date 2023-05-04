from pyparsing import ParserElement, MatchFirst, Group, delimitedList, Literal, Optional
import sys
from magiparser.primitives import ExplicitRaw, Text, ImplicitRaw, ResultsHandler, FuncName
from magiparser.math import MathGroup, MathGroupHandler
from magiparser.shorthand import checkShorthand

ParserElement.enablePackrat()
sys.setrecursionlimit(3000)

FuncParam = MatchFirst([ExplicitRaw, MathGroup, Text, ImplicitRaw])
FuncParams = Group(delimitedList(FuncParam))


class FuncHandler(ResultsHandler):
    # Handles functions e.g. Function() (without code blocks e.g. Switch(){})

    def assertlen(self, n):
        # This function makes sure that the number of arguments in the .mgi file match the expected number of arguments for the specified function
        if len(self.params) != n:
            raise Exception("{} should only take {} parameter{}".format(self.name, n, "s" if n != 1 else ""))
        return True

    parentmap = {
        "Switch": ["Case"],
        "CurObjMoveDraw": ["MoveDraw"],
    }

    def checkValidParent(self):
        # Some functions are contained within code blocks (e.g. within Switch(#VALUE#){...}, the only valid functions are Case(value,label)
        # We verify that within code blocks, only the permitted functions are used
        if self.parent == "":
            return True
        if self.name not in FuncHandler.parentmap[self.parent]:
            raise Exception("{} doesn't seem to be a valid command within {}".format(self.name, self.parent))

    def GenerateOutput(self, *args, **params):
        # This function generates the processed output into a .asm file
        # args:
        #       The first argument is X
        #       Optionally, for the 2nd argument, you can pass a tuple ("params","skipassertlen") to specify that the function has a variable amount of function arguments
        #           Otherwise, based on the highest arg value, the number of function arguments will be checked via assertlen()
        # params:
        #       skipassertlen = True    Specify that the function has a variable amount of function arguments, and therefore don't check the number of arguments via assertlen
        #
        # By default, the output will be separated by 2 line breaks, unless the function is within a code block i.e. {...}
        skipassertlen = params.pop('skipassertlen', False)
        if not skipassertlen:
            if len(args) == 0:
                self.assertlen(0)
            else:
                self.assertlen(1+max([x for x in args if isinstance(x, int)]))
        linebreaks = 2
        if self.parent:
            linebreaks = 1
        return self.GenerateOutputGeneral(linebreaks, args)

    def GenerateEndOutput(self, *args):
        linebreaks = 1
        tempaddress = self.address
        tempname = self.name
        self.address = self.addressend
        self.name = "End"+self.name
        out = self.GenerateOutputGeneral(linebreaks, args)
        self.address = tempaddress
        self.name = tempname
        return out

    def GenerateOutputGeneral(self, linebreaks, args):
        # linebreaks = number of line breaks after the previous text
        out = self.formatAddIndent(self.name)
        comma = " "
        for arg in args:
            if isinstance(arg, tuple):
                if arg[0] == "val":
                    out += comma + arg[1]
                    comma = ", "
                    continue
                raise KeyError
            elif arg == "db":
                self.indentation += self.DELTA_INDENTATION
                out += "\n" + self.formatAddIndent("db ")
                self.indentation -= self.DELTA_INDENTATION
                comma = ""
                continue
            elif arg == "dw":
                self.indentation += self.DELTA_INDENTATION
                out += "\n" + self.formatAddIndent("dw ")
                self.indentation -= self.DELTA_INDENTATION
                comma = ""
                continue
            elif isinstance(arg, str):
                self.indentation += self.DELTA_INDENTATION
                out += "\n" + self.formatAddIndent(arg)
                self.indentation -= self.DELTA_INDENTATION
                comma = " "
                continue
            else:
                if isinstance(self.params[arg], MathGroupHandler):
                    out += self.params[arg].getOutput()
                    comma = ""
                    continue
                else:
                    out += comma + self.params[arg].getOutput()
                    comma = ", "
                    continue

        out = "\n"*linebreaks + self.formatAddAddressAsComment(out)
        return out

    def ThatInit(self):                     # 0x05
        self.size = 15
        return self.GenerateOutput(0, 1, 2, 3, 4, 5, 6, 7)

    def ThatTeleportTo(self):               # 0x06
        self.size = 3
        return self.GenerateOutput(0, 1)

    def ThatAI(self):                       # 0x07
        self.size = 4
        return self.GenerateOutput(0, 1)

    def ThatLoc(self):                      # 0x08
        self.size = 8
        return self.GenerateOutput(0, 1, 2, 3, 4, 5)

    def ThatScript(self):                   # 0x09
        self.size = 5
        return self.GenerateOutput(0, 1)

    def ThatSpriteBase(self):               # 0x0A
        self.size = 4
        return self.GenerateOutput(0, 1)

    def ThatStart(self):                    # 0x0B
        self.size = 2
        return self.GenerateOutput(0)

    def ThatDelete(self):                   # 0x0C
        self.size = 2
        return self.GenerateOutput(0)

    def ThisTeleportTo(self):               # 0x0F
        self.size = 2
        return self.GenerateOutput(0)

    def ThisAI(self):                       # 0x13
        self.size = 3
        return self.GenerateOutput(0)

    def ThisSetAnimSingle(self):            # 0x14
        self.size = 4
        return self.GenerateOutput(0, 1)

    def ThisLoc(self):                      # 0x17
        self.size = 7
        return self.GenerateOutput(0, 1, 2, 3, 4)

    def ThisSpriteBase(self):               # 0x18
        self.size = 2
        return self.GenerateOutput(0)

    def ThisDelete(self):                   # 0x19
        self.size = 1
        return self.GenerateOutput()

    def StartSFX1(self):                    # 0x1B
        self.size = 2
        return self.GenerateOutput(0)

    def StartSFX2(self):                    # 0x1C
        self.size = 2
        return self.GenerateOutput(0)

    def PauseSongBugged(self):              # 0x1D
        self.size = 1
        return self.GenerateOutput()

    def ResumeSong(self):                   # 0x1E
        self.size = 1
        return self.GenerateOutput()

    def StartSong(self):                    # 0x1F
        self.size = 2
        return self.GenerateOutput(0)

    def StartJingle(self):                  # 0x20
        self.size = 2
        return self.GenerateOutput(0)

    def StopSong(self):                     # 0x21
        self.size = 1
        return self.GenerateOutput()

    def SetSongVolume(self):                # 0x22
        self.size = 2
        return self.GenerateOutput(0)

    def SongFadeIn(self):                   # 0x23
        self.size = 2
        return self.GenerateOutput(0)

    def SongFadeOut(self):                  # 0x24
        self.size = 2
        return self.GenerateOutput(0)

    def LoadSideScroller(self):             # 0x34
        self.size = 2
        return self.GenerateOutput(0)

    def Delay(self):                        # 0x40
        self.size = 2
        return self.GenerateOutput(0)

    def End(self):                          # 0x42
        self.size = 1
        return self.GenerateOutput()

    def LongJumpIf(self):                   # 0x43
        self.size = 1  # +math
        self.post_size = 3
        return self.GenerateOutput(0, "BankAddress", 1)

    def InitSkip(self):                     # 0x44
        self.size = 3
        return self.GenerateOutput(0)

    def LongJump(self):                     # 0x45
        self.size = 4
        return self.GenerateOutput(0)

    def Jump(self):                         # 0x46
        self.size = 3
        return self.GenerateOutput(0)

    def LoadFullTilemap(self):              # 0x63
        self.size = 4
        return self.GenerateOutput(0)

    def LoadSpritePalette(self):            # 0x66
        self.size = 4
        return self.GenerateOutput(0)

    def LoadBitmapSet(self):                # 0x6A
        self.size = 7
        return self.GenerateOutput(0, 1)

    def PalClearBase(self):                 # 0x6E
        self.size = 4
        return self.GenerateOutput("Palette_PackedInterval", 0, 1, "RGBA", 2, 3, 4, 5)

    def PalClearAnim(self):                 # 0x6F
        self.size = 4
        return self.GenerateOutput("Palette_PackedInterval", 0, 1, "RGBA", 2, 3, 4, 5)

    def FadeBackgroundPalettesTowardsBuffer(self):  # 0x76
        self.size = 3
        return self.GenerateOutput("Palette_PackedLoop", 0, 1, "Palette_PackedInterval", 2, 3)

    def SetCamera(self):                    # 0x84
        self.size = 3
        return self.GenerateOutput(0, 1)

    def ResetThenSingleThreadMode(self):    # 0x86
        self.size = 1
        return self.GenerateOutput()

    def SceneNew(self):                     # 0x93
        self.size = 1
        return self.GenerateOutput()

    def ExitSingleThreadMode(self):         # 0x94
        self.size = 1
        return self.GenerateOutput()

    def SetFarByte(self):                   # 0xAA
        self.size = 5
        return self.GenerateOutput(0, 1)

    def SetFarWord(self):                   # 0xAB
        self.size = 6
        return self.GenerateOutput(0, 1)

    def SetByte(self):                      # 0xAC
        self.size = 4
        return self.GenerateOutput(0, 1)

    def SetWord(self):                      # 0xAD
        self.size = 5
        return self.GenerateOutput(0, 1)

    def AndByte(self):                      # 0xAE
        self.size = 4
        return self.GenerateOutput(0, 1)

    def OrByte(self):                       # 0xAF
        self.size = 4
        return self.GenerateOutput(0, 1)

    def Case(self):                         # null
        self.size = 5
        return self.GenerateOutput(0, 1)

    def MoveDraw(self):                     # null
        self.size = 5
        return self.GenerateOutput(0, 1, 2, 3)

    def HeaderSceneData(self):
        self.size = 3*5
        return self.GenerateOutput(0, 1, 2, 3, 4)

    def HeaderTilesetEntry(self):
        self.size = 7
        return self.GenerateOutput(0, 1, 2, 3)

    def HeaderMetatilemap(self):
        self.size = 7
        uncompressedsize = 0
        self.size += uncompressedsize
        self.assertlen(5)
        return self.GenerateOutput(0, 1, 2, 3, ("val", "${:04X}".format(uncompressedsize)), skipassertlen=True)

    def HeaderMetacollisionmap(self):
        self.size = 3
        uncompressedsize = 0
        self.size += uncompressedsize
        self.assertlen(2)
        return self.GenerateOutput(0, ("val", "${:04X}".format(uncompressedsize)), skipassertlen=True)

    def post_init(self):
        self.name = self.tokens[0].text
        self.parent = ""
        self.params = []
        if len(self.tokens) == 2:
            for param in self.tokens[1]:
                if param.type == "implicitraw":
                    self.params.extend(checkShorthand(param))
                else:
                    self.params.append(param)

        self.text = str(self.name) + "(" + ', '.join([a.text for a in self.params]) + ")"
        self.type = "func"
        self.post_size = 0
        self.getOutput()  # Updates the size parameter

    def getOutput(self):
        if not hasattr(self, self.name):
            raise Exception("Unknown Function Name: {}".format(self.name))
        return getattr(self, self.name)()

    def updateAddress(self, address: int, indentation: int) -> int:
        self.address = address
        self.indentation = indentation

        address += self.size

        indentation += self.DELTA_INDENTATION
        for param in self.params:
            if param.type == "math":
                address = param.updateAddress(address, indentation)

        address += self.post_size
        return address


Func = (FuncName + Literal("(").suppress() + Optional(FuncParams) + Literal(")").suppress()).setParseAction(FuncHandler)
