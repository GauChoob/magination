import unittest
import os
import shutil
import projutils.preview_sprite as preview_sprite
import projutils.tests.config as config
import projutils.tests.helper as helper


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/preview_sprite/"
SPRITE_NAME = "Tony_FlyDown2.png"
BASEPATH = "python/out/preview_sprite/"
OUTPATH = config.TEMPFOLDER


class TestPreviewSprite(unittest.TestCase):
    def setUp(self):
        os.makedirs(config.TEMPFOLDER, exist_ok=True)
        # Override the destination folders into the temporary folder
        preview_sprite.PREVIEW_FOLDER = OUTPATH
        preview_sprite.PREVIEW_SPRITES = OUTPATH + "sprites/"

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_preview_sprite(self):
        preview_sprite.render_all(ASSETSFOLDER)
        helper.assert_png_cmp(self, ASSETSFOLDER + SPRITE_NAME, preview_sprite.PREVIEW_SPRITES + SPRITE_NAME)


if __name__ == '__main__':
    unittest.main()
