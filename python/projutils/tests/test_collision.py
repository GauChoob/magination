import unittest
import os
import projutils.collision as collision


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/collision/"


class TestCollision(unittest.TestCase):
    def test_collisionIDs(self):
        collision_ids = collision.CollisionIDs(ASSETSFOLDER + "collision_include.asm")
        self.assertEqual(len(collision_ids.ids), 121)
        self.assertEqual(collision_ids.ids[0x40], "COLLID_TR00")


if __name__ == '__main__':
    unittest.main()
