from __future__ import annotations
import pathlib
from typing import Self
import projutils.filecontents as filecontents
import projutils.filereference as filereference
import projutils.fileregistry as fileregistry
import projutils.utils as utils
import projutils.asm as asm


class Scene(filecontents.FileContentsSerializer):

    def __init__(self):
        super().__init__()
        self.palette: filereference.FileReference = None
        self.bitset: filereference.FileReference = None
        self.pattern: filereference.FileReference = None
        self.metamap: filereference.FileReference = None
        self.collmap: filereference.FileReference = None
        self.labelfileregister: fileregistry.LabelFileRegister = None

    @classmethod
    def init_from_rom(cls, sym: utils.SymFile, rom: utils.Rom, address: utils.BankAddress) -> Self:
        self = cls()
        self.sym = sym
        self.palette = filereference.FileReference.create_from_address('PAL', rom, rom.getAddressBank(address + 0, True), sym)
        self.bitset = filereference.FileReference.create_from_address('BITSET', rom, rom.getAddressBank(address + 3, True), sym)
        self.pattern = filereference.FileReference.create_from_address('PATTERN', rom, rom.getAddressBank(address + 6, True), sym)
        self.metamap = filereference.FileReference.create_from_address('METAMAP', rom, rom.getAddressBank(address + 9, True), sym)
        self.collmap = filereference.FileReference.create_from_address('COLLMAP', rom, rom.getAddressBank(address + 12, True), sym)
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath, labelfileregister: fileregistry.LabelFileRegister) -> Self:
        self = cls()
        self.labelfileregister = labelfileregister
        asmfile = asm.AsmFile(filename)
        attrs = ['palette', 'bitset', 'pattern', 'metamap', 'collmap']
        for line in asmfile.lines:
            if not isinstance(line, asm.AddressBankLine):
                assert line.size == 0
                continue
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

    def load_references_from_rom(self) -> None:
        self.palette.load_contents_from_rom(8*4)
        self.bitset.load_contents_from_rom()
        self.bitset.contents.load_references_from_rom()
        self.pattern.load_contents_from_rom()
        self.metamap.load_contents_from_rom()
        self.collmap.load_contents_from_rom()

    def load_references_from_original_file(self) -> None:
        self.palette.load_contents_from_original_file()
        self.bitset.load_contents_from_original_file(self.labelfileregister)
        self.bitset.contents.load_references_from_original_file()
        self.pattern.load_contents_from_original_file()
        self.metamap.load_contents_from_original_file(self.labelfileregister)
        self.collmap.load_contents_from_original_file(self.labelfileregister)

    def load_references_from_processed_file(self) -> None:
        self.palette.load_contents_from_processed_file()
        self.bitset.load_contents_from_original_file()
        self.bitset.contents.load_references_from_processed_file()
        self.pattern.load_references_from_processed_file()
        self.metamap.load_contents_from_original_file()
        self.collmap.load_contents_from_original_file()
