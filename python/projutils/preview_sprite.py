
import os
import projutils.config as config
import projutils.sprite as sprite
import projutils.tileset as tileset
import projutils.vram as vram
import projutils.png as png
import projutils.color as color

PROJFILES = os.path.dirname(__file__)
PREVIEW_FOLDER = config.outdir + "preview/"
PREVIEW_SPRITES = PREVIEW_FOLDER + "sprites/"


def render(sprites: dict[str, sprite.Sprite], vrams: dict[str, vram.VRAMTiles], palettes: sprite.SpritePalettes):
    """Given a dictionary of sprite files and dictionary of bitmaps loaded into vram,
    Render all the sprites by matching the sprite names with the bitmap names. Only render the ones that match"""
    for sprite_name, sprite_ in sprites.items():
        print(sprite_name)
        tileset_name = sprite_name.split('_')[0]
        if tileset_name not in vrams:
            continue
        pixels = [[0]*256 for row in range(256)]
        vrams[tileset_name].paintSprite(pixels, sprite_, 128, 128)
        sprite_pal = load_palette(palettes, tileset_name)

        with open(PREVIEW_SPRITES + sprite_name+".png", 'wb') as f:
            w = png.Writer(256, 256, alpha=False, bitdepth=8, palette=sprite_pal)
            w.write(f, pixels)


def load_palette(palettes: sprite.SpritePalettes, palette_name: str) -> list:
    """Loads the sprite palette, and adds transparency"""
    pal = color.Palette.init_from_original_file(palettes.get(palette_name)).get_png_palette()
    pal_transparent = [(color[0], color[1], color[2], 255) for color in pal]
    pal_transparent[0] = (pal_transparent[0][0], pal_transparent[0][1], pal_transparent[0][2], 0)
    return pal_transparent


def load_tilesets(tilesets: dict[str, tileset.Bitmap], offsets: sprite.SpriteOffsets) -> dict[str, vram.VRAMTiles]:
    """Loads the bitmaps into VRAM"""
    vrams = {}
    for tilename, bitmap in tilesets.items():
        vbk = offsets.get_vbk(tilename)
        tileoffset = offsets.get_tileoffset(tilename)
        vramtiles = vram.VRAMTiles()
        vramtiles.storeImage(vbk, bitmap.pixels, tileoffset)
        vrams[tilename] = vramtiles
    # Hardcoded Parathin + ParathinTony
    if 'Parathin' in tilesets and 'ParathinTony' in tilesets:
        vbk = offsets.get_vbk('Parathin')
        tileoffset = offsets.get_tileoffset('Parathin')
        vramtiles = vram.VRAMTiles()
        parathin_size = tilesets['Parathin'].size()//0x10
        vramtiles.storeImage(vbk, tilesets['Parathin'].pixels, tileoffset)
        vramtiles.storeImage(vbk, tilesets['ParathinTony'].pixels, tileoffset + parathin_size)
        vrams['Parathin'] = vramtiles
    return vrams


def read_contents(directory: str) -> list[dict[str, sprite.Sprite], dict[str, tileset.Bitmap]]:
    """Iterates through the directory and returns a dictionary of all the sprites and bitmaps"""
    sprites = {}
    tilesets = {}
    for dirpath, dirnames, filenames in os.walk(directory):
        for filename in filenames:
            if filename[-4:] == '.spr':
                sprites[filename[:-4]] = sprite.Sprite.init_from_original_file(os.path.join(dirpath, filename))
            if filename[-12:] == '.tileset.png':
                tilesets[filename[:-12]] = tileset.Bitmap.init_from_original_file(os.path.join(dirpath, filename))
    # Hardcoded: Grab the autopacked Tony sprites too
    for dirpath, dirnames, filenames in os.walk('assets/scenes/graphics/sprites/'):
        for filename in filenames:
            if filename[-12:] == '.tileset.png':
                tilesets[filename[:-12]] = tileset.Bitmap.init_from_original_file(os.path.join(dirpath, filename))
    return [sprites, tilesets]


def _make_dirs() -> None:
    os.makedirs(PREVIEW_SPRITES, exist_ok=True)


def render_all(directory: str) -> None:
    """Renders all the sprites that have a corresponding bitmap in the target directory"""
    _make_dirs()
    offsets = sprite.SpriteOffsets()
    palettes = sprite.SpritePalettes()
    sprites, tilesets = read_contents(directory)
    vrams = load_tilesets(tilesets, offsets)
    render(sprites, vrams, palettes)
