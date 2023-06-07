import projutils.utils as utils
import projutils.battle as battle
import projutils.creature as creature
import projutils.config as config

rom = utils.Rom()
sym = utils.SymFile()

BANK = 4
START = 0x415B
DELTA = 0x2D
N = 0x6D


def read_byte():
    global curpos
    val = rom.getByte(curpos)
    curpos += 1
    return str(val)


def read_BEword():
    # Big-endian
    global curpos
    big = rom.getByte(curpos)
    curpos += 1
    small = rom.getByte(curpos)
    curpos += 1
    return str(big*256 + small)


def read_element():
    val = int(read_byte())
    return battle.element_num_to_enums(val)


def read_ability():
    global curpos
    val = rom.getWord(curpos)
    curpos += 2
    return creature.ability_addr_to_name(val)


def read_bankaddr():
    global curpos
    bank, addr = rom.getAddressBank(curpos)
    curpos += 3
    symbols = sym.getSymbol(bank, addr, 'UNK')
    assert len(symbols) == 1
    return symbols[0]


out = []
for i in range(N):
    curpos = utils.BankAddress(BANK, START + i*DELTA)
    line = []

    line.append(creature.CREATURE_NAMES[i])
    line.append(read_byte())  # Type
    line.append(read_byte())  # Energy
    line.append(read_byte())  # UNK
    line.append(read_byte())  # Max Energy
    line.append(read_byte())  # Strength
    line.append(read_byte())  # Skill
    line.append(read_byte())  # Speed
    line.append(read_byte())  # Defense
    line.append(read_byte())  # Resist
    line.append(read_byte())  # Luck
    line.append(read_byte())  # EnergyUp
    line.append(read_element())  # Resistance
    line.append(read_element())  # Weakness
    line.append(read_byte())  # StatusImmune
    line.append(read_byte())  # StatusPerm
    line.append(read_byte())  # MagiType (Previously AI?)
    line.append(read_byte())  # Placeholder (previously Ring cost)
    line.append(read_byte())  # Unk
    line.append(read_ability())  # Ability
    line.append(read_ability())  # Ability
    line.append(read_ability())  # Ability
    line.append(read_ability())  # Ability
    line.append(read_byte())  # AbilityLevel
    line.append(read_byte())  # AbilityLevel
    line.append(read_byte())  # AbilityLevel
    line.append(read_byte())  # AbilityLevel
    line.append(read_bankaddr())  # CombatTileset
    line.append(read_bankaddr())  # CombatTilemap
    line.append(read_byte())  # X
    line.append(read_byte())  # Y
    line.append(read_bankaddr())  # CombatPal
    line.append(read_bankaddr())  # CardTileset
    line.append(read_byte())  # PaletteOffset

    out.append(','.join(line))

with open(config.outdir + 'table.csv', 'w') as f:
    f.write('\n'.join(out))