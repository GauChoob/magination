from __future__ import annotations
from dataclasses import dataclass
import pathlib
from typing import Self
import projutils.filecontents as filecontents
import projutils.filereference as filereference
import projutils.fileregistry as fileregistry
import projutils.utils as utils
import projutils.asm as asm


class Tilemap(filecontents.FileContentsSerializer):

    def __init__(self):
        super().__init__()
        self.map: list[int] = []

    @classmethod
    def init_from_rom(cls, sym: utils.SymFile, rom: utils.Rom, address: utils.BankAddress, compressed: bool, size: int | None) -> Self:
        self = cls()
        self.map = self._handle_rle_from_rom(rom, address, compressed, size)
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath) -> Self:
        self = cls()
        self._handle_rle_from_original_file(filename)
        with open(filename, 'rb') as f:
            self.map = f.read()
        self._size = len(self.map)
        return self

    @classmethod
    def init_from_processed_file(cls, filename: str | pathlib.PurePath) -> Self:
        self = cls()
        self.map = self._handle_rle_from_processed_file(filename)
        return self

    def save_original_file(self, filename: str | pathlib.PurePath) -> None:
        filename = self._handle_rle_save_original_file(filename)
        with open(filename, 'wb') as f:
            f.write(self.map)

    def save_processed_file(self, filename: str | pathlib.PurePath) -> None:
        filename, data = self._handle_rle_save_processed_file(filename, self.map)
        with open(filename, 'wb') as f:
            f.write(data)

    def generate_include(self, filename: str | pathlib.PurePath) -> str:
        return '    INCBIN "{}"'.format(filename)


class MetaMap(filecontents.FileContentsSerializer):

    def __init__(self):
        super().__init__()
        self.width: int = None
        self.ymappad: int = None
        self.unk: int = None
        self.vstop: int = None
        self.approx_size: int = None
        self.map: filereference.FileReference = None

    @classmethod
    def init_from_rom(cls, sym: utils.SymFile, rom: utils.Rom, address: utils.BankAddress) -> Self:
        self = cls()
        self.sym = sym

        self.width = rom.getByte(address)
        self.ymappad = rom.getWord(address+1)
        self.unk = rom.getByte(address+3)
        self.vstop = rom.getByte(address+4)
        self.approx_size = rom.getWord(address+5)
        self.map = filereference.FileReference.create_from_address('TILE', rom, address+7, sym)
        self.map.load_contents_from_rom(True, None)
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath, file_registry: fileregistry.LabelFileRegister) -> Self:
        self = cls()
        asmfile = asm.AsmFile(filename)

        attrs = [
            ('width', asm.RawBytesLine),
            ('ymappad', asm.RawWordsLine),
            ('unk', asm.RawBytesLine),
            ('vstop', asm.RawBytesLine),
            ('approx_size', asm.RawWordsLine),
            (None, asm.IncBinLine),
            ]
        for line in asmfile.lines:
            if not isinstance(line, attrs[0][1]):
                assert line.size == 0
                continue
            attr, type = attrs.pop(0)
            if not issubclass(type, asm.IncBinLine):
                setattr(self, attr, getattr(line, 'raw_words', line.raw_bytes)[0])
            else:
                processed_filename = line.filename
                original_filename = fileregistry.filepath_reverser.reverse(processed_filename)
                self.map = filereference.FileReference.create_from_label('TILE_@', original_filename, processed_filename)
                self.map.load_contents_from_original_file()
                assert self.map.contents.compression_mode is not None
        assert len(attrs) == 0
        return self

    def size(self) -> int:
        return 7 + self.map.contents.size()

    def __str__(self):
        ret = []
        ret.append('    db {: <10}; wTilemap_Width'.format(self.width))
        ret.append('    dw ${:04X}     ; wTilemap_YMapPad'.format(self.ymappad))
        ret.append('    db {: <10};'.format(self.unk))
        ret.append('    db {: <10}; wTilemap_VStop'.format(self.vstop))
        ret.append('    dw ${:04X}     ; Uncompressed file size (excluding header)'.format(self.approx_size))
        real_size = len(self.map.contents.map)
        if(real_size == self.approx_size + 7):
            ret.append('    ; The imported file size was actually ${:04X} because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error'.format(real_size))
        ret.append('    INCBIN "{}"'.format(self.map.processed_path))
        return '\n'.join(ret)

    def save_original_file(self, filename: str | pathlib.PurePath) -> None:
        """Save both the .asm and the .tilemap"""
        self._set_bin_filenames(filename.split('.', 1)[0] + '.metatile.tilemap.rle')
        with open(filename, 'w') as f:
            f.write(str(self))
        self.map.contents.save_original_file(self.map.original_path)

    def generate_include(self, filename: str | pathlib.PurePath) -> str:
        return '    INCLUDE "{}"'.format(filename)

    def _set_bin_filenames(self, processed_filename: str | pathlib.PurePath) -> None:
        self.map.processed_path = processed_filename
        self.map.original_path = fileregistry.filepath_reverser.reverse(processed_filename, True)


class CollMap(filecontents.FileContentsSerializer):

    def __init__(self):
        super().__init__()
        self.width: int = None
        self.approx_size: int = None
        self.map: filereference.FileReference = None

    @classmethod
    def init_from_rom(cls, sym: utils.SymFile, rom: utils.Rom, address: utils.BankAddress) -> Self:
        self = cls()
        self.sym = sym

        self.width = rom.getByte(address)
        self.approx_size = rom.getWord(address+1)
        self.map = filereference.FileReference.create_from_address('TILE', rom, address+3, sym)
        self.map.load_contents_from_rom(True, None)
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath, file_registry: fileregistry.LabelFileRegister) -> Self:
        self = cls()
        asmfile = asm.AsmFile(filename)

        attrs = [
            ('width', asm.RawBytesLine),
            ('approx_size', asm.RawWordsLine),
            (None, asm.IncBinLine),
            ]
        for line in asmfile.lines:
            if not isinstance(line, attrs[0][1]):
                assert line.size == 0
                continue
            attr, type = attrs.pop(0)
            if not issubclass(type, asm.IncBinLine):
                setattr(self, attr, getattr(line, 'raw_words', line.raw_bytes)[0])
            else:
                processed_filename = line.filename
                original_filename = fileregistry.filepath_reverser.reverse(processed_filename)
                self.map = filereference.FileReference.create_from_label('TILE_@', original_filename, processed_filename)
                self.map.load_contents_from_original_file()
                assert self.map.contents.compression_mode is not None
        assert len(attrs) == 0
        return self

    def size(self) -> int:
        return 3 + self.map.contents.size()

    def __str__(self):
        ret = []
        ret.append('    db {: <10}; wTilemap_Width'.format(self.width))
        ret.append('    dw ${:04X}     ; Uncompressed file size (excluding header)'.format(self.approx_size))
        real_size = len(self.map.contents.map)
        if(real_size == self.approx_size + 3):
            ret.append('    ; The imported file size was actually ${:04X} because 3 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error'.format(real_size))
        ret.append('    INCBIN "{}"'.format(self.map.processed_path))
        return '\n'.join(ret)

    def save_original_file(self, filename: str | pathlib.PurePath) -> None:
        """Save both the .asm and the .tilemap"""
        self._set_bin_filenames(filename.split('.', 1)[0] + '.collision.tilemap.rle')
        with open(filename, 'w') as f:
            f.write(str(self))
        self.map.contents.save_original_file(self.map.original_path)

    def generate_include(self, filename: str | pathlib.PurePath) -> str:
        return '    INCLUDE "{}"'.format(filename)

    def _set_bin_filenames(self, processed_filename: str | pathlib.PurePath) -> None:
        self.map.processed_path = processed_filename
        self.map.original_path = fileregistry.filepath_reverser.reverse(processed_filename, True)


@dataclass
class TileAttribute:
    def __init__(self, attributes: int):
        """Loads the attributes:
        (pal, vbk, obp, hflip, vflip, priority)"""
        self.pal = (attributes & 0b00000111)
        self.vbk = (attributes & 0b00001000) >> 3
        self.obp = (attributes & 0b00010000) >> 4
        self.hflip = (attributes & 0b00100000) >> 5
        self.vflip = (attributes & 0b01000000) >> 6
        self.priority = (attributes & 0b10000000) >> 7

    def __str__(self):
        return '\n'.join([
            'pal {}'.format(self.pal),
            'vbk {}'.format(self.vbk),
            'obp {}'.format(self.obp),
            'hflip {}'.format(self.hflip),
            'vflip {}'.format(self.vflip),
            'priority {}'.format(self.priority),
        ])