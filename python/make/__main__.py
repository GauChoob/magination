import logging
import sys
sys.path.append('python/')
import make.musyx as musyx  # noqa: E402
import make.assets as assets  # noqa: E402
import make.autopack as autopack  # noqa: E402


def delete():
    assets.delete_all()
    musyx.delete()
    autopack.delete()


def main():
    assets.do()
    musyx.do()
    autopack.do()


logging.basicConfig(level=logging.DEBUG)
logging.getLogger('PIL.PngImagePlugin').setLevel(logging.ERROR)
globals()[sys.argv[1]]()  # Run the function specified in the command-line
