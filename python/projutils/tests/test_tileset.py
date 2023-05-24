import filecmp
import unittest
import os
import shutil
import projutils.tileset as tileset
import projutils.utils as utils
import projutils.png as png
import projutils.tests.config as config
import projutils.tests.helper as helper


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/tileset/"
DESTINATION = config.TEMPFOLDER


class TestTileset(unittest.TestCase):
    def setUp(self):
        os.makedirs(config.TEMPFOLDER, exist_ok=True)

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_tileset(self):
        rom = utils.Rom()
        musyx1 = tileset.Bitmap.init_from_rom(None, rom, utils.BankAddress(0x27, 0x6515), False, 10, 3)
        musyx2 = tileset.Bitmap.init_from_original_file(ASSETSFOLDER + 'MusyX.tileset.png')
        musyx3 = tileset.Bitmap.init_from_processed_file(ASSETSFOLDER + 'MusyX.tileset', 10, 3)
        musyx4 = tileset.Bitmap.init_from_processed_file(ASSETSFOLDER + 'MusyX.tileset', 10, None)
        self.assertListEqual(musyx1.pixels, musyx2.pixels)
        self.assertListEqual(musyx1.pixels, musyx3.pixels)
        self.assertListEqual(musyx1.pixels, musyx4.pixels)

        musyx1.save_original_file(DESTINATION + 'musyx1.tileset.png')
        musyx2.save_original_file(DESTINATION + 'musyx2.tileset.png')
        musyx3.save_original_file(DESTINATION + 'musyx3.tileset.png')
        musyx4.save_original_file(DESTINATION + 'musyx4.tileset.png')
        helper.assert_png_cmp(self, DESTINATION + 'musyx1.tileset.png', DESTINATION + 'musyx2.tileset.png')
        helper.assert_png_cmp(self, DESTINATION + 'musyx1.tileset.png', DESTINATION + 'musyx3.tileset.png')
        helper.assert_png_cmp(self, DESTINATION + 'musyx1.tileset.png', DESTINATION + 'musyx4.tileset.png')

        musyx1.save_processed_file(DESTINATION + 'musyx1.tileset')
        musyx2.save_processed_file(DESTINATION + 'musyx2.tileset')
        musyx3.save_processed_file(DESTINATION + 'musyx3.tileset')
        musyx4.save_processed_file(DESTINATION + 'musyx4.tileset')
        self.assertTrue(filecmp.cmp(ASSETSFOLDER + 'MusyX.tileset', DESTINATION + 'musyx1.tileset', shallow=False))
        self.assertTrue(filecmp.cmp(ASSETSFOLDER + 'MusyX.tileset', DESTINATION + 'musyx2.tileset', shallow=False))
        self.assertTrue(filecmp.cmp(ASSETSFOLDER + 'MusyX.tileset', DESTINATION + 'musyx3.tileset', shallow=False))
        self.assertTrue(filecmp.cmp(ASSETSFOLDER + 'MusyX.tileset', DESTINATION + 'musyx4.tileset', shallow=False))

        self.assertEqual(musyx1.size(), os.path.getsize(ASSETSFOLDER + 'MusyX.tileset'))


if __name__ == '__main__':
    unittest.main()
