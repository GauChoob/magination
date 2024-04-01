import logging
import sys
sys.path.append('python/')
if True:
    import make.musyx as musyx
    import make.assets as assets
    import make.autopack as autopack


def main():
    musyx.do()
    assets.do()
    autopack.do()


if __name__ == '__main__':
    logging.basicConfig(level=logging.DEBUG)
    main()
