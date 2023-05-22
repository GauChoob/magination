import pathlib
from typing import List, Union
import projutils.filecontents as filecontents
import projutils.utils as utils

def file_to_pattern(filein: str, fileout: str):
    """converts .pattern.tilemap and .pattern.attrmap to .pattern
    filein: file.pattern.tilemap
    fileout: destination .pattern file"""
    ext = "pattern.tilemap"
    assert filein[-len(ext):] == ext
    # Use tilemap and not attrmap

    tilefile = filein
    attrfile = filein[:-7] + "attrmap"

    data = []

    with open(tilefile, "rb") as f:
        data.append(f.read())
    with open(attrfile, "rb") as f:
        data.append(f.read())

    assert len(data[0]) == 0x400
    assert len(data[1]) == 0x400

    with open(fileout, "wb") as f:
        for i in range(2):
            for j in range(0x100):
                coord = 0x40*(j//0x10) + 2*(j % 0x10)
                f.write(data[i][coord:coord + 2])
                coord += 0x20
                f.write(data[i][coord:coord + 2])


def data_to_file(savefile, data):
    """converts raw pattern data to .pattern.tilemap and .pattern.attrmap"""
    assert savefile[-7:] == "pattern"
    filenames = [savefile+".tilemap", savefile+".attrmap"]

    assert len(data) == 0x800

    for i in range(2):
        with open(filenames[i], "wb") as f:
            for j in range(0x10):  # 0x10 metarows
                for k in range(2):  # 2 rows in each metarow
                    for m in range(0x10):  # 0x10 entries in each row
                        coord = 0x400*i + 0x40*j + m*4 + k*2
                        f.write(data[coord:coord+2])


class Pattern(filecontents.FileContentsSerializer):

    def __init__(self):
        super().__init__()
        self.tilemap: List[List[int]] = []
        self.attrmap: List[List[int]] = []

    def _load_raw(self, data: bytes):
        assert len(data) == 0x800
        for i in range(0, 0x400, 4):
            self.tilemap.append([tile for tile in data[i:i+4]])
        for i in range(0x400, 0x800, 4):
            self.attrmap.append([tile for tile in data[i:i+4]])

    def _load_original(self, filename: Union[str, pathlib.PurePath]):
        """converts .pattern.tilemap and .pattern.attrmap to .pattern"""
        ext = "pattern.tilemap"
        assert filename[-len(ext):] == ext
        # Use tilemap and not attrmap

        tilefile = filename
        attrfile = filename[:-7] + "attrmap"

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

    @classmethod
    def init_from_rom(cls, rom: utils.Rom, address: utils.BankAddress, compressed: bool):
        self = cls()
        data = self._handle_rle_from_rom(rom, address, compressed, 0x800)
        self._load_raw(data)
        return self

    @classmethod
    def init_from_original_file(cls, filename: Union[str, pathlib.PurePath]):
        self = cls()
        self._load_original(filename)
        return self

    @classmethod
    def init_from_processed_file(cls, filename: Union[str, pathlib.PurePath]):
        self = cls()
        data = self._handle_rle_from_processed_file(filename)
        self._load_raw(data)
        return self

    def save_original_file(self, filename: Union[str, pathlib.PurePath]) -> None:
        raise NotImplementedError

    def save_processed_file(self, filename: Union[str, pathlib.PurePath]) -> None:
        raise NotImplementedError

    def generate_include(self, filename: Union[str, pathlib.PurePath]) -> str:
        raise NotImplementedError
