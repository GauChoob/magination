from dataclasses import dataclass
import projutils.utils as utils


@dataclass
class Start:
    label: str

    def __str__(self):
        return 'Fightscene_FightFX_MoveTable_TableStart {}'.format(self.label)


@dataclass
class Normal:
    linepos: utils.BankAddress
    x: int
    y: int
    delay: int

    def __str__(self):
        return 'Fightscene_FightFX_MoveTable_Instruction {}, {}, {}'.format(self.x, self.y, self.delay)


@dataclass
class Loop:
    linepos: utils.BankAddress
    times: int

    def __str__(self):
        return 'Fightscene_FightFX_MoveTable_LoopEnd {}'.format(self.times)


class Goto:
    def __str__(self):
        return 'Fightscene_FightFX_MoveTable_LoopStart'


@dataclass
class End:
    def __str__(self):
        return 'Fightscene_FightFX_MoveTable_TableEnd'

FX = [
    (0x6BDC, 0x30),
    (0x6C0C, 0x30),
    (0x6C3C, 0x24),
    (0x6C60, 0x54),
    (0x6CB4, 0xA8),
    (0x6D5C, 0x1D),
]
rom = utils.Rom()

for fx in FX:
    startpos = utils.BankAddress(0x04, fx[0])
    curpos = utils.BankAddress(0x04, fx[0])
    endpos = utils.BankAddress(0x04, fx[0] + fx[1])
    outlines = []
    label = 'Fightscene_FightFX_MoveTable_{:04X}'.format(fx[0])
    while curpos < endpos:
        linepos = curpos - startpos
        x = rom.getSignedByte(curpos)
        curpos += 1
        y = rom.getSignedByte(curpos)
        curpos += 1
        delay = rom.getByte(curpos)
        curpos += 1
        if x == y == delay == 0:
            goto = rom.getByte(curpos)
            curpos += 1
            times = rom.getByte(curpos)
            curpos += 1
            outlines.append(Loop(linepos, times))
            found = False
            for i, line in enumerate(outlines):
                if line.linepos == goto:
                    found = True
                    outlines.insert(i, Goto())
                    break
            if not found:
                print('LOOP ERROR with {}'.format(label))
        else:
            outlines.append(Normal(linepos, x, y, delay + 1))
    outlines.insert(0, Start(label))
    outlines.append(End())
    print('\n'.join([str(line) for line in outlines]))
    if curpos > endpos:
        print('ERROR with {}'.format(label))
        print(curpos, endpos)
    print('\n\n\n')