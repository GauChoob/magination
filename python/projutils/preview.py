import math
import re
import os
import projutils.png as png
import projutils.config as config
import projutils.fileregistry as fileregistry
import projutils.pattern as pattern
import projutils.scene as scene
import projutils.vram as vram


PROJFILES = os.path.dirname(__file__)
COLLISIONDATA = PROJFILES + "/data/CollisionShading.png"
PREVIEW_FOLDER = config.outdir + "preview/"
# SCENEFOLDER = "assets/scenes/scenes/"
PREVIEW_SCENES = PREVIEW_FOLDER + "metatilemap/"
PREVIEW_PATTERN = PREVIEW_FOLDER + "pattern/"
PREVIEW_PATTERN_MINI = PREVIEW_FOLDER + "pattern_mini/"
PREVIEW_COLLISION = PREVIEW_FOLDER + "collision/"
PREVIEW_VRAM = PREVIEW_FOLDER + "vram/"
SCENE_ASM = "assets/scenes/scenes/scenes.asm"
SCENE_MASK_ASM = "assets/scenes/scenes/_python_preview_mask_scenes.asm"
AUTOPACKED_ASM = "autogenerated/autopack/autopack.asm"


def GetCollisionDataPixel(collid: int, xoffset: int, yoffset: int, rgboffset: int) -> int:
    """Gets a pixel value from the collision data file"""
    basex = collid % 0x10
    basey = collid//0x10
    return cdfpixels[basey*0x10+yoffset][(basex*0x10+xoffset)*cdfmeta["planes"]+rgboffset]  # use planes so that the format can be rgb or rgba (3 or 4)

def DrawMetatile(vramtiles: vram.VRAMTiles, pat: pattern.Pattern, pixels: list, patternid: int, x: int, y: int) -> list:
    """Paints the Metatile into the canvas "pixels"
    vram: List of VRAMTiles
    pat: Pattern
    pixels: canvas onto which the draw the Metatile
    patternid: id of the metatile
    x, y: destination coordinate"""
    x = x*2
    y = y*2
    for cycle in range(4):
        querytile = pat.tilemap[patternid][cycle]
        queryattr = pat.attrmap[patternid][cycle]
        xoffset = cycle & 0b01
        yoffset = 1 if cycle & 0b10 else 0
        pixels = vramtiles.tiles[querytile].paintImage(pixels, x+xoffset, y+yoffset, queryattr)
    return pixels


class Scene:
    paramlist = ["pal", "bitset", "pattern", "metamap", "collmap"]

    def __init__(self, scene_label: str):
        """Builds a Scene object by reading the corresponding filedata"""
        self.label = scene_label
        self.path = scenelist[scene_label]
        with open(scenelist[scene_label], "r") as f:
            lines = f.readlines()
        i = 0
        for line in lines:
            line = line.strip()
            reg = re.search(r"AddressBank *([^ ]*)", line)
            if reg:
                setattr(self, Scene.paramlist[i]+"_label", reg.group(1))
                setattr(self, Scene.paramlist[i], assetlist.files[reg.group(1)].processed_path)
                i += 1
        assert i == 5  # Scene should have 5 AddressBanks


def _preview(scene_label: str):
    """Previews a single scene"""
    print(scene_label)

    # Read Scene file
    scenery = scene.Scene.init_from_original_file(scenelist[scene_label], assetlist)
    scenery.load_references_from_original_file()
    pal = scenery.palette.contents
    bitset = scenery.bitset.contents
    pat = scenery.pattern.contents
    metamap = scenery.metamap.contents
    collmap = scenery.collmap.contents

    # Set up a blank VRAM
    vramtiles = vram.VRAMTiles()

    # Find each bitmap in the bitset and load it into VRAM
    for bank in range(2):
        for bitmap_ref in bitset.bitmaps[bank]:
            if bitmap_ref.destination < 0x8800:  # skip sprites
                continue
            # Write each tile of the bitmap into vram
            bitmap_ref.contents.decolorize()
            basetile = (bitmap_ref.destination % 0x1000)//0x10
            for y in range(bitmap_ref.height):
                for x in range(bitmap_ref.width):
                    targettile = (basetile + y*0x10 + x) % 0x100
                    vramtiles.tiles[targettile].storeImage(bank, bitmap_ref.contents.pixels, x, y)

    # Output the VRAM
    vram_pixels = [[0 for x in range(0x20*8)] for y in range(0x10*8)]
    for bank in range(2):
        for y in range(0x10):
            for x in range(0x10):
                vramtiles.tiles[((y+8) % 0x10)*0x10 + x].paintImage(vram_pixels, x + 0x10*bank, y, 0b00001000*bank)

    with open(PREVIEW_VRAM+scene_label+".png", 'wb') as f:
        w = png.Writer(0x20*8, 0x10*8, alpha=False, bitdepth=8, palette=[(0xFF, 0xFF, 0xFF), (0xBF, 0xBF, 0xBF), (0x7F, 0x7F, 0x7F), (0x3F, 0x3F, 0x3F)])
        w.write(f, vram_pixels)

    # Output the Pattern
    pattern_pixels = [[0 for x in range(0x10*0x10)] for y in range(0x10*0x10)]
    for y in range(0x10):
        for x in range(0x10):
            patternid = y*0x10 + x
            pattern_pixels = DrawMetatile(vramtiles, pat, pattern_pixels, patternid, x, y)
    with open(PREVIEW_PATTERN+scene_label+".png", 'wb') as f:
        w = png.Writer(0x10*0x10, 0x10*0x10, alpha=False, bitdepth=8, palette=pal.get_png_palette())
        w.write(f, pattern_pixels)

    # Output the mini Pattern based on the large one
    patternmini_pixels = []
    for y in range(8*0x10):
        patternmini_pixels.append([])
        for x in range(8*0x10):
            pdata = [0, 0, 0]
            for cycle in range(4):
                xoffset = cycle & 0b01
                yoffset = 1 if cycle & 0b10 else 0
                palcol = pattern_pixels[y*2+yoffset][x*2+xoffset]
                for col in range(3):
                    pdata[col] += pal.palette[palcol][col]
            for col in range(3):
                pdata[col] //= 4
            patternmini_pixels[y].extend(pdata)
    with open(PREVIEW_PATTERN_MINI+scene_label+".png", 'wb') as f:
        w = png.Writer(8*0x10, 8*0x10, alpha=False, bitdepth=8)
        w.write(f, patternmini_pixels)

    # Initialize the metatilemap output map
    metamap_height = metamap.approx_size//metamap.width
    metamap_pixels = [[0 for x in range(0x10*metamap.width)] for y in range(0x10*metamap_height)]

    # Read the metatilemap and draw the Scene image
    for y in range(metamap_height):
        for x in range(metamap.width):
            patternid = metamap.map.contents.map[y*metamap.width + x]
            metamap_pixels = DrawMetatile(vramtiles, pat, metamap_pixels, patternid, x, y)

    # Output the metatilemap
    with open(PREVIEW_SCENES+scene_label+".png", 'wb') as f:
        w = png.Writer(0x10*metamap.width, 0x10*metamap_height, alpha=False, bitdepth=8, palette=pal.palette)
        w.write(f, metamap_pixels)

    # Setup Collisionmap
    collmap_height = collmap.approx_size//collmap.width
    assert collmap.width == metamap.width
    assert collmap_height == metamap_height

    # Convert metamap_pixels from palette to RGB and overlay the collision tiles
    collmap_pixels = [[] for y in range(0x10*metamap_height)]
    for y in range(collmap_height):
        for x in range(metamap.width):
            collid = collmap.map.contents.map[y*metamap.width + x]
            for ycur in range(0x10):
                for xcur in range(0x10):
                    sourcecolordata = list(pal.palette[metamap_pixels[y*0x10+ycur][x*0x10+xcur]])
                    outcolordata = []
                    for color_ in range(3):
                        outcolordata.append(math.floor(sourcecolordata[color_]*0.4 + GetCollisionDataPixel(collid, xcur, ycur, color_)*0.6))
                    collmap_pixels[y*0x10+ycur].extend(outcolordata)
    with open(PREVIEW_COLLISION+scene_label+".png", 'wb') as f:
        w = png.Writer(0x10*metamap.width, 0x10*collmap_height, alpha=False, bitdepth=8)
        w.write(f, collmap_pixels)


scenelist = {}
assetlist: fileregistry.LabelFileRegister = None

collisiondatafile = png.Reader(COLLISIONDATA)
cdfwidth, cdfheight, cdfpixels, cdfmeta = collisiondatafile.read()
assert cdfwidth == 256
assert cdfheight == 256
cdfpixels = list(cdfpixels)


def _make_dirs() -> None:
    os.makedirs(PREVIEW_FOLDER, exist_ok=True)
    os.makedirs(PREVIEW_SCENES, exist_ok=True)
    os.makedirs(PREVIEW_PATTERN, exist_ok=True)
    os.makedirs(PREVIEW_PATTERN_MINI, exist_ok=True)
    os.makedirs(PREVIEW_COLLISION, exist_ok=True)
    os.makedirs(PREVIEW_VRAM, exist_ok=True)


def _generate_scene_list() -> None:
    # Only generate it once
    if len(scenelist) > 0:
        return

    # Generate a list of all scene
    scene_files = fileregistry.LabelFileRegister()
    scene_files.registerFromAsm(SCENE_ASM)
    scene_files.registerFromAsm(SCENE_MASK_ASM)
    for file in scene_files.files:
        if not file.startswith('SCENE_'):
            continue
        short_label = file[6:]
        scenelist[short_label] = scene_files.files[file].original_path


def _load_scene_assets() -> None:
    global assetlist
    # Only generate it once
    if assetlist is not None:
        return

    # Scene assets are all enclosed in autopack.asm
    assetlist = fileregistry.LabelFileRegister()
    assetlist.registerFromAsm(AUTOPACKED_ASM)


def _setup() -> None:
    """Sets up the environment to preview scenes"""
    _make_dirs()
    _generate_scene_list()
    _load_scene_assets()


def preview_all() -> None:
    """Generate a preview of all the scenes."""
    _setup()
    for scene_label in scenelist:
        _preview(scene_label)


def preview_one(scene_label: str) -> None:
    """Generate a preview of a specific scene."""
    _setup()
    assert scene_label in scenelist
    _preview(scene_label)
