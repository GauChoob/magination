
from dataclasses import dataclass
from projutils.utils import BankAddress, Rom, SymFile
import projutils.magireader as magireader


rom = Rom()
sym = SymFile()


class MagiTable:

    ANIM_NAMES = [
        "Idle",
        "Focus",
        "Summon",
        "Victory",
        "Defeat",
        "Focus2", # Tony exclusive
        "Choose", # Tony exclusive
    ]

    END_ADDRESSES = {
        'ShadowMagi1': BankAddress(0x20, 0x711E)
    }

    def __init__(self, row):
        self.animcount = 7 if row.row == 0 else 5  # Tony has 7 anims exceptionally
        self.name = row.name
        self.address: BankAddress = row.data

        self.anims = [rom.getBankAddress(self.address + i*3, getobj=True) for i in range(self.animcount)]
        self.symbols = [self.getSymbol(i) for i in range(self.animcount)]
        self.updateSymFile()

        assert(self.anims[0] == min(self.anims))

    def __eq__(self, other):
        return self.address == other.address

    def __hash__(self):
        return self.address.getPos()

    def getOutput(self):
        return '    ; ${:04X}\nBattle_MagiAnim_{}::\n{}'.format(
                self.address.getAddress(),
                self.name,
                '\n'.join(['    dw ' + symbol for symbol in self.symbols])
            )

    def getSymbol(self, anim_i):
        return 'SCRIPT_Actor_Battle_{}_{}'.format(self.name, MagiTable.ANIM_NAMES[anim_i])

    def getAddress(self, anim_i):
        return self.anims[anim_i]

    def updateSymFile(self):
        # Don't run this twice
        for data in zip(self.anims, self.symbols):
            sym.addSymbol(data[0].getBank(), data[0].getAddress(), data[1])

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

print(sym.getSymbol(0x20, 0x74C8, 'X'))

for magitable in table.magitables:
    print(magitable.anims)
    start = magitable.anims[0]
    if magitable.name in MagiTable.END_ADDRESSES:
        end = MagiTable.END_ADDRESSES[magitable.name]
    else:
        end = start + 0x200
    print(magireader.interpret(magitable.anims[0], end, sym))
    input()
