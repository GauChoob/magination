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

    if args[1] == 'dec':
        print(int(args[2], 0))

    if args[1] == 'hex':
        print('${:X}'.format(int(args[2], 0)))
      
    if args[1] == 'bin':
        print('%{:b}'.format(int(args[2], 0)))


if __name__ == "__main__":
    main()
