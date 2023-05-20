import unittest
import os
import shutil
import projutils.fileregistry as fileregistry
import projutils.tests.config as config


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/fileregistry/"


reversers = [
    [fileregistry.remove_autogenerated, 'autogenerated/file.ext', 'file.ext'],
    [fileregistry.reverse_tileset, 'file.tileset', 'file.tileset.png'],
    [fileregistry.reverse_pal, 'file.pal', 'file.pal.png'],
    [fileregistry.reverse_pattern, 'file.pattern', 'file.pattern.tilemap'],
]


class TestReversers(unittest.TestCase):
    def test_reversers(self):
        for reverser in reversers:
            func = reverser[0]
            ori = reverser[1]
            parsed = reverser[2]
            with self.subTest(reverser=func):
                self.assertEqual(func(ori), parsed)
                self.assertEqual(fileregistry.filepath_reverser.reverse(ori), parsed)


class TestReverserRLE(unittest.TestCase):
    def setUp(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)
        os.makedirs(config.TEMPFOLDER, exist_ok=True)
        open(config.TEMPFOLDER + 'testRLE5.tileset.png', 'a').close()
        open(config.TEMPFOLDER + 'Cald_IndoorsRLEA.pattern.attrmap', 'a').close()
        open(config.TEMPFOLDER + 'Cald_IndoorsRLEA.pattern.tilemap', 'a').close()
        with open(ASSETSFOLDER + 'test.asm', 'r') as f:
            with open(config.TEMPFOLDER + 'test.asm', 'w') as g:
                g.writelines(f.readlines())
                g.write('\nLABEL5::\n    INCLUDE "autogenerated/{}test.tileset.rle"\n'.format(config.TEMPFOLDER))

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_rle(self):
        self.assertEqual(fileregistry.remove_rle(config.TEMPFOLDER + 'test.tileset.rle'), config.TEMPFOLDER + 'testRLE5.tileset.png')
        self.assertEqual(fileregistry.filepath_reverser.reverse(config.TEMPFOLDER + 'test.tileset.rle'), config.TEMPFOLDER + 'testRLE5.tileset.png')

        # Special pattern case
        self.assertEqual(fileregistry.remove_rle(config.TEMPFOLDER + 'Cald_Indoors.pattern.rle'), config.TEMPFOLDER + 'Cald_IndoorsRLEA.pattern.tilemap')
        self.assertEqual(fileregistry.filepath_reverser.reverse(config.TEMPFOLDER + 'Cald_Indoors.pattern.rle'), config.TEMPFOLDER + 'Cald_IndoorsRLEA.pattern.tilemap')

    def test_labelfileregister(self):
        labelfileregister = fileregistry.LabelFileRegister()
        labelfileregister.registerFromAsm(config.TEMPFOLDER + 'test.asm')
        self.assertEqual(labelfileregister.files['LABEL1'].processed_path, 'autogenerated/file1.tileset')
        self.assertEqual(labelfileregister.files['LABEL1'].original_path, 'file1.tileset.png')
        self.assertEqual(labelfileregister.files['LABEL2'].processed_path, 'autogenerated/file2.pal')
        self.assertEqual(labelfileregister.files['LABEL2'].original_path, 'file2.pal.png')
        self.assertEqual(labelfileregister.files['LABEL3'].processed_path, 'autogenerated/file2.pal')
        self.assertEqual(labelfileregister.files['LABEL3'].original_path, 'file2.pal.png')
        self.assertEqual(labelfileregister.files['LABEL4'].processed_path, 'autogenerated/test.pattern')
        self.assertEqual(labelfileregister.files['LABEL4'].original_path, 'test.pattern.tilemap')
        self.assertEqual(labelfileregister.files['LABEL5'].processed_path, 'autogenerated/{}test.tileset.rle'.format(config.TEMPFOLDER))
        self.assertEqual(labelfileregister.files['LABEL5'].original_path, config.TEMPFOLDER + 'testRLE5.tileset.png')


if __name__ == '__main__':
    unittest.main()
