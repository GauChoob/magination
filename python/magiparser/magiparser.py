import pathlib
import re
from typing import Union
from magiparser.lines import Lines


def getObject(filein: Union[str, pathlib.PurePath]):
    with open(filein, "r") as f:
        f = f.read()
        commentparse = re.compile(";.*\n")
        f = commentparse.sub("", f)

    lines = Lines.parseString(f)[0]
    return lines


def convert(filein: Union[str, pathlib.PurePath], fileout: Union[str, pathlib.PurePath]):
    lines = getObject(filein)

    with open(fileout, "w") as f:
        f.write(lines.getOutput())
