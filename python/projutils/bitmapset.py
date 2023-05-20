import os
import pathlib
import re
from typing import Union
import projutils.utils as utils
import projutils.config as config
import projutils.asm as asm

# Snippets containing data to put into the Sprite Attribute Table (OAM)

SPRITE_FOLDER = config.outdir + "sprites/"


class BitmapSet:

    class TilesetEntry:
        def __init__(self, vals: str, sym: utils.SymFile):
            """Builds a TilesetEntry object by reading the corresponding filedata"""
            vals = vals.split(",")
            self.dest = asm.castNumber(vals[0])
            self.source = vals[1]
            self.width = asm.castNumber(vals[2])
            self.height = asm.castNumber(vals[3])

    def __init__(self):
        self.bitmaps = [[], []]
        self.path = None
        self.sym = None

    @classmethod
    def _init_from_file(cls, path: Union[str, pathlib.PurePath], sym=None):
        """Builds a BitmapSet object by reading the corresponding filedata"""
        self = cls.__init__()
        if sym is None:
            sym = utils.SymFile()
        self.sym = sym
        self.path = path

        sizes = []
        with open(path, "r") as f:
            bitmap_index = -1
            for line in f.readline():
                # Remove comment
                rem = re.search(r";.*$", line)
                if rem:
                    line = line[:rem.start()]
                line = line.strip()
                if len(line) == 0:
                    continue
                arg, vals = line.split(" ")
                if arg == "db":
                    sizes.append(asm.castNumber(vals))
                    bitmap_index += 1
                elif arg == "LoadBitmap":
                    self.bitmaps[bitmap_index].append(cls.TilesetEntry(vals, sym))

        assert bitmap_index == 1  # Should have two db entries only
        assert len(self.bitmaps[0]) == self.size[0]  # assert the number of bitmaps corresponds to the number of entries
        assert len(self.bitmaps[1]) == self.size[1]

class BitmapSet:

    def __str__(self):
        pass

    def _initFromBitmapFile(self, filename: Union[str, pathlib.PurePath]):
        """Loads a .spr file"""

        raise NotImplementedError()
    
        def signed(val):
            if val > 127:
                val -= 256
            return val

        with open(filename, 'rb') as f:
            data = f.read()

        assert len(data) % 4 == 0

        self.entries = []
        for i in range(0, len(data), 4):
            y = signed(data[i+0])
            x = signed(data[i+1])
            tileid = data[i+2]
            attr = data[i+3]
            self.entries.append(Sprite.SpriteEntry(y, x, tileid, attr))

        self.start = 0
        self.end = len(data) + 1

    def _initFromRom(self, rom: utils.Rom, address: utils.BankAddress):
        """Given a ROM, will read the OAM data for 1 "sprite", which is a collection of 4-byte OAM entries that collectively make up a single image"""
        self.start = address
        curpos = address

        self.entries = []
        while True:
            y = rom.getSignedByte(curpos)
            curpos += 1
            if y == Sprite.EOF_BYTE:
                break
            x = rom.getSignedByte(curpos)
            curpos += 1
            tileid = rom.getByte(curpos)
            curpos += 1
            attr = rom.getByte(curpos)
            curpos += 1
            self.entries.append(Sprite.SpriteEntry(y, x, tileid, attr))

        self.end = curpos

    def __init__(self, *args):
        if isinstance(args[0], utils.Rom):
            self._initFromRom(args[0], args[1])
        elif isinstance(args[0], (str, pathlib.PurePath)):
            self._initFromBitmapFile(args[0])
        else:
            raise NotImplementedError()


    EOF_BYTE = -0x80  # Negative because y is signed

    def _initFromSpriteFile(self, filename: Union[str, pathlib.PurePath]):
        """Loads a .spr file"""

        def signed(val):
            if val > 127:
                val -= 256
            return val

        with open(filename, 'rb') as f:
            data = f.read()

        assert len(data) % 4 == 0

        self.entries = []
        for i in range(0, len(data), 4):
            y = signed(data[i+0])
            x = signed(data[i+1])
            tileid = data[i+2]
            attr = data[i+3]
            self.entries.append(Sprite.SpriteEntry(y, x, tileid, attr))

        self.start = 0
        self.end = len(data) + 1

    def _initFromRom(self, rom: utils.Rom, address: utils.BankAddress):
        """Given a ROM, will read the OAM data for 1 "sprite", which is a collection of 4-byte OAM entries that collectively make up a single image"""
        self.start = address
        curpos = address

        self.entries = []
        while True:
            y = rom.getSignedByte(curpos)
            curpos += 1
            if y == Sprite.EOF_BYTE:
                break
            x = rom.getSignedByte(curpos)
            curpos += 1
            tileid = rom.getByte(curpos)
            curpos += 1
            attr = rom.getByte(curpos)
            curpos += 1
            self.entries.append(Sprite.SpriteEntry(y, x, tileid, attr))

        self.end = curpos

    def __init__(self, *args):
        if isinstance(args[0], utils.Rom):
            self._initFromRom(args[0], args[1])
        elif isinstance(args[0], (str, pathlib.PurePath)):
            self._initFromSpriteFile(args[0])
        else:
            raise NotImplementedError()

    def __str__(self):
        return '\n'.join(str(entry) for entry in self.entries) + '\n    db $80'

    def __bytes__(self):
        return b''.join([bytes(entry) for entry in self.entries])

    def save(self, filename: Union[str, pathlib.PurePath]):
        """Saves the sprite as a .spr file. The EOF byte is not included"""
        os.makedirs(os.path.dirname(filename), exist_ok=True)
        with open(os.path.join(filename), 'wb') as f:
            f.write(bytes(self))

    def size(self):
        """Returns the size in bytesof the sprite oam data. Includes the EOF byte as part of the size"""
        return self.end - self.start
