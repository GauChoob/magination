from __future__ import annotations
import re
import projutils.utils as utils
from typing import Union
import projutils.rle as rle
import pathlib


class FileContentsSerializer:
    def __init__(self):
        self.compression_mode: str = None
        self.size: int = None

    def _handle_rle_from_rom(self, rom: utils.Rom, address: utils.BankAddress, compressed: bool, default_size: int):
        if compressed:
            start = address.getPos()
            data, self.compression_mode, ori_compressed, end = rle.decompress_rle(rom, start, False)
            self.size = end - start
        else:
            data = rom.getRawSection(address, default_size)
            self.size = default_size
        return data

    @classmethod
    def init_from_rom(cls, rom: utils.Rom, address: utils.BankAddress) -> FileContentsSerializer:
        raise NotImplementedError

    def _handle_rle_from_original_file(self, filename: Union[str, pathlib.PurePath]):
        match = re.search('RLE(.)', filename)
        if match:
            self.compression_mode = match.group(1)

    @classmethod
    def init_from_original_file(cls, filename: Union[str, pathlib.PurePath]) -> FileContentsSerializer:
        raise NotImplementedError

    def _handle_rle_from_processed_file(self, filename: Union[str, pathlib.PurePath]):
        with open(filename, 'rb') as f:
            data = f.read()
        self.size = len(data)
        if filename.endswith('.rle'):
            data, self.compression_mode, ori_compressed, end = rle.decompress_rle(data, 0, False)
        return data

    @classmethod
    def init_from_processed_file(cls, filename: Union[str, pathlib.PurePath]) -> FileContentsSerializer:
        raise NotImplementedError

    def size(self) -> int:
        return self.size

    def save_original_file(self, filename: Union[str, pathlib.PurePath]) -> None:
        raise NotImplementedError

    def save_processed_file(self, filename: Union[str, pathlib.PurePath]) -> None:
        raise NotImplementedError

    def generate_include(self, filename: Union[str, pathlib.PurePath]) -> str:
        raise NotImplementedError
