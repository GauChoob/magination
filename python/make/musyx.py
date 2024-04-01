import logging
import shutil
import os
import re
import subprocess
import make.utils as utils

AUTO_MUSYX_FOLDER = 'autogenerated\\musyx\\'
AUTO_MUSYX_FILE = 'autogenerated\\musyx\\out.txt'
MUSYX_FOLDERS = ['musyx\\file_fragments\\', 'musyx\\project\\']
MUSYX_OUTPUT = 'musyx\\project\\Output'
MUSYX_BANK = 0x30
MUSYX_BANK_LAST = 0x40


def check():
    """If any MusyX file in MUSYX modified later than AUTO_MUSYX, then we return True"""
    auto_musyx_time = utils.get_last_modified(AUTO_MUSYX_FILE)
    for folder in MUSYX_FOLDERS:
        for header, dirs, files in os.walk(folder):
            for file in files:
                full_path = os.path.join(header, file)
                file_time = utils.get_last_modified(full_path)
                if auto_musyx_time <= file_time:
                    return True
    return False


def delete():
    if os.path.exists(AUTO_MUSYX_FOLDER):
        logging.debug('Deleting autogenerated musyx files')
        shutil.rmtree(AUTO_MUSYX_FOLDER)


def build():
    """Makes the MusyX files
    1) Runs Compile.bat (MUConv.exe)
    2) Split the pool file into 0x4000 chunks
    3) Inserts ghost file fragments if ghost data is enabled
    4) Moves the output into the autogenerated folder
    5) Modified SoundIDs.asm to count the number of songs and effects, and reformats slightly"""
    # Run Compile.bat
    compile = subprocess.Popen(["Compile.bat"], cwd='musyx\\project\\', shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    compile.wait()
    for line in compile.stdout:
        parsed = line.decode('ascii').strip()
        if len(parsed) > 0:
            logging.debug(parsed)
    for line in compile.stderr:
        parsed = line.decode('ascii').strip()
        if len(parsed) > 0:
            logging.error(parsed)

    # Split pool file into 0x4000 chunks
    with open("musyx\\project\\Output\\magination.pool", "rb") as f:
        for i in range(MUSYX_BANK + 1, MUSYX_BANK_LAST):
            with open("musyx\\project\\Output\\bank_{:03X}_musyx_pool_{}.dat".format(i, "sampledata" if i == MUSYX_BANK + 1 else "songdata"), "wb") as g:
                g.write(f.read(0x4000))
                pos = g.tell()
                if pos < 0x4000:
                    g.write(bytes([0x00] * (0x4000 - pos)))

    # Check GHOST_DATA param
    with open("source\\game.asm", "r") as f:
        found = False
        for line in f:
            rem = re.search(r"DEF *GHOST_DATA *EQU *(\d*)", line)
            if rem:
                ghost_data = int(rem.group(1))
                found = True
                break
        if not found:
            raise LookupError("GHOST_DATA parameter not found in game.asm")
    # Copy ghost fragments into output file
    FRAGMENTS = [
        [0x4200, "needs_windows.exe.dat"],
        [0x4400, "background_task.exe.dat"],
        [0x5400, "everquest_update.txt.dat"],
        [0x7A00, "muconv_output.txt.dat"],
    ]
    if ghost_data:
        with open("musyx\\project\\Output\\bank_{:03X}_musyx_pool_{}.dat".format(MUSYX_BANK + 1, "sampledata"), "r+b") as f:
            for fragment in FRAGMENTS:
                f.seek(fragment[0] - 0x4000)
                with open("musyx\\file_fragments\\" + fragment[1], "rb") as g:
                    f.write(g.read())

    # Move to autogenerated folder
    if not os.path.exists(AUTO_MUSYX_FOLDER):
        os.makedirs(AUTO_MUSYX_FOLDER)
    for file in os.listdir(MUSYX_OUTPUT):
        logging.debug(file)
        shutil.move(os.path.join(MUSYX_OUTPUT, file), AUTO_MUSYX_FOLDER)
    os.rmdir(MUSYX_OUTPUT)

    # Modify SoundIDs.asm to comply with modern RGBDS standards: add DEF in front of every entry
    # Also write the total number of SFXs and SONGs
    with open("autogenerated\\musyx\\SoundIDs.asm", "r") as f:
        soundids = f.read()
    sfx_count = soundids.count("SFXID_")
    song_count = soundids.count("SONGID_")
    soundids = soundids.replace("SFXID_", "DEF SFXID_")
    soundids = soundids.replace("SONGID_", "DEF SONGID_")
    with open("autogenerated\\musyx\\SoundIDs.asm", "w") as f:
        f.write(soundids)
        f.write(f'DEF MUSYX_NUM_SFX EQU {sfx_count}\n')
        f.write(f'DEF MUSYX_NUM_SONGS EQU {song_count}\n')


def do():
    if not check():
        logging.info('MusyX already built')
        return
    logging.info('Building MusyX')
    delete()
    build()
