import unittest
import os
import shutil
import filecmp
import projutils.color as color
import projutils.utils as utils
import projutils.tests.config as config
import projutils.tests.helper as helper


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/color/"


class TestColor(unittest.TestCase):
    def test_Color(self):
        self.assertEqual((0x1F*8, 0x1A*8, 0x13*8, 255), color.Color(0x4F5F).get_RGBA())
        self.assertEqual((0x1F*8, 0x1A*8, 0x13*8), color.Color(0x4F5F).get_RGB())
        self.assertEqual((0x1F*8, 0x1A*8, 0x13*8, 0), color.Color(0xCF5F).get_RGBA(allow_alpha=True))
        with(self.assertRaises(ValueError)):
            color.Color(0xCF5F).get_RGBA(allow_alpha=False)
        self.assertEqual(0x4F5F, color.Color(0x1F*8, 0x1A*8, 0x13*8).get_word())
        self.assertEqual(0x4F5F, color.Color(0x1F*8, 0x1A*8, 0x13*8, 255).get_word())
        self.assertEqual(0xCF5F, color.Color(0x1F*8, 0x1A*8, 0x13*8, 0).get_word(allow_alpha=True))
        with(self.assertRaises(ValueError)):
            color.Color(0x1F*8, 0x1A*8, 0x13*8, 0).get_word(allow_alpha=False)
        with(self.assertRaises(AssertionError)):
            color.Color(0x10*8 + 1, 0x10*8, 0x10*8, 255)
        with(self.assertRaises(AssertionError)):
            color.Color(0x10*8, 0x10*8 + 1, 0x10*8, 255)
        with(self.assertRaises(AssertionError)):
            color.Color(0x10*8, 0x10*8, 0x10*8 + 1, 255)


class TestPalette(unittest.TestCase):
    def setUp(self):
        os.makedirs(config.TEMPFOLDER, exist_ok=True)

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_PaletteObj(self):
        # Simple .pal.png
        pal1 = color.Palette.init_from_original_file(ASSETSFOLDER + "AllSprites.pal.png")
        pal1.save_original_file(config.TEMPFOLDER + "AllSprites.pal.png")
        pal2 = color.Palette.init_from_original_file(config.TEMPFOLDER + "AllSprites.pal.png")
        helper.assert_png_cmp(self, ASSETSFOLDER + "AllSprites.pal.png", config.TEMPFOLDER + "AllSprites.pal.png")
        self.assertEqual(pal1.palette, pal2.palette)

        # Load from rom
        pal3 = color.Palette.init_from_rom(None, utils.Rom(), utils.BankAddress(0x21, 0x5CC0), 4*8)
        self.assertEqual(pal1.palette, pal3.palette)

        self.assertEqual(pal1.size(), 2*4*8)

        # Make sure the correct .pal file is generated
        pal1.save_processed_file(config.TEMPFOLDER + "AllSprites.pal")
        self.assertTrue(filecmp.cmp(ASSETSFOLDER + "AllSprites.pal", config.TEMPFOLDER + "AllSprites.pal", shallow=False))

        # Check if .pal is loaded correctly
        pal2 = color.Palette.init_from_processed_file(ASSETSFOLDER + "AllSprites.pal")
        self.assertEqual(pal1.palette, pal2.palette)

        # Check if passing a raw palette is loaded correctly
        pal2 = color.Palette.init_from_list(pal1.palette)
        self.assertEqual(pal1.palette, pal2.palette)
        # Make sure the lists are copies of each other, and not the same list
        self.assertFalse(pal1.palette is pal2.palette)

        # Make sure that tuples of length 3 are acceptable
        pal2 = color.Palette.init_from_list(pal2.get_png_palette())
        self.assertEqual(pal1.palette, pal2.palette)

        # Alpha error check
        pal1.palette[0] = pal1.palette[0][:-1] + (0,)
        with self.assertRaises(AssertionError):
            pal1.save_processed_file(config.TEMPFOLDER + "AllSprites2.pal.png")
        # No error check
        pal1.save_processed_file(config.TEMPFOLDER + "AllSprites3.pal.png", True)

        # Check to see if alpha color is loaded correctly
        pal2 = color.Palette.init_from_processed_file(config.TEMPFOLDER + "AllSprites3.pal.png")
        self.assertEqual(pal1.palette, pal2.palette)

        # Invalid input color check
        with self.assertRaises(AssertionError):
            pal2 = color.Palette.init_from_processed_file(ASSETSFOLDER + "BadColor.pal.png")


if __name__ == '__main__':
    unittest.main()
