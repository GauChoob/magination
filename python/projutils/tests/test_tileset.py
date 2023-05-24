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
        pngfile = ASSETSFOLDER + "MusyX.tileset.png"
        bbpfile = config.TEMPFOLDER + "out.tileset"
        pngfile_2 = config.TEMPFOLDER + "MusyX.tileset.png"
        WIDTH = 10
        HEIGHT = 3

        # test png_to_tileset and data_to_png
        tileset.png_to_tileset(pngfile, bbpfile)
        with open(bbpfile, 'rb') as f:
            bbpfile_data = f.read()
        tileset.data_to_png(pngfile_2, bbpfile_data, WIDTH*8)
        helper.assert_png_cmp(self, pngfile, pngfile_2)

        # test tileset_to_pixels
        temp = png.Reader(pngfile)
        width, height, pixels, meta = temp.read()
        pixels = list(pixels)
        temp.file.close()
        pixels_2 = tileset.tileset_to_pixels(bbpfile, WIDTH, HEIGHT)
        for y in range(HEIGHT):
            for x in range(WIDTH):
                with self.subTest(index="Y = {}, X = {}".format(y, x)):
                    self.assertEqual(pixels[y][x], pixels_2[y][x])

    def test_tileset2(self):
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
