from pyparsing import ParserElement, Forward, Literal, MatchFirst, infixNotation, oneOf, opAssoc, ParseResults
import sys
from magiparser.primitives import ResultsHandler, Address, ImplicitRaw, ExplicitRaw, Number

ParserElement.enablePackrat()
sys.setrecursionlimit(3000)

MathOperand = Forward()
Math = Forward()


class MathOperandHandler(ResultsHandler):
    def updateAddress(self, address: int, indentation: int) -> int:
        self.address = address
        self.indentation = indentation

        address += self.size
        return address

    def formatGetOutput(self, output: str) -> str:
        """Formats a MathOperandHandler getOutput function by adding indentation and an address as a comment"""
        output = self.formatAddIndent(output)
        output = "\n" + self.formatAddAddressAsComment(output)
        return output


class CharAddressHandler(MathOperandHandler):
    def post_init(self):
        self.text = "c"+self.tokens[0].text
        self.type = "math_charaddress"
        self.size = 3

    def getOutput(self):
        output = "eCharAddress {}".format(self.tokens[0].getOutput())
        return self.formatGetOutput(output)


CharAddress = (Literal("c").suppress() + Address).setParseAction(CharAddressHandler)


class WordAddressHandler(MathOperandHandler):
    def post_init(self):
        self.text = "w"+self.tokens[0].text
        self.type = "math_wordaddress"
        self.size = 3

    def getOutput(self):
        output = "eWordAddress {}".format(self.tokens[0].getOutput())
        return self.formatGetOutput(output)


WordAddress = (Literal("w").suppress() + Address).setParseAction(WordAddressHandler)


class CharHandler(MathOperandHandler):
    def post_init(self):
        self.text = "c"+self.tokens[0].text
        self.type = "math_char"
        self.size = 2

    def getOutput(self):
        output = "eChar {}".format(self.tokens[0].getOutput())
        return self.formatGetOutput(output)


Char = MatchFirst([
    Literal("c").suppress() + Number,
    Literal("c(").suppress() + MatchFirst([ExplicitRaw, ImplicitRaw]) + Literal(")").suppress()
]).setParseAction(CharHandler)


class WordHandler(MathOperandHandler):
    def post_init(self):
        self.text = "w"+self.tokens[0].text
        self.type = "math_word"
        self.size = 3

    def getOutput(self):
        output = "eWord {}".format(self.tokens[0].getOutput())
        return self.formatGetOutput(output)


Word = MatchFirst([
    Literal("w").suppress() + Number,
    Literal("w(").suppress() + MatchFirst([ExplicitRaw, ImplicitRaw]) + Literal(")").suppress()
]).setParseAction(WordHandler)


class BitmatchHandler(MathOperandHandler):
    def post_init(self):
        self.text = "bitmatch("+self.tokens[0].text+","+self.tokens[1].text+")"
        self.type = "math_bitmatch"
        self.size = 4

    def getOutput(self):
        output = "eBitMatch {}, {}".format(self.tokens[0].tokens[0].getOutput(), self.tokens[1].tokens[0].getOutput())
        return self.formatGetOutput(output)


Bitmatch = (Literal("bitmatch(").suppress()+CharAddress+Literal(",").suppress()+Char+Literal(")").suppress()).setParseAction(BitmatchHandler)


class SpecialStateHandler(MathOperandHandler):
    def post_init(self):
        self.text = "DIRECTION"
        self.type = "math_DIRECTION"
        self.size = 1

    def getOutput(self):
        output = "eGetHeroDirection"
        return self.formatGetOutput(output)


SpecialState = Literal("DIRECTION").setParseAction(SpecialStateHandler)


class ProgressionStateHandler(MathOperandHandler):
    def post_init(self):
        self.text = "GAMECOUNT"
        self.type = "math_GAMECOUNT"
        self.size = 1

    def getOutput(self):
        output = "eGetGameCount"
        return self.formatGetOutput(output)


ProgressionState = Literal("GAMECOUNT").setParseAction(ProgressionStateHandler)


class Rand16Handler(MathOperandHandler):
    def post_init(self):
        self.text = "RAND16"
        self.type = "math_RAND16"
        self.size = 1

    def getOutput(self):
        output = "eRand16"
        return self.formatGetOutput(output)


Rand16 = Literal("RAND16").setParseAction(Rand16Handler)


class BankHandler(MathOperandHandler):
    def post_init(self):
        self.mathobj = MathGroupHandler(False, False, [self.tokens[1]])
        self.text = "bank("+self.tokens[0].text+","+self.mathobj.text+")"
        self.type = "math_bank"
        self.size = 2 + self.mathobj.size

    def updateAddress(self, address: int, indentation: int) -> int:
        self.address = address
        self.indentation = indentation

        address += 2
        indentation += self.DELTA_INDENTATION
        address = self.mathobj.updateAddress(address, indentation)

        return address

    def getOutput(self):
        output = "eBank {}".format(self.tokens[0].tokens[0].getOutput())
        output = self.formatGetOutput(output)
        output += "{}".format(self.mathobj.getOutput())
        return output


Bank = (Literal("bank(").suppress()+Char+Literal(",").suppress()+Math+Literal(")").suppress()).setParseAction(BankHandler)


MathOperand <<= MatchFirst([
    CharAddress,
    WordAddress,
    Char,
    Word,
    Bitmatch,
    SpecialState,
    ProgressionState,
    Rand16,
    Bank,
    ])


Math <<= infixNotation(
    MathOperand,
    [
        # (oneOf("+ -"),           1,opAssoc.RIGHT), Negative numbers not supported
        (oneOf("++ --"),           1, opAssoc.LEFT),
        (Literal("not"),           1, opAssoc.RIGHT),
        # (oneOf("* /"),             2,opAssoc.LEFT), Multiplication not supported by engine
        (oneOf("+ -"),             2, opAssoc.LEFT),
        (Literal("&"),             2, opAssoc.LEFT),
        (oneOf("< <= > >= == !="), 2, opAssoc.LEFT),
        (oneOf("and or"),          2, opAssoc.LEFT),
    ],
)


class MathGroupHandler(MathOperandHandler):
    class MathSymbol(MathOperandHandler):
        def getOutput(self):
            opcode_table = {
                "&": "eBitAnd",
                "and": "eAnd",
                "or": "eOr",
                "not": "eNot",
                "+": "eAdd",
                "-": "eSub",
                "++": "eInc",
                "--": "eDec",
                "==": "eEquals",
                "!=": "eNotEquals",
                ">": "eGreater",
                ">=": "eGreaterEquals",
                "<": "eLess",
                "<=": "eLessEquals",
                }

            output = "{}".format(opcode_table[self.func])
            output = self.formatGetOutput(output)
            if self.param2:
                output += "{}{}".format(self.param1.getOutput(), self.param2.getOutput())
            else:
                output += "{}".format(self.param1.getOutput())
            return output

        def updateAddress(self, address: int, indentation: int) -> int:
            self.address = address
            self.indentation = indentation

            address += 1
            indentation += self.DELTA_INDENTATION
            address = self.param1.updateAddress(address, indentation)
            if self.param2:
                address = self.param2.updateAddress(address, indentation)

            return address

        def __init__(self, func: str, param1: MathOperandHandler, param2: MathOperandHandler = None):
            self.indentation = self.DEFAULT_INDENTATION
            self.func = func
            self.param1 = param1
            self.param2 = param2
            self.type = "math_func"
            self.address = 0
            if self.param2:
                self.text = "{0}({1},{2})".format(self.func, self.param1, self.param2)
                self.size = 1 + self.param1.size + self.param2.size
            else:
                self.text = "{0}({1})".format(self.func, self.param1)
                self.size = 1 + self.param1.size

        def __str__(self):
            return self.text

        def __repr__(self):
            return self.text

    def buildStack(self, tokens: list) -> MathOperandHandler:
        """This function will convert the token list into a binary tree of MathOperandHandler,
        where the children are in param1 and param2"""
        OneRight = ["not"]
        OneLeft = ["++", "--"]
        TwoLeft = ["+", "-", "&", "<", "<=", ">=", "==", "!=", "and", "or"]

        # pyparsing will return a ParseResults object that can be treated as a list if there are multiple tokens,
        # or will return the actual MathOperandHandler object if there is only 1 token
        # symbols are represented as strings

        # Example tokens: [c1, +, c2 +, c3], [c2, +, [c1, -, c3], +, c4], [c1], [c2, +, c3], [not, c1], [c1, ++]

        if isinstance(tokens, MathOperandHandler):
            # Single Operand, we are done!
            return tokens

        assert isinstance(tokens, (ParseResults, list))  # When we slice a ParseResults, it returns a list, so both are ok

        if len(tokens) == 1:
            return self.buildStack(tokens[0])

        # Check from right to left for symbols
        # The left-sided parameter can be within the same list (e.g. [c1, +, c2, +, c3]) so we need to slice the tokens list
        if tokens[-2] in OneRight:
            return MathGroupHandler.MathSymbol(tokens[-2],
                                               self.buildStack(tokens[-1])  # right-sided so select
                                               )
        if tokens[-1] in OneLeft:
            return MathGroupHandler.MathSymbol(tokens[-1],
                                               self.buildStack(tokens[:-1])  # left-sided so slice
                                               )
        if tokens[-2] in TwoLeft:
            return MathGroupHandler.MathSymbol(tokens[-2],
                                               self.buildStack(tokens[:-2]),  # left-sided so slice
                                               self.buildStack(tokens[-1])  # right-sided so select
                                               )
        raise KeyError

    def post_init(self):
        self.stack = self.buildStack(self.tokens[0])
        self.text = "#"+self.stack.text+"#"
        self.size = self.stack.size
        self.type = "math"

    def updateAddress(self, address, indentation):
        return self.stack.updateAddress(address, indentation)

    def getOutput(self):
        return self.stack.getOutput()


MathGroup = (Literal("#").suppress() + Math + Literal("#").suppress()).setParseAction(MathGroupHandler)
