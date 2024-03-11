
import os
import projutils.config as config
import projutils.sprite as sprite
import projutils.tileset as tileset
import projutils.vram as vram
import projutils.png as png
import projutils.color as color

PROJFILES = os.path.dirname(__file__)
PALETTE = PROJFILES + "/data/AllSprites.pal.png"
PREVIEW_FOLDER = config.outdir + "preview/"
PREVIEW_SPRITES = PREVIEW_FOLDER + "sprites/"


def render(sprites: dict[str, sprite.Sprite], vrams: dict[str, vram.VRAMTiles], sprite_pal):
    for sprite_name, sprite in sprites.items():
        tileset_name = sprite_name.split('_')[0]
        if tileset_name not in vrams:
            continue
        pixels = [[0]*256 for row in range(256)]
        vrams[tileset_name].paintSprite(pixels, sprite, 128, 128)
            
        with open(PREVIEW_SPRITES+sprite_name+".png", 'wb') as f:
            w = png.Writer(256, 256, alpha=False, bitdepth=8, palette=sprite_pal)
            w.write(f, pixels)

def load_palette():
    pal = color.Palette.init_from_original_file(PALETTE).get_png_palette()
    pal_transparent = [(color[0], color[1], color[2], 255) for color in pal]
    pal_transparent[0] = (pal_transparent[0][0], pal_transparent[0][1], pal_transparent[0][2], 0)
    return pal_transparent

def load_tilesets(tilesets: dict[str, tileset.Bitmap]) -> dict[str, vram.VRAMTiles]:
    vrams = {}
    for tilename, bitmap in tilesets.items():
        vbk = 1 if 'Tony' in tilename else 0
        vramtiles = vram.VRAMTiles()
        vramtiles.storeImage(vbk, bitmap.pixels, 0)
        vrams[tilename] = vramtiles
    return vrams

def read_contents(directory) -> list:
    sprites = {}
    tilesets = {}
    for file in os.listdir(directory):
        if file[-4:] == '.spr':
            sprites[file[:-4]] = sprite.Sprite.init_from_original_file(directory + file)
        if file[-12:] == '.tileset.png':
            tilesets[file[:-12]] = tileset.Bitmap.init_from_original_file(directory + file)
    return [sprites, tilesets]


def _make_dirs() -> None:
    os.makedirs(PREVIEW_SPRITES, exist_ok=True)

def render_all(directory: str):
    _make_dirs()
    sprites, tilesets = read_contents(directory)
    vrams = load_tilesets(tilesets)
    sprite_pal = load_palette()
    render(sprites, vrams, sprite_pal)
