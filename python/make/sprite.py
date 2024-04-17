import sys
import projutils.preview_sprite as preview_sprite


def do():
    argv_len = len(sys.argv)
    if argv_len < 3:
        preview_sprite.render_all('assets/sprites/')
        return
    preview_sprite.render_all(sys.argv[3])
