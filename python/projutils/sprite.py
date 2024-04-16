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

    @staticmethod
    def original_extension() -> str:
        raise '.spr'

    def __str__(self):
        return '\n'.join(str(entry) for entry in self.entries) + '\n    db $80'

    def __bytes__(self):
        return b''.join([bytes(entry) for entry in self.entries])


class SpriteOffsets:
    BASE: str = 'assets/sprites/spritebase.txt'

    def get_vbk(self, sprite_name: str) -> int:
        if sprite_name in self.bases:
            return int(self.bases[sprite_name] >= 0x100)
        return 0

    def get_tileoffset(self, sprite_name: str) -> int:
        if sprite_name in self.bases:
            return int(self.bases[sprite_name] % 0x100)
        return 0

    def __init__(self, path: str = BASE):
        self.bases = {}
        with open(path, 'r') as f:
            for line in f:
                line = line.strip()
                if line[0] == ';':
                    continue
                label, offset = line.split(',')
                offset = int(offset, 16)
                self.bases[label] = offset


class SpritePalettes:
    PAL: str = 'assets/sprites/spritepal.txt'
    FOLDER: str = 'assets/sprites/'
    BATTLEFX_FOLDER: str = FOLDER + 'battlefx/'
    DEFAULT_PAL: str = 'Generic'
    BATTLEFX_PAL: str = 'BattleFX'

    def register_battlefx(self) -> None:
        for dirpath, dirnames, filenames in os.walk(self.BATTLEFX_FOLDER):
            if dirnames:
                continue
            for filename in filenames:
                if not filename.endswith('.spr'):
                    continue
                if '_' in filename:
                    spritename = filename.split('_', 1)[0]
                else:
                    spritename = filename.split('.', 1)[0]
                self.sprite_pal_dict[spritename] = self.FOLDER + self.BATTLEFX_PAL + '.pal.png'

    def register_sprites(self) -> None:
        with open(self.PAL, 'r') as f:
            for line in f:
                line = line.strip()
                if line[0] == ';':
                    continue
                spritename, pal = line.split(',')
                self.sprite_pal_dict[spritename] = self.FOLDER + pal + '.pal.png'

    def get(self, sprite_name: str) -> str:
        if sprite_name in self.sprite_pal_dict:
            return self.sprite_pal_dict[sprite_name]
        return self.FOLDER + self.DEFAULT_PAL + '.pal.png'

    def __init__(self):
        self.sprite_pal_dict = {}
        self.register_battlefx()
        self.register_sprites()
