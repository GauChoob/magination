import unittest
import os
import projutils.utils as utils


ASSETSFOLDER = os.path.dirname(__file__) + "/assets/utils/"


class TestUtils(unittest.TestCase):
    def test_BankAddress(self):
        # getPos, getBank, getAddress base cases
        ba1 = utils.BankAddress(0x9000)
        self.assertEqual(ba1.getPos(), 0x9000)
        self.assertEqual(ba1.getBank(), 2)
        self.assertEqual(ba1.getAddress(), 0x5000)

        # Integer addition
        ba1 += 0x1000
        self.assertEqual(ba1.getPos(), 0xA000)
        self.assertEqual(ba1.getBank(), 2)
        self.assertEqual(ba1.getAddress(), 0x6000)

        # Integer subtraction
        ba1 -= 0x1000
        self.assertEqual(ba1.getPos(), 0x9000)
        self.assertEqual(ba1.getBank(), 2)
        self.assertEqual(ba1.getAddress(), 0x5000)

        # Addition with another BankAddress
        ba2 = ba1 + ba1
        self.assertEqual(ba2.getPos(), 0x12000)
        self.assertEqual(ba2.getBank(), 4)
        self.assertEqual(ba2.getAddress(), 0x6000)

        # __str__
        self.assertEqual(str(ba2), "04:6000 (012000)")

        # __eq__
        ba3 = utils.BankAddress(0x9000)
        ba4 = utils.BankAddress(0x9000)
        self.assertEqual(ba3, ba4)
        ba4 += 1
        self.assertNotEqual(ba3, ba4)

        # __init__ using a BankAddress
        ba4 = utils.BankAddress(ba3)
        self.assertEqual(ba3, ba4)

        # __init__ using Bank and Address
        ba4 = utils.BankAddress(0x02, 0x5000)
        self.assertEqual(ba3, ba4)

        # Bank 0
        ba5 = utils.BankAddress(0x00, 0x2000)
        self.assertEqual(ba5.getPos(), 0x2000)
        self.assertEqual(ba5.getBank(), 0)
        self.assertEqual(ba5.getAddress(), 0x2000)

        # 0x4000
        ba5 = utils.BankAddress(0x01, 0x4000)
        self.assertEqual(ba5.getPos(), 0x4000)
        self.assertEqual(ba5.getBank(), 1)
        self.assertEqual(ba5.getAddress(), 0x4000)

        # 0x8000
        # Not End
        ba5 = utils.BankAddress(0x02, 0x7FFF)
        ba5 += 1
        self.assertEqual(ba5.getPos(), 0xC000)
        self.assertEqual(ba5.getBank(), 3)
        self.assertEqual(ba5.getAddress(), 0x4000)
        # End
        self.assertEqual(ba5.getPos(), 0xC000)
        self.assertEqual(ba5.getBank(end=True), 2)
        self.assertEqual(ba5.getAddress(end=True), 0x8000)

    def test_Rom(self):
        # Load all 3 roms
        rom_mn = utils.Rom()
        rom_mn2 = utils.Rom(utils.Rom.MN)
        self.assertEqual(rom_mn.getRaw(), rom_mn2.getRaw())
        utils.Rom(utils.Rom.ALPHA)
        utils.Rom(utils.Rom.KQ)

        # getByte
        self.assertEqual(rom_mn.getByte(0x120), 0xDD)
        self.assertEqual(rom_mn.getByte(utils.BankAddress(0, 0x120)), 0xDD)
        self.assertEqual(rom_mn.getByte([0, 0x120]), 0xDD)

        # getAddress
        self.assertEqual(rom_mn.getWord(0x121), 0xD9DD)
        self.assertEqual(rom_mn.getWord(utils.BankAddress(0, 0x121)), 0xD9DD)
        self.assertEqual(rom_mn.getWord([0, 0x121]), 0xD9DD)

        # getBankAddress
        self.assertEqual(rom_mn.getBankAddress(0x289), (0x3C, 0x6BFE))
        self.assertEqual(rom_mn.getBankAddress(utils.BankAddress(0, 0x289)), (0x3C, 0x6BFE))
        self.assertEqual(rom_mn.getBankAddress([0, 0x289]), (0x3C, 0x6BFE))

        # getAddressBank
        self.assertEqual(rom_mn.getAddressBank(0x28A), (0x20, 0x6BFE))
        self.assertEqual(rom_mn.getAddressBank(utils.BankAddress(0, 0x28A)), (0x20, 0x6BFE))
        self.assertEqual(rom_mn.getAddressBank([0, 0x28A]), (0x20, 0x6BFE))

        # getString
        self.assertEqual(rom_mn.getString(0x1D3, 0x69), "Magi-Nation is   Specially Designed for Game Boy Color.Please use a Game Boy Color To  Play This Game.   ")

        # __len__
        self.assertEqual(len(rom_mn), 0x200000)

        # Rom(bytes) is not tested, but is implicitly tested in test_rle

    def test_AsmBytesWordsPack(self):
        # AsmBytes
        self.assertEqual(utils.AsmBytes(0x40), "    db $40")
        self.assertEqual(utils.AsmBytes(0x40, split=0), "$40")
        self.assertEqual(utils.AsmBytes([0x40, 0x50]), "    db $40, $50")
        self.assertEqual(utils.AsmBytes([0x40, 0x50], split=0), "$40, $50")
        self.assertEqual(utils.AsmBytes([0x40, 0x50, 0x60, 0x70], split=2), "    db $40, $50\n    db $60, $70")
        with self.assertRaises(AssertionError):
            utils.AsmBytes(-1)
        with self.assertRaises(AssertionError):
            utils.AsmBytes(256)

        # AsmWords
        self.assertEqual(utils.AsmWords(0x4001, split=16), "    dw $4001")
        self.assertEqual(utils.AsmWords(0x4001, split=0), "$4001")
        self.assertEqual(utils.AsmWords([0x4001, 0x5002], split=16), "    dw $4001, $5002")
        self.assertEqual(utils.AsmWords([0x4001, 0x5002, 0x6003], split=0), "$4001, $5002, $6003")
        self.assertEqual(utils.AsmWords([0x4001, 0x5002, 0x6003], split=2), "    dw $4001, $5002\n    dw $6003")
        with self.assertRaises(AssertionError):
            utils.AsmWords(-1, split=0)
        with self.assertRaises(AssertionError):
            utils.AsmWords(256*256, split=0)
        self.assertEqual(utils.AsmWords(b'Spec', split=0), "$7053, $6365")

        # PackWords
        self.assertEqual(utils.PackWords(0x6465), b'ed')
        self.assertEqual(utils.PackWords([0x6465, 0x6620]), b'ed f')

        # PackBytes
        self.assertEqual(utils.PackBytes(0x6C), b'l')
        self.assertEqual(utils.PackBytes([72, 101, 108, 108, 111]), b'Hello')

    def test_SymFile(self):
        sym = utils.SymFile(ASSETSFOLDER + "test.sym")
        self.assertEqual(sym.getSymbol(0, 0x60, "X"), ["Interrupt_Joypad"])
        self.assertEqual(sym.getSymbol(7, 0xD1EC, "X"), ["wBattle_Creature_Ally2.Team", "wBattle_Creature_Ally2"])
        self.assertEqual(sym.getSymbol(5, 0xC000, "DONTEXIST"), ["DONTEXIST_05_C000"])
        self.assertEqual(sym.getVarbit(0xA000, 1), ["FakeVarBit_1"])
        self.assertEqual(sym.getVarbit(0xA000, 3), ["xBIT_00_A000_3"])

    def test_MusyXIDs(self):
        musyx = utils.MusyXIDs(ASSETSFOLDER + "SoundIDs.asm")
        self.assertEqual(len(musyx.sfxid), 40)
        self.assertEqual(len(musyx.songid), 41)
        self.assertEqual(musyx.sfxid[10], "SFXID_Heal")
        self.assertEqual(musyx.songid[4], "SONGID_Overture_Pt_3")


if __name__ == '__main__':
    unittest.main()
