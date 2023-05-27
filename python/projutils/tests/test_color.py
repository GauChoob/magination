import unittest
import os
import shutil
import filecmp
import projutils.color as color
import projutils.tests.config as config
import projutils.tests.helper as helper


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/color/"


class TestColor(unittest.TestCase):
    def test_Color(self):
        self.assertEqual((0x1F*8, 0x1A*8, 0x13*8, 255), color.Color(0x4F5F).get_RGBA())
        self.assertEqual((0x1F*8, 0x1A*8, 0x13*8), color.Color(0x4F5F).get_RGB())
        self.assertEqual((0x1F*8, 0x1A*8, 0x13*8, 0), color.Color(0xCF5F).get_RGBA(permit_transparency=True))
        with(self.assertRaises(ValueError)):
            color.Color(0xCF5F).get_RGBA(permit_transparency=False)
        self.assertEqual(0x4F5F, color.Color(0x1F*8, 0x1A*8, 0x13*8).get_word())
        self.assertEqual(0x4F5F, color.Color(0x1F*8, 0x1A*8, 0x13*8, 255).get_word())
        self.assertEqual(0xCF5F, color.Color(0x1F*8, 0x1A*8, 0x13*8, 0).get_word(permit_transparency=True))
        with(self.assertRaises(ValueError)):
            color.Color(0x1F*8, 0x1A*8, 0x13*8, 0).get_word(permit_transparency=False)
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
        pal1 = color.Palette(ASSETSFOLDER + "AllSprites.pal.png")
        pal1.save_png(config.TEMPFOLDER + "AllSprites.pal.png")
        pal2 = color.Palette(config.TEMPFOLDER + "AllSprites.pal.png")
        self.assertEqual(pal1.get_png_palette(), pal2.get_png_palette())

        # Make sure the correct .pal file is generated
        pal1.save_pal(config.TEMPFOLDER + "AllSprites.pal")
        self.assertTrue(filecmp.cmp(ASSETSFOLDER + "AllSprites.pal", config.TEMPFOLDER + "AllSprites.pal", shallow=False))

        # Check if .pal is loaded correctly
        with open(ASSETSFOLDER + "AllSprites.pal", 'rb') as f:
            pal2 = color.Palette(f.read())
        self.assertEqual(pal1.get_png_palette(), pal2.get_png_palette())

        # Check if passing a raw palette is loaded correctly
        pal2 = color.Palette(pal1.get_png_palette())
        self.assertEqual(pal1.get_png_palette(), pal2.get_png_palette())
        # Make sure the lists are copies of each other, and not the same list
        self.assertFalse(pal1.get_png_palette() is pal2.get_png_palette())
        self.assertEqual(pal1.get_png_palette(), pal2.get_png_palette())

        # Make sure that tuples of length 3 are acceptable
        pal2 = color.Palette(pal2.get_png_palette())
        self.assertEqual(pal1.get_png_palette(), pal2.get_png_palette())

        # Alpha error check
        pal1.palette[0] = pal1.palette[0][:-1] + (0,)
        with self.assertRaises(AssertionError):
            pal1.save_png(config.TEMPFOLDER + "AllSprites2.pal.png")
        # No error check
        pal1.save_png(config.TEMPFOLDER + "AllSprites3.pal.png", allowalpha=True)

        # Check to see if alpha color is loaded correctly
        pal2 = color.Palette(config.TEMPFOLDER + "AllSprites3.pal.png")
        self.assertEqual(pal1.get_png_palette(), pal2.get_png_palette())

        # Invalid input color check
        with self.assertRaises(AssertionError):
            pal2 = color.Palette(ASSETSFOLDER + "BadColor.pal.png")

        # Make sure we don't mix up save_png and save_pal:
        with self.assertRaises(AssertionError):
            pal1.save_png(config.TEMPFOLDER + "AllSprites4.pal", allowalpha=True)
        with self.assertRaises(AssertionError):
            pal1.save_pal(config.TEMPFOLDER + "AllSprites4.pal.png", allowalpha=True)


class TestColorize(unittest.TestCase):
    def setUp(self):
        os.makedirs(config.TEMPFOLDER, exist_ok=True)

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_color_tileset_from_tilemap(self):
        # Make sure the tileset is colorized properly
        color.Colorize.color_tileset_from_tilemap(
            ASSETSFOLDER + "GREY_InteractiveImaginationLogo.tileset.png",
            config.TEMPFOLDER + "InteractiveImaginationLogo.tileset.png",
            ASSETSFOLDER + "InteractiveImaginationLogoRLEA.tilemap",
            ASSETSFOLDER + "InteractiveImaginationLogoRLEA.attrmap",
            0,
            0x9000,
            color.Palette(ASSETSFOLDER + "InteractiveImaginationLogo.pal.png"),
            0,
            True,
            0
        )
        helper.assert_png_cmp(self, ASSETSFOLDER + "InteractiveImaginationLogo.tileset.png", config.TEMPFOLDER + "InteractiveImaginationLogo.tileset.png")


if __name__ == '__main__':
    unittest.main()
