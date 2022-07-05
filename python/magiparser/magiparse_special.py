from pyparsing import *
import sys, re
from magiparser.magiparse_primitives import *

class AlignHandler(ResultsHandler):
    # Align[ADDRESS]
    # Align[BANK:ADDRESS]
    #
    # This line will silently update the calculated address to the specified value.
    # It has no impact on the processed code except to update the commented address
    # The BANK is unused at the moment
    def post_init(self):
        if(len(self.tokens)==1):
            self.address = self.tokens[0].value
        else:
            self.bank = self.tokens[0].value
            self.address = self.tokens[1].value
        self.text = ""
        self.type = "align"
    def updateAddress(self,adc):
        adc.address = self.address
        self.depth = adc.depth
        return adc #overwrite address with the align address value
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
    def updateAddress(self,adc):
        self.address = adc.address
        self.depth = adc.depth
        adc.address += self.size
        return adc
    def getOutput(self):
        commentspacing = config.commentoffset - len(self.text)
        return "\n\n" + self.text + " "*commentspacing + "; ${:04X}".format(self.address)
RawAsm = (Literal("RawAsm").suppress()+Literal("#").suppress() + Number + Literal("##").suppress() + Regex(r"[^#]*") + Literal("#").suppress()).setParseAction(RawAsmHandler)


