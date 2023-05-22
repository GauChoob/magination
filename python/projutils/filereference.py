from __future__ import annotations
from typing import Dict, Union, Callable
import pathlib
import projutils.utils as utils
import projutils.sprite as sprite
import projutils.filecontents as filecontents


class FileContentsFactory:
    def __init__(self):
        self.identities: Dict[str, Callable] = {}

    def register_identity(self, identity: str, classobj: filecontents.FileContentsSerializer):
        self.identities[identity] = classobj


file_contents_factory = FileContentsFactory()
file_contents_factory.register_identity('SPRITE', sprite.Sprite)


class FileReference:
    """Contains a reference to a file (see identities)
    From a label, it contains a filename, both pre-processed and post-processed
    """

    def __init__(self, identity: str):
        self.identity = None
        if identity in file_contents_factory.identities:
            self.identity: filecontents.FileContentsSerializer = file_contents_factory.identities[identity]
        self.label_name: str = None
        self.original_path: Union[str, pathlib.PurePath] = None
        self.processed_path: Union[str, pathlib.PurePath] = None
        self.rom: utils.Rom = None
        self.bankaddress: utils.BankAddress = None
        self.size: int = None
        self.contents = None

    @classmethod
    def create_from_label(cls, label_name: str, original_path: Union[str, pathlib.PurePath], processed_path: Union[str, pathlib.PurePath]):
        identity = label_name[label_name.find('_')]  # e.g. SPRITE_Filename -> SPRITE
        self = cls(identity)
        self.label_name = label_name
        self.original_path = original_path
        self.processed_path = processed_path
        return self

    @classmethod
    def create_from_address(cls, identity: str, rom: utils.Rom, bankaddress: utils.BankAddress):
        self = cls(identity)
        self.rom = rom
        self.bankaddress = bankaddress
        return self

    def load_contents_from_rom(self):
        self.contents = self.identity.init_from_rom(self.rom, self.bankaddress)

    def load_contents_from_original_file(self):
        self.contents = self.identity.init_from_original_file(self.original_path)

    def load_contents_from_processed_file(self):
        self.contents = self.identity.init_from_processed_file(self.original_path)

    def __str__(self):
        return '{}: {}, {}'.format(self.label_name, self.original_path, self.processed_path)
