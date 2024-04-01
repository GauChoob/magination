import pathlib
import os


def get_last_modified(path: str | pathlib.Path):
    """Gets last modified time (or 0 if file does not exist)"""
    if not os.path.exists(path):
        return 0
    return os.path.getmtime(path)