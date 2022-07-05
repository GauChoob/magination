import unittest
import os
import shutil
import filecmp
import projutils.rle as rle
import projutils.utils as utils
import projutils.tests.config as config
import projutils.tests.helper as helper


assetsfolder = os.path.dirname(__file__) + "/assets/rle/"


class TestRLE(unittest.TestCase):
    def setUp(self):
        shutil.copytree(assetsfolder, config.TEMPFOLDER)

    def tearDown(self):
        shutil.rmtree(config.TEMPFOLDER)

    def test_compress_decompress(self):
        def check_file(filename: str, mode: str, ext: str) -> None:
            # Load files
            uncompressed_filename = config.TEMPFOLDER + filename + "RLE" + mode + ext
            compressed_filename = config.TEMPFOLDER + filename + ext + ".rle"
            with open(compressed_filename, 'rb') as f:
                compressed_file = f.read()

            # Test compress_rle
            with open(uncompressed_filename, 'rb') as f:
                compress1 = rle.compress_rle(f, mode)
                self.assertEqual(compressed_file, compress1)
                f.seek(0)
                uncompressed_file = f.read()
                compress2 = rle.compress_rle(uncompressed_file, mode)
                self.assertEqual(compressed_file, compress2)
                uncompressed_file_bytearray = bytearray(uncompressed_file)
                compress3 = rle.compress_rle(uncompressed_file_bytearray, mode)
                self.assertEqual(compressed_file, compress3)

            # Test decompress_rle
            rom = utils.Rom(compressed_file)
            _uncompressed, _mode, _original_compressed, _end = rle.decompress_rle(rom, 0)
            self.assertEqual(_end, len(compressed_file))
            self.assertEqual(compressed_file, _original_compressed)
            self.assertEqual(uncompressed_file, _uncompressed)
            self.assertEqual(mode, _mode)

        check_file("Ayebaw", "2", ".tilemap")
        check_file("Ayebaw", "A", ".attrmap")
        check_file("Bwill", "B", ".attrmap")
        check_file("Naroom_DeepForest", "C", ".pattern")

        # Do mode X
        with open(config.TEMPFOLDER + "UnknownRLEX.attrmap", 'rb') as f:
            uncompressed_file = f.read()
        with self.assertRaises(ValueError):
            rle.compress_rle(uncompressed_file, "X")

        # Test compress_to_file
        filein = config.TEMPFOLDER + "BwillRLEB.attrmap"
        fileout = config.TEMPFOLDER + "out.attrmap.rle"
        file_comp = config.TEMPFOLDER + "Bwill.attrmap.rle"
        rle.compress_to_file(filein, fileout, "B")
        self.assertTrue(filecmp.cmp(file_comp, fileout, shallow=False))

    def test_upgrade_mode(self):
        upgrade_folder = config.TEMPFOLDER + "upgrade/"
        with helper.SuppressText():
            rle.upgrade_mode(upgrade_folder)
        self.assertTrue(os.path.exists(upgrade_folder + "DontUpgradeMeRLE2.tilemap"))
        self.assertTrue(os.path.exists(upgrade_folder + "IgnoreMe.attrmap"))
        self.assertTrue(os.path.exists(upgrade_folder + "UpgradeMeRLEA.attrmap"))
        self.assertTrue(os.path.exists(upgrade_folder + "subfolder/UpgradeMeRLEA.attrmap"))


if __name__ == '__main__':
    unittest.main()
