from __future__ import annotations
import math
import pathlib
from typing import Self
import projutils.png as png
import projutils.asm as asm
from projutils.filecontents import FileContentsSerializer
from projutils.color import Palette
from projutils.utils import SymFile, Rom, BankAddress
import projutils.filereference as filereference
import projutils.fileregistry as fileregistry


class Bitmap(FileContentsSerializer):

    def __init__(self):
        super().__init__()
        self.palette: Palette = Palette.greyscale_palette()
        self.pixels: list[list[int]] = None

    @staticmethod
    def _optimize_tilewidth_tileheight(data: bytes, tilewidth: int, tileheight: int) -> tuple[int, int]:
        tilecount = len(data)//0x10

        # If width and height are defined, then we are already done
        if tilewidth and tileheight:
            assert tilecount == tilewidth*tileheight
            return tilewidth, tileheight

        # If only width is defined, check to see if tilecount/tilewidth makes a whole number for tileheight
        if tilewidth and (tileheight is None):
            if tilecount % tilewidth == 0:
                tileheight = tilecount//tilewidth
                return tilewidth, tileheight

        # Otherwise, try to find the most square arrangement of tiles
        tilewidth = math.ceil(math.sqrt(tilecount))
        while tilewidth > 1:
            if tilecount % tilewidth == 0:
                tileheight = tilecount//tilewidth
                return tilewidth, tileheight
            tilewidth -= 1

        # Otherwise, make a single row
        tilewidth = tilecount
        tileheight = 1
        return tilewidth, tileheight

    def _load_processed(self, data: bytes, tilewidth: int, tileheight: int):
        """Gets the 2D pixel list from raw data."""
        tilewidth, tileheight = self._optimize_tilewidth_tileheight(data, tilewidth, tileheight)

        self.width = tilewidth*8
        self.height = tileheight*8
        self.pixels = []
        for y in range(tileheight*8):
            row = []
            for x in range(tilewidth*8):
                tiley = y//8
                tilex = x//8
                tilerow = y % 8
                bitposition = x % 8
                offset = tiley*0x10*tilewidth + tilex*0x10 + tilerow*2

                shift = (7 - bitposition)
                mask = (1 << shift)
                color = ((data[offset] & mask) >> shift) + (((data[offset + 1] & mask) >> shift) << 1)

                row.append(color)
            self.pixels.append(row)

    def _load_original(self, filename: str | pathlib.PurePath):
        """Converts a .png file into pixel data
        Automatically removes any colorizing data"""
        png_reader = png.Reader(filename)
        self.width, self.height, pixels, meta = png_reader.read()
        assert self.width % 8 == 0
        assert self.height % 8 == 0
        self.pixels = [list(row) for row in pixels]
        self.palette = Palette(meta['palette'])
        png_reader.file.close()

    def _to_processed_data(self) -> bytes:
        assert self.width == len(self.pixels[0])
        assert self.height == len(self.pixels)
        assert self.width % 8 == 0
        assert self.height % 8 == 0

        data = []
        for i in range(self.height//8):
            for j in range(self.width//8):
                for ip in range(8):
                    low = 0
                    high = 0
                    for jp in range(8):
                        color = self.pixels[i*8+ip][j*8+jp]
                        colorlow = color & 0b01  # strip the palette
                        colorlow = colorlow << (7-jp)
                        colorhigh = (color & 0b10) >> 1  # strip the palette
                        colorhigh = colorhigh << (7-jp)
                        low = low | colorlow
                        high = high | colorhigh
                    data.extend([low, high])
        return bytes(data)

    @classmethod
    def init_from_rom(cls, sym: SymFile, rom: Rom, address: BankAddress, compressed: bool, tilewidth: int | None, tileheight: int | None) -> Self:
        self = cls()
        if compressed:
            data = self._handle_rle_from_rom(rom, address, compressed, None)
        else:
            self._size = tilewidth*tileheight*0x10
            data = rom.getRawSection(address, self._size)
        self._load_processed(data, tilewidth, tileheight)
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath) -> Self:
        self = cls()
        self._handle_rle_from_original_file(filename)
        self._load_original(filename)
        return self

    @classmethod
    def init_from_processed_file(cls, filename: str | pathlib.PurePath, tilewidth: int | None, tileheight: int | None) -> Self:
        self = cls()
        data = self._handle_rle_from_processed_file(filename)
        self._load_processed(data, tilewidth, tileheight)
        return self

    def save_original_file(self, filename: str | pathlib.PurePath) -> None:
        filename = self._handle_rle_save_original_file(filename)
        with open(filename, 'wb') as f:
            w = png.Writer(self.width, self.height, alpha=False, bitdepth=2, palette=self.palette.get_png_palette())
            w.write(f, self.pixels)

    def save_processed_file(self, filename: str | pathlib.PurePath) -> None:
        data = self._to_processed_data()
        filename, data = self._handle_rle_save_processed_file(filename, data)
        with open(filename, 'wb') as f:
            f.write(data)


class BitSet(FileContentsSerializer):

    def __init__(self):
        super().__init__()
        self.bitmaps: list[list[filereference.FileReference]] = [[], []]
        self.start: BankAddress = None
        self.end: BankAddress = None

    @classmethod
    def init_from_rom(cls, sym: SymFile, rom: Rom, address: BankAddress) -> Self:
        self = cls()
        self.sym = sym
        self.start = address

        curpos = address
        for i in range(2):
            bitmap_n = rom.getByte(curpos)
            curpos += 1
            for bitmap in range(bitmap_n):
                destination = rom.getWord(curpos)
                source_addr = rom.getWord(curpos+2)
                width = rom.getByte(curpos+4)
                height = rom.getByte(curpos+5)
                source_bank = rom.getByte(curpos+6)
                curpos += 7
                source = filereference.FileReference.create_from_address('BITMAP', rom, BankAddress(source_bank, source_addr), self.sym)
                source.destination = destination
                source.width = width
                source.height = height
                self.bitmaps[i].append(source)
        self.end = curpos
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath, fileregistry: fileregistry.LabelFileRegister) -> Self:
        self = cls()
        asmfile = asm.AsmFile(filename)
        asm_iter = iter(asmfile.lines)
        try:
            for vram in range(2):
                line = next(asm_iter)
                while not isinstance(line, asm.RawBytesLine):
                    assert line.size == 0
                    line = next(asm_iter)
                assert len(line.raw_bytes) == 1
                bitmap_n = line.raw_bytes[0]

                for bitmap in range(bitmap_n):
                    line = next(asm_iter)
                    while not isinstance(line, asm.LoadBitmapLine):
                        assert line.size == 0
                        line = next(asm_iter)
                    source = fileregistry.files[line.source_label]
                    source.destination = line.destination
                    source.width = line.width
                    source.height = line.height
                    self.bitmaps[vram].append(source)
        except StopIteration:
            raise EOFError('End of file reached before BitSet was fully loaded!')
        return self

    def size(self) -> int:
        return 2 + 7*(len(self.bitmaps[0]) + len(self.bitmaps[1]))

    def __str__(self):
        ret = []
        for vram in range(2):
            ret.append('    db {: <10}; VRAM{} entries'.format(len(self.bitmaps[vram]), vram))
            ret.append('')
            ret.append('    ; Destination, Source, Width, Height')
            for bitmap in self.bitmaps[vram]:
                ret.append('        LoadBitmap ${:04X}, {}, ${:02X}, ${:02X}'.format(bitmap.destination, bitmap.label_name, bitmap.width, bitmap.height))
            ret.append('')
        return '\n'.join(ret)

    def save_original_file(self, filename: str | pathlib.PurePath) -> None:
        with open(filename, 'w') as f:
            f.write(str(self))

    def generate_include(self, filename: str | pathlib.PurePath) -> str:
        return '    INCLUDE "{}"'.format(filename)

    def load_references_from_rom(self) -> None:
        for vram in range(2):
            for bitmap in self.bitmaps[vram]:
                bitmap.load_contents_from_rom(False, bitmap.width, bitmap.height)

    def load_references_from_original_file(self) -> None:
        for vram in range(2):
            for bitmap in self.bitmaps[vram]:
                bitmap.load_contents_from_original_file()

    def load_references_from_processed_file(self) -> None:
        for vram in range(2):
            for bitmap in self.bitmaps[vram]:
                bitmap.load_contents_from_processed_file(bitmap.width, bitmap.height)