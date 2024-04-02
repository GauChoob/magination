import unittest
import projutils.battle as battle


class TestBattle(unittest.TestCase):
    def test_battletarget_num_to_enum(self):

        # Make sure the targets array does not change size
        self.assertEqual(len(battle.targets), 0x1F)

        # Check out of bounds
        with self.assertRaises(AssertionError):
            battle.battletarget_num_to_enum(-1)
        with self.assertRaises(AssertionError):
            battle.battletarget_num_to_enum(0x1F)

        # Make sure none of the Symbol names have changed
        with open('source/game/battle/battle_equ.asm', 'r') as f:
            text = f.read()
        for i in range(0x0A, 0x1F):
            with self.subTest(index=i):
                self.assertTrue(battle.targets[i] in text)

    def test_element_num_to_enums(self):

        # Make sure the elements array does not change size
        self.assertEqual(len(battle.elements), 8)

        # Test zero case, single case and multiple case
        self.assertEqual(battle.element_num_to_enums(0b00000000), 'elementNone')
        self.assertEqual(battle.element_num_to_enums(0b00000001), 'elementEarth')
        self.assertEqual(battle.element_num_to_enums(0b00000011), '(elementEarth | elementFire)')

        # Make sure none of the Symbol names have changed
        with open('source/game/battle/battle_equ.asm', 'r') as f:
            text = f.read()
        for i in range(len(battle.elements)):
            with self.subTest(index=i):
                self.assertTrue(battle.elements[i] in text)
        self.assertTrue('elementNone' in text)

    def test_relic_num_to_enum(self):

        self.assertEqual(battle.relic_num_to_enum(0), "Relic_NULL")
        self.assertEqual(battle.relic_num_to_enum(36), "Relic_WISHBONE")

        # Check out of bounds
        with self.assertRaises(AssertionError):
            battle.relic_num_to_enum(-1)
        with self.assertRaises(AssertionError):
            battle.relic_num_to_enum(len(battle.relics))

        # Make sure none of the Symbol names have changed
        with open('source/game/battle/relic/relic_table.asm', 'r', encoding='utf-8') as f:
            text = f.read()
        for i in range(len(battle.relics)):
            with self.subTest(index=i):
                self.assertTrue(battle.relics[i] in text)


if __name__ == '__main__':
    unittest.main()
