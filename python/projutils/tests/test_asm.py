import unittest
import os
import shutil
import projutils.asm as asm
import projutils.tests.config as config


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/asm/"


class TestAsm(unittest.TestCase):
    def test_castNumber(self):
        self.assertEqual(asm.castNumber('$10'), 0x10)
        self.assertEqual(asm.castNumber('%1010'), 0b1010)
        self.assertEqual(asm.castNumber('-$10'), -0x10)
        self.assertEqual(asm.castNumber('-%1010'), -0b1010)
        self.assertEqual(asm.castNumber('10'), 10)
        self.assertEqual(asm.castNumber('-10'), -10)
        with self.assertRaises(ValueError):
            asm.castNumber('Error')

    def test_remove_comments(self):
        self.assertEqual(asm.remove_comments('$10'), '$10')
        self.assertEqual(asm.remove_comments('$10               ;asdasdsad'), '$10               ')
        self.assertEqual(asm.remove_comments(';'), '')
        self.assertEqual(asm.remove_comments(';dsfdsf'), '')
        self.assertEqual(asm.remove_comments('a;dsfdsf'), 'a')


lines = [
    [asm.EmptyLine, '', 0x4000, 0, {}],
    [asm.EmptyLine, '\n', 0x4000, 0, {}],
    [asm.EmptyLine, '      \n', 0x4000, 0, {}],
    [asm.EmptyLine, '\t', 0x4000, 0, {}],

    [asm.SectionLine, 'SECTION "blahblah", ROMX[$5000], BANK[$80]', 0x5000, 0, {}],
    [asm.SectionLine, 'SECTION "blahblah", ROMX, BANK[$80]', 0x4000, 0, {}],

    [asm.LabelLine, 'Label:', 0x4000, 0, {'label_name': 'Label'}],
    [asm.LabelLine, 'Label::', 0x4000, 0, {'label_name': 'Label'}],
    [asm.LabelLine, '.Label', 0x4000, 0, {'label_name': '.Label'}],
    [asm.LabelLine, '.Label:', 0x4000, 0, {'label_name': '.Label'}],
    [asm.LabelLine, '.Label::', 0x4000, 0, {'label_name': '.Label'}],
    [asm.LabelLine, '    .Label', 0x4000, 0, {'label_name': '.Label'}],
    [asm.LabelLine, '    .Label:', 0x4000, 0, {'label_name': '.Label'}],
    [asm.LabelLine, '    .Label::', 0x4000, 0, {'label_name': '.Label'}],
    [asm.UnknownLine, '    Label:"', 0x4000, asm.IncludeLine.UNKNOWN_SIZE, {}],

    [asm.AutoCommentLine, '    ld a, 3    ; $5000: $01\n', 0x5000, 1, {'raw_bytes': [1]}],
    [asm.AutoCommentLine, '    ld asds    ; $5000: $01 $02\n', 0x5000, 2, {'raw_bytes': [1, 2]}],
    [asm.AutoCommentLine, '               ; $5000: $01 $03 $04\n', 0x5000, 3, {'raw_bytes': [1, 3, 4]}],

    [asm.ManualAddressCommentLine, '    ; $4500\n', 0x4500, 0, {}],

    [asm.GenericCommentLine, '    ; spam\n', 0x4000, 0, {}],

    [asm.RawBytesLine, '    db $01, $02, $04 ; comment', 0x4000, 3, {'raw_bytes': [1, 2, 4]}],
    [asm.RawBytesLine, '    db %1, 2, 4 ; comment', 0x4000, 3, {'raw_bytes': [1, 2, 4]}],
    [asm.UnknownLine, '    db "text"', 0x4000, asm.IncludeLine.UNKNOWN_SIZE, {}],
    [asm.UnknownLine, '    db 3, "text"', 0x4000, asm.IncludeLine.UNKNOWN_SIZE, {}],

    [asm.RawWordsLine, '    dw $0100, $4000, 4 ; comment', 0x4000, 6, {'raw_bytes': [0x00, 0x01, 0x00, 0x40, 0x04, 0x00]}],
    [asm.UnknownLine, '    dw "text"', 0x4000, asm.IncludeLine.UNKNOWN_SIZE, {}],

    [asm.IncBinLine, '   INCBIN "{}size_100.dat"'.format(ASSETSFOLDER), 0x4000, 0x100, {'filename': '{}size_100.dat'.format(ASSETSFOLDER)}],
    [asm.IncBinLine, '   INCBIN "{}size_100.dat" ; Comment'.format(ASSETSFOLDER), 0x4000, 0x100, {'filename': '{}size_100.dat'.format(ASSETSFOLDER)}],

    [asm.IncludeLine, '   INCLUDE "folder/includeme.txt" ; Comment', 0x4000, asm.IncludeLine.UNKNOWN_SIZE, {'filename': 'folder/includeme.txt'}],

    [asm.AddressBankLine, '    AddressBank LABELHERE ; comment', 0x4000, 3, {'label_name': 'LABELHERE'}],
    [asm.BankAddressLine, '    BankAddress LABELHERE ; comment', 0x4000, 3, {'label_name': 'LABELHERE'}],

    [asm.LoadBitmapLine, '        LoadBitmap $9000,BITMAP_Cald_Ashyn_Building,$10,$08;comment', 0x4000, 7, {'destination': 0x9000, 'source_label': 'BITMAP_Cald_Ashyn_Building', 'width': 0x10, 'height': 0x08}],

    [asm.UnknownLine, '    ld a, 4', 0x4000, asm.IncludeLine.UNKNOWN_SIZE, {}],
]


class TestLineFactory(unittest.TestCase):
    def test_LineFactory(self):
        for linedata in lines:
            with self.subTest(line=linedata[1]):
                cls = linedata[0]
                line = linedata[1]
                addr = linedata[2]
                size = linedata[3]
                params = linedata[4]

                self.assertTrue(cls.validate(line))

                new_addr, line_object = asm.line_factory.parse_line(0x4000, line)
                self.assertTrue(isinstance(line_object, cls))
                self.assertEqual(line_object.address, addr)
                self.assertEqual(line_object.size, size)
                self.assertEqual(line_object.address + line_object.size, new_addr)
                self.assertEqual(line_object.raw, line)
                for param in params:
                    self.assertEqual(params[param], getattr(line_object, param))


class TestAsmFile(unittest.TestCase):
    def setUp(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)
        os.makedirs(config.TEMPFOLDER, exist_ok=True)

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def testAsm(self):
        filepath = ASSETSFOLDER + 'test.asm'
        asmfile = asm.AsmFile(filepath)

        with open(filepath, 'r') as f:
            lines = f.readlines()

        self.assertEqual(len(asmfile.lines), len(lines))
        self.assertListEqual(lines, [str(line) for line in asmfile.lines])


if __name__ == '__main__':
    unittest.main()
