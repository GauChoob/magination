import os
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
        "ThisSetAnimDelay": ["ScriptDelay"],
        "ThisSetAnimScroll": ["ScriptScroll"],
        "SwitchRange": ["CaseRange"],
        "Switch": ["Case"],
        "SpriteDraw": ["MoveDraw"],
        "SpriteBlock": ["Draw"],
        "OverlayDraw": ["MoveDraw"],
        "ScrollMap": ["Move"],
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
                    out += comma + str(arg[1])
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

    def HeroFromDoor(self):                 # 0x00
        self.size = 1
        return self.GenerateOutput()

    def HeroToDoor(self):                   # 0x01
        self.size = 3
        return self.GenerateOutput(*range(2))

    def HeroToRelativeDoor(self):           # 0x02
        self.size = 5
        return self.GenerateOutput(*range(4))
    
    def ThatDrawTile(self):            # 0x03
        self.size = 8
        return self.GenerateOutput(*range(6))

    def ThatDrawMaskTile(self):        # 0x04
        self.size = 6
        return self.GenerateOutput(*range(6))

    def ThatInit(self):                     # 0x05
        self.size = 15
        return self.GenerateOutput(*range(8))

    def ThatTeleportTo(self):               # 0x06
        self.size = 3
        return self.GenerateOutput(*range(2))

    def ThatAI(self):                       # 0x07
        self.size = 4
        return self.GenerateOutput(*range(2))

    def ThatLoc(self):                      # 0x08
        self.size = 8
        return self.GenerateOutput(*range(6))

    def ThatScript(self):                   # 0x09
        self.size = 5
        return self.GenerateOutput(*range(2))

    def ThatSpriteBase(self):               # 0x0A
        self.size = 4
        return self.GenerateOutput(*range(2))

    def ThatStart(self):                    # 0x0B
        self.size = 2
        return self.GenerateOutput(*range(1))

    def ThatDelete(self):                   # 0x0C
        self.size = 2
        return self.GenerateOutput(*range(1))

    def ThisDrawTile(self):            # 0x03
        self.size = 7
        return self.GenerateOutput(*range(5))

    def ThisDrawMaskTile(self):        # 0x04
        self.size = 5
        return self.GenerateOutput(*range(5))

    def ThisTeleportTo(self):               # 0x0F
        self.size = 2
        return self.GenerateOutput(*range(1))

    def ThisNewState(self):                 # 0x10
        self.size = 3
        return self.GenerateOutput(*range(1))

    def ThisRaindrop(self):                 # 0x10
        self.size = 1
        return self.GenerateOutput(*range(1))

    def RestoreActorState(self):            # 0x12
        self.size = 1
        return self.GenerateOutput()

    def ThisAI(self):                       # 0x13
        self.size = 3
        return self.GenerateOutput(*range(1))

    def ThisSetAnimSingle(self):            # 0x14
        self.size = 4
        return self.GenerateOutput(*range(1))

    # def ThisSetAnimDelay BLOCK            # 0x15
    # def ThisSetAnimScroll BLOCK           # 0x16

    def ThisLoc(self):                      # 0x17
        self.size = 7
        return self.GenerateOutput(*range(5))

    def ThisSpriteBase(self):               # 0x18
        self.size = 2
        return self.GenerateOutput(*range(1))

    def ThisDelete(self):                   # 0x19
        self.size = 1
        return self.GenerateOutput()

    def ThisWaitTile(self):                 # 0x1A
        self.size = 2
        return self.GenerateOutput(*range(1))

    def StartSFX1(self):                    # 0x1B
        self.size = 2
        return self.GenerateOutput(*range(1))

    def StartSFX2(self):                    # 0x1C
        self.size = 2
        return self.GenerateOutput(*range(1))

    def PauseSongBugged(self):              # 0x1D
        self.size = 1
        return self.GenerateOutput()

    def ResumeSong(self):                   # 0x1E
        self.size = 1
        return self.GenerateOutput()

    def StartSong(self):                    # 0x1F
        self.size = 2
        return self.GenerateOutput(*range(1))

    def StartJingle(self):                  # 0x20
        self.size = 2
        return self.GenerateOutput(*range(1))

    def StopSong(self):                     # 0x21
        self.size = 1
        return self.GenerateOutput()

    def SetSongVolume(self):                # 0x22
        self.size = 2
        return self.GenerateOutput(*range(1))

    def SongFadeIn(self):                   # 0x23
        self.size = 2
        return self.GenerateOutput(*range(1))

    def SongFadeOut(self):                  # 0x24
        self.size = 2
        return self.GenerateOutput(*range(1))

    # 0x25 - 0x2B

    def ForgeRing(self):                    # 0x2C
        self.size = 3
        return self.GenerateOutput(*range(2))

    # 0x2D - 0x2F

    def BattleSwirl(self):                  # 0x30
        self.size = 4
        return self.GenerateOutput(*range(2))

    # 0x31 - 0x32

    def BlowAway(self):                     # 0x33
        self.size = 1
        return self.GenerateOutput()

    def LoadArena(self):                    # 0x34
        self.size = 2
        return self.GenerateOutput(*range(1))

    def LoadCreatureLeft(self):             # 0x35
        self.size = 2
        return self.GenerateOutput(*range(1))

    def DissolveFast(self):                 # 0x36
        self.size = 1
        return self.GenerateOutput()

    def DissolveSlow(self):                 # 0x37
        self.size = 1
        return self.GenerateOutput()

    def FightsceneNew(self):                # 0x38
        self.size = 4
        return self.GenerateOutput(*range(3))

    def PanTable(self):                     # 0x39
        self.size = 4
        return self.GenerateOutput(*range(2))

    def Recoil(self):                       # 0x3A
        self.size = 1
        return self.GenerateOutput()

    # 0x3B

    def PanConstant(self):                  # 0x3C
        self.size = 4
        return self.GenerateOutput(*range(3))

    def Shake(self):                        # 0x3D
        self.size = 1
        return self.GenerateOutput()

    def Sink(self):                         # 0x3E
        self.size = 1
        return self.GenerateOutput()

    def Tremble(self):                      # 0x3F
        self.size = 1
        return self.GenerateOutput()

    def Delay(self):                        # 0x40
        self.size = 2
        return self.GenerateOutput(*range(1))

    def RandDelay(self):                    # 0x41
        self.size = 3
        return self.GenerateOutput(*range(1))

    def End(self):                          # 0x42
        self.size = 1
        return self.GenerateOutput()

    def LongJumpIf(self):                   # 0x43
        self.size = 1  # +math
        self.post_size = 3
        return self.GenerateOutput(0, "BankAddress", 1)

    def InitSkip(self):                     # 0x44
        self.size = 3
        return self.GenerateOutput(*range(1))

    def LongJump(self):                     # 0x45
        self.size = 4
        return self.GenerateOutput(*range(1))

    def Jump(self):                         # 0x46
        self.size = 3
        return self.GenerateOutput(*range(1))

    def RandLongJump(self):                 # 0x47
        entries = len(self.params)
        assert 1 <= entries <= 16
        self.size = 2 + 3*entries
        return self.GenerateOutput(*range(entries))

    def Pass(self):                         # 0x48
        self.size = 1
        return self.GenerateOutput()

    # def SwitchRange BLOCK                      # 0x49

    def ResetScript(self):                   # 0x4A
        self.size = 4
        return self.GenerateOutput(*range(1))

    # def Switch BLOCK                      # 0x4B
    # def SpriteDraw BLOCK                  # 0x4C
    # def SpriteBlock BLOCK                 # 0x4D

    def SpriteInvisible(self):              # 0x4E
        self.size = 4
        return self.GenerateOutput(*range(3))

    # def OverlayDraw BLOCK                 # 0x4F

    def OverlayInit(self):                  # 0x50
        self.size = 9
        return self.GenerateOutput(*range(5))

    def OverlayInvisible(self):             # 0x51
        self.size = 1
        return self.GenerateOutput()

    def ClearSync(self):                    # 0x52
        self.size = 2
        return self.GenerateOutput(*range(1))

    def SetAnyEventMaster(self):            # 0x53
        self.size = 1
        return self.GenerateOutput()

    def SetAnyEventScroll(self):            # 0x54
        self.size = 1
        return self.GenerateOutput()

    def SetAnyEventText(self):              # 0x55
        self.size = 1
        return self.GenerateOutput()

    def SetEventMaster(self):               # 0x56
        self.size = 2
        return self.GenerateOutput(*range(1))

    def SetEventScroll(self):               # 0x57
        self.size = 2
        return self.GenerateOutput(*range(1))

    def SetEventText(self):                 # 0x58
        self.size = 2
        return self.GenerateOutput(*range(1))

    def SetScriptMaster(self):              # 0x59
        self.size = 4
        return self.GenerateOutput(*range(1))

    def SetScriptScroll(self):              # 0x5A
        self.size = 4
        return self.GenerateOutput(*range(1))

    def SetScriptText(self):                # 0x5B
        self.size = 4
        return self.GenerateOutput(*range(1))

    def Sync(self):                         # 0x5C
        self.size = 3
        return self.GenerateOutput(*range(2))

    def WaitAnyEventMaster(self):           # 0x5D
        self.size = 1
        return self.GenerateOutput()

    def WaitAnyEventScroll(self):           # 0x5E
        self.size = 1
        return self.GenerateOutput()

    def WaitAnyEventText(self):             # 0x5F
        self.size = 1
        return self.GenerateOutput()

    def WaitEventMaster(self):              # 0x60
        self.size = 2
        return self.GenerateOutput(*range(1))

    def WaitEventScroll(self):              # 0x61
        self.size = 2
        return self.GenerateOutput(*range(1))

    def WaitEventText(self):                # 0x62
        self.size = 2
        return self.GenerateOutput(*range(1))

    def LoadFullTilemap(self):              # 0x63
        self.size = 4
        return self.GenerateOutput(*range(1))

    def LoadHotspots(self):                 # 0x64
        self.size = 3
        return self.GenerateOutput(*range(1))

    def LoadScene(self):                    # 0x65
        self.size = 4
        return self.GenerateOutput(*range(1))

    def LoadSpritePalette(self):            # 0x66
        self.size = 4
        return self.GenerateOutput(*range(1))

    def LoadMap(self):                  # 0x67
        self.size = 7
        return self.GenerateOutput(*range(2))

    def LoadMapMask(self):                  # 0x68
        self.size = 7
        return self.GenerateOutput(*range(2))

    def LoadTriggers(self):                 # 0x69
        self.size = 3
        return self.GenerateOutput(*range(1))

    def LoadBitmapSet(self):                # 0x6A
        self.size = 7
        return self.GenerateOutput(*range(2))

    def LoadSingleBitmap(self):             # 0x6B
        self.size = 8
        return self.GenerateOutput(*range(4))

    def PalArenaFadeToColor(self):          # 0x6C
        self.size = 4
        return self.GenerateOutput(*range(6))

    def PalArenaFadeToBase(self):           # 0x6D
        self.size = 2
        return self.GenerateOutput(*range(2))

    def PalClearBase(self):                 # 0x6E
        self.size = 4
        return self.GenerateOutput(*range(6))

    def PalClearAnim(self):                 # 0x6F
        self.size = 4
        return self.GenerateOutput(*range(6))

    def PalCreatureCycle(self):             # 0x70
        self.size = 3
        return self.GenerateOutput(*range(3))

    def PalCreatureFadeToColor(self):      # 0x71
        self.size = 5
        return self.GenerateOutput(*range(7))

    def PalCreatureFadeToBase(self):    # 0x72
        self.size = 3
        return self.GenerateOutput(*range(3))

    def PalCreatureLoad(self):              # 0x73
        self.size = 5
        return self.GenerateOutput(*range(2))

    def PalCreatureFlash(self):             # 0x74
        self.size = 4
        return self.GenerateOutput(*range(4))

    def PalCreatureInvert(self):            # 0x75
        self.size = 4
        return self.GenerateOutput(*range(1))

    def PalFadeAnimToBase(self):            # 0x76
        self.size = 3
        return self.GenerateOutput(*range(4))

    def PalFadeAnimToColor(self):           # 0x77
        self.size = 5
        return self.GenerateOutput(*range(8))

    def PalLoad(self):                      # 0x78
        self.size = 5
        return self.GenerateOutput(*range(3))

    def PalRefresh(self):                   # 0x79
        self.size = 2
        return self.GenerateOutput(*range(2))

    def PalCycle(self):                     # 0x7A
        self.size = 4
        return self.GenerateOutput(*range(5))

    def PalInvert(self):                     # 0x7B
        self.size = 2
        return self.GenerateOutput(*range(2))

    # 0x7C - 0x7D

    def TransplantMap(self):                # 0x7E
        self.size = 9
        return self.GenerateOutput(*range(6))

    def TransplantMapMask(self):            # 0x7F
        self.size = 9
        return self.GenerateOutput(*range(6))

    def TransplantTile(self):               # 0x80
        self.size = 7
        return self.GenerateOutput(*range(5))

    # 0x81

    def HeroSetCamera(self):                # 0x82
        self.size = 1
        return self.GenerateOutput()

    # def ScrollMap BLOCK                   # 0x83

    def SetCamera(self):                    # 0x84
        self.size = 3
        return self.GenerateOutput(*range(2))

    # 0x85

    def ResetThenSingleThreadMode(self):    # 0x86
        self.size = 1
        return self.GenerateOutput()

    # 0x87
    # 0x88

    def LoadGame(self):                     # 0x89
        self.size = 1
        return self.GenerateOutput()

    def CopyLoadGame(self):                 # 0x8A
        self.size = 1
        return self.GenerateOutput()

    # 0x8B - 0x90

    def NewGame(self):                      # 0x91
        self.size = 2
        return self.GenerateOutput(*range(1))

    def SaveGame(self):                     # 0x92
        self.size = 2
        return self.GenerateOutput(*range(1))

    def SceneNew(self):                     # 0x93
        self.size = 1
        return self.GenerateOutput()

    def SceneReady(self):         # 0x94
        self.size = 1
        return self.GenerateOutput()

    def SetItemSpellMapError(self):         # 0x95
        self.size = 4
        return self.GenerateOutput(*range(1))

    def SaveLocation(self):                 # 0x96
        self.size = 4
        return self.GenerateOutput(*range(1))

    def Reboot(self):                        # 0x97
        self.size = 1
        return self.GenerateOutput()

    def FormatChar(self):                   # 0x98
        self.size = 3
        return self.GenerateOutput(*range(1))

    def Clear(self):                        # 0x99
        self.size = 1
        return self.GenerateOutput()

    def Close(self):                        # 0x9A
        self.size = 1
        return self.GenerateOutput()

    def Icon(self):                         # 0x9B
        self.size = 3
        return self.GenerateOutput(*range(1))

    def Menu(self):                         # 0x9C
        entries = len(self.params)
        assert 2 <= entries <= 4
        self.size = 2 + 3*entries
        return self.GenerateOutput(*range(entries))

    def Open(self):                         # 0x9D
        self.size = 1
        return self.GenerateOutput()

    def FormatWord(self):                   # 0x9E
        self.size = 3
        return self.GenerateOutput(*range(1))

    def Write(self):                        # 0x9F
        assert "🛑" not in self.params[0]
        self.size = 2 + len(self.params[0])
        return self.GenerateOutput(*range(1))

    def ToggleAlways(self):                 # 0xA0
        self.size = 11
        return self.GenerateOutput(*range(5))

    def ToggleOnce(self):                   # 0xA1
        self.size = 11
        return self.GenerateOutput(*range(5))

    def TriggerAlways(self):                # 0xA2
        self.size = 10
        return self.GenerateOutput(*range(4))

    def TriggerOnce(self):                  # 0xA3
        self.size = 10
        return self.GenerateOutput(*range(4))

    def Treasure(self):                     # 0xA4
        self.size = 8
        return self.GenerateOutput(*range(4))

    def VarBitExpr(self):                   # 0xA5
        self.size = 4  # + math
        return self.GenerateOutput(*range(2))

    def VarByteExpr(self):                  # 0xA6
        self.size = 3  # + math
        return self.GenerateOutput(*range(2))

    def VarWordExpr(self):                  # 0xA7
        self.size = 3  # + math
        return self.GenerateOutput(*range(2))

    def NextGameCount(self):                # 0xA8
        self.size = 1
        return self.GenerateOutput()

    def SetGameCount(self):                 # 0xA9
        self.size = 2
        return self.GenerateOutput(*range(1))

    def SetWramByte(self):                   # 0xAA
        self.size = 5
        return self.GenerateOutput(*range(2))

    def SetWramWord(self):                   # 0xAB
        self.size = 6
        return self.GenerateOutput(*range(2))

    def SetByte(self):                      # 0xAC
        self.size = 4
        return self.GenerateOutput(*range(2))

    def SetWord(self):                      # 0xAD
        self.size = 5
        return self.GenerateOutput(*range(2))

    def AndByte(self):                      # 0xAE
        self.size = 4
        return self.GenerateOutput(*range(2))

    def OrByte(self):                       # 0xAF
        self.size = 4
        return self.GenerateOutput(*range(2))

    def ScriptDelay(self):                  # null
        self.size = 4
        return self.GenerateOutput(*range(2))

    def ScriptScroll(self):               # null
        self.size = 6
        return self.GenerateOutput(*range(4))

    def CaseRange(self):                    # null
        self.size = 7
        return self.GenerateOutput(*range(3))

    def Case(self):                         # null
        self.size = 5
        return self.GenerateOutput(*range(2))

    def MoveDraw(self):                     # null
        self.size = 5
        return self.GenerateOutput(*range(4))

    def Draw(self):                         # null
        self.size = 2
        return self.GenerateOutput(*range(1))

    def Move(self):                         # null
        self.size = 3
        return self.GenerateOutput(*range(3))

    def INCSPRITE(self):
        filesize = os.path.getsize(self.params[0].raw.strip('"'))
        self.size = 1 + filesize
        return self.GenerateOutput(*range(1))

    def HeaderSceneData(self):
        self.size = 3*5
        return self.GenerateOutput(*range(5))

    def HeaderTilesetEntry(self):
        self.size = 7
        return self.GenerateOutput(*range(4))

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
