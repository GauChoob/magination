from PIL import Image, ImageDraw
from typing import Tuple
import pathlib
import projutils.utils as u
import projutils.png as png


class Color:
    def _word_to_rgba(x: int) -> Tuple[int, int, int, int]:
        """Convert a 16-bit integer into r, g, b, a values (0 - 31)"""
        r = x & 0b11111
        g = (x & 0b1111100000) >> 5
        b = (x & 0b111110000000000) >> 10
        a = (x & 0b1000000000000000) >> 15
        return r, g, b, a

    def _assertTransparency(self, permit_transparency: bool) -> None:
        if (not permit_transparency) and self.a:
            raise ValueError("Color has transparency! Set permit_transparency to True to allow this!")

    def __init__(self, *arg: int | Tuple[int, int, int] | Tuple[int, int, int, int]):
        """RGBA Color object (5-bit r, g, b values and 1-bit a value). Takes as input:
        int (16-bit GBC Color) or
        r (0-248), g (0-248), b (0-248), Optional[a (0-1)]"""
        if len(arg) == 1:
            if(isinstance(arg[0], int)):
                self.r, self.g, self.b, self.a = Color._word_to_rgba(arg[0])
                return
            raise ValueError("If passing 1 argument, it must be a 16-bit GBC Color")
        else:
            assert 3 <= len(arg) <= 4, "If passing a list, must pass 3 or 4 params: r, g, b, Optional[a]"
            for i in range(3):
                assert arg[i] % 8 == 0, "r, g, b values must be multiples of 8!"
            self.r = arg[0]//8
            self.g = arg[1]//8
            self.b = arg[2]//8
            if len(arg) == 4:
                self.a = arg[3]
            else:
                self.a = 0
            assert 0 <= self.r <= 0x1F, "Input r value must be between 0 - 248"
            assert 0 <= self.g <= 0x1F, "Input g value must be between 0 - 248"
            assert 0 <= self.b <= 0x1F, "Input b value must be between 0 - 248"
            assert 0 <= self.a <= 1, "Input a value must be between 0 - 1"

    def get_word(self, permit_transparency: bool = False) -> int:
        """Returns the 16-bit GBC Color representation of the r, g, b, a value.
        Self permit_transparency to True to allow a = 1"""
        assert 0 <= self.r <= 0x1F, "r must be between 0 - 0x1F"
        assert 0 <= self.g <= 0x1F, "g must be between 0 - 0x1F"
        assert 0 <= self.b <= 0x1F, "b must be between 0 - 0x1F"
        assert 0 <= self.a <= 1, "a must be between 0 - 1"
        self._assertTransparency(permit_transparency)
        return self.r + (self.g << 5) + (self.b << 10) + (self.a << 15)

    def get_RGBA(self, permit_transparency: bool = False):
        """Returns a tuple (r, g, b, a), where r, g, b are values (0 - 248) and a (0 - 1)
        Self permit_transparency to True to allow a = 1"""
        assert 0 <= self.r <= 0x1F, "r must be between 0 - 0x1F"
        assert 0 <= self.g <= 0x1F, "g must be between 0 - 0x1F"
        assert 0 <= self.b <= 0x1F, "b must be between 0 - 0x1F"
        assert 0 <= self.a <= 1, "a must be between 0 - 1"
        self._assertTransparency(permit_transparency)
        return self.r*8, self.g*8, self.b*8, self.a

    def get_RGB(self, permit_transparency: bool = False):
        """Returns a tuple (r, g, b), where r, g, b are values (0 - 248)
        Self permit_transparency to True to allow a = 1"""
        return self.get_RGBA(permit_transparency)[:-1]

    def __repr__(self):
        return "${:02X} ${:02X} ${:02X} {}".format(self.r, self.g, self.b, self.a)


class Palette:
    def __init__(self, arg: bytes | bytearray | list | str | pathlib.PurePath):
        '''Accepts the following inputs:
        1) Raw data from .pal file (bytes or bytearray)
        2) A raw palette list (list containing tuples of (r, g, b) or (r, g, b, a))
        3) A path to a .pal.png file'''
        if isinstance(arg, (bytes, bytearray)):
            colors = len(arg)//2
            self.palette = []
            for i in range(colors):
                address = i*2
                rgba = Color(arg[address]+256*arg[address+1]).get_RGBA(permit_transparency=True)
                self.palette.append(rgba)
        elif isinstance(arg, list):
            # Directly provide a palette list
            depth = len(arg[0])  # r, g, b or r, g, b, a?
            assert 4 >= depth >= 3, "Invalid depth (must be 3 or 4)"
            assert all(isinstance(i, tuple) and len(i) == depth for i in arg), "Every element in the list you pass must contain a tuple of the same length"
            self.palette = arg
            if depth == 3:
                # Normalize the palette to have an alpha channel
                self.palette = [color + (0,) for color in self.palette]
            else:
                # Make a shallow copy otherwise
                self.palette = self.palette[:]
        elif isinstance(arg, (pathlib.PurePath, str)):
            # Open a .pal.png file
            img = Image.open(arg)
            assert img.width % 8 == 0, "Image file dimensions must be a multiple of 8"
            assert img.height % 8 == 0, "Image file dimensions must be a multiple of 8"
            width = (img.width//8)
            height = (img.height//8)
            self.palette = []
            for y in range(height):
                for x in range(width):
                    # Get *trash just in case the image file has an alpha value, but we discard this
                    r, g, b, *trash = img.getpixel((x*8+4, y*8+4))
                    assert r % 8 == 0, "r,g,b must all be multiples of 8! Error with Color #"+str(y*width+x)
                    assert g % 8 == 0, "r,g,b must all be multiples of 8! Error with Color #"+str(y*width+x)
                    assert b % 8 == 0, "r,g,b must all be multiples of 8! Error with Color #"+str(y*width+x)
                    # Topleft pixel for alpha check
                    rt, gt, bt, *trash = img.getpixel((x*8, y*8))
                    a = 1 if (rt != r or gt != g or bt != b) else 0
                    self.palette.append((r, g, b, a))

    def has_no_alpha(self) -> bool:
        """Returns True if no color in the palette is transparent"""
        return all([color[3] == 0 for color in self.palette])

    def save_pal(self, fileout: str, allowalpha: bool = False) -> None:
        """Saves the Palette object as a .pal file"""
        assert(fileout[-4:] == ".pal"), "Filename must end with .pal"
        if not allowalpha:
            assert self.has_no_alpha(), "Transparency not permitted"
        with open(fileout, 'wb') as f:
            for color in self.palette:
                colorval = Color(*color).get_word()
                f.write(u.PackWords(colorval))

    def save_png(self, fileout, allowalpha: bool = False) -> None:
        """Saves the Palette object as a .pal.png file"""
        assert(fileout[-8:] == ".pal.png"), "Filename must end with .pal.png"
        if not allowalpha:
            assert self.has_no_alpha(), "Transparency not permitted"
        colors = len(self.palette)
        if colors % 4 == 0:
            width = 4
        elif colors % 2 == 0:
            width = 2
        else:
            width = 1
        height = colors//width

        img = Image.new("RGB", (width*8, height*8), 0x000000)
        draw = ImageDraw.Draw(img)
        for y in range(height):
            for x in range(width):
                color = self.palette[x + y*width]
                r = color[0]
                g = color[1]
                b = color[2]
                a = color[3]
                if a:
                    ra = (r - 128) % 256
                    ga = (g - 128) % 256
                    ba = (b - 128) % 256
                    # Add a border to indicate transparency
                    draw.rectangle((x*8, y*8, (x+1)*8-1, (y+1)*8-1), (ra, ga, ba))
                    draw.rectangle((x*8+1, y*8+1, (x+1)*8-2, (y+1)*8-2), (r, g, b))
                else:
                    draw.rectangle((x*8, y*8, (x+1)*8-1, (y+1)*8-1), (r, g, b))
        del draw
        img.save(fileout)

    def get_png_palette(self) -> list:
        """Gets a png palette used to colorize png files"""
        return self.palette

    @staticmethod
    def greyscale_palette():
        return Palette([
            (255, 255, 255),
            (191, 191, 191),
            (127, 127, 127),
            (63, 63, 63),
        ])


class Colorize:
    def _addGreyscale(palette: Palette, addgreyscale: bool) -> list:
        """Modifies a palette list to add greyscale if requested"""
        newpal = []
        if addgreyscale:
            newpal = [(0xFF, 0xFF, 0xFF), (0xBF, 0xBF, 0xBF), (0x7F, 0x7F, 0x7F), (0x3F, 0x3F, 0x3F)]
        # Add the base palette, stripping out the alpha value
        newpal.extend([color[:-1] for color in palette.get_png_palette()])
        return newpal

    def color_tileset_from_tilemap(filein: str,
                                   fileout: str,
                                   tilemap: str,
                                   attrmap: str,
                                   vbk: int,
                                   tilesetaddress:
                                   int, palette:
                                   Palette,
                                   paletteoffset: int = 0,
                                   addgreyscale: bool = True,
                                   defaultpalette: bool = 0) -> None:
        """This function allows you to quickly colorize a tileset.png file based on the tilemap.
        filein = tileset.png (file to colorize)
        fileout = tileset.png (new file)
        tilemap = .tilemap
        attrmap = .attrmap
        vbk = bank of the tileset (0 or 1)
        tilesetaddress = offset of the tilemap to map to the tileset
        palette = Palette Object
        paletteoffset = offset of the palette to colorize with the right colors
        addgreyscale = whether to have greyscale for unknown colors
        defaultpalette = palette id to use if the color is unknown. 0 will refer to greyscale if enabled
        """

        def guessPaletteID(tilemap: str, attrmap: str, vbk: int) -> list:
            """For each tile id, determine the most commonly used palette ID
            Returns a list of the 256 tiles' most common palette IDs"""

            # tilemap and attrmap of equal size
            # vbk is the target vram bank of the tileset
            with open(tilemap, "rb") as f:
                tilemap = f.read()
            with open(attrmap, "rb") as f:
                attrmap = f.read()
            assert len(tilemap) == len(attrmap)

            # Initialized the tile list
            tiles = [[0, 0, 0, 0, 0, 0, 0, 0] for _ in range(256)]

            # Count the number of uses for each palette ID for each tile
            for i in range(len(tilemap)):
                tile = tilemap[i]
                attr = attrmap[i]
                if (attr & 0b1000) != vbk:
                    continue  # wrong VRAM bank
                tiles[tile][attr & 0b0111] += 1

            # Determine the most common palette id
            for i in range(256):
                max_value = max(tiles[i])
                if max_value == 0:
                    tiles[i] = -1
                else:
                    tiles[i] = tiles[i].index(max_value)
            return tiles

        # Get tiles_guessedpaletteid (most common palette id for each tile id)
        vbk = vbk*0b1000
        tiles_guessedpaletteid = guessPaletteID(tilemap, attrmap, vbk)

        # Load the image file
        temp = png.Reader(filein)
        width, height, pixels, meta = temp.read()
        pixels = list(pixels)
        temp.file.close()
        assert width % 8 == 0
        assert height % 8 == 0

        # Get the raw palette color data
        newpal = Colorize._addGreyscale(palette, addgreyscale)
        # Offset the palette ids by +1 if greyscale was added
        paletteoffset += addgreyscale

        # Make sure no palettes are out of bounds
        assert max(tiles_guessedpaletteid)+paletteoffset < len(newpal)//4

        # basetile is used to offset the tileset location to color the right tiles
        basetile = (tilesetaddress % 0x1000)//0x10
        for y in range(height//8):
            for x in range(width//8):
                targettile = (basetile + y*0x10 + x) % 0x100
                if tiles_guessedpaletteid[targettile] == -1:
                    newpaletteid = defaultpalette
                else:
                    newpaletteid = tiles_guessedpaletteid[targettile]+paletteoffset
                for y2 in range(8):
                    for x2 in range(8):
                        pixels[y*8+y2][x*8+x2] += newpaletteid*4

        # Save the new image
        with open(fileout, 'wb') as f:
            w = png.Writer(width, height, alpha=False, bitdepth=8, palette=newpal)
            w.write(f, pixels)
            f.close()

    def color_tileset_from_list(filein: str,
                                fileout: str,
                                palette_ids: list,
                                palette: Palette,
                                paletteoffset: int = 0,
                                addgreyscale: bool = True,
                                defaultpalette: int = 0) -> None:
        """This function allows you to quickly colorize a tileset.png file based on the tilemap.
        filein = tileset.png (file to colorize)
        fileout = tileset.png (new file)
        palette_ids = list of sequential palette ids to colorize the imagefile
        palette = Palette Object
        paletteoffset = offset of the palette to colorize with the right colors
        addgreyscale = whether to have greyscale for unknown colors
        defaultpalette = palette id to use if the color is unknown. 0 will refer to greyscale if enabled"""

        # Load the image file
        temp = png.Reader(filein)
        width, height, pixels, meta = temp.read()
        pixels = list(pixels)
        temp.file.close()
        assert width % 8 == 0
        assert height % 8 == 0

        # Get the raw palette color data
        newpal = Colorize._addGreyscale(palette, addgreyscale)
        # Offset the palette ids by +1 if greyscale was added
        paletteoffset += addgreyscale

        # Make sure no palettes are out of bounds
        assert max(palette_ids)+paletteoffset < len(newpal)//4

        # Colorize each tile
        for y in range(height//8):
            for x in range(width//8):
                targettile = (y*width//8 + x) % 0x100
                if palette_ids[targettile] == -1:
                    newpaletteid = defaultpalette
                else:
                    newpaletteid = palette_ids[targettile]+paletteoffset
                for y2 in range(8):
                    for x2 in range(8):
                        pixels[y*8+y2][x*8+x2] += newpaletteid*4

        # Save the new image
        with open(fileout, 'wb') as f:
            w = png.Writer(width, height, alpha=False, bitdepth=8, palette=newpal)
            w.write(f, pixels)

    def decolorize_tileset(filein: str, fileout: str) -> None:
        """Strips out the color from a tileset, turning it back to greyscale"""
        temp = png.Reader(filein)
        width, height, pixels, meta = temp.read()
        pixels = list(pixels)
        temp.file.close()

        # strip the palette
        for i in range(width):
            for j in range(height):
                pixels[j][i] = pixels[j][i] & 0b11

        with open(fileout, 'wb') as f:
            w = png.Writer(width, height, alpha=False, bitdepth=2, palette=[(0xFF, 0xFF, 0xFF), (0xBF, 0xBF, 0xBF), (0x7F, 0x7F, 0x7F), (0x3F, 0x3F, 0x3F)])
            w.write(f, pixels)
