import unittest
import os
import filecmp
import shutil
import projutils.utils as utils
import projutils.tilemap as tilemap
import projutils.fileregistry as fileregistry
import projutils.tests.config as config


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/tilemap/"
DESTINATION = config.TEMPFOLDER

TILEMAP_TEST = [
    ('AyebawRLE2.tilemap', 'Ayebaw.tilemap.rle', None, None, None),
    ('AyebawRLEA.attrmap', 'Ayebaw.attrmap.rle', utils.BankAddress(0x46, 0x554A), True, None),
    ('ArenaBackground.tilemap', 'ArenaBackground.tilemap', utils.BankAddress(0x43, 0x5F95), False, 260),
    ('ArenaBackground.attrmap', 'ArenaBackground.attrmap', None, None, None),
]
METAMAP_TEST = [
    ('Arderial_Geyser_Remix_Naroom_West.metatile.asm', utils.BankAddress(0x76, 0x5917)),
    ('Arderial_Geyser_Remix_Cald_West.metatile.asm', utils.BankAddress(0x77, 0x5718)),
]
COLLMAP_TEST = [
    ('Misc_Tavel_Crystal.collision.asm', utils.BankAddress(0x78, 0x603E)),
]


class TestTilemap(unittest.TestCase):
    def setUp(self):
        os.makedirs(config.TEMPFOLDER, exist_ok=True)

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_tilemap(self):
        rom = utils.Rom(utils.Rom.MN)
        for test in TILEMAP_TEST:
            with self.subTest(file=test[0]):
                ori_in = ASSETSFOLDER + test[0]
                ori_out = config.TEMPFOLDER + test[0]
                pro_in = ASSETSFOLDER + test[1]
                pro_out = config.TEMPFOLDER + test[1]

                ori_f = tilemap.Tilemap.init_from_original_file(ori_in)
                ori_f.save_original_file(ori_out)
                ori_f.save_processed_file(pro_out)
                self.assertTrue(filecmp.cmp(ori_in, ori_out, shallow=False))
                self.assertTrue(filecmp.cmp(pro_in, pro_out, shallow=False))

                pro_f = tilemap.Tilemap.init_from_original_file(pro_in)
                pro_f.save_original_file(ori_out)
                pro_f.save_processed_file(pro_out)
                self.assertTrue(filecmp.cmp(ori_in, ori_out, shallow=False))
                self.assertTrue(filecmp.cmp(pro_in, pro_out, shallow=False))

                adr = test[2]
                cmp = test[3]
                size = test[4]
                if(adr):
                    rom_f = tilemap.Tilemap.init_from_rom(None, rom, adr, cmp, size)
                    if(size):
                        self.assertEqual(rom_f.size(), size)
                    rom_f.save_original_file(ori_out)
                    rom_f.save_processed_file(pro_out)
                    self.assertTrue(filecmp.cmp(ori_in, ori_out, shallow=False))
                    self.assertTrue(filecmp.cmp(pro_in, pro_out, shallow=False))

    def test_metamap(self):
        rom = utils.Rom(utils.Rom.MN)
        sym = utils.SymFile(None)
        fileregister = fileregistry.LabelFileRegister()
        for test in METAMAP_TEST:
            with self.subTest(file=test[0]):
                asm_file = test[0]
                tilemap_file = asm_file.split('.', 1)[0] + 'RLEA.metatile.tilemap'
                address = test[1]
                map1 = tilemap.MetaMap.init_from_rom(sym, rom, address)
                map1.save_original_file(config.TEMPFOLDER + asm_file)
                self.assertTrue(filecmp.cmp(ASSETSFOLDER + asm_file, config.TEMPFOLDER + asm_file, shallow=False))
                self.assertTrue(filecmp.cmp(ASSETSFOLDER + tilemap_file, config.TEMPFOLDER + tilemap_file, shallow=False))

                map2 = tilemap.MetaMap.init_from_original_file(config.TEMPFOLDER + asm_file, fileregister)
                self.assertEqual(map2.width, map1.width)
                self.assertEqual(map2.ymappad, map1.ymappad)
                self.assertEqual(map2.unk, map1.unk)
                self.assertEqual(map2.vstop, map1.vstop)
                self.assertEqual(map2.approx_size, map1.approx_size)
                self.assertEqual(map2.map.processed_path, map1.map.processed_path)
                self.assertEqual(map2.map.contents.map, map1.map.contents.map)

    def test_collmap(self):
        rom = utils.Rom(utils.Rom.MN)
        sym = utils.SymFile()
        fileregister = fileregistry.LabelFileRegister()
        for test in COLLMAP_TEST:
            with self.subTest(file=test[0]):
                asm_file = test[0]
                tilemap_file = asm_file.split('.', 1)[0] + 'RLEA.collision.tilemap'
                address = test[1]
                map1 = tilemap.CollMap.init_from_rom(sym, rom, address)
                map1.save_original_file(config.TEMPFOLDER + asm_file)
                self.assertTrue(filecmp.cmp(ASSETSFOLDER + asm_file, config.TEMPFOLDER + asm_file, shallow=False))
                self.assertTrue(filecmp.cmp(ASSETSFOLDER + tilemap_file, config.TEMPFOLDER + tilemap_file, shallow=False))

                map2 = tilemap.CollMap.init_from_original_file(config.TEMPFOLDER + asm_file, fileregister)
                self.assertEqual(map2.width, map1.width)
                self.assertEqual(map2.approx_size, map1.approx_size)
                self.assertEqual(map2.map.processed_path, map1.map.processed_path)
                self.assertEqual(map2.map.contents.map, map1.map.contents.map)


if __name__ == '__main__':
    unittest.main()
