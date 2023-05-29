from __future__ import annotations
import types
from typing import Callable
import pathlib
import projutils.utils as utils
import projutils.color as color
import projutils.sprite as sprite
import projutils.scene as scene
import projutils.pattern as pattern
import projutils.tileset as tileset
import projutils.tilemap as tilemap
import projutils.filecontents as filecontents
import projutils.textreplace as textreplace


class FileContentsFactory:
    def __init__(self):
        self.identities: dict[str, Callable] = {}

    def register_identity(self, identity: str, module: types.ModuleType, classname: str):
        self.identities[identity] = {'module': module, 'classname': classname}

    def load_identity(self, identity: str) -> None | filecontents.FileContentsSerializer:
        if identity not in self.identities:
            return None
        match = self.identities[identity]
        obj = getattr(match['module'], match['classname'])
        assert issubclass(obj, filecontents.FileContentsSerializer)
        return obj


# We refer to the classes by string name and use getattr during runtime to avoid circular imports
file_contents_factory = FileContentsFactory()
file_contents_factory.register_identity('SPRITE', sprite, 'Sprite')
file_contents_factory.register_identity('PATTERN', pattern, 'Pattern')
file_contents_factory.register_identity('BITMAP', tileset, 'Bitmap')
file_contents_factory.register_identity('BITSET', tileset, 'BitSet')
file_contents_factory.register_identity('PAL', color, 'Palette')
file_contents_factory.register_identity('TILE', tilemap, 'Tilemap')
file_contents_factory.register_identity('ATTR', tilemap, 'Tilemap')
# file_contents_factory.register_identity('ATTRTILE', tilemap, 'AttrTilemap')
# file_contents_factory.register_identity('TILEATTR', tilemap, 'TileAttrmap')
file_contents_factory.register_identity('COLLMAP', tilemap, 'CollMap')
file_contents_factory.register_identity('METAMAP', tilemap, 'MetaMap')
file_contents_factory.register_identity('SCENE', scene, 'Scene')


class FileReference:
    """Contains a reference to a file (see identities)
    From a label, it contains a filename, both pre-processed and post-processed
    """

    def __init__(self, identity: str):
        self.identity = file_contents_factory.load_identity(identity)
        self.label_name: str = None
        self.original_path: str | pathlib.PurePath = None
        self.processed_path: str | pathlib.PurePath = None
        self.rom: utils.Rom = None
        self.bankaddress: utils.BankAddress = None
        self.sym: utils.SymFile = None
        self.contents: filecontents.FileContentsSerializer = None

    @classmethod
    def create_from_label(cls, label_name: str, original_path: str | pathlib.PurePath, processed_path: str | pathlib.PurePath):
        identity = label_name.split('_', 1)[0]  # e.g. SPRITE_Filename -> SPRITE
        self = cls(identity)
        self.label_name = label_name
        self.original_path = original_path
        self.processed_path = processed_path
        return self

    @classmethod
    def create_from_address(cls, identity: str, rom: utils.Rom, bankaddress: utils.BankAddress, sym: utils.SymFile):
        self = cls(identity)
        self.rom = rom
        self.bankaddress = bankaddress
        self.sym = sym
        label_name = sym.getSymbol(bankaddress.getBank(), bankaddress.getAddress(), identity)
        if len(label_name) != 1:
            label_name = ['/'.join(label_name)]  # TODO - find a better way of handling?
        self.label_name = label_name[0]
        return self

    def load_contents_from_rom(self, *args):
        self.contents = self.identity.init_from_rom(self.sym, self.rom, self.bankaddress, *args)

    def load_contents_from_original_file(self, *args):
        self.contents = self.identity.init_from_original_file(self.original_path, *args)

    def load_contents_from_processed_file(self, *args):
        self.contents = self.identity.init_from_processed_file(self.processed_path, *args)

    def replace_rom_text(self):
        assert self.processed_path is not None
        start = self.bankaddress
        end = start + self.contents.size()
        textreplace.reset_files([start.getBank()])
        textreplace.replace_rom_text(start, end, self.label_name + '::', self.contents.generate_include(self.processed_path))

    def __str__(self):
        return '{}: {}, {}, {}'.format(self.label_name, self.original_path, self.processed_path, self.bankaddress)
