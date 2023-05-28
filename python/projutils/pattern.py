from __future__ import annotations
import pathlib
from typing import Self
import projutils.filecontents as filecontents
import projutils.utils as utils


class Pattern(filecontents.FileContentsSerializer):

    def __init__(self):
        super().__init__()
        self.tilemap: list[list[int]] = []
        self.attrmap: list[list[int]] = []

    def _load_processed(self, data: bytes):
        assert len(data) == 0x800
        for i in range(0, 0x400, 4):
            self.tilemap.append([tile for tile in data[i:i+4]])
        for i in range(0x400, 0x800, 4):
            self.attrmap.append([tile for tile in data[i:i+4]])

    @staticmethod
    def _get_original_filenames(tilefile: str | pathlib.PurePath) -> tuple[str, str]:
        ext = "pattern.tilemap"
        assert tilefile[-len(ext):] == ext
        # Use tilemap and not attrmap
        attrfile = tilefile[:-7] + "attrmap"
        return tilefile, attrfile

    def _load_original(self, filename: str | pathlib.PurePath):
        tilefile, attrfile = self._get_original_filenames(filename)

        with open(tilefile, "rb") as f:
            tiledata = f.read()
        with open(attrfile, "rb") as f:
            attrdata = f.read()

        assert len(tiledata) == 0x400
        assert len(attrdata) == 0x400

        for i in range(0x100):
            coord = 0x40*(i//0x10) + 2*(i % 0x10)
            byte1 = tiledata[coord]
            byte2 = tiledata[coord + 1]
            byte3 = tiledata[coord + 0x20]
            byte4 = tiledata[coord + 0x21]
            self.tilemap.append([byte1, byte2, byte3, byte4])

        for i in range(0x100):
            coord = 0x40*(i//0x10) + 2*(i % 0x10)
            byte1 = attrdata[coord]
            byte2 = attrdata[coord + 1]
            byte3 = attrdata[coord + 0x20]
            byte4 = attrdata[coord + 0x21]
            self.attrmap.append([byte1, byte2, byte3, byte4])

    def _to_original_data(self) -> tuple[bytes, bytes]:
        tiledata = []
        for row in range(0x10):  # 0x10 metarows
            for tilerow in range(2):  # 2 rows in each metarow
                for column in range(0x10):  # 0x10 entries in each row
                    patternid = row*0x10 + column
                    tileid = 2*tilerow
                    tiledata.extend(self.tilemap[patternid][tileid:tileid + 2])

        attrdata = []
        for row in range(0x10):  # 0x10 metarows
            for tilerow in range(2):  # 2 rows in each metarow
                for column in range(0x10):  # 0x10 entries in each row
                    patternid = row*0x10 + column
                    tileid = 2*tilerow
                    attrdata.extend(self.attrmap[patternid][tileid:tileid + 2])

        return bytes(tiledata), bytes(attrdata)

    def _to_processed_data(self) -> bytes:
        tiledata = [self.tilemap[i//4][i % 4] for i in range(0x400)]
        attrdata = [self.attrmap[i//4][i % 4] for i in range(0x400)]
        return bytes(tiledata + attrdata)

    @classmethod
    def init_from_rom(cls, sym: utils.SymFile, rom: utils.Rom, address: utils.BankAddress, compressed: bool) -> Self:
        self = cls()
        data = self._handle_rle_from_rom(rom, address, compressed, 0x800)
        self._load_processed(data)
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath) -> Self:
        self = cls()
        self._handle_rle_from_original_file(filename)
        self._load_original(filename)
        return self

    @classmethod
    def init_from_processed_file(cls, filename: str | pathlib.PurePath) -> Self:
        self = cls()
        data = self._handle_rle_from_processed_file(filename)
        self._load_processed(data)
        return self

    def save_original_file(self, filename: str | pathlib.PurePath) -> None:
        tilefile, attrfile = self._get_original_filenames(filename)
        tilefile = self._handle_rle_save_original_file(tilefile)
        attrfile = self._handle_rle_save_original_file(attrfile)
        tiledata, attrdata = self._to_original_data()
        with open(tilefile, 'wb') as f:
            f.write(tiledata)
        with open(attrfile, 'wb') as f:
            f.write(attrdata)

    def save_processed_file(self, filename: str | pathlib.PurePath) -> None:
        data = self._to_processed_data()
        filename, data = self._handle_rle_save_processed_file(filename, data)
        with open(filename, 'wb') as f:
            f.write(data)

    def generate_include(self, filename: str | pathlib.PurePath) -> str:
        return '    INCBIN "{}"'.format(filename)
