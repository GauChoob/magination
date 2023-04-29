
from dataclasses import dataclass
from projutils.utils import BankAddress, Rom


rom = Rom()


class MagiTable:

    ANIM_NAMES = [
        "Idle",
        "Focus"
        "Summon",
        "Victory",
        "Defeat",
        "Focus2", # Tony exclusive
        "Choose", # Tony exclusive
    ]

    def __init__(self, row):
        self.animcount = 7 if row.row == 0 else 5  # Tony has 7 anims exceptionally
        self.name = row.name
        self.address = row.data

        self.anims = [rom.getBankAddress(self.address + i*3, getobj=True) for i in range(self.animcount)]

    def __eq__(self, other):
        return self.address == other.address

    def __hash__(self):
        return self.address.getPos()

    def getOutput(self):
        return '    ; ${:04X}\nBattle_MagiAnim_{}::\n{}'.format(self.address.getAddress(), self.name, '\n'.join(['    dw SCRIPT_BATTLE_MAGIANIM_' + str(anim) for anim in self.anims]))

    def __repr__(self):
        return self.getOutput()


class MainTable:

    @dataclass
    class Row:
        def __init__(self, i):
            self.row = i
            self.address = MainTable.TABLE_LOCATION + i*2
            self.data = BankAddress(MainTable.TABLE_LOCATION.getBank(), rom.getWord(self.address))
            self.name = rom.getString(MainTable.MAGI_NAMES_LOCATION + i*10, 10).strip()
            if 8 <= i <= 10:  # Agram
                self.name += str(i - 7)
            if 11 <= i <= 18:  # ShadowMagi
                self.name += str(i - 10)

        def getOutput(self):
            return '    dw Battle_MagiAnim_' + self.name

    TABLE_LENGTH = 0x14
    TABLE_LOCATION = BankAddress(0x05, 0x5CF1)
    MAGI_NAMES_LOCATION = BankAddress(0x19E16)

    def __init__(self, rom):
        self.rows = [self.Row(i) for i in range(MainTable.TABLE_LENGTH)]

        self.magitables = set()
        for row in self.rows:
            self.magitables.add(MagiTable(row))
        self.magitables = sorted(self.magitables, key=lambda x : x.address)

    def getOutput(self):
        return (
            '    ; ${:04X}\nBattle_MagiAnim_Table::\n{}\n\n'.format(MainTable.TABLE_LOCATION.getAddress(), '\n'.join([row.getOutput() for row in self.rows])) +
            '\n\n'.join([magitable.getOutput() for magitable in self.magitables])
        )


table = MainTable(rom)
print(table.getOutput())
