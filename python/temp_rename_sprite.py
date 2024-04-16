import os
import sys

def replace_in_files(folder, search_string, replace_string):
    for root, dirs, files in os.walk('assets/sprites/scene/' + folder):
        for file in files:
            if file.endswith('.mgi'):
                file_path = os.path.join(root, file)
                with open(file_path, 'r') as f:
                    content = f.read()
                content = content.replace(search_string, replace_string)
                with open(file_path, 'w') as f:
                    f.write(content)

            if file == f"{search_string}.spr":
                old_file_path = os.path.join(root, file)
                new_file_path = os.path.join(root, f"{replace_string}.spr")
                os.rename(old_file_path, new_file_path)

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python script.py folder search_string replace_string")
        sys.exit(1)

    folder = sys.argv[1]
    search_string = sys.argv[2]
    replace_string = sys.argv[3]

    replace_in_files(folder, search_string, replace_string)