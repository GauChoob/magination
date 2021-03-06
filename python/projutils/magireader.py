from typing import List
import projutils.utils as utils
import projutils.color as color
import projutils.hotspot as hotspot
import projutils.encoding as encoding


# Reads the rom file to interpret the script
# Also sets up hotspots
# Sample usage:
# magireader.interpret(BankAddress(0x2A,0x6CB5),BankAddress(0x2A,0x73E7))
# magireader.buildHotspots()
# magireader.buildTriggers()

# Keep track of identified hotspots and triggers
hotspots = []
triggers = []


_shorthands_color = {
    color.Color(0x1F*8, 0x1F*8, 0x1F*8, 0).get_word(): "WHITE_A",
}


# _shorthands_math = {
#     # 0, "FALSE",
#     0xFFFF, "TRUE",
# }

# Lookup table for LoadSideScroller argument
_shorthands_loadsidescroller_scene = {
    0x00: "Arderial",
    0x01: "Core",
    0x02: "Cald",
    0x03: "UnderneathTunnels",
    0x04: "CaldGeyser",
    0x05: "NaroomGeyser",
    0x06: "Naroom",
    0x07: "UnderneathGeyser",
    0x08: "OrotheStarfish",
    0x09: "OrotheGeyser",
    0x0A: "Orothe",
    0x0B: "OrotheTunnels",
    0x0C: "Shadowhold",
    0x0D: "Underneath",
}


class DepthTracker:
    defaultdepth = 4
    defaultdepthdelta = 4

    """Keeps track of indentation"""
    def __init__(self):
        self.depth = 0

    def indent(self):
        """Indent by 1"""
        self.depth += 1

    def dedent(self):
        """Dedent by 1"""
        self.depth -= 1

    def getWhitespace(self):
        """Returns the appropriate amount of whitespace for the current indentation"""
        return " "*DepthTracker.defaultdepth + " "*DepthTracker.defaultdepthdelta*self.depth


# Load the rom
rom = utils.Rom()

# Keep track of the current WRAM bank used in Math
rambank = 1

# Load the symbol file for labels
sym = utils.SymFile()

# Load the sfxid and songid. This assumes that the musyx file has been compiled
musyx = utils.MusyXIDs()

depthtracker = DepthTracker()


class CommandBuilder:
    """A quick wrapper around script commands"""
    def __init__(self, type, name, *instructions):
        self.type = type
        self.name = name
        self.instructions = instructions


class MagiScriptLine:
    """Main engine script commands"""
    commands = {
        0x00: CommandBuilder("func", "HeroFromDoor"),
        0x01: CommandBuilder("func", "HeroToDoor", "$db", "$db"),
        0x02: CommandBuilder("func", "HeroToRelativeDoor", "$db", "$db", "$db", "$db"),

        0x05: CommandBuilder("func", "ThatInit", "db", "ActorStateAddress", "$db", "$db", "$dw", "$db", "BankAddress_ACTORSCRIPT0", "BankAddress_ACTORSCRIPT1"),
        0x06: CommandBuilder("func", "ThatTeleportTo", "db", "db"),
        0x07: CommandBuilder("func", "ThatAI", "db", "ActorStateAddress"),
        0x08: CommandBuilder("func", "ThatLoc", "db", "$db", "$db", "$db", "$db", "$dw"),
        0x09: CommandBuilder("func", "ThatScript", "db", "BankAddress_ACTORSCRIPT0"),
        0x0A: CommandBuilder("func", "ThatSpriteBase", "db", "$db"),
        0x0B: CommandBuilder("func", "ThatStart", "db"),
        0x0C: CommandBuilder("func", "ThatDelete", "db"),

        0x0F: CommandBuilder("func", "ThisTeleportTo", "db"),

        0x12: CommandBuilder("func", "UNK_0CDD_12"),  # Jukebox? todo
        0x13: CommandBuilder("func", "ThisAI", "ActorStateAddress"),
        0x14: CommandBuilder("func", "ThisSetAnimSingle", "BankAddress_ACTORSCRIPT1"),

        0x17: CommandBuilder("func", "ThisLoc", "$db", "$db", "$db", "$db", "$dw"),
        0x18: CommandBuilder("func", "ThisSpriteBase", "$db"),
        0x19: CommandBuilder("func", "ThisDelete"),
        0x1A: CommandBuilder("func", "ThisWaitTile", "$db"),
        0x1B: CommandBuilder("func", "StartSFX1", "SFXID"),
        0x1C: CommandBuilder("func", "StartSFX2", "SFXID"),
        0x1D: CommandBuilder("func", "PauseSongBugged"),
        0x1E: CommandBuilder("func", "ResumeSong"),
        0x1F: CommandBuilder("func", "StartSong", "SONGID"),
        0x20: CommandBuilder("func", "StartJingle", "SONGID"),
        0x21: CommandBuilder("func", "StopSong"),
        0x22: CommandBuilder("func", "SetSongVolume", "$db"),
        0x23: CommandBuilder("func", "SongFadeIn", "SongFadeInterval"),
        0x24: CommandBuilder("func", "SongFadeOut", "SongFadeInterval"),

        0x30: CommandBuilder("func", "BattleSwirl", "07Address", "SONGID"),

        0x34: CommandBuilder("func", "LoadSideScroller", "LoadSideScroller_Scene"),

        0x40: CommandBuilder("func", "Delay", "db"),
        0x41: CommandBuilder("func", "RandDelay", "RandDelayAddress"),
        0x42: CommandBuilder("func", "End"),
        0x43: CommandBuilder("func", "LongJumpIf", "MATH", "BankAddress_SCRIPT"),
        0x44: CommandBuilder("func", "InitSkip", "LocalAddress"),
        0x45: CommandBuilder("func", "LongJump", "BankAddress_SCRIPT"),
        0x46: CommandBuilder("func", "Jump", "LocalAddress"),
        0x47: CommandBuilder("func", "RandLongJump", "RANDLONGJUMP"),

        0x4B: CommandBuilder("block", "Switch", "MATH"),

        0x52: CommandBuilder("func", "ClearSync", "db"),
        0x53: CommandBuilder("func", "SetAnyEventMaster"),
        0x54: CommandBuilder("func", "SetAnyEventScroll"),
        0x55: CommandBuilder("func", "SetAnyEventText"),
        0x56: CommandBuilder("func", "SetEventMaster", "db"),
        0x57: CommandBuilder("func", "SetEventScroll", "db"),
        0x58: CommandBuilder("func", "SetEventText", "db"),
        0x59: CommandBuilder("func", "SetScriptMaster", "BankAddress_SCRIPT"),
        0x5A: CommandBuilder("func", "SetScriptScroll", "BankAddress_SCRIPT"),
        0x5B: CommandBuilder("func", "SetScriptText", "BankAddress_SCRIPT"),
        0x5C: CommandBuilder("func", "Sync", "db", "db"),
        0x5D: CommandBuilder("func", "WaitAnyEventMaster"),
        0x5E: CommandBuilder("func", "WaitAnyEventScroll"),
        0x5F: CommandBuilder("func", "WaitAnyEventText"),
        0x60: CommandBuilder("func", "WaitEventMaster", "db"),
        0x61: CommandBuilder("func", "WaitEventScroll", "db"),
        0x62: CommandBuilder("func", "WaitEventText", "db"),

        0x63: CommandBuilder("func", "LoadFullTilemap", "AddressBank_ATTRTILE_RLE"),
        0x64: CommandBuilder("func", "LoadHotspots", "HotspotTableAddress"),

        0x65: CommandBuilder("func", "LoadScene", "AddressBank_SCENE"),
        0x66: CommandBuilder("func", "LoadSpritePalette", "AddressBank_PAL8"),

        0x68: CommandBuilder("func", "LoadMapMask", "AddressBank_METAMAP_MASK", "AddressBank_COLLMAP_MASK"),
        0x69: CommandBuilder("func", "LoadTriggers", "TriggerTableAddress"),
        0x6A: CommandBuilder("func", "LoadBitmapSet", "AddressBank_BITSET", "AddressBank_PAL"),
        0x6B: CommandBuilder("func", "LoadBitmap", "$db", "BankAddress_BITMAP", "$dw", "$db"),

        0x6E: CommandBuilder("func", "PalClearBase", "Palette_PackedInterval", "Color"),
        0x6F: CommandBuilder("func", "PalClearAnim", "Palette_PackedInterval", "Color"),

        0x73: CommandBuilder("func", "PalCreatureLoad", "AddressBank_PALCREATURE", "CreatureSide"),

        0x76: CommandBuilder("func", "FadeBackgroundPalettesTowardsBuffer", "SmallBigLoop", "Palette_PackedInterval"),

        0x7E: CommandBuilder("func", "TransplantMap", "$dw", "$db", "$db", "$dw", "$db", "$db"),
        0x7F: CommandBuilder("func", "TransplantMapMask", "$dw", "$db", "$db", "$dw", "$db", "$db"),
        0x80: CommandBuilder("func", "TransplantTile", "$db", "$db", "$dw", "$db", "$db"),

        0x82: CommandBuilder("func", "HeroSetCamera"),
        0x83: CommandBuilder("block", "ScrollMap"),
        0x84: CommandBuilder("func", "SetCamera", "$db", "$db"),

        0x86: CommandBuilder("func", "ResetThenSingleThreadMode"),

        0x89: CommandBuilder("func", "LoadGame"),
        0x8A: CommandBuilder("func", "CopyLoadGame"),

        0x8C: CommandBuilder("func", "MusicMenu", "MusicMenu"),

        0x91: CommandBuilder("func", "NewGame", "db"),  # TODO boolean how?
        0x92: CommandBuilder("func", "SaveGame", "SaveGameTODO ?boolean 1,0 or other?"),
        0x93: CommandBuilder("func", "SceneNew"),
        0x94: CommandBuilder("func", "ExitSingleThreadMode"),

        0x97: CommandBuilder("func", "Reset"),
        0x98: CommandBuilder("func", "FormatChar", "Address_VARDB"),
        0x99: CommandBuilder("func", "Clear"),
        0x9A: CommandBuilder("func", "Close"),
        0x9B: CommandBuilder("func", "Icon", "PortraitAddressBank"),
        0x9C: CommandBuilder("func", "Menu", "TextMenu"),
        0x9D: CommandBuilder("func", "Open"),
        0x9E: CommandBuilder("func", "FormatWord", "Address_VARDW"),
        0x9F: CommandBuilder("func", "Write", "String????"),
        0xA0: CommandBuilder("func", "ToggleAlways", "Varbit", "BankAddress_SCRIPT_TOGGLEON", "$db", "$db", "$dw"),
        0xA1: CommandBuilder("func", "ToggleOnce", "Varbit", "BankAddress_SCRIPT_TOGGLEON", "$db", "$db", "$dw"),
        0xA2: CommandBuilder("func", "TriggerAlways", "Varbit", "BankAddress_SCRIPT_TRIGGERALREADYON", "$db", "$dw"),
        0xA3: CommandBuilder("func", "TriggerOnce", "Varbit", "BankAddress_SCRIPT_TRIGGERALREADYON", "$db", "$dw"),
        0xA4: CommandBuilder("func", "Treasure", "Varbit", "$db", "$db", "$dw"),
        0xA5: CommandBuilder("func", "VarBit", "Varbit", "MATH"),
        0xA6: CommandBuilder("func", "VarByteExpr", "Address_xVARBYTE", "MATH"),
        0xA7: CommandBuilder("func", "VarWordExpr", "Address_xVARWORD", "MATH"),
        0xA8: CommandBuilder("func", "NextGameCount"),
        0xA9: CommandBuilder("func", "SetGameCount", "db"),
        0xAA: CommandBuilder("func", "SetFarByte", "AddressBank_WRAM", "$db"),
        0xAB: CommandBuilder("func", "SetFarWord", "AddressBank_WRAM", "$dw"),
        0xAC: CommandBuilder("func", "SetByte", "RAMAddress", "$db"),
        0xAD: CommandBuilder("func", "SetWord", "RAMAddress", "$dw"),
        0xAE: CommandBuilder("func", "AndByte", "RAMAddress", "%db"),
        0xAF: CommandBuilder("func", "OrByte", "RAMAddress", "%db"),
    }

    def __init__(self):
        """Interprets main engine script commands"""
        global curpos

        self.pos = curpos
        self.whitespace = DepthTracker.getWhitespace(depthtracker)

        command = rom.getByte(curpos)
        if command in MagiScriptLine.commands:
            self.commandbuilder = MagiScriptLine.commands[command]
        else:
            raise KeyError("Unknown Command: {}: {:02X}".format(curpos, command))
        curpos = curpos + 1

        self.type = self.commandbuilder.type
        self.name = self.commandbuilder.name

        self.args = []
        for instruction in self.commandbuilder.instructions:
            try:
                self.args.extend(_interpretInstruction(instruction))
            except Exception:
                print("An error in command {} at {}".format(self.name, curpos))
                raise

        if(self.type == "block"):
            self.lines = []
            depthtracker.indent()
            while True:
                line = _interpretInstruction("func_"+self.name)
                if(line):
                    self.lines.extend(line)
                else:
                    break
            depthtracker.dedent()

        self.size = (curpos - self.pos).getPos()
        # print(self.getOutput())

    # getOutput functions
    def func(self):
        return "{}({})".format(self.name, ", ".join(self.args))

    def block(self):
        return "{}({}) {{\n{}\n{}}}".format(self.name, ", ".join(self.args), "\n".join(self.lines), self.whitespace)

    def getOutput(self):
        """Gets the pre-processed line of code"""
        out = ""
        bank = self.pos.getBank()
        address = self.pos.getAddress()
        if(address in sym.symbols[bank]):
            out = "\n".join([(label+"::") for label in sym.symbols[bank][address]])+"\n"
        return out + self.whitespace + getattr(self, self.type)()


class MagiScriptMath:
    """Expr (i.e. Math) engine script commands"""
    commands = {
        0x00: CommandBuilder("bitmatch", None, "math_address", "%db"),
        0x01: CommandBuilder("pointer", "c", "math_address"),
        0x02: CommandBuilder("pointer", "w", "math_address"),
        0x03: CommandBuilder("const", "DIRECTION"),
        0x04: CommandBuilder("const", "GAMECOUNT"),
        0x05: CommandBuilder("value", "c", "db"),
        0x06: CommandBuilder("value", "w", "dw"),
        0x07: CommandBuilder("op2", "&", "math", "math"),
        0x08: CommandBuilder("op2", "and", "math", "math"),
        0x09: CommandBuilder("op2", "or", "math", "math"),
        0x0A: CommandBuilder("op1_right", "not ", "math"),
        0x0B: CommandBuilder("op2", "+", "math", "math"),
        0x0C: CommandBuilder("op2", "-", "math", "math"),
        0x0D: CommandBuilder("op1_left", "++", "math"),
        0x0E: CommandBuilder("op1_left", "--", "math"),
        0x0F: CommandBuilder("op2", "==", "math", "math"),
        0x10: CommandBuilder("op2", "!=", "math", "math"),
        0x11: CommandBuilder("op2", ">", "math", "math"),
        0x12: CommandBuilder("op2", ">=", "math", "math"),
        0x13: CommandBuilder("op2", "<", "math", "math"),
        0x14: CommandBuilder("op2", "<=", "math", "math"),
        0x15: CommandBuilder("const", "RAND16"),
        0x16: CommandBuilder("bank", None, "math_bank", "math"),
    }

    def __init__(self):
        global curpos, rambank

        self.address = curpos

        command = rom.getByte(curpos)
        if command in MagiScriptMath.commands:
            self.commandbuilder = MagiScriptMath.commands[command]
        else:
            raise KeyError("Unknown Math Command: {}: {:02X}".format(curpos, command))
        curpos = curpos + 1

        self.type = self.commandbuilder.type
        self.name = self.commandbuilder.name

        self.args = []
        temp_rambank = rambank  # Push the wram bank
        for instruction in self.commandbuilder.instructions:
            self.args.extend(_interpretInstruction(instruction))
        rambank = temp_rambank  # Pop the wram bank

        # print(self.getOutput())

    # getOutput functions
    def bitmatch(self):
        # TODO - use direction constants?
        return "bitmatch(c[{}], c{})".format(self.args[0], self.args[1])

    def const(self):
        return self.name

    def pointer(self):
        return "{}[{}]".format(self.name, self.args[0])

    def value(self):
        return "{}{}".format(self.name, self.args[0])

    def op2(self):
        return "({} {} {})".format(self.args[0], self.name, self.args[1])

    def op1_left(self):
        return "{}{}".format(self.args[0], self.name)

    def op1_right(self):
        return "{}{}".format(self.name, self.args[0])

    def bank(self):
        return "bank({}, {})".format(self.args[0], self.args[1])

    def getOutput(self):
        """Gets the pre-processed line of code"""
        out = ""
        # if(self.labels):
        #    out = "\n".join(labels)+"\n"
        return out + getattr(self, self.type)()

    def __str__(self):
        return self.getOutput()


def _interpretInstruction(instruction: str) -> List[str]:

    global curpos, rambank

    def interpretBankAddress(bank: int, address: int, label: str) -> str:
        if(0x8000 <= address < 0xA000):
            raise NotImplementedError("VRAM not-implemented")
        if(0xE000 <= address < 0xFE00):
            raise KeyError("Address is Echo RAM!")
        if(0x0000 <= address < 0x4000) or (0xC000 <= address < 0xD000) or (0xFE00 <= address < 0x10000):
            if(bank == -1):  # Unknown bank
                bank = 0
            assert bank == 0, "Input Address ${:04X} should not have a non-zero bank (${:02X})".format(address, bank)
        if(bank == -1):
            if(0x4000 <= address < 0x8000):
                raise NotImplementedError("Unknown bank ROMX not implemented!")
            elif(0xA000 <= address < 0xC000):
                bank = 0  # Assume bank 0 by default for XRAM
            elif(0xD000 <= address < 0xE000):
                bank = rambank
            else:
                raise ValueError("Unknown Error ${:04X}".format(address))

        return "/".join(sym.getSymbol(bank, address, label))

    def getString(length: int) -> str:
        global curpos
        name = rom.getRawSection(curpos, length)
        curpos += length
        return '"' + encoding.decode(name) + '"'

    def getByte() -> int:
        global curpos
        val = rom.getByte(curpos)
        curpos += 1
        return val

    def getWord() -> int:
        global curpos
        val = rom.getWord(curpos)
        curpos += 2
        return val

    try:
        # DB
        if(instruction == "db"):
            val = getByte()
            return [str(val)]
        elif(instruction == "%db"):
            val = getByte()
            return ["%{:08b}".format(val)]
        elif(instruction == "$db"):
            val = getByte()
            return ["${:02X}".format(val)]

        # DW
        elif(instruction == "dw"):
            val = getWord()
            return [str(val)]
        elif(instruction == "$dw"):
            val = getWord()
            return ["${:04X}".format(val)]

        # Strings
        elif(instruction == "String????"):
            start = curpos
            end = curpos
            endchar = encoding.encode("????")

            looping = True  # do-while
            while looping:
                looping = rom.getRawSection(end, 1) != endchar
                end += 1

            text = getString((end-start).getPos()-1)  # Remove the EOF ???? character since by definition the string is EOF-terminated
            curpos = end
            return[text]

        # BankAddress
        elif(instruction[:12] == "AddressBank_"):
            address = getWord()
            bank = getByte()
            label = instruction[12:]
            return [interpretBankAddress(bank, address, label)]
        elif(instruction[:12] == "BankAddress_"):
            bank = getByte()
            address = getWord()
            label = instruction[12:]
            return [interpretBankAddress(bank, address, label)]

        # Naked Address
        elif(instruction == "RAMAddress"):
            address = getWord()
            return [interpretBankAddress(0, address, "RAM")]  # Assume it is bank 0 of WRAM or XRAM
        elif(instruction == "LocalAddress"):
            curbank = curpos.getBank()
            address = getWord()
            return [interpretBankAddress(curbank, address, "SCRIPT")]  # Stay in same bank
        elif(instruction == "ActorStateAddress"):
            address = getWord()
            return [interpretBankAddress(0x01, address, "AI")]  # Actor bank = $01
        elif(instruction == "07Address"):  # TODO - what is bank 07?
            address = getWord()
            return [interpretBankAddress(0x07, address, "BANK07")]  # Actor bank = $01
        elif(instruction == "HotspotTableAddress"):
            address = getWord()
            if address not in hotspots:
                hotspots.append(address)  # store a copy of all the unique hotspot addresses
            return [interpretBankAddress(0x21, address, "HOTSPOTX")]  # Hotspots are in 0x21
        elif(instruction == "TriggerTableAddress"):
            address = getWord()
            if address not in triggers:
                triggers.append(address)  # store a copy of all the unique triggers addresses
            return [interpretBankAddress(0x21, address, "TRIGGERX")]  # Triggers are in 0x21
        elif(instruction == "RandDelayAddress"):
            address = getWord()
            return [interpretBankAddress(0x01, address, "RANDDELAYTABLE")]  # RandDelay lookup tables are in 0x01
        elif(instruction[:8] == "Address_"):
            label = instruction[8:]
            address = getWord()
            return [interpretBankAddress(-1, address, label)]  # Bank 0/undefined

        # VARBIT
        elif(instruction == "Varbit"):
            address = getWord()
            mask = getByte()
            bit = mask.bit_length()-1  # Get a number 0-7
            assert 2**bit == mask  # Make sure the mask only refers to a single bit
            return["/".join(sym.getVarbit(address, bit))]

        # Packed Objects: Palette, Color, SmallBigLoop, SongFadeInterval, PortraitAddressBank
        elif(instruction == "Palette_PackedInterval"):
            packed = getByte()
            index = (packed & 0b11110000) >> 4
            number = (packed & 0b00001111) + 1
            return [str(index), str(number)]
        elif(instruction == "Color"):
            packed = getWord()
            if(packed in _shorthands_color):
                return [_shorthands_color[packed]]
            else:
                r, g, b, a = color.Color(packed).get_RGBA()
                return ["${:02X}".format(r), "${:02X}".format(g), "${:02X}".format(b), str(a)]
        elif(instruction == "SmallBigLoop"):
            packed = getByte()
            framedelay = ((packed & (0b11000000)) >> 6) + 1
            totaliterations = packed & (0b00111111)
            return [str(framedelay), "${:02X}".format(totaliterations)]
        elif(instruction == "SongFadeInterval"):
            val = getByte()
            return [str((val >> 4) + 1)]
        elif(instruction == "PortraitAddressBank"):
            val = getWord()
            bank    = val & 0b0000000000001111  # noqa
            address = val & 0b1111111111110000
            return [interpretBankAddress(bank, address, "PORTRAITBITMAP")]

        # MATH
        elif(instruction == "MATH"):
            math = MagiScriptMath()
            return ["#{}#".format(math)]
        elif(instruction == "math"):
            math = MagiScriptMath()
            return ["{}".format(math)]
        elif(instruction == "math_address"):
            address = getWord()
            return [interpretBankAddress(-1, address, "MATHADDRESS")]  # Unknown bank
        elif(instruction == "math_bank"):
            bank = getByte()
            rambank = bank  # Update the current WRAM bank
            return [str(bank)]

        # ENUMS
        elif(instruction == "LoadSideScroller_Scene"):
            val = getByte()
            if(val in _shorthands_loadsidescroller_scene):
                return ["SCROLLER_"+_shorthands_loadsidescroller_scene[val]]
            raise KeyError(val)
        elif(instruction == "SFXID"):
            val = getByte()
            return [musyx.sfxid[val]]
        elif(instruction == "SONGID"):
            val = getByte()
            return [musyx.songid[val]]
        elif(instruction == "CreatureSide"):
            val = getByte()
            return [["LEFT", "RIGHT"][val]]

        # Special Objects
        elif(instruction == "TextMenu"):
            size = getByte()
            assert 4 >= size >= 2

            out = []
            for i in range(size):
                out.extend(_interpretInstruction("BankAddress_SCRIPT"))
            return out
        elif(instruction == "MusicMenu"):
            size = getWord()
            songcount = getByte()
            assert size == 1 + songcount*0x0E
            songlist = []
            for i in range(songcount):
                songid = _interpretInstruction("SONGID")[0]
                name = getString(0x0D)
                songlist.extend([songid, name])
            print(songlist)
            return songlist
        elif(instruction == "RANDLONGJUMP"):
            size = getByte()
            addresslist = []
            for i in range(size):
                bank = getByte()
                address = getWord()
                addresslist.append(interpretBankAddress(bank, address, "SCRIPT"))
            return addresslist

        # FUNC HANDLERS
        elif(instruction == "func_Switch"):
            bank = getByte()
            if(bank == 0xFF):
                return []  # End
            val = _interpretInstruction("dw")[0]
            address = getWord()
            return ["{}Case({})".format(depthtracker.getWhitespace(), ", ".join([val, interpretBankAddress(bank, address, "SCRIPT")]))]
        elif(instruction == "func_ScrollMap"):
            frameN = getByte()
            if(bank == 0x00):
                return []  # End
            frameN = "${:02X}".format(val)
            xscroll = _interpretInstruction("$db")[0]
            yscroll = _interpretInstruction("$db")[0]
            return ["{}Case({})".format(depthtracker.getWhitespace(), ", ".join([frameN, xscroll, yscroll]))]

        raise KeyError("Unknown Instruction: " + instruction)
    except Exception:
        print("An exception occured interpreting: " + instruction)
        raise


def interpret(startpos: utils.BankAddress, endpos: utils.BankAddress) -> None:
    """Interprets raw bytecode of Magi Nation's scripting engine.
    Prints out the pre-processed code."""
    global curpos
    curpos = startpos
    lines = []
    print("\n"*3)
    try:
        while curpos != endpos:
            lines.append(MagiScriptLine())
            # out += " "*defaultdepth + x.command_out + "\n\n"
    finally:
        for line in lines:
            print(line.getOutput())


def buildHotspots() -> None:
    """Prints out a list of all the new hotspots identified.
    Creates files for all the new hotspots."""
    print("\n"*3)
    print("BUILD HOTSPOTS")
    for address in hotspots:
        label = "_".join(sym.getSymbol(0x21, address, "HOTSPOTX"))
        print(label)
        if(label[:8] == "HOTSPOTX"):  # Unlabelled hotspot to process
            hotspot.Hotspot.rom_to_file(rom, address, label[9:], sym)
            # TODO: rom_replace the hotspot files


def buildTriggers() -> None:
    """Prints out a list of all the new triggers identified.
    Creates files for all the new triggers."""
    print("\n"*3)
    print("BUILD TRIGGERS")
    for address in triggers:
        label = "_".join(sym.getSymbol(0x21, address, "TRIGGERX"))
        print(label)
        if(label[:8] == "TRIGGERX"):  # Unlabelled trigger to process
            hotspot.Trigger.rom_to_file(rom, address, label[9:], sym)
            # TODO: rom_replace the trigger files?
