import unittest
import os
import shutil
import magiparser


OUTFOLDER = "python/magiparser/tests/tmp/"
ASSETSFOLDER = os.path.dirname(__file__) + "/assets/"
ASMFOLDER = ASSETSFOLDER + "asm/"
MGIFOLDER = ASSETSFOLDER + "mgi/"


class TestMagiparser(unittest.TestCase):
    def setUp(self):
        os.makedirs(OUTFOLDER, exist_ok=True)

    def tearDown(self):
        if os.path.exists(OUTFOLDER):
            shutil.rmtree(OUTFOLDER)

    def test_magiparser(self):
        filenames = os.listdir(MGIFOLDER)
        for filename in filenames:
            with self.subTest(filename=filename):
                mgifile = MGIFOLDER + filename
                asmfile = ASMFOLDER + filename + '.asm'
                outfile = OUTFOLDER + filename + '.asm'
                magiparser.convert(mgifile, outfile)

                with open(asmfile, 'r') as f:
                    lines1 = f.readlines()
                with open(outfile, 'r') as f:
                    lines2 = f.readlines()
                for i, (line1, line2) in enumerate(zip(lines1, lines2)):
                    with self.subTest(filename=filename, line=i):
                        self.assertEqual(line1, line2)

                self.assertEqual(len(lines1), len(lines2))


if __name__ == '__main__':
    unittest.main()
