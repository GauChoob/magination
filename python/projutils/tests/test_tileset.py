import unittest
import os
import shutil
import projutils.tileset as tileset
import projutils.png as png
import projutils.tests.config as config
import projutils.tests.helper as helper


assetsfolder = os.path.dirname(__file__) + "/assets/tileset/"


class TestTileset(unittest.TestCase):
    def setUp(self):
        os.makedirs(config.TEMPFOLDER, exist_ok=True)

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_tileset(self):
        pngfile = assetsfolder + "MusyX.tileset.png"
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


if __name__ == '__main__':
    unittest.main()
