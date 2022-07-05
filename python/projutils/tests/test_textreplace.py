import unittest
import os
import shutil
import filecmp
import projutils.textreplace as textreplace
import projutils.utils as utils
import projutils.tests.config as config
import projutils.tests.helper as helper

ASSETSFOLDER = os.path.dirname(__file__) + "/assets/textreplace/"
FILENAME = "bank_012.asm"
FILENAME_INDEX = 0x12


class TestTextReplace(unittest.TestCase):
    def setUp(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)
        os.makedirs(config.TEMPFOLDER, exist_ok=True)
        # Hijack the folder locations
        textreplace.SOURCEDIR = ASSETSFOLDER
        textreplace.OUTDIR = config.TEMPFOLDER

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_replace(self):
        with helper.SuppressText():
            textreplace.reset_files([FILENAME_INDEX])
            textreplace.replace_rom_text(utils.BankAddress(0x12, 0x4000), utils.BankAddress(0x12, 0x4100), "TEST1:", "    $4000 test")
            textreplace.replace_rom_text(utils.BankAddress(0x12, 0x413C), utils.BankAddress(0x12, 0x413D), "TEST2:", "    Within same line")
            textreplace.replace_rom_text(utils.BankAddress(0x12, 0x7FF0), utils.BankAddress(0x12, 0x8000), "TEST3:", "    EOF")
        filecmp.cmp(ASSETSFOLDER + FILENAME, config.TEMPFOLDER + FILENAME)


if __name__ == '__main__':
    unittest.main()
