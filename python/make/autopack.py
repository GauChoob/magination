import logging
import os
import shutil
import make.utils as utils
import projutils.autopack as autopack


AUTO_AUTOPACK_FOLDER = 'autogenerated\\autopack\\'
AUTO_AUTOPACK_FILE = 'autogenerated\\autopack\\autopack.asm'
AUTOPACK_SOURCE = 'autopack\\autopack.config'
AUTOPACK_FILES = 'autogenerated\\assets\\scenes\\'


def check():
    """If autogenerated file, or any scene file is modified later, then we return True"""
    auto_time = utils.get_last_modified(AUTO_AUTOPACK_FILE)
    file_time = utils.get_last_modified(AUTOPACK_SOURCE)
    if auto_time <= file_time:
        return True
    for header, dirs, files in os.walk(AUTOPACK_FILES):
        for file in files:
            full_path = os.path.join(header, file)
            file_time = utils.get_last_modified(full_path)
            if auto_time <= file_time:
                return True
    return False


def delete():
    if os.path.exists(AUTO_AUTOPACK_FOLDER):
        logging.debug('Deleting autogenerated autopack files')
        shutil.rmtree(AUTO_AUTOPACK_FOLDER)


def build():
    autopack.AutopackFile(AUTOPACK_SOURCE).make_file(AUTO_AUTOPACK_FOLDER)
    logging.debug(AUTO_AUTOPACK_FOLDER)


def do():
    if not check():
        logging.info('Autopack already built')
        return
    logging.info('Building Autopack')
    delete()
    build()