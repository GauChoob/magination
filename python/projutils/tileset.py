from __future__ import annotations
import math
import pathlib
from typing import List, Tuple, Union
import projutils.png as png
import projutils.color as color
from projutils.filecontents import FileContentsSerializer
from projutils.color import Palette
from projutils.utils import SymFile, Rom, BankAddress


class Bitmap(FileContentsSerializer):

    def __init__(self):
        super().__init__()
        self.palette: Palette = Palette.greyscale_palette()
        self.pixels: List[List[int]] = None

    @staticmethod
    def _optimize_tilewidth_tileheight(data: bytes, tilewidth: int, tileheight: int) -> Tuple[int, int]:
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

    def _load_original(self, filename: Union[str, pathlib.PurePath]):
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
    def init_from_rom(cls, sym: SymFile, rom: Rom, address: BankAddress, compressed: bool, tilewidth: Union[int, None], tileheight: Union[int, None]) -> Bitmap:
        self = cls()
        if compressed:
            data = self._handle_rle_from_rom(rom, address, compressed, None)
        else:
            self._size = tilewidth*tileheight*0x10
            data = rom.getRawSection(address, self._size)
        self._load_processed(data, tilewidth, tileheight)
        return self

    @classmethod
    def init_from_original_file(cls, filename: Union[str, pathlib.PurePath]) -> Bitmap:
        self = cls()
        self._handle_rle_from_original_file(filename)
        self._load_original(filename)
        return self

    @classmethod
    def init_from_processed_file(cls, filename: Union[str, pathlib.PurePath], tilewidth: Union[int, None], tileheight: Union[int, None]) -> Bitmap:
        self = cls()
        data = self._handle_rle_from_processed_file(filename)
        self._load_processed(data, tilewidth, tileheight)
        return self

    def save_original_file(self, filename: Union[str, pathlib.PurePath]) -> None:
        filename = self._handle_rle_save_original_file(filename)
        with open(filename, 'wb') as f:
            w = png.Writer(self.width, self.height, alpha=False, bitdepth=2, palette=self.palette.get_png_palette())
            w.write(f, self.pixels)

    def save_processed_file(self, filename: Union[str, pathlib.PurePath]) -> None:
        data = self._to_processed_data()
        filename, data = self._handle_rle_save_processed_file(filename, data)
        with open(filename, 'wb') as f:
            f.write(data)
