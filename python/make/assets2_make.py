import logging
import sys
sys.path.append('python/')
if True:
    import make.musyx as musyx
    import make.autopack as autopack


def main():
    musyx.do()
    autopack.do()


if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG)
    main()
