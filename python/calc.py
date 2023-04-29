import sys
import projutils.utils as u

"""Some quick command-line utilities"""


def main():
    args = sys.argv
    if args[1] == 'addr':
        if len(args) == 4:
            address = u.BankAddress(int(args[2], 0), int(args[3], 0))
        else:
            address = u.BankAddress(int(args[2], 0))
        print(str(address))


if __name__ == "__main__":
    main()
