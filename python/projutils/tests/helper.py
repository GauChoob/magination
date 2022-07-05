import io
import sys
import unittest
import projutils.png as png


"""Some helper functions for the tests"""


def assert_png_cmp(parent: unittest.TestCase, file1: str, file2: str):
    """Assert that two png files are identical to each other"""
    file1 = png.Reader(file1)
    file2 = png.Reader(file2)
    file1data = list(file1.read())
    file2data = list(file2.read())
    # Collapse an iterator
    file1data[2] = list(file1data[2])
    file2data[2] = list(file2data[2])
    file1.file.close()
    file2.file.close()
    parent.assertEqual(file1data, file2data)


class SuppressText:
    """Suppresses the print function

    Usage:

    with SuppressText():
        Do Stuff
    """
    def __init__(self):
        self.out = io.StringIO()

    def __enter__(self):
        sys.stdout = self.out
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        sys.stdout = sys.__stdout__
        return False
