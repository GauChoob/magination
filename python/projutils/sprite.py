import os
import pathlib
import struct
from typing import Union
import projutils.utils as utils
import projutils.config as config

# Snippets containing data to put into the Sprite Attribute Table (OAM)

SPRITE_FOLDER = config.outdir + "sprites/"


class Sprite:

    class SpriteEntry:
        def __init__(self, y, x, tileid, attr):
            self.y = y
            self.x = x
            self.tileid = tileid
            self.attr = attr

        def __bytes__(self):
            return struct.pack('bbBB', self.y, self.x, self.tileid, self.attr)

        def __str__(self):
            if True:  # TODO
                yunsign = self.y + 256 if self.y < 0 else self.y
                xunsign = self.x + 256 if self.x < 0 else self.x
                return '    db ${:02X}, ${:02X}, ${:02X}, ${:02X}'.format(yunsign, xunsign, self.tileid, self.attr)
            else:
                ysign = '-' if self.y < 0 else ' '
                xsign = '-' if self.x < 0 else ' '
                return '    db {}${:02X}, {}${:02X}, ${:02X}, ${:02X}'.format(ysign, abs(self.y), xsign, abs(self.x), self.tileid, self.attr)

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
