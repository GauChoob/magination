import unittest
import os
import shutil
import projutils.lbm as lbm
import projutils.tests.helper as helper
import projutils.tests.config as config


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/lbm/"
IMAGES = []


class TestLBM(unittest.TestCase):
    def setUp(self):
        os.makedirs(config.TEMPFOLDER, exist_ok=True)

    def tearDown(self):
        if os.path.exists(config.TEMPFOLDER):
            shutil.rmtree(config.TEMPFOLDER)

    def test_lbm(self):
        for image in IMAGES:
            with self.subTest(image=image):
                filein = ASSETSFOLDER + image
                fileout = config.TEMPFOLDER + image + '.png'
                filecmp = ASSETSFOLDER + image + '.png'
                lbm.LBM(filein).save_png(fileout)
                helper.assert_png_cmp(self, filecmp, fileout)


if __name__ == '__main__':
    unittest.main()
