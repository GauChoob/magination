import os
import projutils.utils as utils
import projutils.config as config

HOTSPOT_FOLDER = config.outdir + "hotspot/"
TRIGGER_FOLDER = config.outdir + "trigger/"


class Hotspot:
    hotspot_shorthand = {
        0x00: "ALL",
        0x01: "NORTH",
        0x02: "SOUTH",
        0x03: "EAST",
        0x04: "WEST",
    }

    def file_to_hotspot(sourcefile: str, savefile: str):
        """Given a .hs source file, creates a .hs.asm file to be used for the final rom creation phase"""
        assert savefile[-6:] == "hs.asm"

        with open(sourcefile, "r") as f:
            lines = f.readlines()
        params = []
        for line in lines:
            line = line.lstrip().rstrip()
            if(len(line) == 0):
                continue
            condition, label = line.split(",")
            condition = condition.lstrip().rstrip()
            label = label.lstrip().rstrip()
            params.append([condition, label])

        with open(savefile, "w") as f:
            f.write(
                "    db {}\n".format(len(params)) +
                "\n".join(["    db HOTSPOT_TRIGGER_{}\n    BankAddress {}".format(condition, label) for condition, label in params])
            )

    def data_to_file(savefile: str, data: bytes | bytearray, sym: utils.SymFile) -> None:
        """Given raw data and a SymFile, creates a file named savefile."""
        assert savefile[-3:] == ".hs"

        size = int(data[0])
        assert len(data) == 1 + size*4

        params = []

        for i in range(size):
            condition = Hotspot.hotspot_shorthand[data[1+i*4+0]]
            bank = data[1+i*4+1]
            address = data[1+i*4+2]+data[1+i*4+3]*256
            params.append([condition, "_".join(sym.getSymbol(bank, address, "SCRIPTFROMHS"))])

        with open(savefile, "w") as f:
            f.write("\n".join([",".join(param) for param in params]))

    def rom_to_file(rom: utils.Rom, address: int, label: str, sym: utils.SymFile) -> int:
        """Given a rom file and its address, and a SymFile, creates a file named "label.hs".
        This function returns the position immediately after the end of the file."""
        size = rom.getByte(utils.BankAddress(0x21, address))
        os.makedirs(HOTSPOT_FOLDER, exist_ok=True)
        Hotspot.data_to_file(HOTSPOT_FOLDER+label+".hs", rom.getRawSection(utils.BankAddress(0x21, address), 1+size*4), sym)
        return address + size


class Trigger:
    trigger_shorthand = {
        0x00: "NORMAL",
        0x01: "CONFIG",
    }

    def file_to_trigger(sourcefile: str, savefile: str):
        """Given a .trig source file, creates a .trig.asm file to be used for the final rom creation phase"""
        assert savefile[-8:] == "trig.asm"

        with open(sourcefile, "r") as f:
            lines = f.readlines()
        params = []
        for line in lines:
            line = line.lstrip().rstrip()
            if(len(line) == 0):
                continue
            condition, label = line.split(",")
            condition = condition.lstrip().rstrip()
            label = label.lstrip().rstrip()
            params.append([condition, label])

        with open(savefile, "w") as f:
            f.write(
                "    db {}\n".format(len(params)) +
                "\n".join(["    db TRIGGER_{}\n    BankAddress {}".format(condition, label) for condition, label in params])
            )

    def data_to_file(savefile: str, data: bytes | bytearray, sym: utils.SymFile) -> None:
        """Given raw data and a SymFile, creates a file named savefile."""
        assert savefile[-5:] == ".trig"

        size = int(data[0])
        assert len(data) == 1 + size*4

        params = []

        for i in range(size):
            condition = Trigger.trigger_shorthand[data[1+i*4+0]]
            bank = data[1+i*4+1]
            address = data[1+i*4+2]+data[1+i*4+3]*256
            params.append([condition, "_".join(sym.getSymbol(bank, address, "SCRIPTFROMTRIG"))])

        with open(savefile, "w") as f:
            f.write("\n".join([",".join(param) for param in params]))

    def rom_to_file(rom: utils.Rom, address: int, label: str, sym: utils.SymFile) -> int:
        """Given a rom file and its address, and a SymFile, creates a file named "label.trig".
        This function returns the position immediately after the end of the file."""
        size = rom.getByte(utils.BankAddress(0x21, address))
        os.makedirs(TRIGGER_FOLDER, exist_ok=True)
        Trigger.data_to_file(TRIGGER_FOLDER+label+".trig", rom.getRawSection(utils.BankAddress(0x21, address), 1+size*4), sym)
        return address + size
