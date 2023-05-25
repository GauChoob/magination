import pathlib
from typing import Self
from projutils.filecontents import FileContentsSerializer
from projutils.filereference import FileReference
from projutils.fileregistry import LabelFileRegister
from projutils.utils import Rom, BankAddress, SymFile
import projutils.asm as asm


class Scene(FileContentsSerializer):

    def __init__(self):
        self.palette: FileReference = None
        self.bitset: FileReference = None
        self.pattern: FileReference = None
        self.metamap: FileReference = None
        self.collmap: FileReference = None
        self.labelfileregister: LabelFileRegister = None

    @classmethod
    def init_from_rom(cls, sym: SymFile, rom: Rom, address: BankAddress) -> Self:
        self = cls()
        self.sym = sym
        self.palette = FileReference.create_from_address('PAL', rom, rom.getAddressBank(address + 0, True), sym)
        self.bitset = FileReference.create_from_address('BITSET', rom, rom.getAddressBank(address + 3, True), sym)
        self.pattern = FileReference.create_from_address('PATTERN', rom, rom.getAddressBank(address + 6, True), sym)
        self.metamap = FileReference.create_from_address('METAMAP', rom, rom.getAddressBank(address + 9, True), sym)
        self.collmap = FileReference.create_from_address('COLLMAP', rom, rom.getAddressBank(address + 12, True), sym)
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath, labelfileregister: LabelFileRegister) -> Self:
        self = cls()
        self.labelfileregister = labelfileregister
        asmfile = asm.AsmFile(filename)
        attrs = ['palette', 'bitset', 'pattern', 'metamap', 'collmap']
        for line in asmfile.lines:
            if not isinstance(line, asm.AddressBankLine):
                assert line.size == 0
            attr = attrs.pop(0)
            setattr(self, attr, self.labelfileregister.files[line.label_name])
        assert len(attrs) == 0
        return self

    def size(self) -> int:
        return 15

    def save_original_file(self, filename: str | pathlib.PurePath) -> None:
        with open(filename, 'w') as f:
            f.write('\n'.join([
                '    AddressBank {}'.format(ref.label_name)
                for ref in [
                    self.palette,
                    self.bitset,
                    self.pattern,
                    self.metamap,
                    self.collmap
                    ]]))

    def generate_include(self, filename: str | pathlib.PurePath) -> str:
        return '    INCLUDE "{}"'.format(filename)
