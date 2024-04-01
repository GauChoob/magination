import logging
import sys
sys.path.append('python/')
if True:
    import make.musyx as musyx


def main():
    musyx.do()


if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG)
    main()
