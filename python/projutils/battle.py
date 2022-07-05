targets = [
    "XX_HERO",  # The first 10 entries point to specific creatures. These do not have an Enum at the moment
    "XX_ALLY0",
    "XX_ALLY1",
    "XX_ALLY2",
    "XX_ALLY3",
    "XX_ENEMY0",
    "XX_ENEMY1",
    "XX_ENEMY2",
    "XX_ENEMY3",
    "XX_MAGI",
    "Battle_TARGET_ME",  # 0x0A
    "Battle_TARGET_NONE",
    "Battle_TARGET_ALLYEMPTY",
    "Battle_TARGET_ENEMYEMPTY",
    "Battle_TARGET_ANYCREATURE",
    "Battle_TARGET_ALLYMAGI",
    "Battle_TARGET_ENEMYMAGI",
    "Battle_TARGET_ENEMYMAGI_EVASION",
    "Battle_TARGET_ANY",
    "Battle_TARGET_ANY_EVASION",
    "Battle_TARGET_ALLENEMY",
    "Battle_TARGET_ALLENEMY_MAGI",
    "Battle_TARGET_ALLALLY",
    "Battle_TARGET_ALLALLY_ME",
    "Battle_TARGET_ALLALLY_MAGI",
    "Battle_TARGET_ALLALLY_MAGI_ME",
    "Battle_TARGET_ALL",
    "Battle_TARGET_ALL_ME",
    "Battle_TARGET_ALL_MAGI",
    "Battle_TARGET_ALL_MAGI_ME",
    "Battle_TARGET_DEPENDANT",  # 0x1E
]


def battletarget_num_to_enum(id: int) -> str:
    '''Given a number, returns corresponding asm symbol'''
    assert 0x1E >= id >= 0x00, "Input must be <= 0x1E"
    return targets[id]


elements = [
    "Earth",
    "Fire",
    "Wind",
    "Water",
    "Grass",
    "Shadow",
    "Electrical",
    "UNUSED",
]


def element_num_to_enums(val: int) -> str:
    ''' Given a number, returns the corresponding asm symbol or symbols
    Format: "elementEarth", "elementNone", etc
    If multiple elements are selected:
    Format: "(elementEarth | elementGrass)"'''
    myelems = []
    for i in range(len(elements)):
        if val & (1 << i):
            myelems.append("element"+elements[i])
    if len(myelems) > 1:
        return "(" + " | ".join(myelems) + ")"
    elif len(myelems) == 1:
        return myelems[0]
    else:
        return "elementNone"


relics = [
    "Relic_NULL",
    "Relic_ARCHAICLEAF",
    "Relic_ARMORORB",
    "Relic_BAGOFBONES",
    "Relic_BARKTHIMBLE",
    "Relic_CHANNELEDGEM",
    "Relic_CORFPEARL",
    "Relic_CRIMSONVOID",
    "Relic_EARTHSAURA",
    "Relic_ENDBRINGER",
    "Relic_ENERGYGEM",
    "Relic_FLAMEAURA",
    "Relic_FLAMEESSENCE",
    "Relic_GEMOFNAROOM",
    "Relic_GOLDENCLOVER",
    "Relic_GRAILOFLIFE",
    "Relic_HYRENSCLAW",
    "Relic_LEAFESSENCE",
    "Relic_LUCENTBELT",
    "Relic_MAELSTROM",
    "Relic_OMBORSAMULET",
    "Relic_PHANTOMWIND",
    "Relic_PINCHOFLIFE",
    "Relic_RABBAGEFOOT",
    "Relic_RAGESTONE",
    "Relic_SHADOWVEIL",
    "Relic_SHIELDORB",
    "Relic_SKYESSENCE",
    "Relic_SPICEOFLIFE",
    "Relic_STONEESSENCE",
    "Relic_STONEOFDOOM",
    "Relic_STONEOFLIFE",
    "Relic_SWORDOFWIND",
    "Relic_TIDEESSENCE",
    "Relic_TITANRING",
    "Relic_WATERORB",
    "Relic_WISHBONE",
]


def relic_num_to_enum(id: int) -> str:
    assert len(relics) > id >= 0, "Out of bounds"
    return relics[id]
