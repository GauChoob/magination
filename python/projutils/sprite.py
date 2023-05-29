from __future__ import annotations
import os
import pathlib
import struct
from typing import Self
import projutils.utils as utils
import projutils.config as config
import projutils.filecontents as filecontents

# Snippets containing data to put into the Sprite Attribute Table (OAM)

SPRITE_FOLDER = config.outdir + "sprites/"


class Sprite(filecontents.FileContentsSerializer):

    class SpriteEntry:
        def __init__(self, y, x, tileid, attr):
            self.y: int = y
            self.x: int = x
            self.tileid: int = tileid
            self.attr: int = attr

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

    def __init__(self):
        super().__init__()
        self.start = 0
        self.end = None
        self.entries: list[Sprite.SpriteEntry] = []

    @classmethod
    def init_from_rom(cls, sym: utils.SymFile, rom: utils.Rom, address: utils.BankAddress) -> Self:
        """Given a ROM, will read the OAM data for 1 "sprite", which is a collection of 4-byte OAM entries that collectively make up a single image"""
        self = cls()
        self.start = address

        curpos = address
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
        return self

    @classmethod
    def init_from_original_file(cls, filename: str | pathlib.PurePath) -> Self:
        """Loads a .spr file"""
        self = cls()

        with open(filename, 'rb') as f:
            data = f.read()

        assert len(data) % 4 == 0

        for i in range(0, len(data), 4):
            y = utils.signed_byte(data[i+0])
            x = utils.signed_byte(data[i+1])
            tileid = data[i+2]
            attr = data[i+3]
            self.entries.append(Sprite.SpriteEntry(y, x, tileid, attr))

        self.start = 0
        self.end = len(data) + 1
        return self

    def size(self) -> int:
        """Returns the size in bytesof the sprite oam data. Includes the EOF byte as part of the size"""
        return self.end - self.start

    def save_original_file(self, filename: str | pathlib.PurePath) -> None:
        """Saves the sprite as a .spr file. The EOF byte is not included"""
        os.makedirs(os.path.dirname(filename), exist_ok=True)
        with open(os.path.join(filename), 'wb') as f:
            f.write(bytes(self))

    def generate_include(self, filename: str | pathlib.PurePath) -> str:
        return '    INCSPRITE "{}"'.format(filename)

    def __str__(self):
        return '\n'.join(str(entry) for entry in self.entries) + '\n    db $80'

    def __bytes__(self):
        return b''.join([bytes(entry) for entry in self.entries])
