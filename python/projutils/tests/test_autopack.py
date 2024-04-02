import unittest
import os
import shutil
import filecmp
import projutils.autopack as autopack
import projutils.tests.config as config


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/autopack/"
DESTINATION = config.TEMPFOLDER


class TestAutopack(unittest.TestCase):
    def setUp(self):
        os.makedirs(config.TEMPFOLDER, exist_ok=True)

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def tryPack(self, i: int):
        source_folder = ASSETSFOLDER + str(i) + "/"
        a = autopack.AutopackFile(source_folder + "autopack.config")
        a.make_file(DESTINATION)

        # Check if the .asm files are identical
        source_asm = source_folder + "autopack.asm"
        target_asm = DESTINATION + "autopack.asm"
        with open(source_asm, "r") as f:
            source_lines = f.readlines()
        with open(target_asm, "r") as f:
            target_lines = f.readlines()
        # Remove the first line of text as it contains the file path which varies based on project location
        source_lines.pop(0)
        target_lines.pop(0)
        self.assertEqual(source_lines, target_lines)

        # Check if the .sym files are identical
        self.assertTrue(filecmp.cmp(source_folder + "autopack.sym", DESTINATION + "autopack.sym"))

    def test_AutopackTooSmall(self):
        """Not enough space for all the files"""
        with self.assertRaises(MemoryError):
            self.tryPack(0)

    def test_AutopackChangeOrder(self):
        """Sort by size"""
        self.tryPack(1)


if __name__ == '__main__':
    unittest.main()
