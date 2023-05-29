from __future__ import annotations
import os
import pathlib
import re


def castNumber(input: str) -> int:
    """Converts a string representing a number into an int"""
    if input[0] == "-":
        return -castNumber(input[1:])
    elif input[0] == "%":
        return int(input[1:], 2)
    elif input[0] == "$":
        return int(input[1:], 16)
    else:
        return int(input, 10)


def remove_comments(line: str) -> str:
    """Strips out the comment from a line"""
    i = line.find(";")
    if i >= 0:
        line = line[:i]
    return line


class AsmLine:

    UNKNOWN_SIZE = 0x10000

    def __init__(self, address: int, size: int, raw: str):
        """Metadata about a line of text in the .asm file"""
        self.address = address
        self.size = size
        self.raw = raw

    def __str__(self):
        return self.raw

    def __repr__(self):
        return '${:04X}, ${:02X}, {}'.format(self.address, self.size, self.raw)

    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        raise NotImplementedError

    @staticmethod
    def validate(line: str) -> bool:
        raise NotImplementedError


class EmptyLine(AsmLine):
    """\n
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        self = cls(cur_address, 0, line)
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return line.strip() == ''


class SectionLine(AsmLine):
    """SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        reg = re.match(r'SECTION "[^"]*", ROMX\[([$%]?[\dA-F]*)\]', line)
        if reg:
            new_address = castNumber(reg.group(1))
        else:
            new_address = cur_address
        self = cls(new_address, 0, line)
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return line.startswith('SECTION "')


class LabelLine(AsmLine):
    """
    Label:
    Label::
    .SubLabel
    .SubLabel:
    .SubLabel::
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        self = cls(cur_address, 0, line)

        reg = cls.validate(line)
        self.label_name = reg.group(2) or reg.group(3)
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return re.match(r'(\s*(\.[a-zA-Z_][\w.]*):{0,2}|([a-zA-Z_][\w.]*)::?)', line)


class AutoCommentLine(AsmLine):
    """
    An automatically generated comment
    ld a, 3 ; $4000: $AF $BC $54
    Blahblahblah ; $4000: $AF $BC $54
    BankAddress 3 ; $4000: $AF $BC $54
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        reg = cls.validate(line)
        new_address = castNumber(reg.group(1))
        raw_bytes = reg.group(2).split()
        raw_bytes = [castNumber(val) for val in raw_bytes]

        self = cls(new_address, len(raw_bytes), line)
        self.raw_bytes = raw_bytes
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return re.search(r'; (\$[\dA-F][\dA-F][\dA-F][\dA-F]):(( \$[\dA-F][\dA-F])+)\n$', line)


class CommentLine(AsmLine):
    """A comment line with no size"""
    pass


class ManualAddressCommentLine(CommentLine):
    """
    A manually written comment
        ; $5000
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        reg = cls.validate(line)
        new_address = castNumber(reg.group(1))

        self = cls(new_address, 0, line)
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return re.match(r'    ; (\$[\dA-F][\dA-F][\dA-F][\dA-F])\n', line)


class GenericCommentLine(CommentLine):
    """
    Any other line that is purely a comment
        ; blahblah
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        self = cls(cur_address, 0, line)
        return self

    @staticmethod
    def validate(line: str) -> bool:
        stripped_line = line.strip()
        return stripped_line != '' and stripped_line[0] == ';'


class RawBytesLine(AsmLine):
    """
        db $3F, $5F
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        line_parsed = remove_comments(line)
        line_parsed = line_parsed[line_parsed.find('db ') + 3:]
        line_parsed = line_parsed.strip()
        raw_bytes = line_parsed.split(',')
        self = cls(cur_address, len(raw_bytes), line)
        try:
            raw_bytes = [castNumber(val.strip()) for val in raw_bytes]
            self.raw_bytes = raw_bytes
        except ValueError:
            pass
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return (
            line.lstrip().startswith('db ') and
            remove_comments(line).find('"') == -1  # Fail lines that contain strings (NotImplemented)
        )


class RawWordsLine(AsmLine):
    """
        dw $3F00, $5F00
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        line_parsed = remove_comments(line)
        line_parsed = line_parsed[line_parsed.find('dw ') + 3:]
        line_parsed = line_parsed.strip()
        raw_words = line_parsed.split(',')
        self = cls(cur_address, 2*len(raw_words), line)
        try:
            raw_words = [castNumber(val.strip()) for val in raw_words]
            self.raw_words = raw_words
            self.raw_bytes = []
            for word in raw_words:
                self.raw_bytes.extend([word % 0x100, word//0x100])
        except ValueError:
            pass
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return (
            line.lstrip().startswith('dw ') and
            remove_comments(line).find('"') == -1  # Fail lines that contain strings (NotImplemented)
        )


class ImportFileLine(AsmLine):
    pass


class IncBinLine(ImportFileLine):
    """
        INCBIN "file"
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        line_parsed = remove_comments(line)
        filename = line_parsed.split('"')[1]
        try:
            size = os.path.getsize(filename)
        except FileNotFoundError:
            size = 0  # TODO
            pass
            # print('File not found: {}\nTry make-ing the extra files'.format(filename))
            # raise
        self = cls(cur_address, size, line)
        self.filename = filename
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return remove_comments(line).find('INCBIN') != -1


class IncludeLine(ImportFileLine):
    """
        INCLUDE "file"
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        line_parsed = remove_comments(line)
        filename = line_parsed.split('"')[1]
        self = cls(cur_address, cls.UNKNOWN_SIZE, line)
        self.filename = filename
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return remove_comments(line).find('INCLUDE') != -1


class ReferenceLine(AsmLine):
    pass


class AddressBankLine(ReferenceLine):
    """
        AddressBank Location
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        line_parsed = remove_comments(line).strip()
        label_name = line_parsed.split(' ')[1]
        self = cls(cur_address, 3, line)
        self.label_name = label_name
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return remove_comments(line).find('AddressBank') != -1


class BankAddressLine(ReferenceLine):
    """
        BankAddress Location
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        line_parsed = remove_comments(line).strip()
        label_name = line_parsed.split(' ')[1]
        self = cls(cur_address, 3, line)
        self.label_name = label_name
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return remove_comments(line).find('BankAddress') != -1


class LoadBitmapLine(AsmLine):
    """
        LoadBitmap $9000,BITMAP_Cald_Ashyn_Building,$10,$08
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        line_parsed = remove_comments(line).strip()
        params = line_parsed.split(' ', 1)[1].split(',')
        destination, source_label, width, height = (param.strip() for param in params)
        self = cls(cur_address, 7, line)
        self.destination = castNumber(destination)
        self.source_label = source_label
        self.width = castNumber(width)
        self.height = castNumber(height)
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return remove_comments(line).find('LoadBitmap') != -1


class UnknownLine(AsmLine):
    """
        Anything else; fallback
    """
    @classmethod
    def create(cls, cur_address: int, line) -> AsmLine:
        self = cls(cur_address, cls.UNKNOWN_SIZE, line)
        return self

    @staticmethod
    def validate(line: str) -> bool:
        return True


class LineFactory:
    def __init__(self):
        self.linetypes: tuple[AsmLine] = []

    def register_linetype(self, lineclass: AsmLine) -> None:
        """Adds a potential new AsmLine validatory and class. The order matters (highest to lowest priority)"""
        self.linetypes.append(lineclass)

    def parse_line(self, cur_address: int, line: str) -> tuple[int, AsmLine]:
        """Given an unknown line in a .asm file, determine the line type and build the corresponding AsmLine class

        Args:
            cur_address (int): Current address
            line (str): Unknown line

        Returns:
            tuple[int, AsmLine]: new address, line object
        """
        for linetype in self.linetypes:
            if linetype.validate(line):
                line_object = linetype.create(cur_address, line)
                cur_address = line_object.address + line_object.size
                return cur_address, line_object


line_factory = LineFactory()
line_factory.register_linetype(EmptyLine)
line_factory.register_linetype(SectionLine)
line_factory.register_linetype(LabelLine)
line_factory.register_linetype(AutoCommentLine)
line_factory.register_linetype(ManualAddressCommentLine)
line_factory.register_linetype(GenericCommentLine)
line_factory.register_linetype(RawBytesLine)
line_factory.register_linetype(RawWordsLine)
line_factory.register_linetype(IncBinLine)
line_factory.register_linetype(IncludeLine)
line_factory.register_linetype(AddressBankLine)
line_factory.register_linetype(BankAddressLine)
line_factory.register_linetype(LoadBitmapLine)
line_factory.register_linetype(UnknownLine)


class AsmFile:
    def __init__(self, path: str | pathlib.PurePath):
        self.path = path
        self.lines: list[AsmLine] = []

        with open(path, 'r') as f:
            address = 0x4000
            for line in f:
                address, line_object = line_factory.parse_line(address, line)
                self.lines.append(line_object)

    def __str__(self):
        return ''.join(str(line) for line in self.lines)
