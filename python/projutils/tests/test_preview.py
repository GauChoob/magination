import unittest
import os
import shutil
import projutils.preview as preview
import projutils.tests.config as config
import projutils.tests.helper as helper


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/preview/"
SCENE_NAME = "Naroom_Grove_Pathway"
SCENE_NAME_PNG = SCENE_NAME + ".png"
BASEPATH = "python/out/preview/"
GENERATED_IMAGES = [
    BASEPATH + "collision/" + SCENE_NAME_PNG,
    BASEPATH + "metatilemap/" + SCENE_NAME_PNG,
    BASEPATH + "pattern/" + SCENE_NAME_PNG,
    BASEPATH + "pattern_mini/" + SCENE_NAME_PNG,
    BASEPATH + "vram/" + SCENE_NAME_PNG,
]


class TestPreview(unittest.TestCase):
    def setUp(self):
        os.makedirs(config.TEMPFOLDER, exist_ok=True)
        # Override the destination folders into the temporary folder
        preview.PREVIEW_SCENES = config.TEMPFOLDER + preview.PREVIEW_SCENES
        preview.PREVIEW_PATTERN = config.TEMPFOLDER + preview.PREVIEW_PATTERN
        preview.PREVIEW_PATTERN_MINI = config.TEMPFOLDER + preview.PREVIEW_PATTERN_MINI
        preview.PREVIEW_COLLISION = config.TEMPFOLDER + preview.PREVIEW_COLLISION
        preview.PREVIEW_VRAM = config.TEMPFOLDER + preview.PREVIEW_VRAM

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_preview(self):
        preview._setup()
        with helper.SuppressText() as _:
            preview.preview_one(SCENE_NAME)
        for path in GENERATED_IMAGES:
            helper.assert_png_cmp(self, ASSETSFOLDER + path, config.TEMPFOLDER + path)


if __name__ == '__main__':
    unittest.main()
