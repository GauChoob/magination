import sys
import projutils.utils as u

"""Some quick command-line utilities for quick calculations"""


def main():
    args = sys.argv
    if args[1] == 'addr':
        if len(args) == 4:
            address = u.BankAddress(int(args[2], 0), int(args[3], 0))
        else:
            address = u.BankAddress(int(args[2], 0))
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


if __name__ == "__main__":
    main()
