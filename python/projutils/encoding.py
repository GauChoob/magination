import codecs
import string

# Inspired from https://stackoverflow.com/questions/38777818/how-do-i-properly-create-custom-text-codecs

# This module converts the charactermap used in the ROM to a string

# prepare map from bytestring to string
_encode_table = dict(
    [(letter, bytes((number,))) for number, letter in enumerate("🡆🡇🧴🪑💍🌟💰📜🥣🍯🍃🌻🌴🍄💎❓Σ◿🔑", 0x0C)] +
    [(" ", b' ')] +
    [("!", b'!')] +
    [("'", b'\'')] +
    [(letter, bytes((number,))) for number, letter in enumerate(",-.", 0x2C)] +
    [(letter, bytes((number,))) for number, letter in enumerate("0123456789:/", 0x30)] +
    [("?", b'?')] +
    [(letter, bytes((number,))) for number, letter in enumerate(string.ascii_uppercase, 0x41)] +
    [(letter, bytes((number,))) for number, letter in enumerate(string.ascii_lowercase, 0x61)] +
    [(letter, bytes((number,))) for number, letter in enumerate("🔇🔊🛑🅐⭍", 0xFB)]
    )

# prepare inverse map
_decode_table = {ord(v): k for k, v in _encode_table.items()}


def _magichar_encode(text: str) -> tuple[bytes, int]:
    return b''.join(_encode_table[x] for x in text), len(text)


def _magichar_decode(binary: bytes) -> tuple[str, int]:
    return ''.join(_decode_table[x] for x in binary), len(binary)


def _magichar_search_function(encoding_name) -> codecs.CodecInfo:
    return codecs.CodecInfo(_magichar_encode, _magichar_decode, name='magicharmap')


def decode(binary: bytes) -> str:
    """Decode a bytestring from the rom into a string"""
    return codecs.decode(binary, encoding='magicharmap')


def encode(text: str) -> bytes:
    """Encode a string into a bytestring compatible with the rom"""
    return codecs.encode(text, encoding='magicharmap')


codecs.register(_magichar_search_function)
