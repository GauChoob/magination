import sys
import projutils.utils as utils
import projutils.color as color

"""Some quick command-line utilities for quick calculations"""


def main():
    args = sys.argv
    args[1] = args[1].lower()

    if args[1] == 'addr':
        if len(args) == 4:
            address = utils.BankAddress(int(args[2], 0), int(args[3], 0))
        else:
            address = utils.BankAddress(int(args[2], 0))
        print(str(address))

    if args[1] == 'num':
        val = int(args[2], 0)
        print(val)
        print('${:X}'.format(val))
        print('%{:b}'.format(val))

    if args[1] == 'signed':
        val = int(args[2], 0)
        if val >= 128:
            val -= 256
        print(val)
        print('${:X}'.format(val))
        print('%{:b}'.format(val))

    if args[1] == 'rgb':
        if len(args) == 5:
            r, g, b = (int(args[i+2],0) for i in range(3))
            print(color.Color(r, g, b))
        if len(args) == 6:
            r, g, b, a = (int(args[i+2],0) for i in range(4))
            print(color.Color(r, g, b, a))
        if len(args) == 3:
            print(color.Color(int(args[2],0)))


if __name__ == "__main__":
    main()
