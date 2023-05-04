from pyparsing import Literal, MatchFirst, Regex
from magiparser.primitives import ResultsHandler, Number


class AlignHandler(ResultsHandler):
    # Align[ADDRESS]
    # Align[BANK:ADDRESS]
    #
    # This line will silently update the calculated address to the specified value.
    # It has no impact on the processed code except to update the commented address
    # The BANK is unused at the moment
    def post_init(self):
        if len(self.tokens) == 1:
            self.address = self.tokens[0].value
        else:
            self.bank = self.tokens[0].value
            self.address = self.tokens[1].value
        self.text = ""
        self.type = "align"
        self.indentation = 0

    def updateAddress(self, address: int, indentation: int) -> int:
        return self.address  # overwrite address with the align address value

    def getOutput(self):
        # Silent
        return ""


Align = MatchFirst([
                Literal("Align").suppress()+Literal("[").suppress() + Number + Literal("]").suppress(),
                Literal("Align").suppress()+Literal("[").suppress() + Number + Literal(":").suppress() + Number + Literal("]").suppress(),
            ]).setParseAction(AlignHandler)


class RawAsmHandler(ResultsHandler):
    # RawAsm#SIZE##RAW#
    #
    # This line contains raw assembler text of size SIZE that is directly copied
    def post_init(self):
        self.size = self.tokens[0].value
        self.text = self.tokens[1]
        self.type = "rawasm"

    def updateAddress(self, address: int, indentation: int) -> int:
        self.address = address
        self.indentation = indentation
        address += self.size
        return address

    def getOutput(self):
        return "\n\n" + self.formatAddAddressAsComment(self.text)


RawAsm = (Literal("RawAsm").suppress()+Literal("#").suppress() + Number + Literal("##").suppress() + Regex(r"[^#]*") + Literal("#").suppress()).setParseAction(RawAsmHandler)
