import functools
import struct
import os
import projutils.encoding as encoding


def signed_byte(val: int) -> int:
    if val > 127:
        val -= 256
    return val


def unsigned_byte(val: int) -> int:
    if val < 0:
        val += 256
    return val


@functools.total_ordering
class BankAddress:
    """This object is used to more easily calculate bank/addresses.
    This object is only useable for ROM addresses (banks 0-0x7F, addresses 0x4000-0x8000)"""
    def _pos_to_bank_address(self, pos: int, end: bool) -> int:
        """Converts an absolute position to a bank address.
        the end var is used to handle 0x4000 vs 0x8000"""
        bank = pos//0x4000
        address = pos - bank*0x4000
        if end and (address == 0x0000):  # handle special case of 0x8000 which is not actually the next bank
            bank -= 1
            address += 0x4000
        if bank != 0:
            address += 0x4000
        return bank, address

    def _bank_address_to_pos(self, bank: int, address: int) -> int:
        """Converts a bank address to an absolute position"""
        return bank*0x4000 + address - (0x4000 if bank >= 1 else 0)

    def __init__(self, *args):
        """Creates a BankAddress object, which keeps track of a bank and address position.
        This object is only useable for ROM addresses (i.e. banks 0x00 - 0x7F, addresses 0x4000 - 0x8000 excepting bank 0
        You can pass either an offset of the rom file, a bank and address, or another BankAddress object"""
        if len(args) == 1:
            # Handle pos
            if isinstance(args[0], int):
                self.pos = args[0]
            if isinstance(args[0], BankAddress):
                self.pos = args[0].getPos()
        elif len(args) == 2:
            # BankAddress
            bank = args[0]
            address = args[1]
            if bank == 0:
                assert 0x4000 >= address >= 0x0000, "Only ROM bank addresses are supported!"
            else:
                assert bank < 0x80, "Only ROM bank addresses are supported!"
                assert 0x8000 >= address >= 0x4000, "Only ROM bank addresses are supported!"
            self.pos = self._bank_address_to_pos(bank, address)

    def __add__(self, other):
        if isinstance(other, int):
            return BankAddress(self.pos + other)
        if isinstance(other, BankAddress):
            return BankAddress(self.pos + other.getPos())

    def __radd__(self, other):
        return self.__add__(other)

    def __iadd__(self, other):
        return self.__add__(other)

    def __sub__(self, other):
        if isinstance(other, int):
            return BankAddress(self.pos - other)
        if isinstance(other, BankAddress):
            return self.pos - other.getPos()  # Return an integer (i.e. a size)

    # def __rsub__(self, other):
    #     if isinstance(other, int):
    #         return BankAddress(other - self.pos)

    def __isub__(self, other):
        return self.__sub__(other)

    def __str__(self):
        return "{:02X}:{:04X} ({:06X})".format(self.getBank(), self.getAddress(), self.getPos())

    def __repr__(self):
        return self.__str__()

    def __index__(self):
        return self.pos

    def __eq__(self, other):
        if isinstance(other, int):
            raise NotImplementedError
        if isinstance(other, BankAddress):
            return self.getPos() == other.getPos()
        raise NotImplementedError

    def __lt__(self, other):
        if isinstance(other, BankAddress):
            return self.getPos() < other.getPos()
        raise NotImplementedError

    def __hash__(self):
        return hash(self.getPos())

    def getPos(self) -> int:
        """Returns the absolute position of the BankAddress"""
        return self.pos

    def getBank(self, end: bool = False) -> int:
        """Returns the bank of the BankAddress.
        Set end=False if this BankAddress refers to a position/start of range.
        If end=False, then a position that is a multiple of 0x4000 will be treated as an address of 0x4000.
        Set end=True if this BankAddress refers to the end of a range.
        If end=True, then a position that is a mutiple of 0x4000 will be treated as an address of 0x8000"""
        return self._pos_to_bank_address(self.pos, end)[0]

    def getAddress(self, end: bool = False) -> int:
        """Returns the address of the BankAddress.
        Set end=False if this BankAddress refers to a position/start of range.
        If end=False, then a position that is a multiple of 0x4000 will be treated as an address of 0x4000.
        Set end=True if this BankAddress refers to the end of a range.
        If end=True, then a position that is a mutiple of 0x4000 will be treated as an address of 0x8000"""
        return self._pos_to_bank_address(self.pos, end)[1]


class Rom:
    """Contains a rom file and provides helper functions to read data."""

    ALPHA = os.path.dirname(__file__) + "/data/alpha.gbc"
    """Alpha Magi-Nation ROM file"""
    MN = os.path.dirname(__file__) + "/data/mn.gbc"
    """Magi-Nation ROM file"""
    KQ = os.path.dirname(__file__) + "/data/kq.gbc"
    """Keeper's Quest ROM file"""

    def __init__(self, *args: None | str | bytes | bytearray | tuple[bytes | bytearray, int]):
        """Initialize the Rom object.
        If no arguments are passed, mn.gbc will be loaded
        Otherwise, pass a string pointing to the file you wish to load.
        You can pass Rom.ALPHA, Rom.MN and Rom.KQ to load the alpha rom, the base rom and Keeper's Quest respectively.
        Lastly, you can create a pseudorom by passing a bytes object or bytesarray,
        in which case you can pass a second argument which determines the offset of the addresses."""
        if len(args) == 0:
            # no args, load mn.gbc by default
            args = [Rom.MN]
        if isinstance(args[0], str):
            with open(args[0], "rb") as f:
                self._rawdata = f.read()
                self._offset = 0
        elif isinstance(args[0], (bytes, bytearray)):
            self._rawdata = args[0]
            if(len(args) == 2):
                self._offset = Rom._determinePosition(args[1])
            else:
                self._offset = 0

    def _determinePosition(arg: BankAddress | int | tuple[int, int]) -> int:
        """Gets the position of the argument, be it an int, BankAddress or a bank and address"""
        # Valid: BankAddress, int(pos), (int(bank),int(address))
        if isinstance(arg, int):
            return arg
        if isinstance(arg, BankAddress):
            return arg.getPos()
        if len(arg) == 2:
            return BankAddress(arg[0], arg[1]).getPos()
        raise ValueError("Invalid input to Rom class: "+str(arg))

    def getSignedByte(self, pos: BankAddress | int | tuple[int, int]) -> int:
        """Gets the signed value of the byte located at pos."""
        pos = Rom._determinePosition(pos) - self._offset
        val = self._rawdata[pos]
        if val > 127:
            val -= 256
        return val

    def getByte(self, pos: BankAddress | int | tuple[int, int]) -> int:
        """Gets the value of the byte located at pos."""
        pos = Rom._determinePosition(pos) - self._offset
        return self._rawdata[pos]

    def getWord(self, pos: BankAddress | int | tuple[int, int]) -> int:
        """Gets the value of the word located at pos."""
        pos = Rom._determinePosition(pos) - self._offset
        return self._rawdata[pos]+self._rawdata[pos+1]*256

    def _retBankAddress(bank: int, address: int, getobj: bool) -> tuple[int, int] | BankAddress:
        if getobj:
            return BankAddress(bank, address)
        else:
            return (bank, address)

    def getAddressBank(self, pos: BankAddress | int | tuple[int, int], getobj: bool = False) -> tuple[int, int] | BankAddress:
        """Gets the AddressBank located at pos.
        Returns a tuple (bank, address), unless getobj=True,
        in which case a BankAddress object is returned."""
        pos = Rom._determinePosition(pos) - self._offset
        address = self.getWord(pos)
        bank = self.getByte(pos+2)
        return Rom._retBankAddress(bank, address, getobj)

    def getBankAddress(self, pos: BankAddress | int | tuple[int, int], getobj: bool = False) -> tuple[int, int] | BankAddress:
        """Gets the BanAddress located at pos.
        Returns a tuple (bank, address), unless getobj=True,
        in which case a BankAddress object is returned."""
        pos = Rom._determinePosition(pos)
        bank = self.getByte(pos)
        address = self.getWord(pos + 1)
        return Rom._retBankAddress(bank, address, getobj)

    def getString(self, pos: BankAddress | int | tuple[int, int], length: int) -> str:
        """Decodes a string of length "length" located at pos"""
        pos = Rom._determinePosition(pos)
        raw = self.getRawSection(pos, length)
        return encoding.decode(raw)

    def getRawSection(self, pos: BankAddress | int | tuple[int, int], length: int) -> bytes:
        """Returns raw bytes of length "length" at pos"""
        pos = Rom._determinePosition(pos) - self._offset
        return self._rawdata[pos:pos+length]

    def getRaw(self) -> bytes:
        """Returns the entire raw bytes of the Rom object"""
        return self._rawdata

    def __len__(self):
        return len(self._rawdata)


def AsmBytes(bytearr: int | list | bytes | bytearray, split: int = 16) -> str:
    """Given a bytearray, bytes, list or int, returns the text format that you would add to an asm file
    If split > 0, then it will write entire lines with maximum "split" entries per lines
    If split == 0, then it will just write the raw bytes without any line data"""
    if isinstance(bytearr, int):
        bytearr = [bytearr]
    for value in bytearr:
        assert 256 > value >= 0, "Out of range error"
    if split:
        out = ""
        i = 0
        while i < len(bytearr):
            if out:
                out += "\n"
            out += "    db "
            out += ", ".join(["${:02X}".format(bytearr[j]) for j in range(i, min(i+split, len(bytearr)))])
            i += split
        return out
    else:
        return ", ".join(["${:02X}".format(j) for j in bytearr])


def AsmWords(bytearr: int | list | bytes | bytearray, split: int) -> str:
    """Given a bytearray, bytes, list or int, returns the text format that you would add to an asm file
    Assumes each list entry contains a 16-bit number. For bytearray/bytes, it will automatically convert 2 bytes into 1 word
    If split > 0, then it will write entire lines with maximum "split" entries per lines
    If split == 0, then it will just write the raw bytes without any line data"""
    if isinstance(bytearr, int):
        bytearr2 = [bytearr]
    elif isinstance(bytearr, list):
        bytearr2 = bytearr
    elif isinstance(bytearr, (bytes, bytearray)):
        assert len(bytearr) % 2 == 0
        bytearr = bytearray(bytearr)
        bytearr2 = [int(bytearr[i]) + int(bytearr[i+1])*256 for i in range(0, len(bytearr), 2)]
    for value in bytearr2:
        assert 256**2 > value >= 0
    if split:
        out = ""
        i = 0
        while i < len(bytearr2):
            if out:
                out += "\n"
            out += "    dw "
            out += ", ".join(["${:04X}".format(bytearr2[j]) for j in range(i, min(i+split, len(bytearr2)))])
            i += split
        return out
    else:
        return ", ".join(["${:04X}".format(j) for j in bytearr2])


def PackWords(data: list[int] | int) -> bytes:
    """Pack a single 16-bit integer, or a list of 16-bit integers."""
    if isinstance(data, list):
        return struct.pack('<'+'H'*len(data), *data)
    if isinstance(data, int):
        return struct.pack('<H', data)
    raise TypeError


def PackBytes(data: list[int] | int) -> bytes:
    """Pack a single 8-bit integer, or a list of 8-bit integers."""
    if isinstance(data, list):
        return struct.pack('B'*len(data), *bytes(data))
    if isinstance(data, int):
        return struct.pack('B', data)
    raise TypeError


class SymFile:
    """A helper object to find symbols from the asm project.
    The object contains all the labels in the following format:
    self.symbols[bank][address] = [label1, label2].
    Varbits are assumed to have a label name of LABEL_X, where X is the bit (0-7)"""
    def __init__(self, file: str = "game.sym"):
        """A helper object to find symbols from the asm project.
        The object contains all the labels in the following format:
        self.symbols[bank][address] = [label1, label2].
        Varbits are assumed to have a label name of LABEL_X, where X is the bit (0-7)"""
        self.symbols = {}  # .sym file contents
        for i in range(0x7f):
            self.symbols[i] = {}
        if file is None:
            return
        with open(file, "r") as f:
            for line in f.readlines():
                if line[0] == ";":
                    continue
                bank = int(line[0:2], 16)
                address = int(line[3:7], 16)
                label = line[8:-1]
                self.addSymbol(bank, address, label)

    def hasSymbol(self, bank: int, address: int) -> bool:
        return address in self.symbols[bank]

    def delSymbol(self, bank: int, address: int) -> None:
        """Deletes any labels that may exist at a specified address"""
        self.symbols[bank].pop(address, None)

    def replaceSymbol(self, bank: int, address: int, label: str) -> None:
        """Deletes all previous labels at a specified address (if present) and replaces it with a new label"""
        self.symbols[bank][address] = [label]

    def addSymbol(self, bank: int, address: int, label: str) -> bool:
        """Adds a label to the specified address. Returns True if there is no other label at that address."""
        if address in self.symbols[bank]:
            self.symbols[bank][address].append(label)
            return False
        else:
            self.symbols[bank][address] = [label]
            return True

    def getSymbol(self, bank: int, address: int, defaultlabel: str) -> list[str]:
        """Get the labels for a bankaddress
        If there is no label, a label will be generated using defaultlabel"""
        if address not in self.symbols[bank]:
            label = "{}_{:02X}_{:04X}".format(defaultlabel, bank, address)
            self.symbols[bank][address] = [label]
        return self.symbols[bank][address]

    def getVarbit(self, address: int, bit: int) -> list[str]:
        """Gets the Varbits for a given address and bit position
        Varbits are written as LABEL_X, where X = 0-7 and represent the bit.
        Varbits are always in Bank 0
        If the Varbit does not exist, a default label will be generated"""
        def defaultLabel():
            return "{}_{:02X}_{:04X}_{}".format("xBIT", bank, address, str(bit))

        bank = 0
        if address not in self.symbols[bank]:
            self.symbols[bank][address] = [defaultLabel()]
            return [defaultLabel()]
        else:
            # We have at least one label. Search for the one matching the varbit
            searchparam = "_"+str(bit)
            matches = []
            for symbol in self.symbols[bank][address]:
                if symbol[-2:] == searchparam:
                    matches.append(symbol)
            if matches:
                return matches
            # not found, add the label
            self.symbols[bank][address].append(defaultLabel())
            return [defaultLabel()]


class MusyXIDs:
    """A helper object that gets the SFX and SONG enum labels"""
    def __init__(self, file: str = "autogenerated/musyx/SoundIDs.asm"):
        self.songid = {}
        self.sfxid = {}
        try:
            with open(file, "r") as f:
                for line in f.readlines():
                    params = line.split("EQU")
                    if len(params) == 2:
                        var = params[0].lstrip().rstrip()
                        val = int(params[1].lstrip().rstrip())
                        if var[:5] == "SFXID":
                            self.sfxid[val] = var
                        elif var[:6] == "SONGID":
                            self.songid[val] = var
                        else:
                            raise KeyError("Unknown line in SoundID.asm: {}".format(line))
        except FileNotFoundError:
            print("\nFile autogenerated/musyx/SoundIDs.asm not found! Try compiling musyx first (make musyx)\n")
            raise
