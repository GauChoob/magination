import filecmp
import unittest
import os
import shutil
import projutils.tileset as tileset
import projutils.tilemap as tilemap
import projutils.utils as utils
import projutils.color as color
import projutils.fileregistry as fileregistry
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

    def test_tileset_decolorize(self):
        _ASSETSFOLDER = ASSETSFOLDER + 'colorize/'
        logo = tileset.Bitmap.init_from_original_file(_ASSETSFOLDER + 'InteractiveImaginationLogo.tileset.png')
        logo.decolorize()
        logo.save_original_file(config.TEMPFOLDER + "GREY_InteractiveImaginationLogo.tileset.png")
        helper.assert_png_cmp(self, _ASSETSFOLDER + "GREY_InteractiveImaginationLogo.tileset.png", config.TEMPFOLDER + "GREY_InteractiveImaginationLogo.tileset.png")

    def test_color_tileset_from_list(self):
        _ASSETSFOLDER = ASSETSFOLDER + 'colorize/'
        logo = tileset.Bitmap.init_from_original_file(_ASSETSFOLDER + 'GREY_InteractiveImaginationLogo.tileset.png')
        logo.colorize_from_list(
            [
                0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
                0,  0,  0,  0,  0,  0,  6,  1,  1,  4,  4,  0,  0,  0,  0,  0,
                -1, 0,  1,  1,  4,  4,  0,  0, -1,  0,  1,  1,  1,  0,  0,  0,
                0,  0,  2,  2,  0,  0,  0,  0,  2,  2,  4,  4,  4,  0,  0,  0,
                0,  3,  3,  3,  0,  0,  0,  0,  0,  2,  2,  3,  3,  3,  0,  0,
                0,  0,  0,  0,  0,  0,  0,  3,  3,  7,  0,  0,  0,  0,  0,  0,
                0,  0,  0,  0,  0,  -1, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
                0,  0,  0,  0,  -1, 1,  -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
            ],
            color.Palette.init_from_original_file(_ASSETSFOLDER + "InteractiveImaginationLogo.pal.png"),
            0,
            True,
            0
        )
        logo.save_original_file(config.TEMPFOLDER + "InteractiveImaginationLogo.tileset.png")
        helper.assert_png_cmp(self, _ASSETSFOLDER + "InteractiveImaginationLogo.tileset.png", config.TEMPFOLDER + "InteractiveImaginationLogo.tileset.png")

    def test_color_tileset_from_tilemap(self):
        _ASSETSFOLDER = ASSETSFOLDER + 'colorize/'
        logo = tileset.Bitmap.init_from_original_file(_ASSETSFOLDER + 'GREY_InteractiveImaginationLogo.tileset.png')
        logo.colorize_from_tilemap(
            tilemap.Tilemap.init_from_original_file(_ASSETSFOLDER + "InteractiveImaginationLogoRLEA.tilemap"),
            tilemap.Tilemap.init_from_original_file(_ASSETSFOLDER + "InteractiveImaginationLogoRLEA.attrmap"),
            0,
            0x9000,
            color.Palette.init_from_original_file(_ASSETSFOLDER + "InteractiveImaginationLogo.pal.png"),
            0,
            True,
            0
        )
        logo.save_original_file(config.TEMPFOLDER + "InteractiveImaginationLogo.tileset.png")
        helper.assert_png_cmp(self, _ASSETSFOLDER + "InteractiveImaginationLogo.tileset.png", config.TEMPFOLDER + "InteractiveImaginationLogo.tileset.png")

    def test_bitset(self):
        rom = utils.Rom()
        sym = utils.SymFile(ASSETSFOLDER + 'bitset/autopack.sym')

        # Mock autopack.asm with the folder directory at DESTINATION
        with open(ASSETSFOLDER + 'bitset/autopack.asm', 'r') as f:
            autopack_str = f.read()
        autopack_str = autopack_str.replace('autogenerated/assets/scenes/', DESTINATION)
        with open(DESTINATION + 'autopack.asm', 'w') as f:
            f.write(autopack_str)

        # With original and processed tileset files in the same directory
        os.makedirs(DESTINATION + 'graphics/tilesets/', exist_ok=True)
        for file in [
            'Core_End_Bridge_Base.tileset',
            'Core_End_Bridge_Misc.tileset',
            'Core_End_Bridge_Sky.tileset',
            'Core_End_Bridge_Top.tileset',
            'Misc_BlankTiles.tileset',
            'Sprite_Tony_Main.tileset',
        ]:
            shutil.copyfile(ASSETSFOLDER + 'bitset/' + file, DESTINATION + 'graphics/tilesets/' + file)
            shutil.copyfile(ASSETSFOLDER + 'bitset/' + file + '.png', DESTINATION + 'graphics/tilesets/' + file + '.png')

        registry = fileregistry.LabelFileRegister()
        registry.registerFromAsm(DESTINATION + 'autopack.asm')

        bitset1 = tileset.BitSet.init_from_rom(sym, rom, utils.BankAddress(0x69, 0x7FD4))
        bitset2 = tileset.BitSet.init_from_original_file(ASSETSFOLDER + 'bitset/Core_End_Bridge.bitmapset.asm', registry)
        self.assertEqual(bitset1.size(), 2+6*7)
        self.assertEqual(bitset2.size(), 2+6*7)
        for vram in range(2):
            for bitmap_i in range(len(bitset1.bitmaps[vram])):
                self.assertEqual(bitset1.bitmaps[vram][bitmap_i].label_name, bitset2.bitmaps[vram][bitmap_i].label_name)

        bitset1.save_original_file(DESTINATION + 'bitset1.bitmapset.asm')
        bitset2.save_original_file(DESTINATION + 'bitset2.bitmapset.asm')
        self.assertTrue(filecmp.cmp(ASSETSFOLDER + 'bitset/Core_End_Bridge.bitmapset.asm', DESTINATION + 'bitset1.bitmapset.asm', shallow=False))
        self.assertTrue(filecmp.cmp(ASSETSFOLDER + 'bitset/Core_End_Bridge.bitmapset.asm', DESTINATION + 'bitset2.bitmapset.asm', shallow=False))

        bitset1.load_references_from_rom()
        bitset2.load_references_from_original_file()
        for vram in range(2):
            for bitmap_i in range(len(bitset1.bitmaps[vram])):
                self.assertEqual(bitset1.bitmaps[vram][bitmap_i].contents._to_processed_data(), bitset2.bitmaps[vram][bitmap_i].contents._to_processed_data())


if __name__ == '__main__':
    unittest.main()
