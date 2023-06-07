import os

BASEPATH = 'assets/fightscene/arena/'

for folder in os.listdir('assets/fightscene/arena/'):
    arena = BASEPATH + folder + '/'
    for file in os.listdir(arena):
        ori = arena + file
        new = arena + file[11:]
        os.rename(ori, new)