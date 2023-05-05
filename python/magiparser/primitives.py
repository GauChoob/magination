from pyparsing import ParserElement, Regex, Literal, MatchFirst
import sys

ParserElement.enablePackrat()
sys.setrecursionlimit(3000)


class ResultsHandler(object):
    DEFAULT_INDENTATION = 4
    DELTA_INDENTATION = 4
    COMMENT_OFFSET = 60
    DEFAULT_ADDRESS = 0x4000

    def __init__(self, s, locn, tokens):
        self.locn = locn
        self.tokens = tokens
        self.address = ResultsHandler.DEFAULT_ADDRESS
        self.indentation = ResultsHandler.DEFAULT_INDENTATION
        if hasattr(self, "post_init"):
            self.post_init()

    def updateAddress(self, address: int, indentation: int) -> int:
        """Updates the current address and indentation of the object"""
        raise NotImplementedError  # Defined in the subclasses
    
    def getOutput(self):
        """Returns the .asm data used to build the rom"""
        raise NotImplementedError  # Defined in the subclasses

    def formatAddAddressAsComment(self, text):
        """Add a comment with the current address to the specified text (end of the first line)"""

        # Find the first line of text
        end_of_first_line = text.find("\n")
        if end_of_first_line == -1:  # If not found, it means the text is single-line
            end_of_first_line = len(text)

        comment_spacing = self.COMMENT_OFFSET - min(end_of_first_line, self.COMMENT_OFFSET - 2)
        return text[:end_of_first_line] + " "*comment_spacing + "; ${:04X}".format(self.address) + text[end_of_first_line:]

    def formatAddIndent(self, text):
        """Add an indent based off of the current indentation"""
        return " "*self.indentation + text

    def __str__(self):
        return self.text

    def __repr__(self):
        return self.text


class AddressHandler(ResultsHandler):
    def post_init(self):
        self.text = "["+self.tokens[0]+"]"
        self.type = "address"

    def getOutput(self):
        return self.tokens[0]


address = Regex(r"(?<=\[).*?(?=\])")
Address = (Literal("[").suppress()+address+Literal("]").suppress()).setParseAction(AddressHandler)


class LabelHandler(ResultsHandler):
    def post_init(self):
        self.label = self.tokens[0]
        self.text = self.label
        self.type = "label"

    def updateAddress(self, address: int, indentation: int) -> int:
        self.address = address
        self.indentation = indentation
        return address

    def getOutput(self):
        return "\n\n"+self.label


label = Regex(r"\.?[a-zA-Z_][\w.]*:(:)?")
Label = label.setParseAction(LabelHandler)


class ExplicitRawHandler(ResultsHandler):
    def post_init(self):
        self.raw = self.tokens[0]
        self.text = "``" + self.raw + "``"
        self.type = "explicitraw"

    def getOutput(self):
        return self.raw


explicitraw = Regex(r"(?<=``).*?(?=``)")
ExplicitRaw = (Literal("``").suppress()+explicitraw+Literal("``").suppress()).setParseAction(ExplicitRawHandler)


class ImplicitRawHandler(ResultsHandler):
    def post_init(self):
        self.raw = self.tokens[0]
        self.text = '"' + self.raw + '"'
        self.type = "implicitraw"

    def getOutput(self):
        return self.raw


implicitraw = Regex(r"[^`(),#\[\]]+")
ImplicitRaw = implicitraw.setParseAction(ImplicitRawHandler)


class NumberHandler(ResultsHandler):
    def post_init(self):
        if self.tokens[0][0] == "%":
            self.value = int(self.tokens[0][1:], 2)
        elif self.tokens[0][0] == "$":
            self.value = int(self.tokens[0][1:], 16)
        else:
            self.value = int(self.tokens[0], 10)
        self.text = self.tokens[0]
        self.type = "num"

    def getOutput(self):
        return self.text


num_hex = Regex(r"\$[\dA-Fa-f]+")
num_bin = Regex(r"\%[01]+")
num_dec = Regex(r"[\d]+")
Number = MatchFirst([
    num_hex,
    num_bin,
    num_dec
    ]).setParseAction(NumberHandler)


class FuncNameHandler(ResultsHandler):
    def post_init(self):
        self.text = self.tokens[0]
        self.type = "funcname"

    def getOutput(self):
        return self.text


funcname = Regex(r"[a-zA-Z_]\w*")
FuncName = funcname.setParseAction(FuncNameHandler)


class TextHandler(ResultsHandler):
    def post_init(self):
        self.text = self.tokens[0]
        self.type = "text"

    def getOutput(self):
        return "\""+self.text+"\""


text = Regex(r"[🡆🡇🧴🪑💍🌟💰📜🥣🍯🍃🌻🌴🍄💎❓Σ◿🔑 !',\-.0-:/A-Za-z🔇🔊🛑🅐⭍]*")
Text = (Literal("\"").suppress()+address+Literal("\"").suppress()).setParseAction(TextHandler)
