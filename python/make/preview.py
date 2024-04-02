import sys
import projutils.preview as preview


def do():
    argv_len = len(sys.argv)
    if argv_len < 3:
        preview.preview_all()
        return
    for i in range(2, argv_len):
        preview.preview_one(sys.argv[i])
