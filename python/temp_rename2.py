import os

for dirpath, dirnames, filenames in os.walk('assets\\sprites\\'):
    for filename in filenames:
        if filename.startswith('BITMAP_Sprite_'):
            bad_name = os.path.join(dirpath, filename)
            good_name = os.path.join(dirpath, filename[14:])
            print(good_name)
            os.rename(bad_name, good_name)