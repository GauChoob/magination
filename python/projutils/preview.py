import math
import re
import os
from typing import List
import projutils.color as color
import projutils.tileset as tileset
import projutils.rle as rle
import projutils.utils as utils
import projutils.png as png
import projutils.config as config
import projutils.autopack as autopack


PROJFILES = os.path.dirname(__file__)
COLLISIONDATA = PROJFILES + "/data/CollisionShading.png"
PREVIEW_FOLDER = config.outdir + "preview/"
# SCENEFOLDER = "assets/scenes/scenes/"
PREVIEW_SCENES = PREVIEW_FOLDER + "metatilemap/"
PREVIEW_PATTERN = PREVIEW_FOLDER + "pattern/"
PREVIEW_PATTERN_MINI = PREVIEW_FOLDER + "pattern_mini/"
PREVIEW_COLLISION = PREVIEW_FOLDER + "collision/"
PREVIEW_VRAM = PREVIEW_FOLDER + "vram/"
SCENE_ASM = "source/banks/bank_04f.asm"
AUTOPACKED_LIST = autopack.DEFAULT_SOURCE


def GetCollisionDataPixel(collid: int, xoffset: int, yoffset: int, rgboffset: int) -> int:
    """Gets a pixel value from the collision data file"""
    basex = collid % 0x10
    basey = collid//0x10
    return cdfpixels[basey*0x10+yoffset][(basex*0x10+xoffset)*cdfmeta["planes"]+rgboffset]  # use planes so that the format can be rgb or rgba (3 or 4)


def GetNumber(val: str) -> int:
    """Converts a string representing a number into an int"""
    if val[0] == "%":
        return int(val[1:], 2)
    elif val[0] == "$":
        return int(val[1:], 16)
    else:
        return int(val, 10)


class VRAMTile:
    def __init__(self):
        """Contains a 8x8 VRAM tile (both bank 0 and 1)"""
        self.baseimage = [[[0 for x in range(8)] for y in range(8)] for bank in range(2)]

    def storeImage(self, vbk: int, pixels: list, x: int, y: int) -> None:
        """Stores a tileset from the pixels at coordinate x, y into the VRAMTile
        vbk: target bank
        pixels, x, y: source tileset information"""
        for cury in range(0, 8):
            for curx in range(0, 8):
                self.baseimage[vbk][cury][curx] = pixels[y*8+cury][x*8+curx]

    def paintImage(self, pixelcanvas: list, x: int, y: int, attributes: int) -> list:
        """Paints the VRAM tile into the canvas, using the provided attributes.
        Returns the updated canvas"""
        pal = attributes &        0b00000111            # noqa
        vbk = 1 if  attributes &  0b00001000 else 0     # noqa
        hflip = attributes &      0b00100000            # noqa
        # unused = attributes &   0b00010000            # noqa
        vflip = attributes &      0b01000000            # noqa
        # priority = attributes & 0b10000000            # noqa

        for cury in range(8):
            targety = y*8 + (7-cury if vflip else cury)
            for curx in range(8):
                targetx = x*8 + (7-curx if hflip else curx)
                pixelcanvas[targety][targetx] = self.baseimage[vbk][cury][curx] + pal*4

        return pixelcanvas


def DrawMetatile(vram: List[VRAMTile], pattern: list, pixels: list, patternid: int, x: int, y: int) -> list:
    """Paints the Metatile into the canvas "pixels"
    vram: List of VRAMTiles
    pattern: raw pattern data
    pixels: canvas onto which the draw the Metatile
    patternid: id of the metatile
    x, y: destination coordinate"""
    x = x*2
    y = y*2
    for cycle in range(4):
        querytile = pattern[patternid*4+cycle]
        queryattr = pattern[0x400+patternid*4+cycle]
        xoffset = cycle & 0b01
        yoffset = 1 if cycle & 0b10 else 0
        pixels = vram[querytile].paintImage(pixels, x+xoffset, y+yoffset, queryattr)
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
                setattr(self, Scene.paramlist[i], assetlist[reg.group(1)])
                i += 1
        assert i == 5  # Scene should have 5 AddressBanks


class BitSet:

    class TilesetEntry:
        def __init__(self, vals: str):
            """Builds a TilesetEntry object by reading the corresponding filedata"""
            vals = vals.split(",")
            self.dest = GetNumber(vals[0])
            self.source = assetlist[vals[1]]
            self.width = GetNumber(vals[2])
            self.height = GetNumber(vals[3])

    def __init__(self, path: str):
        """Builds a BitSet object by reading the corresponding filedata"""
        self.path = path
        self.bitmaps = [[], []]
        self.size = []
        with open(path, "r") as f:
            lines = f.readlines()
        i = -1
        for line in lines:
            # Remove comment
            rem = re.search(r";.*$", line)
            if rem:
                line = line[:rem.start()]
            line = line.strip()
            if len(line) == 0:
                continue
            arg, vals = line.split(" ")
            if arg == "db":
                self.size.append(GetNumber(vals))
                i += 1
            elif arg == "LoadBitmap":
                self.bitmaps[i].append(BitSet.TilesetEntry(vals))

        assert i == 1  # Should have two db entries
        assert len(self.bitmaps[0]) == self.size[0]  # assert the number of bitmaps corresponds to the number of entries
        assert len(self.bitmaps[1]) == self.size[1]


class MetaMap:
    paramlist = ["width", "ymappad", "unk", "vstop", "size"]

    def __init__(self, path: str):
        """Builds a MetaMap (meta tilemap) object by reading the corresponding filedata"""
        self.path = path
        with open(path, "r") as f:
            lines = f.readlines()
        i = 0
        for line in lines:
            # Remove comment
            rem = re.search(r";.*$", line)
            if rem:
                line = line[:rem.start()]
            line = line.strip()
            if len(line) == 0:
                continue
            arg, vals = line.split(" ")
            if arg in ["db", "dw"]:
                setattr(self, MetaMap.paramlist[i], GetNumber(vals))
                i += 1
            elif arg == "INCBIN":
                reg = re.search(r'"([^"]*)"', vals)
                assert reg
                incpath = reg.group(1)
                self.data = rle.decompress_rle(utils.Rom(incpath), 0, True)
        self.height = len(self.data)//self.width
        assert i == 5  # Metamap should have 5 params


class CollMap:
    paramlist = ["width", "size"]

    def __init__(self, path: str):
        """Builds a CollMap (collisionmap) object by reading the corresponding filedata"""
        self.path = path
        with open(path, "r") as f:
            lines = f.readlines()
        i = 0
        for line in lines:
            # Remove comment
            rem = re.search(r";.*$", line)
            if rem:
                line = line[:rem.start()]
            line = line.strip()
            if len(line) == 0:
                continue
            arg, vals = line.split(" ")
            if arg in ["db", "dw"]:
                setattr(self, MetaMap.paramlist[i], GetNumber(vals))
                i += 1
            elif arg == "INCBIN":
                reg = re.search(r'"([^"]*)"', vals)
                assert reg
                incpath = reg.group(1)
                self.data = rle.decompress_rle(utils.Rom(incpath), 0, True)
        self.height = len(self.data)//self.width
        assert i == 2  # Collmap should have 2 params


def _preview(scene_label: str):
    """Previews a single scene"""
    print(scene_label)

    # Read Scene file
    scene = Scene(scene_label)

    # Load Palette
    with open(scene.pal, 'rb') as f:
        pal = color.Palette(f.read()).get_png_palette()
        pal = [col[:-1] for col in pal]  # strip the alpha color

    # Load Bitset (Bitmap Tileset)
    bitset = BitSet(scene.bitset)

    # Set up a blank VRAM
    vram = [VRAMTile() for _ in range(0x100)]

    # Find each bitmap in the bitset and load it into VRAM
    for bank in range(2):
        for bitmap in bitset.bitmaps[bank]:
            if bitmap.dest < 0x8800:  # skip sprites
                continue

            pixels = tileset.tileset_to_pixels(bitmap.source, bitmap.width, bitmap.height)

            # Write each tile of the bitmap into vram
            basetile = (bitmap.dest % 0x1000)//0x10
            for y in range(bitmap.height):
                for x in range(bitmap.width):
                    targettile = (basetile + y*0x10 + x) % 0x100
                    vram[targettile].storeImage(bank, pixels, x, y)

    # Output the VRAM
    vram_pixels = [[0 for x in range(0x20*8)] for y in range(0x10*8)]
    for bank in range(2):
        for y in range(0x10):
            for x in range(0x10):
                vram[((y+8) % 0x10)*0x10 + x].paintImage(vram_pixels, x + 0x10*bank, y, 0b00001000*bank)

    with open(PREVIEW_VRAM+scene.label+".png", 'wb') as f:
        w = png.Writer(0x20*8, 0x10*8, alpha=False, bitdepth=8, palette=[(0xFF, 0xFF, 0xFF), (0xBF, 0xBF, 0xBF), (0x7F, 0x7F, 0x7F), (0x3F, 0x3F, 0x3F)])
        w.write(f, vram_pixels)

    # Load Pattern
    pattern = rle.decompress_rle(utils.Rom(scene.pattern), 0, True)

    # Output the Pattern
    pattern_pixels = [[0 for x in range(0x10*0x10)] for y in range(0x10*0x10)]
    for y in range(0x10):
        for x in range(0x10):
            patternid = y*0x10 + x
            pattern_pixels = DrawMetatile(vram, pattern, pattern_pixels, patternid, x, y)
    with open(PREVIEW_PATTERN+scene.label+".png", 'wb') as f:
        w = png.Writer(0x10*0x10, 0x10*0x10, alpha=False, bitdepth=8, palette=pal)
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
                    pdata[col] += pal[palcol][col]
            for col in range(3):
                pdata[col] //= 4
            patternmini_pixels[y].extend(pdata)
    with open(PREVIEW_PATTERN_MINI+scene.label+".png", 'wb') as f:
        w = png.Writer(8*0x10, 8*0x10, alpha=False, bitdepth=8)
        w.write(f, patternmini_pixels)

    # Load MetatileMap
    metamap = MetaMap(scene.metamap)

    # Initialize the metatilemap output map
    metamap_pixels = [[0 for x in range(0x10*metamap.width)] for y in range(0x10*metamap.height)]

    # Read the metatilemap and draw the Scene image
    for y in range(metamap.height):
        for x in range(metamap.width):
            patternid = metamap.data[y*metamap.width + x]
            pixels = DrawMetatile(vram, pattern, metamap_pixels, patternid, x, y)

    # Output the metatilemap
    with open(PREVIEW_SCENES+scene.label+".png", 'wb') as f:
        w = png.Writer(0x10*metamap.width, 0x10*metamap.height, alpha=False, bitdepth=8, palette=pal)
        w.write(f, metamap_pixels)

    # Load Collisionmap
    collmap = CollMap(scene.collmap)
    assert collmap.width == metamap.width
    assert collmap.height == metamap.height

    # Convert metamap_pixels from palette to RGB and overlay the collision tiles
    collmap_pixels = [[] for y in range(0x10*metamap.height)]
    for y in range(metamap.height):
        for x in range(metamap.width):
            collid = collmap.data[y*metamap.width + x]
            for ycur in range(0x10):
                for xcur in range(0x10):
                    sourcecolordata = list(pal[metamap_pixels[y*0x10+ycur][x*0x10+xcur]])
                    outcolordata = []
                    for color_ in range(3):
                        outcolordata.append(math.floor(sourcecolordata[color_]*0.4 + GetCollisionDataPixel(collid, xcur, ycur, color_)*0.6))
                    collmap_pixels[y*0x10+ycur].extend(outcolordata)
    with open(PREVIEW_COLLISION+scene.label+".png", 'wb') as f:
        w = png.Writer(0x10*metamap.width, 0x10*metamap.height, alpha=False, bitdepth=8)
        w.write(f, collmap_pixels)


scenelist = {}
assetlist = {}

collisiondatafile = png.Reader(COLLISIONDATA)
cdfwidth, cdfheight, cdfpixels, cdfmeta = collisiondatafile.read()
assert cdfwidth == 256
assert cdfheight == 256
cdfpixels = list(cdfpixels)


def _setup() -> None:
    """Sets up the environment to preview scenes"""
    # Make dirs
    os.makedirs(PREVIEW_FOLDER, exist_ok=True)
    os.makedirs(PREVIEW_SCENES, exist_ok=True)
    os.makedirs(PREVIEW_PATTERN, exist_ok=True)
    os.makedirs(PREVIEW_PATTERN_MINI, exist_ok=True)
    os.makedirs(PREVIEW_COLLISION, exist_ok=True)
    os.makedirs(PREVIEW_VRAM, exist_ok=True)

    # Generate a list of all scenes from bank_04f.asm
    with open(SCENE_ASM, "r") as f:
        lines = iter(f.readlines())
    for line in lines:
        reg = re.match(r"^SCENE_([^:]*)::", line)
        if reg:
            label = reg.group(1)
            line = next(lines).strip()
            assert line[:7] == "INCLUDE"
            reg = re.search(r'"([^"]*)"', line)
            assert reg
            incpath = reg.group(1)
            scenelist[label] = incpath

    # Read autopack.config to get all asset locations
    # Remove the "autogenerated/" part of the file path and change the extension to reflect the source file
    with open(AUTOPACKED_LIST, "r") as f:
        lines = iter(f.readlines())

    # Skip comments and config in top of file
    for line in lines:
        if line == "[FILELIST]\n":
            break

    for line in lines:
        if len(line) == 1:
            continue
        label, incpath = line.split(",")
        label = label.strip()
        incpath = incpath.strip()
        assetlist[label] = incpath


def preview_all() -> None:
    """Generate a preview of all the scenes."""
    # Run setup only once
    if(len(scenelist) == 0):
        _setup()
    for scene_label in scenelist:
        _preview(scene_label)


def preview_one(scene_label: str) -> None:
    """Generate a preview of a specific scene."""
    # Run setup only once
    if(len(scenelist) == 0):
        _setup()
    assert scene_label in scenelist
    _preview(scene_label)
