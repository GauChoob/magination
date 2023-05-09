import sys

lines = []
lines.append([
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
])
lines.append([
    (0x574D - 0x574D, '{}_FaceDownRight'),
    (0x5766 - 0x574D, '{}_FaceDownLeft'),
    (0x577F - 0x574D, '{}_FaceUpRight'),
    (0x5798 - 0x574D, '{}_FaceUpLeft'),
    (0x57B1 - 0x574D, '{}_WalkDown1'),
    (0x57CA - 0x574D, '{}_FaceDown'),
    (0x57E3 - 0x574D, '{}_WalkDown2'),
    (0x57FC - 0x574D, '{}_WalkUp1'),
    (0x5815 - 0x574D, '{}_FaceUp'),
    (0x582E - 0x574D, '{}_WalkUp2'),
    (0x5847 - 0x574D, '{}_WalkRight1'),
    (0x5860 - 0x574D, '{}_FaceRight'),
    (0x5875 - 0x574D, '{}_WalkRight2'),
    (0x588E - 0x574D, '{}_WalkLeft1'),
    (0x58A7 - 0x574D, '{}_FaceLeft'),
    (0x58BC - 0x574D, '{}_WalkLeft2'),
])


def main():
    args = sys.argv
    lineset = 0 if args[1] == 'SCRIPT' else 1
    addr = int(args[2], 0)
    name = args[3]
    for line in lines[lineset]:
        print("        (0x{:04X}, '{}'),".format(line[0] + addr, line[1].format(name)))


if __name__ == "__main__":
    main()
