import os
import shutil
import subprocess


MUSYX_BANK = 0x30
MUSYX_BANK_LAST = 0x40

# This module makes the musyx include files
# 1) It runs Compile.bat (MUConv.exe)
# 2) then splits the pool file into 0x4000 chunks
# 3) then it inserts unused file fragments in the uninitialized portion of the sample data
#       (the released version of the game has these unused file fragments)

subprocess.call(["Compile.bat"], cwd=r'musyx/project/', shell=True)  # , stdout=subprocess.DEVNULL)

with open(r"musyx\project\Output\magination.pool", "rb") as f:
    for i in range(MUSYX_BANK + 1, MUSYX_BANK_LAST):
        with open(r"musyx\project\Output\bank_{:03X}_musyx_pool_{}.dat".format(i, "sampledata" if i == MUSYX_BANK + 1 else "songdata"), "wb") as g:
            g.write(f.read(0x4000))
            pos = g.tell()
            if pos < 0x4000:
                g.write(bytes([0x00] * (0x4000 - pos)))


# Insert the unused file fragments into the sample data at MUSYX_BANK + 1

FRAGMENTS = [
    [0x4200, "needs_windows.exe.dat"],
    [0x4400, "background_task.exe.dat"],
    [0x5400, "everquest_update.txt.dat"],
    [0x7A00, "muconv_output.txt.dat"],
]


with open(r"musyx\project\Output\bank_{:03X}_musyx_pool_{}.dat".format(MUSYX_BANK + 1, "sampledata"), "r+b") as f:
    for fragment in FRAGMENTS:
        f.seek(fragment[0] - 0x4000)
        with open(r"musyx/file_fragments/" + fragment[1], "rb") as g:
            f.write(g.read())

# Move the contents of the folder into the autogenerated folder

if not os.path.exists("autogenerated/musyx"):
    os.makedirs("autogenerated/musyx")

for file in os.listdir(r"musyx\project\Output"):
    print(file)
    shutil.move(os.path.join(r"musyx\project\Output", file), r"autogenerated\musyx")

os.rmdir(r"musyx\project\Output")
