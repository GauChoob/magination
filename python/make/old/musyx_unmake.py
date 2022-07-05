import shutil, os

#This module deletes all the final assets used in the assembly of the ROM for musyx

# 1) It deletes the folder musyx\project\Output

folder = r'musyx/project/Output/'

for filename in os.listdir(folder):
    file_path = os.path.join(folder, filename)
    try:
        if os.path.isfile(file_path) or os.path.islink(file_path):
            os.unlink(file_path)
        elif os.path.isdir(file_path):
            shutil.rmtree(file_path)
    except Exception as e:
        print('Failed to delete %s. Reason: %s' % (file_path, e))