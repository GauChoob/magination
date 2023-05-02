import unittest
import os
import shutil
import filecmp
import projutils.utils as utils
import projutils.sprite as sprite
import projutils.tests.config as config


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/sprite/"
DESTINATION = config.TEMPFOLDER

TESTS = [
    {'filename': '20_6E97.spr', 'address': utils.BankAddress(0x20, 0x6E97), 'size': 25}
]


class TestSprite(unittest.TestCase):
    def setUp(self):
        os.makedirs(config.TEMPFOLDER, exist_ok=True)
        # Override the destination folders into the temporary folder
        sprite.SPRITE_FOLDER = DESTINATION + sprite.SPRITE_FOLDER

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_sprite(self):
        for test in TESTS:
            with self.subTest(filename=test['filename']):
                rom = utils.Rom(utils.Rom.MN)
                spr = sprite.Sprite(rom, test['address'])
                spr.save(sprite.SPRITE_FOLDER + test['filename'])

                self.assertEqual(spr.size(), test['size'])
                self.assertTrue(filecmp.cmp(sprite.SPRITE_FOLDER + test['filename'], ASSETSFOLDER + test['filename'], shallow=False))

                spr2 = sprite.Sprite(ASSETSFOLDER + test['filename'])
                self.assertEqual(spr.getBinary(), spr2.getBinary())


if __name__ == '__main__':
    unittest.main()
