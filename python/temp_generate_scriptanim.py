import sys
import projutils.utils as utils
import projutils.sprite as sprite

script_anims = [
    (0x58D5 - 0x58D5, "SCRIPT_ANIM_{}_WalkUp"),
    (0x58E5 - 0x58D5, "SCRIPT_ANIM_{}_WalkDown"),
    (0x58F5 - 0x58D5, "SCRIPT_ANIM_{}_WalkLeft"),
    (0x5905 - 0x58D5, "SCRIPT_ANIM_{}_WalkRight"),
    (0x5915 - 0x58D5, "SCRIPT_ANIM_{}_RunUp"),
    (0x5925 - 0x58D5, "SCRIPT_ANIM_{}_RunDown"),
    (0x5935 - 0x58D5, "SCRIPT_ANIM_{}_RunLeft"),
    (0x5945 - 0x58D5, "SCRIPT_ANIM_{}_RunRight"),
    (0x5955 - 0x58D5, "SCRIPT_ANIM_{}_FaceUp"),
    (0x595F - 0x58D5, "SCRIPT_ANIM_{}_FaceDown"),
    (0x5969 - 0x58D5, "SCRIPT_ANIM_{}_FaceLeft"),
    (0x5973 - 0x58D5, "SCRIPT_ANIM_{}_FaceRight"),
    (0x597D - 0x58D5, "SCRIPT_ANIM_{}_FaceUpLeft"),
    (0x5987 - 0x58D5, "SCRIPT_ANIM_{}_FaceUpRight"),
    (0x5991 - 0x58D5, "SCRIPT_ANIM_{}_FaceDownLeft"),
    (0x599B - 0x58D5, "SCRIPT_ANIM_{}_FaceDownRight"),
    (0x59A5 - 0x58D5, "SCRIPT_ANIM_{}_FaceHero"),
    (0x59BC - 0x58D5, ".FaceUp"),
    (0x59C3 - 0x58D5, ".FaceDown"),
    (0x59CA - 0x58D5, ".FaceLeft"),
    (0x59D1 - 0x58D5, ".FaceRight"),
]
spritelines = [
    'SPRITE_{}_FaceDownRight',
    'SPRITE_{}_FaceDownLeft',
    'SPRITE_{}_FaceUpRight',
    'SPRITE_{}_FaceUpLeft',
    'SPRITE_{}_WalkDown1',
    'SPRITE_{}_FaceDown',
    'SPRITE_{}_WalkDown2',
    'SPRITE_{}_WalkUp1',
    'SPRITE_{}_FaceUp',
    'SPRITE_{}_WalkUp2',
    'SPRITE_{}_WalkRight1',
    'SPRITE_{}_FaceRight',
    'SPRITE_{}_WalkRight2',
    'SPRITE_{}_WalkLeft1',
    'SPRITE_{}_FaceLeft',
    'SPRITE_{}_WalkLeft2',
]


def SPRITE(bank, addr, name):
    rom = utils.Rom()
    curpos = utils.BankAddress(bank, addr)

    for spriteline in spritelines:
        print("        (0x{:04X}, '{}'),".format(curpos.getAddress(), spriteline.format(name)))
        spr = sprite.Sprite(rom, curpos)
        curpos = spr.end
    
    return curpos


def SCRIPT(bank, addr, name):
    for script_anim in script_anims:
        print("        (0x{:04X}, '{}'),".format(script_anim[0] + addr, script_anim[1].format(name)))


def BOTH(bank, addr, name):
    curpos = funcs['sprite'](bank, addr, name)
    funcs['script'](bank, curpos.getAddress(), name)


funcs = {
    'script': SCRIPT,
    'sprite': SPRITE,
    'both': BOTH
}


def main():
    args = sys.argv
    bank = int(args[2], 0)
    addr = int(args[3], 0)
    name = args[4]
    funcs[args[1].lower()](bank, addr, name)


if __name__ == "__main__":
    main()
