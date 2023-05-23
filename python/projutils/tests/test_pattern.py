import unittest
import os
import filecmp
import shutil
import projutils.utils as utils
import projutils.pattern as pattern
import projutils.tests.config as config


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/pattern/"
DESTINATION = config.TEMPFOLDER


class TestPattern(unittest.TestCase):
    def setUp(self):
        os.makedirs(config.TEMPFOLDER, exist_ok=True)

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_pattern(self):
        rom = utils.Rom(utils.Rom.MN)
        p1 = pattern.Pattern.init_from_rom(None, rom, utils.BankAddress(0x50, 0x7AC9), True)
        p2 = pattern.Pattern.init_from_original_file(ASSETSFOLDER + 'Orothe_DockRLEA.pattern.tilemap')
        p3 = pattern.Pattern.init_from_processed_file(ASSETSFOLDER + 'Orothe_Dock.pattern.rle')
        self.assertListEqual(p1.tilemap, p2.tilemap)
        self.assertListEqual(p1.attrmap, p2.attrmap)
        self.assertListEqual(p2.tilemap, p3.tilemap)
        self.assertListEqual(p2.attrmap, p3.attrmap)

        p1.save_original_file(DESTINATION + 'p1.pattern.tilemap')
        p2.save_original_file(DESTINATION + 'p2.pattern.tilemap')
        p3.save_original_file(DESTINATION + 'p3.pattern.tilemap')
        self.assertTrue(filecmp.cmp(DESTINATION + 'p1RLEA.pattern.tilemap', ASSETSFOLDER + 'Orothe_DockRLEA.pattern.tilemap', shallow=False))
        self.assertTrue(filecmp.cmp(DESTINATION + 'p2RLEA.pattern.tilemap', ASSETSFOLDER + 'Orothe_DockRLEA.pattern.tilemap', shallow=False))
        self.assertTrue(filecmp.cmp(DESTINATION + 'p3RLEA.pattern.tilemap', ASSETSFOLDER + 'Orothe_DockRLEA.pattern.tilemap', shallow=False))
        self.assertTrue(filecmp.cmp(DESTINATION + 'p1RLEA.pattern.attrmap', ASSETSFOLDER + 'Orothe_DockRLEA.pattern.attrmap', shallow=False))
        self.assertTrue(filecmp.cmp(DESTINATION + 'p2RLEA.pattern.attrmap', ASSETSFOLDER + 'Orothe_DockRLEA.pattern.attrmap', shallow=False))
        self.assertTrue(filecmp.cmp(DESTINATION + 'p3RLEA.pattern.attrmap', ASSETSFOLDER + 'Orothe_DockRLEA.pattern.attrmap', shallow=False))

        p1.save_processed_file(DESTINATION + 'p1.pattern')
        p2.save_processed_file(DESTINATION + 'p2.pattern')
        p3.save_processed_file(DESTINATION + 'p3.pattern')
        self.assertTrue(filecmp.cmp(DESTINATION + 'p1.pattern.rle', ASSETSFOLDER + 'Orothe_Dock.pattern.rle', shallow=False))
        self.assertTrue(filecmp.cmp(DESTINATION + 'p2.pattern.rle', ASSETSFOLDER + 'Orothe_Dock.pattern.rle', shallow=False))
        self.assertTrue(filecmp.cmp(DESTINATION + 'p3.pattern.rle', ASSETSFOLDER + 'Orothe_Dock.pattern.rle', shallow=False))

        self.assertEqual(1303, os.path.getsize(ASSETSFOLDER + 'Orothe_Dock.pattern.rle'))
        self.assertEqual(1303, p1.size())


if __name__ == '__main__':
    unittest.main()
